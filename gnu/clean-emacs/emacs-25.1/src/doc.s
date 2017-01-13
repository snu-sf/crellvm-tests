	.text
	.file	"doc.bc"
	.globl	read_bytecode_char
	.align	16, 0x90
	.type	read_bytecode_char,@function
read_bytecode_char:                     # @read_bytecode_char
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
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -5(%rbp)
	testb	$1, -5(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	read_bytecode_pointer, %rax
	addq	$-1, %rax
	movq	%rax, read_bytecode_pointer
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movq	read_bytecode_pointer, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, read_bytecode_pointer
	movzbl	(%rax), %edx
	movl	%edx, -4(%rbp)
.LBB0_3:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	read_bytecode_char, .Lfunc_end0-read_bytecode_char
	.cfi_endproc

	.globl	get_doc_string
	.align	16, 0x90
	.type	get_doc_string,@function
get_doc_string:                         # @get_doc_string
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
	subq	$480, %rsp              # imm = 0x1E0
	movb	%dl, %al
	movb	%sil, %cl
	movq	%rdi, -16(%rbp)
	andb	$1, %cl
	movb	%cl, -17(%rbp)
	andb	$1, %al
	movb	%al, -18(%rbp)
	movq	$16384, -120(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -128(%rbp)
	movb	$0, -129(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	globals+584, %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB1_6
.LBB1_2:                                # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %if.else.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.12
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB1_8
# BB#7:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB1_9:                                # %cond.end
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	globals+576, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_11
# BB#10:                                # %if.then.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_11:                               # %if.end.21
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_13
# BB#12:                                # %if.then.23
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_13:                               # %if.end.25
	movq	-88(%rbp), %rdi
	callq	Ffile_name_absolute_p
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	encode_file_name
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_15
# BB#14:                                # %cond.true.31
	movq	globals+576, %rdi
	callq	encode_file_name
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false.33
	movq	empty_unibyte_string, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB1_16:                               # %cond.end.34
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	cmpq	$8, -152(%rbp)
	jbe	.LBB1_18
# BB#17:                                # %cond.true.39
	movq	-152(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.40
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB1_19
.LBB1_19:                               # %cond.end.41
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-320(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	cmpq	-120(%rbp), %rdi
	jg	.LBB1_21
# BB#20:                                # %cond.true.47
	movq	-152(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-328(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-120(%rbp), %rax
	subq	%rdi, %rax
	movq	%rax, -120(%rbp)
	movq	-152(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-336(%rbp), %rdi        # 8-byte Reload
	leaq	15(%rdi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	jmp	.LBB1_22
.LBB1_21:                               # %cond.false.53
	movb	$1, -129(%rbp)
	movq	-152(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-352(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB1_22:                               # %cond.end.57
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	lispstpcpy
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	lispstpcpy
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	emacs_open
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB1_35
# BB#23:                                # %if.then.64
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_25
# BB#24:                                # %if.then.68
	movq	-48(%rbp), %rdi
	movl	$sibling_etc, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	lispstpcpy
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	emacs_open
	movl	%eax, -68(%rbp)
.LBB1_25:                               # %if.end.72
	cmpl	$0, -68(%rbp)
	jge	.LBB1_34
# BB#26:                                # %if.then.75
	callq	__errno_location
	cmpl	$24, (%rax)
	je	.LBB1_28
# BB#27:                                # %lor.lhs.false
	callq	__errno_location
	cmpl	$23, (%rax)
	jne	.LBB1_29
.LBB1_28:                               # %if.then.82
	movabsq	$.L.str, %rdi
	movq	-88(%rbp), %rsi
	callq	report_file_error
.LBB1_29:                               # %if.end.83
	jmp	.LBB1_30
.LBB1_30:                               # %do.body
	testb	$1, -129(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.84
	xorl	%edi, %edi
	movb	$0, -129(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB1_32:                               # %if.end.87
	jmp	.LBB1_33
.LBB1_33:                               # %do.end
	movl	$4, %esi
	leaq	-192(%rbp), %rax
	movabsq	$.L.str.1, %rcx
	movq	$29, -192(%rbp)
	movq	$-1, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-232(%rbp), %rcx
	movabsq	$.L.str.2, %rdi
	movq	%rax, -160(%rbp)
	movq	$2, -232(%rbp)
	movq	$-1, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	%rdi, -208(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -200(%rbp)
	movq	-160(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-200(%rbp), %rdx
	callq	concat3
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_34:                               # %if.end.99
	jmp	.LBB1_35
.LBB1_35:                               # %if.end.100
	callq	SPECPDL_INDEX
	movabsq	$close_file_unwind, %rdi
	movq	%rax, -112(%rbp)
	movl	-68(%rbp), %esi
	callq	record_unwind_protect_int
	movl	$1024, %esi             # imm = 0x400
	movl	%esi, %eax
	movl	$8192, %esi             # imm = 0x2000
	movl	%esi, %edi
	movq	-80(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	cqto
	idivq	%rdi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	cmpq	%rdx, %rdi
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jle	.LBB1_37
# BB#36:                                # %cond.true.104
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB1_38
.LBB1_37:                               # %cond.false.105
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rdx, -416(%rbp)        # 8-byte Spill
.LBB1_38:                               # %cond.end.107
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB1_40
# BB#39:                                # %cond.true.111
	movq	-80(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB1_44
.LBB1_40:                               # %cond.false.112
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %ecx
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	cqto
	movq	-432(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	%rdx, %rcx
	jle	.LBB1_42
# BB#41:                                # %cond.true.116
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %ecx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB1_43
.LBB1_42:                               # %cond.false.117
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
.LBB1_43:                               # %cond.end.119
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB1_44:                               # %cond.end.121
	movq	-424(%rbp), %rax        # 8-byte Reload
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movl	%eax, %edx
	movl	%edx, -72(%rbp)
	cmpq	-80(%rbp), %rcx
	jl	.LBB1_46
# BB#45:                                # %lor.lhs.false.126
	xorl	%edx, %edx
	movl	-68(%rbp), %edi
	movq	-80(%rbp), %rax
	movslq	-72(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB1_47
.LBB1_46:                               # %if.then.132
	movabsq	$.L.str.3, %rdi
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	error
.LBB1_47:                               # %if.end.133
	movq	get_doc_string_buffer, %rax
	movq	%rax, -56(%rbp)
.LBB1_48:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	get_doc_string_buffer_size, %rax
	subq	$1, %rax
	movq	-56(%rbp), %rcx
	movq	get_doc_string_buffer, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jg	.LBB1_50
# BB#49:                                # %if.then.138
                                        #   in Loop: Header=BB1_48 Depth=1
	movabsq	$get_doc_string_buffer_size, %rsi
	movl	$16384, %eax            # imm = 0x4000
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	-56(%rbp), %rdi
	movq	get_doc_string_buffer, %r9
	subq	%r9, %rdi
	movq	%rdi, -256(%rbp)
	movq	get_doc_string_buffer, %rdi
	callq	xpalloc
	movq	%rax, get_doc_string_buffer
	movq	get_doc_string_buffer, %rax
	addq	-256(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	get_doc_string_buffer_size, %rax
	subq	$1, %rax
	movq	-56(%rbp), %rcx
	movq	get_doc_string_buffer, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%rax, -240(%rbp)
.LBB1_50:                               # %if.end.148
                                        #   in Loop: Header=BB1_48 Depth=1
	cmpq	$8192, -240(%rbp)       # imm = 0x2000
	jle	.LBB1_52
# BB#51:                                # %if.then.151
                                        #   in Loop: Header=BB1_48 Depth=1
	movq	$8192, -240(%rbp)       # imm = 0x2000
.LBB1_52:                               # %if.end.152
                                        #   in Loop: Header=BB1_48 Depth=1
	movl	-68(%rbp), %edi
	movq	-56(%rbp), %rsi
	movq	-240(%rbp), %rdx
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -244(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_54
# BB#53:                                # %if.then.157
	movabsq	$.L.str, %rdi
	movq	-88(%rbp), %rsi
	callq	report_file_error
.LBB1_54:                               # %if.end.158
                                        #   in Loop: Header=BB1_48 Depth=1
	movslq	-244(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	cmpl	$0, -244(%rbp)
	jne	.LBB1_56
# BB#55:                                # %if.then.160
	jmp	.LBB1_62
.LBB1_56:                               # %if.end.161
                                        #   in Loop: Header=BB1_48 Depth=1
	movq	-56(%rbp), %rax
	cmpq	get_doc_string_buffer, %rax
	jne	.LBB1_58
# BB#57:                                # %if.then.164
                                        #   in Loop: Header=BB1_48 Depth=1
	movl	$31, %esi
	movq	-56(%rbp), %rax
	movslq	-72(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	strchr
	movq	%rax, -64(%rbp)
	jmp	.LBB1_59
.LBB1_58:                               # %if.else.167
                                        #   in Loop: Header=BB1_48 Depth=1
	movl	$31, %esi
	movq	-56(%rbp), %rdi
	callq	strchr
	movq	%rax, -64(%rbp)
.LBB1_59:                               # %if.end.169
                                        #   in Loop: Header=BB1_48 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB1_61
# BB#60:                                # %if.then.171
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_62
.LBB1_61:                               # %if.end.172
                                        #   in Loop: Header=BB1_48 Depth=1
	movl	-244(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB1_48
.LBB1_62:                               # %while.end
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -456(%rbp)        # 8-byte Spill
# BB#63:                                # %do.body.177
	testb	$1, -129(%rbp)
	je	.LBB1_65
# BB#64:                                # %if.then.179
	xorl	%edi, %edi
	movb	$0, -129(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB1_65:                               # %if.end.182
	jmp	.LBB1_66
.LBB1_66:                               # %do.end.183
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_80
# BB#67:                                # %if.then.188
	movl	$1, -260(%rbp)
	movl	-72(%rbp), %eax
	subl	-260(%rbp), %eax
	movslq	%eax, %rcx
	movq	get_doc_string_buffer, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$31, %eax
	je	.LBB1_79
# BB#68:                                # %if.then.195
	movl	-72(%rbp), %eax
	movl	-260(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)
	subl	%ecx, %eax
	movslq	%eax, %rsi
	movq	get_doc_string_buffer, %rdi
	movsbl	(%rdi,%rsi), %eax
	cmpl	$32, %eax
	je	.LBB1_70
# BB#69:                                # %if.then.202
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_70:                               # %if.end.204
	jmp	.LBB1_71
.LBB1_71:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-72(%rbp), %eax
	subl	-260(%rbp), %eax
	movslq	%eax, %rdx
	movq	get_doc_string_buffer, %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -473(%rbp)         # 1-byte Spill
	jl	.LBB1_73
# BB#72:                                # %land.rhs
                                        #   in Loop: Header=BB1_71 Depth=1
	movl	-72(%rbp), %eax
	subl	-260(%rbp), %eax
	movslq	%eax, %rcx
	movq	get_doc_string_buffer, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$57, %eax
	setle	%sil
	movb	%sil, -473(%rbp)        # 1-byte Spill
.LBB1_73:                               # %land.end
                                        #   in Loop: Header=BB1_71 Depth=1
	movb	-473(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_74
	jmp	.LBB1_75
.LBB1_74:                               # %while.body.217
                                        #   in Loop: Header=BB1_71 Depth=1
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB1_71
.LBB1_75:                               # %while.end.219
	movl	-72(%rbp), %eax
	movl	-260(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)
	subl	%ecx, %eax
	movslq	%eax, %rsi
	movq	get_doc_string_buffer, %rdi
	movsbl	(%rdi,%rsi), %eax
	cmpl	$64, %eax
	jne	.LBB1_77
# BB#76:                                # %lor.lhs.false.227
	movl	-72(%rbp), %eax
	subl	-260(%rbp), %eax
	movslq	%eax, %rcx
	movq	get_doc_string_buffer, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$35, %eax
	je	.LBB1_78
.LBB1_77:                               # %if.then.234
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_78:                               # %if.end.236
	jmp	.LBB1_79
.LBB1_79:                               # %if.end.237
	jmp	.LBB1_88
.LBB1_80:                               # %if.else.238
	movl	$1, -264(%rbp)
	movl	-72(%rbp), %eax
	movl	-264(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -264(%rbp)
	subl	%ecx, %eax
	movslq	%eax, %rsi
	movq	get_doc_string_buffer, %rdi
	movsbl	(%rdi,%rsi), %eax
	cmpl	$10, %eax
	je	.LBB1_82
# BB#81:                                # %if.then.247
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_82:                               # %if.end.249
	jmp	.LBB1_83
.LBB1_83:                               # %while.cond.250
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	subl	-264(%rbp), %eax
	movslq	%eax, %rcx
	movq	get_doc_string_buffer, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$32, %eax
	jle	.LBB1_85
# BB#84:                                # %while.body.257
                                        #   in Loop: Header=BB1_83 Depth=1
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB1_83
.LBB1_85:                               # %while.end.259
	movl	-72(%rbp), %eax
	subl	-264(%rbp), %eax
	movslq	%eax, %rcx
	movq	get_doc_string_buffer, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$31, %eax
	je	.LBB1_87
# BB#86:                                # %if.then.266
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_87:                               # %if.end.268
	jmp	.LBB1_88
.LBB1_88:                               # %if.end.269
	movq	get_doc_string_buffer, %rax
	movslq	-72(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	get_doc_string_buffer, %rax
	movslq	-72(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB1_89:                               # %while.cond.274
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB1_103
# BB#90:                                # %while.body.277
                                        #   in Loop: Header=BB1_89 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB1_101
# BB#91:                                # %if.then.281
                                        #   in Loop: Header=BB1_89 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, -268(%rbp)
	cmpl	$1, -268(%rbp)
	jne	.LBB1_93
# BB#92:                                # %if.then.286
                                        #   in Loop: Header=BB1_89 Depth=1
	movl	-268(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB1_100
.LBB1_93:                               # %if.else.289
                                        #   in Loop: Header=BB1_89 Depth=1
	cmpl	$48, -268(%rbp)
	jne	.LBB1_95
# BB#94:                                # %if.then.292
                                        #   in Loop: Header=BB1_89 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$0, (%rax)
	jmp	.LBB1_99
.LBB1_95:                               # %if.else.294
                                        #   in Loop: Header=BB1_89 Depth=1
	cmpl	$95, -268(%rbp)
	jne	.LBB1_97
# BB#96:                                # %if.then.297
                                        #   in Loop: Header=BB1_89 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$31, (%rax)
	jmp	.LBB1_98
.LBB1_97:                               # %if.else.299
	movabsq	$.L.str.4, %rdi
	movl	$1, %esi
	movl	-268(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -269(%rbp)
	movzbl	-269(%rbp), %edx
	movb	$0, %al
	callq	error
.LBB1_98:                               # %if.end.302
                                        #   in Loop: Header=BB1_89 Depth=1
	jmp	.LBB1_99
.LBB1_99:                               # %if.end.303
                                        #   in Loop: Header=BB1_89 Depth=1
	jmp	.LBB1_100
.LBB1_100:                              # %if.end.304
                                        #   in Loop: Header=BB1_89 Depth=1
	jmp	.LBB1_102
.LBB1_101:                              # %if.else.305
                                        #   in Loop: Header=BB1_89 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB1_102:                              # %if.end.308
                                        #   in Loop: Header=BB1_89 Depth=1
	jmp	.LBB1_89
.LBB1_103:                              # %while.end.309
	testb	$1, -18(%rbp)
	je	.LBB1_105
# BB#104:                               # %if.then.311
	movl	$598, %edi              # imm = 0x256
	movq	get_doc_string_buffer, %rax
	movslq	-72(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, read_bytecode_pointer
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fread
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_105:                              # %if.end.316
	testb	$1, -17(%rbp)
	je	.LBB1_107
# BB#106:                               # %if.then.318
	movq	get_doc_string_buffer, %rax
	movslq	-72(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	get_doc_string_buffer, %rdx
	movslq	-72(%rbp), %rsi
	addq	%rsi, %rdx
	subq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	make_unibyte_string
	movq	%rax, -8(%rbp)
	jmp	.LBB1_108
.LBB1_107:                              # %if.else.327
	movq	get_doc_string_buffer, %rax
	movslq	-72(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	get_doc_string_buffer, %rdx
	movslq	-72(%rbp), %rsi
	addq	%rsi, %rdx
	subq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	multibyte_chars_in_text
	movq	%rax, -280(%rbp)
	movq	get_doc_string_buffer, %rax
	movslq	-72(%rbp), %rcx
	addq	%rcx, %rax
	movq	-280(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	get_doc_string_buffer, %rdx
	movslq	-72(%rbp), %rdi
	addq	%rdi, %rdx
	subq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	make_string_from_bytes
	movq	%rax, -8(%rbp)
.LBB1_108:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_doc_string, .Lfunc_end1-get_doc_string
	.cfi_endproc

	.globl	read_doc_string
	.align	16, 0x90
	.type	read_doc_string,@function
read_doc_string:                        # @read_doc_string
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_doc_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	read_doc_string, .Lfunc_end2-read_doc_string
	.cfi_endproc

	.globl	Fdocumentation
	.align	16, 0x90
	.type	Fdocumentation,@function
Fdocumentation:                         # @Fdocumentation
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	$1, -49(%rbp)
.LBB3_1:                                # %documentation
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB3_5
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$477, %edi              # imm = 0x1DD
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_4
# BB#3:                                 # %if.then.7
	movl	$477, %edi              # imm = 0x1DD
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fdocumentation_property
	movq	%rax, -8(%rbp)
	jmp	.LBB3_73
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.10
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Findirect_function
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$636, %edi              # imm = 0x27C
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_8
# BB#7:                                 # %if.then.20
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB3_8:                                # %if.end.22
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB3_9
	jmp	.LBB3_16
.LBB3_9:                                # %if.then.24
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XSUBR
	cmpq	$0, 40(%rax)
	jne	.LBB3_11
# BB#10:                                # %if.then.29
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_73
.LBB3_11:                               # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XSUBR
	movq	40(%rax), %rax
	cmpq	$0, %rax
	jl	.LBB3_13
# BB#12:                                # %if.then.35
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XSUBR
	movq	40(%rax), %rdi
	callq	build_string
	movq	%rax, -48(%rbp)
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.39
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XSUBR
	movq	40(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB3_14:                               # %if.end.42
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.43
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_59
.LBB3_16:                               # %if.else.44
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB3_17
	jmp	.LBB3_28
.LBB3_17:                               # %if.then.46
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$4, %rax
	jg	.LBB3_19
# BB#18:                                # %if.then.51
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_73
.LBB3_19:                               # %if.else.53
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_20
	jmp	.LBB3_21
.LBB3_20:                               # %if.then.57
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_26
.LBB3_21:                               # %if.else.58
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_23
# BB#22:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_24
.LBB3_23:                               # %if.then.65
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.66
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_73
.LBB3_25:                               # %if.end.68
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.69
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_27
.LBB3_27:                               # %if.end.70
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_58
.LBB3_28:                               # %if.else.71
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_30
# BB#29:                                # %lor.lhs.false.74
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_30
	jmp	.LBB3_31
.LBB3_30:                               # %if.then.77
	movabsq	$.L.str.5, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB3_73
.LBB3_31:                               # %if.else.79
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_54
# BB#32:                                # %if.then.84
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB3_34
# BB#33:                                # %if.then.91
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB3_34:                               # %if.else.93
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$589, %edi              # imm = 0x24D
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_36
# BB#35:                                # %if.then.97
	movabsq	$.L.str.6, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB3_73
.LBB3_36:                               # %if.else.99
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$598, %edi              # imm = 0x256
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_40
# BB#37:                                # %lor.lhs.false.103
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$271, %edi              # imm = 0x10F
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_39
# BB#38:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	testb	$1, %al
	jne	.LBB3_40
.LBB3_39:                               # %lor.lhs.false.111
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$191, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_50
.LBB3_40:                               # %if.then.115
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	Fcar
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_41
	jmp	.LBB3_42
.LBB3_41:                               # %if.then.121
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_49
.LBB3_42:                               # %if.else.122
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_45
# BB#43:                                # %lor.lhs.false.125
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_47
# BB#44:                                # %land.lhs.true.130
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_47
.LBB3_45:                               # %land.lhs.true.139
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_47
# BB#46:                                # %if.then.146
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_48
.LBB3_47:                               # %if.else.147
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_73
.LBB3_48:                               # %if.end.149
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_49
.LBB3_49:                               # %if.end.150
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_51
.LBB3_50:                               # %if.else.151
	jmp	.LBB3_55
.LBB3_51:                               # %if.end.152
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_52
.LBB3_52:                               # %if.end.153
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_53
.LBB3_53:                               # %if.end.154
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_56
.LBB3_54:                               # %if.else.155
	jmp	.LBB3_55
.LBB3_55:                               # %oops
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB3_56:                               # %if.end.157
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_57
.LBB3_57:                               # %if.end.158
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_58
.LBB3_58:                               # %if.end.159
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_59
.LBB3_59:                               # %if.end.160
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpq	$2, -48(%rbp)
	jne	.LBB3_61
# BB#60:                                # %if.then.163
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB3_61:                               # %if.end.165
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB3_63
# BB#62:                                # %lor.lhs.false.171
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_70
.LBB3_63:                               # %if.then.176
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_doc_string
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_68
# BB#64:                                # %land.lhs.true.182
                                        #   in Loop: Header=BB3_1 Depth=1
	testb	$1, -49(%rbp)
	je	.LBB3_68
# BB#65:                                # %if.then.184
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	Fcar_safe
	movq	%rax, %rdi
	callq	reread_doc_file
	andb	$1, %al
	movb	%al, -49(%rbp)
	testb	$1, -49(%rbp)
	je	.LBB3_67
# BB#66:                                # %if.then.188
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	$0, -49(%rbp)
	jmp	.LBB3_1
.LBB3_67:                               # %if.end.189
	jmp	.LBB3_69
.LBB3_68:                               # %if.else.190
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB3_69:                               # %if.end.191
	jmp	.LBB3_70
.LBB3_70:                               # %if.end.192
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_72
# BB#71:                                # %if.then.196
	movq	-48(%rbp), %rdi
	callq	Fsubstitute_command_keys
	movq	%rax, -48(%rbp)
.LBB3_72:                               # %if.end.198
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_73:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fdocumentation, .Lfunc_end3-Fdocumentation
	.cfi_endproc

	.globl	Fdocumentation_property
	.align	16, 0x90
	.type	Fdocumentation_property,@function
Fdocumentation_property:                # @Fdocumentation_property
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
.LBB4_1:                                # %documentation_property
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fget
	movq	%rax, -40(%rbp)
	cmpq	$2, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB4_3:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB4_6
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_12
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_12
.LBB4_6:                                # %if.then.14
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_doc_string
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_11
# BB#7:                                 # %land.lhs.true.19
                                        #   in Loop: Header=BB4_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB4_11
# BB#8:                                 # %if.then.21
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	Fcar_safe
	movq	%rax, %rdi
	callq	reread_doc_file
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.25
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	$0, -25(%rbp)
	jmp	.LBB4_1
.LBB4_10:                               # %if.end.26
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.27
	jmp	.LBB4_15
.LBB4_12:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB4_14
# BB#13:                                # %if.then.29
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Feval
	movq	%rax, -40(%rbp)
.LBB4_14:                               # %if.end.32
	jmp	.LBB4_15
.LBB4_15:                               # %if.end.33
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_18
# BB#16:                                # %land.lhs.true.37
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB4_17
	jmp	.LBB4_18
.LBB4_17:                               # %if.then.40
	movq	-40(%rbp), %rdi
	callq	Fsubstitute_command_keys
	movq	%rax, -40(%rbp)
.LBB4_18:                               # %if.end.42
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fdocumentation_property, .Lfunc_end4-Fdocumentation_property
	.cfi_endproc

	.align	16, 0x90
	.type	reread_doc_file,@function
reread_doc_file:                        # @reread_doc_file
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	globals+584, %rdi
	callq	Fsnarf_documentation
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	Fload
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB5_3:                                # %if.end
	movb	$1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	reread_doc_file, .Lfunc_end5-reread_doc_file
	.cfi_endproc

	.globl	Fsubstitute_command_keys
	.align	16, 0x90
	.type	Fsubstitute_command_keys,@function
Fsubstitute_command_keys:               # @Fsubstitute_command_keys
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
	subq	$688, %rsp              # imm = 0x2B0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movb	$0, -25(%rbp)
	movb	$0, -26(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_126
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
	callq	text_quoting_style
	movl	%eax, -132(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movb	%al, -113(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	-16(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	count_size_as_multibyte
	movq	-320(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	andb	$1, %cl
	movb	%cl, -114(%rbp)
	movq	$0, -128(%rbp)
	movq	globals+1728, %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movabsq	$2305843009213693931, %rsi # imm = 0x1FFFFFFFFFFFFFEB
	movq	%rax, -64(%rbp)
	cmpq	%rsi, -64(%rbp)
	jg	.LBB6_4
# BB#3:                                 # %if.then.15
	movq	-64(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -64(%rbp)
.LBB6_4:                                # %if.end.16
	movq	-64(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -40(%rbp)
.LBB6_5:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
                                        #     Child Loop BB6_32 Depth 2
                                        #     Child Loop BB6_50 Depth 2
                                        #     Child Loop BB6_108 Depth 2
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-344(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-336(%rbp), %rax        # 8-byte Reload
	cmpq	%rdi, %rax
	jae	.LBB6_118
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB6_24
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$61, %ecx
	jne	.LBB6_24
# BB#8:                                 # %if.then.28
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, -26(%rbp)
	movb	$1, -25(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	testb	$1, -113(%rbp)
	je	.LBB6_22
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$1, -136(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	jmp	.LBB6_18
.LBB6_11:                               # %cond.false
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_13
# BB#12:                                # %cond.true.40
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -136(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-40(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -352(%rbp)        # 4-byte Spill
	jmp	.LBB6_17
.LBB6_13:                               # %cond.false.52
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_15
# BB#14:                                # %cond.true.57
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$3, -136(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB6_16
.LBB6_15:                               # %cond.false.71
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-136(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	string_char
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB6_16:                               # %cond.end
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB6_17:                               # %cond.end.74
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB6_18:                               # %cond.end.76
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$1, -136(%rbp)
	jne	.LBB6_20
# BB#19:                                # %if.then.80
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movq	-48(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB6_21
.LBB6_20:                               # %if.else
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movslq	-136(%rbp), %rdx
	callq	memcpy
.LBB6_21:                               # %if.end.82
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-136(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movl	-136(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-128(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.86
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
.LBB6_23:                               # %if.end.89
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_117
.LBB6_24:                               # %if.else.90
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB6_46
# BB#25:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$91, %ecx
	jne	.LBB6_46
# BB#26:                                # %if.then.100
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, -145(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-368(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -144(%rbp)
.LBB6_27:                               # %while.cond.103
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-376(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-384(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -385(%rbp)         # 1-byte Spill
	jge	.LBB6_29
# BB#28:                                # %land.rhs
                                        #   in Loop: Header=BB6_27 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$93, %ecx
	setne	%dl
	movb	%dl, -385(%rbp)         # 1-byte Spill
.LBB6_29:                               # %land.end
                                        #   in Loop: Header=BB6_27 Depth=2
	movb	-385(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_30
	jmp	.LBB6_31
.LBB6_30:                               # %while.body.114
                                        #   in Loop: Header=BB6_27 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_27
.LBB6_31:                               # %while.end
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-400(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	make_string
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -112(%rbp)
.LBB6_32:                               # %do_remap
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-112(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fwhere_is_internal
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB6_33
	jmp	.LBB6_38
.LBB6_33:                               # %land.lhs.true.133
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-72(%rbp), %rdi
	callq	ASIZE
	cmpq	$1, %rax
	jle	.LBB6_38
# BB#34:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB6_32 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	AREF
	movl	$805, %edi              # imm = 0x325
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_38
# BB#35:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_38
# BB#36:                                # %land.lhs.true.148
                                        #   in Loop: Header=BB6_32 Depth=2
	testb	$1, -145(%rbp)
	je	.LBB6_38
# BB#37:                                # %if.then.151
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	AREF
	movq	%rax, -112(%rbp)
	movb	$0, -145(%rbp)
	jmp	.LBB6_32
.LBB6_38:                               # %if.end.153
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	xorl	%edi, %edi
	addq	-144(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_45
# BB#39:                                # %if.then.161
                                        #   in Loop: Header=BB6_5 Depth=1
	movabsq	$2305843009213693947, %rax # imm = 0x1FFFFFFFFFFFFFFB
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	cmpq	-64(%rbp), %rax
	jge	.LBB6_41
# BB#40:                                # %if.then.167
	callq	string_overflow
.LBB6_41:                               # %if.end.168
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	-160(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	.L.str.93, %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
	testb	$1, -113(%rbp)
	je	.LBB6_43
# BB#42:                                # %if.then.175
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	multibyte_chars_in_text
	movq	%rax, -96(%rbp)
	jmp	.LBB6_44
.LBB6_43:                               # %if.else.177
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB6_44:                               # %if.end.178
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_73
.LBB6_45:                               # %if.else.179
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movq	%rax, -72(%rbp)
	jmp	.LBB6_68
.LBB6_46:                               # %if.else.182
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB6_77
# BB#47:                                # %land.lhs.true.187
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$123, %ecx
	je	.LBB6_49
# BB#48:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$60, %ecx
	jne	.LBB6_77
.LBB6_49:                               # %if.then.196
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcurrent_active_maps
	movq	%rax, -184(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -200(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-480(%rbp), %rsi        # 8-byte Reload
	subq	%rax, %rsi
	movq	%rsi, -176(%rbp)
.LBB6_50:                               # %while.cond.207
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-488(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-496(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -497(%rbp)         # 1-byte Spill
	jge	.LBB6_53
# BB#51:                                # %land.lhs.true.215
                                        #   in Loop: Header=BB6_50 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$125, %eax
	movb	%cl, -497(%rbp)         # 1-byte Spill
	je	.LBB6_53
# BB#52:                                # %land.rhs.219
                                        #   in Loop: Header=BB6_50 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$62, %ecx
	setne	%dl
	movb	%dl, -497(%rbp)         # 1-byte Spill
.LBB6_53:                               # %land.end.223
                                        #   in Loop: Header=BB6_50 Depth=2
	movb	-497(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_54
	jmp	.LBB6_55
.LBB6_54:                               # %while.body.224
                                        #   in Loop: Header=BB6_50 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_50
.LBB6_55:                               # %while.end.226
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-512(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	make_string
	xorl	%edi, %edi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	Fboundp
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_59
# BB#56:                                # %if.then.242
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-112(%rbp), %rdi
	callq	Fsymbol_value
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_58
# BB#57:                                # %if.then.247
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	callq	get_keymap
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB6_58:                               # %if.end.253
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_59
.LBB6_59:                               # %if.end.254
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	current_buffer, %rax
	movq	%rax, -168(%rbp)
	movq	Vprin1_to_string_buffer, %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_63
# BB#60:                                # %if.then.261
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-112(%rbp), %rdi
	callq	Fsymbol_name
	movl	$4, %esi
	leaq	-240(%rbp), %rdi
	movabsq	$.L.str.94, %rcx
	movq	%rax, -112(%rbp)
	movq	$14, -240(%rbp)
	movq	$-1, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	%rcx, -216(%rbp)
	callq	make_lisp_ptr
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	Fsubstitute_command_keys
	movq	%rax, %rdi
	callq	insert1
	movq	-112(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SCHARS
	movq	-112(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	SBYTES
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$1, %r9d
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	insert_from_string
	movl	$4, %esi
	leaq	-280(%rbp), %rax
	movabsq	$.L.str.95, %rcx
	movq	$35, -280(%rbp)
	movq	$-1, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	Fsubstitute_command_keys
	movq	%rax, %rdi
	callq	insert1
	movq	-88(%rbp), %rax
	movzbl	-1(%rax), %esi
	cmpl	$60, %esi
	jne	.LBB6_62
# BB#61:                                # %if.then.281
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
.LBB6_62:                               # %if.end.283
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_67
.LBB6_63:                               # %if.else.284
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-88(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$60, %ecx
	jne	.LBB6_65
# BB#64:                                # %if.then.289
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB6_66
.LBB6_65:                               # %if.else.290
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-72(%rbp), %rdi
	movq	-184(%rbp), %rax
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Freverse
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmemq
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -192(%rbp)
	movq	-72(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fnreverse
	xorl	%edi, %edi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%ecx, %ecx
	movq	-584(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -596(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movl	-596(%rbp), %esi        # 4-byte Reload
	movq	-592(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -600(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-596(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	describe_map_tree
.LBB6_66:                               # %if.end.296
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_67
.LBB6_67:                               # %if.end.297
                                        #   in Loop: Header=BB6_5 Depth=1
	callq	Fbuffer_string
	movq	%rax, -72(%rbp)
	callq	Ferase_buffer
	movq	-168(%rbp), %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	set_buffer_internal
	xorl	%edi, %edi
	movq	-200(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB6_68:                               # %subst_string
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-72(%rbp), %rdi
	callq	SDATA
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -104(%rbp)
	testb	$1, -113(%rbp)
	jne	.LBB6_70
# BB#69:                                # %lor.lhs.false.306
                                        #   in Loop: Header=BB6_5 Depth=1
	testb	$1, -114(%rbp)
	je	.LBB6_71
.LBB6_70:                               # %if.then.309
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-72(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -96(%rbp)
	jmp	.LBB6_72
.LBB6_71:                               # %if.else.311
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB6_72:                               # %if.end.312
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_73
.LBB6_73:                               # %subst
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, -26(%rbp)
.LBB6_74:                               # %subst_quote
                                        #   in Loop: Header=BB6_5 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movb	$1, -25(%rbp)
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, -288(%rbp)
	subq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB6_76
# BB#75:                                # %if.then.319
	callq	string_overflow
.LBB6_76:                               # %if.end.320
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	-288(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	memcpy
	movq	-104(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_115
.LBB6_77:                               # %if.else.328
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$96, %ecx
	je	.LBB6_79
# BB#78:                                # %lor.lhs.false.333
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$39, %ecx
	jne	.LBB6_87
.LBB6_79:                               # %land.lhs.true.338
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$0, -132(%rbp)
	jne	.LBB6_87
# BB#80:                                # %land.lhs.true.341
                                        #   in Loop: Header=BB6_5 Depth=1
	testb	$1, -113(%rbp)
	jne	.LBB6_82
# BB#81:                                # %lor.lhs.false.344
                                        #   in Loop: Header=BB6_5 Depth=1
	testb	$1, -114(%rbp)
	je	.LBB6_87
.LBB6_82:                               # %if.then.347
                                        #   in Loop: Header=BB6_5 Depth=1
	movabsq	$.L.str.97, %rax
	movabsq	$.L.str.96, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %esi
	cmpl	$96, %esi
	cmoveq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	$3, -104(%rbp)
	testb	$1, -113(%rbp)
	jne	.LBB6_84
# BB#83:                                # %lor.lhs.false.355
                                        #   in Loop: Header=BB6_5 Depth=1
	testb	$1, -114(%rbp)
	je	.LBB6_85
.LBB6_84:                               # %if.then.358
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	$1, -96(%rbp)
	jmp	.LBB6_86
.LBB6_85:                               # %if.else.359
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB6_86:                               # %if.end.360
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-632(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -56(%rbp)
	jmp	.LBB6_74
.LBB6_87:                               # %if.else.366
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$96, %ecx
	jne	.LBB6_90
# BB#88:                                # %land.lhs.true.371
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$2, -132(%rbp)
	jne	.LBB6_90
# BB#89:                                # %if.then.374
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$39, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movb	$1, -25(%rbp)
	jmp	.LBB6_113
.LBB6_90:                               # %if.else.378
                                        #   in Loop: Header=BB6_5 Depth=1
	testb	$1, -113(%rbp)
	jne	.LBB6_92
# BB#91:                                # %if.then.380
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB6_112
.LBB6_92:                               # %if.else.384
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_94
# BB#93:                                # %cond.true.390
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$1, -292(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -636(%rbp)        # 4-byte Spill
	jmp	.LBB6_101
.LBB6_94:                               # %cond.false.393
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_96
# BB#95:                                # %cond.true.398
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -292(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-40(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -640(%rbp)        # 4-byte Spill
	jmp	.LBB6_100
.LBB6_96:                               # %cond.false.413
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_98
# BB#97:                                # %cond.true.418
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$3, -292(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	jmp	.LBB6_99
.LBB6_98:                               # %cond.false.432
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-292(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	string_char
	movl	%eax, -644(%rbp)        # 4-byte Spill
.LBB6_99:                               # %cond.end.434
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-644(%rbp), %eax        # 4-byte Reload
	movl	%eax, -640(%rbp)        # 4-byte Spill
.LBB6_100:                              # %cond.end.436
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-640(%rbp), %eax        # 4-byte Reload
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB6_101:                              # %cond.end.438
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	movl	%eax, -296(%rbp)
	cmpl	$8216, -296(%rbp)       # imm = 0x2018
	je	.LBB6_103
# BB#102:                               # %lor.lhs.false.442
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$8217, -296(%rbp)       # imm = 0x2019
	jne	.LBB6_107
.LBB6_103:                              # %land.lhs.true.445
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB6_107
# BB#104:                               # %if.then.448
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$8216, -296(%rbp)       # imm = 0x2018
	movb	%cl, -645(%rbp)         # 1-byte Spill
	jne	.LBB6_106
# BB#105:                               # %land.rhs.451
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$1, -132(%rbp)
	sete	%al
	movb	%al, -645(%rbp)         # 1-byte Spill
.LBB6_106:                              # %land.end.454
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	-645(%rbp), %al         # 1-byte Reload
	movl	$39, %ecx
	movl	$96, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movb	%cl, %al
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -48(%rbp)
	movb	%al, (%rsi)
	movl	-292(%rbp), %ecx
	movq	-40(%rbp), %rsi
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -40(%rbp)
	movb	$1, -25(%rbp)
	jmp	.LBB6_111
.LBB6_107:                              # %if.else.460
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_108
.LBB6_108:                              # %do.body
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
# BB#109:                               # %do.cond
                                        #   in Loop: Header=BB6_108 Depth=2
	movl	-292(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -292(%rbp)
	cmpl	$0, %eax
	jne	.LBB6_108
# BB#110:                               # %do.end
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_111
.LBB6_111:                              # %if.end.465
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
.LBB6_112:                              # %if.end.467
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_113
.LBB6_113:                              # %if.end.468
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_114
.LBB6_114:                              # %if.end.469
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_115
.LBB6_115:                              # %if.end.470
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_116
.LBB6_116:                              # %if.end.471
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_117
.LBB6_117:                              # %if.end.472
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_5
.LBB6_118:                              # %while.end.473
	testb	$1, -25(%rbp)
	je	.LBB6_124
# BB#119:                               # %if.then.475
	movq	-24(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	make_string_from_bytes
	movq	%rax, -72(%rbp)
	testb	$1, -26(%rbp)
	jne	.LBB6_123
# BB#120:                               # %if.then.481
	movq	-16(%rbp), %rdi
	callq	string_intervals
	movq	-16(%rbp), %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	copy_intervals
	movq	%rax, -304(%rbp)
	cmpq	$0, -304(%rbp)
	je	.LBB6_122
# BB#121:                               # %if.then.486
	movq	-304(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	set_interval_object
	movq	-72(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	set_string_intervals
.LBB6_122:                              # %if.end.487
	jmp	.LBB6_123
.LBB6_123:                              # %if.end.488
	jmp	.LBB6_125
.LBB6_124:                              # %if.else.489
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB6_125:                              # %if.end.490
	movq	-24(%rbp), %rdi
	callq	xfree
	movq	-72(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB6_126:                              # %return
	movq	-8(%rbp), %rax
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fsubstitute_command_keys, .Lfunc_end6-Fsubstitute_command_keys
	.cfi_endproc

	.globl	Fsnarf_documentation
	.align	16, 0x90
	.type	Fsnarf_documentation,@function
Fsnarf_documentation:                   # @Fsnarf_documentation
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
	subq	$1376, %rsp             # imm = 0x560
	movabsq	$.L.str.7, %rax
	movq	%rdi, -8(%rbp)
	movb	$0, -1081(%rbp)
	movq	%rax, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	find_symbol_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -1120(%rbp)
	movq	-1120(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1120(%rbp)
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_4
# BB#3:                                 # %if.then.6
	movabsq	$sibling_etc, %rax
	movq	%rax, -1104(%rbp)
	movq	$7, -1112(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movq	globals+576, %rdi
	callq	CHECK_STRING
	movq	globals+576, %rdi
	callq	SSDATA
	movq	%rax, -1104(%rbp)
	movq	globals+576, %rdi
	callq	SBYTES
	movq	%rax, -1112(%rbp)
.LBB7_5:                                # %if.end.9
	callq	SPECPDL_INDEX
	movq	%rax, -1096(%rbp)
	movq	$16384, -1128(%rbp)     # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -1136(%rbp)
	movb	$0, -1137(%rbp)
	movq	-1112(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	cmpq	-1128(%rbp), %rdi
	jg	.LBB7_7
# BB#6:                                 # %cond.true
	movq	-1112(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	leaq	1(%rdi,%rax), %rax
	movq	-1128(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -1128(%rbp)
	movq	-1112(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	leaq	16(%rdi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
	movb	$1, -1137(%rbp)
	movq	-1112(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	callq	record_xmalloc
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB7_8:                                # %cond.end
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rdi
	movq	-1104(%rbp), %rsi
	callq	stpcpy
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	lispstpcpy
	xorl	%edi, %edi
	movq	globals+152, %rsi
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	movq	%rsi, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB7_13
# BB#9:                                 # %if.then.29
	movl	$83, -1144(%rbp)
.LBB7_10:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	-1144(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -1144(%rbp)
	cmpl	%ecx, %eax
	jg	.LBB7_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB7_10 Depth=1
	movslq	-1144(%rbp), %rax
	movq	Fsnarf_documentation.buildobj(,%rax,8), %rdi
	callq	build_string
	movq	globals+152, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+152
	jmp	.LBB7_10
.LBB7_12:                               # %while.end
	movq	globals+152, %rdi
	callq	Fpurecopy
	movq	%rax, globals+152
.LBB7_13:                               # %if.end.34
	xorl	%eax, %eax
	movq	-1080(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	emacs_open
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB7_15
# BB#14:                                # %if.then.37
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -1148(%rbp)
	movq	-1080(%rbp), %rdi
	callq	build_string
	movabsq	$.L.str.91, %rdi
	movl	-1148(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB7_15:                               # %if.end.40
	movabsq	$close_file_unwind, %rdi
	movl	-12(%rbp), %esi
	callq	record_unwind_protect_int
	movq	-8(%rbp), %rdi
	movq	%rdi, globals+584
	movl	$0, -1044(%rbp)
	movq	$0, -1056(%rbp)
.LBB7_16:                               # %while.body.42
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$512, -1044(%rbp)       # imm = 0x200
	jge	.LBB7_18
# BB#17:                                # %if.then.44
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %ecx
	leaq	-1040(%rbp), %rdx
	movl	-12(%rbp), %edi
	movslq	-1044(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-1044(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	emacs_read
	movslq	-1044(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edi
	movl	%edi, -1044(%rbp)
.LBB7_18:                               # %if.end.52
                                        #   in Loop: Header=BB7_16 Depth=1
	cmpl	$0, -1044(%rbp)
	jne	.LBB7_20
# BB#19:                                # %if.then.53
	jmp	.LBB7_55
.LBB7_20:                               # %if.end.54
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	-1040(%rbp), %rax
	movslq	-1044(%rbp), %rcx
	movb	$0, -1040(%rbp,%rcx)
	cmpl	$512, -1044(%rbp)       # imm = 0x200
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jge	.LBB7_22
# BB#21:                                # %cond.true.59
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-1044(%rbp), %eax
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	jmp	.LBB7_23
.LBB7_22:                               # %cond.false.60
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-1044(%rbp), %eax
	subl	$128, %eax
	movl	%eax, -1260(%rbp)       # 4-byte Spill
.LBB7_23:                               # %cond.end.62
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-1260(%rbp), %eax       # 4-byte Reload
	leaq	-1040(%rbp), %rcx
	movslq	%eax, %rdx
	movq	-1256(%rbp), %rsi       # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, -1160(%rbp)
	movq	-1160(%rbp), %rdx
	subq	%rcx, %rdx
	movl	$31, %esi
	movq	%rcx, %rdi
	callq	memchr
	movq	%rax, -1072(%rbp)
	cmpq	$0, -1072(%rbp)
	je	.LBB7_54
# BB#24:                                # %if.then.68
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	$10, %esi
	movq	-1072(%rbp), %rdi
	callq	strchr
	movq	%rax, -1160(%rbp)
	movq	-1072(%rbp), %rax
	movsbl	1(%rax), %esi
	cmpl	$83, %esi
	jne	.LBB7_36
# BB#25:                                # %if.then.74
                                        #   in Loop: Header=BB7_16 Depth=1
	movb	$0, -1081(%rbp)
	movq	-1160(%rbp), %rax
	movq	-1072(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$4, %rax
	jle	.LBB7_35
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1160(%rbp), %rax
	movsbl	-2(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB7_35
# BB#27:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1160(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$111, %ecx
	je	.LBB7_29
# BB#28:                                # %lor.lhs.false
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1160(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$99, %ecx
	jne	.LBB7_35
.LBB7_29:                               # %if.then.93
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1160(%rbp), %rax
	movq	-1072(%rbp), %rcx
	subq	%rcx, %rax
	subq	$2, %rax
	movq	%rax, -1168(%rbp)
	movq	-1168(%rbp), %rax
	addq	$1, %rax
	cmpq	-1128(%rbp), %rax
	jg	.LBB7_31
# BB#30:                                # %cond.true.101
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1168(%rbp), %rax
	incq	%rax
	movq	-1128(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1168(%rbp), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1272(%rbp)       # 8-byte Spill
	jmp	.LBB7_32
.LBB7_31:                               # %cond.false.105
                                        #   in Loop: Header=BB7_16 Depth=1
	movb	$1, -1137(%rbp)
	movq	-1168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1272(%rbp)       # 8-byte Spill
.LBB7_32:                               # %cond.end.108
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1272(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	-1176(%rbp), %rdi
	movq	-1072(%rbp), %rax
	addq	$2, %rax
	movq	-1168(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movq	-1168(%rbp), %rax
	movq	-1176(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	movq	-1168(%rbp), %rax
	subq	$1, %rax
	movq	-1176(%rbp), %rdx
	movsbl	(%rdx,%rax), %ecx
	cmpl	$99, %ecx
	jne	.LBB7_34
# BB#33:                                # %if.then.117
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1168(%rbp), %rax
	subq	$1, %rax
	movq	-1176(%rbp), %rcx
	movb	$111, (%rcx,%rax)
.LBB7_34:                               # %if.end.120
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1176(%rbp), %rdi
	callq	build_string
	movq	globals+152, %rsi
	movq	%rax, %rdi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1280(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	andb	$1, %cl
	movb	%cl, -1081(%rbp)
.LBB7_35:                               # %if.end.126
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_36
.LBB7_36:                               # %if.end.127
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	globals+1656, %rdi
	movq	-1072(%rbp), %rax
	addq	$2, %rax
	movq	-1072(%rbp), %rcx
	addq	$2, %rcx
	movq	-1160(%rbp), %rdx
	movq	-1072(%rbp), %rsi
	subq	%rsi, %rdx
	subq	$2, %rdx
	movq	%rdi, -1288(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	multibyte_chars_in_text
	movq	-1160(%rbp), %rcx
	movq	-1072(%rbp), %rdx
	subq	%rdx, %rcx
	subq	$2, %rcx
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	-1296(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	oblookup
	movq	%rax, -1064(%rbp)
	testb	$1, -1081(%rbp)
	jne	.LBB7_53
# BB#37:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1064(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_53
# BB#38:                                # %if.then.145
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1072(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$86, %ecx
	jne	.LBB7_43
# BB#39:                                # %if.then.150
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1064(%rbp), %rdi
	callq	Fboundp
	xorl	%edi, %edi
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_41
# BB#40:                                # %lor.lhs.false.155
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1064(%rbp), %rdi
	movq	-1120(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_42
.LBB7_41:                               # %if.then.160
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	$992, %edi              # imm = 0x3E0
	movq	-1064(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leaq	-1040(%rbp), %rdx
	movq	-1056(%rbp), %rsi
	addq	-1160(%rbp), %rsi
	addq	$1, %rsi
	subq	%rdx, %rsi
	movq	-1160(%rbp), %rdx
	movsbl	1(%rdx), %r8d
	cmpl	$42, %r8d
	cmovel	%ecx, %edi
	movslq	%edi, %rdx
	imulq	%rdx, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rsi, -1328(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movq	-1328(%rbp), %rdx       # 8-byte Reload
	callq	Fput
	movq	%rax, -1336(%rbp)       # 8-byte Spill
.LBB7_42:                               # %if.end.176
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_52
.LBB7_43:                               # %if.else.177
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1072(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$70, %ecx
	jne	.LBB7_47
# BB#44:                                # %if.then.182
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1064(%rbp), %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_46
# BB#45:                                # %if.then.187
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	-1040(%rbp), %rax
	movq	-1064(%rbp), %rdi
	movq	-1056(%rbp), %rcx
	addq	-1160(%rbp), %rcx
	addq	$1, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsi
	callq	store_function_docstring
.LBB7_46:                               # %if.end.194
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_51
.LBB7_47:                               # %if.else.195
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-1072(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$83, %ecx
	jne	.LBB7_49
# BB#48:                                # %if.then.200
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_50
.LBB7_49:                               # %if.else.201
	movabsq	$.L.str.92, %rdi
	movq	-1056(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB7_50:                               # %if.end.202
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_51
.LBB7_51:                               # %if.end.203
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_52
.LBB7_52:                               # %if.end.204
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_53
.LBB7_53:                               # %if.end.205
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_54
.LBB7_54:                               # %if.end.206
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	-1040(%rbp), %rax
	movq	-1160(%rbp), %rcx
	subq	%rax, %rcx
	addq	-1056(%rbp), %rcx
	movq	%rcx, -1056(%rbp)
	movq	-1160(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-1044(%rbp), %rdx
	subq	%rcx, %rdx
	movl	%edx, %esi
	movl	%esi, -1044(%rbp)
	movq	-1160(%rbp), %rsi
	movslq	-1044(%rbp), %rdx
	movq	%rax, %rdi
	callq	memmove
	jmp	.LBB7_16
.LBB7_55:                               # %while.end.220
	jmp	.LBB7_56
.LBB7_56:                               # %do.body
	testb	$1, -1137(%rbp)
	je	.LBB7_58
# BB#57:                                # %if.then.222
	xorl	%edi, %edi
	movb	$0, -1137(%rbp)
	movq	-1136(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1360(%rbp)       # 8-byte Spill
.LBB7_58:                               # %if.end.225
	jmp	.LBB7_59
.LBB7_59:                               # %do.end
	xorl	%edi, %edi
	movq	-1096(%rbp), %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fsnarf_documentation, .Lfunc_end7-Fsnarf_documentation
	.cfi_endproc

	.align	16, 0x90
	.type	store_function_docstring,@function
store_function_docstring:               # @store_function_docstring
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB8_3:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB8_4
	jmp	.LBB8_5
.LBB8_4:                                # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-16(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	XSUBR
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 40(%rax)
	jmp	.LBB8_28
.LBB8_5:                                # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB8_18
# BB#6:                                 # %if.then.8
	movl	$598, %edi              # imm = 0x256
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_10
# BB#7:                                 # %lor.lhs.false
	movl	$191, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_10
# BB#8:                                 # %lor.lhs.false.16
	movl	$271, %edi              # imm = 0x10F
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_14
# BB#9:                                 # %land.lhs.true
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	testb	$1, %al
	jne	.LBB8_10
	jmp	.LBB8_14
.LBB8_10:                               # %if.then.21
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB8_13
# BB#11:                                # %land.lhs.true.28
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB8_13
# BB#12:                                # %if.then.36
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
.LBB8_13:                               # %if.end
	jmp	.LBB8_17
.LBB8_14:                               # %if.else.37
	movl	$636, %edi              # imm = 0x27C
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_16
# BB#15:                                # %if.then.41
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	store_function_docstring
.LBB8_16:                               # %if.end.45
	jmp	.LBB8_17
.LBB8_17:                               # %if.end.46
	jmp	.LBB8_27
.LBB8_18:                               # %if.else.47
	movq	-24(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB8_19
	jmp	.LBB8_26
.LBB8_19:                               # %if.then.49
	movq	-24(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$4, %rax
	jle	.LBB8_21
# BB#20:                                # %if.then.54
	movl	$4, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	jmp	.LBB8_25
.LBB8_21:                               # %if.else.57
	movl	$4, %esi
	leaq	-80(%rbp), %rax
	movabsq	$.L.str.104, %rcx
	movq	$24, -80(%rbp)
	movq	$-1, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	leaq	-96(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	addq	$8, %rcx
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$0, %esi
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jne	.LBB8_23
# BB#22:                                # %cond.true.65
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false.67
	movabsq	$.L.str.105, %rdi
	callq	build_string
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB8_24:                               # %cond.end.69
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edi
	leaq	-96(%rbp), %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	callq	Fmessage
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB8_25:                               # %if.end.72
	jmp	.LBB8_26
.LBB8_26:                               # %if.end.73
	jmp	.LBB8_27
.LBB8_27:                               # %if.end.74
	jmp	.LBB8_28
.LBB8_28:                               # %if.end.75
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	store_function_docstring, .Lfunc_end8-store_function_docstring
	.cfi_endproc

	.globl	text_quoting_style
	.align	16, 0x90
	.type	text_quoting_style,@function
text_quoting_style:                     # @text_quoting_style
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
	xorl	%edi, %edi
	movq	globals+2336, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_2
# BB#1:                                 # %cond.true
	callq	default_to_grave_quoting_style
	testb	$1, %al
	jne	.LBB9_3
	jmp	.LBB9_4
.LBB9_2:                                # %cond.false
	movl	$500, %edi              # imm = 0x1F4
	movq	globals+2336, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_4
.LBB9_3:                                # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB9_7
.LBB9_4:                                # %if.else
	movl	$881, %edi              # imm = 0x371
	movq	globals+2336, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_6
# BB#5:                                 # %if.then.6
	movl	$2, -4(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.7
	movl	$0, -4(%rbp)
.LBB9_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	text_quoting_style, .Lfunc_end9-text_quoting_style
	.cfi_endproc

	.align	16, 0x90
	.type	default_to_grave_quoting_style,@function
default_to_grave_quoting_style:         # @default_to_grave_quoting_style
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
	testb	$1, globals+3430
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB10_10
.LBB10_2:                               # %if.end
	movq	globals+2200, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB10_3
	jmp	.LBB10_5
.LBB10_3:                               # %land.lhs.true
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_5
# BB#4:                                 # %land.lhs.true.3
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	je	.LBB10_6
.LBB10_5:                               # %if.then.7
	movb	$0, -1(%rbp)
	jmp	.LBB10_10
.LBB10_6:                               # %if.end.8
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movl	$8216, %esi             # imm = 0x2018
	movq	%rax, %rdi
	callq	disp_char_vector
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	xorl	%esi, %esi
	movb	%sil, %cl
	testb	$1, %al
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB10_7
	jmp	.LBB10_9
.LBB10_7:                               # %land.lhs.true.12
	movq	-16(%rbp), %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	$1, %rax
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB10_9
# BB#8:                                 # %land.rhs
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	cmpq	$386, %rax              # imm = 0x182
	sete	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB10_9:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB10_10:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	default_to_grave_quoting_style, .Lfunc_end10-default_to_grave_quoting_style
	.cfi_endproc

	.globl	syms_of_doc
	.align	16, 0x90
	.type	syms_of_doc,@function
syms_of_doc:                            # @syms_of_doc
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
	jmp	.LBB11_1
.LBB11_1:                               # %do.body
	movabsq	$syms_of_doc.o_fwd, %rdi
	movabsq	$.L.str.98, %rsi
	movabsq	$globals, %rax
	addq	$584, %rax              # imm = 0x248
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+584
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_doc.o_fwd.99, %rdi
	movabsq	$.L.str.100, %rsi
	movabsq	$globals, %rax
	addq	$152, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+152
# BB#5:                                 # %do.body.4
	movabsq	$syms_of_doc.o_fwd.101, %rdi
	movabsq	$.L.str.102, %rsi
	movabsq	$globals, %rax
	addq	$2336, %rax             # imm = 0x920
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2336
# BB#7:                                 # %do.body.7
	movabsq	$syms_of_doc.b_fwd, %rdi
	movabsq	$.L.str.103, %rsi
	movabsq	$globals, %rax
	addq	$3430, %rax             # imm = 0xD66
	movq	%rax, %rdx
	callq	defvar_bool
# BB#8:                                 # %do.end.8
	movabsq	$Sdocumentation, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdocumentation_property, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssnarf_documentation, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssubstitute_command_keys, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end11:
	.size	syms_of_doc, .Lfunc_end11-syms_of_doc
	.cfi_endproc

	.type	read_bytecode_pointer,@object # @read_bytecode_pointer
	.local	read_bytecode_pointer
	.comm	read_bytecode_pointer,8,8
	.type	sibling_etc,@object     # @sibling_etc
	.section	.rodata,"a",@progbits
sibling_etc:
	.asciz	"../etc/"
	.size	sibling_etc, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Read error on documentation file"
	.size	.L.str, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cannot open doc string file \""
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\"\n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Position %ld out of range in doc string file \"%s\""
	.size	.L.str.3, 50

	.type	get_doc_string_buffer,@object # @get_doc_string_buffer
	.local	get_doc_string_buffer
	.comm	get_doc_string_buffer,8,8
	.type	get_doc_string_buffer_size,@object # @get_doc_string_buffer_size
	.local	get_doc_string_buffer_size
	.comm	get_doc_string_buffer_size,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Invalid data in documentation file -- %c followed by code %03o"
	.size	.L.str.4, 63

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Keyboard macro."
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Prefix command (definition is a keymap associating keystrokes with commands)."
	.size	.L.str.6, 78

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"custom-delayed-init-variables"
	.size	.L.str.7, 30

	.type	Fsnarf_documentation.buildobj,@object # @Fsnarf_documentation.buildobj
	.section	.rodata,"a",@progbits
	.align	16
Fsnarf_documentation.buildobj:
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.size	Fsnarf_documentation.buildobj, 664

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"vm-limit.o"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dispnew.o"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"frame.o"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"scroll.o"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"xdisp.o"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"menu.o"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xmenu.o"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"window.o"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"charset.o"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"coding.o"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"category.o"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ccl.o"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"character.o"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"chartab.o"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"bidi.o"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"cm.o"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"term.o"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"terminal.o"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"xfaces.o"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"xterm.o"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"xfns.o"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"xselect.o"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"xrdb.o"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"xsmfns.o"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"xsettings.o"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtkutil.o"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"emacs.o"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"keyboard.o"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"macros.o"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"keymap.o"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"sysdep.o"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"buffer.o"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"filelock.o"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"insdel.o"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"marker.o"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"minibuf.o"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"fileio.o"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"dired.o"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"cmds.o"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"casetab.o"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"casefiddle.o"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"indent.o"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"search.o"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"regex.o"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"undo.o"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"alloc.o"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"data.o"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"doc.o"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"editfns.o"
	.size	.L.str.56, 10

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"callint.o"
	.size	.L.str.57, 10

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"eval.o"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"floatfns.o"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"fns.o"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"font.o"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"print.o"
	.size	.L.str.62, 8

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"lread.o"
	.size	.L.str.63, 8

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"syntax.o"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"unexelf.o"
	.size	.L.str.65, 10

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"bytecode.o"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"process.o"
	.size	.L.str.67, 10

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gnutls.o"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"callproc.o"
	.size	.L.str.69, 11

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"region-cache.o"
	.size	.L.str.70, 15

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"sound.o"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"atimer.o"
	.size	.L.str.72, 9

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"doprnt.o"
	.size	.L.str.73, 9

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"intervals.o"
	.size	.L.str.74, 12

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"textprop.o"
	.size	.L.str.75, 11

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"composite.o"
	.size	.L.str.76, 12

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"xml.o"
	.size	.L.str.77, 6

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"inotify.o"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"profiler.o"
	.size	.L.str.79, 11

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"decompress.o"
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"xfont.o"
	.size	.L.str.81, 8

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"ftfont.o"
	.size	.L.str.82, 9

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"xftfont.o"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"ftxfont.o"
	.size	.L.str.84, 10

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"fontset.o"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"fringe.o"
	.size	.L.str.86, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"image.o"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"xgselect.o"
	.size	.L.str.88, 11

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"terminfo.o"
	.size	.L.str.89, 11

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"lastfile.o"
	.size	.L.str.90, 11

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Opening doc string file"
	.size	.L.str.91, 24

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"DOC file invalid at position %ld"
	.size	.L.str.92, 33

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"M-x "
	.size	.L.str.93, 5

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"\nUses keymap `"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"', which is not currently defined.\n"
	.size	.L.str.95, 36

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"\342\200\230"
	.size	.L.str.96, 4

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"\342\200\231"
	.size	.L.str.97, 4

	.type	syms_of_doc.o_fwd,@object # @syms_of_doc.o_fwd
	.local	syms_of_doc.o_fwd
	.comm	syms_of_doc.o_fwd,16,8
	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"internal-doc-file-name"
	.size	.L.str.98, 23

	.type	syms_of_doc.o_fwd.99,@object # @syms_of_doc.o_fwd.99
	.local	syms_of_doc.o_fwd.99
	.comm	syms_of_doc.o_fwd.99,16,8
	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"build-files"
	.size	.L.str.100, 12

	.type	syms_of_doc.o_fwd.101,@object # @syms_of_doc.o_fwd.101
	.local	syms_of_doc.o_fwd.101
	.comm	syms_of_doc.o_fwd.101,16,8
	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"text-quoting-style"
	.size	.L.str.102, 19

	.type	syms_of_doc.b_fwd,@object # @syms_of_doc.b_fwd
	.local	syms_of_doc.b_fwd
	.comm	syms_of_doc.b_fwd,16,8
	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"internal--text-quoting-flag"
	.size	.L.str.103, 28

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"No docstring slot for %s"
	.size	.L.str.104, 25

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"<anonymous>"
	.size	.L.str.105, 12

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"documentation"
	.size	.L.str.106, 14

	.type	Sdocumentation,@object  # @Sdocumentation
	.data
	.align	8
Sdocumentation:
	.quad	167772160               # 0xa000000
	.quad	Fdocumentation
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.106
	.quad	0
	.quad	0
	.size	Sdocumentation, 48

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"documentation-property"
	.size	.L.str.107, 23

	.type	Sdocumentation_property,@object # @Sdocumentation_property
	.data
	.align	8
Sdocumentation_property:
	.quad	167772160               # 0xa000000
	.quad	Fdocumentation_property
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.107
	.quad	0
	.quad	0
	.size	Sdocumentation_property, 48

	.type	.L.str.108,@object      # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"Snarf-documentation"
	.size	.L.str.108, 20

	.type	Ssnarf_documentation,@object # @Ssnarf_documentation
	.data
	.align	8
Ssnarf_documentation:
	.quad	167772160               # 0xa000000
	.quad	Fsnarf_documentation
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.108
	.quad	0
	.quad	0
	.size	Ssnarf_documentation, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"substitute-command-keys"
	.size	.L.str.109, 24

	.type	Ssubstitute_command_keys,@object # @Ssubstitute_command_keys
	.data
	.align	8
Ssubstitute_command_keys:
	.quad	167772160               # 0xa000000
	.quad	Fsubstitute_command_keys
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.109
	.quad	0
	.quad	0
	.size	Ssubstitute_command_keys, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
