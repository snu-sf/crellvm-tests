	.text
	.file	"lread.bc"
	.globl	Fread_char
	.align	16, 0x90
	.type	Fread_char,@function
Fread_char:                             # @Fread_char
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	callq	message_with_string
.LBB0_2:                                # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-24(%rbp), %r8
	movzbl	%dl, %esi
	andl	$1, %esi
	movl	$1, %r9d
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movl	%r9d, %edi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movl	%r9d, %esi
	movl	%r9d, %edx
	movl	-56(%rbp), %ecx         # 4-byte Reload
	callq	read_filtered_event
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %r8          # 8-byte Reload
	cmpq	%rax, %r8
	jne	.LBB0_4
# BB#3:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %cond.false
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	char_resolve_modifier_mask
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_5:                                # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fread_char, .Lfunc_end0-Fread_char
	.cfi_endproc

	.align	16, 0x90
	.type	read_filtered_event,@function
read_filtered_event:                    # @read_filtered_event
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
	subq	$240, %rsp
	movb	%cl, %al
	movb	%dl, %r9b
	movb	%sil, %r10b
	movb	%dil, %r11b
	andb	$1, %r11b
	movb	%r11b, -1(%rbp)
	andb	$1, %r10b
	movb	%r10b, -2(%rbp)
	andb	$1, %r9b
	movb	%r9b, -3(%rbp)
	andb	$1, %al
	movb	%al, -4(%rbp)
	movq	%r8, -16(%rbp)
	testb	$1, globals+3378
	je	.LBB1_2
# BB#1:                                 # %if.then
	callq	cancel_hourglass
.LBB1_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:                                # %if.then.5
	movq	-16(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	dtotimespec
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	callq	current_timespec
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	timespec_add
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB1_4:                                # %if.end.10
	jmp	.LBB1_5
.LBB1_5:                                # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	jmp	.LBB1_6
.LBB1_6:                                # %do.body
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	testb	$1, -4(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	je	.LBB1_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB1_6 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB1_9:                                # %cond.end
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB1_10
	jmp	.LBB1_11
.LBB1_10:                               # %cond.true.16
                                        #   in Loop: Header=BB1_6 Depth=2
	leaq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false.17
                                        #   in Loop: Header=BB1_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_12
.LBB1_12:                               # %cond.end.18
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	-152(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	read_char
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.cond
                                        #   in Loop: Header=BB1_6 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	movb	%cl, -153(%rbp)         # 1-byte Spill
	jne	.LBB1_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-2, %rax
	sete	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB1_15:                               # %land.end
                                        #   in Loop: Header=BB1_6 Depth=2
	movb	-153(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_6
# BB#16:                                # %do.end
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB1_17
	jmp	.LBB1_18
.LBB1_17:                               # %if.then.26
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_18:                               # %if.end.27
                                        #   in Loop: Header=BB1_5 Depth=1
	testb	$1, -1(%rbp)
	je	.LBB1_25
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_25
# BB#20:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_22
# BB#21:                                # %cond.true.39
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %cond.false.40
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB1_23:                               # %cond.end.41
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$895, %edi              # imm = 0x37F
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB1_25
# BB#24:                                # %if.then.48
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_5
.LBB1_25:                               # %if.end.49
                                        #   in Loop: Header=BB1_5 Depth=1
	testb	$1, -2(%rbp)
	je	.LBB1_39
# BB#26:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB1_27
	jmp	.LBB1_28
.LBB1_27:                               # %land.lhs.true.55
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_39
.LBB1_28:                               # %if.then.59
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_34
# BB#29:                                # %if.then.64
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$383, %edi              # imm = 0x17F
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_33
# BB#30:                                # %if.then.70
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-112(%rbp), %rdi
	callq	Fcar
	movl	$183, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_32
# BB#31:                                # %if.then.77
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-120(%rbp), %rax
	sarq	$2, %rax
	movq	-112(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	sarq	$2, %rax
	movq	-232(%rbp), %rdi        # 8-byte Reload
	orq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB1_32:                               # %if.end.83
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.84
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.85
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB1_38
# BB#35:                                # %if.then.91
                                        #   in Loop: Header=BB1_5 Depth=1
	testb	$1, -3(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.93
	movq	-24(%rbp), %rdi
	callq	list1
	movabsq	$.L.str.85, %rdi
	movq	%rax, globals+2520
	movb	$0, %al
	callq	error
.LBB1_37:                               # %if.else
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_38:                               # %if.end.95
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.96
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_41
# BB#40:                                # %if.then.100
	movq	-32(%rbp), %rax
	movq	%rax, unread_switch_frame
.LBB1_41:                               # %if.end.101
	movq	-24(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	read_filtered_event, .Lfunc_end1-read_filtered_event
	.cfi_endproc

	.globl	Fread_event
	.align	16, 0x90
	.type	Fread_event,@function
Fread_event:                            # @Fread_event
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	callq	message_with_string
.LBB2_2:                                # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-24(%rbp), %r8
	movzbl	%dl, %esi
	andl	$1, %esi
	xorl	%r9d, %r9d
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movl	%r9d, %edi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%r9d, %esi
	movl	%r9d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	callq	read_filtered_event
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fread_event, .Lfunc_end2-Fread_event
	.cfi_endproc

	.globl	Fread_char_exclusive
	.align	16, 0x90
	.type	Fread_char_exclusive,@function
Fread_char_exclusive:                   # @Fread_char_exclusive
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	callq	message_with_string
.LBB3_2:                                # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%sil
	xorb	$-1, %sil
	movq	-24(%rbp), %r8
	movzbl	%sil, %r9d
	andl	$1, %r9d
	movl	$1, %r10d
	xorl	%edx, %edx
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movl	%r10d, %edi
	movl	%r10d, %esi
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	callq	read_filtered_event
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %r8          # 8-byte Reload
	cmpq	%rax, %r8
	jne	.LBB3_4
# BB#3:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	char_resolve_modifier_mask
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB3_5:                                # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fread_char_exclusive, .Lfunc_end3-Fread_char_exclusive
	.cfi_endproc

	.globl	Fget_file_char
	.align	16, 0x90
	.type	Fget_file_char,@function
Fget_file_char:                         # @Fget_file_char
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
	callq	block_input
	movq	instream, %rdi
	callq	_IO_getc
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -8(%rbp)
	callq	unblock_input
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fget_file_char, .Lfunc_end4-Fget_file_char
	.cfi_endproc

	.globl	Fget_load_suffixes
	.align	16, 0x90
	.type	Fget_load_suffixes,@function
Fget_load_suffixes:                     # @Fget_load_suffixes
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
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	movq	globals+1336, %rax
	movq	%rax, -16(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB5_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	globals+1296, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB5_3:                                # %while.cond.3
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB5_5
# BB#4:                                 # %while.body.8
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	concat2
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_5:                                # %while.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_6:                                # %while.end.16
	movq	-8(%rbp), %rdi
	callq	Fnreverse
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fget_load_suffixes, .Lfunc_end5-Fget_load_suffixes
	.cfi_endproc

	.globl	Fload
	.align	16, 0x90
	.type	Fload,@function
Fload:                                  # @Fload
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
	subq	$1056, %rsp             # imm = 0x420
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	callq	SPECPDL_INDEX
	movabsq	$.L.str.1, %rcx
	movq	%rax, -72(%rbp)
	movb	$0, -97(%rbp)
	movb	$0, -98(%rbp)
	movb	$1, -113(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_4
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rsi
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$Fsubstitute_in_file_name, %rdi
	movabsq	$load_error_handler, %rcx
	movq	-536(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_condition_case_1
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_3
# BB#2:                                 # %if.then.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_125
.LBB6_3:                                # %if.end
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	Fsubstitute_in_file_name
	movq	%rax, -16(%rbp)
.LBB6_5:                                # %if.end.9
	movq	-16(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB6_7
# BB#6:                                 # %if.then.12
	movl	$-1, -60(%rbp)
	callq	__errno_location
	movl	$2, (%rax)
	jmp	.LBB6_21
.LBB6_7:                                # %if.else.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_15
# BB#8:                                 # %if.then.18
	movabsq	$.L.str.2, %rsi
	movq	-16(%rbp), %rdi
	callq	suffix_p
	testb	$1, %al
	jne	.LBB6_10
# BB#9:                                 # %lor.lhs.false
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	callq	suffix_p
	testb	$1, %al
	jne	.LBB6_10
	jmp	.LBB6_11
.LBB6_10:                               # %if.then.21
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB6_14
.LBB6_11:                               # %if.else.23
	movq	-16(%rbp), %rdi
	callq	Ffile_name_directory
	xorl	%edi, %edi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_13
# BB#12:                                # %if.then.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB6_13:                               # %if.end.29
	jmp	.LBB6_14
.LBB6_14:                               # %if.end.30
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.31
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_17
# BB#16:                                # %if.then.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)
	jmp	.LBB6_20
.LBB6_17:                               # %if.else.36
	callq	Fget_load_suffixes
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_19
# BB#18:                                # %if.then.40
	movl	$2, %eax
	movl	%eax, %edi
	leaq	-160(%rbp), %rsi
	movq	-144(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	globals+1296, %rcx
	movq	%rcx, -152(%rbp)
	callq	Fappend
	movq	%rax, -144(%rbp)
.LBB6_19:                               # %if.end.42
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.43
	xorl	%edi, %edi
	movq	globals+1312, %rax
	movq	-16(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movq	%rsi, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-80(%rbp), %rcx
	movb	globals+3407, %r8b
	andb	$1, %r8b
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	-600(%rbp), %rsi        # 8-byte Reload
	movq	-584(%rbp), %rdx        # 8-byte Reload
	movb	%r8b, -601(%rbp)        # 1-byte Spill
	movq	%rax, %r8
	movb	-601(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %r9d
	callq	openp
	movl	%eax, -60(%rbp)
.LBB6_21:                               # %if.end.46
	cmpl	$-1, -60(%rbp)
	jne	.LBB6_25
# BB#22:                                # %if.then.48
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_24
# BB#23:                                # %if.then.51
	movabsq	$.L.str.4, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB6_24:                               # %if.end.52
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_125
.LBB6_25:                               # %if.end.54
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	cmpq	globals+2560, %rax
	jne	.LBB6_27
# BB#26:                                # %if.then.57
	movq	-80(%rbp), %rax
	movq	%rax, globals+2560
.LBB6_27:                               # %if.end.58
	cmpl	$-2, -60(%rbp)
	jne	.LBB6_34
# BB#28:                                # %if.then.60
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_30
# BB#29:                                # %if.then.64
	movl	$901, %edi              # imm = 0x385
	movq	-80(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	movq	%rax, -112(%rbp)
	jmp	.LBB6_31
.LBB6_30:                               # %if.else.67
	movl	$628, %edi              # imm = 0x274
	movq	-80(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	movq	%rax, -112(%rbp)
.LBB6_31:                               # %if.end.70
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_33
# BB#32:                                # %if.then.73
	movl	$628, %edi              # imm = 0x274
	movq	-112(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movq	%r8, -672(%rbp)         # 8-byte Spill
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	-664(%rbp), %rsi        # 8-byte Reload
	movq	-680(%rbp), %rdx        # 8-byte Reload
	movq	-688(%rbp), %rcx        # 8-byte Reload
	movq	-672(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	callq	call5
	movq	%rax, -8(%rbp)
	jmp	.LBB6_125
.LBB6_33:                               # %if.end.77
	jmp	.LBB6_34
.LBB6_34:                               # %if.end.78
	cmpl	$0, -60(%rbp)
	jge	.LBB6_36
# BB#35:                                # %if.then.80
	jmp	.LBB6_37
.LBB6_36:                               # %if.else.81
	callq	SPECPDL_INDEX
	movabsq	$close_file_unwind, %rdi
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movl	-60(%rbp), %esi
	callq	record_unwind_protect_int
.LBB6_37:                               # %if.end.83
	movl	$0, -164(%rbp)
	movq	Vloads_in_progress, %rax
	movq	%rax, -176(%rbp)
.LBB6_38:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_44
# BB#39:                                # %for.body
                                        #   in Loop: Header=BB6_38 Depth=1
	movq	-80(%rbp), %rdi
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB6_42
# BB#40:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_38 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	cmpl	$3, %eax
	jle	.LBB6_42
# BB#41:                                # %if.then.93
	movq	-80(%rbp), %rdi
	movq	Vloads_in_progress, %rsi
	callq	Fcons
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	callq	signal_error
.LBB6_42:                               # %if.end.95
                                        #   in Loop: Header=BB6_38 Depth=1
	jmp	.LBB6_43
.LBB6_43:                               # %for.inc
                                        #   in Loop: Header=BB6_38 Depth=1
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB6_38
.LBB6_44:                               # %for.end
	movabsq	$record_load_unwind, %rdi
	movq	Vloads_in_progress, %rsi
	callq	record_unwind_protect
	movq	-80(%rbp), %rdi
	movq	Vloads_in_progress, %rsi
	callq	Fcons
	movl	$614, %edi              # imm = 0x266
	movq	%rax, Vloads_in_progress
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-712(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB6_46
# BB#45:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	Ffile_name_directory
	movq	-80(%rbp), %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	Ffile_name_nondirectory
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB6_47
.LBB6_46:                               # %cond.false
	movq	-80(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB6_47:                               # %cond.end
	movq	-728(%rbp), %rax        # 8-byte Reload
	movl	$715, %edi              # imm = 0x2CB
	movq	%rax, -96(%rbp)
	movl	$-1, -132(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movabsq	$load_warn_old_style_backquotes, %rdi
	movq	-16(%rbp), %rsi
	callq	record_unwind_protect
	movabsq	$.L.str.3, %rsi
	movq	-80(%rbp), %rdi
	callq	suffix_p
	testb	$1, %al
	jne	.LBB6_50
# BB#48:                                # %lor.lhs.false.110
	cmpl	$0, -60(%rbp)
	jl	.LBB6_72
# BB#49:                                # %land.lhs.true.113
	movl	-60(%rbp), %edi
	callq	safe_to_load_version
	movl	%eax, -132(%rbp)
	cmpl	$0, %eax
	jle	.LBB6_72
.LBB6_50:                               # %if.then.117
	cmpl	$-2, -60(%rbp)
	je	.LBB6_71
# BB#51:                                # %if.then.120
	cmpl	$0, -132(%rbp)
	jge	.LBB6_60
# BB#52:                                # %land.lhs.true.123
	movl	-60(%rbp), %edi
	callq	safe_to_load_version
	movl	%eax, -132(%rbp)
	cmpl	$0, %eax
	jne	.LBB6_60
# BB#53:                                # %if.then.126
	movb	$0, -113(%rbp)
	testb	$1, globals+3404
	jne	.LBB6_55
# BB#54:                                # %if.then.128
	movq	-80(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.6, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB6_55:                               # %if.else.130
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-744(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_58
# BB#56:                                # %land.lhs.true.134
	testb	$1, globals+3381
	jne	.LBB6_58
# BB#57:                                # %if.then.136
	movabsq	$.L.str.7, %rdi
	movl	$1, %edx
	movq	-80(%rbp), %rsi
	callq	message_with_string
.LBB6_58:                               # %if.end.137
	jmp	.LBB6_59
.LBB6_59:                               # %if.end.138
	jmp	.LBB6_60
.LBB6_60:                               # %if.end.139
	movb	$1, -98(%rbp)
	movq	-80(%rbp), %rdi
	callq	encode_file_name
	movabsq	$.L.str.1, %rdi
	movq	%rax, -88(%rbp)
	movq	%rdi, -128(%rbp)
	testb	$1, globals+3407
	jne	.LBB6_70
# BB#61:                                # %if.then.142
	movq	-88(%rbp), %rdi
	callq	SSDATA
	leaq	-320(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	movl	%eax, -468(%rbp)
	cmpl	$0, -468(%rbp)
	jne	.LBB6_63
# BB#62:                                # %if.then.147
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	xorl	%edx, %edx
	subq	$1, %rax
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	SSET
	movq	-88(%rbp), %rdi
	callq	SSDATA
	leaq	-464(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	movl	%eax, -468(%rbp)
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	SBYTES
	movl	$99, %edx
	subq	$1, %rax
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	SSET
.LBB6_63:                               # %if.end.154
	cmpl	$0, -468(%rbp)
	jne	.LBB6_69
# BB#64:                                # %land.lhs.true.157
	leaq	-320(%rbp), %rdi
	callq	get_stat_mtime
	leaq	-464(%rbp), %rdi
	movq	%rax, -488(%rbp)
	movq	%rdx, -480(%rbp)
	callq	get_stat_mtime
	movq	%rax, -504(%rbp)
	movq	%rdx, -496(%rbp)
	movq	-488(%rbp), %rdi
	movq	-480(%rbp), %rsi
	movq	-504(%rbp), %rdx
	movq	-496(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB6_69
# BB#65:                                # %if.then.164
	xorl	%edi, %edi
	movb	$1, -97(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_68
# BB#66:                                # %land.lhs.true.168
	testb	$1, globals+3381
	jne	.LBB6_68
# BB#67:                                # %if.then.170
	movl	$2, %eax
	movl	%eax, %esi
	movq	$-2, %rdx
	movq	-80(%rbp), %rdi
	callq	Fsubstring
	movabsq	$.L.str.8, %rdi
	movl	$1, %edx
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rsi
	callq	message_with_string
.LBB6_68:                               # %if.end.172
	jmp	.LBB6_69
.LBB6_69:                               # %if.end.173
	jmp	.LBB6_70
.LBB6_70:                               # %if.end.174
	jmp	.LBB6_71
.LBB6_71:                               # %if.end.175
	jmp	.LBB6_84
.LBB6_72:                               # %if.else.176
	xorl	%edi, %edi
	movq	globals+1328, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_83
# BB#73:                                # %if.then.180
	cmpl	$0, -60(%rbp)
	jl	.LBB6_75
# BB#74:                                # %if.then.183
	movl	-60(%rbp), %edi
	callq	emacs_close
	movslq	-64(%rbp), %rdi
	movl	%eax, -780(%rbp)        # 4-byte Spill
	callq	clear_unwind_protect
.LBB6_75:                               # %if.end.186
	xorl	%edi, %edi
	movq	globals+1328, %rax
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	movq	%rax, -800(%rbp)        # 8-byte Spill
	movq	%rsi, -808(%rbp)        # 8-byte Spill
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_77
# BB#76:                                # %cond.true.190
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB6_78
.LBB6_77:                               # %cond.false.192
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB6_78:                               # %cond.end.194
	movq	-824(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-840(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_80
# BB#79:                                # %lor.lhs.false.199
	testb	$1, globals+3381
	je	.LBB6_81
.LBB6_80:                               # %cond.true.202
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB6_82
.LBB6_81:                               # %cond.false.204
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB6_82:                               # %cond.end.206
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	-808(%rbp), %rsi        # 8-byte Reload
	movq	-816(%rbp), %rdx        # 8-byte Reload
	movq	-832(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	call4
	movq	%rax, -520(%rbp)
	movq	-72(%rbp), %rdi
	movq	-520(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB6_125
.LBB6_83:                               # %if.end.210
	jmp	.LBB6_84
.LBB6_84:                               # %if.end.211
	cmpl	$0, -60(%rbp)
	jge	.LBB6_86
# BB#85:                                # %if.then.214
	movq	$0, -56(%rbp)
	callq	__errno_location
	movl	$22, (%rax)
	jmp	.LBB6_87
.LBB6_86:                               # %if.else.216
	movl	-60(%rbp), %edi
	movq	-128(%rbp), %rsi
	callq	fdopen
	movq	%rax, -56(%rbp)
.LBB6_87:                               # %if.end.218
	cmpq	$0, -56(%rbp)
	jne	.LBB6_89
# BB#88:                                # %if.then.220
	movabsq	$.L.str.9, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB6_89:                               # %if.end.221
	movabsq	$fclose_unwind, %rsi
	movslq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	callq	set_unwind_protect_ptr
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-856(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB6_91
# BB#90:                                # %if.then.226
	movq	-16(%rbp), %rdi
	callq	Fpurecopy
	movq	globals+1800, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+1800
.LBB6_91:                               # %if.end.229
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_93
# BB#92:                                # %lor.lhs.false.233
	testb	$1, globals+3381
	je	.LBB6_103
.LBB6_93:                               # %if.then.236
	testb	$1, -113(%rbp)
	jne	.LBB6_95
# BB#94:                                # %if.then.238
	movabsq	$.L.str.10, %rdi
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	callq	message_with_string
	jmp	.LBB6_102
.LBB6_95:                               # %if.else.239
	testb	$1, -98(%rbp)
	jne	.LBB6_97
# BB#96:                                # %if.then.241
	movabsq	$.L.str.11, %rdi
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	callq	message_with_string
	jmp	.LBB6_101
.LBB6_97:                               # %if.else.242
	testb	$1, -97(%rbp)
	je	.LBB6_99
# BB#98:                                # %if.then.244
	movabsq	$.L.str.12, %rdi
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	callq	message_with_string
	jmp	.LBB6_100
.LBB6_99:                               # %if.else.245
	movabsq	$.L.str.13, %rdi
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	callq	message_with_string
.LBB6_100:                              # %if.end.246
	jmp	.LBB6_101
.LBB6_101:                              # %if.end.247
	jmp	.LBB6_102
.LBB6_102:                              # %if.end.248
	jmp	.LBB6_103
.LBB6_103:                              # %if.end.249
	movl	$629, %edi              # imm = 0x275
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	movl	$541, %edi              # imm = 0x21D
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$631, %edi              # imm = 0x277
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$486, %edi              # imm = 0x1E6
	movq	-56(%rbp), %rax
	movq	%rax, instream
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	lisp_file_lexically_bound_p
	testb	$1, %al
	jne	.LBB6_104
	jmp	.LBB6_105
.LBB6_104:                              # %if.then.257
	movl	$614, %edi              # imm = 0x266
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB6_105:                              # %if.end.261
	cmpl	$0, -132(%rbp)
	je	.LBB6_107
# BB#106:                               # %lor.lhs.false.263
	cmpl	$22, -132(%rbp)
	jl	.LBB6_108
.LBB6_107:                              # %if.then.266
	movl	$486, %edi              # imm = 0x1E6
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	movq	%rsi, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	-920(%rbp), %rsi        # 8-byte Reload
	movq	-912(%rbp), %rdx        # 8-byte Reload
	movq	-928(%rbp), %r8         # 8-byte Reload
	movq	-936(%rbp), %r9         # 8-byte Reload
	movq	-944(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	readevalloop
	jmp	.LBB6_109
.LBB6_108:                              # %if.else.272
	movl	$630, %edi              # imm = 0x276
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$484, %edi              # imm = 0x1E4
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	movq	%rsi, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	-976(%rbp), %rsi        # 8-byte Reload
	movq	-968(%rbp), %rdx        # 8-byte Reload
	movq	-984(%rbp), %r8         # 8-byte Reload
	movq	-992(%rbp), %r9         # 8-byte Reload
	movq	-1000(%rbp), %r10       # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	readevalloop
.LBB6_109:                              # %if.end.280
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movl	$348, %edi              # imm = 0x15C
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1024(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB6_111
# BB#110:                               # %if.then.288
	movl	$348, %edi              # imm = 0x15C
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB6_111:                              # %if.end.291
	movq	saved_doc_string, %rdi
	callq	xfree
	movq	$0, saved_doc_string
	movq	$0, saved_doc_string_size
	movq	prev_saved_doc_string, %rdi
	callq	xfree
	movq	$0, prev_saved_doc_string
	movq	$0, prev_saved_doc_string_size
	testb	$1, noninteractive
	jne	.LBB6_124
# BB#112:                               # %land.lhs.true.293
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_114
# BB#113:                               # %lor.lhs.false.297
	testb	$1, globals+3381
	je	.LBB6_124
.LBB6_114:                              # %if.then.300
	testb	$1, -113(%rbp)
	jne	.LBB6_116
# BB#115:                               # %if.then.302
	movabsq	$.L.str.14, %rdi
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	callq	message_with_string
	jmp	.LBB6_123
.LBB6_116:                              # %if.else.303
	testb	$1, -98(%rbp)
	jne	.LBB6_118
# BB#117:                               # %if.then.305
	movabsq	$.L.str.15, %rdi
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	callq	message_with_string
	jmp	.LBB6_122
.LBB6_118:                              # %if.else.306
	testb	$1, -97(%rbp)
	je	.LBB6_120
# BB#119:                               # %if.then.308
	movabsq	$.L.str.16, %rdi
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	callq	message_with_string
	jmp	.LBB6_121
.LBB6_120:                              # %if.else.309
	movabsq	$.L.str.17, %rdi
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	callq	message_with_string
.LBB6_121:                              # %if.end.310
	jmp	.LBB6_122
.LBB6_122:                              # %if.end.311
	jmp	.LBB6_123
.LBB6_123:                              # %if.end.312
	jmp	.LBB6_124
.LBB6_124:                              # %if.end.313
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB6_125:                              # %return
	movq	-8(%rbp), %rax
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fload, .Lfunc_end6-Fload
	.cfi_endproc

	.align	16, 0x90
	.type	load_error_handler,@function
load_error_handler:                     # @load_error_handler
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	load_error_handler, .Lfunc_end7-load_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	suffix_p,@function
suffix_p:                               # @suffix_p
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
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	movb	%dl, -33(%rbp)          # 1-byte Spill
	jl	.LBB8_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	addq	-32(%rbp), %rax
	subq	-24(%rbp), %rdi
	addq	%rdi, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB8_2:                                # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	suffix_p, .Lfunc_end8-suffix_p
	.cfi_endproc

	.globl	openp
	.align	16, 0x90
	.type	openp,@function
openp:                                  # @openp
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
	subq	$784, %rsp              # imm = 0x310
	movb	%r9b, %al
	leaq	-176(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	andb	$1, %al
	movb	%al, -49(%rbp)
	movq	$100, -64(%rbp)
	movq	%r10, -184(%rbp)
	movq	$0, -248(%rbp)
	movl	$2, -252(%rbp)
	movl	$-1, -256(%rbp)
	movq	$16384, -264(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movq	$-1, %rsi
	movq	%rax, -272(%rbp)
	movb	$0, -273(%rbp)
	callq	make_timespec
	movq	%rax, -296(%rbp)
	movq	%rdx, -288(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-224(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-224(%rbp), %rdi
	callq	CHECK_STRING_CAR
	movq	-248(%rbp), %rdi
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-536(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jle	.LBB9_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-248(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SBYTES
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB9_5:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -240(%rbp)
	movq	%rax, -232(%rbp)
	movq	%rax, -208(%rbp)
	movq	%rax, -216(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB9_9:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	complete_filename_p
	andb	$1, %al
	movb	%al, -185(%rbp)
.LBB9_10:                               # %for.cond.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_24 Depth 2
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_110
# BB#11:                                # %for.body.19
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fexpand_file_name
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	complete_filename_p
	testb	$1, %al
	jne	.LBB9_15
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-208(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	Fexpand_file_name
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	complete_filename_p
	testb	$1, %al
	jne	.LBB9_14
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_109
.LBB9_14:                               # %if.end.28
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.29
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-248(%rbp), %rax
	movq	-208(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-552(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -200(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jg	.LBB9_20
# BB#16:                                # %if.then.33
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-200(%rbp), %rax
	addq	$100, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-264(%rbp), %rax
	jg	.LBB9_18
# BB#17:                                # %cond.true.37
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	-264(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -264(%rbp)
	movq	-64(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false.39
                                        #   in Loop: Header=BB9_10 Depth=1
	movb	$1, -273(%rbp)
	movq	-64(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB9_19:                               # %cond.end.41
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
.LBB9_20:                               # %if.end.43
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_22
# BB#21:                                # %cond.true.47
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	empty_unibyte_string, %rdi
	callq	list1
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB9_23
.LBB9_22:                               # %cond.false.49
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB9_23:                               # %cond.end.50
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -224(%rbp)
.LBB9_24:                               # %for.cond.52
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-224(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_106
# BB#25:                                # %for.body.57
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -320(%rbp)
	movq	-208(%rbp), %rdi
	callq	SCHARS
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	$2, %rax
	movb	%dl, -577(%rbp)         # 1-byte Spill
	jle	.LBB9_28
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_24 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-208(%rbp), %rdi
	callq	SREF
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movzbl	%al, %ecx
	cmpl	$47, %ecx
	movb	%dl, -577(%rbp)         # 1-byte Spill
	jne	.LBB9_28
# BB#27:                                # %land.rhs
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-208(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$58, %ecx
	sete	%al
	movb	%al, -577(%rbp)         # 1-byte Spill
.LBB9_28:                               # %land.end
                                        #   in Loop: Header=BB9_24 Depth=2
	movb	-577(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -332(%rbp)
	movq	-208(%rbp), %rdi
	callq	SBYTES
	movslq	-332(%rbp), %rdi
	subq	%rdi, %rax
	movq	%rax, -312(%rbp)
	movq	-184(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movslq	-332(%rbp), %rdi
	addq	%rdi, %rax
	movq	-312(%rbp), %rdx
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-184(%rbp), %rax
	addq	-312(%rbp), %rax
	movq	-304(%rbp), %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-320(%rbp), %rdx
	addq	$1, %rdx
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-320(%rbp), %rax
	addq	-312(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-208(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB9_31
# BB#29:                                # %land.lhs.true.82
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-304(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB9_31
# BB#30:                                # %if.then.84
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-184(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -216(%rbp)
	jmp	.LBB9_32
.LBB9_31:                               # %if.else
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-184(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	make_string
	movq	%rax, -216(%rbp)
.LBB9_32:                               # %if.end.87
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$413, %edi              # imm = 0x19D
	movq	-216(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_35
# BB#33:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_24 Depth=2
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_56
# BB#34:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_56
.LBB9_35:                               # %land.lhs.true.100
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-48(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB9_56
# BB#36:                                # %if.then.102
                                        #   in Loop: Header=BB9_24 Depth=2
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-640(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_38
# BB#37:                                # %lor.lhs.false.106
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_39
.LBB9_38:                               # %if.then.110
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-216(%rbp), %rdi
	callq	Ffile_readable_p
	xorl	%edi, %edi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-656(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -333(%rbp)
	jmp	.LBB9_47
.LBB9_39:                               # %if.else.116
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-48(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-664(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_41
# BB#40:                                # %if.then.121
                                        #   in Loop: Header=BB9_24 Depth=2
	movb	$0, -333(%rbp)
	jmp	.LBB9_46
.LBB9_41:                               # %if.else.122
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$339, %edi              # imm = 0x153
	movq	-344(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-672(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_43
# BB#42:                                # %lor.lhs.false.126
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-216(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-680(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_44
.LBB9_43:                               # %if.then.131
                                        #   in Loop: Header=BB9_24 Depth=2
	movb	$1, -333(%rbp)
	jmp	.LBB9_45
.LBB9_44:                               # %if.else.132
                                        #   in Loop: Header=BB9_24 Depth=2
	movb	$0, -333(%rbp)
	movl	$21, -252(%rbp)
.LBB9_45:                               # %if.end.133
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_46
.LBB9_46:                               # %if.end.134
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_47
.LBB9_47:                               # %if.end.135
                                        #   in Loop: Header=BB9_24 Depth=2
	testb	$1, -333(%rbp)
	je	.LBB9_55
# BB#48:                                # %if.then.137
	cmpq	$0, -40(%rbp)
	je	.LBB9_50
# BB#49:                                # %if.then.139
	movq	-216(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB9_50:                               # %if.end.140
	jmp	.LBB9_51
.LBB9_51:                               # %do.body
	testb	$1, -273(%rbp)
	je	.LBB9_53
# BB#52:                                # %if.then.142
	xorl	%edi, %edi
	movb	$0, -273(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB9_53:                               # %if.end.145
	jmp	.LBB9_54
.LBB9_54:                               # %do.end
	movl	$-2, -4(%rbp)
	jmp	.LBB9_115
.LBB9_55:                               # %if.end.146
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_104
.LBB9_56:                               # %if.else.147
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-216(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -360(%rbp)
	movq	-48(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB9_57
	jmp	.LBB9_66
.LBB9_57:                               # %if.then.154
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	$-1, -348(%rbp)
	movq	-48(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB9_59
# BB#58:                                # %if.then.157
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$22, -252(%rbp)
	jmp	.LBB9_65
.LBB9_59:                               # %if.else.158
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movl	$512, %ecx              # imm = 0x200
	movq	-360(%rbp), %rsi
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	callq	faccessat
	cmpl	$0, %eax
	jne	.LBB9_64
# BB#60:                                # %if.then.164
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-360(%rbp), %rdi
	callq	file_directory_p
	testb	$1, %al
	jne	.LBB9_61
	jmp	.LBB9_62
.LBB9_61:                               # %if.then.166
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$21, -252(%rbp)
	jmp	.LBB9_63
.LBB9_62:                               # %if.else.167
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	$1, -348(%rbp)
.LBB9_63:                               # %if.end.168
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_64
.LBB9_64:                               # %if.end.169
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_65
.LBB9_65:                               # %if.end.170
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_77
.LBB9_66:                               # %if.else.171
                                        #   in Loop: Header=BB9_24 Depth=2
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movl	%edi, %edx
	cmovel	%edx, %edx
	addl	$0, %edx
	movl	%edx, -508(%rbp)
	movq	-360(%rbp), %rax
	movl	-508(%rbp), %esi
	movl	%edi, -708(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-708(%rbp), %edx        # 4-byte Reload
	callq	emacs_open
	movl	%eax, -348(%rbp)
	cmpl	$0, -348(%rbp)
	jge	.LBB9_70
# BB#67:                                # %if.then.181
                                        #   in Loop: Header=BB9_24 Depth=2
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB9_69
# BB#68:                                # %if.then.185
                                        #   in Loop: Header=BB9_24 Depth=2
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -252(%rbp)
.LBB9_69:                               # %if.end.187
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_76
.LBB9_70:                               # %if.else.188
                                        #   in Loop: Header=BB9_24 Depth=2
	leaq	-504(%rbp), %rsi
	movl	-348(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB9_72
# BB#71:                                # %cond.true.193
                                        #   in Loop: Header=BB9_24 Depth=2
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -712(%rbp)        # 4-byte Spill
	jmp	.LBB9_73
.LBB9_72:                               # %cond.false.195
                                        #   in Loop: Header=BB9_24 Depth=2
	xorl	%eax, %eax
	movl	$21, %ecx
	movl	-480(%rbp), %edx
	andl	$61440, %edx            # imm = 0xF000
	cmpl	$16384, %edx            # imm = 0x4000
	cmovel	%ecx, %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
.LBB9_73:                               # %cond.end.200
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	-712(%rbp), %eax        # 4-byte Reload
	movl	%eax, -512(%rbp)
	cmpl	$0, -512(%rbp)
	je	.LBB9_75
# BB#74:                                # %if.then.203
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	-512(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-348(%rbp), %edi
	callq	emacs_close
	movl	$-1, -348(%rbp)
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB9_75:                               # %if.end.205
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_76
.LBB9_76:                               # %if.end.206
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_77
.LBB9_77:                               # %if.end.207
                                        #   in Loop: Header=BB9_24 Depth=2
	cmpl	$0, -348(%rbp)
	jl	.LBB9_94
# BB#78:                                # %if.then.210
                                        #   in Loop: Header=BB9_24 Depth=2
	testb	$1, -49(%rbp)
	je	.LBB9_86
# BB#79:                                # %land.lhs.true.213
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-48(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB9_86
# BB#80:                                # %if.then.215
                                        #   in Loop: Header=BB9_24 Depth=2
	leaq	-504(%rbp), %rdi
	callq	get_stat_mtime
	movq	%rax, -528(%rbp)
	movq	%rdx, -520(%rbp)
	movq	-528(%rbp), %rdi
	movq	-520(%rbp), %rsi
	movq	-296(%rbp), %rdx
	movq	-288(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jg	.LBB9_82
# BB#81:                                # %if.then.221
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	-348(%rbp), %edi
	callq	emacs_close
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB9_85
.LBB9_82:                               # %if.else.223
                                        #   in Loop: Header=BB9_24 Depth=2
	xorl	%eax, %eax
	cmpl	-256(%rbp), %eax
	jg	.LBB9_84
# BB#83:                                # %if.then.226
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	-256(%rbp), %edi
	callq	emacs_close
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB9_84:                               # %if.end.228
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	-348(%rbp), %eax
	movl	%eax, -256(%rbp)
	movq	-528(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -288(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -240(%rbp)
.LBB9_85:                               # %if.end.229
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_93
.LBB9_86:                               # %if.else.230
	cmpq	$0, -40(%rbp)
	je	.LBB9_88
# BB#87:                                # %if.then.232
	movq	-216(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB9_88:                               # %if.end.233
	jmp	.LBB9_89
.LBB9_89:                               # %do.body.234
	testb	$1, -273(%rbp)
	je	.LBB9_91
# BB#90:                                # %if.then.236
	xorl	%edi, %edi
	movb	$0, -273(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB9_91:                               # %if.end.239
	jmp	.LBB9_92
.LBB9_92:                               # %do.end.240
	movl	-348(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_115
.LBB9_93:                               # %if.end.241
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_94
.LBB9_94:                               # %if.end.242
                                        #   in Loop: Header=BB9_24 Depth=2
	xorl	%eax, %eax
	cmpl	-256(%rbp), %eax
	jg	.LBB9_103
# BB#95:                                # %land.lhs.true.245
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB9_103
# BB#96:                                # %if.then.253
	cmpq	$0, -40(%rbp)
	je	.LBB9_98
# BB#97:                                # %if.then.255
	movq	-240(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB9_98:                               # %if.end.256
	jmp	.LBB9_99
.LBB9_99:                               # %do.body.257
	testb	$1, -273(%rbp)
	je	.LBB9_101
# BB#100:                               # %if.then.259
	xorl	%edi, %edi
	movb	$0, -273(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB9_101:                              # %if.end.262
	jmp	.LBB9_102
.LBB9_102:                              # %do.end.263
	movl	-256(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_115
.LBB9_103:                              # %if.end.264
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_104
.LBB9_104:                              # %if.end.265
                                        #   in Loop: Header=BB9_24 Depth=2
	jmp	.LBB9_105
.LBB9_105:                              # %for.inc.266
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB9_24
.LBB9_106:                              # %for.end.270
                                        #   in Loop: Header=BB9_10 Depth=1
	testb	$1, -185(%rbp)
	je	.LBB9_108
# BB#107:                               # %if.then.272
	jmp	.LBB9_110
.LBB9_108:                              # %if.end.273
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_109
.LBB9_109:                              # %for.inc.274
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB9_10
.LBB9_110:                              # %for.end.278
	jmp	.LBB9_111
.LBB9_111:                              # %do.body.279
	testb	$1, -273(%rbp)
	je	.LBB9_113
# BB#112:                               # %if.then.281
	xorl	%edi, %edi
	movb	$0, -273(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB9_113:                              # %if.end.284
	jmp	.LBB9_114
.LBB9_114:                              # %do.end.285
	movl	-252(%rbp), %eax
	movl	%eax, -780(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	-780(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	movl	$-1, -4(%rbp)
.LBB9_115:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	openp, .Lfunc_end9-openp
	.cfi_endproc

	.align	16, 0x90
	.type	record_load_unwind,@function
record_load_unwind:                     # @record_load_unwind
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, Vloads_in_progress
	popq	%rbp
	retq
.Lfunc_end10:
	.size	record_load_unwind, .Lfunc_end10-record_load_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	load_warn_old_style_backquotes,@function
load_warn_old_style_backquotes:         # @load_warn_old_style_backquotes
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	globals+1664, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$4, %esi
	leaq	-48(%rbp), %rax
	movabsq	$.L.str.86, %rcx
	movq	$44, -48(%rbp)
	movq	$-1, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-64(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	Fmessage
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB11_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	load_warn_old_style_backquotes, .Lfunc_end11-load_warn_old_style_backquotes
	.cfi_endproc

	.align	16, 0x90
	.type	safe_to_load_version,@function
safe_to_load_version:                   # @safe_to_load_version
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
	subq	$560, %rsp              # imm = 0x230
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %edx
	leaq	-528(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movl	$1, -540(%rbp)
	movl	-4(%rbp), %edi
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -532(%rbp)
	cmpl	$0, -532(%rbp)
	jle	.LBB12_13
# BB#1:                                 # %if.then
	movl	$0, -536(%rbp)
.LBB12_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-536(%rbp), %eax
	cmpl	-532(%rbp), %eax
	movb	%cl, -541(%rbp)         # 1-byte Spill
	jge	.LBB12_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB12_2 Depth=1
	movslq	-536(%rbp), %rax
	movsbl	-528(%rbp,%rax), %ecx
	cmpl	$10, %ecx
	setne	%dl
	movb	%dl, -541(%rbp)         # 1-byte Spill
.LBB12_4:                               # %land.end
                                        #   in Loop: Header=BB12_2 Depth=1
	movb	-541(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_5
	jmp	.LBB12_9
.LBB12_5:                               # %for.body
                                        #   in Loop: Header=BB12_2 Depth=1
	cmpl	$4, -536(%rbp)
	jne	.LBB12_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB12_2 Depth=1
	movslq	-536(%rbp), %rax
	movsbl	-528(%rbp,%rax), %ecx
	movl	%ecx, -540(%rbp)
.LBB12_7:                               # %if.end
                                        #   in Loop: Header=BB12_2 Depth=1
	jmp	.LBB12_8
.LBB12_8:                               # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	-536(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -536(%rbp)
	jmp	.LBB12_2
.LBB12_9:                               # %for.end
	movl	-536(%rbp), %eax
	cmpl	-532(%rbp), %eax
	jge	.LBB12_11
# BB#10:                                # %lor.lhs.false
	leaq	-528(%rbp), %rax
	movq	globals+176, %rdi
	movslq	-536(%rbp), %rcx
	addq	%rcx, %rax
	movl	-532(%rbp), %edx
	subl	-536(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, %rsi
	callq	fast_c_string_match_ignore_case
	cmpq	$0, %rax
	jge	.LBB12_12
.LBB12_11:                              # %if.then.20
	movl	$0, -540(%rbp)
.LBB12_12:                              # %if.end.21
	jmp	.LBB12_13
.LBB12_13:                              # %if.end.22
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	-4(%rbp), %edi
	callq	lseek
	movl	-540(%rbp), %edx
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end12:
	.size	safe_to_load_version, .Lfunc_end12-safe_to_load_version
	.cfi_endproc

	.align	16, 0x90
	.type	lisp_file_lexically_bound_p,@function
lisp_file_lexically_bound_p:            # @lisp_file_lexically_bound_p
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
	subq	$272, %rsp              # imm = 0x110
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	cmpl	$35, -20(%rbp)
	jne	.LBB13_11
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	cmpl	$33, -20(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	unreadchar
	movl	$35, %esi
	movq	-16(%rbp), %rdi
	callq	unreadchar
	movb	$0, -1(%rbp)
	jmp	.LBB13_110
.LBB13_3:                               # %if.end
	jmp	.LBB13_4
.LBB13_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -20(%rbp)
	movb	%cl, -261(%rbp)         # 1-byte Spill
	je	.LBB13_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB13_4 Depth=1
	cmpl	$-1, -20(%rbp)
	setne	%al
	movb	%al, -261(%rbp)         # 1-byte Spill
.LBB13_6:                               # %land.end
                                        #   in Loop: Header=BB13_4 Depth=1
	movb	-261(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_7
	jmp	.LBB13_8
.LBB13_7:                               # %while.body
                                        #   in Loop: Header=BB13_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	jmp	.LBB13_4
.LBB13_8:                               # %while.end
	cmpl	$10, -20(%rbp)
	jne	.LBB13_10
# BB#9:                                 # %if.then.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
.LBB13_10:                              # %if.end.10
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.11
	cmpl	$59, -20(%rbp)
	je	.LBB13_13
# BB#12:                                # %if.then.13
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	unreadchar
	movb	$0, -1(%rbp)
	jmp	.LBB13_110
.LBB13_13:                              # %if.else
	movb	$0, -21(%rbp)
	movl	$0, -28(%rbp)
	movb	$0, -29(%rbp)
.LBB13_14:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB13_16
# BB#15:                                # %if.then.16
                                        #   in Loop: Header=BB13_14 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$45, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_24
.LBB13_16:                              # %if.else.18
                                        #   in Loop: Header=BB13_14 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB13_18
# BB#17:                                # %if.then.20
                                        #   in Loop: Header=BB13_14 Depth=1
	xorl	%eax, %eax
	movl	$2, %ecx
	cmpl	$42, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_23
.LBB13_18:                              # %if.else.23
                                        #   in Loop: Header=BB13_14 Depth=1
	cmpl	$2, -28(%rbp)
	jne	.LBB13_22
# BB#19:                                # %if.then.25
                                        #   in Loop: Header=BB13_14 Depth=1
	cmpl	$45, -20(%rbp)
	jne	.LBB13_21
# BB#20:                                # %if.then.27
                                        #   in Loop: Header=BB13_14 Depth=1
	movb	-29(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -29(%rbp)
.LBB13_21:                              # %if.end.28
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	$0, -28(%rbp)
.LBB13_22:                              # %if.end.29
                                        #   in Loop: Header=BB13_14 Depth=1
	jmp	.LBB13_23
.LBB13_23:                              # %if.end.30
                                        #   in Loop: Header=BB13_14 Depth=1
	jmp	.LBB13_24
.LBB13_24:                              # %if.end.31
                                        #   in Loop: Header=BB13_14 Depth=1
	jmp	.LBB13_25
.LBB13_25:                              # %do.cond
                                        #   in Loop: Header=BB13_14 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -29(%rbp)
	movb	%cl, -262(%rbp)         # 1-byte Spill
	jne	.LBB13_28
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_14 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -20(%rbp)
	movb	%cl, -262(%rbp)         # 1-byte Spill
	je	.LBB13_28
# BB#27:                                # %land.rhs.34
                                        #   in Loop: Header=BB13_14 Depth=1
	cmpl	$-1, -20(%rbp)
	setne	%al
	movb	%al, -262(%rbp)         # 1-byte Spill
.LBB13_28:                              # %land.end.36
                                        #   in Loop: Header=BB13_14 Depth=1
	movb	-262(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_14
# BB#29:                                # %do.end
	jmp	.LBB13_30
.LBB13_30:                              # %while.cond.37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_32 Depth 2
                                        #     Child Loop BB13_37 Depth 2
                                        #     Child Loop BB13_60 Depth 2
                                        #     Child Loop BB13_68 Depth 2
                                        #     Child Loop BB13_73 Depth 2
                                        #     Child Loop BB13_94 Depth 2
	testb	$1, -29(%rbp)
	je	.LBB13_104
# BB#31:                                # %while.body.39
                                        #   in Loop: Header=BB13_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
.LBB13_32:                              # %while.cond.41
                                        #   Parent Loop BB13_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$32, -20(%rbp)
	movb	%al, -263(%rbp)         # 1-byte Spill
	je	.LBB13_34
# BB#33:                                # %lor.rhs
                                        #   in Loop: Header=BB13_32 Depth=2
	cmpl	$9, -20(%rbp)
	sete	%al
	movb	%al, -263(%rbp)         # 1-byte Spill
.LBB13_34:                              # %lor.end
                                        #   in Loop: Header=BB13_32 Depth=2
	movb	-263(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_35
	jmp	.LBB13_36
.LBB13_35:                              # %while.body.44
                                        #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	jmp	.LBB13_32
.LBB13_36:                              # %while.end.46
                                        #   in Loop: Header=BB13_30 Depth=1
	movl	$0, -260(%rbp)
.LBB13_37:                              # %while.cond.47
                                        #   Parent Loop BB13_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$58, -20(%rbp)
	movb	%cl, -264(%rbp)         # 1-byte Spill
	je	.LBB13_41
# BB#38:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB13_37 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -20(%rbp)
	movb	%cl, -264(%rbp)         # 1-byte Spill
	je	.LBB13_41
# BB#39:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB13_37 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -20(%rbp)
	movb	%cl, -264(%rbp)         # 1-byte Spill
	je	.LBB13_41
# BB#40:                                # %land.rhs.53
                                        #   in Loop: Header=BB13_37 Depth=2
	movb	-29(%rbp), %al
	movb	%al, -264(%rbp)         # 1-byte Spill
.LBB13_41:                              # %land.end.55
                                        #   in Loop: Header=BB13_37 Depth=2
	movb	-264(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_42
	jmp	.LBB13_55
.LBB13_42:                              # %while.body.56
                                        #   in Loop: Header=BB13_37 Depth=2
	movl	-260(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$99, %rcx
	jae	.LBB13_44
# BB#43:                                # %if.then.59
                                        #   in Loop: Header=BB13_37 Depth=2
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movl	-260(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)
	movl	%eax, %eax
	movl	%eax, %esi
	movb	%cl, -144(%rbp,%rsi)
.LBB13_44:                              # %if.end.61
                                        #   in Loop: Header=BB13_37 Depth=2
	cmpl	$0, -28(%rbp)
	jne	.LBB13_46
# BB#45:                                # %if.then.64
                                        #   in Loop: Header=BB13_37 Depth=2
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$45, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_54
.LBB13_46:                              # %if.else.68
                                        #   in Loop: Header=BB13_37 Depth=2
	cmpl	$1, -28(%rbp)
	jne	.LBB13_48
# BB#47:                                # %if.then.71
                                        #   in Loop: Header=BB13_37 Depth=2
	xorl	%eax, %eax
	movl	$2, %ecx
	cmpl	$42, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_53
.LBB13_48:                              # %if.else.75
                                        #   in Loop: Header=BB13_37 Depth=2
	cmpl	$2, -28(%rbp)
	jne	.LBB13_52
# BB#49:                                # %if.then.78
                                        #   in Loop: Header=BB13_37 Depth=2
	cmpl	$45, -20(%rbp)
	jne	.LBB13_51
# BB#50:                                # %if.then.81
                                        #   in Loop: Header=BB13_37 Depth=2
	movb	-29(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -29(%rbp)
.LBB13_51:                              # %if.end.85
                                        #   in Loop: Header=BB13_37 Depth=2
	movl	$0, -28(%rbp)
.LBB13_52:                              # %if.end.86
                                        #   in Loop: Header=BB13_37 Depth=2
	jmp	.LBB13_53
.LBB13_53:                              # %if.end.87
                                        #   in Loop: Header=BB13_37 Depth=2
	jmp	.LBB13_54
.LBB13_54:                              # %if.end.88
                                        #   in Loop: Header=BB13_37 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	jmp	.LBB13_37
.LBB13_55:                              # %while.end.90
                                        #   in Loop: Header=BB13_30 Depth=1
	testb	$1, -29(%rbp)
	je	.LBB13_58
# BB#56:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_30 Depth=1
	cmpl	$10, -20(%rbp)
	je	.LBB13_58
# BB#57:                                # %lor.lhs.false.94
                                        #   in Loop: Header=BB13_30 Depth=1
	cmpl	$-1, -20(%rbp)
	jne	.LBB13_59
.LBB13_58:                              # %if.then.97
	jmp	.LBB13_104
.LBB13_59:                              # %if.end.98
                                        #   in Loop: Header=BB13_30 Depth=1
	jmp	.LBB13_60
.LBB13_60:                              # %while.cond.99
                                        #   Parent Loop BB13_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -260(%rbp)
	movb	%cl, -265(%rbp)         # 1-byte Spill
	jbe	.LBB13_64
# BB#61:                                # %land.rhs.102
                                        #   in Loop: Header=BB13_60 Depth=2
	movb	$1, %al
	movl	-260(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movsbl	-144(%rbp,%rdx), %ecx
	cmpl	$32, %ecx
	movb	%al, -266(%rbp)         # 1-byte Spill
	je	.LBB13_63
# BB#62:                                # %lor.rhs.108
                                        #   in Loop: Header=BB13_60 Depth=2
	movl	-260(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movsbl	-144(%rbp,%rcx), %eax
	cmpl	$9, %eax
	sete	%dl
	movb	%dl, -266(%rbp)         # 1-byte Spill
.LBB13_63:                              # %lor.end.115
                                        #   in Loop: Header=BB13_60 Depth=2
	movb	-266(%rbp), %al         # 1-byte Reload
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB13_64:                              # %land.end.116
                                        #   in Loop: Header=BB13_60 Depth=2
	movb	-265(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_65
	jmp	.LBB13_66
.LBB13_65:                              # %while.body.117
                                        #   in Loop: Header=BB13_60 Depth=2
	movl	-260(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB13_60
.LBB13_66:                              # %while.end.118
                                        #   in Loop: Header=BB13_30 Depth=1
	movl	-260(%rbp), %eax
	movl	%eax, %ecx
	movb	$0, -144(%rbp,%rcx)
	cmpl	$58, -20(%rbp)
	jne	.LBB13_103
# BB#67:                                # %if.then.123
                                        #   in Loop: Header=BB13_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
.LBB13_68:                              # %while.cond.125
                                        #   Parent Loop BB13_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$32, -20(%rbp)
	movb	%al, -267(%rbp)         # 1-byte Spill
	je	.LBB13_70
# BB#69:                                # %lor.rhs.128
                                        #   in Loop: Header=BB13_68 Depth=2
	cmpl	$9, -20(%rbp)
	sete	%al
	movb	%al, -267(%rbp)         # 1-byte Spill
.LBB13_70:                              # %lor.end.131
                                        #   in Loop: Header=BB13_68 Depth=2
	movb	-267(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_71
	jmp	.LBB13_72
.LBB13_71:                              # %while.body.132
                                        #   in Loop: Header=BB13_68 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	jmp	.LBB13_68
.LBB13_72:                              # %while.end.134
                                        #   in Loop: Header=BB13_30 Depth=1
	movl	$0, -260(%rbp)
.LBB13_73:                              # %while.cond.135
                                        #   Parent Loop BB13_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$59, -20(%rbp)
	movb	%cl, -268(%rbp)         # 1-byte Spill
	je	.LBB13_77
# BB#74:                                # %land.lhs.true.138
                                        #   in Loop: Header=BB13_73 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -20(%rbp)
	movb	%cl, -268(%rbp)         # 1-byte Spill
	je	.LBB13_77
# BB#75:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB13_73 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -20(%rbp)
	movb	%cl, -268(%rbp)         # 1-byte Spill
	je	.LBB13_77
# BB#76:                                # %land.rhs.144
                                        #   in Loop: Header=BB13_73 Depth=2
	movb	-29(%rbp), %al
	movb	%al, -268(%rbp)         # 1-byte Spill
.LBB13_77:                              # %land.end.147
                                        #   in Loop: Header=BB13_73 Depth=2
	movb	-268(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_78
	jmp	.LBB13_91
.LBB13_78:                              # %while.body.148
                                        #   in Loop: Header=BB13_73 Depth=2
	movl	-260(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$99, %rcx
	jae	.LBB13_80
# BB#79:                                # %if.then.152
                                        #   in Loop: Header=BB13_73 Depth=2
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movl	-260(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)
	movl	%eax, %eax
	movl	%eax, %esi
	movb	%cl, -256(%rbp,%rsi)
.LBB13_80:                              # %if.end.157
                                        #   in Loop: Header=BB13_73 Depth=2
	cmpl	$0, -28(%rbp)
	jne	.LBB13_82
# BB#81:                                # %if.then.160
                                        #   in Loop: Header=BB13_73 Depth=2
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$45, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_90
.LBB13_82:                              # %if.else.164
                                        #   in Loop: Header=BB13_73 Depth=2
	cmpl	$1, -28(%rbp)
	jne	.LBB13_84
# BB#83:                                # %if.then.167
                                        #   in Loop: Header=BB13_73 Depth=2
	xorl	%eax, %eax
	movl	$2, %ecx
	cmpl	$42, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_89
.LBB13_84:                              # %if.else.171
                                        #   in Loop: Header=BB13_73 Depth=2
	cmpl	$2, -28(%rbp)
	jne	.LBB13_88
# BB#85:                                # %if.then.174
                                        #   in Loop: Header=BB13_73 Depth=2
	cmpl	$45, -20(%rbp)
	jne	.LBB13_87
# BB#86:                                # %if.then.177
                                        #   in Loop: Header=BB13_73 Depth=2
	movb	-29(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -29(%rbp)
.LBB13_87:                              # %if.end.181
                                        #   in Loop: Header=BB13_73 Depth=2
	movl	$0, -28(%rbp)
.LBB13_88:                              # %if.end.182
                                        #   in Loop: Header=BB13_73 Depth=2
	jmp	.LBB13_89
.LBB13_89:                              # %if.end.183
                                        #   in Loop: Header=BB13_73 Depth=2
	jmp	.LBB13_90
.LBB13_90:                              # %if.end.184
                                        #   in Loop: Header=BB13_73 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	jmp	.LBB13_73
.LBB13_91:                              # %while.end.186
                                        #   in Loop: Header=BB13_30 Depth=1
	testb	$1, -29(%rbp)
	jne	.LBB13_93
# BB#92:                                # %if.then.188
                                        #   in Loop: Header=BB13_30 Depth=1
	movl	-260(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -260(%rbp)
.LBB13_93:                              # %if.end.190
                                        #   in Loop: Header=BB13_30 Depth=1
	jmp	.LBB13_94
.LBB13_94:                              # %while.cond.191
                                        #   Parent Loop BB13_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -260(%rbp)
	movb	%cl, -269(%rbp)         # 1-byte Spill
	jbe	.LBB13_98
# BB#95:                                # %land.rhs.194
                                        #   in Loop: Header=BB13_94 Depth=2
	movb	$1, %al
	movl	-260(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movsbl	-256(%rbp,%rdx), %ecx
	cmpl	$32, %ecx
	movb	%al, -270(%rbp)         # 1-byte Spill
	je	.LBB13_97
# BB#96:                                # %lor.rhs.201
                                        #   in Loop: Header=BB13_94 Depth=2
	movl	-260(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movsbl	-256(%rbp,%rcx), %eax
	cmpl	$9, %eax
	sete	%dl
	movb	%dl, -270(%rbp)         # 1-byte Spill
.LBB13_97:                              # %lor.end.208
                                        #   in Loop: Header=BB13_94 Depth=2
	movb	-270(%rbp), %al         # 1-byte Reload
	movb	%al, -269(%rbp)         # 1-byte Spill
.LBB13_98:                              # %land.end.209
                                        #   in Loop: Header=BB13_94 Depth=2
	movb	-269(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_99
	jmp	.LBB13_100
.LBB13_99:                              # %while.body.210
                                        #   in Loop: Header=BB13_94 Depth=2
	movl	-260(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB13_94
.LBB13_100:                             # %while.end.212
                                        #   in Loop: Header=BB13_30 Depth=1
	leaq	-144(%rbp), %rdi
	movl	-260(%rbp), %eax
	movl	%eax, %ecx
	movb	$0, -256(%rbp,%rcx)
	movl	$.L.str.78, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_102
# BB#101:                               # %if.then.218
	leaq	-256(%rbp), %rdi
	movl	$.L.str.87, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -21(%rbp)
	jmp	.LBB13_104
.LBB13_102:                             # %if.end.224
                                        #   in Loop: Header=BB13_30 Depth=1
	jmp	.LBB13_103
.LBB13_103:                             # %if.end.225
                                        #   in Loop: Header=BB13_30 Depth=1
	jmp	.LBB13_30
.LBB13_104:                             # %while.end.226
	jmp	.LBB13_105
.LBB13_105:                             # %while.cond.227
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -20(%rbp)
	movb	%cl, -271(%rbp)         # 1-byte Spill
	je	.LBB13_107
# BB#106:                               # %land.rhs.230
                                        #   in Loop: Header=BB13_105 Depth=1
	cmpl	$-1, -20(%rbp)
	setne	%al
	movb	%al, -271(%rbp)         # 1-byte Spill
.LBB13_107:                             # %land.end.233
                                        #   in Loop: Header=BB13_105 Depth=1
	movb	-271(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_108
	jmp	.LBB13_109
.LBB13_108:                             # %while.body.234
                                        #   in Loop: Header=BB13_105 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
	jmp	.LBB13_105
.LBB13_109:                             # %while.end.236
	movb	-21(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB13_110:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end13:
	.size	lisp_file_lexically_bound_p, .Lfunc_end13-lisp_file_lexically_bound_p
	.cfi_endproc

	.align	16, 0x90
	.type	readevalloop,@function
readevalloop:                           # @readevalloop
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
	subq	$528, %rsp              # imm = 0x210
	movb	%cl, %al
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r11, -56(%rbp)
	movq	%r10, -64(%rbp)
	callq	SPECPDL_INDEX
	movabsq	$.L.str.89, %rdi
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	movb	$0, -113(%rbp)
	movb	$1, -114(%rbp)
	callq	intern
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB14_3
# BB#1:                                 # %lor.lhs.false
	movl	$486, %edi              # imm = 0x1E6
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_3
# BB#2:                                 # %lor.lhs.false.6
	movl	$484, %edi              # imm = 0x1E4
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_4
.LBB14_3:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)
.LBB14_4:                               # %if.end
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB14_9
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB14_9
# BB#6:                                 # %if.then.15
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_8
# BB#7:                                 # %if.then.19
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB14_8:                               # %if.end.20
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.21
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB14_10
	jmp	.LBB14_11
.LBB14_10:                              # %if.then.23
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -96(%rbp)
	jmp	.LBB14_15
.LBB14_11:                              # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB14_14
# BB#12:                                # %land.lhs.true.29
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB14_14
# BB#13:                                # %if.then.33
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB14_14:                              # %if.end.35
	jmp	.LBB14_15
.LBB14_15:                              # %if.end.36
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.40
	cmpq	$0, -96(%rbp)
	jne	.LBB14_18
# BB#17:                                # %if.then.41
	callq	emacs_abort
.LBB14_18:                              # %if.end.42
	movl	$870, %edi              # imm = 0x366
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	movl	$305, %edi              # imm = 0x131
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movabsq	$readevalloop_1, %rdi
	movb	globals+3403, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	record_unwind_protect_int
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$614, %edi              # imm = 0x266
	movq	-200(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, globals+3403
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	find_symbol_value
	movl	$567, %edi              # imm = 0x237
	movq	%rax, -112(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-112(%rbp), %rdx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB14_20
# BB#19:                                # %lor.lhs.false.58
	movl	$957, %edi              # imm = 0x3BD
	movq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_21
.LBB14_20:                              # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB14_22
.LBB14_21:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB14_22:                              # %cond.end
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_27
# BB#23:                                # %land.lhs.true.68
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_27
# BB#24:                                # %land.lhs.true.72
	movq	-24(%rbp), %rdi
	callq	Ffile_name_absolute_p
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_27
# BB#25:                                # %land.lhs.true.77
	movl	$429, %edi              # imm = 0x1AD
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_27
# BB#26:                                # %if.then.83
	movl	$429, %edi              # imm = 0x1AD
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -24(%rbp)
.LBB14_27:                              # %if.end.86
	movq	-24(%rbp), %rdi
	callq	LOADHIST_ATTACH
	movb	$1, -97(%rbp)
.LBB14_28:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_44 Depth 2
                                        #       Child Loop BB14_46 Depth 3
	testb	$1, -97(%rbp)
	je	.LBB14_98
# BB#29:                                # %while.body
                                        #   in Loop: Header=BB14_28 Depth=1
	callq	SPECPDL_INDEX
	movq	%rax, -136(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB14_32
# BB#30:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_32
# BB#31:                                # %if.then.95
	movabsq	$.L.str.90, %rdi
	movb	$0, %al
	callq	error
.LBB14_32:                              # %if.end.96
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_38
# BB#33:                                # %if.then.100
                                        #   in Loop: Header=BB14_28 Depth=1
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-96(%rbp), %rdi
	callq	set_buffer_internal
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	callq	save_restriction_save
	movabsq	$save_restriction_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-56(%rbp), %rdi
	callq	Fgoto_char
	xorl	%edi, %edi
	movq	-64(%rbp), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB14_35
# BB#34:                                # %if.then.108
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fnarrow_to_region
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB14_35:                              # %if.end.110
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_37
# BB#36:                                # %if.then.116
                                        #   in Loop: Header=BB14_28 Depth=1
	callq	Fpoint_max_marker
	movq	%rax, -64(%rbp)
.LBB14_37:                              # %if.end.118
                                        #   in Loop: Header=BB14_28 Depth=1
	jmp	.LBB14_38
.LBB14_38:                              # %if.end.119
                                        #   in Loop: Header=BB14_28 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB14_43
# BB#39:                                # %land.lhs.true.121
                                        #   in Loop: Header=BB14_28 Depth=1
	testb	$1, -114(%rbp)
	je	.LBB14_43
# BB#40:                                # %if.then.124
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	cmpq	$1, %rdx
	movb	%cl, -305(%rbp)         # 1-byte Spill
	jne	.LBB14_42
# BB#41:                                # %land.rhs
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	16(%rcx), %rax
	sete	%dl
	movb	%dl, -305(%rbp)         # 1-byte Spill
.LBB14_42:                              # %land.end
                                        #   in Loop: Header=BB14_28 Depth=1
	movb	-305(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -113(%rbp)
.LBB14_43:                              # %if.end.131
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, instream
.LBB14_44:                              # %read_next
                                        #   Parent Loop BB14_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_46 Depth 3
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	readchar
	movl	%eax, -68(%rbp)
	cmpl	$59, -68(%rbp)
	jne	.LBB14_51
# BB#45:                                # %if.then.135
                                        #   in Loop: Header=BB14_44 Depth=2
	jmp	.LBB14_46
.LBB14_46:                              # %while.cond.136
                                        #   Parent Loop BB14_28 Depth=1
                                        #     Parent Loop BB14_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	readchar
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -68(%rbp)
	cmpl	$10, %eax
	movb	%dl, -306(%rbp)         # 1-byte Spill
	je	.LBB14_48
# BB#47:                                # %land.rhs.140
                                        #   in Loop: Header=BB14_46 Depth=3
	cmpl	$-1, -68(%rbp)
	setne	%al
	movb	%al, -306(%rbp)         # 1-byte Spill
.LBB14_48:                              # %land.end.143
                                        #   in Loop: Header=BB14_46 Depth=3
	movb	-306(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_49
	jmp	.LBB14_50
.LBB14_49:                              # %while.body.144
                                        #   in Loop: Header=BB14_46 Depth=3
	jmp	.LBB14_46
.LBB14_50:                              # %while.end
                                        #   in Loop: Header=BB14_44 Depth=2
	jmp	.LBB14_44
.LBB14_51:                              # %if.end.145
                                        #   in Loop: Header=BB14_44 Depth=2
	cmpl	$0, -68(%rbp)
	jge	.LBB14_53
# BB#52:                                # %if.then.148
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB14_98
.LBB14_53:                              # %if.end.151
                                        #   in Loop: Header=BB14_44 Depth=2
	cmpl	$32, -68(%rbp)
	je	.LBB14_59
# BB#54:                                # %lor.lhs.false.154
                                        #   in Loop: Header=BB14_44 Depth=2
	cmpl	$9, -68(%rbp)
	je	.LBB14_59
# BB#55:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB14_44 Depth=2
	cmpl	$10, -68(%rbp)
	je	.LBB14_59
# BB#56:                                # %lor.lhs.false.160
                                        #   in Loop: Header=BB14_44 Depth=2
	cmpl	$12, -68(%rbp)
	je	.LBB14_59
# BB#57:                                # %lor.lhs.false.163
                                        #   in Loop: Header=BB14_44 Depth=2
	cmpl	$13, -68(%rbp)
	je	.LBB14_59
# BB#58:                                # %lor.lhs.false.166
                                        #   in Loop: Header=BB14_44 Depth=2
	cmpl	$160, -68(%rbp)
	jne	.LBB14_60
.LBB14_59:                              # %if.then.169
                                        #   in Loop: Header=BB14_44 Depth=2
	jmp	.LBB14_44
.LBB14_60:                              # %if.end.170
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_63
# BB#61:                                # %land.lhs.true.174
                                        #   in Loop: Header=BB14_28 Depth=1
	cmpl	$40, -68(%rbp)
	jne	.LBB14_63
# BB#62:                                # %if.then.177
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	callq	read_list
	movq	%rax, -80(%rbp)
	jmp	.LBB14_86
.LBB14_63:                              # %if.else.179
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-8(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	unreadchar
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, read_objects
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_81
# BB#64:                                # %if.then.184
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	call1
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB14_65
	jmp	.LBB14_80
.LBB14_65:                              # %if.then.187
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB14_67
# BB#66:                                # %cond.true.191
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB14_71
.LBB14_67:                              # %cond.false.194
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_69
# BB#68:                                # %cond.true.198
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-144(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB14_70
.LBB14_69:                              # %cond.false.200
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-144(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB14_70:                              # %cond.end.203
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB14_71:                              # %cond.end.205
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jne	.LBB14_73
# BB#72:                                # %cond.true.209
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB14_77
.LBB14_73:                              # %cond.false.211
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_75
# BB#74:                                # %cond.true.215
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-144(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB14_76
.LBB14_75:                              # %cond.false.217
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-144(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB14_76:                              # %cond.end.220
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB14_77:                              # %cond.end.222
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_79
# BB#78:                                # %if.then.226
                                        #   in Loop: Header=BB14_28 Depth=1
	movb	$0, -97(%rbp)
.LBB14_79:                              # %if.end.227
                                        #   in Loop: Header=BB14_28 Depth=1
	jmp	.LBB14_80
.LBB14_80:                              # %if.end.228
                                        #   in Loop: Header=BB14_28 Depth=1
	jmp	.LBB14_85
.LBB14_81:                              # %if.else.229
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	globals+1320, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_83
# BB#82:                                # %if.then.233
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	globals+1320, %rdi
	movq	-8(%rbp), %rsi
	callq	call1
	movq	%rax, -80(%rbp)
	jmp	.LBB14_84
.LBB14_83:                              # %if.else.235
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	read_internal_start
	movq	%rax, -80(%rbp)
.LBB14_84:                              # %if.end.239
                                        #   in Loop: Header=BB14_28 Depth=1
	jmp	.LBB14_85
.LBB14_85:                              # %if.end.240
                                        #   in Loop: Header=BB14_28 Depth=1
	jmp	.LBB14_86
.LBB14_86:                              # %if.end.241
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_89
# BB#87:                                # %land.lhs.true.245
                                        #   in Loop: Header=BB14_28 Depth=1
	testb	$1, -97(%rbp)
	je	.LBB14_89
# BB#88:                                # %if.then.248
                                        #   in Loop: Header=BB14_28 Depth=1
	callq	Fpoint_marker
	movq	%rax, -56(%rbp)
.LBB14_89:                              # %if.end.250
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	-128(%rbp), %rsi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB14_91
# BB#90:                                # %if.then.256
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-80(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	readevalloop_eager_expand_eval
	movq	%rax, -80(%rbp)
	jmp	.LBB14_92
.LBB14_91:                              # %if.else.258
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-80(%rbp), %rdi
	callq	eval_sub
	movq	%rax, -80(%rbp)
.LBB14_92:                              # %if.end.260
                                        #   in Loop: Header=BB14_28 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB14_97
# BB#93:                                # %if.then.262
                                        #   in Loop: Header=BB14_28 Depth=1
	movq	-80(%rbp), %rdi
	movq	globals+2584, %rsi
	callq	Fcons
	movl	$901, %edi              # imm = 0x385
	movq	%rax, globals+2584
	movq	globals+2216, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_95
# BB#94:                                # %if.then.267
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprin1
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB14_96
.LBB14_95:                              # %if.else.270
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprint
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB14_96:                              # %if.end.273
                                        #   in Loop: Header=BB14_28 Depth=1
	jmp	.LBB14_97
.LBB14_97:                              # %if.end.274
                                        #   in Loop: Header=BB14_28 Depth=1
	movb	$0, -114(%rbp)
	jmp	.LBB14_28
.LBB14_98:                              # %while.end.275
	movb	$1, %al
	movq	-24(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movb	%al, -505(%rbp)         # 1-byte Spill
	jne	.LBB14_100
# BB#99:                                # %lor.rhs
	movb	-113(%rbp), %al
	movb	%al, -505(%rbp)         # 1-byte Spill
.LBB14_100:                             # %lor.end
	movb	-505(%rbp), %al         # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	build_load_history
	xorl	%edi, %edi
	movq	-88(%rbp), %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -528(%rbp)        # 8-byte Spill
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end14:
	.size	readevalloop, .Lfunc_end14-readevalloop
	.cfi_endproc

	.globl	Flocate_file_internal
	.align	16, 0x90
	.type	Flocate_file_internal,@function
Flocate_file_internal:                  # @Flocate_file_internal
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
	subq	$64, %rsp
	leaq	-40(%rbp), %rax
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %r8
	movq	%rax, %rcx
	callq	openp
	xorl	%edi, %edi
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jl	.LBB15_3
# BB#2:                                 # %if.then
	movl	-44(%rbp), %edi
	callq	emacs_close
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB15_3:                               # %if.end
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Flocate_file_internal, .Lfunc_end15-Flocate_file_internal
	.cfi_endproc

	.align	16, 0x90
	.type	complete_filename_p,@function
complete_filename_p:                    # @complete_filename_p
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movb	$1, %cl
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	$47, %edx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB16_5
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rdi
	callq	SCHARS
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	$2, %rax
	movb	%dl, -18(%rbp)          # 1-byte Spill
	jle	.LBB16_4
# BB#2:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	movb	%cl, -18(%rbp)          # 1-byte Spill
	jne	.LBB16_3
	jmp	.LBB16_4
.LBB16_3:                               # %land.rhs
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	movb	%dl, -18(%rbp)          # 1-byte Spill
.LBB16_4:                               # %land.end
	movb	-18(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB16_5:                               # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	complete_filename_p, .Lfunc_end16-complete_filename_p
	.cfi_endproc

	.globl	Feval_buffer
	.align	16, 0x90
	.type	Feval_buffer,@function
Feval_buffer:                           # @Feval_buffer
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_2
# BB#1:                                 # %if.then
	callq	Fcurrent_buffer
	movq	%rax, -64(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	Fget_buffer
	movq	%rax, -64(%rbp)
.LBB17_3:                               # %if.end
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_5
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	error
.LBB17_5:                               # %if.end.7
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_8
# BB#6:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_8
# BB#7:                                 # %if.then.12
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	jmp	.LBB17_9
.LBB17_8:                               # %if.else.14
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB17_9:                               # %if.end.15
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_11
# BB#10:                                # %if.then.18
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB17_11:                              # %if.end.20
	movl	$379, %edi              # imm = 0x17B
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi
	movq	globals+656, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$871, %edi              # imm = 0x367
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	-64(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB17_13
# BB#12:                                # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB17_17
.LBB17_13:                              # %cond.false
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_15
# BB#14:                                # %cond.true.31
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB17_16
.LBB17_15:                              # %cond.false.34
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB17_16:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB17_17:                              # %cond.end.38
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	temp_set_point
	movl	$614, %edi              # imm = 0x266
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	lisp_file_lexically_bound_p
	testb	$1, %al
	jne	.LBB17_18
	jmp	.LBB17_19
.LBB17_18:                              # %cond.true.42
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB17_20
.LBB17_19:                              # %cond.false.44
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB17_20:                              # %cond.end.46
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	movq	-32(%rbp), %r8
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movb	%cl, -193(%rbp)         # 1-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	%rsp, %rsi
	movq	%rax, 8(%rsi)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsi)
	movb	-193(%rbp), %cl         # 1-byte Reload
	movzbl	%cl, %edi
	andl	$1, %edi
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-176(%rbp), %r8         # 8-byte Reload
	movl	%edi, -220(%rbp)        # 4-byte Spill
	movq	%r8, %rdi
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	callq	readevalloop
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Feval_buffer, .Lfunc_end17-Feval_buffer
	.cfi_endproc

	.globl	Feval_region
	.align	16, 0x90
	.type	Feval_region,@function
Feval_region:                           # @Feval_region
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	callq	Fcurrent_buffer
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB18_3:                               # %if.end
	movl	$871, %edi              # imm = 0x367
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	movl	$379, %edi              # imm = 0x17B
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi
	movq	globals+656, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	Fcons
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-32(%rbp), %r9
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	%rsp, %r10
	movq	%r8, 8(%r10)
	movq	%rsi, (%r10)
	movb	-97(%rbp), %cl          # 1-byte Reload
	movzbl	%cl, %edi
	andl	$1, %edi
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	%edi, -104(%rbp)        # 4-byte Spill
	movq	%r8, %rdi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	readevalloop
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Feval_region, .Lfunc_end18-Feval_region
	.cfi_endproc

	.globl	Fread
	.align	16, 0x90
	.type	Fread,@function
Fread:                                  # @Fread
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	globals+2208, %rax
	movq	%rax, -16(%rbp)
.LBB19_2:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_4
# BB#3:                                 # %if.then.3
	movl	$790, %edi              # imm = 0x316
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB19_4:                               # %if.end.5
	movl	$790, %edi              # imm = 0x316
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_6
# BB#5:                                 # %if.then.8
	movabsq	$.L.str.19, %rdi
	callq	intern
	movabsq	$.L.str.20, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -8(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.end.12
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	read_internal_start
	movq	%rax, -8(%rbp)
.LBB19_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fread, .Lfunc_end19-Fread
	.cfi_endproc

	.align	16, 0x90
	.type	read_internal_start,@function
read_internal_start:                    # @read_internal_start
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, readchar_count
	movb	$0, new_backquote_flag
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, read_objects
	movq	globals+1976, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB20_2
# BB#1:                                 # %lor.lhs.false
	movq	globals+1976, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB20_3
.LBB20_2:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1968
.LBB20_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB20_6
# BB#4:                                 # %lor.lhs.false.6
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_10
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB20_6
	jmp	.LBB20_10
.LBB20_6:                               # %if.then.11
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB20_7
	jmp	.LBB20_8
.LBB20_7:                               # %if.then.13
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB20_9
.LBB20_8:                               # %if.else
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB20_9:                               # %if.end.16
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	SCHARS
	leaq	-40(%rbp), %r8
	leaq	-48(%rbp), %r9
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	validate_subarray
	movq	-40(%rbp), %rax
	movq	%rax, read_from_string_index
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, read_from_string_index_byte
	movq	-48(%rbp), %rax
	movq	%rax, read_from_string_limit
.LBB20_10:                              # %if.end.19
	movq	-8(%rbp), %rdi
	callq	read0
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -32(%rbp)
	movq	globals+1976, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_12
# BB#11:                                # %lor.lhs.false.24
	movq	globals+1976, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB20_13
.LBB20_12:                              # %if.then.27
	movq	globals+1968, %rdi
	callq	Fnreverse
	movq	%rax, globals+1968
.LBB20_13:                              # %if.end.29
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	read_internal_start, .Lfunc_end20-read_internal_start
	.cfi_endproc

	.globl	Fread_from_string
	.align	16, 0x90
	.type	Fread_from_string,@function
Fread_from_string:                      # @Fread_from_string
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	read_internal_start
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	read_from_string_index, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fcons
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fread_from_string, .Lfunc_end21-Fread_from_string
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	9221120237041090560     # double NaN
.LCPI22_1:
	.quad	9218868437227405312     # double +Inf
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_2:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI22_3:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.globl	string_to_number
	.align	16, 0x90
	.type	string_to_number,@function
string_to_number:                       # @string_to_number
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
	subq	$128, %rsp
	movb	%dl, %al
	movb	$1, %cl
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	andb	$1, %al
	movb	%al, -21(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movb	$0, -45(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	-40(%rbp), %rdi
	movsbl	(%rdi), %edx
	cmpl	$45, %edx
	sete	%al
	andb	$1, %al
	movb	%al, -57(%rbp)
	testb	$1, -57(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB22_2
# BB#1:                                 # %lor.rhs
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	sete	%dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB22_2:                               # %lor.end
	movb	-89(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -58(%rbp)
	movb	-58(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -40(%rbp)
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %edi
	movl	-20(%rbp), %esi
	callq	digit_to_number
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jl	.LBB22_7
# BB#3:                                 # %if.then
	movl	-28(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB22_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB22_4 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %edi
	movl	-20(%rbp), %esi
	callq	digit_to_number
	cmpl	$0, %eax
	jge	.LBB22_4
# BB#6:                                 # %do.end
	jmp	.LBB22_7
.LBB22_7:                               # %if.end
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB22_9
# BB#8:                                 # %if.then.20
	movl	-28(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
.LBB22_9:                               # %if.end.23
	cmpl	$10, -20(%rbp)
	jne	.LBB22_48
# BB#10:                                # %if.then.26
	movl	$48, %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB22_18
# BB#11:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB22_18
# BB#12:                                # %if.then.33
	movl	-28(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -28(%rbp)
.LBB22_13:                              # %do.body.35
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
# BB#14:                                # %do.cond.37
                                        #   in Loop: Header=BB22_13 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -90(%rbp)          # 1-byte Spill
	jg	.LBB22_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -90(%rbp)          # 1-byte Spill
.LBB22_16:                              # %land.end
                                        #   in Loop: Header=BB22_13 Depth=1
	movb	-90(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB22_13
# BB#17:                                # %do.end.44
	jmp	.LBB22_18
.LBB22_18:                              # %if.end.45
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$101, %ecx
	je	.LBB22_20
# BB#19:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$69, %ecx
	jne	.LBB22_45
.LBB22_20:                              # %if.then.52
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB22_22
# BB#21:                                # %lor.lhs.false.57
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB22_23
.LBB22_22:                              # %if.then.61
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB22_23:                              # %if.end.63
	movl	$48, %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB22_31
# BB#24:                                # %land.lhs.true.67
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB22_31
# BB#25:                                # %if.then.71
	movl	-28(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -28(%rbp)
.LBB22_26:                              # %do.body.73
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
# BB#27:                                # %do.cond.75
                                        #   in Loop: Header=BB22_26 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -91(%rbp)          # 1-byte Spill
	jg	.LBB22_29
# BB#28:                                # %land.rhs.79
                                        #   in Loop: Header=BB22_26 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -91(%rbp)          # 1-byte Spill
.LBB22_29:                              # %land.end.83
                                        #   in Loop: Header=BB22_26 Depth=1
	movb	-91(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB22_26
# BB#30:                                # %do.end.84
	jmp	.LBB22_44
.LBB22_31:                              # %if.else
	movq	-40(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB22_36
# BB#32:                                # %land.lhs.true.88
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$73, %ecx
	jne	.LBB22_36
# BB#33:                                # %land.lhs.true.93
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$78, %ecx
	jne	.LBB22_36
# BB#34:                                # %land.lhs.true.98
	movq	-40(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$70, %ecx
	jne	.LBB22_36
# BB#35:                                # %if.then.103
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB22_43
.LBB22_36:                              # %if.else.106
	movq	-40(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB22_41
# BB#37:                                # %land.lhs.true.111
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$78, %ecx
	jne	.LBB22_41
# BB#38:                                # %land.lhs.true.116
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB22_41
# BB#39:                                # %land.lhs.true.121
	movq	-40(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$78, %ecx
	jne	.LBB22_41
# BB#40:                                # %if.then.126
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB22_42
.LBB22_41:                              # %if.else.129
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB22_42:                              # %if.end.130
	jmp	.LBB22_43
.LBB22_43:                              # %if.end.131
	jmp	.LBB22_44
.LBB22_44:                              # %if.end.132
	jmp	.LBB22_45
.LBB22_45:                              # %if.end.133
	movb	$1, %al
	movl	-28(%rbp), %ecx
	andl	$6, %ecx
	cmpl	$6, %ecx
	movb	%al, -92(%rbp)          # 1-byte Spill
	je	.LBB22_47
# BB#46:                                # %lor.rhs.136
	cmpl	$17, -28(%rbp)
	sete	%al
	movb	%al, -92(%rbp)          # 1-byte Spill
.LBB22_47:                              # %lor.end.139
	movb	-92(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -45(%rbp)
.LBB22_48:                              # %if.end.141
	testb	$1, -21(%rbp)
	je	.LBB22_51
# BB#49:                                # %cond.true
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB22_55
# BB#50:                                # %lor.lhs.false.147
	testb	$1, -45(%rbp)
	jne	.LBB22_55
	jmp	.LBB22_54
.LBB22_51:                              # %cond.false
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB22_54
# BB#52:                                # %land.lhs.true.151
	movl	-28(%rbp), %eax
	andl	$-3, %eax
	cmpl	$1, %eax
	je	.LBB22_55
# BB#53:                                # %lor.lhs.false.155
	testb	$1, -45(%rbp)
	jne	.LBB22_55
.LBB22_54:                              # %if.then.158
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_80
.LBB22_55:                              # %if.end.160
	cmpl	$0, -44(%rbp)
	jl	.LBB22_74
# BB#56:                                # %land.lhs.true.163
	testb	$1, -45(%rbp)
	jne	.LBB22_74
# BB#57:                                # %if.then.165
	movb	-58(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movsbl	(%rsi,%rdx), %edi
	movl	-20(%rbp), %esi
	callq	digit_to_number
	cmpl	$0, %eax
	jge	.LBB22_62
# BB#58:                                # %if.then.173
	testb	$1, -57(%rbp)
	je	.LBB22_60
# BB#59:                                # %cond.true.176
	xorl	%eax, %eax
	subl	-44(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB22_61
.LBB22_60:                              # %cond.false.177
	movl	-44(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB22_61:                              # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB22_80
.LBB22_62:                              # %if.end.180
	callq	__errno_location
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movb	-58(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	strtoumax
	movq	%rax, -80(%rbp)
	callq	__errno_location
	cmpl	$34, (%rax)
	jne	.LBB22_66
# BB#63:                                # %if.then.190
	cmpl	$10, -20(%rbp)
	je	.LBB22_65
# BB#64:                                # %if.then.193
	movl	$728, %edi              # imm = 0x2D8
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.LBB22_65:                              # %if.end.196
	jmp	.LBB22_73
.LBB22_66:                              # %if.else.197
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movabsq	$2305843009213693952, %rcx # imm = 0x2000000000000000
	movq	-80(%rbp), %rdx
	movb	-57(%rbp), %sil
	testb	$1, %sil
	cmovneq	%rcx, %rax
	cmpq	%rax, %rdx
	ja	.LBB22_71
# BB#67:                                # %if.then.203
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	testb	$1, -57(%rbp)
	je	.LBB22_69
# BB#68:                                # %cond.true.206
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-88(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB22_70
.LBB22_69:                              # %cond.false.208
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB22_70:                              # %cond.end.209
	movq	-112(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_80
.LBB22_71:                              # %if.else.213
	movaps	.LCPI22_2(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI22_3(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
# BB#72:                                # %if.end.215
	jmp	.LBB22_73
.LBB22_73:                              # %if.end.216
	jmp	.LBB22_74
.LBB22_74:                              # %if.end.217
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB22_76
	jp	.LBB22_76
# BB#75:                                # %if.then.219
	movq	-16(%rbp), %rax
	movb	-58(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movq	%rax, %rdi
	callq	atof
	movsd	%xmm0, -56(%rbp)
.LBB22_76:                              # %if.end.225
	testb	$1, -57(%rbp)
	je	.LBB22_78
# BB#77:                                # %cond.true.228
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB22_79
.LBB22_78:                              # %cond.false.230
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB22_79:                              # %cond.end.231
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	make_float
	movq	%rax, -8(%rbp)
.LBB22_80:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	string_to_number, .Lfunc_end22-string_to_number
	.cfi_endproc

	.align	16, 0x90
	.type	digit_to_number,@function
digit_to_number:                        # @digit_to_number
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
	movl	$48, %eax
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	-8(%rbp), %eax
	jg	.LBB23_3
# BB#1:                                 # %land.lhs.true
	cmpl	$57, -8(%rbp)
	jg	.LBB23_3
# BB#2:                                 # %if.then
	movl	-8(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_12
.LBB23_3:                               # %if.else
	movl	$97, %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB23_6
# BB#4:                                 # %land.lhs.true.3
	cmpl	$122, -8(%rbp)
	jg	.LBB23_6
# BB#5:                                 # %if.then.5
	movl	-8(%rbp), %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_11
.LBB23_6:                               # %if.else.7
	movl	$65, %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB23_9
# BB#7:                                 # %land.lhs.true.9
	cmpl	$90, -8(%rbp)
	jg	.LBB23_9
# BB#8:                                 # %if.then.11
	movl	-8(%rbp), %eax
	subl	$65, %eax
	addl	$10, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_10
.LBB23_9:                               # %if.else.14
	movl	$-2, -4(%rbp)
	jmp	.LBB23_16
.LBB23_10:                              # %if.end
	jmp	.LBB23_11
.LBB23_11:                              # %if.end.15
	jmp	.LBB23_12
.LBB23_12:                              # %if.end.16
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB23_14
# BB#13:                                # %cond.true
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB23_15
.LBB23_14:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB23_15
.LBB23_15:                              # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB23_16:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	digit_to_number, .Lfunc_end23-digit_to_number
	.cfi_endproc

	.globl	check_obarray
	.align	16, 0x90
	.type	check_obarray,@function
check_obarray:                          # @check_obarray
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, fatal_error_in_progress
	jne	.LBB24_6
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB24_2
	jmp	.LBB24_3
.LBB24_2:                               # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	ASIZE
	cmpq	$0, %rax
	jne	.LBB24_6
.LBB24_3:                               # %if.then
	movq	globals+1656, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB24_5
# BB#4:                                 # %if.then.3
	movq	initial_obarray, %rax
	movq	%rax, globals+1656
.LBB24_5:                               # %if.end
	movl	$996, %edi              # imm = 0x3E4
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB24_6:                               # %if.end.5
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	check_obarray, .Lfunc_end24-check_obarray
	.cfi_endproc

	.globl	intern_driver
	.align	16, 0x90
	.type	intern_driver,@function
intern_driver:                          # @intern_driver
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fmake_symbol
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	intern_sym
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	intern_driver, .Lfunc_end25-intern_driver
	.cfi_endproc

	.align	16, 0x90
	.type	intern_sym,@function
intern_sym:                             # @intern_sym
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
	subq	$48, %rsp
	movl	$1, %eax
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	initial_obarray, %rdx
	cmovel	%ecx, %eax
	movq	-8(%rbp), %rdx
	subq	$0, %rdx
	movw	%ax, %r8w
	movw	lispsym(,%rdx), %r9w
	andw	$3, %r8w
	shlw	$6, %r8w
	andw	$-193, %r9w
	orw	%r8w, %r9w
	movw	%r9w, lispsym(,%rdx)
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$58, %ecx
	jne	.LBB26_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	initial_obarray, %rax
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-49, %cx
	orw	$16, %cx
	movw	%cx, lispsym(,%rax)
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-15, %cx
	orw	$8, %cx
	movw	%cx, lispsym(,%rax)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	$0, %rdx
	movq	%rax, lispsym+16(,%rdx)
.LBB26_3:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	aref_addr
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	jne	.LBB26_5
# BB#4:                                 # %cond.true
	movabsq	$lispsym, %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB26_6
.LBB26_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB26_6
.LBB26_6:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_symbol_next
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	intern_sym, .Lfunc_end26-intern_sym
	.cfi_endproc

	.globl	intern_1
	.align	16, 0x90
	.type	intern_1,@function
intern_1:                               # @intern_1
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
	movq	globals+1656, %rdi
	callq	check_obarray
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	oblookup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$0, %r8d
	jne	.LBB27_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB27_3
.LBB27_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_unibyte_string
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	intern_driver
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB27_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	intern_1, .Lfunc_end27-intern_1
	.cfi_endproc

	.globl	oblookup
	.align	16, 0x90
	.type	oblookup,@function
oblookup:                               # @oblookup
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_obarray
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gc_asize
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	hash_string
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divq	-56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	AREF
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, oblookup_last_bucket_number
	cmpq	$2, -72(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_16
.LBB28_2:                               # %if.else
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB28_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	error
.LBB28_4:                               # %if.else.7
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB28_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	cmpq	-40(%rbp), %rax
	jne	.LBB28_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	-64(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SCHARS
	cmpq	-32(%rbp), %rax
	jne	.LBB28_9
# BB#7:                                 # %land.lhs.true.16
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	-64(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB28_9
# BB#8:                                 # %if.then.20
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_17
.LBB28_9:                               # %if.else.21
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$0, %rax
	cmpq	$0, lispsym+40(,%rax)
	jne	.LBB28_11
# BB#10:                                # %if.then.24
	jmp	.LBB28_14
.LBB28_11:                              # %if.end
                                        #   in Loop: Header=BB28_5 Depth=1
	jmp	.LBB28_12
.LBB28_12:                              # %if.end.25
                                        #   in Loop: Header=BB28_5 Depth=1
	jmp	.LBB28_13
.LBB28_13:                              # %for.inc
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+40(,%rax), %rdi
	callq	make_lisp_symbol
	movq	%rax, -64(%rbp)
	jmp	.LBB28_5
.LBB28_14:                              # %for.end
	jmp	.LBB28_15
.LBB28_15:                              # %if.end.30
	jmp	.LBB28_16
.LBB28_16:                              # %if.end.31
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB28_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	oblookup, .Lfunc_end28-oblookup
	.cfi_endproc

	.globl	intern_c_string_1
	.align	16, 0x90
	.type	intern_c_string_1,@function
intern_c_string_1:                      # @intern_c_string_1
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
	movq	%rsi, -16(%rbp)
	movq	globals+1656, %rdi
	callq	check_obarray
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	oblookup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$0, %r8d
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_pure_c_string
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	intern_driver
	movq	%rax, -32(%rbp)
.LBB29_2:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	intern_c_string_1, .Lfunc_end29-intern_c_string_1
	.cfi_endproc

	.globl	Fintern
	.align	16, 0x90
	.type	Fintern,@function
Fintern:                                # @Fintern
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
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB30_2
# BB#1:                                 # %cond.true
	movq	globals+1656, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB30_3
.LBB30_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB30_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	check_obarray
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	oblookup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$0, %r8d
	je	.LBB30_8
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_6
# BB#5:                                 # %cond.true.11
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB30_7
.LBB30_6:                               # %cond.false.12
	movq	-8(%rbp), %rdi
	callq	Fpurecopy
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB30_7:                               # %cond.end.14
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	intern_driver
	movq	%rax, -24(%rbp)
.LBB30_8:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fintern, .Lfunc_end30-Fintern
	.cfi_endproc

	.globl	Fintern_soft
	.align	16, 0x90
	.type	Fintern_soft,@function
Fintern_soft:                           # @Fintern_soft
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	globals+1656, %rax
	movq	%rax, -24(%rbp)
.LBB31_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	check_obarray
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB31_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	jmp	.LBB31_5
.LBB31_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -40(%rbp)
.LBB31_5:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-40(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-40(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	oblookup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	je	.LBB31_8
# BB#6:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB31_9
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB31_9
.LBB31_8:                               # %if.then.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_10
.LBB31_9:                               # %if.else.24
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fintern_soft, .Lfunc_end31-Fintern_soft
	.cfi_endproc

	.globl	Funintern
	.align	16, 0x90
	.type	Funintern,@function
Funintern:                              # @Funintern
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movq	globals+1656, %rax
	movq	%rax, -24(%rbp)
.LBB32_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	check_obarray
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -32(%rbp)
	jmp	.LBB32_5
.LBB32_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
.LBB32_5:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-32(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	oblookup
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB32_7
# BB#6:                                 # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB32_23
.LBB32_7:                               # %if.end.18
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_10
# BB#8:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB32_10
# BB#9:                                 # %if.then.25
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB32_23
.LBB32_10:                              # %if.end.27
	movq	-40(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-193, %cx
	movw	%cx, lispsym(,%rax)
	movq	oblookup_last_bucket_number, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	AREF
	cmpq	-40(%rbp), %rax
	jne	.LBB32_15
# BB#11:                                # %if.then.31
	movq	-40(%rbp), %rax
	subq	$0, %rax
	cmpq	$0, lispsym+40(,%rax)
	je	.LBB32_13
# BB#12:                                # %if.then.34
	movq	-40(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+40(,%rax), %rdi
	callq	make_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	ASET
	jmp	.LBB32_14
.LBB32_13:                              # %if.else.39
	movl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	ASET
.LBB32_14:                              # %if.end.40
	jmp	.LBB32_22
.LBB32_15:                              # %if.else.41
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	AREF
	movq	%rax, -64(%rbp)
.LBB32_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	subq	$0, %rax
	cmpq	$0, lispsym+40(,%rax)
	je	.LBB32_21
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB32_16 Depth=1
	movq	-64(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+40(,%rax), %rdi
	callq	make_lisp_symbol
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB32_19
# BB#18:                                # %if.then.53
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+40(,%rax), %rsi
	callq	set_symbol_next
	jmp	.LBB32_21
.LBB32_19:                              # %if.end.57
                                        #   in Loop: Header=BB32_16 Depth=1
	jmp	.LBB32_20
.LBB32_20:                              # %for.inc
                                        #   in Loop: Header=BB32_16 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB32_16
.LBB32_21:                              # %for.end
	jmp	.LBB32_22
.LBB32_22:                              # %if.end.58
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB32_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Funintern, .Lfunc_end32-Funintern
	.cfi_endproc

	.globl	map_obarray
	.align	16, 0x90
	.type	map_obarray,@function
map_obarray:                            # @map_obarray
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-8(%rbp), %rdi
	callq	ASIZE
	subq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_4 Depth 2
	cmpq	$0, -32(%rbp)
	jl	.LBB33_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	AREF
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB33_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_4
.LBB33_4:                               # %while.body
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	-40(%rbp), %rax
	subq	$0, %rax
	cmpq	$0, lispsym+40(,%rax)
	jne	.LBB33_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_7
.LBB33_6:                               # %if.end
                                        #   in Loop: Header=BB33_4 Depth=2
	movq	-40(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+40(,%rax), %rdi
	callq	make_lisp_symbol
	movq	%rax, -40(%rbp)
	jmp	.LBB33_4
.LBB33_7:                               # %while.end
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.12
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_9
.LBB33_9:                               # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB33_1
.LBB33_10:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	map_obarray, .Lfunc_end33-map_obarray
	.cfi_endproc

	.globl	Fmapatoms
	.align	16, 0x90
	.type	Fmapatoms,@function
Fmapatoms:                              # @Fmapatoms
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
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movq	globals+1656, %rax
	movq	%rax, -16(%rbp)
.LBB34_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	check_obarray
	movabsq	$mapatoms_1, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	map_obarray
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fmapatoms, .Lfunc_end34-Fmapatoms
	.cfi_endproc

	.align	16, 0x90
	.type	mapatoms_1,@function
mapatoms_1:                             # @mapatoms_1
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	call1
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	mapatoms_1, .Lfunc_end35-mapatoms_1
	.cfi_endproc

	.globl	init_obarray
	.align	16, 0x90
	.type	init_obarray,@function
init_obarray:                           # @init_obarray
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
	subq	$48, %rsp
	movl	$1511, %eax             # imm = 0x5E7
	movl	%eax, %edi
	movq	$105, -16(%rbp)
	callq	make_natnum
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fmake_vector
	movabsq	$initial_obarray, %rdi
	movq	%rax, globals+1656
	movq	globals+1656, %rax
	movq	%rax, initial_obarray
	callq	staticpro
	movl	$0, -20(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$1074, %rax             # imm = 0x432
	jae	.LBB36_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-20(%rbp), %edi
	callq	builtin_lisp_symbol
	movslq	-20(%rbp), %rcx
	movq	defsym_name(,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	define_symbol
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB36_1
.LBB36_4:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	subq	$0, %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, lispsym+16(,%rax)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	subq	$0, %rax
	movw	lispsym(,%rax), %dx
	andw	$-49, %dx
	orw	$16, %dx
	movw	%dx, lispsym(,%rax)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	subq	$0, %rax
	movw	lispsym(,%rax), %dx
	andw	$-257, %dx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %dx               # imm = 0x100
	movw	%dx, lispsym(,%rax)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	subq	$0, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, lispsym+16(,%rax)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	subq	$0, %rax
	movw	lispsym(,%rax), %dx
	andw	$-49, %dx
	orw	$16, %dx
	movw	%dx, lispsym(,%rax)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	subq	$0, %rax
	movw	lispsym(,%rax), %dx
	andw	$-257, %dx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %dx               # imm = 0x100
	movw	%dx, lispsym(,%rax)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1920
	movq	-16(%rbp), %rdi
	callq	xmalloc
	movq	%rax, read_buffer
	movq	-16(%rbp), %rax
	movq	%rax, read_buffer_size
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	init_obarray, .Lfunc_end36-init_obarray
	.cfi_endproc

	.align	16, 0x90
	.type	define_symbol,@function
define_symbol:                          # @define_symbol
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	make_pure_c_string
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	init_symbol
	movl	$957, %edi              # imm = 0x3BD
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB37_2
# BB#1:                                 # %if.then
	movq	initial_obarray, %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	oblookup
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	initial_obarray, %rsi
	movq	-40(%rbp), %rdx
	callq	intern_sym
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB37_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	define_symbol, .Lfunc_end37-define_symbol
	.cfi_endproc

	.globl	defsubr
	.align	16, 0x90
	.type	defsubr,@function
defsubr:                                # @defsubr
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	intern_c_string
	movl	$5, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$4611686018595160064, %rdi # imm = 0x400000000A000000
	orq	(%rax), %rdi
	movq	%rdi, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_symbol_function
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	defsubr, .Lfunc_end38-defsubr
	.cfi_endproc

	.globl	defvar_int
	.align	16, 0x90
	.type	defvar_int,@function
defvar_int:                             # @defvar_int
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	intern_c_string
	movabsq	$lispsym, %rdx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %cx               # imm = 0x100
	movw	%cx, lispsym(,%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-15, %cx
	orw	$6, %cx
	movw	%cx, lispsym(,%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	SET_SYMBOL_FWD
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	defvar_int, .Lfunc_end39-defvar_int
	.cfi_endproc

	.globl	defvar_bool
	.align	16, 0x90
	.type	defvar_bool,@function
defvar_bool:                            # @defvar_bool
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	intern_c_string
	movabsq	$lispsym, %rdx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %cx               # imm = 0x100
	movw	%cx, lispsym(,%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-15, %cx
	orw	$6, %cx
	movw	%cx, lispsym(,%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	SET_SYMBOL_FWD
	movq	-32(%rbp), %rdi
	movq	globals+160, %rsi
	callq	Fcons
	movq	%rax, globals+160
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	defvar_bool, .Lfunc_end40-defvar_bool
	.cfi_endproc

	.globl	defvar_lisp_nopro
	.align	16, 0x90
	.type	defvar_lisp_nopro,@function
defvar_lisp_nopro:                      # @defvar_lisp_nopro
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	intern_c_string
	movabsq	$lispsym, %rdx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %cx               # imm = 0x100
	movw	%cx, lispsym(,%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-15, %cx
	orw	$6, %cx
	movw	%cx, lispsym(,%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	SET_SYMBOL_FWD
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	defvar_lisp_nopro, .Lfunc_end41-defvar_lisp_nopro
	.cfi_endproc

	.globl	defvar_lisp
	.align	16, 0x90
	.type	defvar_lisp,@function
defvar_lisp:                            # @defvar_lisp
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	defvar_lisp_nopro
	movq	-24(%rbp), %rdi
	callq	staticpro
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	defvar_lisp, .Lfunc_end42-defvar_lisp
	.cfi_endproc

	.globl	defvar_kboard
	.align	16, 0x90
	.type	defvar_kboard,@function
defvar_kboard:                          # @defvar_kboard
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	intern_c_string
	movabsq	$lispsym, %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %cx               # imm = 0x100
	movw	%cx, lispsym(,%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-15, %cx
	orw	$6, %cx
	movw	%cx, lispsym(,%rax)
	movq	-32(%rbp), %rax
	subq	$0, %rax
	addq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	SET_SYMBOL_FWD
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	defvar_kboard, .Lfunc_end43-defvar_kboard
	.cfi_endproc

	.globl	init_lread
	.align	16, 0x90
	.type	init_lread,@function
init_lread:                             # @init_lread
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
	subq	$128, %rsp
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -1(%rbp)
	testb	$1, -1(%rbp)
	je	.LBB44_16
# BB#1:                                 # %land.lhs.true
	movabsq	$.L.str.22, %rdi
	callq	egetenv
	cmpq	$0, %rax
	je	.LBB44_16
# BB#2:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	decode_env_path
	movq	%rax, globals+1312
	movq	globals+1312, %rdi
	callq	load_path_check
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	globals+1312, %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB44_15
# BB#3:                                 # %if.then.8
	movq	globals+1312, %rax
	movq	%rax, -24(%rbp)
	callq	load_path_default
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	load_path_check
	testb	$1, no_site_lisp
	jne	.LBB44_8
# BB#4:                                 # %land.lhs.true.11
	movsbl	.L.str.23, %eax
	cmpl	$0, %eax
	je	.LBB44_8
# BB#5:                                 # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.23, %rsi
	xorl	%edx, %edx
	callq	decode_env_path
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB44_7
# BB#6:                                 # %if.then.19
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	nconc2
	movq	%rax, -32(%rbp)
.LBB44_7:                               # %if.end
	jmp	.LBB44_8
.LBB44_8:                               # %if.end.21
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1312
.LBB44_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_14
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB44_9 Depth=1
	xorl	%edi, %edi
	leaq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	globals+1312, %rcx
	movq	%rcx, -56(%rbp)
	addq	$8, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB44_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB44_9 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB44_13
.LBB44_12:                              # %cond.false
                                        #   in Loop: Header=BB44_9 Depth=1
	movq	-16(%rbp), %rdi
	callq	list1
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB44_13:                              # %cond.end
                                        #   in Loop: Header=BB44_9 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edi
	leaq	-56(%rbp), %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	callq	Fappend
	movq	%rax, globals+1312
	jmp	.LBB44_9
.LBB44_14:                              # %while.end
	jmp	.LBB44_15
.LBB44_15:                              # %if.end.32
	jmp	.LBB44_23
.LBB44_16:                              # %if.else
	callq	load_path_default
	movq	%rax, globals+1312
	movq	globals+1312, %rdi
	callq	load_path_check
	testb	$1, initialized
	je	.LBB44_22
# BB#17:                                # %land.lhs.true.36
	testb	$1, no_site_lisp
	jne	.LBB44_22
# BB#18:                                # %land.lhs.true.38
	movsbl	.L.str.23, %eax
	cmpl	$0, %eax
	je	.LBB44_22
# BB#19:                                # %if.then.42
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.23, %rsi
	xorl	%edx, %edx
	callq	decode_env_path
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB44_21
# BB#20:                                # %if.then.48
	movq	-64(%rbp), %rdi
	movq	globals+1312, %rsi
	callq	nconc2
	movq	%rax, globals+1312
.LBB44_21:                              # %if.end.50
	jmp	.LBB44_22
.LBB44_22:                              # %if.end.51
	jmp	.LBB44_23
.LBB44_23:                              # %if.end.52
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+2584
	movb	$0, globals+3406
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, globals+1288
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+2208
	callq	builtin_lisp_symbol
	movq	%rax, Vloads_in_progress
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	init_lread, .Lfunc_end44-init_lread
	.cfi_endproc

	.align	16, 0x90
	.type	load_path_check,@function
load_path_check:                        # @load_path_check
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB45_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_2
	jmp	.LBB45_8
.LBB45_2:                               # %for.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	Fcar
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB45_3
	jmp	.LBB45_6
.LBB45_3:                               # %if.then
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	Fdirectory_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	file_accessible_directory_p
	testb	$1, %al
	jne	.LBB45_5
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB45_1 Depth=1
	movabsq	$.L.str.1185, %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	dir_warning
.LBB45_5:                               # %if.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_6
.LBB45_6:                               # %if.end.6
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_7
.LBB45_7:                               # %for.inc
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB45_1
.LBB45_8:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	load_path_check, .Lfunc_end45-load_path_check
	.cfi_endproc

	.align	16, 0x90
	.type	load_path_default,@function
load_path_default:                      # @load_path_default
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
	subq	$144, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	globals+1920, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.65, %rcx
	movabsq	$.L.str.1186, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	testb	$1, initialized
	je	.LBB46_28
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	callq	decode_env_path
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	globals+1160, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_27
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.1187, %rdi
	callq	build_string
	movq	globals+1160, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Ffile_accessible_directory_p
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_6
# BB#3:                                 # %if.then.11
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB46_5
# BB#4:                                 # %if.then.15
	movq	-24(%rbp), %rdi
	callq	list1
	movq	%rax, -8(%rbp)
.LBB46_5:                               # %if.end
	jmp	.LBB46_7
.LBB46_6:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.65, %rsi
	xorl	%edx, %edx
	callq	decode_env_path
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	nconc2
	movq	%rax, -8(%rbp)
.LBB46_7:                               # %if.end.19
	testb	$1, no_site_lisp
	jne	.LBB46_13
# BB#8:                                 # %if.then.21
	movabsq	$.L.str.1188, %rdi
	callq	build_string
	movq	globals+1160, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Ffile_accessible_directory_p
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_12
# BB#9:                                 # %if.then.27
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB46_11
# BB#10:                                # %if.then.31
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB46_11:                              # %if.end.33
	jmp	.LBB46_12
.LBB46_12:                              # %if.end.34
	jmp	.LBB46_13
.LBB46_13:                              # %if.end.35
	movq	globals+1160, %rdi
	movq	globals+2184, %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB46_26
# BB#14:                                # %if.then.39
	movabsq	$.L.str.1189, %rdi
	callq	build_string
	movq	globals+1160, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Ffile_exists_p
	movabsq	$.L.str.1190, %rdi
	movq	%rax, -32(%rbp)
	callq	build_string
	movq	globals+1160, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_25
# BB#15:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_25
# BB#16:                                # %if.then.50
	movabsq	$.L.str.1187, %rdi
	callq	build_string
	movq	globals+2184, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB46_18
# BB#17:                                # %if.then.56
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB46_18:                              # %if.end.58
	testb	$1, no_site_lisp
	jne	.LBB46_24
# BB#19:                                # %if.then.60
	movabsq	$.L.str.1188, %rdi
	callq	build_string
	movq	globals+2184, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Ffile_accessible_directory_p
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_23
# BB#20:                                # %if.then.66
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB46_22
# BB#21:                                # %if.then.70
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB46_22:                              # %if.end.72
	jmp	.LBB46_23
.LBB46_23:                              # %if.end.73
	jmp	.LBB46_24
.LBB46_24:                              # %if.end.74
	jmp	.LBB46_25
.LBB46_25:                              # %if.end.75
	jmp	.LBB46_26
.LBB46_26:                              # %if.end.76
	jmp	.LBB46_27
.LBB46_27:                              # %if.end.77
	jmp	.LBB46_29
.LBB46_28:                              # %if.else.78
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	callq	decode_env_path
	movq	%rax, -8(%rbp)
.LBB46_29:                              # %if.end.80
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	load_path_default, .Lfunc_end46-load_path_default
	.cfi_endproc

	.globl	dir_warning
	.align	16, 0x90
	.type	dir_warning,@function
dir_warning:                            # @dir_warning
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	xorl	%edi, %edi
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	stderr, %rax
	movq	-8(%rbp), %rdx
	movq	globals+1344, %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB47_2
# BB#1:                                 # %cond.true
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	globals+1344, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB47_3
.LBB47_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB47_3:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	SSDATA
	movl	-20(%rbp), %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	strerror
	movabsq	$dir_warning.format, %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	testb	$1, initialized
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB47_12
# BB#4:                                 # %if.then
	movl	-20(%rbp), %edi
	callq	emacs_strerror
	movq	%rax, -32(%rbp)
	movq	$16384, -40(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -48(%rbp)
	movb	$0, -49(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$16, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-128(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-136(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	cmpq	-40(%rbp), %rdi
	ja	.LBB47_6
# BB#5:                                 # %cond.true.14
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-144(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-152(%rbp), %rdi        # 8-byte Reload
	leaq	16(%rax,%rdi), %rax
	movq	-40(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-160(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-168(%rbp), %rdi        # 8-byte Reload
	leaq	31(%rax,%rdi), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	jmp	.LBB47_7
.LBB47_6:                               # %cond.false.27
	movb	$1, -49(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$16, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-184(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-192(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB47_7:                               # %cond.end.35
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	SSDATA
	movabsq	$dir_warning.format, %rsi
	movq	-32(%rbp), %r8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	esprintf
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	xorl	%r9d, %r9d
	movzbl	%al, %r10d
	andl	$1, %r10d
	xorl	%edx, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movl	%r10d, %ecx
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	callq	message_dolog
# BB#8:                                 # %do.body
	testb	$1, -49(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.41
	xorl	%edi, %edi
	movb	$0, -49(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB47_10:                              # %if.end
	jmp	.LBB47_11
.LBB47_11:                              # %do.end
	jmp	.LBB47_12
.LBB47_12:                              # %if.end.44
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	dir_warning, .Lfunc_end47-dir_warning
	.cfi_endproc

	.globl	syms_of_lread
	.align	16, 0x90
	.type	syms_of_lread,@function
syms_of_lread:                          # @syms_of_lread
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
	movabsq	$Sread, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_from_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sintern, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sintern_soft, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sunintern, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_load_suffixes, %rdi
	callq	defsubr
	movabsq	$Sload, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Seval_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Seval_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_char_exclusive, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_event, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_file_char, %rdi
	callq	defsubr
	movabsq	$Smapatoms, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slocate_file_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_lread.o_fwd, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$globals, %rax
	addq	$1656, %rax             # imm = 0x678
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	jmp	.LBB48_3
.LBB48_3:                               # %do.body.1
	movabsq	$syms_of_lread.o_fwd.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$globals, %rax
	addq	$2584, %rax             # imm = 0xA18
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	movabsq	$.L.str.26, %rdi
	callq	intern
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	movw	%cx, lispsym(,%rax)
# BB#5:                                 # %do.body.3
	movabsq	$syms_of_lread.o_fwd.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$globals, %rax
	addq	$2208, %rax             # imm = 0x8A0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.4
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+2208
# BB#7:                                 # %do.body.6
	movabsq	$syms_of_lread.o_fwd.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$globals, %rax
	addq	$1976, %rax             # imm = 0x7B8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.7
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1976
# BB#9:                                 # %do.body.9
	movabsq	$syms_of_lread.o_fwd.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$globals, %rax
	addq	$1968, %rax             # imm = 0x7B0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1968
# BB#11:                                # %do.body.12
	movabsq	$syms_of_lread.o_fwd.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$globals, %rax
	addq	$1944, %rax             # imm = 0x798
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.13
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1944
# BB#13:                                # %do.body.15
	movabsq	$syms_of_lread.o_fwd.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$1312, %rax             # imm = 0x520
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.16
	jmp	.LBB48_15
.LBB48_15:                              # %do.body.17
	movabsq	$syms_of_lread.o_fwd.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$globals, %rax
	addq	$1336, %rax             # imm = 0x538
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.18
	movabsq	$.L.str.3, %rdi
	callq	build_pure_c_string
	movabsq	$.L.str.2, %rdi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	build_pure_c_string
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, globals+1336
# BB#17:                                # %do.body.22
	movabsq	$syms_of_lread.o_fwd.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$globals, %rax
	addq	$1576, %rax             # imm = 0x628
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.23
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1576
# BB#19:                                # %do.body.25
	movabsq	$syms_of_lread.o_fwd.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$globals, %rax
	addq	$1296, %rax             # imm = 0x510
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#20:                                # %do.end.26
	movq	empty_unibyte_string, %rdi
	callq	list1
	movq	%rax, globals+1296
# BB#21:                                # %do.body.28
	movabsq	$syms_of_lread.b_fwd, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$globals, %rax
	addq	$3406, %rax             # imm = 0xD4E
	movq	%rax, %rdx
	callq	defvar_bool
# BB#22:                                # %do.end.29
	jmp	.LBB48_23
.LBB48_23:                              # %do.body.30
	movabsq	$syms_of_lread.o_fwd.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$globals, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#24:                                # %do.end.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+24
# BB#25:                                # %do.body.33
	movabsq	$syms_of_lread.o_fwd.46, %rdi
	movabsq	$.L.str.47, %rsi
	movabsq	$globals, %rax
	addq	$1304, %rax             # imm = 0x518
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#26:                                # %do.end.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1304
# BB#27:                                # %do.body.36
	movabsq	$syms_of_lread.o_fwd.48, %rdi
	movabsq	$.L.str.49, %rsi
	movabsq	$globals, %rax
	addq	$1288, %rax             # imm = 0x508
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#28:                                # %do.end.37
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1288
# BB#29:                                # %do.body.39
	movabsq	$syms_of_lread.o_fwd.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$globals, %rax
	addq	$2560, %rax             # imm = 0xA00
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#30:                                # %do.end.40
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2560
# BB#31:                                # %do.body.42
	movabsq	$syms_of_lread.o_fwd.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$globals, %rax
	addq	$392, %rax              # imm = 0x188
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#32:                                # %do.end.43
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+392
# BB#33:                                # %do.body.45
	movabsq	$syms_of_lread.o_fwd.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$globals, %rax
	addq	$1320, %rax             # imm = 0x528
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#34:                                # %do.end.46
	movl	$789, %edi              # imm = 0x315
	callq	builtin_lisp_symbol
	movq	%rax, globals+1320
# BB#35:                                # %do.body.48
	movabsq	$syms_of_lread.o_fwd.56, %rdi
	movabsq	$.L.str.57, %rsi
	movabsq	$globals, %rax
	addq	$1328, %rax             # imm = 0x530
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#36:                                # %do.end.49
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1328
# BB#37:                                # %do.body.51
	movabsq	$syms_of_lread.b_fwd.58, %rdi
	movabsq	$.L.str.59, %rsi
	movabsq	$globals, %rax
	addq	$3405, %rax             # imm = 0xD4D
	movq	%rax, %rdx
	callq	defvar_bool
# BB#38:                                # %do.end.52
	movb	$0, globals+3405
# BB#39:                                # %do.body.53
	movabsq	$syms_of_lread.b_fwd.60, %rdi
	movabsq	$.L.str.61, %rsi
	movabsq	$globals, %rax
	addq	$3403, %rax             # imm = 0xD4B
	movq	%rax, %rdx
	callq	defvar_bool
# BB#40:                                # %do.end.54
	movb	$0, globals+3403
# BB#41:                                # %do.body.55
	movabsq	$syms_of_lread.o_fwd.62, %rdi
	movabsq	$.L.str.63, %rsi
	movabsq	$globals, %rax
	addq	$2184, %rax             # imm = 0x888
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#42:                                # %do.end.56
	movabsq	$.L.str.64, %rdi
	callq	build_string
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.65, %rsi
	xorl	%edx, %edx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	decode_env_path
	movq	%rax, %rdi
	callq	Fcar
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, globals+2184
# BB#43:                                # %do.body.61
	movabsq	$syms_of_lread.o_fwd.66, %rdi
	movabsq	$.L.str.67, %rsi
	movabsq	$globals, %rax
	addq	$1800, %rax             # imm = 0x708
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#44:                                # %do.end.62
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1800
# BB#45:                                # %do.body.64
	movabsq	$syms_of_lread.o_fwd.68, %rdi
	movabsq	$.L.str.69, %rsi
	movabsq	$globals, %rax
	addq	$160, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#46:                                # %do.end.65
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+160
# BB#47:                                # %do.body.67
	movabsq	$syms_of_lread.b_fwd.70, %rdi
	movabsq	$.L.str.71, %rsi
	movabsq	$globals, %rax
	addq	$3404, %rax             # imm = 0xD4C
	movq	%rax, %rdx
	callq	defvar_bool
# BB#48:                                # %do.end.68
	movb	$0, globals+3404
# BB#49:                                # %do.body.69
	movabsq	$syms_of_lread.b_fwd.72, %rdi
	movabsq	$.L.str.73, %rsi
	movabsq	$globals, %rax
	addq	$3381, %rax             # imm = 0xD35
	movq	%rax, %rdx
	callq	defvar_bool
# BB#50:                                # %do.end.70
	movb	$0, globals+3381
# BB#51:                                # %do.body.71
	movabsq	$syms_of_lread.o_fwd.74, %rdi
	movabsq	$.L.str.75, %rsi
	movabsq	$globals, %rax
	addq	$176, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#52:                                # %do.end.72
	movabsq	$.L.str.76, %rdi
	callq	build_pure_c_string
	movq	%rax, globals+176
# BB#53:                                # %do.body.74
	movabsq	$syms_of_lread.o_fwd.77, %rdi
	movabsq	$.L.str.78, %rsi
	movabsq	$globals, %rax
	addq	$1264, %rax             # imm = 0x4F0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#54:                                # %do.end.75
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$614, %edi              # imm = 0x266
	movq	%rax, globals+1264
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_variable_buffer_local
	movq	%rax, -24(%rbp)         # 8-byte Spill
# BB#55:                                # %do.body.79
	movabsq	$syms_of_lread.o_fwd.79, %rdi
	movabsq	$.L.str.80, %rsi
	movabsq	$globals, %rax
	addq	$656, %rax              # imm = 0x290
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#56:                                # %do.end.80
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+656
# BB#57:                                # %do.body.82
	movabsq	$syms_of_lread.o_fwd.81, %rdi
	movabsq	$.L.str.82, %rsi
	movabsq	$globals, %rax
	addq	$1664, %rax             # imm = 0x680
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#58:                                # %do.end.83
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1664
# BB#59:                                # %do.body.85
	movabsq	$syms_of_lread.b_fwd.83, %rdi
	movabsq	$.L.str.84, %rsi
	movabsq	$globals, %rax
	addq	$3407, %rax             # imm = 0xD4F
	movq	%rax, %rdx
	callq	defvar_bool
# BB#60:                                # %do.end.86
	movabsq	$read_objects, %rdi
	movb	$0, globals+3407
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$seen_list, %rdi
	movq	%rax, read_objects
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, seen_list
	callq	builtin_lisp_symbol
	movabsq	$Vloads_in_progress, %rdi
	movq	%rax, Vloads_in_progress
	callq	staticpro
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	syms_of_lread, .Lfunc_end48-syms_of_lread
	.cfi_endproc

	.align	16, 0x90
	.type	readchar,@function
readchar:                               # @readchar
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
	subq	$544, %rsp              # imm = 0x220
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	$0, -65(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB49_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.LBB49_2:                               # %if.end
	movq	readchar_count, %rax
	addq	$1, %rax
	movq	%rax, readchar_count
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB49_3
	jmp	.LBB49_64
.LBB49_3:                               # %if.then.1
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB49_5
# BB#4:                                 # %cond.true
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB49_9
.LBB49_5:                               # %cond.false
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_7
# BB#6:                                 # %cond.true.6
	movq	-80(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB49_8
.LBB49_7:                               # %cond.false.8
	movq	-80(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB49_8:                               # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB49_9:                               # %cond.end.11
	movq	-160(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_11
# BB#10:                                # %if.then.15
	movl	$-1, -4(%rbp)
	jmp	.LBB49_188
.LBB49_11:                              # %if.end.16
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB49_13
# BB#12:                                # %cond.true.18
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB49_17
.LBB49_13:                              # %cond.false.19
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_15
# BB#14:                                # %cond.true.22
	movq	-80(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB49_16
.LBB49_15:                              # %cond.false.24
	movq	-80(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB49_16:                              # %cond.end.27
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB49_17:                              # %cond.end.29
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB49_19
# BB#18:                                # %if.then.32
	movl	$-1, -4(%rbp)
	jmp	.LBB49_188
.LBB49_19:                              # %if.end.33
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_49
# BB#20:                                # %if.then.36
	movq	-80(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jl	.LBB49_22
# BB#21:                                # %cond.true.40
	movq	-80(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB49_23
.LBB49_22:                              # %cond.false.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB49_23
.LBB49_23:                              # %cond.end.43
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -96(%rbp)
# BB#24:                                # %do.body
	movq	-80(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jl	.LBB49_26
# BB#25:                                # %cond.true.53
	movq	-80(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB49_27
.LBB49_26:                              # %cond.false.56
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB49_27
.LBB49_27:                              # %cond.end.57
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_29
# BB#28:                                # %cond.true.61
	movl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB49_36
.LBB49_29:                              # %cond.false.62
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_31
# BB#30:                                # %cond.true.66
	movl	$2, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB49_35
.LBB49_31:                              # %cond.false.67
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_33
# BB#32:                                # %cond.true.71
	movl	$3, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB49_34
.LBB49_33:                              # %cond.false.72
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
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB49_34:                              # %cond.end.77
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB49_35:                              # %cond.end.79
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB49_36:                              # %cond.end.81
	movl	-260(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-88(%rbp), %rcx
	movq	%rcx, -88(%rbp)
# BB#37:                                # %do.end
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_39
# BB#38:                                # %cond.true.88
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB49_46
.LBB49_39:                              # %cond.false.91
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_41
# BB#40:                                # %cond.true.96
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-96(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -276(%rbp)        # 4-byte Spill
	jmp	.LBB49_45
.LBB49_41:                              # %cond.false.109
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_43
# BB#42:                                # %cond.true.114
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB49_44
.LBB49_43:                              # %cond.false.128
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB49_44:                              # %cond.end.130
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB49_45:                              # %cond.end.132
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB49_46:                              # %cond.end.134
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB49_48
# BB#47:                                # %if.then.137
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
.LBB49_48:                              # %if.end.138
	jmp	.LBB49_57
.LBB49_49:                              # %if.else
	movq	-80(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jl	.LBB49_51
# BB#50:                                # %cond.true.147
	movq	-80(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB49_52
.LBB49_51:                              # %cond.false.150
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB49_52
.LBB49_52:                              # %cond.end.151
	movq	-296(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rax), %esi
	movl	%esi, -36(%rbp)
	testb	$1, %cl
	jne	.LBB49_53
	jmp	.LBB49_54
.LBB49_53:                              # %cond.true.155
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB49_56
	jmp	.LBB49_55
.LBB49_54:                              # %cond.false.159
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB49_56
.LBB49_55:                              # %if.then.164
	movl	-36(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -36(%rbp)
.LBB49_56:                              # %if.end.166
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB49_57:                              # %if.end.168
	movq	-80(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB49_59
# BB#58:                                # %cond.true.171
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB49_63
.LBB49_59:                              # %cond.false.173
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_61
# BB#60:                                # %cond.true.178
	movq	-80(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB49_62
.LBB49_61:                              # %cond.false.180
	movq	-80(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB49_62:                              # %cond.end.183
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB49_63:                              # %cond.end.185
	movq	-304(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 736(%rcx)
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 744(%rcx)
	movl	-36(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB49_188
.LBB49_64:                              # %if.end.190
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB49_113
# BB#65:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB49_113
# BB#66:                                # %if.then.198
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rdi
	callq	marker_byte_position
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdi
	cmpq	current_buffer, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jne	.LBB49_68
# BB#67:                                # %cond.true.204
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB49_72
.LBB49_68:                              # %cond.false.206
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_70
# BB#69:                                # %cond.true.211
	movq	-112(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB49_71
.LBB49_70:                              # %cond.false.213
	movq	-112(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB49_71:                              # %cond.end.216
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB49_72:                              # %cond.end.218
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB49_74
# BB#73:                                # %if.then.222
	movl	$-1, -4(%rbp)
	jmp	.LBB49_188
.LBB49_74:                              # %if.end.223
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_104
# BB#75:                                # %if.then.228
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-120(%rbp), %rax
	addq	$-1, %rax
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jl	.LBB49_77
# BB#76:                                # %cond.true.238
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB49_78
.LBB49_77:                              # %cond.false.241
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB49_78
.LBB49_78:                              # %cond.end.242
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	-368(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -128(%rbp)
# BB#79:                                # %do.body.245
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-120(%rbp), %rax
	addq	$-1, %rax
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jl	.LBB49_81
# BB#80:                                # %cond.true.255
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB49_82
.LBB49_81:                              # %cond.false.258
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB49_82
.LBB49_82:                              # %cond.end.259
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-384(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_84
# BB#83:                                # %cond.true.265
	movl	$1, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB49_91
.LBB49_84:                              # %cond.false.266
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_86
# BB#85:                                # %cond.true.270
	movl	$2, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB49_90
.LBB49_86:                              # %cond.false.271
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_88
# BB#87:                                # %cond.true.275
	movl	$3, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB49_89
.LBB49_88:                              # %cond.false.276
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
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB49_89:                              # %cond.end.282
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB49_90:                              # %cond.end.284
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB49_91:                              # %cond.end.286
	movl	-396(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-120(%rbp), %rcx
	movq	%rcx, -120(%rbp)
# BB#92:                                # %do.end.290
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_94
# BB#93:                                # %cond.true.295
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	jmp	.LBB49_101
.LBB49_94:                              # %cond.false.298
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_96
# BB#95:                                # %cond.true.303
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-128(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-128(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-128(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -412(%rbp)        # 4-byte Spill
	jmp	.LBB49_100
.LBB49_96:                              # %cond.false.318
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_98
# BB#97:                                # %cond.true.323
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-128(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-128(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	jmp	.LBB49_99
.LBB49_98:                              # %cond.false.337
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -416(%rbp)        # 4-byte Spill
.LBB49_99:                              # %cond.end.339
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB49_100:                             # %cond.end.341
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB49_101:                             # %cond.end.343
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB49_103
# BB#102:                               # %if.then.346
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
.LBB49_103:                             # %if.end.347
	jmp	.LBB49_112
.LBB49_104:                             # %if.else.348
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-120(%rbp), %rax
	addq	$-1, %rax
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jl	.LBB49_106
# BB#105:                               # %cond.true.357
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB49_107
.LBB49_106:                             # %cond.false.360
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB49_107
.LBB49_107:                             # %cond.end.361
	movq	-432(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rax), %esi
	movl	%esi, -36(%rbp)
	testb	$1, %cl
	jne	.LBB49_108
	jmp	.LBB49_109
.LBB49_108:                             # %cond.true.365
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB49_111
	jmp	.LBB49_110
.LBB49_109:                             # %cond.false.369
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB49_111
.LBB49_110:                             # %if.then.374
	movl	-36(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -36(%rbp)
.LBB49_111:                             # %if.end.376
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
.LBB49_112:                             # %if.end.378
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	XMARKER
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 32(%rax)
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	24(%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rax)
	movl	-36(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB49_188
.LBB49_113:                             # %if.end.383
	movl	$598, %edi              # imm = 0x256
	movq	-16(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_115
# BB#114:                               # %if.then.387
	movabsq	$readbyte_for_lambda, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB49_148
.LBB49_115:                             # %if.end.388
	movl	$486, %edi              # imm = 0x1E6
	movq	-16(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_117
# BB#116:                               # %if.then.392
	movabsq	$readbyte_from_file, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB49_148
.LBB49_117:                             # %if.end.393
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB49_118
	jmp	.LBB49_138
.LBB49_118:                             # %if.then.395
	movq	read_from_string_index, %rax
	cmpq	read_from_string_limit, %rax
	jl	.LBB49_120
# BB#119:                               # %if.then.398
	movl	$-1, -36(%rbp)
	jmp	.LBB49_137
.LBB49_120:                             # %if.else.399
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB49_121
	jmp	.LBB49_135
.LBB49_121:                             # %if.then.401
	cmpq	$0, -24(%rbp)
	je	.LBB49_123
# BB#122:                               # %if.then.403
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
.LBB49_123:                             # %if.end.404
	jmp	.LBB49_124
.LBB49_124:                             # %do.body.405
	movq	read_from_string_index_byte, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-464(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_126
# BB#125:                               # %cond.true.412
	movl	$1, -148(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	jmp	.LBB49_133
.LBB49_126:                             # %cond.false.415
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_128
# BB#127:                               # %cond.true.420
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -148(%rbp)
	movq	-144(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-144(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-144(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -472(%rbp)        # 4-byte Spill
	jmp	.LBB49_132
.LBB49_128:                             # %cond.false.435
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_130
# BB#129:                               # %cond.true.440
	movl	$3, -148(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-144(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-144(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	jmp	.LBB49_131
.LBB49_130:                             # %cond.false.454
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-148(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB49_131:                             # %cond.end.456
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	%eax, -472(%rbp)        # 4-byte Spill
.LBB49_132:                             # %cond.end.458
	movl	-472(%rbp), %eax        # 4-byte Reload
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB49_133:                             # %cond.end.460
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movslq	-148(%rbp), %rcx
	addq	read_from_string_index_byte, %rcx
	movq	%rcx, read_from_string_index_byte
	movq	read_from_string_index, %rcx
	addq	$1, %rcx
	movq	%rcx, read_from_string_index
# BB#134:                               # %do.end.465
	jmp	.LBB49_136
.LBB49_135:                             # %if.else.466
	movq	-16(%rbp), %rdi
	movq	read_from_string_index_byte, %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
	movq	read_from_string_index, %rsi
	addq	$1, %rsi
	movq	%rsi, read_from_string_index
	movq	read_from_string_index_byte, %rsi
	addq	$1, %rsi
	movq	%rsi, read_from_string_index_byte
.LBB49_136:                             # %if.end.471
	jmp	.LBB49_137
.LBB49_137:                             # %if.end.472
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB49_188
.LBB49_138:                             # %if.end.473
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB49_143
# BB#139:                               # %land.lhs.true.478
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB49_140
	jmp	.LBB49_143
.LBB49_140:                             # %if.then.481
	movl	$484, %edi              # imm = 0x1E4
	movabsq	$readbyte_from_string, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_142
# BB#141:                               # %if.then.486
	movb	$1, -65(%rbp)
.LBB49_142:                             # %if.end.487
	jmp	.LBB49_148
.LBB49_143:                             # %if.end.488
	movl	$484, %edi              # imm = 0x1E4
	movq	-16(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_145
# BB#144:                               # %if.then.492
	movabsq	$readbyte_from_file, %rax
	movq	%rax, -48(%rbp)
	movb	$1, -65(%rbp)
	jmp	.LBB49_148
.LBB49_145:                             # %if.end.493
	movq	-16(%rbp), %rdi
	callq	call0
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_147
# BB#146:                               # %if.then.498
	movl	$-1, -4(%rbp)
	jmp	.LBB49_188
.LBB49_147:                             # %if.end.499
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB49_188
.LBB49_148:                             # %read_multibyte
	cmpl	$0, unread_char
	jl	.LBB49_150
# BB#149:                               # %if.then.503
	movl	unread_char, %eax
	movl	%eax, -36(%rbp)
	movl	$-1, unread_char
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB49_188
.LBB49_150:                             # %if.end.504
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rsi
	callq	*%rax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB49_152
# BB#151:                               # %if.then.508
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB49_188
.LBB49_152:                             # %if.end.509
	cmpq	$0, -24(%rbp)
	je	.LBB49_154
# BB#153:                               # %if.then.511
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
.LBB49_154:                             # %if.end.512
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_155
	jmp	.LBB49_156
.LBB49_155:                             # %cond.true.513
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB49_157
	jmp	.LBB49_158
.LBB49_156:                             # %cond.false.517
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_158
.LBB49_157:                             # %if.then.522
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB49_188
.LBB49_158:                             # %if.end.523
	testb	$1, -65(%rbp)
	je	.LBB49_160
# BB#159:                               # %if.then.525
	movl	-36(%rbp), %edi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	read_emacs_mule_char
	movl	%eax, -4(%rbp)
	jmp	.LBB49_188
.LBB49_160:                             # %if.end.527
	movl	$0, -60(%rbp)
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rsi
	movb	%cl, -53(%rbp,%rsi)
	movl	-36(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB49_162
# BB#161:                               # %cond.true.533
	movl	$1, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB49_169
.LBB49_162:                             # %cond.false.534
	movl	-36(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB49_164
# BB#163:                               # %cond.true.537
	movl	$2, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB49_168
.LBB49_164:                             # %cond.false.538
	movl	-36(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB49_166
# BB#165:                               # %cond.true.541
	movl	$3, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB49_167
.LBB49_166:                             # %cond.false.542
	movl	$5, %eax
	movl	$4, %ecx
	movl	-36(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB49_167:                             # %cond.end.547
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB49_168:                             # %cond.end.549
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	%eax, -508(%rbp)        # 4-byte Spill
.LBB49_169:                             # %cond.end.551
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
.LBB49_170:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB49_178
# BB#171:                               # %while.body
                                        #   in Loop: Header=BB49_170 Depth=1
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rsi
	callq	*%rax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jl	.LBB49_173
# BB#172:                               # %lor.lhs.false
                                        #   in Loop: Header=BB49_170 Depth=1
	movl	-36(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	.LBB49_177
.LBB49_173:                             # %if.then.561
	jmp	.LBB49_174
.LBB49_174:                             # %while.cond.562
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	cmpl	$1, %eax
	jle	.LBB49_176
# BB#175:                               # %while.body.565
                                        #   in Loop: Header=BB49_174 Depth=1
	movq	-48(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movzbl	-53(%rbp,%rcx), %edi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB49_174
.LBB49_176:                             # %while.end
	movzbl	-53(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -4(%rbp)
	jmp	.LBB49_188
.LBB49_177:                             # %if.end.573
                                        #   in Loop: Header=BB49_170 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rsi
	movb	%cl, -53(%rbp,%rsi)
	jmp	.LBB49_170
.LBB49_178:                             # %while.end.578
	movzbl	-53(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB49_180
# BB#179:                               # %cond.true.583
	movzbl	-53(%rbp), %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB49_187
.LBB49_180:                             # %cond.false.586
	movzbl	-53(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB49_182
# BB#181:                               # %cond.true.591
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movzbl	-53(%rbp), %edx
	andl	$31, %edx
	shll	$6, %edx
	movzbl	-52(%rbp), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movzbl	-53(%rbp), %esi
	cmpl	$194, %esi
	cmovll	%ecx, %eax
	addl	%eax, %edx
	movl	%edx, -528(%rbp)        # 4-byte Spill
	jmp	.LBB49_186
.LBB49_182:                             # %cond.false.606
	movzbl	-53(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB49_184
# BB#183:                               # %cond.true.611
	movzbl	-53(%rbp), %eax
	andl	$15, %eax
	shll	$12, %eax
	movzbl	-52(%rbp), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	orl	%ecx, %eax
	movzbl	-51(%rbp), %ecx
	andl	$63, %ecx
	orl	%ecx, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jmp	.LBB49_185
.LBB49_184:                             # %cond.false.625
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-53(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -532(%rbp)        # 4-byte Spill
.LBB49_185:                             # %cond.end.627
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	%eax, -528(%rbp)        # 4-byte Spill
.LBB49_186:                             # %cond.end.629
	movl	-528(%rbp), %eax        # 4-byte Reload
	movl	%eax, -524(%rbp)        # 4-byte Spill
.LBB49_187:                             # %cond.end.631
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB49_188:                             # %return
	movl	-4(%rbp), %eax
	addq	$544, %rsp              # imm = 0x220
	popq	%rbp
	retq
.Lfunc_end49:
	.size	readchar, .Lfunc_end49-readchar
	.cfi_endproc

	.align	16, 0x90
	.type	unreadchar,@function
unreadchar:                             # @unreadchar
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	readchar_count, %rdi
	addq	$-1, %rdi
	movq	%rdi, readchar_count
	cmpl	$-1, -12(%rbp)
	jne	.LBB50_2
# BB#1:                                 # %if.then
	jmp	.LBB50_58
.LBB50_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB50_3
	jmp	.LBB50_27
.LBB50_3:                               # %if.then.1
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB50_5
# BB#4:                                 # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB50_9
.LBB50_5:                               # %cond.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_7
# BB#6:                                 # %cond.true.6
	movq	-24(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB50_8
.LBB50_7:                               # %cond.false.8
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB50_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB50_9:                               # %cond.end.11
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB50_11
# BB#10:                                # %cond.true.14
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB50_15
.LBB50_11:                              # %cond.false.16
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_13
# BB#12:                                # %cond.true.20
	movq	-24(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB50_14
.LBB50_13:                              # %cond.false.22
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB50_14:                              # %cond.end.25
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB50_15:                              # %cond.end.27
	movq	-104(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_25
# BB#16:                                # %if.then.31
	jmp	.LBB50_17
.LBB50_17:                              # %do.body
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB50_19
# BB#18:                                # %if.then.34
	movq	-24(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_20
.LBB50_19:                              # %if.else.37
	movq	-24(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
.LBB50_20:                              # %if.end
	jmp	.LBB50_21
.LBB50_21:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB50_22
	jmp	.LBB50_23
.LBB50_22:                              # %while.body
                                        #   in Loop: Header=BB50_21 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB50_21
.LBB50_23:                              # %while.end
	jmp	.LBB50_24
.LBB50_24:                              # %do.end
	jmp	.LBB50_26
.LBB50_25:                              # %if.else.47
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB50_26:                              # %if.end.49
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 736(%rcx)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 744(%rcx)
	jmp	.LBB50_57
.LBB50_27:                              # %if.else.52
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB50_41
# BB#28:                                # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB50_41
# BB#29:                                # %if.then.60
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMARKER
	xorl	%edi, %edi
	movq	24(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_39
# BB#30:                                # %if.then.73
	jmp	.LBB50_31
.LBB50_31:                              # %do.body.74
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB50_33
# BB#32:                                # %if.then.81
	movq	-56(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB50_34
.LBB50_33:                              # %if.else.86
	movq	-56(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
.LBB50_34:                              # %if.end.94
	jmp	.LBB50_35
.LBB50_35:                              # %while.cond.95
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB50_36
	jmp	.LBB50_37
.LBB50_36:                              # %while.body.101
                                        #   in Loop: Header=BB50_35 Depth=1
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB50_35
.LBB50_37:                              # %while.end.104
	jmp	.LBB50_38
.LBB50_38:                              # %do.end.105
	jmp	.LBB50_40
.LBB50_39:                              # %if.else.106
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
.LBB50_40:                              # %if.end.108
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	XMARKER
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 32(%rax)
	jmp	.LBB50_56
.LBB50_41:                              # %if.else.111
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB50_42
	jmp	.LBB50_43
.LBB50_42:                              # %if.then.113
	movq	read_from_string_index, %rax
	addq	$-1, %rax
	movq	%rax, read_from_string_index
	movq	-8(%rbp), %rdi
	movq	read_from_string_index, %rsi
	callq	string_char_to_byte
	movq	%rax, read_from_string_index_byte
	jmp	.LBB50_55
.LBB50_43:                              # %if.else.116
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB50_46
# BB#44:                                # %land.lhs.true.121
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB50_45
	jmp	.LBB50_46
.LBB50_45:                              # %if.then.125
	movl	-12(%rbp), %eax
	movl	%eax, unread_char
	jmp	.LBB50_54
.LBB50_46:                              # %if.else.126
	movl	$598, %edi              # imm = 0x256
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_48
# BB#47:                                # %if.then.130
	movl	-12(%rbp), %eax
	movl	%eax, unread_char
	jmp	.LBB50_53
.LBB50_48:                              # %if.else.131
	movl	$486, %edi              # imm = 0x1E6
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_50
# BB#49:                                # %lor.lhs.false
	movl	$484, %edi              # imm = 0x1E4
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_51
.LBB50_50:                              # %if.then.138
	movl	-12(%rbp), %eax
	movl	%eax, unread_char
	jmp	.LBB50_52
.LBB50_51:                              # %if.else.139
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB50_52:                              # %if.end.143
	jmp	.LBB50_53
.LBB50_53:                              # %if.end.144
	jmp	.LBB50_54
.LBB50_54:                              # %if.end.145
	jmp	.LBB50_55
.LBB50_55:                              # %if.end.146
	jmp	.LBB50_56
.LBB50_56:                              # %if.end.147
	jmp	.LBB50_57
.LBB50_57:                              # %if.end.148
	jmp	.LBB50_58
.LBB50_58:                              # %if.end.149
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	unreadchar, .Lfunc_end50-unreadchar
	.cfi_endproc

	.align	16, 0x90
	.type	readbyte_for_lambda,@function
readbyte_for_lambda:                    # @readbyte_for_lambda
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	setge	%al
	movzbl	%al, %edi
	andl	$1, %edi
	callq	read_bytecode_char
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	readbyte_for_lambda, .Lfunc_end51-readbyte_for_lambda
	.cfi_endproc

	.align	16, 0x90
	.type	readbyte_from_file,@function
readbyte_from_file:                     # @readbyte_from_file
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
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB52_2
# BB#1:                                 # %if.then
	callq	block_input
	movl	-8(%rbp), %edi
	movq	instream, %rsi
	callq	ungetc
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	unblock_input
	movl	$0, -4(%rbp)
	jmp	.LBB52_20
.LBB52_2:                               # %if.end
	callq	block_input
	movq	instream, %rdi
	callq	_IO_getc
	movl	%eax, -8(%rbp)
.LBB52_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -8(%rbp)
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jne	.LBB52_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	instream, %rdi
	callq	ferror
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -21(%rbp)          # 1-byte Spill
	je	.LBB52_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB52_3 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -21(%rbp)          # 1-byte Spill
.LBB52_6:                               # %land.end
                                        #   in Loop: Header=BB52_3 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB52_7
	jmp	.LBB52_16
.LBB52_7:                               # %while.body
                                        #   in Loop: Header=BB52_3 Depth=1
	callq	unblock_input
# BB#8:                                 # %do.body
                                        #   in Loop: Header=BB52_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_11
# BB#9:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB52_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_11
# BB#10:                                # %if.then.11
                                        #   in Loop: Header=BB52_3 Depth=1
	callq	process_quit_flag
	jmp	.LBB52_14
.LBB52_11:                              # %if.else
                                        #   in Loop: Header=BB52_3 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB52_13
# BB#12:                                # %if.then.13
                                        #   in Loop: Header=BB52_3 Depth=1
	callq	process_pending_signals
.LBB52_13:                              # %if.end.14
                                        #   in Loop: Header=BB52_3 Depth=1
	jmp	.LBB52_14
.LBB52_14:                              # %if.end.15
                                        #   in Loop: Header=BB52_3 Depth=1
	jmp	.LBB52_15
.LBB52_15:                              # %do.end
                                        #   in Loop: Header=BB52_3 Depth=1
	callq	block_input
	movq	instream, %rdi
	callq	clearerr
	movq	instream, %rdi
	callq	_IO_getc
	movl	%eax, -8(%rbp)
	jmp	.LBB52_3
.LBB52_16:                              # %while.end
	callq	unblock_input
	cmpl	$-1, -8(%rbp)
	jne	.LBB52_18
# BB#17:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB52_19
.LBB52_18:                              # %cond.false
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB52_19:                              # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB52_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	readbyte_from_file, .Lfunc_end52-readbyte_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	readbyte_from_string,@function
readbyte_from_string:                   # @readbyte_from_string
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subq	$3, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB53_2
# BB#1:                                 # %if.then
	movq	read_from_string_index, %rax
	addq	$-1, %rax
	movq	%rax, read_from_string_index
	movq	-24(%rbp), %rdi
	movq	read_from_string_index, %rsi
	callq	string_char_to_byte
	movq	%rax, read_from_string_index_byte
.LBB53_2:                               # %if.end
	movq	read_from_string_index, %rax
	cmpq	read_from_string_limit, %rax
	jl	.LBB53_4
# BB#3:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB53_19
.LBB53_4:                               # %if.else
	jmp	.LBB53_5
.LBB53_5:                               # %do.body
	movq	read_from_string_index, %rax
	addq	$1, %rax
	movq	%rax, read_from_string_index
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB53_6
	jmp	.LBB53_16
.LBB53_6:                               # %if.then.4
	movq	read_from_string_index_byte, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SDATA
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB53_8
# BB#7:                                 # %cond.true
	movl	$1, -36(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB53_15
.LBB53_8:                               # %cond.false
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB53_10
# BB#9:                                 # %cond.true.13
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -36(%rbp)
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-32(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	jmp	.LBB53_14
.LBB53_10:                              # %cond.false.24
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB53_12
# BB#11:                                # %cond.true.29
	movl	$3, -36(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB53_13
.LBB53_12:                              # %cond.false.43
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-36(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	string_char
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB53_13:                              # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB53_14:                              # %cond.end.46
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB53_15:                              # %cond.end.48
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	movslq	-36(%rbp), %rcx
	addq	read_from_string_index_byte, %rcx
	movq	%rcx, read_from_string_index_byte
	jmp	.LBB53_17
.LBB53_16:                              # %if.else.52
	movq	-24(%rbp), %rdi
	movq	read_from_string_index_byte, %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	movq	read_from_string_index_byte, %rsi
	addq	$1, %rsi
	movq	%rsi, read_from_string_index_byte
.LBB53_17:                              # %if.end.56
	jmp	.LBB53_18
.LBB53_18:                              # %do.end
	jmp	.LBB53_19
.LBB53_19:                              # %if.end.57
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	readbyte_from_string, .Lfunc_end53-readbyte_from_string
	.cfi_endproc

	.align	16, 0x90
	.type	read_emacs_mule_char,@function
read_emacs_mule_char:                   # @read_emacs_mule_char
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
	subq	$128, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movslq	-8(%rbp), %rdx
	movsbl	emacs_mule_bytes(,%rdx), %edi
	movl	%edi, -32(%rbp)
	cmpl	$1, -32(%rbp)
	jne	.LBB54_2
# BB#1:                                 # %if.then
	movl	-8(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -4(%rbp)
	jmp	.LBB54_49
.LBB54_2:                               # %if.end
	movl	$0, -44(%rbp)
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movslq	%eax, %rsi
	movb	%cl, -28(%rbp,%rsi)
.LBB54_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB54_10
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB54_3 Depth=1
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$160, -8(%rbp)
	jge	.LBB54_9
# BB#5:                                 # %if.then.9
	jmp	.LBB54_6
.LBB54_6:                               # %while.cond.10
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$1, %eax
	jle	.LBB54_8
# BB#7:                                 # %while.body.13
                                        #   in Loop: Header=BB54_6 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	-28(%rbp,%rcx), %edi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB54_6
.LBB54_8:                               # %while.end
	movzbl	-28(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -4(%rbp)
	jmp	.LBB54_49
.LBB54_9:                               # %if.end.21
                                        #   in Loop: Header=BB54_3 Depth=1
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movslq	%eax, %rsi
	movb	%cl, -28(%rbp,%rsi)
	jmp	.LBB54_3
.LBB54_10:                              # %while.end.26
	cmpl	$2, -32(%rbp)
	jne	.LBB54_12
# BB#11:                                # %if.then.29
	movq	charset_table, %rax
	movzbl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movslq	emacs_mule_charset(,%rdx,4), %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movzbl	-27(%rbp), %ecx
	andl	$127, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB54_20
.LBB54_12:                              # %if.else
	cmpl	$3, -32(%rbp)
	jne	.LBB54_18
# BB#13:                                # %if.then.37
	movzbl	-28(%rbp), %eax
	cmpl	$154, %eax
	je	.LBB54_15
# BB#14:                                # %lor.lhs.false
	movzbl	-28(%rbp), %eax
	cmpl	$155, %eax
	jne	.LBB54_16
.LBB54_15:                              # %if.then.46
	movq	charset_table, %rax
	movzbl	-27(%rbp), %ecx
	movl	%ecx, %edx
	movslq	emacs_mule_charset(,%rdx,4), %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movzbl	-26(%rbp), %ecx
	andl	$127, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB54_17
.LBB54_16:                              # %if.else.55
	movq	charset_table, %rax
	movzbl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movslq	emacs_mule_charset(,%rdx,4), %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movzbl	-27(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-26(%rbp), %esi
	orl	%esi, %ecx
	andl	$32639, %ecx            # imm = 0x7F7F
	movl	%ecx, -48(%rbp)
.LBB54_17:                              # %if.end.66
	jmp	.LBB54_19
.LBB54_18:                              # %if.else.67
	movq	charset_table, %rax
	movzbl	-27(%rbp), %ecx
	movl	%ecx, %edx
	movslq	emacs_mule_charset(,%rdx,4), %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movzbl	-26(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-25(%rbp), %esi
	orl	%esi, %ecx
	andl	$32639, %ecx            # imm = 0x7F7F
	movl	%ecx, -48(%rbp)
.LBB54_19:                              # %if.end.80
	jmp	.LBB54_20
.LBB54_20:                              # %if.end.81
	movb	$1, %al
	testb	$1, %al
	jne	.LBB54_21
	jmp	.LBB54_22
.LBB54_21:                              # %cond.true
	movl	-48(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB54_23
	jmp	.LBB54_25
.LBB54_22:                              # %cond.false
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB54_25
.LBB54_23:                              # %land.lhs.true
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB54_25
# BB#24:                                # %cond.true.90
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB54_46
.LBB54_25:                              # %cond.false.92
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jb	.LBB54_27
# BB#26:                                # %lor.lhs.false.95
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB54_28
.LBB54_27:                              # %cond.true.98
	movq	$-1, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB54_45
.LBB54_28:                              # %cond.false.99
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB54_30
# BB#29:                                # %cond.true.105
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	jmp	.LBB54_44
.LBB54_30:                              # %cond.false.108
	movq	-40(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB54_35
# BB#31:                                # %cond.true.111
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB54_33
# BB#32:                                # %cond.true.116
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	108(%rcx), %eax
	movq	-40(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB54_34
.LBB54_33:                              # %cond.false.119
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	decode_char
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB54_34:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB54_43
.LBB54_35:                              # %cond.false.122
	movq	-40(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB54_41
# BB#36:                                # %cond.true.126
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB54_39
# BB#37:                                # %land.lhs.true.132
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB54_38
	jmp	.LBB54_39
.LBB54_38:                              # %cond.true.138
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-48(%rbp), %ecx
	movq	-40(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB54_40
.LBB54_39:                              # %cond.false.147
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
.LBB54_40:                              # %cond.end.150
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB54_42
.LBB54_41:                              # %cond.false.152
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
.LBB54_42:                              # %cond.end.155
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB54_43:                              # %cond.end.157
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB54_44:                              # %cond.end.159
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB54_45:                              # %cond.end.161
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB54_46:                              # %cond.end.163
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB54_48
# BB#47:                                # %if.then.168
	movl	$571, %edi              # imm = 0x23B
	callq	builtin_lisp_symbol
	movabsq	$.L.str.88, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	build_string
	movq	%rax, %rdi
	callq	list1
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB54_48:                              # %if.end.173
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB54_49:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	read_emacs_mule_char, .Lfunc_end54-read_emacs_mule_char
	.cfi_endproc

	.align	16, 0x90
	.type	readevalloop_1,@function
readevalloop_1:                         # @readevalloop_1
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
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	andb	$1, %al
	movb	%al, globals+3403
	popq	%rbp
	retq
.Lfunc_end55:
	.size	readevalloop_1, .Lfunc_end55-readevalloop_1
	.cfi_endproc

	.align	16, 0x90
	.type	read_list,@function
read_list:                              # @read_list
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
	subq	$272, %rsp              # imm = 0x110
	movb	%dil, %al
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -60(%rbp)
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setle	%al
	andb	$1, %al
	movb	%al, -61(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB56_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-68(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movb	-61(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	read1
	movq	%rax, -48(%rbp)
	movb	$0, -61(%rbp)
	movq	-48(%rbp), %rax
	cmpq	globals+1288, %rax
	jne	.LBB56_8
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB56_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB56_8
# BB#3:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB56_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB56_8
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB56_1 Depth=1
	xorl	%edi, %edi
	movq	globals+584, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_6
# BB#5:                                 # %if.then.18
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	$1, -60(%rbp)
	jmp	.LBB56_7
.LBB56_6:                               # %if.else
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	$4, %esi
	leaq	-112(%rbp), %rax
	movabsq	$.L.str.91, %rcx
	movq	$8, -112(%rbp)
	movq	$-1, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Ffile_name_nondirectory
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	%rax, -48(%rbp)
.LBB56_7:                               # %if.end
                                        #   in Loop: Header=BB56_1 Depth=1
	jmp	.LBB56_13
.LBB56_8:                               # %if.else.23
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	globals+1288, %rax
	jne	.LBB56_12
# BB#9:                                 # %land.lhs.true.26
                                        #   in Loop: Header=BB56_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB56_12
# BB#10:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB56_1 Depth=1
	testb	$1, globals+3405
	je	.LBB56_12
# BB#11:                                # %if.then.33
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	$2, -60(%rbp)
.LBB56_12:                              # %if.end.34
                                        #   in Loop: Header=BB56_1 Depth=1
	jmp	.LBB56_13
.LBB56_13:                              # %if.end.35
                                        #   in Loop: Header=BB56_1 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB56_60
# BB#14:                                # %if.then.37
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jle	.LBB56_18
# BB#15:                                # %if.then.42
	cmpl	$93, -68(%rbp)
	jne	.LBB56_17
# BB#16:                                # %if.then.45
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_64
.LBB56_17:                              # %if.end.46
	movabsq	$.L.str.92, %rdi
	callq	invalid_syntax
.LBB56_18:                              # %if.end.47
	cmpl	$41, -68(%rbp)
	jne	.LBB56_20
# BB#19:                                # %if.then.50
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_64
.LBB56_20:                              # %if.end.51
	cmpl	$46, -68(%rbp)
	jne	.LBB56_59
# BB#21:                                # %if.then.54
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB56_23
# BB#22:                                # %if.then.58
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	read0
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	jmp	.LBB56_24
.LBB56_23:                              # %if.else.60
	movq	-24(%rbp), %rdi
	callq	read0
	movq	%rax, -32(%rbp)
.LBB56_24:                              # %if.end.62
	leaq	-68(%rbp), %rsi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	callq	read1
	cmpl	$41, -68(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB56_58
# BB#25:                                # %if.then.66
	cmpl	$1, -60(%rbp)
	jne	.LBB56_27
# BB#26:                                # %if.then.69
	movq	$2, -8(%rbp)
	jmp	.LBB56_64
.LBB56_27:                              # %if.end.70
	cmpl	$2, -60(%rbp)
	jne	.LBB56_57
# BB#28:                                # %land.lhs.true.73
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB56_57
# BB#29:                                # %if.then.78
	movq	$0, -120(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB56_31
# BB#30:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB56_32
.LBB56_31:                              # %cond.false
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB56_32:                              # %cond.end
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	saved_doc_string_position, %rax
	jl	.LBB56_35
# BB#33:                                # %land.lhs.true.95
	movq	-136(%rbp), %rax
	movq	saved_doc_string_position, %rcx
	addq	saved_doc_string_length, %rcx
	cmpq	%rcx, %rax
	jge	.LBB56_35
# BB#34:                                # %if.then.98
	movq	saved_doc_string, %rax
	movq	%rax, -120(%rbp)
	movq	saved_doc_string_position, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB56_39
.LBB56_35:                              # %if.else.99
	movq	-136(%rbp), %rax
	cmpq	prev_saved_doc_string_position, %rax
	jl	.LBB56_38
# BB#36:                                # %land.lhs.true.102
	movq	-136(%rbp), %rax
	movq	prev_saved_doc_string_position, %rcx
	addq	prev_saved_doc_string_length, %rcx
	cmpq	%rcx, %rax
	jge	.LBB56_38
# BB#37:                                # %if.then.106
	movq	prev_saved_doc_string, %rax
	movq	%rax, -120(%rbp)
	movq	prev_saved_doc_string_position, %rax
	movq	%rax, -128(%rbp)
.LBB56_38:                              # %if.end.107
	jmp	.LBB56_39
.LBB56_39:                              # %if.end.108
	cmpq	$0, -120(%rbp)
	je	.LBB56_56
# BB#40:                                # %if.then.110
	movq	-136(%rbp), %rax
	subq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
.LBB56_41:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax
	movq	-120(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$31, %edx
	je	.LBB56_55
# BB#42:                                # %for.body
                                        #   in Loop: Header=BB56_41 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movq	-120(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, -164(%rbp)
	cmpl	$1, -164(%rbp)
	jne	.LBB56_53
# BB#43:                                # %if.then.119
                                        #   in Loop: Header=BB56_41 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movq	-120(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, -164(%rbp)
	cmpl	$1, -164(%rbp)
	jne	.LBB56_45
# BB#44:                                # %cond.true.125
                                        #   in Loop: Header=BB56_41 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB56_52
.LBB56_45:                              # %cond.false.126
                                        #   in Loop: Header=BB56_41 Depth=1
	cmpl	$48, -164(%rbp)
	jne	.LBB56_47
# BB#46:                                # %cond.true.129
                                        #   in Loop: Header=BB56_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB56_51
.LBB56_47:                              # %cond.false.130
                                        #   in Loop: Header=BB56_41 Depth=1
	cmpl	$95, -164(%rbp)
	jne	.LBB56_49
# BB#48:                                # %cond.true.133
                                        #   in Loop: Header=BB56_41 Depth=1
	movl	$31, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB56_50
.LBB56_49:                              # %cond.false.134
                                        #   in Loop: Header=BB56_41 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB56_50:                              # %cond.end.135
                                        #   in Loop: Header=BB56_41 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB56_51:                              # %cond.end.137
                                        #   in Loop: Header=BB56_41 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB56_52:                              # %cond.end.139
                                        #   in Loop: Header=BB56_41 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -160(%rbp)
	movq	-120(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB56_54
.LBB56_53:                              # %if.else.144
                                        #   in Loop: Header=BB56_41 Depth=1
	movl	-164(%rbp), %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -160(%rbp)
	movq	-120(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB56_54:                              # %if.end.148
                                        #   in Loop: Header=BB56_41 Depth=1
	jmp	.LBB56_41
.LBB56_55:                              # %for.end
	movq	-120(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	-144(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	make_unibyte_string
	movq	%rax, -8(%rbp)
	jmp	.LBB56_64
.LBB56_56:                              # %if.else.151
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	get_doc_string
	movq	%rax, -8(%rbp)
	jmp	.LBB56_64
.LBB56_57:                              # %if.end.153
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_64
.LBB56_58:                              # %if.end.154
	movabsq	$.L.str.93, %rdi
	callq	invalid_syntax
.LBB56_59:                              # %if.end.155
	movabsq	$.L.str.94, %rdi
	callq	invalid_syntax
.LBB56_60:                              # %if.end.156
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	list1
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB56_62
# BB#61:                                # %if.then.161
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	XSETCDR
	jmp	.LBB56_63
.LBB56_62:                              # %if.else.162
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB56_63:                              # %if.end.163
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB56_1
.LBB56_64:                              # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end56:
	.size	read_list, .Lfunc_end56-read_list
	.cfi_endproc

	.align	16, 0x90
	.type	readevalloop_eager_expand_eval,@function
readevalloop_eager_expand_eval:         # @readevalloop_eager_expand_eval
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CAR_SAFE
	movl	$777, %edi              # imm = 0x309
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB57_6
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB57_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB57_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	readevalloop_eager_expand_eval
	movq	%rax, -8(%rbp)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB57_2
.LBB57_5:                               # %for.end
	jmp	.LBB57_7
.LBB57_6:                               # %if.else
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, %rdi
	callq	eval_sub
	movq	%rax, -8(%rbp)
.LBB57_7:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	readevalloop_eager_expand_eval, .Lfunc_end57-readevalloop_eager_expand_eval
	.cfi_endproc

	.align	16, 0x90
	.type	build_load_history,@function
build_load_history:                     # @build_load_history
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
	subq	$160, %rsp
	movb	%sil, %al
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movb	$0, -57(%rbp)
	movq	globals+1304, %rdi
	movq	%rdi, -24(%rbp)
	movl	%esi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB58_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_9 Depth 2
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB58_33
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcar
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB58_23
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB58_1 Depth=1
	movb	$1, -57(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB58_8
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB58_1 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, globals+1304
	jmp	.LBB58_7
.LBB58_6:                               # %if.else
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fsetcdr
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB58_7:                               # %if.end
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_22
.LBB58_8:                               # %if.else.17
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	globals+392, %rax
	movq	%rax, -56(%rbp)
.LBB58_9:                               # %while.cond.18
                                        #   Parent Loop BB58_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB58_21
# BB#10:                                # %while.body.23
                                        #   in Loop: Header=BB58_9 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB58_12
# BB#11:                                # %if.then.30
                                        #   in Loop: Header=BB58_9 Depth=2
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsetcar
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB58_12:                              # %if.end.39
                                        #   in Loop: Header=BB58_9 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
# BB#13:                                # %do.body
                                        #   in Loop: Header=BB58_9 Depth=2
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_16
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB58_9 Depth=2
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_16
# BB#15:                                # %if.then.49
                                        #   in Loop: Header=BB58_9 Depth=2
	callq	process_quit_flag
	jmp	.LBB58_19
.LBB58_16:                              # %if.else.50
                                        #   in Loop: Header=BB58_9 Depth=2
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB58_18
# BB#17:                                # %if.then.52
                                        #   in Loop: Header=BB58_9 Depth=2
	callq	process_pending_signals
.LBB58_18:                              # %if.end.53
                                        #   in Loop: Header=BB58_9 Depth=2
	jmp	.LBB58_19
.LBB58_19:                              # %if.end.54
                                        #   in Loop: Header=BB58_9 Depth=2
	jmp	.LBB58_20
.LBB58_20:                              # %do.end
                                        #   in Loop: Header=BB58_9 Depth=2
	jmp	.LBB58_9
.LBB58_21:                              # %while.end
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_22
.LBB58_22:                              # %if.end.55
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_24
.LBB58_23:                              # %if.else.56
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB58_24:                              # %if.end.57
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.61
                                        #   in Loop: Header=BB58_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_28
# BB#26:                                # %land.lhs.true.65
                                        #   in Loop: Header=BB58_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_28
# BB#27:                                # %if.then.69
                                        #   in Loop: Header=BB58_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB58_31
.LBB58_28:                              # %if.else.70
                                        #   in Loop: Header=BB58_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB58_30
# BB#29:                                # %if.then.72
                                        #   in Loop: Header=BB58_1 Depth=1
	callq	process_pending_signals
.LBB58_30:                              # %if.end.73
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_31
.LBB58_31:                              # %if.end.74
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_32
.LBB58_32:                              # %do.end.75
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_1
.LBB58_33:                              # %while.end.76
	testb	$1, -9(%rbp)
	jne	.LBB58_35
# BB#34:                                # %lor.lhs.false
	testb	$1, -57(%rbp)
	jne	.LBB58_36
.LBB58_35:                              # %if.then.80
	movq	globals+392, %rdi
	callq	Fnreverse
	movq	globals+1304, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+1304
.LBB58_36:                              # %if.end.83
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	build_load_history, .Lfunc_end58-build_load_history
	.cfi_endproc

	.align	16, 0x90
	.type	read1,@function
read1:                                  # @read1
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
	subq	$1104, %rsp             # imm = 0x450
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movb	$0, -33(%rbp)
	movq	-24(%rbp), %rsi
	movl	$0, (%rsi)
.LBB59_1:                               # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_170 Depth 2
                                        #     Child Loop BB59_82 Depth 2
                                        #     Child Loop BB59_103 Depth 2
                                        #     Child Loop BB59_113 Depth 2
	leaq	-34(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB59_3
# BB#2:                                 # %if.then
	callq	end_of_file_error
.LBB59_3:                               # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	subl	$34, %ecx
	movl	%eax, -636(%rbp)        # 4-byte Spill
	movl	%ecx, -640(%rbp)        # 4-byte Spill
	je	.LBB59_214
	jmp	.LBB59_368
.LBB59_368:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$35, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	je	.LBB59_7
	jmp	.LBB59_369
.LBB59_369:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$39, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	je	.LBB59_175
	jmp	.LBB59_370
.LBB59_370:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	je	.LBB59_4
	jmp	.LBB59_371
.LBB59_371:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	je	.LBB59_6
	jmp	.LBB59_372
.LBB59_372:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$44, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	je	.LBB59_181
	jmp	.LBB59_373
.LBB59_373:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	je	.LBB59_305
	jmp	.LBB59_374
.LBB59_374:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$59, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	je	.LBB59_169
	jmp	.LBB59_375
.LBB59_375:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	je	.LBB59_195
	jmp	.LBB59_376
.LBB59_376:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	je	.LBB59_5
	jmp	.LBB59_377
.LBB59_377:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$93, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	je	.LBB59_6
	jmp	.LBB59_378
.LBB59_378:                             # %if.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	subl	$96, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	je	.LBB59_176
	jmp	.LBB59_310
.LBB59_4:                               # %sw.bb
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	callq	read_list
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_5:                               # %sw.bb.2
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_vector
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_6:                               # %sw.bb.4
	xorl	%edi, %edi
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_7:                               # %sw.bb.6
                                        #   in Loop: Header=BB59_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$115, -32(%rbp)
	jne	.LBB59_28
# BB#8:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$40, -32(%rbp)
	jne	.LBB59_27
# BB#9:                                 # %if.then.12
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	callq	read_list
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	CAR_SAFE
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movl	$509, %edi              # imm = 0x1FD
	movq	%rax, -176(%rbp)
	movl	$0, -180(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB59_11
# BB#10:                                # %if.then.27
	movabsq	$.L.str.95, %rdi
	movb	$0, %al
	callq	error
.LBB59_11:                              # %if.end.28
	movq	-48(%rbp), %rdi
	callq	CDR_SAFE
	movl	$118, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movl	$864, %edi              # imm = 0x360
	movslq	-180(%rbp), %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movq	-48(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-712(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_13
# BB#12:                                # %if.then.40
	movl	-180(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -180(%rbp)
.LBB59_13:                              # %if.end.42
	movl	$129, %edi
	callq	builtin_lisp_symbol
	movl	$909, %edi              # imm = 0x38D
	movslq	-180(%rbp), %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movq	-48(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_15
# BB#14:                                # %if.then.56
	movl	-180(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -180(%rbp)
.LBB59_15:                              # %if.end.58
	movl	$137, %edi
	callq	builtin_lisp_symbol
	movl	$1013, %edi             # imm = 0x3F5
	movslq	-180(%rbp), %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movq	-48(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-744(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_17
# BB#16:                                # %if.then.72
	movl	-180(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -180(%rbp)
.LBB59_17:                              # %if.end.74
	movl	$103, %edi
	callq	builtin_lisp_symbol
	movl	$802, %edi              # imm = 0x322
	movslq	-180(%rbp), %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movq	-48(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_19
# BB#18:                                # %if.then.88
	movl	-180(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -180(%rbp)
.LBB59_19:                              # %if.end.90
	movl	$104, %edi
	callq	builtin_lisp_symbol
	movl	$803, %edi              # imm = 0x323
	movslq	-180(%rbp), %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movq	-48(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	%rax, -160(%rbp,%rcx,8)
	movl	-180(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-160(%rbp,%rax,8), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_21
# BB#20:                                # %if.then.104
	movl	-180(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -180(%rbp)
.LBB59_21:                              # %if.end.106
	movl	$315, %edi              # imm = 0x13B
	movq	-48(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	leaq	-160(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movslq	-180(%rbp), %rdi
	callq	Fmake_hash_table
	movq	%rax, -168(%rbp)
.LBB59_22:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB59_26
# BB#23:                                # %while.body
                                        #   in Loop: Header=BB59_22 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB59_25
# BB#24:                                # %if.then.118
	movabsq	$.L.str.96, %rdi
	movb	$0, %al
	callq	error
.LBB59_25:                              # %if.end.119
                                        #   in Loop: Header=BB59_22 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-176(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-168(%rbp), %rdx
	callq	Fputhash
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jmp	.LBB59_22
.LBB59_26:                              # %while.end
	movq	-168(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_27:                              # %if.end.126
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	unreadchar
	movabsq	$.L.str.97, %rdi
	callq	invalid_syntax
.LBB59_28:                              # %if.end.127
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$94, -32(%rbp)
	jne	.LBB59_51
# BB#29:                                # %if.then.130
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$91, -32(%rbp)
	jne	.LBB59_33
# BB#30:                                # %if.then.134
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_vector
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	ASIZE
	cmpq	$68, %rax
	jge	.LBB59_32
# BB#31:                                # %if.then.141
	movabsq	$.L.str.98, %rdi
	movb	$0, %al
	callq	error
.LBB59_32:                              # %if.end.142
	movq	-192(%rbp), %rdi
	callq	XVECTOR
	movabsq	$4611686018679046144, %rdi # imm = 0x400000000F000000
	orq	(%rax), %rdi
	movq	%rdi, (%rax)
	movq	-192(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_33:                              # %if.else
	cmpl	$94, -32(%rbp)
	jne	.LBB59_49
# BB#34:                                # %if.then.146
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$91, -32(%rbp)
	jne	.LBB59_48
# BB#35:                                # %if.then.150
	movl	$1, %edi
	movq	-16(%rbp), %rsi
	callq	read_list
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB59_37
# BB#36:                                # %if.then.164
	movabsq	$.L.str.99, %rdi
	movb	$0, %al
	callq	error
.LBB59_37:                              # %if.end.165
	movl	$1, %eax
	movl	%eax, %edi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-208(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB59_39
# BB#38:                                # %if.then.169
	movabsq	$.L.str.100, %rdi
	movb	$0, %al
	callq	error
.LBB59_39:                              # %if.end.170
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -224(%rbp)
	movslq	-224(%rbp), %rax
	movslq	chartab_size(,%rax,4), %rax
	movq	-216(%rbp), %rdx
	subq	$2, %rdx
	cmpq	%rdx, %rax
	je	.LBB59_41
# BB#40:                                # %if.then.181
	movabsq	$.L.str.101, %rdi
	movb	$0, %al
	callq	error
.LBB59_41:                              # %if.end.182
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	%rax, -240(%rbp)
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
	movq	-240(%rbp), %rdi
	callq	free_cons
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$4194303, %ecx          # imm = 0x3FFFFF
	movl	%ecx, %edx
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB59_43
# BB#42:                                # %if.then.190
	movabsq	$.L.str.102, %rdi
	movb	$0, %al
	callq	error
.LBB59_43:                              # %if.end.191
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -228(%rbp)
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	%rax, -240(%rbp)
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
	movq	-240(%rbp), %rdi
	callq	free_cons
	movl	-224(%rbp), %edi
	movl	-228(%rbp), %esi
	callq	make_uninit_sub_char_table
	movq	%rax, -200(%rbp)
	movl	$0, -220(%rbp)
.LBB59_44:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-220(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jge	.LBB59_47
# BB#45:                                # %for.body
                                        #   in Loop: Header=BB59_44 Depth=1
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movslq	-220(%rbp), %rcx
	movq	-200(%rbp), %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-808(%rbp), %rcx        # 8-byte Reload
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 16(%rax,%rcx,8)
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	%rax, -240(%rbp)
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdi
	callq	free_cons
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB59_44 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB59_44
.LBB59_47:                              # %for.end
	movq	-200(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_48:                              # %if.end.214
	movabsq	$.L.str.103, %rdi
	callq	invalid_syntax
.LBB59_49:                              # %if.end.215
	jmp	.LBB59_50
.LBB59_50:                              # %if.end.216
	movabsq	$.L.str.104, %rdi
	callq	invalid_syntax
.LBB59_51:                              # %if.end.217
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$38, -32(%rbp)
	jne	.LBB59_61
# BB#52:                                # %if.then.220
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	read1
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -248(%rbp)
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$34, -32(%rbp)
	jne	.LBB59_60
# BB#53:                                # %if.then.226
	movq	-248(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	bool_vector_bytes
	movq	%rax, -272(%rbp)
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	unreadchar
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	-25(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	read1
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB59_56
# BB#54:                                # %lor.lhs.false
	movq	-272(%rbp), %rax
	movq	-256(%rbp), %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-816(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB59_57
# BB#55:                                # %land.lhs.true
	movq	-248(%rbp), %rax
	sarq	$2, %rax
	movq	-256(%rbp), %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	SCHARS
	subq	$1, %rax
	shlq	$3, %rax
	movq	-824(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB59_57
.LBB59_56:                              # %if.then.248
	movabsq	$.L.str.105, %rdi
	callq	invalid_syntax
.LBB59_57:                              # %if.end.249
	movq	-248(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	make_uninit_bool_vector
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rdi
	callq	bool_vector_uchar_data
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-272(%rbp), %rdx
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-248(%rbp), %rax
	sarq	$2, %rax
	movq	-272(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rax
	je	.LBB59_59
# BB#58:                                # %if.then.258
	movl	$1, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	-248(%rbp), %rsi
	sarq	$2, %rsi
	movl	%eax, -836(%rbp)        # 4-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	cqto
	movq	-848(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-836(%rbp), %edi        # 4-byte Reload
	shll	%cl, %edi
	subl	$1, %edi
	movq	-272(%rbp), %rdx
	subq	$1, %rdx
	movq	-280(%rbp), %r8
	movzbl	(%r8,%rdx), %r9d
	andl	%edi, %r9d
	movb	%r9b, %cl
	movb	%cl, (%r8,%rdx)
.LBB59_59:                              # %if.end.266
	movq	-264(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_60:                              # %if.end.267
	movabsq	$.L.str.105, %rdi
	callq	invalid_syntax
.LBB59_61:                              # %if.end.268
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$91, -32(%rbp)
	jne	.LBB59_65
# BB#62:                                # %if.then.271
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	read_vector
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB59_64
# BB#63:                                # %if.then.281
	movabsq	$.L.str.106, %rdi
	callq	invalid_syntax
.LBB59_64:                              # %if.end.282
	movq	-296(%rbp), %rdi
	callq	make_byte_code
	movq	-288(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB59_367
.LBB59_65:                              # %if.end.283
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$40, -32(%rbp)
	jne	.LBB59_80
# BB#66:                                # %if.then.286
	leaq	-308(%rbp), %rsi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	read1
	movq	%rax, -304(%rbp)
	cmpl	$0, -308(%rbp)
	jne	.LBB59_68
# BB#67:                                # %lor.lhs.false.293
	movq	-304(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB59_69
.LBB59_68:                              # %if.then.295
	movabsq	$.L.str.97, %rdi
	callq	invalid_syntax
.LBB59_69:                              # %if.end.296
	jmp	.LBB59_70
.LBB59_70:                              # %while.body.298
                                        # =>This Inner Loop Header: Depth=1
	leaq	-308(%rbp), %rsi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	read1
	xorl	%edi, %edi
	movq	%rax, -320(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -336(%rbp)
	movq	%rax, -328(%rbp)
	cmpl	$41, -308(%rbp)
	jne	.LBB59_72
# BB#71:                                # %if.then.306
	jmp	.LBB59_79
.LBB59_72:                              # %if.end.307
                                        #   in Loop: Header=BB59_70 Depth=1
	cmpl	$0, -308(%rbp)
	jne	.LBB59_74
# BB#73:                                # %if.then.310
                                        #   in Loop: Header=BB59_70 Depth=1
	leaq	-308(%rbp), %rsi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	read1
	movq	%rax, -328(%rbp)
.LBB59_74:                              # %if.end.312
                                        #   in Loop: Header=BB59_70 Depth=1
	cmpl	$0, -308(%rbp)
	jne	.LBB59_76
# BB#75:                                # %if.then.315
                                        #   in Loop: Header=BB59_70 Depth=1
	leaq	-308(%rbp), %rsi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	read1
	movq	%rax, -336(%rbp)
.LBB59_76:                              # %if.end.317
                                        #   in Loop: Header=BB59_70 Depth=1
	cmpl	$0, -308(%rbp)
	je	.LBB59_78
# BB#77:                                # %if.then.319
	movabsq	$.L.str.107, %rdi
	callq	invalid_syntax
.LBB59_78:                              # %if.end.320
                                        #   in Loop: Header=BB59_70 Depth=1
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %rsi
	movq	-336(%rbp), %rdx
	movq	-304(%rbp), %rcx
	callq	Fset_text_properties
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB59_70
.LBB59_79:                              # %while.end.322
	movq	-304(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_80:                              # %if.end.323
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$64, -32(%rbp)
	jne	.LBB59_111
# BB#81:                                # %if.then.326
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	$0, -352(%rbp)
	movq	$0, -360(%rbp)
.LBB59_82:                              # %while.cond.331
                                        #   Parent Loop BB59_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -32(%rbp)
	cmpl	$0, %eax
	movb	%dl, -857(%rbp)         # 1-byte Spill
	jl	.LBB59_85
# BB#83:                                # %land.lhs.true.335
                                        #   in Loop: Header=BB59_82 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$48, -32(%rbp)
	movb	%cl, -857(%rbp)         # 1-byte Spill
	jl	.LBB59_85
# BB#84:                                # %land.rhs
                                        #   in Loop: Header=BB59_82 Depth=2
	cmpl	$57, -32(%rbp)
	setle	%al
	movb	%al, -857(%rbp)         # 1-byte Spill
.LBB59_85:                              # %land.end
                                        #   in Loop: Header=BB59_82 Depth=2
	movb	-857(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_86
	jmp	.LBB59_92
.LBB59_86:                              # %while.body.340
                                        #   in Loop: Header=BB59_82 Depth=2
	movabsq	$230584300921369385, %rax # imm = 0x333333333333329
	cmpq	-352(%rbp), %rax
	jg	.LBB59_88
# BB#87:                                # %if.then.343
	callq	string_overflow
.LBB59_88:                              # %if.end.344
                                        #   in Loop: Header=BB59_82 Depth=2
	movq	-360(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -360(%rbp)
	imulq	$10, -352(%rbp), %rax
	movq	%rax, -352(%rbp)
	movl	-32(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rax
	addq	-352(%rbp), %rax
	movq	%rax, -352(%rbp)
	cmpq	$2, -360(%rbp)
	jne	.LBB59_91
# BB#89:                                # %land.lhs.true.352
                                        #   in Loop: Header=BB59_82 Depth=2
	cmpq	$0, -352(%rbp)
	jne	.LBB59_91
# BB#90:                                # %if.then.355
	movq	-16(%rbp), %rdi
	callq	skip_dyn_eof
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_91:                              # %if.end.357
                                        #   in Loop: Header=BB59_82 Depth=2
	jmp	.LBB59_82
.LBB59_92:                              # %while.end.358
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpq	$0, -352(%rbp)
	jle	.LBB59_94
# BB#93:                                # %if.then.361
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	-352(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB59_95
.LBB59_94:                              # %if.else.363
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	unreadchar
.LBB59_95:                              # %if.end.364
                                        #   in Loop: Header=BB59_1 Depth=1
	testb	$1, globals+3405
	je	.LBB59_109
# BB#96:                                # %land.lhs.true.367
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	$486, %edi              # imm = 0x1E6
	movq	-16(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-872(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_98
# BB#97:                                # %lor.lhs.false.371
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	$484, %edi              # imm = 0x1E4
	movq	-16(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-880(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_109
.LBB59_98:                              # %if.then.375
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	saved_doc_string, %rax
	movq	%rax, -368(%rbp)
	movq	saved_doc_string_size, %rax
	movq	%rax, -376(%rbp)
	movq	saved_doc_string_position, %rax
	movq	%rax, -384(%rbp)
	movq	saved_doc_string_length, %rax
	movq	%rax, -392(%rbp)
	movq	prev_saved_doc_string, %rax
	movq	%rax, saved_doc_string
	movq	prev_saved_doc_string_size, %rax
	movq	%rax, saved_doc_string_size
	movq	prev_saved_doc_string_position, %rax
	movq	%rax, saved_doc_string_position
	movq	prev_saved_doc_string_length, %rax
	movq	%rax, saved_doc_string_length
	movq	-368(%rbp), %rax
	movq	%rax, prev_saved_doc_string
	movq	-376(%rbp), %rax
	movq	%rax, prev_saved_doc_string_size
	movq	-384(%rbp), %rax
	movq	%rax, prev_saved_doc_string_position
	movq	-392(%rbp), %rax
	movq	%rax, prev_saved_doc_string_length
	cmpq	$0, saved_doc_string_size
	jne	.LBB59_100
# BB#99:                                # %if.then.382
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	-352(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, saved_doc_string
	movq	-352(%rbp), %rax
	addq	$100, %rax
	movq	%rax, saved_doc_string_size
.LBB59_100:                             # %if.end.386
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	-352(%rbp), %rax
	cmpq	saved_doc_string_size, %rax
	jle	.LBB59_102
# BB#101:                               # %if.then.389
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	saved_doc_string, %rdi
	movq	-352(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, saved_doc_string
	movq	-352(%rbp), %rax
	addq	$100, %rax
	movq	%rax, saved_doc_string_size
.LBB59_102:                             # %if.end.393
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	instream, %rdi
	callq	ftello
	movq	%rax, saved_doc_string_position
	callq	block_input
	movq	$0, -344(%rbp)
.LBB59_103:                             # %for.cond.395
                                        #   Parent Loop BB59_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-344(%rbp), %rdx
	cmpq	-352(%rbp), %rdx
	movb	%cl, -881(%rbp)         # 1-byte Spill
	jge	.LBB59_105
# BB#104:                               # %land.rhs.398
                                        #   in Loop: Header=BB59_103 Depth=2
	cmpl	$0, -32(%rbp)
	setge	%al
	movb	%al, -881(%rbp)         # 1-byte Spill
.LBB59_105:                             # %land.end.401
                                        #   in Loop: Header=BB59_103 Depth=2
	movb	-881(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_106
	jmp	.LBB59_108
.LBB59_106:                             # %for.body.402
                                        #   in Loop: Header=BB59_103 Depth=2
	movq	instream, %rdi
	callq	_IO_getc
	movl	%eax, -32(%rbp)
	movb	%al, %cl
	movq	-344(%rbp), %rdi
	movq	saved_doc_string, %rdx
	movb	%cl, (%rdx,%rdi)
# BB#107:                               # %for.inc.406
                                        #   in Loop: Header=BB59_103 Depth=2
	movq	-344(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB59_103
.LBB59_108:                             # %for.end.408
                                        #   in Loop: Header=BB59_1 Depth=1
	callq	unblock_input
	movq	-344(%rbp), %rax
	movq	%rax, saved_doc_string_length
	jmp	.LBB59_110
.LBB59_109:                             # %if.else.409
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-352(%rbp), %rsi
	callq	skip_dyn_bytes
.LBB59_110:                             # %if.end.410
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_1
.LBB59_111:                             # %if.end.411
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$33, -32(%rbp)
	jne	.LBB59_118
# BB#112:                               # %if.then.414
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_113
.LBB59_113:                             # %while.cond.415
                                        #   Parent Loop BB59_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -32(%rbp)
	movb	%cl, -882(%rbp)         # 1-byte Spill
	je	.LBB59_115
# BB#114:                               # %land.rhs.418
                                        #   in Loop: Header=BB59_113 Depth=2
	cmpl	$0, -32(%rbp)
	setge	%al
	movb	%al, -882(%rbp)         # 1-byte Spill
.LBB59_115:                             # %land.end.421
                                        #   in Loop: Header=BB59_113 Depth=2
	movb	-882(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_116
	jmp	.LBB59_117
.LBB59_116:                             # %while.body.422
                                        #   in Loop: Header=BB59_113 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	jmp	.LBB59_113
.LBB59_117:                             # %while.end.424
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_1
.LBB59_118:                             # %if.end.425
	cmpl	$36, -32(%rbp)
	jne	.LBB59_120
# BB#119:                               # %if.then.428
	movq	globals+1288, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_120:                             # %if.end.429
	cmpl	$39, -32(%rbp)
	jne	.LBB59_122
# BB#121:                               # %if.then.432
	movl	$476, %edi              # imm = 0x1DC
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	read0
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_122:                             # %if.end.436
	cmpl	$58, -32(%rbp)
	jne	.LBB59_129
# BB#123:                               # %if.then.439
	xorl	%eax, %eax
	movl	%eax, %esi
	movb	$1, -33(%rbp)
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$32, -32(%rbp)
	jle	.LBB59_127
# BB#124:                               # %land.lhs.true.443
	cmpl	$160, -32(%rbp)
	je	.LBB59_127
# BB#125:                               # %land.lhs.true.446
	cmpl	$128, -32(%rbp)
	jge	.LBB59_128
# BB#126:                               # %lor.lhs.false.449
	movabsq	$.L.str.108, %rdi
	movl	-32(%rbp), %esi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB59_128
.LBB59_127:                             # %if.then.453
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	unreadchar
	movq	empty_unibyte_string, %rdi
	callq	Fmake_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_128:                             # %if.end.455
	jmp	.LBB59_316
.LBB59_129:                             # %if.end.456
	cmpl	$35, -32(%rbp)
	jne	.LBB59_131
# BB#130:                               # %if.then.459
	xorl	%edi, %edi
	movq	empty_unibyte_string, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_131:                             # %if.end.462
	cmpl	$48, -32(%rbp)
	jl	.LBB59_156
# BB#132:                               # %land.lhs.true.465
	cmpl	$57, -32(%rbp)
	jg	.LBB59_156
# BB#133:                               # %if.then.468
	movq	$0, -400(%rbp)
.LBB59_134:                             # %while.cond.471
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$48, -32(%rbp)
	movb	%cl, -905(%rbp)         # 1-byte Spill
	jl	.LBB59_136
# BB#135:                               # %land.rhs.474
                                        #   in Loop: Header=BB59_134 Depth=1
	cmpl	$57, -32(%rbp)
	setle	%al
	movb	%al, -905(%rbp)         # 1-byte Spill
.LBB59_136:                             # %land.end.477
                                        #   in Loop: Header=BB59_134 Depth=1
	movb	-905(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_137
	jmp	.LBB59_142
.LBB59_137:                             # %while.body.478
                                        #   in Loop: Header=BB59_134 Depth=1
	movabsq	$230584300921369395, %rax # imm = 0x333333333333333
	cmpq	-400(%rbp), %rax
	jl	.LBB59_139
# BB#138:                               # %lor.lhs.false.481
                                        #   in Loop: Header=BB59_134 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	imulq	$10, -400(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	subq	$48, %rcx
	cmpq	%rcx, %rax
	jge	.LBB59_140
.LBB59_139:                             # %if.then.488
                                        #   in Loop: Header=BB59_134 Depth=1
	movabsq	$2305843009213693952, %rax # imm = 0x2000000000000000
	movq	%rax, -400(%rbp)
	jmp	.LBB59_141
.LBB59_140:                             # %if.else.489
                                        #   in Loop: Header=BB59_134 Depth=1
	imulq	$10, -400(%rbp), %rax
	movslq	-32(%rbp), %rcx
	addq	%rcx, %rax
	subq	$48, %rax
	movq	%rax, -400(%rbp)
.LBB59_141:                             # %if.end.494
                                        #   in Loop: Header=BB59_134 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	jmp	.LBB59_134
.LBB59_142:                             # %while.end.496
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -400(%rbp)
	jg	.LBB59_155
# BB#143:                               # %if.then.499
	cmpl	$114, -32(%rbp)
	je	.LBB59_145
# BB#144:                               # %lor.lhs.false.502
	cmpl	$82, -32(%rbp)
	jne	.LBB59_146
.LBB59_145:                             # %if.then.505
	movq	-16(%rbp), %rdi
	movq	-400(%rbp), %rsi
	callq	read_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_146:                             # %if.end.507
	xorl	%edi, %edi
	movq	globals+1944, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-920(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_154
# BB#147:                               # %if.then.511
	cmpl	$61, -32(%rbp)
	jne	.LBB59_149
# BB#148:                               # %if.then.514
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -432(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-432(%rbp), %rcx
	movq	%rax, -424(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -416(%rbp)
	movq	-400(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-416(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rdi
	movq	read_objects, %rsi
	callq	Fcons
	movq	%rax, read_objects
	movq	-16(%rbp), %rdi
	callq	read0
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rdi
	movq	-416(%rbp), %rsi
	callq	substitute_object_in_subtree
	movq	-440(%rbp), %rdi
	movq	-408(%rbp), %rsi
	callq	Fsetcdr
	movq	-408(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB59_367
.LBB59_149:                             # %if.end.531
	cmpl	$35, -32(%rbp)
	jne	.LBB59_153
# BB#150:                               # %if.then.534
	movq	-400(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	read_objects, %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB59_152
# BB#151:                               # %if.then.542
	movq	-408(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_152:                             # %if.end.546
	jmp	.LBB59_153
.LBB59_153:                             # %if.end.547
	jmp	.LBB59_154
.LBB59_154:                             # %if.end.548
	jmp	.LBB59_155
.LBB59_155:                             # %if.end.549
	jmp	.LBB59_168
.LBB59_156:                             # %if.else.550
	cmpl	$120, -32(%rbp)
	je	.LBB59_158
# BB#157:                               # %lor.lhs.false.553
	cmpl	$88, -32(%rbp)
	jne	.LBB59_159
.LBB59_158:                             # %if.then.556
	movl	$16, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	read_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_159:                             # %if.else.558
	cmpl	$111, -32(%rbp)
	je	.LBB59_161
# BB#160:                               # %lor.lhs.false.561
	cmpl	$79, -32(%rbp)
	jne	.LBB59_162
.LBB59_161:                             # %if.then.564
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	read_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_162:                             # %if.else.566
	cmpl	$98, -32(%rbp)
	je	.LBB59_164
# BB#163:                               # %lor.lhs.false.569
	cmpl	$66, -32(%rbp)
	jne	.LBB59_165
.LBB59_164:                             # %if.then.572
	movl	$2, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	read_integer
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_165:                             # %if.end.574
	jmp	.LBB59_166
.LBB59_166:                             # %if.end.575
	jmp	.LBB59_167
.LBB59_167:                             # %if.end.576
	jmp	.LBB59_168
.LBB59_168:                             # %if.end.577
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	unreadchar
	movabsq	$.L.str.97, %rdi
	callq	invalid_syntax
.LBB59_169:                             # %sw.bb.578
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_170
.LBB59_170:                             # %while.cond.579
                                        #   Parent Loop BB59_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -32(%rbp)
	cmpl	$0, %eax
	movb	%dl, -929(%rbp)         # 1-byte Spill
	jl	.LBB59_172
# BB#171:                               # %land.rhs.583
                                        #   in Loop: Header=BB59_170 Depth=2
	cmpl	$10, -32(%rbp)
	setne	%al
	movb	%al, -929(%rbp)         # 1-byte Spill
.LBB59_172:                             # %land.end.586
                                        #   in Loop: Header=BB59_170 Depth=2
	movb	-929(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_173
	jmp	.LBB59_174
.LBB59_173:                             # %while.body.587
                                        #   in Loop: Header=BB59_170 Depth=2
	jmp	.LBB59_170
.LBB59_174:                             # %while.end.588
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_1
.LBB59_175:                             # %sw.bb.589
	movl	$783, %edi              # imm = 0x30F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	read0
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_176:                             # %sw.bb.593
                                        #   in Loop: Header=BB59_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -444(%rbp)
	movq	-16(%rbp), %rdi
	movl	-444(%rbp), %esi
	callq	unreadchar
	testb	$1, new_backquote_flag
	jne	.LBB59_180
# BB#177:                               # %land.lhs.true.597
                                        #   in Loop: Header=BB59_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB59_180
# BB#178:                               # %land.lhs.true.600
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$32, -444(%rbp)
	jne	.LBB59_180
# BB#179:                               # %if.then.603
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1664
	jmp	.LBB59_311
.LBB59_180:                             # %if.else.605
	movb	new_backquote_flag, %al
	andb	$1, %al
	movb	%al, -457(%rbp)
	movb	$1, new_backquote_flag
	movq	-16(%rbp), %rdi
	callq	read0
	movl	$195, %edi
	movq	%rax, -456(%rbp)
	movb	-457(%rbp), %cl
	andb	$1, %cl
	movb	%cl, new_backquote_flag
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_181:                             # %sw.bb.615
                                        #   in Loop: Header=BB59_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -464(%rbp)
	movq	-16(%rbp), %rdi
	movl	-464(%rbp), %esi
	callq	unreadchar
	testb	$1, new_backquote_flag
	jne	.LBB59_185
# BB#182:                               # %lor.lhs.false.621
                                        #   in Loop: Header=BB59_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB59_185
# BB#183:                               # %lor.lhs.false.623
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$32, -464(%rbp)
	je	.LBB59_194
# BB#184:                               # %land.lhs.true.626
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$64, -464(%rbp)
	je	.LBB59_194
.LBB59_185:                             # %if.then.629
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	%rax, -472(%rbp)
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -484(%rbp)
	cmpl	$64, -484(%rbp)
	jne	.LBB59_187
# BB#186:                               # %if.then.639
	movl	$283, %edi              # imm = 0x11B
	callq	builtin_lisp_symbol
	movq	%rax, -472(%rbp)
	jmp	.LBB59_193
.LBB59_187:                             # %if.else.641
	cmpl	$46, -484(%rbp)
	jne	.LBB59_189
# BB#188:                               # %if.then.644
	movl	$284, %edi              # imm = 0x11C
	callq	builtin_lisp_symbol
	movq	%rax, -472(%rbp)
	jmp	.LBB59_192
.LBB59_189:                             # %if.else.646
	cmpl	$0, -484(%rbp)
	jl	.LBB59_191
# BB#190:                               # %if.then.649
	movq	-16(%rbp), %rdi
	movl	-484(%rbp), %esi
	callq	unreadchar
.LBB59_191:                             # %if.end.650
	movl	$282, %edi              # imm = 0x11A
	callq	builtin_lisp_symbol
	movq	%rax, -472(%rbp)
.LBB59_192:                             # %if.end.652
	jmp	.LBB59_193
.LBB59_193:                             # %if.end.653
	movq	-16(%rbp), %rdi
	callq	read0
	movq	%rax, -480(%rbp)
	movq	-472(%rbp), %rdi
	movq	-480(%rbp), %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_194:                             # %if.else.656
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1664
	jmp	.LBB59_311
.LBB59_195:                             # %sw.bb.658
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB59_197
# BB#196:                               # %if.then.666
	callq	end_of_file_error
.LBB59_197:                             # %if.end.667
	cmpl	$32, -32(%rbp)
	je	.LBB59_199
# BB#198:                               # %lor.lhs.false.670
	cmpl	$9, -32(%rbp)
	jne	.LBB59_200
.LBB59_199:                             # %if.then.673
	movslq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_200:                             # %if.end.677
	cmpl	$92, -32(%rbp)
	jne	.LBB59_202
# BB#201:                               # %if.then.680
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_escape
	movl	%eax, -32(%rbp)
.LBB59_202:                             # %if.end.682
	movl	-32(%rbp), %eax
	andl	$264241152, %eax        # imm = 0xFC00000
	movl	%eax, -488(%rbp)
	movl	-32(%rbp), %eax
	andl	$-264241153, %eax       # imm = 0xFFFFFFFFF03FFFFF
	movl	%eax, -32(%rbp)
	cmpl	$4194175, -32(%rbp)     # imm = 0x3FFF7F
	jle	.LBB59_207
# BB#203:                               # %if.then.687
	cmpl	$4194175, -32(%rbp)     # imm = 0x3FFF7F
	jle	.LBB59_205
# BB#204:                               # %cond.true
	movl	-32(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -948(%rbp)        # 4-byte Spill
	jmp	.LBB59_206
.LBB59_205:                             # %cond.false
	movl	-32(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -948(%rbp)        # 4-byte Spill
.LBB59_206:                             # %cond.end
	movl	-948(%rbp), %eax        # 4-byte Reload
	movl	%eax, -32(%rbp)
.LBB59_207:                             # %if.end.692
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-488(%rbp), %eax
	orl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	readchar
	movb	$1, %cl
	movl	%eax, -492(%rbp)
	cmpl	$32, -492(%rbp)
	movb	%cl, -949(%rbp)         # 1-byte Spill
	jle	.LBB59_211
# BB#208:                               # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$128, -492(%rbp)
	movb	%cl, -950(%rbp)         # 1-byte Spill
	jge	.LBB59_210
# BB#209:                               # %land.rhs.699
	movabsq	$.L.str.109, %rdi
	movl	-492(%rbp), %esi
	callq	strchr
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -950(%rbp)         # 1-byte Spill
.LBB59_210:                             # %land.end.703
	movb	-950(%rbp), %al         # 1-byte Reload
	movb	%al, -949(%rbp)         # 1-byte Spill
.LBB59_211:                             # %lor.end
	movb	-949(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -493(%rbp)
	movq	-16(%rbp), %rdi
	movl	-492(%rbp), %esi
	callq	unreadchar
	testb	$1, -493(%rbp)
	je	.LBB59_213
# BB#212:                               # %if.then.706
	movslq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_213:                             # %if.end.710
	movabsq	$.L.str.110, %rdi
	callq	invalid_syntax
.LBB59_214:                             # %sw.bb.711
	movq	read_buffer, %rax
	movq	%rax, -504(%rbp)
	movq	read_buffer, %rax
	addq	read_buffer_size, %rax
	movq	%rax, -512(%rbp)
	movb	$0, -517(%rbp)
	movb	$0, -518(%rbp)
	movb	$0, -519(%rbp)
	movq	$0, -528(%rbp)
.LBB59_215:                             # %while.cond.721
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -516(%rbp)
	cmpl	$0, %eax
	movb	%dl, -951(%rbp)         # 1-byte Spill
	jl	.LBB59_217
# BB#216:                               # %land.rhs.725
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$34, -516(%rbp)
	setne	%al
	movb	%al, -951(%rbp)         # 1-byte Spill
.LBB59_217:                             # %land.end.728
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	-951(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_218
	jmp	.LBB59_293
.LBB59_218:                             # %while.body.729
                                        #   in Loop: Header=BB59_215 Depth=1
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$5, %rax
	jge	.LBB59_220
# BB#219:                               # %if.then.732
                                        #   in Loop: Header=BB59_215 Depth=1
	movq	-504(%rbp), %rax
	movq	read_buffer, %rcx
	subq	%rcx, %rax
	movq	%rax, -536(%rbp)
	callq	grow_read_buffer
	movq	read_buffer, %rax
	addq	-536(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	read_buffer, %rax
	addq	read_buffer_size, %rax
	movq	%rax, -512(%rbp)
.LBB59_220:                             # %if.end.739
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$92, -516(%rbp)
	jne	.LBB59_269
# BB#221:                               # %if.then.742
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	read_escape
	movl	%eax, -516(%rbp)
	cmpl	$-1, -516(%rbp)
	jne	.LBB59_225
# BB#222:                               # %if.then.748
                                        #   in Loop: Header=BB59_215 Depth=1
	movq	-504(%rbp), %rax
	cmpq	read_buffer, %rax
	jne	.LBB59_224
# BB#223:                               # %if.then.751
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, -519(%rbp)
.LBB59_224:                             # %if.end.752
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_215
.LBB59_225:                             # %if.end.753
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	andl	$264241152, %eax        # imm = 0xFC00000
	movl	%eax, -540(%rbp)
	movl	-516(%rbp), %eax
	andl	$-264241153, %eax       # imm = 0xFFFFFFFFF03FFFFF
	movl	%eax, -516(%rbp)
	cmpl	$4194175, -516(%rbp)    # imm = 0x3FFF7F
	jle	.LBB59_227
# BB#226:                               # %if.then.758
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, -518(%rbp)
	jmp	.LBB59_251
.LBB59_227:                             # %if.else.759
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_228
	jmp	.LBB59_229
.LBB59_228:                             # %cond.true.760
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB59_231
	jmp	.LBB59_230
.LBB59_229:                             # %cond.false.764
                                        #   in Loop: Header=BB59_215 Depth=1
	movslq	-516(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB59_231
.LBB59_230:                             # %if.then.769
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, -517(%rbp)
	jmp	.LBB59_250
.LBB59_231:                             # %if.else.770
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$67108864, -540(%rbp)   # imm = 0x4000000
	jne	.LBB59_238
# BB#232:                               # %if.then.773
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$32, -516(%rbp)
	jne	.LBB59_234
# BB#233:                               # %if.then.776
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$0, -516(%rbp)
	movl	$0, -540(%rbp)
	jmp	.LBB59_237
.LBB59_234:                             # %if.else.777
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$63, -516(%rbp)
	jne	.LBB59_236
# BB#235:                               # %if.then.780
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$127, -516(%rbp)
	movl	$0, -540(%rbp)
.LBB59_236:                             # %if.end.781
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_237
.LBB59_237:                             # %if.end.782
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_238
.LBB59_238:                             # %if.end.783
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-540(%rbp), %eax
	andl	$33554432, %eax         # imm = 0x2000000
	cmpl	$0, %eax
	je	.LBB59_247
# BB#239:                               # %if.then.786
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$65, -516(%rbp)
	jl	.LBB59_242
# BB#240:                               # %land.lhs.true.789
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$90, -516(%rbp)
	jg	.LBB59_242
# BB#241:                               # %if.then.792
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-540(%rbp), %eax
	andl	$-33554433, %eax        # imm = 0xFFFFFFFFFDFFFFFF
	movl	%eax, -540(%rbp)
	jmp	.LBB59_246
.LBB59_242:                             # %if.else.794
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$97, -516(%rbp)
	jl	.LBB59_245
# BB#243:                               # %land.lhs.true.797
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$122, -516(%rbp)
	jg	.LBB59_245
# BB#244:                               # %if.then.800
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -516(%rbp)
	movl	-540(%rbp), %eax
	andl	$-33554433, %eax        # imm = 0xFFFFFFFFFDFFFFFF
	movl	%eax, -540(%rbp)
.LBB59_245:                             # %if.end.803
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_246
.LBB59_246:                             # %if.end.804
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_247
.LBB59_247:                             # %if.end.805
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-540(%rbp), %eax
	andl	$134217728, %eax        # imm = 0x8000000
	cmpl	$0, %eax
	je	.LBB59_249
# BB#248:                               # %if.then.808
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-540(%rbp), %eax
	andl	$-134217729, %eax       # imm = 0xFFFFFFFFF7FFFFFF
	movl	%eax, -540(%rbp)
	movl	-516(%rbp), %eax
	orl	$128, %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -516(%rbp)
	movb	$1, -518(%rbp)
.LBB59_249:                             # %if.end.812
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_250
.LBB59_250:                             # %if.end.813
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_251
.LBB59_251:                             # %if.end.814
                                        #   in Loop: Header=BB59_215 Depth=1
	cmpl	$0, -540(%rbp)
	je	.LBB59_253
# BB#252:                               # %if.then.816
	movabsq	$.L.str.111, %rdi
	movb	$0, %al
	callq	error
.LBB59_253:                             # %if.end.817
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_254
	jmp	.LBB59_255
.LBB59_254:                             # %cond.true.818
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB59_256
	jmp	.LBB59_257
.LBB59_255:                             # %cond.false.822
                                        #   in Loop: Header=BB59_215 Depth=1
	movslq	-516(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB59_257
.LBB59_256:                             # %cond.true.827
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$1, %eax
	movl	-516(%rbp), %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -956(%rbp)        # 4-byte Spill
	jmp	.LBB59_268
.LBB59_257:                             # %cond.false.830
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_258
	jmp	.LBB59_259
.LBB59_258:                             # %cond.true.831
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB59_260
	jmp	.LBB59_261
.LBB59_259:                             # %cond.false.835
                                        #   in Loop: Header=BB59_215 Depth=1
	movslq	-516(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB59_261
.LBB59_260:                             # %cond.true.840
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$2, %eax
	movl	-516(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-516(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -960(%rbp)        # 4-byte Spill
	jmp	.LBB59_267
.LBB59_261:                             # %cond.false.849
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_262
	jmp	.LBB59_263
.LBB59_262:                             # %cond.true.850
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB59_264
	jmp	.LBB59_265
.LBB59_263:                             # %cond.false.854
                                        #   in Loop: Header=BB59_215 Depth=1
	movslq	-516(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB59_265
.LBB59_264:                             # %cond.true.859
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$3, %eax
	movl	-516(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-516(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-516(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -964(%rbp)        # 4-byte Spill
	jmp	.LBB59_266
.LBB59_265:                             # %cond.false.873
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %edi
	movq	-504(%rbp), %rsi
	callq	char_string
	movl	%eax, -964(%rbp)        # 4-byte Spill
.LBB59_266:                             # %cond.end.875
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-964(%rbp), %eax        # 4-byte Reload
	movl	%eax, -960(%rbp)        # 4-byte Spill
.LBB59_267:                             # %cond.end.877
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-960(%rbp), %eax        # 4-byte Reload
	movl	%eax, -956(%rbp)        # 4-byte Spill
.LBB59_268:                             # %cond.end.879
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	movq	-504(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -504(%rbp)
	jmp	.LBB59_292
.LBB59_269:                             # %if.else.882
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_270
	jmp	.LBB59_271
.LBB59_270:                             # %cond.true.883
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB59_272
	jmp	.LBB59_273
.LBB59_271:                             # %cond.false.887
                                        #   in Loop: Header=BB59_215 Depth=1
	movslq	-516(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB59_273
.LBB59_272:                             # %cond.true.892
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$1, %eax
	movl	-516(%rbp), %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -968(%rbp)        # 4-byte Spill
	jmp	.LBB59_284
.LBB59_273:                             # %cond.false.895
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_274
	jmp	.LBB59_275
.LBB59_274:                             # %cond.true.896
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB59_276
	jmp	.LBB59_277
.LBB59_275:                             # %cond.false.900
                                        #   in Loop: Header=BB59_215 Depth=1
	movslq	-516(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB59_277
.LBB59_276:                             # %cond.true.905
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$2, %eax
	movl	-516(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-516(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -972(%rbp)        # 4-byte Spill
	jmp	.LBB59_283
.LBB59_277:                             # %cond.false.914
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_278
	jmp	.LBB59_279
.LBB59_278:                             # %cond.true.915
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB59_280
	jmp	.LBB59_281
.LBB59_279:                             # %cond.false.919
                                        #   in Loop: Header=BB59_215 Depth=1
	movslq	-516(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB59_281
.LBB59_280:                             # %cond.true.924
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	$3, %eax
	movl	-516(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-516(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-516(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-504(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -976(%rbp)        # 4-byte Spill
	jmp	.LBB59_282
.LBB59_281:                             # %cond.false.938
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %edi
	movq	-504(%rbp), %rsi
	callq	char_string
	movl	%eax, -976(%rbp)        # 4-byte Spill
.LBB59_282:                             # %cond.end.940
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-976(%rbp), %eax        # 4-byte Reload
	movl	%eax, -972(%rbp)        # 4-byte Spill
.LBB59_283:                             # %cond.end.942
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-972(%rbp), %eax        # 4-byte Reload
	movl	%eax, -968(%rbp)        # 4-byte Spill
.LBB59_284:                             # %cond.end.944
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-968(%rbp), %eax        # 4-byte Reload
	movq	-504(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -504(%rbp)
	cmpl	$4194175, -516(%rbp)    # imm = 0x3FFF7F
	jle	.LBB59_286
# BB#285:                               # %if.then.950
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, -518(%rbp)
	jmp	.LBB59_291
.LBB59_286:                             # %if.else.951
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_287
	jmp	.LBB59_288
.LBB59_287:                             # %cond.true.952
                                        #   in Loop: Header=BB59_215 Depth=1
	movl	-516(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB59_290
	jmp	.LBB59_289
.LBB59_288:                             # %cond.false.956
                                        #   in Loop: Header=BB59_215 Depth=1
	movslq	-516(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB59_290
.LBB59_289:                             # %if.then.961
                                        #   in Loop: Header=BB59_215 Depth=1
	movb	$1, -517(%rbp)
.LBB59_290:                             # %if.end.962
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_291
.LBB59_291:                             # %if.end.963
                                        #   in Loop: Header=BB59_215 Depth=1
	jmp	.LBB59_292
.LBB59_292:                             # %if.end.964
                                        #   in Loop: Header=BB59_215 Depth=1
	movq	-528(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -528(%rbp)
	jmp	.LBB59_215
.LBB59_293:                             # %while.end.966
	cmpl	$0, -516(%rbp)
	jge	.LBB59_295
# BB#294:                               # %if.then.969
	callq	end_of_file_error
.LBB59_295:                             # %if.end.970
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-984(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_299
# BB#296:                               # %land.lhs.true.974
	xorl	%edi, %edi
	movq	globals+584, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-992(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_299
# BB#297:                               # %land.lhs.true.978
	testb	$1, -519(%rbp)
	je	.LBB59_299
# BB#298:                               # %if.then.981
	movq	$2, -8(%rbp)
	jmp	.LBB59_367
.LBB59_299:                             # %if.end.982
	testb	$1, -517(%rbp)
	jne	.LBB59_302
# BB#300:                               # %land.lhs.true.984
	testb	$1, -518(%rbp)
	je	.LBB59_302
# BB#301:                               # %if.then.987
	movq	read_buffer, %rdi
	movq	-504(%rbp), %rax
	movq	read_buffer, %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	str_as_unibyte
	movq	%rax, -528(%rbp)
	movq	read_buffer, %rax
	addq	-528(%rbp), %rax
	movq	%rax, -504(%rbp)
.LBB59_302:                             # %if.end.993
	movb	$1, %al
	movq	read_buffer, %rdi
	movq	-528(%rbp), %rsi
	movq	-504(%rbp), %rcx
	movq	read_buffer, %rdx
	subq	%rdx, %rcx
	testb	$1, -517(%rbp)
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rsi, -1016(%rbp)       # 8-byte Spill
	movb	%al, -1017(%rbp)        # 1-byte Spill
	jne	.LBB59_304
# BB#303:                               # %lor.rhs.999
	movq	-504(%rbp), %rax
	movq	read_buffer, %rcx
	subq	%rcx, %rax
	cmpq	-528(%rbp), %rax
	setne	%dl
	movb	%dl, -1017(%rbp)        # 1-byte Spill
.LBB59_304:                             # %lor.end.1005
	movb	-1017(%rbp), %al        # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	movq	-1000(%rbp), %rdx       # 8-byte Reload
	callq	make_specified_string
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_305:                             # %sw.bb.1007
                                        #   in Loop: Header=BB59_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -544(%rbp)
	movq	-16(%rbp), %rdi
	movl	-544(%rbp), %esi
	callq	unreadchar
	cmpl	$32, -544(%rbp)
	jle	.LBB59_308
# BB#306:                               # %lor.lhs.false.1013
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$128, -544(%rbp)
	jge	.LBB59_309
# BB#307:                               # %land.lhs.true.1016
                                        #   in Loop: Header=BB59_1 Depth=1
	movabsq	$.L.str.112, %rdi
	movl	-544(%rbp), %esi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB59_309
.LBB59_308:                             # %if.then.1020
	xorl	%edi, %edi
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_309:                             # %if.end.1022
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_310
.LBB59_310:                             # %sw.default
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_311
.LBB59_311:                             # %default_label
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$32, -32(%rbp)
	jg	.LBB59_313
# BB#312:                               # %if.then.1025
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_1
.LBB59_313:                             # %if.end.1026
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$160, -32(%rbp)
	jne	.LBB59_315
# BB#314:                               # %if.then.1029
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_1
.LBB59_315:                             # %if.end.1030
	jmp	.LBB59_316
.LBB59_316:                             # %read_symbol
	movq	read_buffer, %rax
	movq	%rax, -552(%rbp)
	movb	$0, -553(%rbp)
	movq	readchar_count, %rax
	subq	$1, %rax
	movq	%rax, -568(%rbp)
	movq	read_buffer, %rax
	addq	read_buffer_size, %rax
	movq	%rax, -576(%rbp)
.LBB59_317:                             # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-576(%rbp), %rax
	movq	-552(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$5, %rax
	jge	.LBB59_319
# BB#318:                               # %if.then.1044
                                        #   in Loop: Header=BB59_317 Depth=1
	movq	-552(%rbp), %rax
	movq	read_buffer, %rcx
	subq	%rcx, %rax
	movq	%rax, -584(%rbp)
	callq	grow_read_buffer
	movq	read_buffer, %rax
	addq	-584(%rbp), %rax
	movq	%rax, -552(%rbp)
	movq	read_buffer, %rax
	addq	read_buffer_size, %rax
	movq	%rax, -576(%rbp)
.LBB59_319:                             # %if.end.1052
                                        #   in Loop: Header=BB59_317 Depth=1
	cmpl	$92, -32(%rbp)
	jne	.LBB59_323
# BB#320:                               # %if.then.1055
                                        #   in Loop: Header=BB59_317 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
	cmpl	$-1, -32(%rbp)
	jne	.LBB59_322
# BB#321:                               # %if.then.1059
	callq	end_of_file_error
.LBB59_322:                             # %if.end.1060
                                        #   in Loop: Header=BB59_317 Depth=1
	movb	$1, -553(%rbp)
.LBB59_323:                             # %if.end.1061
                                        #   in Loop: Header=BB59_317 Depth=1
	testb	$1, -34(%rbp)
	je	.LBB59_340
# BB#324:                               # %if.then.1063
                                        #   in Loop: Header=BB59_317 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_325
	jmp	.LBB59_326
.LBB59_325:                             # %cond.true.1064
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB59_327
	jmp	.LBB59_328
.LBB59_326:                             # %cond.false.1068
                                        #   in Loop: Header=BB59_317 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB59_328
.LBB59_327:                             # %cond.true.1073
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	$1, %eax
	movl	-32(%rbp), %ecx
	movb	%cl, %dl
	movq	-552(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -1024(%rbp)       # 4-byte Spill
	jmp	.LBB59_339
.LBB59_328:                             # %cond.false.1076
                                        #   in Loop: Header=BB59_317 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_329
	jmp	.LBB59_330
.LBB59_329:                             # %cond.true.1077
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB59_331
	jmp	.LBB59_332
.LBB59_330:                             # %cond.false.1081
                                        #   in Loop: Header=BB59_317 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB59_332
.LBB59_331:                             # %cond.true.1086
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-552(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-32(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-552(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	jmp	.LBB59_338
.LBB59_332:                             # %cond.false.1095
                                        #   in Loop: Header=BB59_317 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB59_333
	jmp	.LBB59_334
.LBB59_333:                             # %cond.true.1096
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB59_335
	jmp	.LBB59_336
.LBB59_334:                             # %cond.false.1100
                                        #   in Loop: Header=BB59_317 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB59_336
.LBB59_335:                             # %cond.true.1105
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	$3, %eax
	movl	-32(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-552(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-32(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-552(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-32(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-552(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -1032(%rbp)       # 4-byte Spill
	jmp	.LBB59_337
.LBB59_336:                             # %cond.false.1119
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	-32(%rbp), %edi
	movq	-552(%rbp), %rsi
	callq	char_string
	movl	%eax, -1032(%rbp)       # 4-byte Spill
.LBB59_337:                             # %cond.end.1121
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	-1032(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1028(%rbp)       # 4-byte Spill
.LBB59_338:                             # %cond.end.1123
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	-1028(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1024(%rbp)       # 4-byte Spill
.LBB59_339:                             # %cond.end.1125
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	-1024(%rbp), %eax       # 4-byte Reload
	movq	-552(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -552(%rbp)
	jmp	.LBB59_341
.LBB59_340:                             # %if.else.1129
                                        #   in Loop: Header=BB59_317 Depth=1
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movq	-552(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -552(%rbp)
	movb	%cl, (%rdx)
.LBB59_341:                             # %if.end.1131
                                        #   in Loop: Header=BB59_317 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -32(%rbp)
# BB#342:                               # %do.cond
                                        #   in Loop: Header=BB59_317 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -32(%rbp)
	movb	%cl, -1033(%rbp)        # 1-byte Spill
	jle	.LBB59_347
# BB#343:                               # %land.lhs.true.1135
                                        #   in Loop: Header=BB59_317 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$160, -32(%rbp)
	movb	%cl, -1033(%rbp)        # 1-byte Spill
	je	.LBB59_347
# BB#344:                               # %land.rhs.1138
                                        #   in Loop: Header=BB59_317 Depth=1
	movb	$1, %al
	cmpl	$128, -32(%rbp)
	movb	%al, -1034(%rbp)        # 1-byte Spill
	jge	.LBB59_346
# BB#345:                               # %lor.rhs.1141
                                        #   in Loop: Header=BB59_317 Depth=1
	movabsq	$.L.str.108, %rdi
	movl	-32(%rbp), %esi
	callq	strchr
	cmpq	$0, %rax
	sete	%cl
	movb	%cl, -1034(%rbp)        # 1-byte Spill
.LBB59_346:                             # %lor.end.1145
                                        #   in Loop: Header=BB59_317 Depth=1
	movb	-1034(%rbp), %al        # 1-byte Reload
	movb	%al, -1033(%rbp)        # 1-byte Spill
.LBB59_347:                             # %land.end.1146
                                        #   in Loop: Header=BB59_317 Depth=1
	movb	-1033(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_317
# BB#348:                               # %do.end
	movq	-552(%rbp), %rax
	cmpq	-576(%rbp), %rax
	jne	.LBB59_350
# BB#349:                               # %if.then.1149
	movq	-552(%rbp), %rax
	movq	read_buffer, %rcx
	subq	%rcx, %rax
	movq	%rax, -592(%rbp)
	callq	grow_read_buffer
	movq	read_buffer, %rax
	addq	-592(%rbp), %rax
	movq	%rax, -552(%rbp)
	movq	read_buffer, %rax
	addq	read_buffer_size, %rax
	movq	%rax, -576(%rbp)
.LBB59_350:                             # %if.end.1157
	movq	-552(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	unreadchar
	testb	$1, -553(%rbp)
	jne	.LBB59_355
# BB#351:                               # %land.lhs.true.1159
	testb	$1, -33(%rbp)
	jne	.LBB59_355
# BB#352:                               # %if.then.1161
	movl	$10, %esi
	xorl	%edx, %edx
	movq	read_buffer, %rdi
	callq	string_to_number
	xorl	%edi, %edi
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_354
# BB#353:                               # %if.then.1167
	movq	-600(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_367
.LBB59_354:                             # %if.end.1168
	jmp	.LBB59_355
.LBB59_355:                             # %if.end.1169
	movq	-552(%rbp), %rax
	movq	read_buffer, %rcx
	subq	%rcx, %rax
	movq	%rax, -624(%rbp)
	testb	$1, -34(%rbp)
	je	.LBB59_357
# BB#356:                               # %cond.true.1181
	movq	read_buffer, %rdi
	movq	-624(%rbp), %rsi
	callq	multibyte_chars_in_text
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB59_358
.LBB59_357:                             # %cond.false.1183
	movq	-624(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB59_358:                             # %cond.end.1184
	movq	-1056(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -632(%rbp)
	testb	$1, -33(%rbp)
	movb	%dl, -1057(%rbp)        # 1-byte Spill
	je	.LBB59_360
# BB#359:                               # %land.rhs.1188
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -1057(%rbp)        # 1-byte Spill
.LBB59_360:                             # %land.end.1192
	movb	-1057(%rbp), %al        # 1-byte Reload
	movabsq	$make_specified_string, %rcx
	movabsq	$make_pure_string, %rdx
	testb	$1, %al
	cmovneq	%rdx, %rcx
	movq	read_buffer, %rdi
	movq	-632(%rbp), %rsi
	movq	-624(%rbp), %rdx
	movb	-34(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r8d
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movq	-1080(%rbp), %r9        # 8-byte Reload
	callq	*%r9
	movq	%rax, -608(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB59_362
# BB#361:                               # %cond.true.1198
	movq	-608(%rbp), %rdi
	callq	Fmake_symbol
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB59_363
.LBB59_362:                             # %cond.false.1200
	xorl	%edi, %edi
	movq	-608(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB59_363:                             # %cond.end.1203
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -616(%rbp)
	movq	globals+1976, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_365
# BB#364:                               # %lor.lhs.false.1208
	movq	globals+1976, %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB59_366
.LBB59_365:                             # %if.then.1211
	movq	-616(%rbp), %rdi
	movq	-568(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fcons
	movq	globals+1968, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+1968
.LBB59_366:                             # %if.end.1216
	movq	-616(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB59_367:                             # %return
	movq	-8(%rbp), %rax
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbp
	retq
.Lfunc_end59:
	.size	read1, .Lfunc_end59-read1
	.cfi_endproc

	.align	16, 0x90
	.type	invalid_syntax,@function
invalid_syntax:                         # @invalid_syntax
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
	subq	$16, %rsp
	movl	$571, %eax              # imm = 0x23B
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.Lfunc_end60:
	.size	invalid_syntax, .Lfunc_end60-invalid_syntax
	.cfi_endproc

	.align	16, 0x90
	.type	read0,@function
read0:                                  # @read0
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
	subq	$32, %rsp
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	read1
	movq	%rax, -16(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB61_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB61_2:                               # %if.end
	movl	$571, %edi              # imm = 0x23B
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	Fmake_string
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.Lfunc_end61:
	.size	read0, .Lfunc_end61-read0
	.cfi_endproc

	.align	16, 0x90
	.type	end_of_file_error,@function
end_of_file_error:                      # @end_of_file_error
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
	movq	globals+1288, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB62_1
	jmp	.LBB62_2
.LBB62_1:                               # %if.then
	movl	$367, %edi              # imm = 0x16F
	callq	builtin_lisp_symbol
	movq	globals+1288, %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB62_2:                               # %if.end
	movl	$367, %edi              # imm = 0x16F
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.Lfunc_end62:
	.size	end_of_file_error, .Lfunc_end62-end_of_file_error
	.cfi_endproc

	.align	16, 0x90
	.type	read_vector,@function
read_vector:                            # @read_vector
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
	subq	$160, %rsp
	movb	%sil, %al
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, %edi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	read_list
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	Flength
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
.LBB63_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB63_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	Fcar
	movq	%rax, -56(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB63_29
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB63_1 Depth=1
	testb	$1, globals+3405
	je	.LBB63_29
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB63_1 Depth=1
	cmpq	$1, -24(%rbp)
	jne	.LBB63_8
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB63_7
# BB#6:                                 # %if.then.11
	movabsq	$.L.str.113, %rdi
	movb	$0, %al
	callq	error
.LBB63_7:                               # %if.end
                                        #   in Loop: Header=BB63_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	jmp	.LBB63_28
.LBB63_8:                               # %if.else
                                        #   in Loop: Header=BB63_1 Depth=1
	cmpq	$2, -24(%rbp)
	jne	.LBB63_19
# BB#9:                                 # %if.then.14
                                        #   in Loop: Header=BB63_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_18
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	STRING_SET_CHARS
# BB#11:                                # %do.body
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	XSTRING
	cmpq	$0, (%rax)
	jne	.LBB63_13
# BB#12:                                # %if.then.22
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	empty_unibyte_string, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB63_14
.LBB63_13:                              # %if.else.23
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	XSTRING
	movq	$-1, 8(%rax)
.LBB63_14:                              # %if.end.25
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_15
.LBB63_15:                              # %do.end
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-88(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	Fread
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB63_17
# BB#16:                                # %if.then.30
	movabsq	$.L.str.113, %rdi
	movb	$0, %al
	callq	error
.LBB63_17:                              # %if.end.31
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rdi
	callq	free_cons
.LBB63_18:                              # %if.end.34
                                        #   in Loop: Header=BB63_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rdx
	callq	ASET
	jmp	.LBB63_27
.LBB63_19:                              # %if.else.35
                                        #   in Loop: Header=BB63_1 Depth=1
	cmpq	$4, -24(%rbp)
	jne	.LBB63_26
# BB#20:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB63_21
	jmp	.LBB63_26
.LBB63_21:                              # %land.lhs.true.41
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB63_26
# BB#22:                                # %if.then.43
                                        #   in Loop: Header=BB63_1 Depth=1
	movl	$484, %edi              # imm = 0x1E4
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_24
# BB#23:                                # %if.then.47
                                        #   in Loop: Header=BB63_1 Depth=1
	movl	$361, %edi              # imm = 0x169
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fdecode_coding_string
	movq	%rax, -56(%rbp)
	jmp	.LBB63_25
.LBB63_24:                              # %if.else.52
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	Fstring_as_multibyte
	movq	%rax, -56(%rbp)
.LBB63_25:                              # %if.end.54
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_26
.LBB63_26:                              # %if.end.55
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_27
.LBB63_27:                              # %if.end.56
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_28
.LBB63_28:                              # %if.end.57
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_29
.LBB63_29:                              # %if.end.58
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	ASET
	movq	-48(%rbp), %rdx
	subq	$3, %rdx
	movq	%rdx, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rdi
	callq	free_cons
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB63_1
.LBB63_31:                              # %for.end
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	read_vector, .Lfunc_end63-read_vector
	.cfi_endproc

	.align	16, 0x90
	.type	skip_dyn_eof,@function
skip_dyn_eof:                           # @skip_dyn_eof
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
	subq	$32, %rsp
	movl	$486, %eax              # imm = 0x1E6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB64_2
# BB#1:                                 # %lor.lhs.false
	movl	$484, %edi              # imm = 0x1E4
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB64_3
.LBB64_2:                               # %if.then
	callq	block_input
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	instream, %rdi
	callq	fseek
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	unblock_input
	jmp	.LBB64_7
.LBB64_3:                               # %if.else
	jmp	.LBB64_4
.LBB64_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	readchar
	cmpl	$0, %eax
	jl	.LBB64_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB64_4 Depth=1
	jmp	.LBB64_4
.LBB64_6:                               # %while.end
	jmp	.LBB64_7
.LBB64_7:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	skip_dyn_eof, .Lfunc_end64-skip_dyn_eof
	.cfi_endproc

	.align	16, 0x90
	.type	skip_dyn_bytes,@function
skip_dyn_bytes:                         # @skip_dyn_bytes
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
	subq	$48, %rsp
	movl	$486, %eax              # imm = 0x1E6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB65_2
# BB#1:                                 # %lor.lhs.false
	movl	$484, %edi              # imm = 0x1E4
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_3
.LBB65_2:                               # %if.then
	callq	block_input
	movl	$1, %edx
	movq	instream, %rdi
	movq	-16(%rbp), %rsi
	callq	fseek
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	unblock_input
	jmp	.LBB65_9
.LBB65_3:                               # %if.else
	jmp	.LBB65_4
.LBB65_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	readchar
	movl	%eax, -20(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB65_4 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -45(%rbp)          # 1-byte Spill
	jl	.LBB65_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB65_4 Depth=1
	cmpl	$31, -20(%rbp)
	setne	%al
	movb	%al, -45(%rbp)          # 1-byte Spill
.LBB65_7:                               # %land.end
                                        #   in Loop: Header=BB65_4 Depth=1
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB65_4
# BB#8:                                 # %do.end
	jmp	.LBB65_9
.LBB65_9:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	skip_dyn_bytes, .Lfunc_end65-skip_dyn_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	read_integer,@function
read_integer:                           # @read_integer
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -100(%rbp)
	cmpq	$2, -16(%rbp)
	jl	.LBB66_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$36, -16(%rbp)
	jle	.LBB66_3
.LBB66_2:                               # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB66_22
.LBB66_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-96(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-8(%rbp), %rdi
	callq	readchar
	movl	%eax, -116(%rbp)
	cmpl	$45, -116(%rbp)
	je	.LBB66_5
# BB#4:                                 # %lor.lhs.false.3
	cmpl	$43, -116(%rbp)
	jne	.LBB66_6
.LBB66_5:                               # %if.then.5
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-116(%rbp), %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -112(%rbp)
	movb	%cl, (%rdx)
	movq	-8(%rbp), %rdi
	callq	readchar
	movl	%eax, -116(%rbp)
.LBB66_6:                               # %if.end
	cmpl	$48, -116(%rbp)
	jne	.LBB66_11
# BB#7:                                 # %if.then.9
	movl	-116(%rbp), %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -112(%rbp)
	movb	%cl, (%rdx)
	movl	$1, -100(%rbp)
.LBB66_8:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	readchar
	movl	%eax, -116(%rbp)
# BB#9:                                 # %do.cond
                                        #   in Loop: Header=BB66_8 Depth=1
	cmpl	$48, -116(%rbp)
	je	.LBB66_8
# BB#10:                                # %do.end
	jmp	.LBB66_11
.LBB66_11:                              # %if.end.15
	jmp	.LBB66_12
.LBB66_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	digit_to_number
	movl	%eax, -120(%rbp)
	cmpl	$-1, %eax
	jl	.LBB66_21
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB66_12 Depth=1
	cmpl	$-1, -120(%rbp)
	jne	.LBB66_15
# BB#14:                                # %if.then.22
                                        #   in Loop: Header=BB66_12 Depth=1
	movl	$0, -100(%rbp)
.LBB66_15:                              # %if.end.23
                                        #   in Loop: Header=BB66_12 Depth=1
	cmpl	$0, -100(%rbp)
	jge	.LBB66_17
# BB#16:                                # %if.then.26
                                        #   in Loop: Header=BB66_12 Depth=1
	movl	$1, -100(%rbp)
.LBB66_17:                              # %if.end.27
                                        #   in Loop: Header=BB66_12 Depth=1
	leaq	-96(%rbp), %rax
	movq	-112(%rbp), %rcx
	addq	$67, %rax
	addq	$-1, %rax
	cmpq	%rax, %rcx
	jae	.LBB66_19
# BB#18:                                # %if.then.32
                                        #   in Loop: Header=BB66_12 Depth=1
	movl	-116(%rbp), %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -112(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB66_20
.LBB66_19:                              # %if.else.35
                                        #   in Loop: Header=BB66_12 Depth=1
	movl	$0, -100(%rbp)
.LBB66_20:                              # %if.end.36
                                        #   in Loop: Header=BB66_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	readchar
	movl	%eax, -116(%rbp)
	jmp	.LBB66_12
.LBB66_21:                              # %while.end
	movq	-8(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	unreadchar
	movq	-112(%rbp), %rdi
	movb	$0, (%rdi)
.LBB66_22:                              # %if.end.38
	cmpl	$0, -100(%rbp)
	jne	.LBB66_24
# BB#23:                                # %if.then.39
	movabsq	$.L.str.114, %rsi
	leaq	-96(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-96(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	invalid_syntax
.LBB66_24:                              # %if.end.43
	xorl	%edx, %edx
	leaq	-96(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	string_to_number
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	read_integer, .Lfunc_end66-read_integer
	.cfi_endproc

	.align	16, 0x90
	.type	substitute_object_in_subtree,@function
substitute_object_in_subtree:           # @substitute_object_in_subtree
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, seen_list
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	substitute_object_recurse
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, seen_list
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB67_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.115, %rdi
	movb	$0, %al
	callq	error
.LBB67_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	substitute_object_in_subtree, .Lfunc_end67-substitute_object_in_subtree
	.cfi_endproc

	.align	16, 0x90
	.type	read_escape,@function
read_escape:                            # @read_escape
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
	subq	$160, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	readchar
	movl	%eax, -24(%rbp)
	movl	$4, -28(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	subl	$-1, %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB68_1
	jmp	.LBB68_113
.LBB68_113:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB68_11
	jmp	.LBB68_114
.LBB68_114:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB68_12
	jmp	.LBB68_115
.LBB68_115:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	addl	$-48, %eax
	subl	$8, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jb	.LBB68_59
	jmp	.LBB68_116
.LBB68_116:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$65, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB68_30
	jmp	.LBB68_117
.LBB68_117:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB68_41
	jmp	.LBB68_118
.LBB68_118:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB68_25
	jmp	.LBB68_119
.LBB68_119:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB68_15
	jmp	.LBB68_120
.LBB68_120:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB68_20
	jmp	.LBB68_121
.LBB68_121:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$85, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB68_92
	jmp	.LBB68_122
.LBB68_122:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB68_44
	jmp	.LBB68_123
.LBB68_123:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB68_2
	jmp	.LBB68_124
.LBB68_124:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB68_3
	jmp	.LBB68_125
.LBB68_125:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB68_4
	jmp	.LBB68_126
.LBB68_126:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB68_5
	jmp	.LBB68_127
.LBB68_127:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB68_6
	jmp	.LBB68_128
.LBB68_128:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB68_7
	jmp	.LBB68_129
.LBB68_129:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB68_8
	jmp	.LBB68_130
.LBB68_130:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB68_35
	jmp	.LBB68_131
.LBB68_131:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB68_9
	jmp	.LBB68_132
.LBB68_132:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$117, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB68_93
	jmp	.LBB68_133
.LBB68_133:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB68_10
	jmp	.LBB68_134
.LBB68_134:                             # %entry
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB68_70
	jmp	.LBB68_111
.LBB68_1:                               # %sw.bb
	callq	end_of_file_error
.LBB68_2:                               # %sw.bb.1
	movl	$7, -4(%rbp)
	jmp	.LBB68_112
.LBB68_3:                               # %sw.bb.2
	movl	$8, -4(%rbp)
	jmp	.LBB68_112
.LBB68_4:                               # %sw.bb.3
	movl	$127, -4(%rbp)
	jmp	.LBB68_112
.LBB68_5:                               # %sw.bb.4
	movl	$27, -4(%rbp)
	jmp	.LBB68_112
.LBB68_6:                               # %sw.bb.5
	movl	$12, -4(%rbp)
	jmp	.LBB68_112
.LBB68_7:                               # %sw.bb.6
	movl	$10, -4(%rbp)
	jmp	.LBB68_112
.LBB68_8:                               # %sw.bb.7
	movl	$13, -4(%rbp)
	jmp	.LBB68_112
.LBB68_9:                               # %sw.bb.8
	movl	$9, -4(%rbp)
	jmp	.LBB68_112
.LBB68_10:                              # %sw.bb.9
	movl	$11, -4(%rbp)
	jmp	.LBB68_112
.LBB68_11:                              # %sw.bb.10
	movl	$-1, -4(%rbp)
	jmp	.LBB68_112
.LBB68_12:                              # %sw.bb.11
	testb	$1, -17(%rbp)
	je	.LBB68_14
# BB#13:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB68_112
.LBB68_14:                              # %if.end
	movl	$32, -4(%rbp)
	jmp	.LBB68_112
.LBB68_15:                              # %sw.bb.12
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$45, -24(%rbp)
	je	.LBB68_17
# BB#16:                                # %if.then.14
	movabsq	$.L.str.116, %rdi
	movb	$0, %al
	callq	error
.LBB68_17:                              # %if.end.15
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$92, -24(%rbp)
	jne	.LBB68_19
# BB#18:                                # %if.then.18
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_escape
	movl	%eax, -24(%rbp)
.LBB68_19:                              # %if.end.20
	movl	-24(%rbp), %eax
	orl	$134217728, %eax        # imm = 0x8000000
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_20:                              # %sw.bb.21
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$45, -24(%rbp)
	je	.LBB68_22
# BB#21:                                # %if.then.24
	movabsq	$.L.str.116, %rdi
	movb	$0, %al
	callq	error
.LBB68_22:                              # %if.end.25
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$92, -24(%rbp)
	jne	.LBB68_24
# BB#23:                                # %if.then.28
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_escape
	movl	%eax, -24(%rbp)
.LBB68_24:                              # %if.end.30
	movl	-24(%rbp), %eax
	orl	$33554432, %eax         # imm = 0x2000000
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_25:                              # %sw.bb.32
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$45, -24(%rbp)
	je	.LBB68_27
# BB#26:                                # %if.then.35
	movabsq	$.L.str.116, %rdi
	movb	$0, %al
	callq	error
.LBB68_27:                              # %if.end.36
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$92, -24(%rbp)
	jne	.LBB68_29
# BB#28:                                # %if.then.39
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_escape
	movl	%eax, -24(%rbp)
.LBB68_29:                              # %if.end.41
	movl	-24(%rbp), %eax
	orl	$16777216, %eax         # imm = 0x1000000
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_30:                              # %sw.bb.43
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$45, -24(%rbp)
	je	.LBB68_32
# BB#31:                                # %if.then.46
	movabsq	$.L.str.116, %rdi
	movb	$0, %al
	callq	error
.LBB68_32:                              # %if.end.47
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$92, -24(%rbp)
	jne	.LBB68_34
# BB#33:                                # %if.then.50
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_escape
	movl	%eax, -24(%rbp)
.LBB68_34:                              # %if.end.52
	movl	-24(%rbp), %eax
	orl	$4194304, %eax          # imm = 0x400000
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_35:                              # %sw.bb.54
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	testb	$1, -17(%rbp)
	jne	.LBB68_37
# BB#36:                                # %lor.lhs.false
	cmpl	$45, -24(%rbp)
	je	.LBB68_38
.LBB68_37:                              # %if.then.58
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	unreadchar
	movl	$32, -4(%rbp)
	jmp	.LBB68_112
.LBB68_38:                              # %if.end.59
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$92, -24(%rbp)
	jne	.LBB68_40
# BB#39:                                # %if.then.62
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_escape
	movl	%eax, -24(%rbp)
.LBB68_40:                              # %if.end.64
	movl	-24(%rbp), %eax
	orl	$8388608, %eax          # imm = 0x800000
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_41:                              # %sw.bb.66
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$45, -24(%rbp)
	je	.LBB68_43
# BB#42:                                # %if.then.69
	movabsq	$.L.str.116, %rdi
	movb	$0, %al
	callq	error
.LBB68_43:                              # %if.end.70
	jmp	.LBB68_44
.LBB68_44:                              # %sw.bb.71
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$92, -24(%rbp)
	jne	.LBB68_46
# BB#45:                                # %if.then.74
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	read_escape
	movl	%eax, -24(%rbp)
.LBB68_46:                              # %if.end.76
	movl	-24(%rbp), %eax
	andl	$-264241153, %eax       # imm = 0xFFFFFFFFF03FFFFF
	cmpl	$63, %eax
	jne	.LBB68_48
# BB#47:                                # %if.then.78
	movl	-24(%rbp), %eax
	andl	$264241152, %eax        # imm = 0xFC00000
	orl	$127, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_48:                              # %if.else
	movb	$1, %al
	testb	$1, %al
	jne	.LBB68_49
	jmp	.LBB68_50
.LBB68_49:                              # %cond.true
	movl	-24(%rbp), %eax
	andl	$-264241153, %eax       # imm = 0xFFFFFFFFF03FFFFF
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB68_52
	jmp	.LBB68_51
.LBB68_50:                              # %cond.false
	movl	-24(%rbp), %eax
	andl	$-264241153, %eax       # imm = 0xFFFFFFFFF03FFFFF
	movslq	%eax, %rcx
	addq	$0, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jb	.LBB68_52
.LBB68_51:                              # %if.then.87
	movl	-24(%rbp), %eax
	orl	$67108864, %eax         # imm = 0x4000000
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_52:                              # %if.else.89
	movl	-24(%rbp), %eax
	andl	$95, %eax
	cmpl	$65, %eax
	jl	.LBB68_55
# BB#53:                                # %land.lhs.true
	movl	-24(%rbp), %eax
	andl	$95, %eax
	cmpl	$90, %eax
	jg	.LBB68_55
# BB#54:                                # %if.then.96
	movl	-24(%rbp), %eax
	andl	$-97, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_55:                              # %if.else.98
	movl	-24(%rbp), %eax
	andl	$127, %eax
	cmpl	$64, %eax
	jl	.LBB68_58
# BB#56:                                # %land.lhs.true.102
	movl	-24(%rbp), %eax
	andl	$127, %eax
	cmpl	$95, %eax
	jg	.LBB68_58
# BB#57:                                # %if.then.106
	movl	-24(%rbp), %eax
	andl	$-97, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_58:                              # %if.else.108
	movl	-24(%rbp), %eax
	orl	$67108864, %eax         # imm = 0x4000000
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_59:                              # %sw.bb.110
	movl	-24(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB68_60:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$3, %eax
	jge	.LBB68_66
# BB#61:                                # %while.body
                                        #   in Loop: Header=BB68_60 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$48, %eax
	jl	.LBB68_64
# BB#62:                                # %land.lhs.true.116
                                        #   in Loop: Header=BB68_60 Depth=1
	cmpl	$55, -24(%rbp)
	jg	.LBB68_64
# BB#63:                                # %if.then.119
                                        #   in Loop: Header=BB68_60 Depth=1
	movl	-32(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	subl	$48, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB68_65
.LBB68_64:                              # %if.else.122
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	unreadchar
	jmp	.LBB68_66
.LBB68_65:                              # %if.end.123
                                        #   in Loop: Header=BB68_60 Depth=1
	jmp	.LBB68_60
.LBB68_66:                              # %while.end
	cmpl	$128, -32(%rbp)
	jl	.LBB68_69
# BB#67:                                # %land.lhs.true.126
	cmpl	$256, -32(%rbp)         # imm = 0x100
	jge	.LBB68_69
# BB#68:                                # %if.then.129
	movl	-32(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -32(%rbp)
.LBB68_69:                              # %if.end.131
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_70:                              # %sw.bb.132
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB68_71:                              # %while.body.136
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$48, -24(%rbp)
	jl	.LBB68_74
# BB#72:                                # %land.lhs.true.140
                                        #   in Loop: Header=BB68_71 Depth=1
	cmpl	$57, -24(%rbp)
	jg	.LBB68_74
# BB#73:                                # %if.then.143
                                        #   in Loop: Header=BB68_71 Depth=1
	movl	-40(%rbp), %eax
	shll	$4, %eax
	movl	%eax, -40(%rbp)
	movl	-24(%rbp), %eax
	subl	$48, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB68_85
.LBB68_74:                              # %if.else.147
                                        #   in Loop: Header=BB68_71 Depth=1
	cmpl	$97, -24(%rbp)
	jl	.LBB68_76
# BB#75:                                # %land.lhs.true.150
                                        #   in Loop: Header=BB68_71 Depth=1
	cmpl	$102, -24(%rbp)
	jle	.LBB68_78
.LBB68_76:                              # %lor.lhs.false.153
                                        #   in Loop: Header=BB68_71 Depth=1
	cmpl	$65, -24(%rbp)
	jl	.LBB68_83
# BB#77:                                # %land.lhs.true.156
                                        #   in Loop: Header=BB68_71 Depth=1
	cmpl	$70, -24(%rbp)
	jg	.LBB68_83
.LBB68_78:                              # %if.then.159
                                        #   in Loop: Header=BB68_71 Depth=1
	movl	-40(%rbp), %eax
	shll	$4, %eax
	movl	%eax, -40(%rbp)
	cmpl	$97, -24(%rbp)
	jl	.LBB68_81
# BB#79:                                # %land.lhs.true.163
                                        #   in Loop: Header=BB68_71 Depth=1
	cmpl	$102, -24(%rbp)
	jg	.LBB68_81
# BB#80:                                # %if.then.166
                                        #   in Loop: Header=BB68_71 Depth=1
	movl	-24(%rbp), %eax
	subl	$97, %eax
	addl	$10, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB68_82
.LBB68_81:                              # %if.else.170
                                        #   in Loop: Header=BB68_71 Depth=1
	movl	-24(%rbp), %eax
	subl	$65, %eax
	addl	$10, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB68_82:                              # %if.end.174
                                        #   in Loop: Header=BB68_71 Depth=1
	jmp	.LBB68_84
.LBB68_83:                              # %if.else.175
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	unreadchar
	jmp	.LBB68_88
.LBB68_84:                              # %if.end.176
                                        #   in Loop: Header=BB68_71 Depth=1
	jmp	.LBB68_85
.LBB68_85:                              # %if.end.177
                                        #   in Loop: Header=BB68_71 Depth=1
	movl	$268435455, %eax        # imm = 0xFFFFFFF
	cmpl	-40(%rbp), %eax
	jae	.LBB68_87
# BB#86:                                # %if.then.180
	movabsq	$.L.str.117, %rdi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB68_87:                              # %if.end.181
                                        #   in Loop: Header=BB68_71 Depth=1
	cmpl	$3, -44(%rbp)
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB68_71
.LBB68_88:                              # %while.end.185
	cmpl	$3, -44(%rbp)
	jge	.LBB68_91
# BB#89:                                # %land.lhs.true.188
	cmpl	$128, -40(%rbp)
	jb	.LBB68_91
# BB#90:                                # %if.then.191
	movl	-40(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_91:                              # %if.end.193
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_92:                              # %sw.bb.194
	movl	$8, -28(%rbp)
.LBB68_93:                              # %sw.bb.195
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB68_94:                              # %while.cond.198
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	-28(%rbp), %eax
	jg	.LBB68_108
# BB#95:                                # %while.body.202
                                        #   in Loop: Header=BB68_94 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	readchar
	movl	%eax, -24(%rbp)
	cmpl	$48, -24(%rbp)
	jl	.LBB68_98
# BB#96:                                # %land.lhs.true.206
                                        #   in Loop: Header=BB68_94 Depth=1
	cmpl	$57, -24(%rbp)
	jg	.LBB68_98
# BB#97:                                # %if.then.209
                                        #   in Loop: Header=BB68_94 Depth=1
	movl	-48(%rbp), %eax
	shll	$4, %eax
	movl	-24(%rbp), %ecx
	subl	$48, %ecx
	addl	%ecx, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB68_107
.LBB68_98:                              # %if.else.212
                                        #   in Loop: Header=BB68_94 Depth=1
	cmpl	$97, -24(%rbp)
	jl	.LBB68_101
# BB#99:                                # %land.lhs.true.215
                                        #   in Loop: Header=BB68_94 Depth=1
	cmpl	$102, -24(%rbp)
	jg	.LBB68_101
# BB#100:                               # %if.then.218
                                        #   in Loop: Header=BB68_94 Depth=1
	movl	-48(%rbp), %eax
	shll	$4, %eax
	movl	-24(%rbp), %ecx
	subl	$97, %ecx
	addl	%ecx, %eax
	addl	$10, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB68_106
.LBB68_101:                             # %if.else.223
                                        #   in Loop: Header=BB68_94 Depth=1
	cmpl	$65, -24(%rbp)
	jl	.LBB68_104
# BB#102:                               # %land.lhs.true.226
                                        #   in Loop: Header=BB68_94 Depth=1
	cmpl	$70, -24(%rbp)
	jg	.LBB68_104
# BB#103:                               # %if.then.229
                                        #   in Loop: Header=BB68_94 Depth=1
	movl	-48(%rbp), %eax
	shll	$4, %eax
	movl	-24(%rbp), %ecx
	subl	$65, %ecx
	addl	%ecx, %eax
	addl	$10, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB68_105
.LBB68_104:                             # %if.else.234
	movabsq	$.L.str.118, %rdi
	movb	$0, %al
	callq	error
.LBB68_105:                             # %if.end.235
                                        #   in Loop: Header=BB68_94 Depth=1
	jmp	.LBB68_106
.LBB68_106:                             # %if.end.236
                                        #   in Loop: Header=BB68_94 Depth=1
	jmp	.LBB68_107
.LBB68_107:                             # %if.end.237
                                        #   in Loop: Header=BB68_94 Depth=1
	jmp	.LBB68_94
.LBB68_108:                             # %while.end.238
	cmpl	$1114111, -48(%rbp)     # imm = 0x10FFFF
	jbe	.LBB68_110
# BB#109:                               # %if.then.241
	movabsq	$.L.str.119, %rdi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB68_110:                             # %if.end.242
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB68_112
.LBB68_111:                             # %sw.default
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB68_112:                             # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	read_escape, .Lfunc_end68-read_escape
	.cfi_endproc

	.align	16, 0x90
	.type	grow_read_buffer,@function
grow_read_buffer:                       # @grow_read_buffer
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
	movabsq	$read_buffer_size, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	read_buffer, %rdi
	callq	xpalloc
	movq	%rax, read_buffer
	popq	%rbp
	retq
.Lfunc_end69:
	.size	grow_read_buffer, .Lfunc_end69-grow_read_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	substitute_object_recurse,@function
substitute_object_recurse:              # @substitute_object_recurse
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	jne	.LBB70_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_41
.LBB70_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movq	seen_list, %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	Fmemq
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB70_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_41
.LBB70_4:                               # %if.end.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movq	read_objects, %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	Frassq
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB70_6
# BB#5:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	movq	seen_list, %rsi
	callq	Fcons
	movq	%rax, seen_list
.LBB70_6:                               # %if.end.10
	movl	-32(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	je	.LBB70_30
	jmp	.LBB70_42
.LBB70_42:                              # %if.end.10
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB70_39
	jmp	.LBB70_43
.LBB70_43:                              # %if.end.10
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jne	.LBB70_40
	jmp	.LBB70_7
.LBB70_7:                               # %sw.bb
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB70_8
	jmp	.LBB70_9
.LBB70_8:                               # %if.then.12
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_41
.LBB70_9:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB70_13
# BB#10:                                # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB70_13
# BB#11:                                # %lor.lhs.false.17
	movq	-32(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB70_13
# BB#12:                                # %lor.lhs.false.20
	movq	-32(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB70_13
	jmp	.LBB70_14
.LBB70_13:                              # %if.then.23
	movq	-32(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	movq	%rax, -48(%rbp)
	jmp	.LBB70_18
.LBB70_14:                              # %if.else.26
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB70_15
	jmp	.LBB70_16
.LBB70_15:                              # %if.then.28
	movq	-32(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -48(%rbp)
	jmp	.LBB70_17
.LBB70_16:                              # %if.else.30
	movl	$844, %edi              # imm = 0x34C
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB70_17:                              # %if.end.32
	jmp	.LBB70_18
.LBB70_18:                              # %if.end.33
	jmp	.LBB70_19
.LBB70_19:                              # %if.end.34
	movq	-32(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB70_20
	jmp	.LBB70_21
.LBB70_20:                              # %if.then.36
	movq	$2, -40(%rbp)
.LBB70_21:                              # %if.end.37
	jmp	.LBB70_22
.LBB70_22:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB70_29
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB70_22 Depth=1
	jmp	.LBB70_24
.LBB70_24:                              # %do.body
                                        #   in Loop: Header=BB70_22 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	substitute_object_recurse
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB70_26
# BB#25:                                # %if.then.44
                                        #   in Loop: Header=BB70_22 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	ASET
.LBB70_26:                              # %if.end.45
                                        #   in Loop: Header=BB70_22 Depth=1
	jmp	.LBB70_27
.LBB70_27:                              # %do.end
                                        #   in Loop: Header=BB70_22 Depth=1
	jmp	.LBB70_28
.LBB70_28:                              # %for.inc
                                        #   in Loop: Header=BB70_22 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB70_22
.LBB70_29:                              # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_41
.LBB70_30:                              # %sw.bb.46
	jmp	.LBB70_31
.LBB70_31:                              # %do.body.47
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	substitute_object_recurse
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB70_33
# BB#32:                                # %if.then.53
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	XSETCAR
.LBB70_33:                              # %if.end.54
	jmp	.LBB70_34
.LBB70_34:                              # %do.end.55
	jmp	.LBB70_35
.LBB70_35:                              # %do.body.56
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	substitute_object_recurse
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB70_37
# BB#36:                                # %if.then.63
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	XSETCDR
.LBB70_37:                              # %if.end.64
	jmp	.LBB70_38
.LBB70_38:                              # %do.end.65
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_41
.LBB70_39:                              # %sw.bb.66
	movq	-32(%rbp), %rdi
	callq	string_intervals
	movl	$3, %esi
	leaq	-128(%rbp), %rdi
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	make_lisp_ptr
	movabsq	$substitute_in_interval, %rsi
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rdx
	callq	traverse_intervals_noorder
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_41
.LBB70_40:                              # %sw.default
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB70_41:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	substitute_object_recurse, .Lfunc_end70-substitute_object_recurse
	.cfi_endproc

	.align	16, 0x90
	.type	substitute_in_interval,@function
substitute_in_interval:                 # @substitute_in_interval
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fcar
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	substitute_object_recurse
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB71_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	set_interval_plist
.LBB71_3:                               # %if.end
	jmp	.LBB71_4
.LBB71_4:                               # %do.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	substitute_in_interval, .Lfunc_end71-substitute_in_interval
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	instream,@object        # @instream
	.local	instream
	.comm	instream,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	".el"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	".elc"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Cannot open load file"
	.size	.L.str.4, 22

	.type	Vloads_in_progress,@object # @Vloads_in_progress
	.local	Vloads_in_progress
	.comm	Vloads_in_progress,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Recursive load"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"File `%s' was not compiled in Emacs"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"File `%s' not compiled in Emacs"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Source file `%s' newer than byte-compiled file"
	.size	.L.str.8, 47

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Opening stdio stream"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Loading %s (compiled; note unsafe, not compiled in Emacs)..."
	.size	.L.str.10, 61

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Loading %s (source)..."
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Loading %s (compiled; note, source file is newer)..."
	.size	.L.str.12, 53

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Loading %s..."
	.size	.L.str.13, 14

	.type	saved_doc_string,@object # @saved_doc_string
	.local	saved_doc_string
	.comm	saved_doc_string,8,8
	.type	saved_doc_string_size,@object # @saved_doc_string_size
	.local	saved_doc_string_size
	.comm	saved_doc_string_size,8,8
	.type	prev_saved_doc_string,@object # @prev_saved_doc_string
	.local	prev_saved_doc_string
	.comm	prev_saved_doc_string,8,8
	.type	prev_saved_doc_string_size,@object # @prev_saved_doc_string_size
	.local	prev_saved_doc_string_size
	.comm	prev_saved_doc_string_size,8,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Loading %s (compiled; note unsafe, not compiled in Emacs)...done"
	.size	.L.str.14, 65

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Loading %s (source)...done"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Loading %s (compiled; note, source file is newer)...done"
	.size	.L.str.16, 57

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Loading %s...done"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"No such buffer"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"read-minibuffer"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Lisp expression: "
	.size	.L.str.20, 18

	.type	read_from_string_index,@object # @read_from_string_index
	.local	read_from_string_index
	.comm	read_from_string_index,8,8
	.type	initial_obarray,@object # @initial_obarray
	.local	initial_obarray
	.comm	initial_obarray,8,8
	.type	lispsym,@object         # @lispsym
	.comm	lispsym,51552,8
	.type	oblookup_last_bucket_number,@object # @oblookup_last_bucket_number
	.local	oblookup_last_bucket_number
	.comm	oblookup_last_bucket_number,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Bad data in guts of obarray"
	.size	.L.str.21, 28

	.type	defsym_name,@object     # @defsym_name
	.section	.rodata,"a",@progbits
	.align	16
defsym_name:
	.quad	.L.str.87
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.quad	.L.str.177
	.quad	.L.str.178
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	.L.str.181
	.quad	.L.str.182
	.quad	.L.str.183
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.200
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	.L.str.203
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.209
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	.L.str.212
	.quad	.L.str.213
	.quad	.L.str.214
	.quad	.L.str.215
	.quad	.L.str.216
	.quad	.L.str.217
	.quad	.L.str.218
	.quad	.L.str.219
	.quad	.L.str.220
	.quad	.L.str.221
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	.L.str.225
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	.L.str.228
	.quad	.L.str.229
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.234
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.255
	.quad	.L.str.256
	.quad	.L.str.257
	.quad	.L.str.258
	.quad	.L.str.259
	.quad	.L.str.260
	.quad	.L.str.261
	.quad	.L.str.262
	.quad	.L.str.263
	.quad	.L.str.264
	.quad	.L.str.265
	.quad	.L.str.266
	.quad	.L.str.267
	.quad	.L.str.268
	.quad	.L.str.269
	.quad	.L.str.270
	.quad	.L.str.271
	.quad	.L.str.272
	.quad	.L.str.273
	.quad	.L.str.274
	.quad	.L.str.275
	.quad	.L.str.276
	.quad	.L.str.277
	.quad	.L.str.278
	.quad	.L.str.279
	.quad	.L.str.280
	.quad	.L.str.281
	.quad	.L.str.282
	.quad	.L.str.283
	.quad	.L.str.284
	.quad	.L.str.285
	.quad	.L.str.286
	.quad	.L.str.287
	.quad	.L.str.288
	.quad	.L.str.289
	.quad	.L.str.290
	.quad	.L.str.291
	.quad	.L.str.292
	.quad	.L.str.293
	.quad	.L.str.294
	.quad	.L.str.295
	.quad	.L.str.296
	.quad	.L.str.297
	.quad	.L.str.298
	.quad	.L.str.299
	.quad	.L.str.300
	.quad	.L.str.301
	.quad	.L.str.302
	.quad	.L.str.303
	.quad	.L.str.304
	.quad	.L.str.305
	.quad	.L.str.306
	.quad	.L.str.307
	.quad	.L.str.308
	.quad	.L.str.309
	.quad	.L.str.310
	.quad	.L.str.311
	.quad	.L.str.312
	.quad	.L.str.313
	.quad	.L.str.314
	.quad	.L.str.315
	.quad	.L.str.316
	.quad	.L.str.317
	.quad	.L.str.318
	.quad	.L.str.319
	.quad	.L.str.320
	.quad	.L.str.321
	.quad	.L.str.322
	.quad	.L.str.323
	.quad	.L.str.324
	.quad	.L.str.325
	.quad	.L.str.326
	.quad	.L.str.327
	.quad	.L.str.328
	.quad	.L.str.329
	.quad	.L.str.330
	.quad	.L.str.331
	.quad	.L.str.332
	.quad	.L.str.333
	.quad	.L.str.334
	.quad	.L.str.335
	.quad	.L.str.336
	.quad	.L.str.337
	.quad	.L.str.338
	.quad	.L.str.339
	.quad	.L.str.340
	.quad	.L.str.341
	.quad	.L.str.342
	.quad	.L.str.343
	.quad	.L.str.344
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	.L.str.347
	.quad	.L.str.348
	.quad	.L.str.349
	.quad	.L.str.350
	.quad	.L.str.351
	.quad	.L.str.352
	.quad	.L.str.353
	.quad	.L.str.354
	.quad	.L.str.355
	.quad	.L.str.356
	.quad	.L.str.357
	.quad	.L.str.358
	.quad	.L.str.359
	.quad	.L.str.360
	.quad	.L.str.361
	.quad	.L.str.362
	.quad	.L.str.363
	.quad	.L.str.364
	.quad	.L.str.365
	.quad	.L.str.366
	.quad	.L.str.367
	.quad	.L.str.368
	.quad	.L.str.369
	.quad	.L.str.370
	.quad	.L.str.371
	.quad	.L.str.372
	.quad	.L.str.373
	.quad	.L.str.374
	.quad	.L.str.375
	.quad	.L.str.376
	.quad	.L.str.377
	.quad	.L.str.378
	.quad	.L.str.379
	.quad	.L.str.380
	.quad	.L.str.381
	.quad	.L.str.382
	.quad	.L.str.383
	.quad	.L.str.384
	.quad	.L.str.385
	.quad	.L.str.386
	.quad	.L.str.387
	.quad	.L.str.388
	.quad	.L.str.389
	.quad	.L.str.390
	.quad	.L.str.391
	.quad	.L.str.392
	.quad	.L.str.393
	.quad	.L.str.394
	.quad	.L.str.395
	.quad	.L.str.396
	.quad	.L.str.397
	.quad	.L.str.398
	.quad	.L.str.399
	.quad	.L.str.400
	.quad	.L.str.401
	.quad	.L.str.402
	.quad	.L.str.403
	.quad	.L.str.404
	.quad	.L.str.405
	.quad	.L.str.406
	.quad	.L.str.407
	.quad	.L.str.408
	.quad	.L.str.409
	.quad	.L.str.410
	.quad	.L.str.411
	.quad	.L.str.412
	.quad	.L.str.413
	.quad	.L.str.414
	.quad	.L.str.415
	.quad	.L.str.416
	.quad	.L.str.417
	.quad	.L.str.418
	.quad	.L.str.419
	.quad	.L.str.420
	.quad	.L.str.421
	.quad	.L.str.422
	.quad	.L.str.423
	.quad	.L.str.53
	.quad	.L.str.424
	.quad	.L.str.425
	.quad	.L.str.426
	.quad	.L.str.427
	.quad	.L.str.428
	.quad	.L.str.429
	.quad	.L.str.430
	.quad	.L.str.431
	.quad	.L.str.432
	.quad	.L.str.433
	.quad	.L.str.434
	.quad	.L.str.435
	.quad	.L.str.436
	.quad	.L.str.437
	.quad	.L.str.438
	.quad	.L.str.439
	.quad	.L.str.440
	.quad	.L.str.441
	.quad	.L.str.442
	.quad	.L.str.443
	.quad	.L.str.444
	.quad	.L.str.445
	.quad	.L.str.446
	.quad	.L.str.447
	.quad	.L.str.448
	.quad	.L.str.449
	.quad	.L.str.450
	.quad	.L.str.451
	.quad	.L.str.452
	.quad	.L.str.453
	.quad	.L.str.454
	.quad	.L.str.455
	.quad	.L.str.456
	.quad	.L.str.457
	.quad	.L.str.458
	.quad	.L.str.459
	.quad	.L.str.460
	.quad	.L.str.461
	.quad	.L.str.462
	.quad	.L.str.463
	.quad	.L.str.464
	.quad	.L.str.465
	.quad	.L.str.466
	.quad	.L.str.467
	.quad	.L.str.468
	.quad	.L.str.469
	.quad	.L.str.470
	.quad	.L.str.471
	.quad	.L.str.472
	.quad	.L.str.473
	.quad	.L.str.474
	.quad	.L.str.475
	.quad	.L.str.476
	.quad	.L.str.477
	.quad	.L.str.478
	.quad	.L.str.479
	.quad	.L.str.480
	.quad	.L.str.481
	.quad	.L.str.482
	.quad	.L.str.483
	.quad	.L.str.484
	.quad	.L.str.485
	.quad	.L.str.486
	.quad	.L.str.487
	.quad	.L.str.488
	.quad	.L.str.489
	.quad	.L.str.490
	.quad	.L.str.491
	.quad	.L.str.492
	.quad	.L.str.493
	.quad	.L.str.494
	.quad	.L.str.495
	.quad	.L.str.496
	.quad	.L.str.80
	.quad	.L.str.497
	.quad	.L.str.498
	.quad	.L.str.499
	.quad	.L.str.500
	.quad	.L.str.501
	.quad	.L.str.502
	.quad	.L.str.503
	.quad	.L.str.504
	.quad	.L.str.505
	.quad	.L.str.506
	.quad	.L.str.507
	.quad	.L.str.508
	.quad	.L.str.509
	.quad	.L.str.510
	.quad	.L.str.511
	.quad	.L.str.512
	.quad	.L.str.513
	.quad	.L.str.514
	.quad	.L.str.515
	.quad	.L.str.516
	.quad	.L.str.517
	.quad	.L.str.518
	.quad	.L.str.519
	.quad	.L.str.520
	.quad	.L.str.521
	.quad	.L.str.522
	.quad	.L.str.523
	.quad	.L.str.524
	.quad	.L.str.525
	.quad	.L.str.526
	.quad	.L.str.527
	.quad	.L.str.528
	.quad	.L.str.529
	.quad	.L.str.530
	.quad	.L.str.531
	.quad	.L.str.532
	.quad	.L.str.533
	.quad	.L.str.534
	.quad	.L.str.535
	.quad	.L.str.536
	.quad	.L.str.537
	.quad	.L.str.538
	.quad	.L.str.539
	.quad	.L.str.540
	.quad	.L.str.541
	.quad	.L.str.542
	.quad	.L.str.543
	.quad	.L.str.544
	.quad	.L.str.545
	.quad	.L.str.546
	.quad	.L.str.547
	.quad	.L.str.548
	.quad	.L.str.549
	.quad	.L.str.550
	.quad	.L.str.551
	.quad	.L.str.552
	.quad	.L.str.553
	.quad	.L.str.554
	.quad	.L.str.555
	.quad	.L.str.556
	.quad	.L.str.557
	.quad	.L.str.558
	.quad	.L.str.559
	.quad	.L.str.560
	.quad	.L.str.561
	.quad	.L.str.562
	.quad	.L.str.563
	.quad	.L.str.564
	.quad	.L.str.565
	.quad	.L.str.566
	.quad	.L.str.567
	.quad	.L.str.568
	.quad	.L.str.569
	.quad	.L.str.570
	.quad	.L.str.571
	.quad	.L.str.572
	.quad	.L.str.573
	.quad	.L.str.574
	.quad	.L.str.575
	.quad	.L.str.576
	.quad	.L.str.577
	.quad	.L.str.578
	.quad	.L.str.579
	.quad	.L.str.580
	.quad	.L.str.581
	.quad	.L.str.582
	.quad	.L.str.583
	.quad	.L.str.584
	.quad	.L.str.585
	.quad	.L.str.586
	.quad	.L.str.587
	.quad	.L.str.588
	.quad	.L.str.589
	.quad	.L.str.590
	.quad	.L.str.591
	.quad	.L.str.592
	.quad	.L.str.593
	.quad	.L.str.594
	.quad	.L.str.595
	.quad	.L.str.596
	.quad	.L.str.597
	.quad	.L.str.598
	.quad	.L.str.599
	.quad	.L.str.600
	.quad	.L.str.601
	.quad	.L.str.602
	.quad	.L.str.603
	.quad	.L.str.604
	.quad	.L.str.605
	.quad	.L.str.606
	.quad	.L.str.607
	.quad	.L.str.608
	.quad	.L.str.609
	.quad	.L.str.610
	.quad	.L.str.611
	.quad	.L.str.612
	.quad	.L.str.613
	.quad	.L.str.614
	.quad	.L.str.615
	.quad	.L.str.616
	.quad	.L.str.617
	.quad	.L.str.618
	.quad	.L.str.619
	.quad	.L.str.620
	.quad	.L.str.621
	.quad	.L.str.622
	.quad	.L.str.623
	.quad	.L.str.624
	.quad	.L.str.625
	.quad	.L.str.626
	.quad	.L.str.627
	.quad	.L.str.628
	.quad	.L.str.629
	.quad	.L.str.630
	.quad	.L.str.631
	.quad	.L.str.632
	.quad	.L.str.633
	.quad	.L.str.634
	.quad	.L.str.635
	.quad	.L.str.636
	.quad	.L.str.637
	.quad	.L.str.638
	.quad	.L.str.639
	.quad	.L.str.640
	.quad	.L.str.641
	.quad	.L.str.642
	.quad	.L.str.643
	.quad	.L.str.644
	.quad	.L.str.645
	.quad	.L.str.646
	.quad	.L.str.647
	.quad	.L.str.648
	.quad	.L.str.649
	.quad	.L.str.650
	.quad	.L.str.651
	.quad	.L.str.652
	.quad	.L.str.653
	.quad	.L.str.654
	.quad	.L.str.655
	.quad	.L.str.656
	.quad	.L.str.657
	.quad	.L.str.658
	.quad	.L.str.659
	.quad	.L.str.660
	.quad	.L.str.661
	.quad	.L.str.662
	.quad	.L.str.663
	.quad	.L.str.664
	.quad	.L.str.665
	.quad	.L.str.666
	.quad	.L.str.667
	.quad	.L.str.668
	.quad	.L.str.669
	.quad	.L.str.670
	.quad	.L.str.671
	.quad	.L.str.672
	.quad	.L.str.673
	.quad	.L.str.674
	.quad	.L.str.675
	.quad	.L.str.676
	.quad	.L.str.677
	.quad	.L.str.678
	.quad	.L.str.679
	.quad	.L.str.680
	.quad	.L.str.681
	.quad	.L.str.682
	.quad	.L.str.683
	.quad	.L.str.684
	.quad	.L.str.685
	.quad	.L.str.686
	.quad	.L.str.687
	.quad	.L.str.688
	.quad	.L.str.689
	.quad	.L.str.690
	.quad	.L.str.691
	.quad	.L.str.692
	.quad	.L.str.693
	.quad	.L.str.694
	.quad	.L.str.695
	.quad	.L.str.696
	.quad	.L.str.697
	.quad	.L.str.698
	.quad	.L.str.699
	.quad	.L.str.700
	.quad	.L.str.701
	.quad	.L.str.702
	.quad	.L.str.703
	.quad	.L.str.704
	.quad	.L.str.705
	.quad	.L.str.706
	.quad	.L.str.707
	.quad	.L.str.708
	.quad	.L.str.709
	.quad	.L.str.710
	.quad	.L.str.711
	.quad	.L.str.712
	.quad	.L.str.713
	.quad	.L.str.714
	.quad	.L.str.715
	.quad	.L.str.716
	.quad	.L.str.717
	.quad	.L.str.718
	.quad	.L.str.719
	.quad	.L.str.720
	.quad	.L.str.721
	.quad	.L.str.722
	.quad	.L.str.723
	.quad	.L.str.724
	.quad	.L.str.725
	.quad	.L.str.726
	.quad	.L.str.727
	.quad	.L.str.728
	.quad	.L.str.729
	.quad	.L.str.730
	.quad	.L.str.78
	.quad	.L.str.731
	.quad	.L.str.732
	.quad	.L.str.733
	.quad	.L.str.734
	.quad	.L.str.735
	.quad	.L.str.736
	.quad	.L.str.737
	.quad	.L.str.738
	.quad	.L.str.739
	.quad	.L.str.740
	.quad	.L.str.741
	.quad	.L.str.742
	.quad	.L.str.743
	.quad	.L.str.744
	.quad	.L.str.49
	.quad	.L.str.59
	.quad	.L.str.43
	.quad	.L.str.745
	.quad	.L.str.746
	.quad	.L.str.747
	.quad	.L.str.748
	.quad	.L.str.749
	.quad	.L.str.750
	.quad	.L.str.751
	.quad	.L.str.752
	.quad	.L.str.753
	.quad	.L.str.754
	.quad	.L.str.755
	.quad	.L.str.756
	.quad	.L.str.757
	.quad	.L.str.758
	.quad	.L.str.759
	.quad	.L.str.760
	.quad	.L.str.761
	.quad	.L.str.762
	.quad	.L.str.763
	.quad	.L.str.764
	.quad	.L.str.765
	.quad	.L.str.766
	.quad	.L.str.767
	.quad	.L.str.768
	.quad	.L.str.769
	.quad	.L.str.770
	.quad	.L.str.771
	.quad	.L.str.772
	.quad	.L.str.773
	.quad	.L.str.774
	.quad	.L.str.775
	.quad	.L.str.776
	.quad	.L.str.777
	.quad	.L.str.778
	.quad	.L.str.779
	.quad	.L.str.780
	.quad	.L.str.781
	.quad	.L.str.782
	.quad	.L.str.783
	.quad	.L.str.784
	.quad	.L.str.785
	.quad	.L.str.786
	.quad	.L.str.787
	.quad	.L.str.788
	.quad	.L.str.789
	.quad	.L.str.790
	.quad	.L.str.791
	.quad	.L.str.792
	.quad	.L.str.793
	.quad	.L.str.794
	.quad	.L.str.795
	.quad	.L.str.796
	.quad	.L.str.797
	.quad	.L.str.798
	.quad	.L.str.799
	.quad	.L.str.800
	.quad	.L.str.801
	.quad	.L.str.802
	.quad	.L.str.803
	.quad	.L.str.804
	.quad	.L.str.805
	.quad	.L.str.806
	.quad	.L.str.807
	.quad	.L.str.808
	.quad	.L.str.809
	.quad	.L.str.810
	.quad	.L.str.811
	.quad	.L.str.812
	.quad	.L.str.813
	.quad	.L.str.814
	.quad	.L.str.815
	.quad	.L.str.816
	.quad	.L.str.817
	.quad	.L.str.818
	.quad	.L.str.819
	.quad	.L.str.820
	.quad	.L.str.821
	.quad	.L.str.822
	.quad	.L.str.823
	.quad	.L.str.824
	.quad	.L.str.825
	.quad	.L.str.826
	.quad	.L.str.827
	.quad	.L.str.82
	.quad	.L.str.828
	.quad	.L.str.829
	.quad	.L.str.830
	.quad	.L.str.831
	.quad	.L.str.832
	.quad	.L.str.833
	.quad	.L.str.834
	.quad	.L.str.835
	.quad	.L.str.836
	.quad	.L.str.837
	.quad	.L.str.838
	.quad	.L.str.839
	.quad	.L.str.840
	.quad	.L.str.841
	.quad	.L.str.842
	.quad	.L.str.843
	.quad	.L.str.844
	.quad	.L.str.845
	.quad	.L.str.846
	.quad	.L.str.847
	.quad	.L.str.848
	.quad	.L.str.849
	.quad	.L.str.850
	.quad	.L.str.851
	.quad	.L.str.852
	.quad	.L.str.853
	.quad	.L.str.854
	.quad	.L.str.855
	.quad	.L.str.856
	.quad	.L.str.857
	.quad	.L.str.858
	.quad	.L.str.859
	.quad	.L.str.860
	.quad	.L.str.861
	.quad	.L.str.862
	.quad	.L.str.863
	.quad	.L.str.864
	.quad	.L.str.865
	.quad	.L.str.866
	.quad	.L.str.867
	.quad	.L.str.868
	.quad	.L.str.869
	.quad	.L.str.870
	.quad	.L.str.871
	.quad	.L.str.872
	.quad	.L.str.873
	.quad	.L.str.874
	.quad	.L.str.875
	.quad	.L.str.876
	.quad	.L.str.877
	.quad	.L.str.878
	.quad	.L.str.879
	.quad	.L.str.880
	.quad	.L.str.881
	.quad	.L.str.882
	.quad	.L.str.883
	.quad	.L.str.884
	.quad	.L.str.885
	.quad	.L.str.886
	.quad	.L.str.887
	.quad	.L.str.888
	.quad	.L.str.889
	.quad	.L.str.890
	.quad	.L.str.891
	.quad	.L.str.892
	.quad	.L.str.893
	.quad	.L.str.894
	.quad	.L.str.895
	.quad	.L.str.896
	.quad	.L.str.897
	.quad	.L.str.898
	.quad	.L.str.899
	.quad	.L.str.900
	.quad	.L.str.901
	.quad	.L.str.902
	.quad	.L.str.903
	.quad	.L.str.904
	.quad	.L.str.905
	.quad	.L.str.906
	.quad	.L.str.907
	.quad	.L.str.908
	.quad	.L.str.909
	.quad	.L.str.910
	.quad	.L.str.911
	.quad	.L.str.912
	.quad	.L.str.913
	.quad	.L.str.914
	.quad	.L.str.915
	.quad	.L.str.916
	.quad	.L.str.917
	.quad	.L.str.918
	.quad	.L.str.919
	.quad	.L.str.920
	.quad	.L.str.921
	.quad	.L.str.922
	.quad	.L.str.923
	.quad	.L.str.924
	.quad	.L.str.925
	.quad	.L.str.926
	.quad	.L.str.927
	.quad	.L.str.928
	.quad	.L.str.929
	.quad	.L.str.930
	.quad	.L.str.931
	.quad	.L.str.932
	.quad	.L.str.933
	.quad	.L.str.934
	.quad	.L.str.935
	.quad	.L.str.936
	.quad	.L.str.937
	.quad	.L.str.938
	.quad	.L.str.939
	.quad	.L.str.940
	.quad	.L.str.941
	.quad	.L.str.942
	.quad	.L.str.943
	.quad	.L.str.944
	.quad	.L.str.945
	.quad	.L.str.946
	.quad	.L.str.947
	.quad	.L.str.948
	.quad	.L.str.949
	.quad	.L.str.950
	.quad	.L.str.951
	.quad	.L.str.952
	.quad	.L.str.953
	.quad	.L.str.954
	.quad	.L.str.955
	.quad	.L.str.956
	.quad	.L.str.957
	.quad	.L.str.958
	.quad	.L.str.959
	.quad	.L.str.960
	.quad	.L.str.961
	.quad	.L.str.962
	.quad	.L.str.963
	.quad	.L.str.964
	.quad	.L.str.965
	.quad	.L.str.966
	.quad	.L.str.967
	.quad	.L.str.968
	.quad	.L.str.969
	.quad	.L.str.970
	.quad	.L.str.971
	.quad	.L.str.972
	.quad	.L.str.973
	.quad	.L.str.974
	.quad	.L.str.975
	.quad	.L.str.976
	.quad	.L.str.977
	.quad	.L.str.978
	.quad	.L.str.979
	.quad	.L.str.980
	.quad	.L.str.981
	.quad	.L.str.28
	.quad	.L.str.982
	.quad	.L.str.983
	.quad	.L.str.984
	.quad	.L.str.985
	.quad	.L.str.986
	.quad	.L.str.987
	.quad	.L.str.988
	.quad	.L.str.989
	.quad	.L.str.990
	.quad	.L.str.991
	.quad	.L.str.992
	.quad	.L.str.993
	.quad	.L.str.994
	.quad	.L.str.995
	.quad	.L.str.996
	.quad	.L.str.997
	.quad	.L.str.998
	.quad	.L.str.999
	.quad	.L.str.1000
	.quad	.L.str.1001
	.quad	.L.str.1002
	.quad	.L.str.1003
	.quad	.L.str.1004
	.quad	.L.str.1005
	.quad	.L.str.1006
	.quad	.L.str.1007
	.quad	.L.str.1008
	.quad	.L.str.1009
	.quad	.L.str.1010
	.quad	.L.str.1011
	.quad	.L.str.1012
	.quad	.L.str.1013
	.quad	.L.str.1014
	.quad	.L.str.1015
	.quad	.L.str.1016
	.quad	.L.str.1017
	.quad	.L.str.1018
	.quad	.L.str.1019
	.quad	.L.str.1020
	.quad	.L.str.1021
	.quad	.L.str.1022
	.quad	.L.str.1023
	.quad	.L.str.1024
	.quad	.L.str.1025
	.quad	.L.str.1026
	.quad	.L.str.1027
	.quad	.L.str.1028
	.quad	.L.str.1029
	.quad	.L.str.1030
	.quad	.L.str.1031
	.quad	.L.str.1032
	.quad	.L.str.1033
	.quad	.L.str.1034
	.quad	.L.str.1035
	.quad	.L.str.1036
	.quad	.L.str.1037
	.quad	.L.str.1038
	.quad	.L.str.1039
	.quad	.L.str.1040
	.quad	.L.str.1041
	.quad	.L.str.1042
	.quad	.L.str.1043
	.quad	.L.str.1044
	.quad	.L.str.1045
	.quad	.L.str.1046
	.quad	.L.str.1047
	.quad	.L.str.1048
	.quad	.L.str.1049
	.quad	.L.str.1050
	.quad	.L.str.1051
	.quad	.L.str.1052
	.quad	.L.str.1053
	.quad	.L.str.1054
	.quad	.L.str.1055
	.quad	.L.str.1056
	.quad	.L.str.1057
	.quad	.L.str.1058
	.quad	.L.str.1059
	.quad	.L.str.1060
	.quad	.L.str.1061
	.quad	.L.str.1062
	.quad	.L.str.1063
	.quad	.L.str.1064
	.quad	.L.str.1065
	.quad	.L.str.1066
	.quad	.L.str.1067
	.quad	.L.str.1068
	.quad	.L.str.1069
	.quad	.L.str.1070
	.quad	.L.str.1071
	.quad	.L.str.1072
	.quad	.L.str.1073
	.quad	.L.str.1074
	.quad	.L.str.1075
	.quad	.L.str.1076
	.quad	.L.str.1077
	.quad	.L.str.1078
	.quad	.L.str.1079
	.quad	.L.str.1080
	.quad	.L.str.1081
	.quad	.L.str.1082
	.quad	.L.str.1083
	.quad	.L.str.1084
	.quad	.L.str.1085
	.quad	.L.str.1086
	.quad	.L.str.1087
	.quad	.L.str.1088
	.quad	.L.str.1089
	.quad	.L.str.1090
	.quad	.L.str.1091
	.quad	.L.str.1092
	.quad	.L.str.1093
	.quad	.L.str.1094
	.quad	.L.str.1095
	.quad	.L.str.1096
	.quad	.L.str.1097
	.quad	.L.str.1098
	.quad	.L.str.1099
	.quad	.L.str.1100
	.quad	.L.str.1101
	.quad	.L.str.1102
	.quad	.L.str.1103
	.quad	.L.str.1104
	.quad	.L.str.1105
	.quad	.L.str.1106
	.quad	.L.str.1107
	.quad	.L.str.1108
	.quad	.L.str.1109
	.quad	.L.str.1110
	.quad	.L.str.1111
	.quad	.L.str.1112
	.quad	.L.str.1113
	.quad	.L.str.1114
	.quad	.L.str.1115
	.quad	.L.str.1116
	.quad	.L.str.1117
	.quad	.L.str.1118
	.quad	.L.str.1119
	.quad	.L.str.1120
	.quad	.L.str.1121
	.quad	.L.str.1122
	.quad	.L.str.1123
	.quad	.L.str.1124
	.quad	.L.str.1125
	.quad	.L.str.1126
	.quad	.L.str.1127
	.quad	.L.str.1128
	.quad	.L.str.1129
	.quad	.L.str.1130
	.quad	.L.str.1131
	.quad	.L.str.1132
	.quad	.L.str.1133
	.quad	.L.str.1134
	.quad	.L.str.1135
	.quad	.L.str.1136
	.quad	.L.str.1137
	.quad	.L.str.1138
	.quad	.L.str.1139
	.quad	.L.str.1140
	.quad	.L.str.1141
	.quad	.L.str.1142
	.quad	.L.str.1143
	.quad	.L.str.1144
	.quad	.L.str.1145
	.quad	.L.str.1146
	.quad	.L.str.1147
	.quad	.L.str.1148
	.quad	.L.str.1149
	.quad	.L.str.1150
	.quad	.L.str.1151
	.quad	.L.str.1152
	.quad	.L.str.1153
	.quad	.L.str.1154
	.quad	.L.str.1155
	.quad	.L.str.1156
	.quad	.L.str.1157
	.quad	.L.str.1158
	.quad	.L.str.1159
	.quad	.L.str.1160
	.quad	.L.str.1161
	.quad	.L.str.1162
	.quad	.L.str.1163
	.quad	.L.str.1164
	.quad	.L.str.1165
	.quad	.L.str.1166
	.quad	.L.str.1167
	.quad	.L.str.1168
	.quad	.L.str.1169
	.quad	.L.str.1170
	.quad	.L.str.1171
	.quad	.L.str.1172
	.quad	.L.str.1173
	.quad	.L.str.1174
	.quad	.L.str.1175
	.quad	.L.str.1176
	.quad	.L.str.1177
	.quad	.L.str.1178
	.quad	.L.str.1179
	.quad	.L.str.1180
	.quad	.L.str.1181
	.quad	.L.str.1182
	.quad	.L.str.1183
	.quad	.L.str.1184
	.size	defsym_name, 8592

	.type	read_buffer,@object     # @read_buffer
	.local	read_buffer
	.comm	read_buffer,8,8
	.type	read_buffer_size,@object # @read_buffer_size
	.local	read_buffer_size
	.comm	read_buffer_size,8,8
	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"EMACSLOADPATH"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/usr/local/share/emacs/25.1/site-lisp:/usr/local/share/emacs/site-lisp"
	.size	.L.str.23, 71

	.type	dir_warning.format,@object # @dir_warning.format
	.section	.rodata,"a",@progbits
	.align	16
dir_warning.format:
	.asciz	"Warning: %s '%s': %s\n"
	.size	dir_warning.format, 22

	.type	Sget_load_suffixes,@object # @Sget_load_suffixes
	.data
	.align	8
Sget_load_suffixes:
	.quad	167772160               # 0xa000000
	.quad	Fget_load_suffixes
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.1195
	.quad	0
	.quad	0
	.size	Sget_load_suffixes, 48

	.type	Sget_file_char,@object  # @Sget_file_char
	.align	8
Sget_file_char:
	.quad	167772160               # 0xa000000
	.quad	Fget_file_char
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.603
	.quad	0
	.quad	0
	.size	Sget_file_char, 48

	.type	syms_of_lread.o_fwd,@object # @syms_of_lread.o_fwd
	.local	syms_of_lread.o_fwd
	.comm	syms_of_lread.o_fwd,16,8
	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"obarray"
	.size	.L.str.24, 8

	.type	syms_of_lread.o_fwd.25,@object # @syms_of_lread.o_fwd.25
	.local	syms_of_lread.o_fwd.25
	.comm	syms_of_lread.o_fwd.25,16,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"values"
	.size	.L.str.26, 7

	.type	syms_of_lread.o_fwd.27,@object # @syms_of_lread.o_fwd.27
	.local	syms_of_lread.o_fwd.27
	.comm	syms_of_lread.o_fwd.27,16,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"standard-input"
	.size	.L.str.28, 15

	.type	syms_of_lread.o_fwd.29,@object # @syms_of_lread.o_fwd.29
	.local	syms_of_lread.o_fwd.29
	.comm	syms_of_lread.o_fwd.29,16,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"read-with-symbol-positions"
	.size	.L.str.30, 27

	.type	syms_of_lread.o_fwd.31,@object # @syms_of_lread.o_fwd.31
	.local	syms_of_lread.o_fwd.31
	.comm	syms_of_lread.o_fwd.31,16,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"read-symbol-positions-list"
	.size	.L.str.32, 27

	.type	syms_of_lread.o_fwd.33,@object # @syms_of_lread.o_fwd.33
	.local	syms_of_lread.o_fwd.33
	.comm	syms_of_lread.o_fwd.33,16,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"read-circle"
	.size	.L.str.34, 12

	.type	syms_of_lread.o_fwd.35,@object # @syms_of_lread.o_fwd.35
	.local	syms_of_lread.o_fwd.35
	.comm	syms_of_lread.o_fwd.35,16,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"load-path"
	.size	.L.str.36, 10

	.type	syms_of_lread.o_fwd.37,@object # @syms_of_lread.o_fwd.37
	.local	syms_of_lread.o_fwd.37
	.comm	syms_of_lread.o_fwd.37,16,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"load-suffixes"
	.size	.L.str.38, 14

	.type	syms_of_lread.o_fwd.39,@object # @syms_of_lread.o_fwd.39
	.local	syms_of_lread.o_fwd.39
	.comm	syms_of_lread.o_fwd.39,16,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"module-file-suffix"
	.size	.L.str.40, 19

	.type	syms_of_lread.o_fwd.41,@object # @syms_of_lread.o_fwd.41
	.local	syms_of_lread.o_fwd.41
	.comm	syms_of_lread.o_fwd.41,16,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"load-file-rep-suffixes"
	.size	.L.str.42, 23

	.type	syms_of_lread.b_fwd,@object # @syms_of_lread.b_fwd
	.local	syms_of_lread.b_fwd
	.comm	syms_of_lread.b_fwd,16,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"load-in-progress"
	.size	.L.str.43, 17

	.type	syms_of_lread.o_fwd.44,@object # @syms_of_lread.o_fwd.44
	.local	syms_of_lread.o_fwd.44
	.comm	syms_of_lread.o_fwd.44,16,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"after-load-alist"
	.size	.L.str.45, 17

	.type	syms_of_lread.o_fwd.46,@object # @syms_of_lread.o_fwd.46
	.local	syms_of_lread.o_fwd.46
	.comm	syms_of_lread.o_fwd.46,16,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"load-history"
	.size	.L.str.47, 13

	.type	syms_of_lread.o_fwd.48,@object # @syms_of_lread.o_fwd.48
	.local	syms_of_lread.o_fwd.48
	.comm	syms_of_lread.o_fwd.48,16,8
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"load-file-name"
	.size	.L.str.49, 15

	.type	syms_of_lread.o_fwd.50,@object # @syms_of_lread.o_fwd.50
	.local	syms_of_lread.o_fwd.50
	.comm	syms_of_lread.o_fwd.50,16,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"user-init-file"
	.size	.L.str.51, 15

	.type	syms_of_lread.o_fwd.52,@object # @syms_of_lread.o_fwd.52
	.local	syms_of_lread.o_fwd.52
	.comm	syms_of_lread.o_fwd.52,16,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"current-load-list"
	.size	.L.str.53, 18

	.type	syms_of_lread.o_fwd.54,@object # @syms_of_lread.o_fwd.54
	.local	syms_of_lread.o_fwd.54
	.comm	syms_of_lread.o_fwd.54,16,8
	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"load-read-function"
	.size	.L.str.55, 19

	.type	syms_of_lread.o_fwd.56,@object # @syms_of_lread.o_fwd.56
	.local	syms_of_lread.o_fwd.56
	.comm	syms_of_lread.o_fwd.56,16,8
	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"load-source-file-function"
	.size	.L.str.57, 26

	.type	syms_of_lread.b_fwd.58,@object # @syms_of_lread.b_fwd.58
	.local	syms_of_lread.b_fwd.58
	.comm	syms_of_lread.b_fwd.58,16,8
	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"load-force-doc-strings"
	.size	.L.str.59, 23

	.type	syms_of_lread.b_fwd.60,@object # @syms_of_lread.b_fwd.60
	.local	syms_of_lread.b_fwd.60
	.comm	syms_of_lread.b_fwd.60,16,8
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"load-convert-to-unibyte"
	.size	.L.str.61, 24

	.type	syms_of_lread.o_fwd.62,@object # @syms_of_lread.o_fwd.62
	.local	syms_of_lread.o_fwd.62
	.comm	syms_of_lread.o_fwd.62,16,8
	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"source-directory"
	.size	.L.str.63, 17

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"../"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"/home/yonghyun.kim/clean-tests/clean-emacs/emacs-25.1/lisp"
	.size	.L.str.65, 59

	.type	syms_of_lread.o_fwd.66,@object # @syms_of_lread.o_fwd.66
	.local	syms_of_lread.o_fwd.66
	.comm	syms_of_lread.o_fwd.66,16,8
	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"preloaded-file-list"
	.size	.L.str.67, 20

	.type	syms_of_lread.o_fwd.68,@object # @syms_of_lread.o_fwd.68
	.local	syms_of_lread.o_fwd.68
	.comm	syms_of_lread.o_fwd.68,16,8
	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"byte-boolean-vars"
	.size	.L.str.69, 18

	.type	syms_of_lread.b_fwd.70,@object # @syms_of_lread.b_fwd.70
	.local	syms_of_lread.b_fwd.70
	.comm	syms_of_lread.b_fwd.70,16,8
	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"load-dangerous-libraries"
	.size	.L.str.71, 25

	.type	syms_of_lread.b_fwd.72,@object # @syms_of_lread.b_fwd.72
	.local	syms_of_lread.b_fwd.72
	.comm	syms_of_lread.b_fwd.72,16,8
	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"force-load-messages"
	.size	.L.str.73, 20

	.type	syms_of_lread.o_fwd.74,@object # @syms_of_lread.o_fwd.74
	.local	syms_of_lread.o_fwd.74
	.comm	syms_of_lread.o_fwd.74,16,8
	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"bytecomp-version-regexp"
	.size	.L.str.75, 24

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"^;;;.\\(in Emacs version\\|bytecomp version FSF\\)"
	.size	.L.str.76, 48

	.type	syms_of_lread.o_fwd.77,@object # @syms_of_lread.o_fwd.77
	.local	syms_of_lread.o_fwd.77
	.comm	syms_of_lread.o_fwd.77,16,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"lexical-binding"
	.size	.L.str.78, 16

	.type	syms_of_lread.o_fwd.79,@object # @syms_of_lread.o_fwd.79
	.local	syms_of_lread.o_fwd.79
	.comm	syms_of_lread.o_fwd.79,16,8
	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"eval-buffer-list"
	.size	.L.str.80, 17

	.type	syms_of_lread.o_fwd.81,@object # @syms_of_lread.o_fwd.81
	.local	syms_of_lread.o_fwd.81
	.comm	syms_of_lread.o_fwd.81,16,8
	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"old-style-backquotes"
	.size	.L.str.82, 21

	.type	syms_of_lread.b_fwd.83,@object # @syms_of_lread.b_fwd.83
	.local	syms_of_lread.b_fwd.83
	.comm	syms_of_lread.b_fwd.83,16,8
	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"load-prefer-newer"
	.size	.L.str.84, 18

	.type	read_objects,@object    # @read_objects
	.local	read_objects
	.comm	read_objects,8,8
	.type	seen_list,@object       # @seen_list
	.local	seen_list
	.comm	seen_list,8,8
	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Non-character input-event"
	.size	.L.str.85, 26

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Loading `%s': old-style backquotes detected!"
	.size	.L.str.86, 45

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"nil"
	.size	.L.str.87, 4

	.type	readchar_count,@object  # @readchar_count
	.local	readchar_count
	.comm	readchar_count,8,8
	.type	read_from_string_limit,@object # @read_from_string_limit
	.local	read_from_string_limit
	.comm	read_from_string_limit,8,8
	.type	read_from_string_index_byte,@object # @read_from_string_index_byte
	.local	read_from_string_index_byte
	.comm	read_from_string_index_byte,8,8
	.type	unread_char,@object     # @unread_char
	.local	unread_char
	.comm	unread_char,4,4
	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"invalid multibyte form"
	.size	.L.str.88, 23

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"internal-macroexpand-for-load"
	.size	.L.str.89, 30

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Reading from killed buffer"
	.size	.L.str.90, 27

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"../lisp/"
	.size	.L.str.91, 9

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	") or . in a vector"
	.size	.L.str.92, 19

	.type	saved_doc_string_position,@object # @saved_doc_string_position
	.local	saved_doc_string_position
	.comm	saved_doc_string_position,8,8
	.type	saved_doc_string_length,@object # @saved_doc_string_length
	.local	saved_doc_string_length
	.comm	saved_doc_string_length,8,8
	.type	prev_saved_doc_string_position,@object # @prev_saved_doc_string_position
	.local	prev_saved_doc_string_position
	.comm	prev_saved_doc_string_position,8,8
	.type	prev_saved_doc_string_length,@object # @prev_saved_doc_string_length
	.local	prev_saved_doc_string_length
	.comm	prev_saved_doc_string_length,8,8
	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	". in wrong context"
	.size	.L.str.93, 19

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"] in a list"
	.size	.L.str.94, 12

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Invalid extended read marker at head of #s list (only hash-table allowed)"
	.size	.L.str.95, 74

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Odd number of elements in hashtable data"
	.size	.L.str.96, 41

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"#"
	.size	.L.str.97, 2

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Invalid size char-table"
	.size	.L.str.98, 24

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Zero-sized sub char-table"
	.size	.L.str.99, 26

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Invalid depth in sub char-table"
	.size	.L.str.100, 32

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Invalid size in sub char-table"
	.size	.L.str.101, 31

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Invalid minimum character in sub-char-table"
	.size	.L.str.102, 44

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"#^^"
	.size	.L.str.103, 4

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"#^"
	.size	.L.str.104, 3

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"#&..."
	.size	.L.str.105, 6

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Empty byte-code object"
	.size	.L.str.106, 23

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Invalid string property list"
	.size	.L.str.107, 29

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"\"';()[]#`,"
	.size	.L.str.108, 11

	.type	new_backquote_flag,@object # @new_backquote_flag
	.local	new_backquote_flag
	.comm	new_backquote_flag,1,1
	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"\"';()[]#?`,."
	.size	.L.str.109, 13

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"?"
	.size	.L.str.110, 2

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Invalid modifier in string"
	.size	.L.str.111, 27

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"\"';([#?`,"
	.size	.L.str.112, 10

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Invalid byte code"
	.size	.L.str.113, 18

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"integer, radix %ld"
	.size	.L.str.114, 19

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Unexpected mutation error in reader"
	.size	.L.str.115, 36

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Invalid escape character syntax"
	.size	.L.str.116, 32

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Hex character out of range: \\x%x..."
	.size	.L.str.117, 36

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Non-hex digit used for Unicode escape"
	.size	.L.str.118, 38

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Non-Unicode character: 0x%x"
	.size	.L.str.119, 28

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"ATOM"
	.size	.L.str.120, 5

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"CLIPBOARD"
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"CLIPBOARD_MANAGER"
	.size	.L.str.122, 18

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"COMPOUND_TEXT"
	.size	.L.str.123, 14

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	":adstyle"
	.size	.L.str.124, 9

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	":advertised-binding"
	.size	.L.str.125, 20

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	":align-to"
	.size	.L.str.126, 10

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	":antialias"
	.size	.L.str.127, 11

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	":ascent"
	.size	.L.str.128, 8

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	":ascii-compatible-p"
	.size	.L.str.129, 20

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	":autohint"
	.size	.L.str.130, 10

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	":avgwidth"
	.size	.L.str.131, 10

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	":background"
	.size	.L.str.132, 12

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	":bold"
	.size	.L.str.133, 6

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	":box"
	.size	.L.str.134, 5

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	":buffer"
	.size	.L.str.135, 8

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	":button"
	.size	.L.str.136, 8

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	":bytesize"
	.size	.L.str.137, 10

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	":category"
	.size	.L.str.138, 10

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	":coding"
	.size	.L.str.139, 8

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	":color"
	.size	.L.str.140, 7

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	":color-adjustment"
	.size	.L.str.141, 18

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	":color-symbols"
	.size	.L.str.142, 15

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	":combining-capability"
	.size	.L.str.143, 22

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	":command"
	.size	.L.str.144, 9

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	":connection-type"
	.size	.L.str.145, 17

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	":conversion"
	.size	.L.str.146, 12

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	":crop"
	.size	.L.str.147, 6

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	":data"
	.size	.L.str.148, 6

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	":decode-translation-table"
	.size	.L.str.149, 26

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	":default-char"
	.size	.L.str.150, 14

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	":device"
	.size	.L.str.151, 8

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	":distant-foreground"
	.size	.L.str.152, 20

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	":documentation"
	.size	.L.str.153, 15

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	":dpi"
	.size	.L.str.154, 5

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	":embolden"
	.size	.L.str.155, 10

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	":enable"
	.size	.L.str.156, 8

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	":encode-translation-table"
	.size	.L.str.157, 26

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	":eval"
	.size	.L.str.158, 6

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	":family"
	.size	.L.str.159, 8

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	":file"
	.size	.L.str.160, 6

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	":filter"
	.size	.L.str.161, 8

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	":flowcontrol"
	.size	.L.str.162, 13

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	":font"
	.size	.L.str.163, 6

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	":font-entity"
	.size	.L.str.164, 13

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	":fontset"
	.size	.L.str.165, 9

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	":foreground"
	.size	.L.str.166, 12

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	":foundry"
	.size	.L.str.167, 9

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	":crlfiles"
	.size	.L.str.168, 10

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	":hostname"
	.size	.L.str.169, 10

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	":keylist"
	.size	.L.str.170, 9

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	":loglevel"
	.size	.L.str.171, 10

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	":min-prime-bits"
	.size	.L.str.172, 16

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	":priority"
	.size	.L.str.173, 10

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	":trustfiles"
	.size	.L.str.174, 12

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	":verify-error"
	.size	.L.str.175, 14

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	":verify-flags"
	.size	.L.str.176, 14

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	":height"
	.size	.L.str.177, 8

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	":help"
	.size	.L.str.178, 6

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	":heuristic-mask"
	.size	.L.str.179, 16

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	":hinting"
	.size	.L.str.180, 9

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	":hintstyle"
	.size	.L.str.181, 11

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	":host"
	.size	.L.str.182, 6

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	":ignore-defface"
	.size	.L.str.183, 16

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	":image"
	.size	.L.str.184, 7

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	":index"
	.size	.L.str.185, 7

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	":inherit"
	.size	.L.str.186, 9

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	":inverse-video"
	.size	.L.str.187, 15

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	":italic"
	.size	.L.str.188, 8

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	":key-sequence"
	.size	.L.str.189, 14

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	":keys"
	.size	.L.str.190, 6

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	":label"
	.size	.L.str.191, 7

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	":lang"
	.size	.L.str.192, 6

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	":lcdfilter"
	.size	.L.str.193, 11

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	":line-width"
	.size	.L.str.194, 12

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	":loader"
	.size	.L.str.195, 8

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	":local"
	.size	.L.str.196, 7

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	":log"
	.size	.L.str.197, 5

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	":map"
	.size	.L.str.198, 5

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	":margin"
	.size	.L.str.199, 8

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	":mask"
	.size	.L.str.200, 6

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	":matrix"
	.size	.L.str.201, 8

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	":max-height"
	.size	.L.str.202, 12

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	":max-width"
	.size	.L.str.203, 11

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	":mnemonic"
	.size	.L.str.204, 10

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	":name"
	.size	.L.str.205, 6

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	":noquery"
	.size	.L.str.206, 9

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	":nowait"
	.size	.L.str.207, 8

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	":otf"
	.size	.L.str.208, 5

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	":overline"
	.size	.L.str.209, 10

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	":parity"
	.size	.L.str.210, 8

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	":plist"
	.size	.L.str.211, 7

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	":pointer"
	.size	.L.str.212, 9

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	":port"
	.size	.L.str.213, 6

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	":post-read-conversion"
	.size	.L.str.214, 22

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	":pre-write-conversion"
	.size	.L.str.215, 22

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	":process"
	.size	.L.str.216, 9

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	":propertize"
	.size	.L.str.217, 12

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	":pt-height"
	.size	.L.str.218, 11

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	":pt-width"
	.size	.L.str.219, 10

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	":radio"
	.size	.L.str.220, 7

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	":registry"
	.size	.L.str.221, 10

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	":rehash-size"
	.size	.L.str.222, 13

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	":rehash-threshold"
	.size	.L.str.223, 18

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	":relative-height"
	.size	.L.str.224, 17

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	":relative-width"
	.size	.L.str.225, 16

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	":relief"
	.size	.L.str.226, 8

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	":remote"
	.size	.L.str.227, 8

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	":reverse-video"
	.size	.L.str.228, 15

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	":rgba"
	.size	.L.str.229, 6

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	":rotation"
	.size	.L.str.230, 10

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	":rtl"
	.size	.L.str.231, 5

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	":scalable"
	.size	.L.str.232, 10

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	":script"
	.size	.L.str.233, 8

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	":sentinel"
	.size	.L.str.234, 10

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	":server"
	.size	.L.str.235, 8

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	":service"
	.size	.L.str.236, 9

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	":size"
	.size	.L.str.237, 6

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	":slant"
	.size	.L.str.238, 7

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	":spacing"
	.size	.L.str.239, 9

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	":speed"
	.size	.L.str.240, 7

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	":stderr"
	.size	.L.str.241, 8

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	":stipple"
	.size	.L.str.242, 9

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	":stop"
	.size	.L.str.243, 6

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	":stopbits"
	.size	.L.str.244, 10

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	":strike-through"
	.size	.L.str.245, 16

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	":style"
	.size	.L.str.246, 7

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	":summary"
	.size	.L.str.247, 9

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	":test"
	.size	.L.str.248, 6

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	":toggle"
	.size	.L.str.249, 8

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	":type"
	.size	.L.str.250, 6

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	":underline"
	.size	.L.str.251, 11

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	":user-spec"
	.size	.L.str.252, 11

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	":vert-only"
	.size	.L.str.253, 11

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	":visible"
	.size	.L.str.254, 9

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	":volume"
	.size	.L.str.255, 8

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	":weakness"
	.size	.L.str.256, 10

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	":weight"
	.size	.L.str.257, 8

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	":width"
	.size	.L.str.258, 7

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"DELETE"
	.size	.L.str.259, 7

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"_EMACS_TMP_"
	.size	.L.str.260, 12

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"EmacsFrameResize"
	.size	.L.str.261, 17

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"INCR"
	.size	.L.str.262, 5

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"INTEGER"
	.size	.L.str.263, 8

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"MULTIPLE"
	.size	.L.str.264, 9

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"NULL"
	.size	.L.str.265, 5

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"PRIMARY"
	.size	.L.str.266, 8

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"SAVE_TARGETS"
	.size	.L.str.267, 13

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"SECONDARY"
	.size	.L.str.268, 10

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"STRING"
	.size	.L.str.269, 7

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"TARGETS"
	.size	.L.str.270, 8

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"TEXT"
	.size	.L.str.271, 5

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"TIMESTAMP"
	.size	.L.str.272, 10

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"UTF8_STRING"
	.size	.L.str.273, 12

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"above"
	.size	.L.str.274, 6

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"above-handle"
	.size	.L.str.275, 13

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"access"
	.size	.L.str.276, 7

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"access-file"
	.size	.L.str.277, 12

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"activate-input-method"
	.size	.L.str.278, 22

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"activate-menubar-hook"
	.size	.L.str.279, 22

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"add-name-to-file"
	.size	.L.str.280, 17

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"adjust-frame-size-1"
	.size	.L.str.281, 20

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"adjust-frame-size-2"
	.size	.L.str.282, 20

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"adjust-frame-size-3"
	.size	.L.str.283, 20

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"after-change-functions"
	.size	.L.str.284, 23

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"after-handle"
	.size	.L.str.285, 13

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"after-insert-file-set-coding"
	.size	.L.str.286, 29

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"after-string"
	.size	.L.str.287, 13

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"all-events"
	.size	.L.str.288, 11

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"alpha"
	.size	.L.str.289, 6

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"alt"
	.size	.L.str.290, 4

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"&optional"
	.size	.L.str.291, 10

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"&rest"
	.size	.L.str.292, 6

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"append"
	.size	.L.str.293, 7

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"apply"
	.size	.L.str.294, 6

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"args"
	.size	.L.str.295, 5

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"args-out-of-range"
	.size	.L.str.296, 18

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"arith-error"
	.size	.L.str.297, 12

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"arrayp"
	.size	.L.str.298, 7

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"arrow"
	.size	.L.str.299, 6

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"ascii"
	.size	.L.str.300, 6

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"ascii-0"
	.size	.L.str.301, 8

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"ascii-character"
	.size	.L.str.302, 16

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"attrib"
	.size	.L.str.303, 7

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"auto-composed"
	.size	.L.str.304, 14

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"auto-fill-chars"
	.size	.L.str.305, 16

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"auto-hscroll-mode"
	.size	.L.str.306, 18

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"auto-lower"
	.size	.L.str.307, 11

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"auto-raise"
	.size	.L.str.308, 11

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"auto-save-coding"
	.size	.L.str.309, 17

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"autoload"
	.size	.L.str.310, 9

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"Automatic GC"
	.size	.L.str.311, 13

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"background-color"
	.size	.L.str.312, 17

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"background-mode"
	.size	.L.str.313, 16

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"`"
	.size	.L.str.314, 2

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"bar"
	.size	.L.str.315, 4

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"before-change-functions"
	.size	.L.str.316, 24

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"before-handle"
	.size	.L.str.317, 14

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"before-string"
	.size	.L.str.318, 14

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"beginning-of-buffer"
	.size	.L.str.319, 20

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"below-handle"
	.size	.L.str.320, 13

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"big"
	.size	.L.str.321, 4

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"big5"
	.size	.L.str.322, 5

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"bitmap-spec-p"
	.size	.L.str.323, 14

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"bold"
	.size	.L.str.324, 5

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"bool-vector"
	.size	.L.str.325, 12

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"bool-vector-p"
	.size	.L.str.326, 14

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"border"
	.size	.L.str.327, 7

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"border-color"
	.size	.L.str.328, 13

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"border-width"
	.size	.L.str.329, 13

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"both"
	.size	.L.str.330, 5

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"both-horiz"
	.size	.L.str.331, 11

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"bottom"
	.size	.L.str.332, 7

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"bottom-divider"
	.size	.L.str.333, 15

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"bottom-divider-width"
	.size	.L.str.334, 21

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"bottom-margin"
	.size	.L.str.335, 14

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"boundary"
	.size	.L.str.336, 9

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"box"
	.size	.L.str.337, 4

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"buffer"
	.size	.L.str.338, 7

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"buffer-access-fontify-functions"
	.size	.L.str.339, 32

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"buffer-file-coding-system"
	.size	.L.str.340, 26

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"buffer-list"
	.size	.L.str.341, 12

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"buffer-list-update-hook"
	.size	.L.str.342, 24

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"buffer-name-history"
	.size	.L.str.343, 20

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"buffer-or-string-p"
	.size	.L.str.344, 19

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"buffer-position"
	.size	.L.str.345, 16

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"buffer-predicate"
	.size	.L.str.346, 17

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"buffer-read-only"
	.size	.L.str.347, 17

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"bufferp"
	.size	.L.str.348, 8

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"buffers"
	.size	.L.str.349, 8

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"buried-buffer-list"
	.size	.L.str.350, 19

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"byte-code-meter"
	.size	.L.str.351, 16

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"c"
	.size	.L.str.352, 2

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"call-process"
	.size	.L.str.353, 13

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"call-process-region"
	.size	.L.str.354, 20

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"cancel-timer"
	.size	.L.str.355, 13

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"car-less-than-car"
	.size	.L.str.356, 18

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"case-fold-search"
	.size	.L.str.357, 17

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"case-table"
	.size	.L.str.358, 11

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"case-table-p"
	.size	.L.str.359, 13

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"category"
	.size	.L.str.360, 9

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"category-table"
	.size	.L.str.361, 15

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"category-table-p"
	.size	.L.str.362, 17

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"categoryp"
	.size	.L.str.363, 10

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"categorysetp"
	.size	.L.str.364, 13

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"ccl"
	.size	.L.str.365, 4

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"ccl-program-idx"
	.size	.L.str.366, 16

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"cclp"
	.size	.L.str.367, 5

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"cdr"
	.size	.L.str.368, 4

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"ceiling"
	.size	.L.str.369, 8

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"center"
	.size	.L.str.370, 7

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"change-frame-size"
	.size	.L.str.371, 18

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"change-major-mode-hook"
	.size	.L.str.372, 23

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"char-code-property-table"
	.size	.L.str.373, 25

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"char-or-string-p"
	.size	.L.str.374, 17

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"char-script-table"
	.size	.L.str.375, 18

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"char-table"
	.size	.L.str.376, 11

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"char-table-extra-slots"
	.size	.L.str.377, 23

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"char-table-p"
	.size	.L.str.378, 13

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"characterp"
	.size	.L.str.379, 11

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"charset"
	.size	.L.str.380, 8

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"charsetp"
	.size	.L.str.381, 9

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"choice"
	.size	.L.str.382, 7

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"circle"
	.size	.L.str.383, 7

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	"circular-list"
	.size	.L.str.384, 14

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"clone-of"
	.size	.L.str.385, 9

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"close"
	.size	.L.str.386, 6

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"close-nowrite"
	.size	.L.str.387, 14

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"close-write"
	.size	.L.str.388, 12

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"closed"
	.size	.L.str.389, 7

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"closure"
	.size	.L.str.390, 8

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"cmajflt"
	.size	.L.str.391, 8

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"cminflt"
	.size	.L.str.392, 8

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"code-conversion-map"
	.size	.L.str.393, 20

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"code-conversion-map-id"
	.size	.L.str.394, 23

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"codeset"
	.size	.L.str.395, 8

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"coding-system-define-form"
	.size	.L.str.396, 26

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"coding-system-error"
	.size	.L.str.397, 20

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"coding-system-history"
	.size	.L.str.398, 22

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"coding-system-p"
	.size	.L.str.399, 16

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"comm"
	.size	.L.str.400, 5

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	","
	.size	.L.str.401, 2

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	",@"
	.size	.L.str.402, 3

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	",."
	.size	.L.str.403, 3

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"command-execute"
	.size	.L.str.404, 16

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"commandp"
	.size	.L.str.405, 9

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"comment-end-can-be-escaped"
	.size	.L.str.406, 27

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"compiled-function"
	.size	.L.str.407, 18

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"completion-ignore-case"
	.size	.L.str.408, 23

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"composition"
	.size	.L.str.409, 12

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"compound-text"
	.size	.L.str.410, 14

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"config-changed-event"
	.size	.L.str.411, 21

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"connect"
	.size	.L.str.412, 8

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"cons"
	.size	.L.str.413, 5

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"conses"
	.size	.L.str.414, 7

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"consp"
	.size	.L.str.415, 6

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"continuation"
	.size	.L.str.416, 13

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"copy-directory"
	.size	.L.str.417, 15

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"copy-file"
	.size	.L.str.418, 10

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"count"
	.size	.L.str.419, 6

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"create"
	.size	.L.str.420, 7

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"cstime"
	.size	.L.str.421, 7

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"ctime"
	.size	.L.str.422, 6

	.type	.L.str.423,@object      # @.str.423
.L.str.423:
	.asciz	"current-input-method"
	.size	.L.str.423, 21

	.type	.L.str.424,@object      # @.str.424
.L.str.424:
	.asciz	"cursor"
	.size	.L.str.424, 7

	.type	.L.str.425,@object      # @.str.425
.L.str.425:
	.asciz	"cursor-color"
	.size	.L.str.425, 13

	.type	.L.str.426,@object      # @.str.426
.L.str.426:
	.asciz	"cursor-in-echo-area"
	.size	.L.str.426, 20

	.type	.L.str.427,@object      # @.str.427
.L.str.427:
	.asciz	"cursor-type"
	.size	.L.str.427, 12

	.type	.L.str.428,@object      # @.str.428
.L.str.428:
	.asciz	"custom-variable-p"
	.size	.L.str.428, 18

	.type	.L.str.429,@object      # @.str.429
.L.str.429:
	.asciz	"cutime"
	.size	.L.str.429, 7

	.type	.L.str.430,@object      # @.str.430
.L.str.430:
	.asciz	"cyclic-function-indirection"
	.size	.L.str.430, 28

	.type	.L.str.431,@object      # @.str.431
.L.str.431:
	.asciz	"cyclic-variable-indirection"
	.size	.L.str.431, 28

	.type	.L.str.432,@object      # @.str.432
.L.str.432:
	.asciz	"d"
	.size	.L.str.432, 2

	.type	.L.str.433,@object      # @.str.433
.L.str.433:
	.asciz	"data"
	.size	.L.str.433, 5

	.type	.L.str.434,@object      # @.str.434
.L.str.434:
	.asciz	"datagram"
	.size	.L.str.434, 9

	.type	.L.str.435,@object      # @.str.435
.L.str.435:
	.asciz	"days"
	.size	.L.str.435, 5

	.type	.L.str.436,@object      # @.str.436
.L.str.436:
	.asciz	"dbus-event"
	.size	.L.str.436, 11

	.type	.L.str.437,@object      # @.str.437
.L.str.437:
	.asciz	"deactivate-mark"
	.size	.L.str.437, 16

	.type	.L.str.438,@object      # @.str.438
.L.str.438:
	.asciz	"debug"
	.size	.L.str.438, 6

	.type	.L.str.439,@object      # @.str.439
.L.str.439:
	.asciz	"debug-on-next-call"
	.size	.L.str.439, 19

	.type	.L.str.440,@object      # @.str.440
.L.str.440:
	.asciz	"decomposed-characters"
	.size	.L.str.440, 22

	.type	.L.str.441,@object      # @.str.441
.L.str.441:
	.asciz	"defalias-fset-function"
	.size	.L.str.441, 23

	.type	.L.str.442,@object      # @.str.442
.L.str.442:
	.asciz	"default"
	.size	.L.str.442, 8

	.type	.L.str.443,@object      # @.str.443
.L.str.443:
	.asciz	"default-directory"
	.size	.L.str.443, 18

	.type	.L.str.444,@object      # @.str.444
.L.str.444:
	.asciz	"deferred-action-function"
	.size	.L.str.444, 25

	.type	.L.str.445,@object      # @.str.445
.L.str.445:
	.asciz	"defun"
	.size	.L.str.445, 6

	.type	.L.str.446,@object      # @.str.446
.L.str.446:
	.asciz	"delay"
	.size	.L.str.446, 6

	.type	.L.str.447,@object      # @.str.447
.L.str.447:
	.asciz	"delayed-warnings-hook"
	.size	.L.str.447, 22

	.type	.L.str.448,@object      # @.str.448
.L.str.448:
	.asciz	"delete"
	.size	.L.str.448, 7

	.type	.L.str.449,@object      # @.str.449
.L.str.449:
	.asciz	"delete-by-moving-to-trash"
	.size	.L.str.449, 26

	.type	.L.str.450,@object      # @.str.450
.L.str.450:
	.asciz	"delete-directory"
	.size	.L.str.450, 17

	.type	.L.str.451,@object      # @.str.451
.L.str.451:
	.asciz	"delete-file"
	.size	.L.str.451, 12

	.type	.L.str.452,@object      # @.str.452
.L.str.452:
	.asciz	"delete-frame"
	.size	.L.str.452, 13

	.type	.L.str.453,@object      # @.str.453
.L.str.453:
	.asciz	"delete-frame-functions"
	.size	.L.str.453, 23

	.type	.L.str.454,@object      # @.str.454
.L.str.454:
	.asciz	"delete-self"
	.size	.L.str.454, 12

	.type	.L.str.455,@object      # @.str.455
.L.str.455:
	.asciz	"delete-terminal-functions"
	.size	.L.str.455, 26

	.type	.L.str.456,@object      # @.str.456
.L.str.456:
	.asciz	"delete-window"
	.size	.L.str.456, 14

	.type	.L.str.457,@object      # @.str.457
.L.str.457:
	.asciz	"dir-ok"
	.size	.L.str.457, 7

	.type	.L.str.458,@object      # @.str.458
.L.str.458:
	.asciz	"directory-file-name"
	.size	.L.str.458, 20

	.type	.L.str.459,@object      # @.str.459
.L.str.459:
	.asciz	"directory-files"
	.size	.L.str.459, 16

	.type	.L.str.460,@object      # @.str.460
.L.str.460:
	.asciz	"directory-files-and-attributes"
	.size	.L.str.460, 31

	.type	.L.str.461,@object      # @.str.461
.L.str.461:
	.asciz	"disabled"
	.size	.L.str.461, 9

	.type	.L.str.462,@object      # @.str.462
.L.str.462:
	.asciz	"display"
	.size	.L.str.462, 8

	.type	.L.str.463,@object      # @.str.463
.L.str.463:
	.asciz	"display-buffer"
	.size	.L.str.463, 15

	.type	.L.str.464,@object      # @.str.464
.L.str.464:
	.asciz	"display-table"
	.size	.L.str.464, 14

	.type	.L.str.465,@object      # @.str.465
.L.str.465:
	.asciz	"display-type"
	.size	.L.str.465, 13

	.type	.L.str.466,@object      # @.str.466
.L.str.466:
	.asciz	"do-after-load-evaluation"
	.size	.L.str.466, 25

	.type	.L.str.467,@object      # @.str.467
.L.str.467:
	.asciz	"domain-error"
	.size	.L.str.467, 13

	.type	.L.str.468,@object      # @.str.468
.L.str.468:
	.asciz	"dont-follow"
	.size	.L.str.468, 12

	.type	.L.str.469,@object      # @.str.469
.L.str.469:
	.asciz	"dos"
	.size	.L.str.469, 4

	.type	.L.str.470,@object      # @.str.470
.L.str.470:
	.asciz	"down"
	.size	.L.str.470, 5

	.type	.L.str.471,@object      # @.str.471
.L.str.471:
	.asciz	"drag-n-drop"
	.size	.L.str.471, 12

	.type	.L.str.472,@object      # @.str.472
.L.str.472:
	.asciz	"dragging"
	.size	.L.str.472, 9

	.type	.L.str.473,@object      # @.str.473
.L.str.473:
	.asciz	"echo-area-clear-hook"
	.size	.L.str.473, 21

	.type	.L.str.474,@object      # @.str.474
.L.str.474:
	.asciz	"echo-keystrokes"
	.size	.L.str.474, 16

	.type	.L.str.475,@object      # @.str.475
.L.str.475:
	.asciz	"edge-detection"
	.size	.L.str.475, 15

	.type	.L.str.476,@object      # @.str.476
.L.str.476:
	.asciz	"egid"
	.size	.L.str.476, 5

	.type	.L.str.477,@object      # @.str.477
.L.str.477:
	.asciz	"eight-bit"
	.size	.L.str.477, 10

	.type	.L.str.478,@object      # @.str.478
.L.str.478:
	.asciz	"emacs"
	.size	.L.str.478, 6

	.type	.L.str.479,@object      # @.str.479
.L.str.479:
	.asciz	"emacs-mule"
	.size	.L.str.479, 11

	.type	.L.str.480,@object      # @.str.480
.L.str.480:
	.asciz	"emboss"
	.size	.L.str.480, 7

	.type	.L.str.481,@object      # @.str.481
.L.str.481:
	.asciz	"empty-box"
	.size	.L.str.481, 10

	.type	.L.str.482,@object      # @.str.482
.L.str.482:
	.asciz	"empty-line"
	.size	.L.str.482, 11

	.type	.L.str.483,@object      # @.str.483
.L.str.483:
	.asciz	"enable-recursive-minibuffers"
	.size	.L.str.483, 29

	.type	.L.str.484,@object      # @.str.484
.L.str.484:
	.asciz	"end-of-buffer"
	.size	.L.str.484, 14

	.type	.L.str.485,@object      # @.str.485
.L.str.485:
	.asciz	"end-of-file"
	.size	.L.str.485, 12

	.type	.L.str.486,@object      # @.str.486
.L.str.486:
	.asciz	"end-scroll"
	.size	.L.str.486, 11

	.type	.L.str.487,@object      # @.str.487
.L.str.487:
	.asciz	"eq"
	.size	.L.str.487, 3

	.type	.L.str.488,@object      # @.str.488
.L.str.488:
	.asciz	"eql"
	.size	.L.str.488, 4

	.type	.L.str.489,@object      # @.str.489
.L.str.489:
	.asciz	"equal"
	.size	.L.str.489, 6

	.type	.L.str.490,@object      # @.str.490
.L.str.490:
	.asciz	"error"
	.size	.L.str.490, 6

	.type	.L.str.491,@object      # @.str.491
.L.str.491:
	.asciz	"error-conditions"
	.size	.L.str.491, 17

	.type	.L.str.492,@object      # @.str.492
.L.str.492:
	.asciz	"error-message"
	.size	.L.str.492, 14

	.type	.L.str.493,@object      # @.str.493
.L.str.493:
	.asciz	"escape-glyph"
	.size	.L.str.493, 13

	.type	.L.str.494,@object      # @.str.494
.L.str.494:
	.asciz	"etime"
	.size	.L.str.494, 6

	.type	.L.str.495,@object      # @.str.495
.L.str.495:
	.asciz	"euid"
	.size	.L.str.495, 5

	.type	.L.str.496,@object      # @.str.496
.L.str.496:
	.asciz	"eval"
	.size	.L.str.496, 5

	.type	.L.str.497,@object      # @.str.497
.L.str.497:
	.asciz	"evaporate"
	.size	.L.str.497, 10

	.type	.L.str.498,@object      # @.str.498
.L.str.498:
	.asciz	"even"
	.size	.L.str.498, 5

	.type	.L.str.499,@object      # @.str.499
.L.str.499:
	.asciz	"event-kind"
	.size	.L.str.499, 11

	.type	.L.str.500,@object      # @.str.500
.L.str.500:
	.asciz	"event-symbol-element-mask"
	.size	.L.str.500, 26

	.type	.L.str.501,@object      # @.str.501
.L.str.501:
	.asciz	"event-symbol-elements"
	.size	.L.str.501, 22

	.type	.L.str.502,@object      # @.str.502
.L.str.502:
	.asciz	"excl"
	.size	.L.str.502, 5

	.type	.L.str.503,@object      # @.str.503
.L.str.503:
	.asciz	"excl-unlink"
	.size	.L.str.503, 12

	.type	.L.str.504,@object      # @.str.504
.L.str.504:
	.asciz	"exit"
	.size	.L.str.504, 5

	.type	.L.str.505,@object      # @.str.505
.L.str.505:
	.asciz	"expand-abbrev"
	.size	.L.str.505, 14

	.type	.L.str.506,@object      # @.str.506
.L.str.506:
	.asciz	"expand-file-name"
	.size	.L.str.506, 17

	.type	.L.str.507,@object      # @.str.507
.L.str.507:
	.asciz	"explicit"
	.size	.L.str.507, 9

	.type	.L.str.508,@object      # @.str.508
.L.str.508:
	.asciz	"explicit-name"
	.size	.L.str.508, 14

	.type	.L.str.509,@object      # @.str.509
.L.str.509:
	.asciz	"extension-data"
	.size	.L.str.509, 15

	.type	.L.str.510,@object      # @.str.510
.L.str.510:
	.asciz	"external-border-size"
	.size	.L.str.510, 21

	.type	.L.str.511,@object      # @.str.511
.L.str.511:
	.asciz	"external-debugging-output"
	.size	.L.str.511, 26

	.type	.L.str.512,@object      # @.str.512
.L.str.512:
	.asciz	"extra-bold"
	.size	.L.str.512, 11

	.type	.L.str.513,@object      # @.str.513
.L.str.513:
	.asciz	"extra-light"
	.size	.L.str.513, 12

	.type	.L.str.514,@object      # @.str.514
.L.str.514:
	.asciz	"face"
	.size	.L.str.514, 5

	.type	.L.str.515,@object      # @.str.515
.L.str.515:
	.asciz	"face-alias"
	.size	.L.str.515, 11

	.type	.L.str.516,@object      # @.str.516
.L.str.516:
	.asciz	"face-no-inherit"
	.size	.L.str.516, 16

	.type	.L.str.517,@object      # @.str.517
.L.str.517:
	.asciz	"face-set-after-frame-default"
	.size	.L.str.517, 29

	.type	.L.str.518,@object      # @.str.518
.L.str.518:
	.asciz	"failed"
	.size	.L.str.518, 7

	.type	.L.str.519,@object      # @.str.519
.L.str.519:
	.asciz	"fboundp"
	.size	.L.str.519, 8

	.type	.L.str.520,@object      # @.str.520
.L.str.520:
	.asciz	"field"
	.size	.L.str.520, 6

	.type	.L.str.521,@object      # @.str.521
.L.str.521:
	.asciz	"file-accessible-directory-p"
	.size	.L.str.521, 28

	.type	.L.str.522,@object      # @.str.522
.L.str.522:
	.asciz	"file-acl"
	.size	.L.str.522, 9

	.type	.L.str.523,@object      # @.str.523
.L.str.523:
	.asciz	"file-already-exists"
	.size	.L.str.523, 20

	.type	.L.str.524,@object      # @.str.524
.L.str.524:
	.asciz	"file-attributes"
	.size	.L.str.524, 16

	.type	.L.str.525,@object      # @.str.525
.L.str.525:
	.asciz	"file-attributes-lessp"
	.size	.L.str.525, 22

	.type	.L.str.526,@object      # @.str.526
.L.str.526:
	.asciz	"file-date-error"
	.size	.L.str.526, 16

	.type	.L.str.527,@object      # @.str.527
.L.str.527:
	.asciz	"file-directory-p"
	.size	.L.str.527, 17

	.type	.L.str.528,@object      # @.str.528
.L.str.528:
	.asciz	"file-error"
	.size	.L.str.528, 11

	.type	.L.str.529,@object      # @.str.529
.L.str.529:
	.asciz	"file-executable-p"
	.size	.L.str.529, 18

	.type	.L.str.530,@object      # @.str.530
.L.str.530:
	.asciz	"file-exists-p"
	.size	.L.str.530, 14

	.type	.L.str.531,@object      # @.str.531
.L.str.531:
	.asciz	"file-modes"
	.size	.L.str.531, 11

	.type	.L.str.532,@object      # @.str.532
.L.str.532:
	.asciz	"file-name-all-completions"
	.size	.L.str.532, 26

	.type	.L.str.533,@object      # @.str.533
.L.str.533:
	.asciz	"file-name-as-directory"
	.size	.L.str.533, 23

	.type	.L.str.534,@object      # @.str.534
.L.str.534:
	.asciz	"file-name-completion"
	.size	.L.str.534, 21

	.type	.L.str.535,@object      # @.str.535
.L.str.535:
	.asciz	"file-name-directory"
	.size	.L.str.535, 20

	.type	.L.str.536,@object      # @.str.536
.L.str.536:
	.asciz	"file-name-handler-alist"
	.size	.L.str.536, 24

	.type	.L.str.537,@object      # @.str.537
.L.str.537:
	.asciz	"file-name-history"
	.size	.L.str.537, 18

	.type	.L.str.538,@object      # @.str.538
.L.str.538:
	.asciz	"file-name-nondirectory"
	.size	.L.str.538, 23

	.type	.L.str.539,@object      # @.str.539
.L.str.539:
	.asciz	"file-newer-than-file-p"
	.size	.L.str.539, 23

	.type	.L.str.540,@object      # @.str.540
.L.str.540:
	.asciz	"file-notify"
	.size	.L.str.540, 12

	.type	.L.str.541,@object      # @.str.541
.L.str.541:
	.asciz	"file-notify-error"
	.size	.L.str.541, 18

	.type	.L.str.542,@object      # @.str.542
.L.str.542:
	.asciz	"file-readable-p"
	.size	.L.str.542, 16

	.type	.L.str.543,@object      # @.str.543
.L.str.543:
	.asciz	"file-regular-p"
	.size	.L.str.543, 15

	.type	.L.str.544,@object      # @.str.544
.L.str.544:
	.asciz	"file-selinux-context"
	.size	.L.str.544, 21

	.type	.L.str.545,@object      # @.str.545
.L.str.545:
	.asciz	"file-symlink-p"
	.size	.L.str.545, 15

	.type	.L.str.546,@object      # @.str.546
.L.str.546:
	.asciz	"file-truename"
	.size	.L.str.546, 14

	.type	.L.str.547,@object      # @.str.547
.L.str.547:
	.asciz	"file-writable-p"
	.size	.L.str.547, 16

	.type	.L.str.548,@object      # @.str.548
.L.str.548:
	.asciz	"finalizer"
	.size	.L.str.548, 10

	.type	.L.str.549,@object      # @.str.549
.L.str.549:
	.asciz	"first-change-hook"
	.size	.L.str.549, 18

	.type	.L.str.550,@object      # @.str.550
.L.str.550:
	.asciz	"float"
	.size	.L.str.550, 6

	.type	.L.str.551,@object      # @.str.551
.L.str.551:
	.asciz	"floatp"
	.size	.L.str.551, 7

	.type	.L.str.552,@object      # @.str.552
.L.str.552:
	.asciz	"floats"
	.size	.L.str.552, 7

	.type	.L.str.553,@object      # @.str.553
.L.str.553:
	.asciz	"floor"
	.size	.L.str.553, 6

	.type	.L.str.554,@object      # @.str.554
.L.str.554:
	.asciz	"focus-in"
	.size	.L.str.554, 9

	.type	.L.str.555,@object      # @.str.555
.L.str.555:
	.asciz	"focus-out"
	.size	.L.str.555, 10

	.type	.L.str.556,@object      # @.str.556
.L.str.556:
	.asciz	"font"
	.size	.L.str.556, 5

	.type	.L.str.557,@object      # @.str.557
.L.str.557:
	.asciz	"font-backend"
	.size	.L.str.557, 13

	.type	.L.str.558,@object      # @.str.558
.L.str.558:
	.asciz	"font-entity"
	.size	.L.str.558, 12

	.type	.L.str.559,@object      # @.str.559
.L.str.559:
	.asciz	"font-name"
	.size	.L.str.559, 10

	.type	.L.str.560,@object      # @.str.560
.L.str.560:
	.asciz	"font-object"
	.size	.L.str.560, 12

	.type	.L.str.561,@object      # @.str.561
.L.str.561:
	.asciz	"font-parameter"
	.size	.L.str.561, 15

	.type	.L.str.562,@object      # @.str.562
.L.str.562:
	.asciz	"font-render"
	.size	.L.str.562, 12

	.type	.L.str.563,@object      # @.str.563
.L.str.563:
	.asciz	"font-spec"
	.size	.L.str.563, 10

	.type	.L.str.564,@object      # @.str.564
.L.str.564:
	.asciz	"fontification-functions"
	.size	.L.str.564, 24

	.type	.L.str.565,@object      # @.str.565
.L.str.565:
	.asciz	"fontified"
	.size	.L.str.565, 10

	.type	.L.str.566,@object      # @.str.566
.L.str.566:
	.asciz	"fontset"
	.size	.L.str.566, 8

	.type	.L.str.567,@object      # @.str.567
.L.str.567:
	.asciz	"fontset-info"
	.size	.L.str.567, 13

	.type	.L.str.568,@object      # @.str.568
.L.str.568:
	.asciz	"foreground-color"
	.size	.L.str.568, 17

	.type	.L.str.569,@object      # @.str.569
.L.str.569:
	.asciz	"foreign-selection"
	.size	.L.str.569, 18

	.type	.L.str.570,@object      # @.str.570
.L.str.570:
	.asciz	"format-annotate-function"
	.size	.L.str.570, 25

	.type	.L.str.571,@object      # @.str.571
.L.str.571:
	.asciz	"format-decode"
	.size	.L.str.571, 14

	.type	.L.str.572,@object      # @.str.572
.L.str.572:
	.asciz	"fraction"
	.size	.L.str.572, 9

	.type	.L.str.573,@object      # @.str.573
.L.str.573:
	.asciz	"frame"
	.size	.L.str.573, 6

	.type	.L.str.574,@object      # @.str.574
.L.str.574:
	.asciz	"frame-inhibit-resize"
	.size	.L.str.574, 21

	.type	.L.str.575,@object      # @.str.575
.L.str.575:
	.asciz	"frame-live-p"
	.size	.L.str.575, 13

	.type	.L.str.576,@object      # @.str.576
.L.str.576:
	.asciz	"frame-set-background-mode"
	.size	.L.str.576, 26

	.type	.L.str.577,@object      # @.str.577
.L.str.577:
	.asciz	"frame-windows-min-size"
	.size	.L.str.577, 23

	.type	.L.str.578,@object      # @.str.578
.L.str.578:
	.asciz	"framep"
	.size	.L.str.578, 7

	.type	.L.str.579,@object      # @.str.579
.L.str.579:
	.asciz	"frames"
	.size	.L.str.579, 7

	.type	.L.str.580,@object      # @.str.580
.L.str.580:
	.asciz	"free-frame-menubar-1"
	.size	.L.str.580, 21

	.type	.L.str.581,@object      # @.str.581
.L.str.581:
	.asciz	"free-frame-menubar-2"
	.size	.L.str.581, 21

	.type	.L.str.582,@object      # @.str.582
.L.str.582:
	.asciz	"free-frame-tool-bar"
	.size	.L.str.582, 20

	.type	.L.str.583,@object      # @.str.583
.L.str.583:
	.asciz	"freetype"
	.size	.L.str.583, 9

	.type	.L.str.584,@object      # @.str.584
.L.str.584:
	.asciz	"fringe"
	.size	.L.str.584, 7

	.type	.L.str.585,@object      # @.str.585
.L.str.585:
	.asciz	"front-sticky"
	.size	.L.str.585, 13

	.type	.L.str.586,@object      # @.str.586
.L.str.586:
	.asciz	"ftx"
	.size	.L.str.586, 4

	.type	.L.str.587,@object      # @.str.587
.L.str.587:
	.asciz	"fullboth"
	.size	.L.str.587, 9

	.type	.L.str.588,@object      # @.str.588
.L.str.588:
	.asciz	"fullheight"
	.size	.L.str.588, 11

	.type	.L.str.589,@object      # @.str.589
.L.str.589:
	.asciz	"fullscreen"
	.size	.L.str.589, 11

	.type	.L.str.590,@object      # @.str.590
.L.str.590:
	.asciz	"fullwidth"
	.size	.L.str.590, 10

	.type	.L.str.591,@object      # @.str.591
.L.str.591:
	.asciz	"funcall"
	.size	.L.str.591, 8

	.type	.L.str.592,@object      # @.str.592
.L.str.592:
	.asciz	"funcall-interactively"
	.size	.L.str.592, 22

	.type	.L.str.593,@object      # @.str.593
.L.str.593:
	.asciz	"function"
	.size	.L.str.593, 9

	.type	.L.str.594,@object      # @.str.594
.L.str.594:
	.asciz	"function-documentation"
	.size	.L.str.594, 23

	.type	.L.str.595,@object      # @.str.595
.L.str.595:
	.asciz	"function-key"
	.size	.L.str.595, 13

	.type	.L.str.596,@object      # @.str.596
.L.str.596:
	.asciz	"fundamental-mode"
	.size	.L.str.596, 17

	.type	.L.str.597,@object      # @.str.597
.L.str.597:
	.asciz	"gc-cons-threshold"
	.size	.L.str.597, 18

	.type	.L.str.598,@object      # @.str.598
.L.str.598:
	.asciz	"gdk-pixbuf"
	.size	.L.str.598, 11

	.type	.L.str.599,@object      # @.str.599
.L.str.599:
	.asciz	"geometry"
	.size	.L.str.599, 9

	.type	.L.str.600,@object      # @.str.600
.L.str.600:
	.asciz	"get-buffer-window-list"
	.size	.L.str.600, 23

	.type	.L.str.601,@object      # @.str.601
.L.str.601:
	.asciz	"get-emacs-mule-file-char"
	.size	.L.str.601, 25

	.type	.L.str.602,@object      # @.str.602
.L.str.602:
	.asciz	"get-file-buffer"
	.size	.L.str.602, 16

	.type	.L.str.603,@object      # @.str.603
.L.str.603:
	.asciz	"get-file-char"
	.size	.L.str.603, 14

	.type	.L.str.604,@object      # @.str.604
.L.str.604:
	.asciz	"get-mru-window"
	.size	.L.str.604, 15

	.type	.L.str.605,@object      # @.str.605
.L.str.605:
	.asciz	"gif"
	.size	.L.str.605, 4

	.type	.L.str.606,@object      # @.str.606
.L.str.606:
	.asciz	"glib"
	.size	.L.str.606, 5

	.type	.L.str.607,@object      # @.str.607
.L.str.607:
	.asciz	"glyphless-char"
	.size	.L.str.607, 15

	.type	.L.str.608,@object      # @.str.608
.L.str.608:
	.asciz	"glyphless-char-display"
	.size	.L.str.608, 23

	.type	.L.str.609,@object      # @.str.609
.L.str.609:
	.asciz	"gnutls-anon"
	.size	.L.str.609, 12

	.type	.L.str.610,@object      # @.str.610
.L.str.610:
	.asciz	"gnutls-code"
	.size	.L.str.610, 12

	.type	.L.str.611,@object      # @.str.611
.L.str.611:
	.asciz	"gnutls-e-again"
	.size	.L.str.611, 15

	.type	.L.str.612,@object      # @.str.612
.L.str.612:
	.asciz	"gnutls-e-interrupted"
	.size	.L.str.612, 21

	.type	.L.str.613,@object      # @.str.613
.L.str.613:
	.asciz	"gnutls-e-invalid-session"
	.size	.L.str.613, 25

	.type	.L.str.614,@object      # @.str.614
.L.str.614:
	.asciz	"gnutls-e-not-ready-for-handshake"
	.size	.L.str.614, 33

	.type	.L.str.615,@object      # @.str.615
.L.str.615:
	.asciz	"gnutls-x509pki"
	.size	.L.str.615, 15

	.type	.L.str.616,@object      # @.str.616
.L.str.616:
	.asciz	"gobject"
	.size	.L.str.616, 8

	.type	.L.str.617,@object      # @.str.617
.L.str.617:
	.asciz	"grave"
	.size	.L.str.617, 6

	.type	.L.str.618,@object      # @.str.618
.L.str.618:
	.asciz	"group"
	.size	.L.str.618, 6

	.type	.L.str.619,@object      # @.str.619
.L.str.619:
	.asciz	"grow-only"
	.size	.L.str.619, 10

	.type	.L.str.620,@object      # @.str.620
.L.str.620:
	.asciz	"gui-set-selection"
	.size	.L.str.620, 18

	.type	.L.str.621,@object      # @.str.621
.L.str.621:
	.asciz	"hand"
	.size	.L.str.621, 5

	.type	.L.str.622,@object      # @.str.622
.L.str.622:
	.asciz	"handle"
	.size	.L.str.622, 7

	.type	.L.str.623,@object      # @.str.623
.L.str.623:
	.asciz	"handle-select-window"
	.size	.L.str.623, 21

	.type	.L.str.624,@object      # @.str.624
.L.str.624:
	.asciz	"handle-shift-selection"
	.size	.L.str.624, 23

	.type	.L.str.625,@object      # @.str.625
.L.str.625:
	.asciz	"handle-switch-frame"
	.size	.L.str.625, 20

	.type	.L.str.626,@object      # @.str.626
.L.str.626:
	.asciz	"hash-table"
	.size	.L.str.626, 11

	.type	.L.str.627,@object      # @.str.627
.L.str.627:
	.asciz	"hash-table-p"
	.size	.L.str.627, 13

	.type	.L.str.628,@object      # @.str.628
.L.str.628:
	.asciz	"hash-table-test"
	.size	.L.str.628, 16

	.type	.L.str.629,@object      # @.str.629
.L.str.629:
	.asciz	"hbar"
	.size	.L.str.629, 5

	.type	.L.str.630,@object      # @.str.630
.L.str.630:
	.asciz	"header-line"
	.size	.L.str.630, 12

	.type	.L.str.631,@object      # @.str.631
.L.str.631:
	.asciz	"heap"
	.size	.L.str.631, 5

	.type	.L.str.632,@object      # @.str.632
.L.str.632:
	.asciz	"height"
	.size	.L.str.632, 7

	.type	.L.str.633,@object      # @.str.633
.L.str.633:
	.asciz	"help-echo"
	.size	.L.str.633, 10

	.type	.L.str.634,@object      # @.str.634
.L.str.634:
	.asciz	"help-form-show"
	.size	.L.str.634, 15

	.type	.L.str.635,@object      # @.str.635
.L.str.635:
	.asciz	"heuristic"
	.size	.L.str.635, 10

	.type	.L.str.636,@object      # @.str.636
.L.str.636:
	.asciz	"hex-code"
	.size	.L.str.636, 9

	.type	.L.str.637,@object      # @.str.637
.L.str.637:
	.asciz	"history-length"
	.size	.L.str.637, 15

	.type	.L.str.638,@object      # @.str.638
.L.str.638:
	.asciz	"hollow"
	.size	.L.str.638, 7

	.type	.L.str.639,@object      # @.str.639
.L.str.639:
	.asciz	"hollow-small"
	.size	.L.str.639, 13

	.type	.L.str.640,@object      # @.str.640
.L.str.640:
	.asciz	"horizontal-handle"
	.size	.L.str.640, 18

	.type	.L.str.641,@object      # @.str.641
.L.str.641:
	.asciz	"horizontal-scroll-bar"
	.size	.L.str.641, 22

	.type	.L.str.642,@object      # @.str.642
.L.str.642:
	.asciz	"horizontal-scroll-bars"
	.size	.L.str.642, 23

	.type	.L.str.643,@object      # @.str.643
.L.str.643:
	.asciz	"hw"
	.size	.L.str.643, 3

	.type	.L.str.644,@object      # @.str.644
.L.str.644:
	.asciz	"hyper"
	.size	.L.str.644, 6

	.type	.L.str.645,@object      # @.str.645
.L.str.645:
	.asciz	"icon"
	.size	.L.str.645, 5

	.type	.L.str.646,@object      # @.str.646
.L.str.646:
	.asciz	"icon-left"
	.size	.L.str.646, 10

	.type	.L.str.647,@object      # @.str.647
.L.str.647:
	.asciz	"icon-name"
	.size	.L.str.647, 10

	.type	.L.str.648,@object      # @.str.648
.L.str.648:
	.asciz	"icon-top"
	.size	.L.str.648, 9

	.type	.L.str.649,@object      # @.str.649
.L.str.649:
	.asciz	"icon-type"
	.size	.L.str.649, 10

	.type	.L.str.650,@object      # @.str.650
.L.str.650:
	.asciz	"iconify-frame"
	.size	.L.str.650, 14

	.type	.L.str.651,@object      # @.str.651
.L.str.651:
	.asciz	"identity"
	.size	.L.str.651, 9

	.type	.L.str.652,@object      # @.str.652
.L.str.652:
	.asciz	"if"
	.size	.L.str.652, 3

	.type	.L.str.653,@object      # @.str.653
.L.str.653:
	.asciz	"ignored"
	.size	.L.str.653, 8

	.type	.L.str.654,@object      # @.str.654
.L.str.654:
	.asciz	"image"
	.size	.L.str.654, 6

	.type	.L.str.655,@object      # @.str.655
.L.str.655:
	.asciz	"imagemagick"
	.size	.L.str.655, 12

	.type	.L.str.656,@object      # @.str.656
.L.str.656:
	.asciz	"inhibit-debugger"
	.size	.L.str.656, 17

	.type	.L.str.657,@object      # @.str.657
.L.str.657:
	.asciz	"inhibit-eval-during-redisplay"
	.size	.L.str.657, 30

	.type	.L.str.658,@object      # @.str.658
.L.str.658:
	.asciz	"inhibit-file-name-operation"
	.size	.L.str.658, 28

	.type	.L.str.659,@object      # @.str.659
.L.str.659:
	.asciz	"inhibit-free-realized-faces"
	.size	.L.str.659, 28

	.type	.L.str.660,@object      # @.str.660
.L.str.660:
	.asciz	"inhibit-menubar-update"
	.size	.L.str.660, 23

	.type	.L.str.661,@object      # @.str.661
.L.str.661:
	.asciz	"inhibit-modification-hooks"
	.size	.L.str.661, 27

	.type	.L.str.662,@object      # @.str.662
.L.str.662:
	.asciz	"inhibit-point-motion-hooks"
	.size	.L.str.662, 27

	.type	.L.str.663,@object      # @.str.663
.L.str.663:
	.asciz	"inhibit-quit"
	.size	.L.str.663, 13

	.type	.L.str.664,@object      # @.str.664
.L.str.664:
	.asciz	"inhibit-read-only"
	.size	.L.str.664, 18

	.type	.L.str.665,@object      # @.str.665
.L.str.665:
	.asciz	"inhibit-redisplay"
	.size	.L.str.665, 18

	.type	.L.str.666,@object      # @.str.666
.L.str.666:
	.asciz	"inner-edges"
	.size	.L.str.666, 12

	.type	.L.str.667,@object      # @.str.667
.L.str.667:
	.asciz	"input-method-exit-on-first-char"
	.size	.L.str.667, 32

	.type	.L.str.668,@object      # @.str.668
.L.str.668:
	.asciz	"input-method-use-echo-area"
	.size	.L.str.668, 27

	.type	.L.str.669,@object      # @.str.669
.L.str.669:
	.asciz	"insert-behind-hooks"
	.size	.L.str.669, 20

	.type	.L.str.670,@object      # @.str.670
.L.str.670:
	.asciz	"insert-file-contents"
	.size	.L.str.670, 21

	.type	.L.str.671,@object      # @.str.671
.L.str.671:
	.asciz	"insert-in-front-hooks"
	.size	.L.str.671, 22

	.type	.L.str.672,@object      # @.str.672
.L.str.672:
	.asciz	"insufficient-source"
	.size	.L.str.672, 20

	.type	.L.str.673,@object      # @.str.673
.L.str.673:
	.asciz	"intangible"
	.size	.L.str.673, 11

	.type	.L.str.674,@object      # @.str.674
.L.str.674:
	.asciz	"integer"
	.size	.L.str.674, 8

	.type	.L.str.675,@object      # @.str.675
.L.str.675:
	.asciz	"integer-or-marker-p"
	.size	.L.str.675, 20

	.type	.L.str.676,@object      # @.str.676
.L.str.676:
	.asciz	"integerp"
	.size	.L.str.676, 9

	.type	.L.str.677,@object      # @.str.677
.L.str.677:
	.asciz	"interactive"
	.size	.L.str.677, 12

	.type	.L.str.678,@object      # @.str.678
.L.str.678:
	.asciz	"interactive-form"
	.size	.L.str.678, 17

	.type	.L.str.679,@object      # @.str.679
.L.str.679:
	.asciz	"internal--syntax-propertize"
	.size	.L.str.679, 28

	.type	.L.str.680,@object      # @.str.680
.L.str.680:
	.asciz	"internal-border-width"
	.size	.L.str.680, 22

	.type	.L.str.681,@object      # @.str.681
.L.str.681:
	.asciz	"internal-default-process-filter"
	.size	.L.str.681, 32

	.type	.L.str.682,@object      # @.str.682
.L.str.682:
	.asciz	"internal-default-process-sentinel"
	.size	.L.str.682, 34

	.type	.L.str.683,@object      # @.str.683
.L.str.683:
	.asciz	"internal-echo-keystrokes-prefix"
	.size	.L.str.683, 32

	.type	.L.str.684,@object      # @.str.684
.L.str.684:
	.asciz	"internal-interpreter-environment"
	.size	.L.str.684, 33

	.type	.L.str.685,@object      # @.str.685
.L.str.685:
	.asciz	"interrupted"
	.size	.L.str.685, 12

	.type	.L.str.686,@object      # @.str.686
.L.str.686:
	.asciz	"intervals"
	.size	.L.str.686, 10

	.type	.L.str.687,@object      # @.str.687
.L.str.687:
	.asciz	"invalid-function"
	.size	.L.str.687, 17

	.type	.L.str.688,@object      # @.str.688
.L.str.688:
	.asciz	"invalid-read-syntax"
	.size	.L.str.688, 20

	.type	.L.str.689,@object      # @.str.689
.L.str.689:
	.asciz	"invalid-regexp"
	.size	.L.str.689, 15

	.type	.L.str.690,@object      # @.str.690
.L.str.690:
	.asciz	"invalid-source"
	.size	.L.str.690, 15

	.type	.L.str.691,@object      # @.str.691
.L.str.691:
	.asciz	"invisible"
	.size	.L.str.691, 10

	.type	.L.str.692,@object      # @.str.692
.L.str.692:
	.asciz	"ipv4"
	.size	.L.str.692, 5

	.type	.L.str.693,@object      # @.str.693
.L.str.693:
	.asciz	"ipv6"
	.size	.L.str.693, 5

	.type	.L.str.694,@object      # @.str.694
.L.str.694:
	.asciz	"isdir"
	.size	.L.str.694, 6

	.type	.L.str.695,@object      # @.str.695
.L.str.695:
	.asciz	"iso10646-1"
	.size	.L.str.695, 11

	.type	.L.str.696,@object      # @.str.696
.L.str.696:
	.asciz	"iso8859-1"
	.size	.L.str.696, 10

	.type	.L.str.697,@object      # @.str.697
.L.str.697:
	.asciz	"iso-2022"
	.size	.L.str.697, 9

	.type	.L.str.698,@object      # @.str.698
.L.str.698:
	.asciz	"iso-8859-1"
	.size	.L.str.698, 11

	.type	.L.str.699,@object      # @.str.699
.L.str.699:
	.asciz	"italic"
	.size	.L.str.699, 7

	.type	.L.str.700,@object      # @.str.700
.L.str.700:
	.asciz	"ja"
	.size	.L.str.700, 3

	.type	.L.str.701,@object      # @.str.701
.L.str.701:
	.asciz	"jpeg"
	.size	.L.str.701, 5

	.type	.L.str.702,@object      # @.str.702
.L.str.702:
	.asciz	"kbd-macro-termination-hook"
	.size	.L.str.702, 27

	.type	.L.str.703,@object      # @.str.703
.L.str.703:
	.asciz	"key"
	.size	.L.str.703, 4

	.type	.L.str.704,@object      # @.str.704
.L.str.704:
	.asciz	"key-and-value"
	.size	.L.str.704, 14

	.type	.L.str.705,@object      # @.str.705
.L.str.705:
	.asciz	"key-or-value"
	.size	.L.str.705, 13

	.type	.L.str.706,@object      # @.str.706
.L.str.706:
	.asciz	"keymap"
	.size	.L.str.706, 7

	.type	.L.str.707,@object      # @.str.707
.L.str.707:
	.asciz	"keymap-canonicalize"
	.size	.L.str.707, 20

	.type	.L.str.708,@object      # @.str.708
.L.str.708:
	.asciz	"keymapp"
	.size	.L.str.708, 8

	.type	.L.str.709,@object      # @.str.709
.L.str.709:
	.asciz	"kill-buffer-hook"
	.size	.L.str.709, 17

	.type	.L.str.710,@object      # @.str.710
.L.str.710:
	.asciz	"kill-buffer-query-functions"
	.size	.L.str.710, 28

	.type	.L.str.711,@object      # @.str.711
.L.str.711:
	.asciz	"kill-emacs"
	.size	.L.str.711, 11

	.type	.L.str.712,@object      # @.str.712
.L.str.712:
	.asciz	"kill-emacs-hook"
	.size	.L.str.712, 16

	.type	.L.str.713,@object      # @.str.713
.L.str.713:
	.asciz	"kill-forward-chars"
	.size	.L.str.713, 19

	.type	.L.str.714,@object      # @.str.714
.L.str.714:
	.asciz	"ko"
	.size	.L.str.714, 3

	.type	.L.str.715,@object      # @.str.715
.L.str.715:
	.asciz	"lambda"
	.size	.L.str.715, 7

	.type	.L.str.716,@object      # @.str.716
.L.str.716:
	.asciz	"landscape"
	.size	.L.str.716, 10

	.type	.L.str.717,@object      # @.str.717
.L.str.717:
	.asciz	"language-change"
	.size	.L.str.717, 16

	.type	.L.str.718,@object      # @.str.718
.L.str.718:
	.asciz	"laplace"
	.size	.L.str.718, 8

	.type	.L.str.719,@object      # @.str.719
.L.str.719:
	.asciz	"last-arrow-position"
	.size	.L.str.719, 20

	.type	.L.str.720,@object      # @.str.720
.L.str.720:
	.asciz	"last-arrow-string"
	.size	.L.str.720, 18

	.type	.L.str.721,@object      # @.str.721
.L.str.721:
	.asciz	"last-nonmenu-event"
	.size	.L.str.721, 19

	.type	.L.str.722,@object      # @.str.722
.L.str.722:
	.asciz	"latin"
	.size	.L.str.722, 6

	.type	.L.str.723,@object      # @.str.723
.L.str.723:
	.asciz	"latin-1"
	.size	.L.str.723, 8

	.type	.L.str.724,@object      # @.str.724
.L.str.724:
	.asciz	"left"
	.size	.L.str.724, 5

	.type	.L.str.725,@object      # @.str.725
.L.str.725:
	.asciz	"left-fringe"
	.size	.L.str.725, 12

	.type	.L.str.726,@object      # @.str.726
.L.str.726:
	.asciz	"left-margin"
	.size	.L.str.726, 12

	.type	.L.str.727,@object      # @.str.727
.L.str.727:
	.asciz	"left-to-right"
	.size	.L.str.727, 14

	.type	.L.str.728,@object      # @.str.728
.L.str.728:
	.asciz	"leftmost"
	.size	.L.str.728, 9

	.type	.L.str.729,@object      # @.str.729
.L.str.729:
	.asciz	"let"
	.size	.L.str.729, 4

	.type	.L.str.730,@object      # @.str.730
.L.str.730:
	.asciz	"let*"
	.size	.L.str.730, 5

	.type	.L.str.731,@object      # @.str.731
.L.str.731:
	.asciz	"libgif-version"
	.size	.L.str.731, 15

	.type	.L.str.732,@object      # @.str.732
.L.str.732:
	.asciz	"libgnutls-version"
	.size	.L.str.732, 18

	.type	.L.str.733,@object      # @.str.733
.L.str.733:
	.asciz	"libjpeg-version"
	.size	.L.str.733, 16

	.type	.L.str.734,@object      # @.str.734
.L.str.734:
	.asciz	"libpng-version"
	.size	.L.str.734, 15

	.type	.L.str.735,@object      # @.str.735
.L.str.735:
	.asciz	"light"
	.size	.L.str.735, 6

	.type	.L.str.736,@object      # @.str.736
.L.str.736:
	.asciz	"line"
	.size	.L.str.736, 5

	.type	.L.str.737,@object      # @.str.737
.L.str.737:
	.asciz	"line-height"
	.size	.L.str.737, 12

	.type	.L.str.738,@object      # @.str.738
.L.str.738:
	.asciz	"line-prefix"
	.size	.L.str.738, 12

	.type	.L.str.739,@object      # @.str.739
.L.str.739:
	.asciz	"line-spacing"
	.size	.L.str.739, 13

	.type	.L.str.740,@object      # @.str.740
.L.str.740:
	.asciz	"list"
	.size	.L.str.740, 5

	.type	.L.str.741,@object      # @.str.741
.L.str.741:
	.asciz	"listen"
	.size	.L.str.741, 7

	.type	.L.str.742,@object      # @.str.742
.L.str.742:
	.asciz	"listp"
	.size	.L.str.742, 6

	.type	.L.str.743,@object      # @.str.743
.L.str.743:
	.asciz	"little"
	.size	.L.str.743, 7

	.type	.L.str.744,@object      # @.str.744
.L.str.744:
	.asciz	"load"
	.size	.L.str.744, 5

	.type	.L.str.745,@object      # @.str.745
.L.str.745:
	.asciz	"local"
	.size	.L.str.745, 6

	.type	.L.str.746,@object      # @.str.746
.L.str.746:
	.asciz	"local-map"
	.size	.L.str.746, 10

	.type	.L.str.747,@object      # @.str.747
.L.str.747:
	.asciz	"m"
	.size	.L.str.747, 2

	.type	.L.str.748,@object      # @.str.748
.L.str.748:
	.asciz	"mac"
	.size	.L.str.748, 4

	.type	.L.str.749,@object      # @.str.749
.L.str.749:
	.asciz	"macro"
	.size	.L.str.749, 6

	.type	.L.str.750,@object      # @.str.750
.L.str.750:
	.asciz	"majflt"
	.size	.L.str.750, 7

	.type	.L.str.751,@object      # @.str.751
.L.str.751:
	.asciz	"make-directory"
	.size	.L.str.751, 15

	.type	.L.str.752,@object      # @.str.752
.L.str.752:
	.asciz	"make-directory-internal"
	.size	.L.str.752, 24

	.type	.L.str.753,@object      # @.str.753
.L.str.753:
	.asciz	"make-frame-visible"
	.size	.L.str.753, 19

	.type	.L.str.754,@object      # @.str.754
.L.str.754:
	.asciz	"make-symbolic-link"
	.size	.L.str.754, 19

	.type	.L.str.755,@object      # @.str.755
.L.str.755:
	.asciz	"many"
	.size	.L.str.755, 5

	.type	.L.str.756,@object      # @.str.756
.L.str.756:
	.asciz	"margin"
	.size	.L.str.756, 7

	.type	.L.str.757,@object      # @.str.757
.L.str.757:
	.asciz	"mark-inactive"
	.size	.L.str.757, 14

	.type	.L.str.758,@object      # @.str.758
.L.str.758:
	.asciz	"marker"
	.size	.L.str.758, 7

	.type	.L.str.759,@object      # @.str.759
.L.str.759:
	.asciz	"markerp"
	.size	.L.str.759, 8

	.type	.L.str.760,@object      # @.str.760
.L.str.760:
	.asciz	"mask-add"
	.size	.L.str.760, 9

	.type	.L.str.761,@object      # @.str.761
.L.str.761:
	.asciz	"maximized"
	.size	.L.str.761, 10

	.type	.L.str.762,@object      # @.str.762
.L.str.762:
	.asciz	"md5"
	.size	.L.str.762, 4

	.type	.L.str.763,@object      # @.str.763
.L.str.763:
	.asciz	"menu"
	.size	.L.str.763, 5

	.type	.L.str.764,@object      # @.str.764
.L.str.764:
	.asciz	"menu-bar"
	.size	.L.str.764, 9

	.type	.L.str.765,@object      # @.str.765
.L.str.765:
	.asciz	"menu-bar-external"
	.size	.L.str.765, 18

	.type	.L.str.766,@object      # @.str.766
.L.str.766:
	.asciz	"menu-bar-lines"
	.size	.L.str.766, 15

	.type	.L.str.767,@object      # @.str.767
.L.str.767:
	.asciz	"menu-bar-size"
	.size	.L.str.767, 14

	.type	.L.str.768,@object      # @.str.768
.L.str.768:
	.asciz	"menu-bar-update-hook"
	.size	.L.str.768, 21

	.type	.L.str.769,@object      # @.str.769
.L.str.769:
	.asciz	"menu-enable"
	.size	.L.str.769, 12

	.type	.L.str.770,@object      # @.str.770
.L.str.770:
	.asciz	"menu-item"
	.size	.L.str.770, 10

	.type	.L.str.771,@object      # @.str.771
.L.str.771:
	.asciz	"meta"
	.size	.L.str.771, 5

	.type	.L.str.772,@object      # @.str.772
.L.str.772:
	.asciz	"metadata"
	.size	.L.str.772, 9

	.type	.L.str.773,@object      # @.str.773
.L.str.773:
	.asciz	"minflt"
	.size	.L.str.773, 7

	.type	.L.str.774,@object      # @.str.774
.L.str.774:
	.asciz	"minibuffer"
	.size	.L.str.774, 11

	.type	.L.str.775,@object      # @.str.775
.L.str.775:
	.asciz	"minibuffer-completion-table"
	.size	.L.str.775, 28

	.type	.L.str.776,@object      # @.str.776
.L.str.776:
	.asciz	"minibuffer-default"
	.size	.L.str.776, 19

	.type	.L.str.777,@object      # @.str.777
.L.str.777:
	.asciz	"minibuffer-exit-hook"
	.size	.L.str.777, 21

	.type	.L.str.778,@object      # @.str.778
.L.str.778:
	.asciz	"minibuffer-history"
	.size	.L.str.778, 19

	.type	.L.str.779,@object      # @.str.779
.L.str.779:
	.asciz	"minibuffer-prompt"
	.size	.L.str.779, 18

	.type	.L.str.780,@object      # @.str.780
.L.str.780:
	.asciz	"minibuffer-setup-hook"
	.size	.L.str.780, 22

	.type	.L.str.781,@object      # @.str.781
.L.str.781:
	.asciz	"-"
	.size	.L.str.781, 2

	.type	.L.str.782,@object      # @.str.782
.L.str.782:
	.asciz	"miscs"
	.size	.L.str.782, 6

	.type	.L.str.783,@object      # @.str.783
.L.str.783:
	.asciz	"mm-size"
	.size	.L.str.783, 8

	.type	.L.str.784,@object      # @.str.784
.L.str.784:
	.asciz	"mode-class"
	.size	.L.str.784, 11

	.type	.L.str.785,@object      # @.str.785
.L.str.785:
	.asciz	"mode-line"
	.size	.L.str.785, 10

	.type	.L.str.786,@object      # @.str.786
.L.str.786:
	.asciz	"mode-line-default-help-echo"
	.size	.L.str.786, 28

	.type	.L.str.787,@object      # @.str.787
.L.str.787:
	.asciz	"mode-line-inactive"
	.size	.L.str.787, 19

	.type	.L.str.788,@object      # @.str.788
.L.str.788:
	.asciz	"modeline"
	.size	.L.str.788, 9

	.type	.L.str.789,@object      # @.str.789
.L.str.789:
	.asciz	"modification-hooks"
	.size	.L.str.789, 19

	.type	.L.str.790,@object      # @.str.790
.L.str.790:
	.asciz	"modifier-cache"
	.size	.L.str.790, 15

	.type	.L.str.791,@object      # @.str.791
.L.str.791:
	.asciz	"modifier-value"
	.size	.L.str.791, 15

	.type	.L.str.792,@object      # @.str.792
.L.str.792:
	.asciz	"modify"
	.size	.L.str.792, 7

	.type	.L.str.793,@object      # @.str.793
.L.str.793:
	.asciz	"mono"
	.size	.L.str.793, 5

	.type	.L.str.794,@object      # @.str.794
.L.str.794:
	.asciz	"monospace"
	.size	.L.str.794, 10

	.type	.L.str.795,@object      # @.str.795
.L.str.795:
	.asciz	"monospace-font-name"
	.size	.L.str.795, 20

	.type	.L.str.796,@object      # @.str.796
.L.str.796:
	.asciz	"months"
	.size	.L.str.796, 7

	.type	.L.str.797,@object      # @.str.797
.L.str.797:
	.asciz	"mouse"
	.size	.L.str.797, 6

	.type	.L.str.798,@object      # @.str.798
.L.str.798:
	.asciz	"mouse-click"
	.size	.L.str.798, 12

	.type	.L.str.799,@object      # @.str.799
.L.str.799:
	.asciz	"mouse-color"
	.size	.L.str.799, 12

	.type	.L.str.800,@object      # @.str.800
.L.str.800:
	.asciz	"mouse-face"
	.size	.L.str.800, 11

	.type	.L.str.801,@object      # @.str.801
.L.str.801:
	.asciz	"mouse-fixup-help-message"
	.size	.L.str.801, 25

	.type	.L.str.802,@object      # @.str.802
.L.str.802:
	.asciz	"mouse-leave-buffer-hook"
	.size	.L.str.802, 24

	.type	.L.str.803,@object      # @.str.803
.L.str.803:
	.asciz	"mouse-movement"
	.size	.L.str.803, 15

	.type	.L.str.804,@object      # @.str.804
.L.str.804:
	.asciz	"move"
	.size	.L.str.804, 5

	.type	.L.str.805,@object      # @.str.805
.L.str.805:
	.asciz	"move-file-to-trash"
	.size	.L.str.805, 19

	.type	.L.str.806,@object      # @.str.806
.L.str.806:
	.asciz	"move-self"
	.size	.L.str.806, 10

	.type	.L.str.807,@object      # @.str.807
.L.str.807:
	.asciz	"moved-from"
	.size	.L.str.807, 11

	.type	.L.str.808,@object      # @.str.808
.L.str.808:
	.asciz	"moved-to"
	.size	.L.str.808, 9

	.type	.L.str.809,@object      # @.str.809
.L.str.809:
	.asciz	"name"
	.size	.L.str.809, 5

	.type	.L.str.810,@object      # @.str.810
.L.str.810:
	.asciz	"native-edges"
	.size	.L.str.810, 13

	.type	.L.str.811,@object      # @.str.811
.L.str.811:
	.asciz	"natnump"
	.size	.L.str.811, 8

	.type	.L.str.812,@object      # @.str.812
.L.str.812:
	.asciz	"network"
	.size	.L.str.812, 8

	.type	.L.str.813,@object      # @.str.813
.L.str.813:
	.asciz	"nice"
	.size	.L.str.813, 5

	.type	.L.str.814,@object      # @.str.814
.L.str.814:
	.asciz	"no-catch"
	.size	.L.str.814, 9

	.type	.L.str.815,@object      # @.str.815
.L.str.815:
	.asciz	"no-conversion"
	.size	.L.str.815, 14

	.type	.L.str.816,@object      # @.str.816
.L.str.816:
	.asciz	"nobreak-space"
	.size	.L.str.816, 14

	.type	.L.str.817,@object      # @.str.817
.L.str.817:
	.asciz	"noelisp"
	.size	.L.str.817, 8

	.type	.L.str.818,@object      # @.str.818
.L.str.818:
	.asciz	"non-ascii"
	.size	.L.str.818, 10

	.type	.L.str.819,@object      # @.str.819
.L.str.819:
	.asciz	"none"
	.size	.L.str.819, 5

	.type	.L.str.820,@object      # @.str.820
.L.str.820:
	.asciz	"normal"
	.size	.L.str.820, 7

	.type	.L.str.821,@object      # @.str.821
.L.str.821:
	.asciz	"ns"
	.size	.L.str.821, 3

	.type	.L.str.822,@object      # @.str.822
.L.str.822:
	.asciz	"ns-parse-geometry"
	.size	.L.str.822, 18

	.type	.L.str.823,@object      # @.str.823
.L.str.823:
	.asciz	"number-or-marker-p"
	.size	.L.str.823, 19

	.type	.L.str.824,@object      # @.str.824
.L.str.824:
	.asciz	"numberp"
	.size	.L.str.824, 8

	.type	.L.str.825,@object      # @.str.825
.L.str.825:
	.asciz	"object"
	.size	.L.str.825, 7

	.type	.L.str.826,@object      # @.str.826
.L.str.826:
	.asciz	"oblique"
	.size	.L.str.826, 8

	.type	.L.str.827,@object      # @.str.827
.L.str.827:
	.asciz	"odd"
	.size	.L.str.827, 4

	.type	.L.str.828,@object      # @.str.828
.L.str.828:
	.asciz	"oneshot"
	.size	.L.str.828, 8

	.type	.L.str.829,@object      # @.str.829
.L.str.829:
	.asciz	"only"
	.size	.L.str.829, 5

	.type	.L.str.830,@object      # @.str.830
.L.str.830:
	.asciz	"onlydir"
	.size	.L.str.830, 8

	.type	.L.str.831,@object      # @.str.831
.L.str.831:
	.asciz	"open"
	.size	.L.str.831, 5

	.type	.L.str.832,@object      # @.str.832
.L.str.832:
	.asciz	"open-network-stream"
	.size	.L.str.832, 20

	.type	.L.str.833,@object      # @.str.833
.L.str.833:
	.asciz	"opentype"
	.size	.L.str.833, 9

	.type	.L.str.834,@object      # @.str.834
.L.str.834:
	.asciz	"operations"
	.size	.L.str.834, 11

	.type	.L.str.835,@object      # @.str.835
.L.str.835:
	.asciz	"orientation"
	.size	.L.str.835, 12

	.type	.L.str.836,@object      # @.str.836
.L.str.836:
	.asciz	"outer-edges"
	.size	.L.str.836, 12

	.type	.L.str.837,@object      # @.str.837
.L.str.837:
	.asciz	"outer-position"
	.size	.L.str.837, 15

	.type	.L.str.838,@object      # @.str.838
.L.str.838:
	.asciz	"outer-size"
	.size	.L.str.838, 11

	.type	.L.str.839,@object      # @.str.839
.L.str.839:
	.asciz	"outer-window-id"
	.size	.L.str.839, 16

	.type	.L.str.840,@object      # @.str.840
.L.str.840:
	.asciz	"overflow-error"
	.size	.L.str.840, 15

	.type	.L.str.841,@object      # @.str.841
.L.str.841:
	.asciz	"overlay"
	.size	.L.str.841, 8

	.type	.L.str.842,@object      # @.str.842
.L.str.842:
	.asciz	"overlay-arrow"
	.size	.L.str.842, 14

	.type	.L.str.843,@object      # @.str.843
.L.str.843:
	.asciz	"overlay-arrow-bitmap"
	.size	.L.str.843, 21

	.type	.L.str.844,@object      # @.str.844
.L.str.844:
	.asciz	"overlay-arrow-string"
	.size	.L.str.844, 21

	.type	.L.str.845,@object      # @.str.845
.L.str.845:
	.asciz	"overlayp"
	.size	.L.str.845, 9

	.type	.L.str.846,@object      # @.str.846
.L.str.846:
	.asciz	"overriding-local-map"
	.size	.L.str.846, 21

	.type	.L.str.847,@object      # @.str.847
.L.str.847:
	.asciz	"overriding-terminal-local-map"
	.size	.L.str.847, 30

	.type	.L.str.848,@object      # @.str.848
.L.str.848:
	.asciz	"overwrite-mode"
	.size	.L.str.848, 15

	.type	.L.str.849,@object      # @.str.849
.L.str.849:
	.asciz	"overwrite-mode-binary"
	.size	.L.str.849, 22

	.type	.L.str.850,@object      # @.str.850
.L.str.850:
	.asciz	"p"
	.size	.L.str.850, 2

	.type	.L.str.851,@object      # @.str.851
.L.str.851:
	.asciz	"paper"
	.size	.L.str.851, 6

	.type	.L.str.852,@object      # @.str.852
.L.str.852:
	.asciz	"paragraph-separate"
	.size	.L.str.852, 19

	.type	.L.str.853,@object      # @.str.853
.L.str.853:
	.asciz	"paragraph-start"
	.size	.L.str.853, 16

	.type	.L.str.854,@object      # @.str.854
.L.str.854:
	.asciz	"parent-id"
	.size	.L.str.854, 10

	.type	.L.str.855,@object      # @.str.855
.L.str.855:
	.asciz	"pbm"
	.size	.L.str.855, 4

	.type	.L.str.856,@object      # @.str.856
.L.str.856:
	.asciz	"pc"
	.size	.L.str.856, 3

	.type	.L.str.857,@object      # @.str.857
.L.str.857:
	.asciz	"pcpu"
	.size	.L.str.857, 5

	.type	.L.str.858,@object      # @.str.858
.L.str.858:
	.asciz	"pdf"
	.size	.L.str.858, 4

	.type	.L.str.859,@object      # @.str.859
.L.str.859:
	.asciz	"permanent-local"
	.size	.L.str.859, 16

	.type	.L.str.860,@object      # @.str.860
.L.str.860:
	.asciz	"permanent-local-hook"
	.size	.L.str.860, 21

	.type	.L.str.861,@object      # @.str.861
.L.str.861:
	.asciz	"pgrp"
	.size	.L.str.861, 5

	.type	.L.str.862,@object      # @.str.862
.L.str.862:
	.asciz	"pipe"
	.size	.L.str.862, 5

	.type	.L.str.863,@object      # @.str.863
.L.str.863:
	.asciz	"play-sound-functions"
	.size	.L.str.863, 21

	.type	.L.str.864,@object      # @.str.864
.L.str.864:
	.asciz	"+"
	.size	.L.str.864, 2

	.type	.L.str.865,@object      # @.str.865
.L.str.865:
	.asciz	"pmem"
	.size	.L.str.865, 5

	.type	.L.str.866,@object      # @.str.866
.L.str.866:
	.asciz	"png"
	.size	.L.str.866, 4

	.type	.L.str.867,@object      # @.str.867
.L.str.867:
	.asciz	"point-entered"
	.size	.L.str.867, 14

	.type	.L.str.868,@object      # @.str.868
.L.str.868:
	.asciz	"point-left"
	.size	.L.str.868, 11

	.type	.L.str.869,@object      # @.str.869
.L.str.869:
	.asciz	"pointer"
	.size	.L.str.869, 8

	.type	.L.str.870,@object      # @.str.870
.L.str.870:
	.asciz	"polling-period"
	.size	.L.str.870, 15

	.type	.L.str.871,@object      # @.str.871
.L.str.871:
	.asciz	"poly"
	.size	.L.str.871, 5

	.type	.L.str.872,@object      # @.str.872
.L.str.872:
	.asciz	"portrait"
	.size	.L.str.872, 9

	.type	.L.str.873,@object      # @.str.873
.L.str.873:
	.asciz	"position"
	.size	.L.str.873, 9

	.type	.L.str.874,@object      # @.str.874
.L.str.874:
	.asciz	"post-command-hook"
	.size	.L.str.874, 18

	.type	.L.str.875,@object      # @.str.875
.L.str.875:
	.asciz	"post-gc-hook"
	.size	.L.str.875, 13

	.type	.L.str.876,@object      # @.str.876
.L.str.876:
	.asciz	"post-self-insert-hook"
	.size	.L.str.876, 22

	.type	.L.str.877,@object      # @.str.877
.L.str.877:
	.asciz	"postscript"
	.size	.L.str.877, 11

	.type	.L.str.878,@object      # @.str.878
.L.str.878:
	.asciz	"ppid"
	.size	.L.str.878, 5

	.type	.L.str.879,@object      # @.str.879
.L.str.879:
	.asciz	"pre-command-hook"
	.size	.L.str.879, 17

	.type	.L.str.880,@object      # @.str.880
.L.str.880:
	.asciz	"pressed-button"
	.size	.L.str.880, 15

	.type	.L.str.881,@object      # @.str.881
.L.str.881:
	.asciz	"pri"
	.size	.L.str.881, 4

	.type	.L.str.882,@object      # @.str.882
.L.str.882:
	.asciz	"print-escape-multibyte"
	.size	.L.str.882, 23

	.type	.L.str.883,@object      # @.str.883
.L.str.883:
	.asciz	"print-escape-newlines"
	.size	.L.str.883, 22

	.type	.L.str.884,@object      # @.str.884
.L.str.884:
	.asciz	"print-escape-nonascii"
	.size	.L.str.884, 22

	.type	.L.str.885,@object      # @.str.885
.L.str.885:
	.asciz	"priority"
	.size	.L.str.885, 9

	.type	.L.str.886,@object      # @.str.886
.L.str.886:
	.asciz	"process"
	.size	.L.str.886, 8

	.type	.L.str.887,@object      # @.str.887
.L.str.887:
	.asciz	"processp"
	.size	.L.str.887, 9

	.type	.L.str.888,@object      # @.str.888
.L.str.888:
	.asciz	"profiler-backtrace-equal"
	.size	.L.str.888, 25

	.type	.L.str.889,@object      # @.str.889
.L.str.889:
	.asciz	"progn"
	.size	.L.str.889, 6

	.type	.L.str.890,@object      # @.str.890
.L.str.890:
	.asciz	"protected-field"
	.size	.L.str.890, 16

	.type	.L.str.891,@object      # @.str.891
.L.str.891:
	.asciz	"provide"
	.size	.L.str.891, 8

	.type	.L.str.892,@object      # @.str.892
.L.str.892:
	.asciz	"pty"
	.size	.L.str.892, 4

	.type	.L.str.893,@object      # @.str.893
.L.str.893:
	.asciz	"q-overflow"
	.size	.L.str.893, 11

	.type	.L.str.894,@object      # @.str.894
.L.str.894:
	.asciz	"quit"
	.size	.L.str.894, 5

	.type	.L.str.895,@object      # @.str.895
.L.str.895:
	.asciz	"quote"
	.size	.L.str.895, 6

	.type	.L.str.896,@object      # @.str.896
.L.str.896:
	.asciz	"raise"
	.size	.L.str.896, 6

	.type	.L.str.897,@object      # @.str.897
.L.str.897:
	.asciz	"range"
	.size	.L.str.897, 6

	.type	.L.str.898,@object      # @.str.898
.L.str.898:
	.asciz	"range-error"
	.size	.L.str.898, 12

	.type	.L.str.899,@object      # @.str.899
.L.str.899:
	.asciz	"ratio"
	.size	.L.str.899, 6

	.type	.L.str.900,@object      # @.str.900
.L.str.900:
	.asciz	"raw-text"
	.size	.L.str.900, 9

	.type	.L.str.901,@object      # @.str.901
.L.str.901:
	.asciz	"read"
	.size	.L.str.901, 5

	.type	.L.str.902,@object      # @.str.902
.L.str.902:
	.asciz	"read-char"
	.size	.L.str.902, 10

	.type	.L.str.903,@object      # @.str.903
.L.str.903:
	.asciz	"read-number"
	.size	.L.str.903, 12

	.type	.L.str.904,@object      # @.str.904
.L.str.904:
	.asciz	"read-only"
	.size	.L.str.904, 10

	.type	.L.str.905,@object      # @.str.905
.L.str.905:
	.asciz	"real"
	.size	.L.str.905, 5

	.type	.L.str.906,@object      # @.str.906
.L.str.906:
	.asciz	"rear-nonsticky"
	.size	.L.str.906, 15

	.type	.L.str.907,@object      # @.str.907
.L.str.907:
	.asciz	"recompute-lucid-menubar"
	.size	.L.str.907, 24

	.type	.L.str.908,@object      # @.str.908
.L.str.908:
	.asciz	"record-window-buffer"
	.size	.L.str.908, 21

	.type	.L.str.909,@object      # @.str.909
.L.str.909:
	.asciz	"rect"
	.size	.L.str.909, 5

	.type	.L.str.910,@object      # @.str.910
.L.str.910:
	.asciz	"redisplay-dont-pause"
	.size	.L.str.910, 21

	.type	.L.str.911,@object      # @.str.911
.L.str.911:
	.asciz	"redisplay-end-trigger-functions"
	.size	.L.str.911, 32

	.type	.L.str.912,@object      # @.str.912
.L.str.912:
	.asciz	"redisplay_internal (C function)"
	.size	.L.str.912, 32

	.type	.L.str.913,@object      # @.str.913
.L.str.913:
	.asciz	"region-extract-function"
	.size	.L.str.913, 24

	.type	.L.str.914,@object      # @.str.914
.L.str.914:
	.asciz	"rehash-size"
	.size	.L.str.914, 12

	.type	.L.str.915,@object      # @.str.915
.L.str.915:
	.asciz	"rehash-threshold"
	.size	.L.str.915, 17

	.type	.L.str.916,@object      # @.str.916
.L.str.916:
	.asciz	"released-button"
	.size	.L.str.916, 16

	.type	.L.str.917,@object      # @.str.917
.L.str.917:
	.asciz	"remap"
	.size	.L.str.917, 6

	.type	.L.str.918,@object      # @.str.918
.L.str.918:
	.asciz	"rename-file"
	.size	.L.str.918, 12

	.type	.L.str.919,@object      # @.str.919
.L.str.919:
	.asciz	"replace-buffer-in-windows"
	.size	.L.str.919, 26

	.type	.L.str.920,@object      # @.str.920
.L.str.920:
	.asciz	"require"
	.size	.L.str.920, 8

	.type	.L.str.921,@object      # @.str.921
.L.str.921:
	.asciz	"reverse-landscape"
	.size	.L.str.921, 18

	.type	.L.str.922,@object      # @.str.922
.L.str.922:
	.asciz	"reverse-portrait"
	.size	.L.str.922, 17

	.type	.L.str.923,@object      # @.str.923
.L.str.923:
	.asciz	"right"
	.size	.L.str.923, 6

	.type	.L.str.924,@object      # @.str.924
.L.str.924:
	.asciz	"right-divider"
	.size	.L.str.924, 14

	.type	.L.str.925,@object      # @.str.925
.L.str.925:
	.asciz	"right-divider-width"
	.size	.L.str.925, 20

	.type	.L.str.926,@object      # @.str.926
.L.str.926:
	.asciz	"right-fringe"
	.size	.L.str.926, 13

	.type	.L.str.927,@object      # @.str.927
.L.str.927:
	.asciz	"right-margin"
	.size	.L.str.927, 13

	.type	.L.str.928,@object      # @.str.928
.L.str.928:
	.asciz	"right-to-left"
	.size	.L.str.928, 14

	.type	.L.str.929,@object      # @.str.929
.L.str.929:
	.asciz	"rightmost"
	.size	.L.str.929, 10

	.type	.L.str.930,@object      # @.str.930
.L.str.930:
	.asciz	"risky-local-variable"
	.size	.L.str.930, 21

	.type	.L.str.931,@object      # @.str.931
.L.str.931:
	.asciz	"rss"
	.size	.L.str.931, 4

	.type	.L.str.932,@object      # @.str.932
.L.str.932:
	.asciz	"run"
	.size	.L.str.932, 4

	.type	.L.str.933,@object      # @.str.933
.L.str.933:
	.asciz	"run-hook-with-args"
	.size	.L.str.933, 19

	.type	.L.str.934,@object      # @.str.934
.L.str.934:
	.asciz	"safe"
	.size	.L.str.934, 5

	.type	.L.str.935,@object      # @.str.935
.L.str.935:
	.asciz	"sans"
	.size	.L.str.935, 5

	.type	.L.str.936,@object      # @.str.936
.L.str.936:
	.asciz	"sans serif"
	.size	.L.str.936, 11

	.type	.L.str.937,@object      # @.str.937
.L.str.937:
	.asciz	"sans-serif"
	.size	.L.str.937, 11

	.type	.L.str.938,@object      # @.str.938
.L.str.938:
	.asciz	"save-excursion"
	.size	.L.str.938, 15

	.type	.L.str.939,@object      # @.str.939
.L.str.939:
	.asciz	"save-session"
	.size	.L.str.939, 13

	.type	.L.str.940,@object      # @.str.940
.L.str.940:
	.asciz	"scan-error"
	.size	.L.str.940, 11

	.type	.L.str.941,@object      # @.str.941
.L.str.941:
	.asciz	"screen-gamma"
	.size	.L.str.941, 13

	.type	.L.str.942,@object      # @.str.942
.L.str.942:
	.asciz	"scroll-bar"
	.size	.L.str.942, 11

	.type	.L.str.943,@object      # @.str.943
.L.str.943:
	.asciz	"scroll-bar-background"
	.size	.L.str.943, 22

	.type	.L.str.944,@object      # @.str.944
.L.str.944:
	.asciz	"scroll-bar-foreground"
	.size	.L.str.944, 22

	.type	.L.str.945,@object      # @.str.945
.L.str.945:
	.asciz	"scroll-bar-height"
	.size	.L.str.945, 18

	.type	.L.str.946,@object      # @.str.946
.L.str.946:
	.asciz	"scroll-bar-movement"
	.size	.L.str.946, 20

	.type	.L.str.947,@object      # @.str.947
.L.str.947:
	.asciz	"scroll-bar-width"
	.size	.L.str.947, 17

	.type	.L.str.948,@object      # @.str.948
.L.str.948:
	.asciz	"scroll-command"
	.size	.L.str.948, 15

	.type	.L.str.949,@object      # @.str.949
.L.str.949:
	.asciz	"scroll-down"
	.size	.L.str.949, 12

	.type	.L.str.950,@object      # @.str.950
.L.str.950:
	.asciz	"scroll-up"
	.size	.L.str.950, 10

	.type	.L.str.951,@object      # @.str.951
.L.str.951:
	.asciz	"search-failed"
	.size	.L.str.951, 14

	.type	.L.str.952,@object      # @.str.952
.L.str.952:
	.asciz	"select-window"
	.size	.L.str.952, 14

	.type	.L.str.953,@object      # @.str.953
.L.str.953:
	.asciz	"semi-bold"
	.size	.L.str.953, 10

	.type	.L.str.954,@object      # @.str.954
.L.str.954:
	.asciz	"semi-light"
	.size	.L.str.954, 11

	.type	.L.str.955,@object      # @.str.955
.L.str.955:
	.asciz	"seqpacket"
	.size	.L.str.955, 10

	.type	.L.str.956,@object      # @.str.956
.L.str.956:
	.asciz	"sequencep"
	.size	.L.str.956, 10

	.type	.L.str.957,@object      # @.str.957
.L.str.957:
	.asciz	"serial"
	.size	.L.str.957, 7

	.type	.L.str.958,@object      # @.str.958
.L.str.958:
	.asciz	"sess"
	.size	.L.str.958, 5

	.type	.L.str.959,@object      # @.str.959
.L.str.959:
	.asciz	"set-file-acl"
	.size	.L.str.959, 13

	.type	.L.str.960,@object      # @.str.960
.L.str.960:
	.asciz	"set-file-modes"
	.size	.L.str.960, 15

	.type	.L.str.961,@object      # @.str.961
.L.str.961:
	.asciz	"set-file-selinux-context"
	.size	.L.str.961, 25

	.type	.L.str.962,@object      # @.str.962
.L.str.962:
	.asciz	"set-file-times"
	.size	.L.str.962, 15

	.type	.L.str.963,@object      # @.str.963
.L.str.963:
	.asciz	"set-frame-size"
	.size	.L.str.963, 15

	.type	.L.str.964,@object      # @.str.964
.L.str.964:
	.asciz	"set-visited-file-modtime"
	.size	.L.str.964, 25

	.type	.L.str.965,@object      # @.str.965
.L.str.965:
	.asciz	"set-window-configuration"
	.size	.L.str.965, 25

	.type	.L.str.966,@object      # @.str.966
.L.str.966:
	.asciz	"setq"
	.size	.L.str.966, 5

	.type	.L.str.967,@object      # @.str.967
.L.str.967:
	.asciz	"setting-constant"
	.size	.L.str.967, 17

	.type	.L.str.968,@object      # @.str.968
.L.str.968:
	.asciz	"sha1"
	.size	.L.str.968, 5

	.type	.L.str.969,@object      # @.str.969
.L.str.969:
	.asciz	"sha224"
	.size	.L.str.969, 7

	.type	.L.str.970,@object      # @.str.970
.L.str.970:
	.asciz	"sha256"
	.size	.L.str.970, 7

	.type	.L.str.971,@object      # @.str.971
.L.str.971:
	.asciz	"sha384"
	.size	.L.str.971, 7

	.type	.L.str.972,@object      # @.str.972
.L.str.972:
	.asciz	"sha512"
	.size	.L.str.972, 7

	.type	.L.str.973,@object      # @.str.973
.L.str.973:
	.asciz	"shift-jis"
	.size	.L.str.973, 10

	.type	.L.str.974,@object      # @.str.974
.L.str.974:
	.asciz	"signal"
	.size	.L.str.974, 7

	.type	.L.str.975,@object      # @.str.975
.L.str.975:
	.asciz	"singularity-error"
	.size	.L.str.975, 18

	.type	.L.str.976,@object      # @.str.976
.L.str.976:
	.asciz	"size"
	.size	.L.str.976, 5

	.type	.L.str.977,@object      # @.str.977
.L.str.977:
	.asciz	"slice"
	.size	.L.str.977, 6

	.type	.L.str.978,@object      # @.str.978
.L.str.978:
	.asciz	"sound"
	.size	.L.str.978, 6

	.type	.L.str.979,@object      # @.str.979
.L.str.979:
	.asciz	"source"
	.size	.L.str.979, 7

	.type	.L.str.980,@object      # @.str.980
.L.str.980:
	.asciz	"space"
	.size	.L.str.980, 6

	.type	.L.str.981,@object      # @.str.981
.L.str.981:
	.asciz	"space-width"
	.size	.L.str.981, 12

	.type	.L.str.982,@object      # @.str.982
.L.str.982:
	.asciz	"standard-output"
	.size	.L.str.982, 16

	.type	.L.str.983,@object      # @.str.983
.L.str.983:
	.asciz	"start"
	.size	.L.str.983, 6

	.type	.L.str.984,@object      # @.str.984
.L.str.984:
	.asciz	"start-process"
	.size	.L.str.984, 14

	.type	.L.str.985,@object      # @.str.985
.L.str.985:
	.asciz	"state"
	.size	.L.str.985, 6

	.type	.L.str.986,@object      # @.str.986
.L.str.986:
	.asciz	"stderr"
	.size	.L.str.986, 7

	.type	.L.str.987,@object      # @.str.987
.L.str.987:
	.asciz	"stdin"
	.size	.L.str.987, 6

	.type	.L.str.988,@object      # @.str.988
.L.str.988:
	.asciz	"stdout"
	.size	.L.str.988, 7

	.type	.L.str.989,@object      # @.str.989
.L.str.989:
	.asciz	"sticky"
	.size	.L.str.989, 7

	.type	.L.str.990,@object      # @.str.990
.L.str.990:
	.asciz	"stime"
	.size	.L.str.990, 6

	.type	.L.str.991,@object      # @.str.991
.L.str.991:
	.asciz	"stop"
	.size	.L.str.991, 5

	.type	.L.str.992,@object      # @.str.992
.L.str.992:
	.asciz	"straight"
	.size	.L.str.992, 9

	.type	.L.str.993,@object      # @.str.993
.L.str.993:
	.asciz	"string"
	.size	.L.str.993, 7

	.type	.L.str.994,@object      # @.str.994
.L.str.994:
	.asciz	"string-bytes"
	.size	.L.str.994, 13

	.type	.L.str.995,@object      # @.str.995
.L.str.995:
	.asciz	"string-lessp"
	.size	.L.str.995, 13

	.type	.L.str.996,@object      # @.str.996
.L.str.996:
	.asciz	"stringp"
	.size	.L.str.996, 8

	.type	.L.str.997,@object      # @.str.997
.L.str.997:
	.asciz	"strings"
	.size	.L.str.997, 8

	.type	.L.str.998,@object      # @.str.998
.L.str.998:
	.asciz	"subfeatures"
	.size	.L.str.998, 12

	.type	.L.str.999,@object      # @.str.999
.L.str.999:
	.asciz	"subr"
	.size	.L.str.999, 5

	.type	.L.str.1000,@object     # @.str.1000
.L.str.1000:
	.asciz	"subrp"
	.size	.L.str.1000, 6

	.type	.L.str.1001,@object     # @.str.1001
.L.str.1001:
	.asciz	"substitute-env-in-file-name"
	.size	.L.str.1001, 28

	.type	.L.str.1002,@object     # @.str.1002
.L.str.1002:
	.asciz	"substitute-in-file-name"
	.size	.L.str.1002, 24

	.type	.L.str.1003,@object     # @.str.1003
.L.str.1003:
	.asciz	"super"
	.size	.L.str.1003, 6

	.type	.L.str.1004,@object     # @.str.1004
.L.str.1004:
	.asciz	"svg"
	.size	.L.str.1004, 4

	.type	.L.str.1005,@object     # @.str.1005
.L.str.1005:
	.asciz	"sw"
	.size	.L.str.1005, 3

	.type	.L.str.1006,@object     # @.str.1006
.L.str.1006:
	.asciz	"switch-frame"
	.size	.L.str.1006, 13

	.type	.L.str.1007,@object     # @.str.1007
.L.str.1007:
	.asciz	"symbol"
	.size	.L.str.1007, 7

	.type	.L.str.1008,@object     # @.str.1008
.L.str.1008:
	.asciz	"symbolp"
	.size	.L.str.1008, 8

	.type	.L.str.1009,@object     # @.str.1009
.L.str.1009:
	.asciz	"symbols"
	.size	.L.str.1009, 8

	.type	.L.str.1010,@object     # @.str.1010
.L.str.1010:
	.asciz	"syntax-table"
	.size	.L.str.1010, 13

	.type	.L.str.1011,@object     # @.str.1011
.L.str.1011:
	.asciz	"syntax-table-p"
	.size	.L.str.1011, 15

	.type	.L.str.1012,@object     # @.str.1012
.L.str.1012:
	.asciz	"t"
	.size	.L.str.1012, 2

	.type	.L.str.1013,@object     # @.str.1013
.L.str.1013:
	.asciz	"target-idx"
	.size	.L.str.1013, 11

	.type	.L.str.1014,@object     # @.str.1014
.L.str.1014:
	.asciz	"tb-size-cb"
	.size	.L.str.1014, 11

	.type	.L.str.1015,@object     # @.str.1015
.L.str.1015:
	.asciz	"temp-buffer-setup-hook"
	.size	.L.str.1015, 23

	.type	.L.str.1016,@object     # @.str.1016
.L.str.1016:
	.asciz	"temp-buffer-show-hook"
	.size	.L.str.1016, 22

	.type	.L.str.1017,@object     # @.str.1017
.L.str.1017:
	.asciz	"terminal"
	.size	.L.str.1017, 9

	.type	.L.str.1018,@object     # @.str.1018
.L.str.1018:
	.asciz	"terminal-frame"
	.size	.L.str.1018, 15

	.type	.L.str.1019,@object     # @.str.1019
.L.str.1019:
	.asciz	"terminal-live-p"
	.size	.L.str.1019, 16

	.type	.L.str.1020,@object     # @.str.1020
.L.str.1020:
	.asciz	"test"
	.size	.L.str.1020, 5

	.type	.L.str.1021,@object     # @.str.1021
.L.str.1021:
	.asciz	"text"
	.size	.L.str.1021, 5

	.type	.L.str.1022,@object     # @.str.1022
.L.str.1022:
	.asciz	"text-image-horiz"
	.size	.L.str.1022, 17

	.type	.L.str.1023,@object     # @.str.1023
.L.str.1023:
	.asciz	"text-pixels"
	.size	.L.str.1023, 12

	.type	.L.str.1024,@object     # @.str.1024
.L.str.1024:
	.asciz	"text-read-only"
	.size	.L.str.1024, 15

	.type	.L.str.1025,@object     # @.str.1025
.L.str.1025:
	.asciz	"thcount"
	.size	.L.str.1025, 8

	.type	.L.str.1026,@object     # @.str.1026
.L.str.1026:
	.asciz	"thin-space"
	.size	.L.str.1026, 11

	.type	.L.str.1027,@object     # @.str.1027
.L.str.1027:
	.asciz	"tiff"
	.size	.L.str.1027, 5

	.type	.L.str.1028,@object     # @.str.1028
.L.str.1028:
	.asciz	"time"
	.size	.L.str.1028, 5

	.type	.L.str.1029,@object     # @.str.1029
.L.str.1029:
	.asciz	"timer-event-handler"
	.size	.L.str.1029, 20

	.type	.L.str.1030,@object     # @.str.1030
.L.str.1030:
	.asciz	"title"
	.size	.L.str.1030, 6

	.type	.L.str.1031,@object     # @.str.1031
.L.str.1031:
	.asciz	"title-bar-size"
	.size	.L.str.1031, 15

	.type	.L.str.1032,@object     # @.str.1032
.L.str.1032:
	.asciz	"tool-bar"
	.size	.L.str.1032, 9

	.type	.L.str.1033,@object     # @.str.1033
.L.str.1033:
	.asciz	"tool-bar-external"
	.size	.L.str.1033, 18

	.type	.L.str.1034,@object     # @.str.1034
.L.str.1034:
	.asciz	"tool-bar-lines"
	.size	.L.str.1034, 15

	.type	.L.str.1035,@object     # @.str.1035
.L.str.1035:
	.asciz	"tool-bar-position"
	.size	.L.str.1035, 18

	.type	.L.str.1036,@object     # @.str.1036
.L.str.1036:
	.asciz	"tool-bar-size"
	.size	.L.str.1036, 14

	.type	.L.str.1037,@object     # @.str.1037
.L.str.1037:
	.asciz	"tool-bar-style"
	.size	.L.str.1037, 15

	.type	.L.str.1038,@object     # @.str.1038
.L.str.1038:
	.asciz	"tooltip"
	.size	.L.str.1038, 8

	.type	.L.str.1039,@object     # @.str.1039
.L.str.1039:
	.asciz	"top"
	.size	.L.str.1039, 4

	.type	.L.str.1040,@object     # @.str.1040
.L.str.1040:
	.asciz	"top-bottom"
	.size	.L.str.1040, 11

	.type	.L.str.1041,@object     # @.str.1041
.L.str.1041:
	.asciz	"top-level"
	.size	.L.str.1041, 10

	.type	.L.str.1042,@object     # @.str.1042
.L.str.1042:
	.asciz	"top-margin"
	.size	.L.str.1042, 11

	.type	.L.str.1043,@object     # @.str.1043
.L.str.1043:
	.asciz	"tpgid"
	.size	.L.str.1043, 6

	.type	.L.str.1044,@object     # @.str.1044
.L.str.1044:
	.asciz	"trailing-whitespace"
	.size	.L.str.1044, 20

	.type	.L.str.1045,@object     # @.str.1045
.L.str.1045:
	.asciz	"translation-table"
	.size	.L.str.1045, 18

	.type	.L.str.1046,@object     # @.str.1046
.L.str.1046:
	.asciz	"translation-table-id"
	.size	.L.str.1046, 21

	.type	.L.str.1047,@object     # @.str.1047
.L.str.1047:
	.asciz	"truncation"
	.size	.L.str.1047, 11

	.type	.L.str.1048,@object     # @.str.1048
.L.str.1048:
	.asciz	"ttname"
	.size	.L.str.1048, 7

	.type	.L.str.1049,@object     # @.str.1049
.L.str.1049:
	.asciz	"tty"
	.size	.L.str.1049, 4

	.type	.L.str.1050,@object     # @.str.1050
.L.str.1050:
	.asciz	"tty-color-alist"
	.size	.L.str.1050, 16

	.type	.L.str.1051,@object     # @.str.1051
.L.str.1051:
	.asciz	"tty-color-by-index"
	.size	.L.str.1051, 19

	.type	.L.str.1052,@object     # @.str.1052
.L.str.1052:
	.asciz	"tty-color-desc"
	.size	.L.str.1052, 15

	.type	.L.str.1053,@object     # @.str.1053
.L.str.1053:
	.asciz	"tty-color-mode"
	.size	.L.str.1053, 15

	.type	.L.str.1054,@object     # @.str.1054
.L.str.1054:
	.asciz	"tty-color-standard-values"
	.size	.L.str.1054, 26

	.type	.L.str.1055,@object     # @.str.1055
.L.str.1055:
	.asciz	"tty-menu-exit"
	.size	.L.str.1055, 14

	.type	.L.str.1056,@object     # @.str.1056
.L.str.1056:
	.asciz	"tty-menu-ignore"
	.size	.L.str.1056, 16

	.type	.L.str.1057,@object     # @.str.1057
.L.str.1057:
	.asciz	"tty-menu-mouse-movement"
	.size	.L.str.1057, 24

	.type	.L.str.1058,@object     # @.str.1058
.L.str.1058:
	.asciz	"tty-menu-navigation-map"
	.size	.L.str.1058, 24

	.type	.L.str.1059,@object     # @.str.1059
.L.str.1059:
	.asciz	"tty-menu-next-item"
	.size	.L.str.1059, 19

	.type	.L.str.1060,@object     # @.str.1060
.L.str.1060:
	.asciz	"tty-menu-next-menu"
	.size	.L.str.1060, 19

	.type	.L.str.1061,@object     # @.str.1061
.L.str.1061:
	.asciz	"tty-menu-prev-item"
	.size	.L.str.1061, 19

	.type	.L.str.1062,@object     # @.str.1062
.L.str.1062:
	.asciz	"tty-menu-prev-menu"
	.size	.L.str.1062, 19

	.type	.L.str.1063,@object     # @.str.1063
.L.str.1063:
	.asciz	"tty-menu-select"
	.size	.L.str.1063, 16

	.type	.L.str.1064,@object     # @.str.1064
.L.str.1064:
	.asciz	"tty-mode-reset-strings"
	.size	.L.str.1064, 23

	.type	.L.str.1065,@object     # @.str.1065
.L.str.1065:
	.asciz	"tty-mode-set-strings"
	.size	.L.str.1065, 21

	.type	.L.str.1066,@object     # @.str.1066
.L.str.1066:
	.asciz	"tty-type"
	.size	.L.str.1066, 9

	.type	.L.str.1067,@object     # @.str.1067
.L.str.1067:
	.asciz	"ultra-bold"
	.size	.L.str.1067, 11

	.type	.L.str.1068,@object     # @.str.1068
.L.str.1068:
	.asciz	"unbound"
	.size	.L.str.1068, 8

	.type	.L.str.1069,@object     # @.str.1069
.L.str.1069:
	.asciz	"undecided"
	.size	.L.str.1069, 10

	.type	.L.str.1070,@object     # @.str.1070
.L.str.1070:
	.asciz	"undefined"
	.size	.L.str.1070, 10

	.type	.L.str.1071,@object     # @.str.1071
.L.str.1071:
	.asciz	"undefined-color"
	.size	.L.str.1071, 16

	.type	.L.str.1072,@object     # @.str.1072
.L.str.1072:
	.asciz	"underflow-error"
	.size	.L.str.1072, 16

	.type	.L.str.1073,@object     # @.str.1073
.L.str.1073:
	.asciz	"undo-auto--add-boundary"
	.size	.L.str.1073, 24

	.type	.L.str.1074,@object     # @.str.1074
.L.str.1074:
	.asciz	"undo-auto--last-boundary-cause"
	.size	.L.str.1074, 31

	.type	.L.str.1075,@object     # @.str.1075
.L.str.1075:
	.asciz	"undo-auto--this-command-amalgamating"
	.size	.L.str.1075, 37

	.type	.L.str.1076,@object     # @.str.1076
.L.str.1076:
	.asciz	"undo-auto--undoable-change"
	.size	.L.str.1076, 27

	.type	.L.str.1077,@object     # @.str.1077
.L.str.1077:
	.asciz	"undo-auto--undoable-change-no-timer"
	.size	.L.str.1077, 36

	.type	.L.str.1078,@object     # @.str.1078
.L.str.1078:
	.asciz	"undo-auto--undoably-changed-buffers"
	.size	.L.str.1078, 36

	.type	.L.str.1079,@object     # @.str.1079
.L.str.1079:
	.asciz	"undo-auto-amalgamate"
	.size	.L.str.1079, 21

	.type	.L.str.1080,@object     # @.str.1080
.L.str.1080:
	.asciz	"unevalled"
	.size	.L.str.1080, 10

	.type	.L.str.1081,@object     # @.str.1081
.L.str.1081:
	.asciz	"unhandled-file-name-directory"
	.size	.L.str.1081, 30

	.type	.L.str.1082,@object     # @.str.1082
.L.str.1082:
	.asciz	"unicode"
	.size	.L.str.1082, 8

	.type	.L.str.1083,@object     # @.str.1083
.L.str.1083:
	.asciz	"unicode-bmp"
	.size	.L.str.1083, 12

	.type	.L.str.1084,@object     # @.str.1084
.L.str.1084:
	.asciz	"unix"
	.size	.L.str.1084, 5

	.type	.L.str.1085,@object     # @.str.1085
.L.str.1085:
	.asciz	"unmount"
	.size	.L.str.1085, 8

	.type	.L.str.1086,@object     # @.str.1086
.L.str.1086:
	.asciz	"unspecified"
	.size	.L.str.1086, 12

	.type	.L.str.1087,@object     # @.str.1087
.L.str.1087:
	.asciz	"unsplittable"
	.size	.L.str.1087, 13

	.type	.L.str.1088,@object     # @.str.1088
.L.str.1088:
	.asciz	"up"
	.size	.L.str.1088, 3

	.type	.L.str.1089,@object     # @.str.1089
.L.str.1089:
	.asciz	"update-frame-menubar"
	.size	.L.str.1089, 21

	.type	.L.str.1090,@object     # @.str.1090
.L.str.1090:
	.asciz	"update-frame-tool-bar"
	.size	.L.str.1090, 22

	.type	.L.str.1091,@object     # @.str.1091
.L.str.1091:
	.asciz	"user"
	.size	.L.str.1091, 5

	.type	.L.str.1092,@object     # @.str.1092
.L.str.1092:
	.asciz	"user-error"
	.size	.L.str.1092, 11

	.type	.L.str.1093,@object     # @.str.1093
.L.str.1093:
	.asciz	"user-position"
	.size	.L.str.1093, 14

	.type	.L.str.1094,@object     # @.str.1094
.L.str.1094:
	.asciz	"user-ptr"
	.size	.L.str.1094, 9

	.type	.L.str.1095,@object     # @.str.1095
.L.str.1095:
	.asciz	"user-ptrp"
	.size	.L.str.1095, 10

	.type	.L.str.1096,@object     # @.str.1096
.L.str.1096:
	.asciz	"user-size"
	.size	.L.str.1096, 10

	.type	.L.str.1097,@object     # @.str.1097
.L.str.1097:
	.asciz	"utf-16"
	.size	.L.str.1097, 7

	.type	.L.str.1098,@object     # @.str.1098
.L.str.1098:
	.asciz	"utf-16le"
	.size	.L.str.1098, 9

	.type	.L.str.1099,@object     # @.str.1099
.L.str.1099:
	.asciz	"utf-8"
	.size	.L.str.1099, 6

	.type	.L.str.1100,@object     # @.str.1100
.L.str.1100:
	.asciz	"utf-8-emacs"
	.size	.L.str.1100, 12

	.type	.L.str.1101,@object     # @.str.1101
.L.str.1101:
	.asciz	"utime"
	.size	.L.str.1101, 6

	.type	.L.str.1102,@object     # @.str.1102
.L.str.1102:
	.asciz	"value"
	.size	.L.str.1102, 6

	.type	.L.str.1103,@object     # @.str.1103
.L.str.1103:
	.asciz	"variable-documentation"
	.size	.L.str.1103, 23

	.type	.L.str.1104,@object     # @.str.1104
.L.str.1104:
	.asciz	"vector"
	.size	.L.str.1104, 7

	.type	.L.str.1105,@object     # @.str.1105
.L.str.1105:
	.asciz	"vector-or-char-table-p"
	.size	.L.str.1105, 23

	.type	.L.str.1106,@object     # @.str.1106
.L.str.1106:
	.asciz	"vector-slots"
	.size	.L.str.1106, 13

	.type	.L.str.1107,@object     # @.str.1107
.L.str.1107:
	.asciz	"vectorp"
	.size	.L.str.1107, 8

	.type	.L.str.1108,@object     # @.str.1108
.L.str.1108:
	.asciz	"vectors"
	.size	.L.str.1108, 8

	.type	.L.str.1109,@object     # @.str.1109
.L.str.1109:
	.asciz	"vendor-specific-keysyms"
	.size	.L.str.1109, 24

	.type	.L.str.1110,@object     # @.str.1110
.L.str.1110:
	.asciz	"verify-visited-file-modtime"
	.size	.L.str.1110, 28

	.type	.L.str.1111,@object     # @.str.1111
.L.str.1111:
	.asciz	"vertical-border"
	.size	.L.str.1111, 16

	.type	.L.str.1112,@object     # @.str.1112
.L.str.1112:
	.asciz	"vertical-line"
	.size	.L.str.1112, 14

	.type	.L.str.1113,@object     # @.str.1113
.L.str.1113:
	.asciz	"vertical-scroll-bar"
	.size	.L.str.1113, 20

	.type	.L.str.1114,@object     # @.str.1114
.L.str.1114:
	.asciz	"vertical-scroll-bars"
	.size	.L.str.1114, 21

	.type	.L.str.1115,@object     # @.str.1115
.L.str.1115:
	.asciz	"visibility"
	.size	.L.str.1115, 11

	.type	.L.str.1116,@object     # @.str.1116
.L.str.1116:
	.asciz	"visible"
	.size	.L.str.1116, 8

	.type	.L.str.1117,@object     # @.str.1117
.L.str.1117:
	.asciz	"void-function"
	.size	.L.str.1117, 14

	.type	.L.str.1118,@object     # @.str.1118
.L.str.1118:
	.asciz	"void-variable"
	.size	.L.str.1118, 14

	.type	.L.str.1119,@object     # @.str.1119
.L.str.1119:
	.asciz	"vsize"
	.size	.L.str.1119, 6

	.type	.L.str.1120,@object     # @.str.1120
.L.str.1120:
	.asciz	"w32"
	.size	.L.str.1120, 4

	.type	.L.str.1121,@object     # @.str.1121
.L.str.1121:
	.asciz	"wait-for-wm"
	.size	.L.str.1121, 12

	.type	.L.str.1122,@object     # @.str.1122
.L.str.1122:
	.asciz	"wall"
	.size	.L.str.1122, 5

	.type	.L.str.1123,@object     # @.str.1123
.L.str.1123:
	.asciz	"wave"
	.size	.L.str.1123, 5

	.type	.L.str.1124,@object     # @.str.1124
.L.str.1124:
	.asciz	"weakness"
	.size	.L.str.1124, 9

	.type	.L.str.1125,@object     # @.str.1125
.L.str.1125:
	.asciz	"when"
	.size	.L.str.1125, 5

	.type	.L.str.1126,@object     # @.str.1126
.L.str.1126:
	.asciz	"wholenump"
	.size	.L.str.1126, 10

	.type	.L.str.1127,@object     # @.str.1127
.L.str.1127:
	.asciz	"widget-type"
	.size	.L.str.1127, 12

	.type	.L.str.1128,@object     # @.str.1128
.L.str.1128:
	.asciz	"width"
	.size	.L.str.1128, 6

	.type	.L.str.1129,@object     # @.str.1129
.L.str.1129:
	.asciz	"window"
	.size	.L.str.1129, 7

	.type	.L.str.1130,@object     # @.str.1130
.L.str.1130:
	.asciz	"window-configuration"
	.size	.L.str.1130, 21

	.type	.L.str.1131,@object     # @.str.1131
.L.str.1131:
	.asciz	"window-configuration-change-hook"
	.size	.L.str.1131, 33

	.type	.L.str.1132,@object     # @.str.1132
.L.str.1132:
	.asciz	"window-configuration-p"
	.size	.L.str.1132, 23

	.type	.L.str.1133,@object     # @.str.1133
.L.str.1133:
	.asciz	"window-deletable-p"
	.size	.L.str.1133, 19

	.type	.L.str.1134,@object     # @.str.1134
.L.str.1134:
	.asciz	"window-divider"
	.size	.L.str.1134, 15

	.type	.L.str.1135,@object     # @.str.1135
.L.str.1135:
	.asciz	"window-divider-first-pixel"
	.size	.L.str.1135, 27

	.type	.L.str.1136,@object     # @.str.1136
.L.str.1136:
	.asciz	"window-divider-last-pixel"
	.size	.L.str.1136, 26

	.type	.L.str.1137,@object     # @.str.1137
.L.str.1137:
	.asciz	"window-id"
	.size	.L.str.1137, 10

	.type	.L.str.1138,@object     # @.str.1138
.L.str.1138:
	.asciz	"window-live-p"
	.size	.L.str.1138, 14

	.type	.L.str.1139,@object     # @.str.1139
.L.str.1139:
	.asciz	"window--pixel-to-total"
	.size	.L.str.1139, 23

	.type	.L.str.1140,@object     # @.str.1140
.L.str.1140:
	.asciz	"window_point_insertion_type"
	.size	.L.str.1140, 28

	.type	.L.str.1141,@object     # @.str.1141
.L.str.1141:
	.asciz	"window--resize-root-window"
	.size	.L.str.1141, 27

	.type	.L.str.1142,@object     # @.str.1142
.L.str.1142:
	.asciz	"window--resize-root-window-vertically"
	.size	.L.str.1142, 38

	.type	.L.str.1143,@object     # @.str.1143
.L.str.1143:
	.asciz	"window--sanitize-window-sizes"
	.size	.L.str.1143, 30

	.type	.L.str.1144,@object     # @.str.1144
.L.str.1144:
	.asciz	"window-scroll-functions"
	.size	.L.str.1144, 24

	.type	.L.str.1145,@object     # @.str.1145
.L.str.1145:
	.asciz	"window-size"
	.size	.L.str.1145, 12

	.type	.L.str.1146,@object     # @.str.1146
.L.str.1146:
	.asciz	"window-text-change-functions"
	.size	.L.str.1146, 29

	.type	.L.str.1147,@object     # @.str.1147
.L.str.1147:
	.asciz	"window-valid-p"
	.size	.L.str.1147, 15

	.type	.L.str.1148,@object     # @.str.1148
.L.str.1148:
	.asciz	"windowp"
	.size	.L.str.1148, 8

	.type	.L.str.1149,@object     # @.str.1149
.L.str.1149:
	.asciz	"workarea"
	.size	.L.str.1149, 9

	.type	.L.str.1150,@object     # @.str.1150
.L.str.1150:
	.asciz	"wrap-prefix"
	.size	.L.str.1150, 12

	.type	.L.str.1151,@object     # @.str.1151
.L.str.1151:
	.asciz	"write-region"
	.size	.L.str.1151, 13

	.type	.L.str.1152,@object     # @.str.1152
.L.str.1152:
	.asciz	"write-region-annotate-functions"
	.size	.L.str.1152, 32

	.type	.L.str.1153,@object     # @.str.1153
.L.str.1153:
	.asciz	"wrong-length-argument"
	.size	.L.str.1153, 22

	.type	.L.str.1154,@object     # @.str.1154
.L.str.1154:
	.asciz	"wrong-number-of-arguments"
	.size	.L.str.1154, 26

	.type	.L.str.1155,@object     # @.str.1155
.L.str.1155:
	.asciz	"wrong-type-argument"
	.size	.L.str.1155, 20

	.type	.L.str.1156,@object     # @.str.1156
.L.str.1156:
	.asciz	"x"
	.size	.L.str.1156, 2

	.type	.L.str.1157,@object     # @.str.1157
.L.str.1157:
	.asciz	"x-check-fullscreen"
	.size	.L.str.1157, 19

	.type	.L.str.1158,@object     # @.str.1158
.L.str.1158:
	.asciz	"x-create-frame-1"
	.size	.L.str.1158, 17

	.type	.L.str.1159,@object     # @.str.1159
.L.str.1159:
	.asciz	"x-create-frame-2"
	.size	.L.str.1159, 17

	.type	.L.str.1160,@object     # @.str.1160
.L.str.1160:
	.asciz	"x-frame-parameter"
	.size	.L.str.1160, 18

	.type	.L.str.1161,@object     # @.str.1161
.L.str.1161:
	.asciz	"x-gtk-map-stock"
	.size	.L.str.1161, 16

	.type	.L.str.1162,@object     # @.str.1162
.L.str.1162:
	.asciz	"x-handle-net-wm-state"
	.size	.L.str.1162, 22

	.type	.L.str.1163,@object     # @.str.1163
.L.str.1163:
	.asciz	"x-lost-selection-functions"
	.size	.L.str.1163, 27

	.type	.L.str.1164,@object     # @.str.1164
.L.str.1164:
	.asciz	"x-net-wm-state"
	.size	.L.str.1164, 15

	.type	.L.str.1165,@object     # @.str.1165
.L.str.1165:
	.asciz	"x-resource-name"
	.size	.L.str.1165, 16

	.type	.L.str.1166,@object     # @.str.1166
.L.str.1166:
	.asciz	"x-sent-selection-functions"
	.size	.L.str.1166, 27

	.type	.L.str.1167,@object     # @.str.1167
.L.str.1167:
	.asciz	"x-set-frame-parameters"
	.size	.L.str.1167, 23

	.type	.L.str.1168,@object     # @.str.1168
.L.str.1168:
	.asciz	"x-set-fullscreen"
	.size	.L.str.1168, 17

	.type	.L.str.1169,@object     # @.str.1169
.L.str.1169:
	.asciz	"x-set-menu-bar-lines"
	.size	.L.str.1169, 21

	.type	.L.str.1170,@object     # @.str.1170
.L.str.1170:
	.asciz	"x-set-window-size-1"
	.size	.L.str.1170, 20

	.type	.L.str.1171,@object     # @.str.1171
.L.str.1171:
	.asciz	"x-set-window-size-2"
	.size	.L.str.1171, 20

	.type	.L.str.1172,@object     # @.str.1172
.L.str.1172:
	.asciz	"x-set-window-size-3"
	.size	.L.str.1172, 20

	.type	.L.str.1173,@object     # @.str.1173
.L.str.1173:
	.asciz	"xbm"
	.size	.L.str.1173, 4

	.type	.L.str.1174,@object     # @.str.1174
.L.str.1174:
	.asciz	"xft"
	.size	.L.str.1174, 4

	.type	.L.str.1175,@object     # @.str.1175
.L.str.1175:
	.asciz	"xg-change-toolbar-position"
	.size	.L.str.1175, 27

	.type	.L.str.1176,@object     # @.str.1176
.L.str.1176:
	.asciz	"xg-frame-resized"
	.size	.L.str.1176, 17

	.type	.L.str.1177,@object     # @.str.1177
.L.str.1177:
	.asciz	"xg-frame-set-char-size"
	.size	.L.str.1177, 23

	.type	.L.str.1178,@object     # @.str.1178
.L.str.1178:
	.asciz	"xg-frame-set-char-size-1"
	.size	.L.str.1178, 25

	.type	.L.str.1179,@object     # @.str.1179
.L.str.1179:
	.asciz	"xg-frame-set-char-size-2"
	.size	.L.str.1179, 25

	.type	.L.str.1180,@object     # @.str.1180
.L.str.1180:
	.asciz	"xg-frame-set-char-size-3"
	.size	.L.str.1180, 25

	.type	.L.str.1181,@object     # @.str.1181
.L.str.1181:
	.asciz	"xpm"
	.size	.L.str.1181, 4

	.type	.L.str.1182,@object     # @.str.1182
.L.str.1182:
	.asciz	"xwidget-event"
	.size	.L.str.1182, 14

	.type	.L.str.1183,@object     # @.str.1183
.L.str.1183:
	.asciz	"yes-or-no-p-history"
	.size	.L.str.1183, 20

	.type	.L.str.1184,@object     # @.str.1184
.L.str.1184:
	.asciz	"zero-width"
	.size	.L.str.1184, 11

	.type	.L.str.1185,@object     # @.str.1185
.L.str.1185:
	.asciz	"Lisp directory"
	.size	.L.str.1185, 15

	.type	.L.str.1186,@object     # @.str.1186
.L.str.1186:
	.asciz	"/usr/local/share/emacs/25.1/lisp"
	.size	.L.str.1186, 33

	.type	.L.str.1187,@object     # @.str.1187
.L.str.1187:
	.asciz	"lisp"
	.size	.L.str.1187, 5

	.type	.L.str.1188,@object     # @.str.1188
.L.str.1188:
	.asciz	"site-lisp"
	.size	.L.str.1188, 10

	.type	.L.str.1189,@object     # @.str.1189
.L.str.1189:
	.asciz	"src/Makefile"
	.size	.L.str.1189, 13

	.type	.L.str.1190,@object     # @.str.1190
.L.str.1190:
	.asciz	"src/Makefile.in"
	.size	.L.str.1190, 16

	.type	Sread,@object           # @Sread
	.data
	.align	8
Sread:
	.quad	167772160               # 0xa000000
	.quad	Fread
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.901
	.quad	0
	.quad	0
	.size	Sread, 48

	.type	.L.str.1191,@object     # @.str.1191
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1191:
	.asciz	"read-from-string"
	.size	.L.str.1191, 17

	.type	Sread_from_string,@object # @Sread_from_string
	.data
	.align	8
Sread_from_string:
	.quad	167772160               # 0xa000000
	.quad	Fread_from_string
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.1191
	.quad	0
	.quad	0
	.size	Sread_from_string, 48

	.type	.L.str.1192,@object     # @.str.1192
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1192:
	.asciz	"intern"
	.size	.L.str.1192, 7

	.type	Sintern,@object         # @Sintern
	.data
	.align	8
Sintern:
	.quad	167772160               # 0xa000000
	.quad	Fintern
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.1192
	.quad	0
	.quad	0
	.size	Sintern, 48

	.type	.L.str.1193,@object     # @.str.1193
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1193:
	.asciz	"intern-soft"
	.size	.L.str.1193, 12

	.type	Sintern_soft,@object    # @Sintern_soft
	.data
	.align	8
Sintern_soft:
	.quad	167772160               # 0xa000000
	.quad	Fintern_soft
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.1193
	.quad	0
	.quad	0
	.size	Sintern_soft, 48

	.type	.L.str.1194,@object     # @.str.1194
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1194:
	.asciz	"unintern"
	.size	.L.str.1194, 9

	.type	Sunintern,@object       # @Sunintern
	.data
	.align	8
Sunintern:
	.quad	167772160               # 0xa000000
	.quad	Funintern
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.1194
	.quad	0
	.quad	0
	.size	Sunintern, 48

	.type	.L.str.1195,@object     # @.str.1195
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1195:
	.asciz	"get-load-suffixes"
	.size	.L.str.1195, 18

	.type	Sload,@object           # @Sload
	.data
	.align	8
Sload:
	.quad	167772160               # 0xa000000
	.quad	Fload
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.744
	.quad	0
	.quad	0
	.size	Sload, 48

	.type	.L.str.1196,@object     # @.str.1196
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1196:
	.asciz	"eval-buffer"
	.size	.L.str.1196, 12

	.type	.L.str.1197,@object     # @.str.1197
.L.str.1197:
	.zero	1
	.size	.L.str.1197, 1

	.type	Seval_buffer,@object    # @Seval_buffer
	.data
	.align	8
Seval_buffer:
	.quad	167772160               # 0xa000000
	.quad	Feval_buffer
	.short	0                       # 0x0
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.1196
	.quad	.L.str.1197
	.quad	0
	.size	Seval_buffer, 48

	.type	.L.str.1198,@object     # @.str.1198
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1198:
	.asciz	"eval-region"
	.size	.L.str.1198, 12

	.type	Seval_region,@object    # @Seval_region
	.data
	.align	8
Seval_region:
	.quad	167772160               # 0xa000000
	.quad	Feval_region
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.1198
	.quad	.L.str.1
	.quad	0
	.size	Seval_region, 48

	.type	Sread_char,@object      # @Sread_char
	.align	8
Sread_char:
	.quad	167772160               # 0xa000000
	.quad	Fread_char
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.902
	.quad	0
	.quad	0
	.size	Sread_char, 48

	.type	.L.str.1199,@object     # @.str.1199
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1199:
	.asciz	"read-char-exclusive"
	.size	.L.str.1199, 20

	.type	Sread_char_exclusive,@object # @Sread_char_exclusive
	.data
	.align	8
Sread_char_exclusive:
	.quad	167772160               # 0xa000000
	.quad	Fread_char_exclusive
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.1199
	.quad	0
	.quad	0
	.size	Sread_char_exclusive, 48

	.type	.L.str.1200,@object     # @.str.1200
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1200:
	.asciz	"read-event"
	.size	.L.str.1200, 11

	.type	Sread_event,@object     # @Sread_event
	.data
	.align	8
Sread_event:
	.quad	167772160               # 0xa000000
	.quad	Fread_event
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.1200
	.quad	0
	.quad	0
	.size	Sread_event, 48

	.type	.L.str.1201,@object     # @.str.1201
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1201:
	.asciz	"mapatoms"
	.size	.L.str.1201, 9

	.type	Smapatoms,@object       # @Smapatoms
	.data
	.align	8
Smapatoms:
	.quad	167772160               # 0xa000000
	.quad	Fmapatoms
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.1201
	.quad	0
	.quad	0
	.size	Smapatoms, 48

	.type	.L.str.1202,@object     # @.str.1202
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1202:
	.asciz	"locate-file-internal"
	.size	.L.str.1202, 21

	.type	Slocate_file_internal,@object # @Slocate_file_internal
	.data
	.align	8
Slocate_file_internal:
	.quad	167772160               # 0xa000000
	.quad	Flocate_file_internal
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.1202
	.quad	0
	.quad	0
	.size	Slocate_file_internal, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
