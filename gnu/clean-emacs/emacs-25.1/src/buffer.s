	.text
	.file	"buffer.bc"
	.globl	nsberror
	.align	16, 0x90
	.type	nsberror,@function
nsberror:                               # @nsberror
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:                                # %if.then
	movq	-8(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.Lfunc_end0:
	.size	nsberror, .Lfunc_end0-nsberror
	.cfi_endproc

	.globl	Fbuffer_live_p
	.align	16, 0x90
	.type	Fbuffer_live_p,@function
Fbuffer_live_p:                         # @Fbuffer_live_p
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
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB1_1
	jmp	.LBB1_3
.LBB1_1:                                # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_3
# BB#2:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB1_4
.LBB1_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB1_4:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Fbuffer_live_p, .Lfunc_end1-Fbuffer_live_p
	.cfi_endproc

	.globl	Fbuffer_list
	.align	16, 0x90
	.type	Fbuffer_list,@function
Fbuffer_list:                           # @Fbuffer_list
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
	subq	$80, %rsp
	movl	$249, %eax
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	Vbuffer_alist, %rsi
	movq	%rax, %rdi
	callq	Fmapcar
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_8
.LBB2_1:                                # %if.then
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	120(%rax), %rdi
	callq	Fcopy_sequence
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	128(%rax), %rdi
	callq	Fcopy_sequence
	movq	%rax, %rdi
	callq	Fnreverse
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB2_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Fdelq
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_2
.LBB2_4:                                # %while.end
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB2_5:                                # %while.cond.11
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_7
# BB#6:                                 # %while.body.16
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Fdelq
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_5
.LBB2_7:                                # %while.end.23
	movl	$3, %eax
	movl	%eax, %edi
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	callq	Fnconc
	movq	%rax, -8(%rbp)
	jmp	.LBB2_9
.LBB2_8:                                # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fbuffer_list, .Lfunc_end2-Fbuffer_list
	.cfi_endproc

	.globl	Fget_buffer
	.align	16, 0x90
	.type	Fget_buffer,@function
Fget_buffer:                            # @Fget_buffer
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_2
.LBB3_1:                                # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	assoc_ignore_text_properties
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -8(%rbp)
.LBB3_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fget_buffer, .Lfunc_end3-Fget_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	assoc_ignore_text_properties,@function
assoc_ignore_text_properties:           # @assoc_ignore_text_properties
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcar
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB4_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB4_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	assoc_ignore_text_properties, .Lfunc_end4-assoc_ignore_text_properties
	.cfi_endproc

	.globl	Fget_file_buffer
	.align	16, 0x90
	.type	Fget_file_buffer,@function
Fget_file_buffer:                       # @Fget_file_buffer
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$485, %edi              # imm = 0x1E5
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB5_5
# BB#1:                                 # %if.then
	movl	$485, %edi              # imm = 0x1E5
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB5_2
	jmp	.LBB5_3
.LBB5_2:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB5_4:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB5_16
.LBB5_5:                                # %if.end
	movq	Vbuffer_alist, %rax
	movq	%rax, -24(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB5_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB5_6 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB5_8:                                # %land.end
                                        #   in Loop: Header=BB5_6 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_9
	jmp	.LBB5_15
.LBB5_9:                                # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	16(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB5_11
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.15
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB5_13
# BB#12:                                # %if.then.22
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_16
.LBB5_13:                               # %if.end.23
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_14
.LBB5_14:                               # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_6
.LBB5_15:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB5_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fget_file_buffer, .Lfunc_end5-Fget_file_buffer
	.cfi_endproc

	.globl	get_truename_buffer
	.align	16, 0x90
	.type	get_truename_buffer,@function
get_truename_buffer:                    # @get_truename_buffer
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
	movq	%rdi, -16(%rbp)
	movq	Vbuffer_alist, %rdi
	movq	%rdi, -24(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB6_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB6_3:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_10
.LBB6_4:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	392(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB6_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_9
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	392(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB6_8
# BB#7:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_11
.LBB6_8:                                # %if.end.11
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_1
.LBB6_10:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB6_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_truename_buffer, .Lfunc_end6-get_truename_buffer
	.cfi_endproc

	.globl	Fget_buffer_create
	.align	16, 0x90
	.type	Fget_buffer_create,@function
Fget_buffer_create:                     # @Fget_buffer_create
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_12
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB7_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB7_4:                                # %if.end.5
	callq	allocate_buffer
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$576, %rax              # imm = 0x240
	movq	-40(%rbp), %rcx
	movq	%rax, 720(%rcx)
	movq	-40(%rbp), %rax
	movq	$0, 784(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 792(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 796(%rax)
	movq	-40(%rbp), %rax
	movq	720(%rax), %rax
	movq	$20, 40(%rax)
	callq	block_input
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	alloc_buffer_text
	callq	unblock_input
	movq	-40(%rbp), %rax
	movq	720(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_6
# BB#5:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	buffer_memory_full
.LBB7_6:                                # %if.end.15
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	$1, 736(%rcx)
	movq	-40(%rbp), %rcx
	movq	$1, 752(%rcx)
	movq	-40(%rbp), %rcx
	movq	$1, 768(%rcx)
	movq	-40(%rbp), %rcx
	movq	$1, 744(%rcx)
	movq	-40(%rbp), %rcx
	movq	$1, 760(%rcx)
	movq	-40(%rbp), %rcx
	movq	$1, 776(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 8(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 24(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 16(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 32(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 48(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 56(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 72(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 64(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 80(%rcx)
	movq	-40(%rbp), %rdi
	callq	set_buffer_intervals
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 104(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$1, 112(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$0, 96(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$0, 88(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	-40(%rbp), %rsi
	movq	720(%rsi), %rsi
	addq	40(%rsi), %rcx
	movq	-40(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %rsi
	movb	$0, -1(%rcx,%rsi)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	-40(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	24(%rsi), %rsi
	movb	$0, -1(%rcx,%rsi)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movb	136(%rcx), %dl
	andb	$-2, %dl
	movb	%dl, 136(%rcx)
	movq	-40(%rbp), %rcx
	movq	720(%rcx), %rcx
	movb	136(%rcx), %dl
	andb	$-3, %dl
	movb	%dl, 136(%rcx)
	movq	-40(%rbp), %rcx
	movq	$0, 912(%rcx)
	movq	-40(%rbp), %rcx
	movq	$0, 920(%rcx)
	movq	-40(%rbp), %rcx
	movq	$0, 928(%rcx)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_width_table
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movb	936(%rax), %dl
	andb	$-2, %dl
	orb	$1, %dl
	movb	%dl, 936(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_pt_marker
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_begv_marker
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_zv_marker
	movq	-16(%rbp), %rdi
	callq	Fcopy_sequence
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	set_string_intervals
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	bset_name
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SREF
	movzbl	%al, %r8d
	cmpl	$32, %r8d
	je	.LBB7_8
# BB#7:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_8:                                # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB7_9:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	movq	-40(%rbp), %rdi
	callq	reset_buffer
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	reset_buffer_local_variables
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	Fmake_marker
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_mark
	movl	$5, %esi
	movq	-40(%rbp), %rax
	movq	720(%rax), %rax
	movq	$0, 128(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	Vbuffer_alist, %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	xorl	%edi, %edi
	movq	%rax, Vbuffer_alist
	movq	Vrun_hooks, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_11
# BB#10:                                # %if.then.68
	movl	$223, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB7_11:                               # %if.end.71
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fget_buffer_create, .Lfunc_end7-Fget_buffer_create
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_buffer_text,@function
alloc_buffer_text:                      # @alloc_buffer_text
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	callq	unblock_input
	movq	-16(%rbp), %rdi
	callq	memory_full
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, (%rcx)
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	alloc_buffer_text, .Lfunc_end8-alloc_buffer_text
	.cfi_endproc

	.align	16, 0x90
	.type	bset_pt_marker,@function
bset_pt_marker:                         # @bset_pt_marker
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 360(%rdi)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	bset_pt_marker, .Lfunc_end9-bset_pt_marker
	.cfi_endproc

	.align	16, 0x90
	.type	bset_begv_marker,@function
bset_begv_marker:                       # @bset_begv_marker
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 368(%rdi)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	bset_begv_marker, .Lfunc_end10-bset_begv_marker
	.cfi_endproc

	.align	16, 0x90
	.type	bset_zv_marker,@function
bset_zv_marker:                         # @bset_zv_marker
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 376(%rdi)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	bset_zv_marker, .Lfunc_end11-bset_zv_marker
	.cfi_endproc

	.align	16, 0x90
	.type	bset_name,@function
bset_name:                              # @bset_name
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
	movq	%rsi, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	bset_name, .Lfunc_end12-bset_name
	.cfi_endproc

	.globl	reset_buffer
	.align	16, 0x90
	.type	reset_buffer,@function
reset_buffer:                           # @reset_buffer
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_filename
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_file_truename
	movq	-8(%rbp), %rdi
	cmpq	$0, current_buffer
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB13_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB13_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_directory
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	$-2, %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	make_timespec
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, 856(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, 864(%rdx)
	movq	-8(%rbp), %rax
	movq	$-1, 872(%rax)
	callq	make_natnum
	xorl	%edi, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	$1, 904(%rax)
	movq	-8(%rbp), %rax
	movb	936(%rax), %r8b
	andb	$-3, %r8b
	movb	%r8b, 936(%rax)
	movq	-8(%rbp), %rax
	movb	936(%rax), %r8b
	andb	$-2, %r8b
	orb	$1, %r8b
	movb	%r8b, 936(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_backed_up
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	$0, 880(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 896(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_auto_save_file_name
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_read_only
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	callq	set_buffer_overlays_before
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	callq	set_buffer_overlays_after
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	$1, 960(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_mark_active
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_point_before_scroll
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_file_format
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_auto_save_file_format
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_last_selected_window
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	callq	bset_display_count
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_display_time
	movq	-8(%rbp), %rdi
	movq	buffer_defaults+312, %rsi
	callq	bset_enable_multibyte_characters
	movq	-8(%rbp), %rdi
	movq	buffer_defaults+552, %rsi
	callq	bset_cursor_type
	movq	-8(%rbp), %rdi
	movq	buffer_defaults+560, %rsi
	callq	bset_extra_line_spacing
	movq	-8(%rbp), %rax
	movq	$0, 888(%rax)
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	reset_buffer, .Lfunc_end13-reset_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	reset_buffer_local_variables,@function
reset_buffer_local_variables:           # @reset_buffer_local_variables
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
	subq	$240, %rsp
	movb	%sil, %al
	movl	$479, %esi              # imm = 0x1DF
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, %edi
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_major_mode
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_keymap
	movq	-8(%rbp), %rdi
	movq	QSFundamental, %rsi
	callq	bset_mode_name
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_minor_modes
	movq	Vascii_downcase_table, %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_3
.LBB14_1:                               # %land.lhs.true
	movq	Vascii_downcase_table, %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB14_2
	jmp	.LBB14_3
.LBB14_2:                               # %land.lhs.true.9
	movq	Vascii_downcase_table, %rdi
	callq	XCHAR_TABLE
	movq	568(%rax), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB14_4
.LBB14_3:                               # %if.then
	movq	Vascii_downcase_table, %rdi
	callq	Fset_standard_case_table
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB14_4:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	Vascii_downcase_table, %rsi
	callq	bset_downcase_table
	movq	-8(%rbp), %rdi
	movq	Vascii_downcase_table, %rsi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	bset_upcase_table
	movq	-8(%rbp), %rdi
	movq	Vascii_downcase_table, %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rsi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	bset_case_canon_table
	movq	-8(%rbp), %rdi
	movq	Vascii_downcase_table, %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	movq	568(%rax), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	bset_case_eqv_table
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_invisibility_spec
	testb	$1, -9(%rbp)
	je	.LBB14_6
# BB#5:                                 # %if.then.25
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_local_var_alist
	jmp	.LBB14_30
.LBB14_6:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB14_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_13 Depth 2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_29
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	$747, %edi              # imm = 0x2EB
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB14_23
# BB#9:                                 # %if.then.38
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	$748, %edi              # imm = 0x2EC
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_22
# BB#10:                                # %if.then.42
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB14_12
# BB#11:                                # %if.then.52
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB14_21
.LBB14_12:                              # %if.else.53
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB14_13:                              # %for.cond.55
                                        #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_20
# BB#14:                                # %for.body.60
                                        #   in Loop: Header=BB14_13 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_17
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB14_13 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_17
# BB#16:                                # %lor.lhs.false.71
                                        #   in Loop: Header=BB14_13 Depth=2
	movl	$748, %edi              # imm = 0x2EC
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB14_18
.LBB14_17:                              # %if.then.77
                                        #   in Loop: Header=BB14_13 Depth=2
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	movq	%rax, -64(%rbp)
.LBB14_18:                              # %if.end.79
                                        #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_19
.LBB14_19:                              # %for.inc
                                        #   in Loop: Header=BB14_13 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB14_13
.LBB14_20:                              # %for.end
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_21
.LBB14_21:                              # %if.end.83
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fnreverse
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB14_22:                              # %if.end.87
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_27
.LBB14_23:                              # %if.else.88
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_25
# BB#24:                                # %if.then.92
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	bset_local_var_alist
	jmp	.LBB14_26
.LBB14_25:                              # %if.else.96
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
.LBB14_26:                              # %if.end.100
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_27
.LBB14_27:                              # %if.end.101
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_28
.LBB14_28:                              # %for.inc.102
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB14_7
.LBB14_29:                              # %for.end.106
	jmp	.LBB14_30
.LBB14_30:                              # %if.end.107
	movl	$0, -20(%rbp)
.LBB14_31:                              # %for.cond.108
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jge	.LBB14_42
# BB#32:                                # %for.body.111
                                        #   in Loop: Header=BB14_31 Depth=1
	testb	$1, -9(%rbp)
	jne	.LBB14_34
# BB#33:                                # %lor.lhs.false.114
                                        #   in Loop: Header=BB14_31 Depth=1
	movslq	-20(%rbp), %rax
	movsbl	buffer_permanent_local_flags(,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB14_40
.LBB14_34:                              # %if.then.119
                                        #   in Loop: Header=BB14_31 Depth=1
	jmp	.LBB14_35
.LBB14_35:                              # %do.body
                                        #   in Loop: Header=BB14_31 Depth=1
	cmpl	$0, -20(%rbp)
	jl	.LBB14_37
# BB#36:                                # %lor.lhs.false.122
                                        #   in Loop: Header=BB14_31 Depth=1
	movl	-20(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB14_38
.LBB14_37:                              # %if.then.125
	callq	emacs_abort
.LBB14_38:                              # %if.end.126
                                        #   in Loop: Header=BB14_31 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, 800(%rcx,%rax)
# BB#39:                                # %do.end
                                        #   in Loop: Header=BB14_31 Depth=1
	jmp	.LBB14_40
.LBB14_40:                              # %if.end.129
                                        #   in Loop: Header=BB14_31 Depth=1
	jmp	.LBB14_41
.LBB14_41:                              # %for.inc.130
                                        #   in Loop: Header=BB14_31 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB14_31
.LBB14_42:                              # %for.end.131
	movl	$8, -16(%rbp)
.LBB14_43:                              # %for.cond.132
                                        # =>This Inner Loop Header: Depth=1
	movslq	-16(%rbp), %rax
	cmpq	$568, %rax              # imm = 0x238
	ja	.LBB14_50
# BB#44:                                # %for.body.136
                                        #   in Loop: Header=BB14_43 Depth=1
	movslq	-16(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.LBB14_48
# BB#45:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB14_43 Depth=1
	testb	$1, -9(%rbp)
	jne	.LBB14_47
# BB#46:                                # %lor.lhs.false.144
                                        #   in Loop: Header=BB14_43 Depth=1
	movslq	-76(%rbp), %rax
	movsbl	buffer_permanent_local_flags(,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB14_48
.LBB14_47:                              # %if.then.150
                                        #   in Loop: Header=BB14_43 Depth=1
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-16(%rbp), %eax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movl	%esi, -228(%rbp)        # 4-byte Spill
	callq	per_buffer_default
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	set_per_buffer_value
.LBB14_48:                              # %if.end.152
                                        #   in Loop: Header=BB14_43 Depth=1
	jmp	.LBB14_49
.LBB14_49:                              # %for.inc.153
                                        #   in Loop: Header=BB14_43 Depth=1
	movl	-16(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB14_43
.LBB14_50:                              # %for.end.154
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	reset_buffer_local_variables, .Lfunc_end14-reset_buffer_local_variables
	.cfi_endproc

	.align	16, 0x90
	.type	bset_mark,@function
bset_mark:                              # @bset_mark
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	bset_mark, .Lfunc_end15-bset_mark
	.cfi_endproc

	.globl	Fmake_indirect_buffer
	.align	16, 0x90
	.type	Fmake_indirect_buffer,@function
Fmake_indirect_buffer:                  # @Fmake_indirect_buffer
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.3, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_4
# BB#3:                                 # %if.then.6
	movq	-40(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB16_4:                               # %if.end.8
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_6
# BB#5:                                 # %if.then.12
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB16_6:                               # %if.end.13
	movq	-16(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB16_8
# BB#7:                                 # %if.then.16
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB16_8:                               # %if.end.17
	callq	allocate_buffer
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	cmpq	$0, 784(%rax)
	je	.LBB16_10
# BB#9:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	784(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB16_11
.LBB16_10:                              # %cond.false
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB16_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	-48(%rbp), %rcx
	movq	%rax, 784(%rcx)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	720(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 720(%rcx)
	movq	-48(%rbp), %rax
	movl	$-1, 792(%rax)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movl	792(%rax), %edx
	addl	$1, %edx
	movl	%edx, 792(%rax)
	movq	-48(%rbp), %rax
	movl	$-1, 796(%rax)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	736(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 736(%rcx)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	752(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 752(%rcx)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	768(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 768(%rcx)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	744(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 744(%rcx)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	760(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 760(%rcx)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	776(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 776(%rcx)
	movq	-48(%rbp), %rax
	movq	$0, 912(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 920(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 928(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_width_table
	movq	-16(%rbp), %rdi
	callq	Fcopy_sequence
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	set_string_intervals
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	bset_name
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	968(%rax), %rsi
	callq	bset_undo_list
	movq	-48(%rbp), %rdi
	callq	reset_buffer
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	reset_buffer_local_variables
	movl	$5, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	Vbuffer_alist, %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, Vbuffer_alist
	movq	-48(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	Fmake_marker
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_mark
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	312(%rax), %rsi
	callq	bset_enable_multibyte_characters
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	360(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_13
# BB#12:                                # %if.then.53
	movq	-48(%rbp), %rax
	movq	784(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	784(%rcx), %rcx
	movq	736(%rcx), %rsi
	movq	-48(%rbp), %rcx
	movq	784(%rcx), %rcx
	movq	744(%rcx), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_marker
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_pt_marker
	movq	-48(%rbp), %rax
	movq	784(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	784(%rcx), %rcx
	movq	752(%rcx), %rsi
	movq	-48(%rbp), %rcx
	movq	784(%rcx), %rcx
	movq	760(%rcx), %rdx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_marker
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_begv_marker
	movq	-48(%rbp), %rax
	movq	784(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	784(%rcx), %rcx
	movq	768(%rcx), %rsi
	movq	-48(%rbp), %rcx
	movq	784(%rcx), %rcx
	movq	776(%rcx), %rdx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_marker
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_zv_marker
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	376(%rax), %rdi
	callq	XMARKER
	movl	(%rax), %r8d
	andl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	orl	$-2147483648, %r8d      # imm = 0xFFFFFFFF80000000
	movl	%r8d, (%rax)
.LBB16_13:                              # %if.end.77
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_15
# BB#14:                                # %if.then.80
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	736(%rcx), %rsi
	movq	-48(%rbp), %rcx
	movq	744(%rcx), %rdx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_marker
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_pt_marker
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	752(%rcx), %rsi
	movq	-48(%rbp), %rcx
	movq	760(%rcx), %rdx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_marker
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_begv_marker
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	768(%rcx), %rsi
	movq	-48(%rbp), %rcx
	movq	776(%rcx), %rdx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_marker
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_zv_marker
	movq	-48(%rbp), %rax
	movq	376(%rax), %rdi
	callq	XMARKER
	movl	(%rax), %r8d
	andl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	orl	$-2147483648, %r8d      # imm = 0xFFFFFFFF80000000
	movl	%r8d, (%rax)
	jmp	.LBB16_16
.LBB16_15:                              # %if.else
	movq	current_buffer, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	784(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	clone_per_buffer_values
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_filename
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_file_truename
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	callq	bset_display_count
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_backed_up
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_auto_save_file_name
	movq	-48(%rbp), %rdi
	callq	set_buffer_internal_1
	movabsq	$.L.str.6, %rdi
	callq	intern
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movabsq	$.L.str.7, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	intern
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movabsq	$.L.str.8, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	intern
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	-56(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	set_buffer_internal_1
.LBB16_16:                              # %if.end.109
	xorl	%edi, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_18
# BB#17:                                # %if.then.112
	movl	$223, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB16_18:                              # %if.end.115
	movq	-32(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fmake_indirect_buffer, .Lfunc_end16-Fmake_indirect_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	clone_per_buffer_values,@function
clone_per_buffer_values:                # @clone_per_buffer_values
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
	movl	$8, -20(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$568, %rax              # imm = 0x238
	ja	.LBB17_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$8, %rax
	jne	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_9
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	per_buffer_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB17_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB17_8
# BB#6:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB17_8
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMARKER
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	callq	build_marker
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$31, %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rdi
	movb	%r8b, -41(%rbp)         # 1-byte Spill
	callq	XMARKER
	movb	-41(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	(%rax), %r9d
	shll	$31, %ecx
	andl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	orl	%ecx, %r9d
	movl	%r9d, (%rax)
.LBB17_8:                               # %if.end.20
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	set_per_buffer_value
.LBB17_9:                               # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_1
.LBB17_10:                              # %for.end
	movl	$50, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	addq	$800, %rcx              # imm = 0x320
	movq	-8(%rbp), %rsi
	addq	$800, %rsi              # imm = 0x320
	movq	%rcx, %rdi
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	944(%rdx), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	copy_overlays
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_overlays_before
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	952(%rcx), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	copy_overlays
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_overlays_after
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	buffer_lisp_local_variables
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_local_var_alist
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	clone_per_buffer_values, .Lfunc_end17-clone_per_buffer_values
	.cfi_endproc

	.align	16, 0x90
	.type	bset_file_truename,@function
bset_file_truename:                     # @bset_file_truename
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 392(%rdi)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	bset_file_truename, .Lfunc_end18-bset_file_truename
	.cfi_endproc

	.align	16, 0x90
	.type	bset_backed_up,@function
bset_backed_up:                         # @bset_backed_up
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	bset_backed_up, .Lfunc_end19-bset_backed_up
	.cfi_endproc

	.align	16, 0x90
	.type	bset_auto_save_file_name,@function
bset_auto_save_file_name:               # @bset_auto_save_file_name
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	bset_auto_save_file_name, .Lfunc_end20-bset_auto_save_file_name
	.cfi_endproc

	.globl	set_buffer_internal_1
	.align	16, 0x90
	.type	set_buffer_internal_1,@function
set_buffer_internal_1:                  # @set_buffer_internal_1
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	cmpq	-8(%rbp), %rdi
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_27
.LBB21_2:                               # %if.end
	jmp	.LBB21_3
.LBB21_3:                               # %do.body
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_8
# BB#4:                                 # %if.then.2
	movq	-8(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB21_6
# BB#5:                                 # %if.then.3
	jmp	.LBB21_7
.LBB21_6:                               # %if.else
	jmp	.LBB21_7
.LBB21_7:                               # %if.end.4
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.5
	jmp	.LBB21_9
.LBB21_9:                               # %do.end
	movq	current_buffer, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, current_buffer
	movq	$-1, last_known_column_point
	cmpq	$0, -16(%rbp)
	je	.LBB21_13
# BB#10:                                # %if.then.7
	movq	-16(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB21_12
# BB#11:                                # %if.then.10
	movq	-16(%rbp), %rax
	movq	784(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	968(%rax), %rsi
	callq	bset_undo_list
.LBB21_12:                              # %if.end.12
	movq	-16(%rbp), %rdi
	callq	record_buffer_markers
.LBB21_13:                              # %if.end.13
	movq	-8(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB21_15
# BB#14:                                # %if.then.16
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	784(%rax), %rax
	movq	968(%rax), %rsi
	callq	bset_undo_list
.LBB21_15:                              # %if.end.19
	movq	-8(%rbp), %rdi
	callq	fetch_buffer_markers
.LBB21_16:                              # %do.body.20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_17 Depth 2
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB21_17:                              # %for.cond
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB21_23
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB21_17 Depth=2
	movabsq	$lispsym, %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movw	(%rax), %dx
	shrw	$1, %dx
	andw	$7, %dx
	movzwl	%dx, %esi
	cmpl	$2, %esi
	jne	.LBB21_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_17 Depth=2
	movq	-40(%rbp), %rdi
	callq	SYMBOL_BLV
	cmpq	$0, 8(%rax)
	je	.LBB21_21
# BB#20:                                # %if.then.30
                                        #   in Loop: Header=BB21_17 Depth=2
	movq	-32(%rbp), %rdi
	callq	Fsymbol_value
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB21_21:                              # %if.end.32
                                        #   in Loop: Header=BB21_17 Depth=2
	jmp	.LBB21_22
.LBB21_22:                              # %for.inc
                                        #   in Loop: Header=BB21_17 Depth=2
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB21_17
.LBB21_23:                              # %for.end
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_24
.LBB21_24:                              # %do.cond
                                        #   in Loop: Header=BB21_16 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB21_26
# BB#25:                                # %land.rhs
                                        #   in Loop: Header=BB21_16 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB21_26:                              # %land.end
                                        #   in Loop: Header=BB21_16 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_16
.LBB21_27:                              # %do.end.37
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	set_buffer_internal_1, .Lfunc_end21-set_buffer_internal_1
	.cfi_endproc

	.globl	delete_all_overlays
	.align	16, 0x90
	.type	delete_all_overlays,@function
delete_all_overlays:                    # @delete_all_overlays
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	944(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB22_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	drop_overlay
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	$0, 8(%rsi)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB22_1
.LBB22_4:                               # %for.end
	movq	-8(%rbp), %rax
	movq	952(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB22_5:                               # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB22_8
# BB#6:                                 # %for.body.5
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	drop_overlay
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	$0, 8(%rsi)
# BB#7:                                 # %for.inc.8
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB22_5
.LBB22_8:                               # %for.end.9
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	set_buffer_overlays_before
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	set_buffer_overlays_after
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	delete_all_overlays, .Lfunc_end22-delete_all_overlays
	.cfi_endproc

	.align	16, 0x90
	.type	drop_overlay,@function
drop_overlay:                           # @drop_overlay
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
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	marker_position
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	marker_position
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	modify_overlay
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	drop_overlay, .Lfunc_end23-drop_overlay
	.cfi_endproc

	.align	16, 0x90
	.type	set_buffer_overlays_before,@function
set_buffer_overlays_before:             # @set_buffer_overlays_before
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 944(%rdi)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	set_buffer_overlays_before, .Lfunc_end24-set_buffer_overlays_before
	.cfi_endproc

	.align	16, 0x90
	.type	set_buffer_overlays_after,@function
set_buffer_overlays_after:              # @set_buffer_overlays_after
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 952(%rdi)
	popq	%rbp
	retq
.Lfunc_end25:
	.size	set_buffer_overlays_after, .Lfunc_end25-set_buffer_overlays_after
	.cfi_endproc

	.align	16, 0x90
	.type	bset_file_format,@function
bset_file_format:                       # @bset_file_format
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 328(%rdi)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	bset_file_format, .Lfunc_end26-bset_file_format
	.cfi_endproc

	.align	16, 0x90
	.type	bset_auto_save_file_format,@function
bset_auto_save_file_format:             # @bset_auto_save_file_format
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 336(%rdi)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	bset_auto_save_file_format, .Lfunc_end27-bset_auto_save_file_format
	.cfi_endproc

	.align	16, 0x90
	.type	bset_cursor_type,@function
bset_cursor_type:                       # @bset_cursor_type
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 552(%rdi)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	bset_cursor_type, .Lfunc_end28-bset_cursor_type
	.cfi_endproc

	.align	16, 0x90
	.type	bset_extra_line_spacing,@function
bset_extra_line_spacing:                # @bset_extra_line_spacing
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 560(%rdi)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	bset_extra_line_spacing, .Lfunc_end29-bset_extra_line_spacing
	.cfi_endproc

	.globl	Fgenerate_new_buffer_name
	.align	16, 0x90
	.type	Fgenerate_new_buffer_name,@function
Fgenerate_new_buffer_name:              # @Fgenerate_new_buffer_name
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_15
.LBB30_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_15
.LBB30_4:                               # %if.end.6
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.9, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB30_8
# BB#5:                                 # %if.then.9
	movl	$3999998, %eax          # imm = 0x3D08FE
	movl	%eax, %edi
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	Frandom
	movabsq	$.L.str.10, %rsi
	sarq	$2, %rax
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	make_formatted_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_7
# BB#6:                                 # %if.then.16
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_15
.LBB30_7:                               # %if.end.17
	jmp	.LBB30_9
.LBB30_8:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB30_9:                               # %if.end.18
	movq	$1, -56(%rbp)
.LBB30_10:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.11, %rsi
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movq	%rcx, %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	make_formatted_string
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_12
# BB#11:                                # %if.then.25
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_15
.LBB30_12:                              # %if.end.26
                                        #   in Loop: Header=BB30_10 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_14
# BB#13:                                # %if.then.30
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_15
.LBB30_14:                              # %if.end.31
                                        #   in Loop: Header=BB30_10 Depth=1
	jmp	.LBB30_10
.LBB30_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fgenerate_new_buffer_name, .Lfunc_end30-Fgenerate_new_buffer_name
	.cfi_endproc

	.globl	Fbuffer_name
	.align	16, 0x90
	.type	Fbuffer_name,@function
Fbuffer_name:                           # @Fbuffer_name
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_buffer
	movq	8(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fbuffer_name, .Lfunc_end31-Fbuffer_name
	.cfi_endproc

	.globl	Fbuffer_file_name
	.align	16, 0x90
	.type	Fbuffer_file_name,@function
Fbuffer_file_name:                      # @Fbuffer_file_name
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_buffer
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fbuffer_file_name, .Lfunc_end32-Fbuffer_file_name
	.cfi_endproc

	.globl	Fbuffer_base_buffer
	.align	16, 0x90
	.type	Fbuffer_base_buffer,@function
Fbuffer_base_buffer:                    # @Fbuffer_base_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_buffer
	movq	784(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB33_2
# BB#1:                                 # %cond.true
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB33_3
.LBB33_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB33_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fbuffer_base_buffer, .Lfunc_end33-Fbuffer_base_buffer
	.cfi_endproc

	.globl	Fbuffer_local_value
	.align	16, 0x90
	.type	Fbuffer_local_value,@function
Fbuffer_local_value:                    # @Fbuffer_local_value
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	buffer_local_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movl	$1007, %edi             # imm = 0x3EF
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB34_2:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fbuffer_local_value, .Lfunc_end34-Fbuffer_local_value
	.cfi_endproc

	.globl	buffer_local_value
	.align	16, 0x90
	.type	buffer_local_value,@function
buffer_local_value:                     # @buffer_local_value
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB35_2
# BB#1:                                 # %cond.true
	jmp	.LBB35_3
.LBB35_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB35_3:                               # %cond.end
	movq	-16(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movabsq	$lispsym, %rdi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	subq	$0, %rax
	addq	%rax, %rdi
	movq	%rdi, -40(%rbp)
.LBB35_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	ja	.LBB35_17
# BB#19:                                # %start
                                        #   in Loop: Header=BB35_4 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI35_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB35_5:                               # %sw.bb
                                        #   in Loop: Header=BB35_4 Depth=1
	movq	-40(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -40(%rbp)
	jmp	.LBB35_4
.LBB35_6:                               # %sw.bb.4
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB35_18
.LBB35_7:                               # %sw.bb.5
	movq	-40(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	callq	Fassoc
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB35_11
# BB#8:                                 # %if.then
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB35_10
# BB#9:                                 # %if.then.12
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	do_symval_forwarding
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB35_10:                              # %if.end
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB35_12
.LBB35_11:                              # %if.else
	movq	-8(%rbp), %rdi
	callq	Fdefault_value
	movq	%rax, -32(%rbp)
.LBB35_12:                              # %if.end.17
	jmp	.LBB35_18
.LBB35_13:                              # %sw.bb.18
	movq	-40(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB35_14
	jmp	.LBB35_15
.LBB35_14:                              # %if.then.22
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XBUFFER_OBJFWD
	movl	4(%rax), %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	per_buffer_value
	movq	%rax, -32(%rbp)
	jmp	.LBB35_16
.LBB35_15:                              # %if.else.25
	movq	-8(%rbp), %rdi
	callq	Fdefault_value
	movq	%rax, -32(%rbp)
.LBB35_16:                              # %if.end.27
	jmp	.LBB35_18
.LBB35_17:                              # %sw.default
	callq	emacs_abort
.LBB35_18:                              # %sw.epilog
	movq	-32(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	buffer_local_value, .Lfunc_end35-buffer_local_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI35_0:
	.quad	.LBB35_5
	.quad	.LBB35_7
	.quad	.LBB35_13
	.quad	.LBB35_6

	.text
	.globl	Fbuffer_local_variables
	.align	16, 0x90
	.type	Fbuffer_local_variables,@function
Fbuffer_local_variables:                # @Fbuffer_local_variables
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
	movq	-8(%rbp), %rdi
	callq	decode_buffer
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	buffer_lisp_local_variables
	movq	%rax, -24(%rbp)
	movl	$8, -28(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	cmpq	$568, %rax              # imm = 0x238
	ja	.LBB36_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$-1, -32(%rbp)
	je	.LBB36_7
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpl	$0, -32(%rbp)
	jl	.LBB36_5
# BB#4:                                 # %lor.lhs.false.8
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB36_6
.LBB36_5:                               # %cond.true
	callq	emacs_abort
.LBB36_6:                               # %cond.false
                                        #   in Loop: Header=BB36_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	800(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB36_12
.LBB36_7:                               # %land.lhs.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	buffer_local_symbols(,%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB36_12
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB36_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	buffer_local_symbols(,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	per_buffer_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_10
# BB#9:                                 # %cond.true.25
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB36_11
.LBB36_10:                              # %cond.false.26
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB36_11:                              # %cond.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB36_12:                              # %if.end
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_13
.LBB36_13:                              # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB36_1
.LBB36_14:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fbuffer_local_variables, .Lfunc_end36-Fbuffer_local_variables
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_lisp_local_variables,@function
buffer_lisp_local_variables:            # @buffer_lisp_local_variables
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
	movb	%sil, %al
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	%esi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB37_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	find_symbol_value
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpq	current_buffer, %rax
	je	.LBB37_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB37_4:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	testb	$1, -9(%rbp)
	jne	.LBB37_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB37_8
.LBB37_7:                               # %cond.false
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB37_8:                               # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB37_1
.LBB37_10:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	buffer_lisp_local_variables, .Lfunc_end37-buffer_lisp_local_variables
	.cfi_endproc

	.globl	Fbuffer_modified_p
	.align	16, 0x90
	.type	Fbuffer_modified_p,@function
Fbuffer_modified_p:                     # @Fbuffer_modified_p
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
	callq	decode_buffer
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	720(%rdi), %rdi
	cmpq	48(%rdi), %rax
	jge	.LBB38_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB38_3
.LBB38_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB38_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fbuffer_modified_p, .Lfunc_end38-Fbuffer_modified_p
	.cfi_endproc

	.globl	Fforce_mode_line_update
	.align	16, 0x90
	.type	Fforce_mode_line_update,@function
Fforce_mode_line_update:                # @Fforce_mode_line_update
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_2
# BB#1:                                 # %if.then
	movl	$10, update_mode_lines
	movq	current_buffer, %rax
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
	jmp	.LBB39_5
.LBB39_2:                               # %if.else
	movq	current_buffer, %rdi
	callq	buffer_window_count
	cmpl	$0, %eax
	je	.LBB39_4
# BB#3:                                 # %if.then.2
	movq	current_buffer, %rdi
	callq	bset_update_mode_line
	movq	current_buffer, %rdi
	movb	936(%rdi), %al
	andb	$-2, %al
	orb	$1, %al
	movb	%al, 936(%rdi)
.LBB39_4:                               # %if.end
	jmp	.LBB39_5
.LBB39_5:                               # %if.end.7
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fforce_mode_line_update, .Lfunc_end39-Fforce_mode_line_update
	.cfi_endproc

	.globl	Fset_buffer_modified_p
	.align	16, 0x90
	.type	Fset_buffer_modified_p,@function
Fset_buffer_modified_p:                 # @Fset_buffer_modified_p
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Frestore_buffer_modified_p
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fforce_mode_line_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Fset_buffer_modified_p, .Lfunc_end40-Fset_buffer_modified_p
	.cfi_endproc

	.globl	Frestore_buffer_modified_p
	.align	16, 0x90
	.type	Frestore_buffer_modified_p,@function
Frestore_buffer_modified_p:             # @Frestore_buffer_modified_p
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	cmpq	$0, 784(%rdi)
	je	.LBB41_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	784(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB41_3
.LBB41_2:                               # %cond.false
	movq	current_buffer, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB41_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_13
# BB#4:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_13
# BB#5:                                 # %if.then
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	setl	%dl
	andb	$1, %dl
	movb	%dl, -25(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB41_8
# BB#6:                                 # %land.lhs.true.7
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_8
# BB#7:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	callq	lock_file
	jmp	.LBB41_12
.LBB41_8:                               # %if.else
	testb	$1, -25(%rbp)
	je	.LBB41_11
# BB#9:                                 # %land.lhs.true.12
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_11
# BB#10:                                # %if.then.15
	movq	-16(%rbp), %rdi
	callq	unlock_file
.LBB41_11:                              # %if.end
	jmp	.LBB41_12
.LBB41_12:                              # %if.end.16
	jmp	.LBB41_13
.LBB41_13:                              # %if.end.17
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_15
# BB#14:                                # %cond.true.20
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB41_19
.LBB41_15:                              # %cond.false.23
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB41_17
# BB#16:                                # %cond.true.29
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB41_18
.LBB41_17:                              # %cond.false.32
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 48(%rax)
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB41_18:                              # %cond.end.35
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB41_19:                              # %cond.end.37
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Frestore_buffer_modified_p, .Lfunc_end41-Frestore_buffer_modified_p
	.cfi_endproc

	.globl	Fbuffer_modified_tick
	.align	16, 0x90
	.type	Fbuffer_modified_tick,@function
Fbuffer_modified_tick:                  # @Fbuffer_modified_tick
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_buffer
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Fbuffer_modified_tick, .Lfunc_end42-Fbuffer_modified_tick
	.cfi_endproc

	.globl	Fbuffer_chars_modified_tick
	.align	16, 0x90
	.type	Fbuffer_chars_modified_tick,@function
Fbuffer_chars_modified_tick:            # @Fbuffer_chars_modified_tick
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_buffer
	movq	720(%rax), %rax
	movq	56(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	Fbuffer_chars_modified_tick, .Lfunc_end43-Fbuffer_chars_modified_tick
	.cfi_endproc

	.globl	Frename_buffer
	.align	16, 0x90
	.type	Frename_buffer,@function
Frename_buffer:                         # @Frename_buffer
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB44_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	error
.LBB44_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB44_10
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB44_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB44_6
# BB#5:                                 # %if.then.9
	movq	current_buffer, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_16
.LBB44_6:                               # %if.end.10
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB44_8
# BB#7:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	8(%rax), %rsi
	callq	Fgenerate_new_buffer_name
	movq	%rax, -16(%rbp)
	jmp	.LBB44_9
.LBB44_8:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.3, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB44_9:                               # %if.end.17
	jmp	.LBB44_10
.LBB44_10:                              # %if.end.18
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	bset_name
	movl	$5, %esi
	movl	$11, update_mode_lines
	movq	current_buffer, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	Frassq
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fsetcar
	xorl	%edi, %edi
	movq	current_buffer, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB44_13
# BB#11:                                # %land.lhs.true.24
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB44_13
# BB#12:                                # %if.then.27
	movabsq	$.L.str.13, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB44_13:                              # %if.end.30
	xorl	%edi, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB44_15
# BB#14:                                # %if.then.33
	movl	$223, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB44_15:                              # %if.end.36
	movq	current_buffer, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB44_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Frename_buffer, .Lfunc_end44-Frename_buffer
	.cfi_endproc

	.globl	Fother_buffer
	.align	16, 0x90
	.type	Fother_buffer,@function
Fother_buffer:                          # @Fother_buffer
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	decode_live_frame
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
.LBB45_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	candidate_buffer
	testb	$1, %al
	jne	.LBB45_3
	jmp	.LBB45_12
.LBB45_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_12
.LBB45_5:                               # %if.then
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_7
# BB#6:                                 # %lor.lhs.false.15
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1005, %edi             # imm = 0x3ED
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_buffer_window
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB45_8
.LBB45_7:                               # %if.then.21
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_35
.LBB45_8:                               # %if.else
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_10
# BB#9:                                 # %if.then.25
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB45_10:                              # %if.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_11
.LBB45_11:                              # %if.end.26
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_12
.LBB45_12:                              # %if.end.27
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_13
.LBB45_13:                              # %for.inc
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB45_1
.LBB45_14:                              # %for.end
	movq	Vbuffer_alist, %rax
	movq	%rax, -48(%rbp)
.LBB45_15:                              # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -161(%rbp)         # 1-byte Spill
	jne	.LBB45_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB45_15 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movb	%al, -161(%rbp)         # 1-byte Spill
.LBB45_17:                              # %land.end
                                        #   in Loop: Header=BB45_15 Depth=1
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB45_18
	jmp	.LBB45_30
.LBB45_18:                              # %for.body.39
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	candidate_buffer
	testb	$1, %al
	jne	.LBB45_19
	jmp	.LBB45_28
.LBB45_19:                              # %land.lhs.true.42
                                        #   in Loop: Header=BB45_15 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_21
# BB#20:                                # %lor.lhs.false.46
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_28
.LBB45_21:                              # %if.then.51
                                        #   in Loop: Header=BB45_15 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_23
# BB#22:                                # %lor.lhs.false.55
                                        #   in Loop: Header=BB45_15 Depth=1
	movl	$1005, %edi             # imm = 0x3ED
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_buffer_window
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB45_24
.LBB45_23:                              # %if.then.61
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_35
.LBB45_24:                              # %if.else.62
                                        #   in Loop: Header=BB45_15 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_26
# BB#25:                                # %if.then.66
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB45_26:                              # %if.end.67
                                        #   in Loop: Header=BB45_15 Depth=1
	jmp	.LBB45_27
.LBB45_27:                              # %if.end.68
                                        #   in Loop: Header=BB45_15 Depth=1
	jmp	.LBB45_28
.LBB45_28:                              # %if.end.69
                                        #   in Loop: Header=BB45_15 Depth=1
	jmp	.LBB45_29
.LBB45_29:                              # %for.inc.70
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB45_15
.LBB45_30:                              # %for.end.74
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_32
# BB#31:                                # %if.then.78
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_35
.LBB45_32:                              # %if.else.79
	movl	$4, %esi
	leaq	-112(%rbp), %rax
	movabsq	$.L.str.14, %rcx
	movq	$9, -112(%rbp)
	movq	$-1, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_34
# BB#33:                                # %if.then.86
	movq	-80(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	Fset_buffer_major_mode
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB45_34:                              # %if.end.89
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB45_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fother_buffer, .Lfunc_end45-Fother_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	candidate_buffer,@function
candidate_buffer:                       # @candidate_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB46_1
	jmp	.LBB46_4
.LBB46_1:                               # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB46_4
# BB#2:                                 # %land.lhs.true.1
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB46_4
# BB#3:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	8(%rax), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$32, %ecx
	sete	%al
	xorb	$-1, %al
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB46_4:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	candidate_buffer, .Lfunc_end46-candidate_buffer
	.cfi_endproc

	.globl	Fset_buffer_major_mode
	.align	16, 0x90
	.type	Fset_buffer_major_mode,@function
Fset_buffer_major_mode:                 # @Fset_buffer_major_mode
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	error
.LBB47_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	8(%rax), %rdi
	callq	SSDATA
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB47_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.19, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	find_symbol_value
	movq	%rax, -32(%rbp)
	jmp	.LBB47_8
.LBB47_4:                               # %if.else
	xorl	%edi, %edi
	movq	buffer_defaults+80, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_7
# BB#5:                                 # %land.lhs.true
	movl	$671, %edi              # imm = 0x29F
	movq	current_buffer, %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB47_7
# BB#6:                                 # %if.then.16
	movq	current_buffer, %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB47_7:                               # %if.end.18
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.19
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB47_10
# BB#9:                                 # %lor.lhs.false
	movl	$479, %edi              # imm = 0x1DF
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_11
.LBB47_10:                              # %if.then.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB47_12
.LBB47_11:                              # %if.end.26
	callq	SPECPDL_INDEX
	movq	%rax, -24(%rbp)
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-16(%rbp), %rdi
	callq	Fset_buffer
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	call0
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB47_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Fset_buffer_major_mode, .Lfunc_end47-Fset_buffer_major_mode
	.cfi_endproc

	.globl	other_buffer_safely
	.align	16, 0x90
	.type	other_buffer_safely,@function
other_buffer_safely:                    # @other_buffer_safely
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	Vbuffer_alist, %rdi
	movq	%rdi, -24(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB48_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB48_3:                               # %land.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB48_4
	jmp	.LBB48_8
.LBB48_4:                               # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	candidate_buffer
	testb	$1, %al
	jne	.LBB48_5
	jmp	.LBB48_6
.LBB48_5:                               # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_11
.LBB48_6:                               # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_7
.LBB48_7:                               # %for.inc
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB48_1
.LBB48_8:                               # %for.end
	movl	$4, %esi
	leaq	-72(%rbp), %rax
	movabsq	$.L.str.14, %rcx
	movq	$9, -72(%rbp)
	movq	$-1, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_10
# BB#9:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	Fset_buffer_major_mode
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB48_10:                              # %if.end.15
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB48_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	other_buffer_safely, .Lfunc_end48-other_buffer_safely
	.cfi_endproc

	.globl	Fbuffer_enable_undo
	.align	16, 0x90
	.type	Fbuffer_enable_undo,@function
Fbuffer_enable_undo:                    # @Fbuffer_enable_undo
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	jmp	.LBB49_5
.LBB49_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	callq	nsberror
.LBB49_4:                               # %if.end
	jmp	.LBB49_5
.LBB49_5:                               # %if.end.6
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movl	$901, %edi              # imm = 0x385
	movq	968(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_7
# BB#6:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB49_7:                               # %if.end.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Fbuffer_enable_undo, .Lfunc_end49-Fbuffer_enable_undo
	.cfi_endproc

	.globl	compact_buffer
	.align	16, 0x90
	.type	compact_buffer,@function
compact_buffer:                         # @compact_buffer
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_6
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB50_4
# BB#3:                                 # %if.then.1
	jmp	.LBB50_5
.LBB50_4:                               # %if.else
	jmp	.LBB50_5
.LBB50_5:                               # %if.end
	jmp	.LBB50_6
.LBB50_6:                               # %if.end.2
	jmp	.LBB50_7
.LBB50_7:                               # %do.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_17
# BB#8:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 784(%rax)
	jne	.LBB50_17
# BB#9:                                 # %land.lhs.true.8
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	je	.LBB50_17
# BB#10:                                # %if.then.11
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_12
# BB#11:                                # %if.then.14
	movq	-8(%rbp), %rdi
	callq	truncate_undo_list
.LBB50_12:                              # %if.end.15
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movb	136(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB50_16
# BB#13:                                # %if.then.17
	movl	$20, %eax
	movl	%eax, %edi
	movl	$2000, %eax             # imm = 0x7D0
	movl	%eax, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %rax
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdx
	callq	clip_to_bounds
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB50_15
# BB#14:                                # %if.then.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	720(%rdx), %rdx
	movq	40(%rdx), %rdx
	subq	-16(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rsi
	callq	make_gap_1
.LBB50_15:                              # %if.end.26
	jmp	.LBB50_16
.LBB50_16:                              # %if.end.27
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 80(%rcx)
.LBB50_17:                              # %if.end.32
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	compact_buffer, .Lfunc_end50-compact_buffer
	.cfi_endproc

	.globl	Fkill_buffer
	.align	16, 0x90
	.type	Fkill_buffer,@function
Fkill_buffer:                           # @Fkill_buffer
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
	subq	$464, %rsp              # imm = 0x1D0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_2
# BB#1:                                 # %if.then
	callq	Fcurrent_buffer
	movq	%rax, -24(%rbp)
	jmp	.LBB51_3
.LBB51_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	movq	%rax, -24(%rbp)
.LBB51_3:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_5
# BB#4:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	nsberror
.LBB51_5:                               # %if.end.6
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_7
# BB#6:                                 # %if.then.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_7:                               # %if.end.12
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-32(%rbp), %rdi
	callq	set_buffer_internal
	movl	$593, %edi              # imm = 0x251
	callq	builtin_lisp_symbol
	movl	$1, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-64(%rbp), %rsi
	movq	%rax, -64(%rbp)
	callq	Frun_hook_with_args_until_failure
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB51_9
# BB#8:                                 # %if.then.19
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_9:                               # %if.end.22
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_16
# BB#10:                                # %land.lhs.true
	testb	$1, noninteractive
	jne	.LBB51_16
# BB#11:                                # %land.lhs.true.25
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB51_16
# BB#12:                                # %land.lhs.true.28
	movq	-32(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	64(%rcx), %rax
	jle	.LBB51_16
# BB#13:                                # %if.then.31
	movl	$4, %esi
	leaq	-104(%rbp), %rax
	movabsq	$.L.str.15, %rcx
	movq	$33, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-120(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	callq	Fformat
	movq	%rax, %rdi
	callq	do_yes_or_no_p
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_15
# BB#14:                                # %if.then.43
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_15:                              # %if.end.46
	jmp	.LBB51_16
.LBB51_16:                              # %if.end.47
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_18
# BB#17:                                # %if.then.51
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_18:                              # %if.end.54
	movl	$592, %edi              # imm = 0x250
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB51_20
# BB#19:                                # %if.then.61
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_20:                              # %if.end.63
	movq	-24(%rbp), %rax
	movq	minibuf_window, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-296(%rbp), %rdi        # 8-byte Reload
	cmpq	80(%rax), %rdi
	jne	.LBB51_22
# BB#21:                                # %if.then.66
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_22:                              # %if.end.68
	movq	-32(%rbp), %rax
	cmpq	$0, 784(%rax)
	jne	.LBB51_33
# BB#23:                                # %land.lhs.true.70
	movq	-32(%rbp), %rax
	cmpl	$0, 792(%rax)
	jle	.LBB51_33
# BB#24:                                # %if.then.72
	movq	all_buffers, %rax
	movq	%rax, -128(%rbp)
.LBB51_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB51_30
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB51_25 Depth=1
	movq	-128(%rbp), %rax
	movq	784(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB51_28
# BB#27:                                # %if.then.76
                                        #   in Loop: Header=BB51_25 Depth=1
	movl	$5, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	Fkill_buffer
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB51_28:                              # %if.end.79
                                        #   in Loop: Header=BB51_25 Depth=1
	jmp	.LBB51_29
.LBB51_29:                              # %for.inc
                                        #   in Loop: Header=BB51_25 Depth=1
	movq	-128(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB51_25
.LBB51_30:                              # %for.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_32
# BB#31:                                # %if.then.83
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_32:                              # %if.end.85
	jmp	.LBB51_33
.LBB51_33:                              # %if.end.86
	movq	-24(%rbp), %rdi
	callq	replace_buffer_in_windows
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_35
# BB#34:                                # %if.then.90
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_35:                              # %if.end.92
	movq	-32(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB51_39
# BB#36:                                # %if.then.94
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fother_buffer
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fset_buffer
	movq	-32(%rbp), %rdx
	cmpq	current_buffer, %rdx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jne	.LBB51_38
# BB#37:                                # %if.then.100
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_38:                              # %if.end.102
	jmp	.LBB51_39
.LBB51_39:                              # %if.end.103
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	minibuf_window, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-352(%rbp), %rdi        # 8-byte Reload
	cmpq	80(%rax), %rdi
	jne	.LBB51_42
# BB#40:                                # %land.lhs.true.108
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fother_buffer
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_42
# BB#41:                                # %if.then.113
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_42:                              # %if.end.115
	movq	-32(%rbp), %rdi
	callq	unlock_buffer
	movq	-24(%rbp), %rdi
	callq	kill_buffer_processes
	movq	-24(%rbp), %rdi
	callq	kill_buffer_xwidgets
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_44
# BB#43:                                # %if.then.119
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_44:                              # %if.end.121
	movq	-24(%rbp), %rdi
	callq	frames_discard_buffer
	movq	-32(%rbp), %rdi
	callq	clear_charpos_cache
	movl	$901, %edi              # imm = 0x385
	movq	globals+1104, %rax
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
	movq	-24(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	Frassq
	movq	Vbuffer_alist, %rsi
	movq	%rax, %rdi
	callq	Fdelq
	movq	%rax, Vbuffer_alist
	movq	-24(%rbp), %rdi
	callq	replace_buffer_in_windows_safely
	movq	-40(%rbp), %rax
	movq	%rax, globals+1104
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB51_45
	jmp	.LBB51_52
.LBB51_45:                              # %land.lhs.true.126
	movq	-32(%rbp), %rax
	cmpq	$0, 880(%rax)
	je	.LBB51_52
# BB#46:                                # %land.lhs.true.128
	movq	-32(%rbp), %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	880(%rcx), %rax
	jge	.LBB51_52
# BB#47:                                # %land.lhs.true.133
	movq	-32(%rbp), %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB51_52
# BB#48:                                # %land.lhs.true.139
	movabsq	$.L.str.16, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	Fsymbol_value
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_52
# BB#49:                                # %if.then.144
	movabsq	$.L.str.17, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	Fsymbol_value
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB51_51
# BB#50:                                # %if.then.149
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	internal_delete_file
	movb	%al, -401(%rbp)         # 1-byte Spill
.LBB51_51:                              # %if.end.152
	jmp	.LBB51_52
.LBB51_52:                              # %if.end.153
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_54
# BB#53:                                # %if.then.157
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_80
.LBB51_54:                              # %if.end.159
	movq	-32(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB51_64
# BB#55:                                # %if.then.162
	movq	-32(%rbp), %rax
	movq	720(%rax), %rax
	addq	$128, %rax
	movq	%rax, -160(%rbp)
.LBB51_56:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB51_61
# BB#57:                                # %while.body
                                        #   in Loop: Header=BB51_56 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB51_59
# BB#58:                                # %if.then.167
                                        #   in Loop: Header=BB51_56 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB51_60
.LBB51_59:                              # %if.else.170
                                        #   in Loop: Header=BB51_56 Depth=1
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -160(%rbp)
.LBB51_60:                              # %if.end.172
                                        #   in Loop: Header=BB51_56 Depth=1
	jmp	.LBB51_56
.LBB51_61:                              # %while.end
	movq	-32(%rbp), %rdi
	callq	buffer_intervals
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB51_63
# BB#62:                                # %if.then.175
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	set_interval_object
.LBB51_63:                              # %if.end.178
	jmp	.LBB51_68
.LBB51_64:                              # %if.else.179
	movq	-32(%rbp), %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB51_65:                              # %for.cond.182
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB51_67
# BB#66:                                # %for.body.184
                                        #   in Loop: Header=BB51_65 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-176(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB51_65
.LBB51_67:                              # %for.end.189
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	$0, 128(%rcx)
	movq	-32(%rbp), %rdi
	callq	set_buffer_intervals
.LBB51_68:                              # %if.end.192
	movq	-32(%rbp), %rax
	movq	$0, 944(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 952(%rax)
	movq	-32(%rbp), %rdi
	callq	swap_out_buffer_local_variables
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	reset_buffer_local_variables
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_name
	callq	block_input
	movq	-32(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB51_70
# BB#69:                                # %if.then.196
	movq	-32(%rbp), %rax
	movq	784(%rax), %rax
	movl	792(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 792(%rax)
	jmp	.LBB51_71
.LBB51_70:                              # %if.else.199
	movq	-32(%rbp), %rdi
	callq	free_buffer_text
.LBB51_71:                              # %if.end.200
	movq	-32(%rbp), %rax
	cmpq	$0, 912(%rax)
	je	.LBB51_73
# BB#72:                                # %if.then.202
	movq	-32(%rbp), %rax
	movq	912(%rax), %rdi
	callq	free_region_cache
	movq	-32(%rbp), %rax
	movq	$0, 912(%rax)
.LBB51_73:                              # %if.end.205
	movq	-32(%rbp), %rax
	cmpq	$0, 920(%rax)
	je	.LBB51_75
# BB#74:                                # %if.then.207
	movq	-32(%rbp), %rax
	movq	920(%rax), %rdi
	callq	free_region_cache
	movq	-32(%rbp), %rax
	movq	$0, 920(%rax)
.LBB51_75:                              # %if.end.210
	movq	-32(%rbp), %rax
	cmpq	$0, 928(%rax)
	je	.LBB51_77
# BB#76:                                # %if.then.212
	movq	-32(%rbp), %rax
	movq	928(%rax), %rdi
	callq	free_region_cache
	movq	-32(%rbp), %rax
	movq	$0, 928(%rax)
.LBB51_77:                              # %if.end.215
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_width_table
	callq	unblock_input
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	xorl	%edi, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB51_79
# BB#78:                                # %if.then.220
	movl	$223, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB51_79:                              # %if.end.223
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB51_80:                              # %return
	movq	-8(%rbp), %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Fkill_buffer, .Lfunc_end51-Fkill_buffer
	.cfi_endproc

	.globl	Fcurrent_buffer
	.align	16, 0x90
	.type	Fcurrent_buffer,@function
Fcurrent_buffer:                        # @Fcurrent_buffer
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
	subq	$16, %rsp
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fcurrent_buffer, .Lfunc_end52-Fcurrent_buffer
	.cfi_endproc

	.globl	Fset_buffer
	.align	16, 0x90
	.type	Fset_buffer,@function
Fset_buffer:                            # @Fset_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB53_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	nsberror
.LBB53_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB53_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.20, %rdi
	movb	$0, %al
	callq	error
.LBB53_4:                               # %if.end.6
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	Fset_buffer, .Lfunc_end53-Fset_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	swap_out_buffer_local_variables,@function
swap_out_buffer_local_variables:        # @swap_out_buffer_local_variables
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
	subq	$48, %rsp
	movl	$5, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB54_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB54_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB54_1 Depth=1
	movabsq	$lispsym, %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	SYMBOL_BLV
	movq	16(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB54_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB54_1 Depth=1
	movabsq	$lispsym, %rax
	movq	-40(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	swap_in_global_binding
.LBB54_4:                               # %if.end
                                        #   in Loop: Header=BB54_1 Depth=1
	jmp	.LBB54_5
.LBB54_5:                               # %for.inc
                                        #   in Loop: Header=BB54_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB54_1
.LBB54_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	swap_out_buffer_local_variables, .Lfunc_end54-swap_out_buffer_local_variables
	.cfi_endproc

	.align	16, 0x90
	.type	free_buffer_text,@function
free_buffer_text:                       # @free_buffer_text
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
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	720(%rdi), %rdi
	movq	(%rdi), %rdi
	callq	xfree
	movq	-8(%rbp), %rdi
	movq	720(%rdi), %rdi
	movq	$0, (%rdi)
	callq	unblock_input
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	free_buffer_text, .Lfunc_end55-free_buffer_text
	.cfi_endproc

	.globl	record_buffer
	.align	16, 0x90
	.type	record_buffer,@function
record_buffer:                          # @record_buffer
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	selected_frame, %rdi
	subq	$5, %rdi
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_BUFFER
	movl	$901, %edi              # imm = 0x385
	movq	globals+1104, %rax
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
	movq	-8(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	Frassq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	Fmemq
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	Fdelq
	movq	%rax, Vbuffer_alist
	movq	-24(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	XSETCDR
	movq	-24(%rbp), %rax
	movq	%rax, Vbuffer_alist
	movq	-32(%rbp), %rax
	movq	%rax, globals+1104
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	Fdelq
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buffer_list
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fdelq
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buried_buffer_list
	xorl	%edi, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB56_2
# BB#1:                                 # %if.then
	movl	$223, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB56_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	record_buffer, .Lfunc_end56-record_buffer
	.cfi_endproc

	.globl	Fbury_buffer_internal
	.align	16, 0x90
	.type	Fbury_buffer_internal,@function
Fbury_buffer_internal:                  # @Fbury_buffer_internal
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	selected_frame, %rdi
	subq	$5, %rdi
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_BUFFER
	movl	$901, %edi              # imm = 0x385
	movq	globals+1104, %rax
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
	movq	-8(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	Frassq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	Fmemq
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	callq	Fdelq
	xorl	%edi, %edi
	movq	%rax, Vbuffer_alist
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	Vbuffer_alist, %rdi
	movq	-24(%rbp), %rsi
	callq	nconc2
	movq	%rax, Vbuffer_alist
	movq	-32(%rbp), %rax
	movq	%rax, globals+1104
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fdelq
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buffer_list
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	Fdelq
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buried_buffer_list
	xorl	%edi, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB57_2
# BB#1:                                 # %if.then
	movl	$223, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB57_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Fbury_buffer_internal, .Lfunc_end57-Fbury_buffer_internal
	.cfi_endproc

	.align	16, 0x90
	.type	record_buffer_markers,@function
record_buffer_markers:                  # @record_buffer_markers
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	360(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	736(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	744(%rax), %rcx
	callq	set_marker_both
	movq	-8(%rbp), %rcx
	movq	368(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	752(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movq	760(%rcx), %rcx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	set_marker_both
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	768(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movq	776(%rcx), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	set_marker_both
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB58_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	record_buffer_markers, .Lfunc_end58-record_buffer_markers
	.cfi_endproc

	.align	16, 0x90
	.type	fetch_buffer_markers,@function
fetch_buffer_markers:                   # @fetch_buffer_markers
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	360(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	-8(%rbp), %rdi
	movq	%rax, 736(%rdi)
	movq	-16(%rbp), %rdi
	callq	marker_byte_position
	movq	-8(%rbp), %rdi
	movq	%rax, 744(%rdi)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	-8(%rbp), %rdi
	movq	%rax, 752(%rdi)
	movq	-16(%rbp), %rdi
	callq	marker_byte_position
	movq	-8(%rbp), %rdi
	movq	%rax, 760(%rdi)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	-8(%rbp), %rdi
	movq	%rax, 768(%rdi)
	movq	-16(%rbp), %rdi
	callq	marker_byte_position
	movq	-8(%rbp), %rdi
	movq	%rax, 776(%rdi)
.LBB59_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	fetch_buffer_markers, .Lfunc_end59-fetch_buffer_markers
	.cfi_endproc

	.globl	set_buffer_temp
	.align	16, 0x90
	.type	set_buffer_temp,@function
set_buffer_temp:                        # @set_buffer_temp
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
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	cmpq	-8(%rbp), %rdi
	jne	.LBB60_2
# BB#1:                                 # %if.then
	jmp	.LBB60_3
.LBB60_2:                               # %if.end
	movq	current_buffer, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, current_buffer
	movq	-16(%rbp), %rdi
	callq	record_buffer_markers
	movq	-8(%rbp), %rdi
	callq	fetch_buffer_markers
.LBB60_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	set_buffer_temp, .Lfunc_end60-set_buffer_temp
	.cfi_endproc

	.globl	restore_buffer
	.align	16, 0x90
	.type	restore_buffer,@function
restore_buffer:                         # @restore_buffer
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	restore_buffer, .Lfunc_end61-restore_buffer
	.cfi_endproc

	.globl	set_buffer_if_live
	.align	16, 0x90
	.type	set_buffer_if_live,@function
set_buffer_if_live:                     # @set_buffer_if_live
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
.LBB62_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	set_buffer_if_live, .Lfunc_end62-set_buffer_if_live
	.cfi_endproc

	.globl	Fbarf_if_buffer_read_only
	.align	16, 0x90
	.type	Fbarf_if_buffer_read_only,@function
Fbarf_if_buffer_read_only:              # @Fbarf_if_buffer_read_only
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB63_6
.LBB63_2:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB63_4
# BB#3:                                 # %cond.true
	jmp	.LBB63_5
.LBB63_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB63_5:                               # %cond.end
	jmp	.LBB63_6
.LBB63_6:                               # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB63_10
# BB#7:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1112, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_10
# BB#8:                                 # %land.lhs.true.12
	movl	$547, %edi              # imm = 0x223
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_text_property
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB63_10
# BB#9:                                 # %if.then.19
	movl	$228, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.LBB63_10:                              # %if.end.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	Fbarf_if_buffer_read_only, .Lfunc_end63-Fbarf_if_buffer_read_only
	.cfi_endproc

	.globl	Ferase_buffer
	.align	16, 0x90
	.type	Ferase_buffer,@function
Ferase_buffer:                          # @Ferase_buffer
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
	subq	$16, %rsp
	callq	Fwiden
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	16(%rdx), %rsi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	del_range
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	current_buffer, %rax
	movq	$1, 904(%rax)
	callq	make_natnum
	xorl	%edi, %edi
	movq	current_buffer, %rdx
	movq	%rax, 40(%rdx)
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	Ferase_buffer, .Lfunc_end64-Ferase_buffer
	.cfi_endproc

	.globl	validate_region
	.align	16, 0x90
	.type	validate_region,@function
validate_region:                        # @validate_region
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB65_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB65_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB65_8
.LBB65_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_6
# BB#5:                                 # %cond.true
	jmp	.LBB65_7
.LBB65_6:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB65_7:                               # %cond.end
	jmp	.LBB65_8
.LBB65_8:                               # %if.end
	jmp	.LBB65_9
.LBB65_9:                               # %do.end
	jmp	.LBB65_10
.LBB65_10:                              # %do.body.12
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB65_13
# BB#11:                                # %land.lhs.true.17
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB65_13
# BB#12:                                # %if.then.21
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB65_17
.LBB65_13:                              # %if.else.24
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_15
# BB#14:                                # %cond.true.30
	jmp	.LBB65_16
.LBB65_15:                              # %cond.false.31
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB65_16:                              # %cond.end.33
	jmp	.LBB65_17
.LBB65_17:                              # %if.end.34
	jmp	.LBB65_18
.LBB65_18:                              # %do.end.35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_20
# BB#19:                                # %if.then.39
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB65_20:                              # %if.end.40
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB65_22
# BB#21:                                # %land.lhs.true.44
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB65_23
.LBB65_22:                              # %if.then.48
	callq	Fcurrent_buffer
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, %rdi
	callq	args_out_of_range_3
.LBB65_23:                              # %if.end.50
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	validate_region, .Lfunc_end65-validate_region
	.cfi_endproc

	.globl	Fbuffer_swap_text
	.align	16, 0x90
	.type	Fbuffer_swap_text,@function
Fbuffer_swap_text:                      # @Fbuffer_swap_text
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
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB66_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	error
.LBB66_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 784(%rax)
	jne	.LBB66_4
# BB#3:                                 # %lor.lhs.false
	movq	current_buffer, %rax
	cmpq	$0, 784(%rax)
	je	.LBB66_5
.LBB66_4:                               # %if.then.4
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	error
.LBB66_5:                               # %if.end.5
	movq	all_buffers, %rax
	movq	%rax, -24(%rbp)
.LBB66_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB66_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB66_6 Depth=1
	movq	-24(%rbp), %rax
	movq	784(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB66_9
# BB#8:                                 # %lor.lhs.false.9
                                        #   in Loop: Header=BB66_6 Depth=1
	movq	-24(%rbp), %rax
	movq	784(%rax), %rax
	cmpq	current_buffer, %rax
	jne	.LBB66_10
.LBB66_9:                               # %if.then.12
	movabsq	$.L.str.23, %rdi
	movb	$0, %al
	callq	error
.LBB66_10:                              # %if.end.13
                                        #   in Loop: Header=BB66_6 Depth=1
	jmp	.LBB66_11
.LBB66_11:                              # %for.inc
                                        #   in Loop: Header=BB66_6 Depth=1
	movq	-24(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB66_6
.LBB66_12:                              # %for.end
	jmp	.LBB66_13
.LBB66_13:                              # %do.body
	movl	$144, %eax
	movl	%eax, %ecx
	leaq	-168(%rbp), %rdx
	movq	-16(%rbp), %rsi
	addq	$576, %rsi              # imm = 0x240
	movq	%rdx, %rdi
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rcx
	addq	$576, %rcx              # imm = 0x240
	movq	current_buffer, %rdx
	addq	$576, %rdx              # imm = 0x240
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	current_buffer, %rcx
	addq	$576, %rcx              # imm = 0x240
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#14:                                # %do.end
	jmp	.LBB66_15
.LBB66_15:                              # %do.body.17
	movq	-16(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 736(%rcx)
	movq	-176(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 736(%rcx)
# BB#16:                                # %do.end.21
	jmp	.LBB66_17
.LBB66_17:                              # %do.body.22
	movq	-16(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 744(%rcx)
	movq	-184(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 744(%rcx)
# BB#18:                                # %do.end.26
	jmp	.LBB66_19
.LBB66_19:                              # %do.body.27
	movq	-16(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 752(%rcx)
	movq	-192(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 752(%rcx)
# BB#20:                                # %do.end.31
	jmp	.LBB66_21
.LBB66_21:                              # %do.body.32
	movq	-16(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 760(%rcx)
	movq	-200(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 760(%rcx)
# BB#22:                                # %do.end.36
	jmp	.LBB66_23
.LBB66_23:                              # %do.body.37
	movq	-16(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 768(%rcx)
	movq	-208(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 768(%rcx)
# BB#24:                                # %do.end.41
	jmp	.LBB66_25
.LBB66_25:                              # %do.body.42
	movq	-16(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 776(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 776(%rcx)
# BB#26:                                # %do.end.46
	jmp	.LBB66_27
.LBB66_27:                              # %do.body.47
	movq	-16(%rbp), %rax
	movslq	792(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	current_buffer, %rax
	movl	792(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 792(%rax)
	movq	-224(%rbp), %rax
	movl	%eax, %ecx
	movq	current_buffer, %rax
	movl	%ecx, 792(%rax)
# BB#28:                                # %do.end.52
	movq	current_buffer, %rax
	movb	936(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 936(%rax)
	movq	-16(%rbp), %rax
	movb	936(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 936(%rax)
# BB#29:                                # %do.body.57
	movq	-16(%rbp), %rax
	movq	912(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	current_buffer, %rax
	movq	912(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 912(%rcx)
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 912(%rcx)
# BB#30:                                # %do.end.61
	jmp	.LBB66_31
.LBB66_31:                              # %do.body.62
	movq	-16(%rbp), %rax
	movq	920(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	current_buffer, %rax
	movq	920(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 920(%rcx)
	movq	-240(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 920(%rcx)
# BB#32:                                # %do.end.66
	jmp	.LBB66_33
.LBB66_33:                              # %do.body.67
	movq	-16(%rbp), %rax
	movq	928(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	current_buffer, %rax
	movq	928(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 928(%rcx)
	movq	-248(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 928(%rcx)
# BB#34:                                # %do.end.71
	movq	current_buffer, %rax
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
	movq	-16(%rbp), %rax
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
# BB#35:                                # %do.body.79
	movq	-16(%rbp), %rax
	movq	944(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	current_buffer, %rax
	movq	944(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 944(%rcx)
	movq	-256(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 944(%rcx)
# BB#36:                                # %do.end.83
	jmp	.LBB66_37
.LBB66_37:                              # %do.body.84
	movq	-16(%rbp), %rax
	movq	952(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 952(%rcx)
	movq	-264(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 952(%rcx)
# BB#38:                                # %do.end.88
	jmp	.LBB66_39
.LBB66_39:                              # %do.body.89
	movq	-16(%rbp), %rax
	movq	960(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	current_buffer, %rax
	movq	960(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 960(%rcx)
	movq	-272(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 960(%rcx)
# BB#40:                                # %do.end.93
	jmp	.LBB66_41
.LBB66_41:                              # %do.body.94
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	968(%rax), %rsi
	callq	bset_undo_list
	movq	current_buffer, %rdi
	movq	-280(%rbp), %rsi
	callq	bset_undo_list
# BB#42:                                # %do.end.96
	jmp	.LBB66_43
.LBB66_43:                              # %do.body.97
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	64(%rax), %rsi
	callq	bset_mark
	movq	current_buffer, %rdi
	movq	-288(%rbp), %rsi
	callq	bset_mark
# BB#44:                                # %do.end.99
	jmp	.LBB66_45
.LBB66_45:                              # %do.body.100
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	312(%rax), %rsi
	callq	bset_enable_multibyte_characters
	movq	current_buffer, %rdi
	movq	-296(%rbp), %rsi
	callq	bset_enable_multibyte_characters
# BB#46:                                # %do.end.102
	jmp	.LBB66_47
.LBB66_47:                              # %do.body.103
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	240(%rax), %rsi
	callq	bset_bidi_display_reordering
	movq	current_buffer, %rdi
	movq	-304(%rbp), %rsi
	callq	bset_bidi_display_reordering
# BB#48:                                # %do.end.105
	jmp	.LBB66_49
.LBB66_49:                              # %do.body.106
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	248(%rax), %rsi
	callq	bset_bidi_paragraph_direction
	movq	current_buffer, %rdi
	movq	-312(%rbp), %rsi
	callq	bset_bidi_paragraph_direction
# BB#50:                                # %do.end.108
	jmp	.LBB66_51
.LBB66_51:                              # %do.body.109
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	360(%rax), %rsi
	callq	bset_pt_marker
	movq	current_buffer, %rdi
	movq	-320(%rbp), %rsi
	callq	bset_pt_marker
# BB#52:                                # %do.end.111
	jmp	.LBB66_53
.LBB66_53:                              # %do.body.112
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	368(%rax), %rsi
	callq	bset_begv_marker
	movq	current_buffer, %rdi
	movq	-328(%rbp), %rsi
	callq	bset_begv_marker
# BB#54:                                # %do.end.114
	jmp	.LBB66_55
.LBB66_55:                              # %do.body.115
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	376(%rax), %rsi
	callq	bset_zv_marker
	movq	current_buffer, %rdi
	movq	-336(%rbp), %rsi
	callq	bset_zv_marker
# BB#56:                                # %do.end.117
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_point_before_scroll
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_point_before_scroll
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 48(%rax)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 48(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	56(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 56(%rax)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	56(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 56(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	72(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 72(%rax)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	72(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 72(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 88(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 96(%rsi)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 88(%rsi)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 96(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -344(%rbp)
.LBB66_57:                              # %for.cond.147
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -344(%rbp)
	je	.LBB66_63
# BB#58:                                # %for.body.149
                                        #   in Loop: Header=BB66_57 Depth=1
	movq	-344(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB66_60
# BB#59:                                # %if.then.153
                                        #   in Loop: Header=BB66_57 Depth=1
	movq	current_buffer, %rax
	movq	-344(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB66_61
.LBB66_60:                              # %if.else
                                        #   in Loop: Header=BB66_57 Depth=1
	jmp	.LBB66_61
.LBB66_61:                              # %if.end.155
                                        #   in Loop: Header=BB66_57 Depth=1
	jmp	.LBB66_62
.LBB66_62:                              # %for.inc.156
                                        #   in Loop: Header=BB66_57 Depth=1
	movq	-344(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB66_57
.LBB66_63:                              # %for.end.158
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -344(%rbp)
.LBB66_64:                              # %for.cond.161
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -344(%rbp)
	je	.LBB66_70
# BB#65:                                # %for.body.163
                                        #   in Loop: Header=BB66_64 Depth=1
	movq	-344(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	jne	.LBB66_67
# BB#66:                                # %if.then.167
                                        #   in Loop: Header=BB66_64 Depth=1
	movq	-16(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB66_68
.LBB66_67:                              # %if.else.169
                                        #   in Loop: Header=BB66_64 Depth=1
	jmp	.LBB66_68
.LBB66_68:                              # %if.end.170
                                        #   in Loop: Header=BB66_64 Depth=1
	jmp	.LBB66_69
.LBB66_69:                              # %for.inc.171
                                        #   in Loop: Header=BB66_64 Depth=1
	movq	-344(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB66_64
.LBB66_70:                              # %for.end.173
	xorl	%edi, %edi
	movq	selected_window, %rax
	movq	%rax, -352(%rbp)
	callq	builtin_lisp_symbol
	movl	$5, %esi
	movq	%rax, -360(%rbp)
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$5, %esi
	movq	%rax, -368(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -376(%rbp)
.LBB66_71:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-352(%rbp), %rdi
	movq	-360(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB66_100
# BB#72:                                # %while.body
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	movq	-360(%rbp), %rsi
	callq	Fcons
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	96(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB66_83
# BB#73:                                # %land.lhs.true
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	96(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB66_83
# BB#74:                                # %land.lhs.true.191
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-368(%rbp), %rax
	je	.LBB66_76
# BB#75:                                # %lor.lhs.false.195
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-376(%rbp), %rax
	jne	.LBB66_83
.LBB66_76:                              # %if.then.200
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	96(%rax), %rdi
	movq	-352(%rbp), %rax
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB66_78
# BB#77:                                # %cond.true
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB66_82
.LBB66_78:                              # %cond.false
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB66_80
# BB#79:                                # %cond.true.216
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB66_81
.LBB66_80:                              # %cond.false.221
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB66_81:                              # %cond.end
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB66_82:                              # %cond.end.227
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	-352(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	80(%rax), %rdx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-464(%rbp), %rsi        # 8-byte Reload
	callq	Fset_marker
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB66_83:                              # %if.end.232
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	104(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB66_94
# BB#84:                                # %land.lhs.true.238
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	104(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB66_94
# BB#85:                                # %land.lhs.true.244
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-368(%rbp), %rax
	je	.LBB66_87
# BB#86:                                # %lor.lhs.false.249
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-376(%rbp), %rax
	jne	.LBB66_94
.LBB66_87:                              # %if.then.254
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	104(%rax), %rdi
	movq	-352(%rbp), %rax
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB66_89
# BB#88:                                # %cond.true.262
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB66_93
.LBB66_89:                              # %cond.false.264
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB66_91
# BB#90:                                # %cond.true.272
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB66_92
.LBB66_91:                              # %cond.false.277
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB66_92:                              # %cond.end.283
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB66_93:                              # %cond.end.285
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	-352(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	80(%rax), %rdx
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rsi        # 8-byte Reload
	callq	Fset_marker
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB66_94:                              # %if.end.292
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	88(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB66_99
# BB#95:                                # %land.lhs.true.298
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	88(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB66_99
# BB#96:                                # %land.lhs.true.304
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-368(%rbp), %rax
	je	.LBB66_98
# BB#97:                                # %lor.lhs.false.309
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-376(%rbp), %rax
	jne	.LBB66_99
.LBB66_98:                              # %if.then.314
                                        #   in Loop: Header=BB66_71 Depth=1
	movq	-352(%rbp), %rdi
	callq	XWINDOW
	movq	88(%rax), %rdi
	movq	-352(%rbp), %rax
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	904(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-352(%rbp), %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	80(%rax), %rdx
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	-536(%rbp), %rsi        # 8-byte Reload
	callq	Fset_marker
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB66_99:                              # %if.end.325
                                        #   in Loop: Header=BB66_71 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-352(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	-560(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fnext_window
	movq	%rax, -352(%rbp)
	jmp	.LBB66_71
.LBB66_100:                             # %while.end
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 120(%rax)
	je	.LBB66_102
# BB#101:                               # %if.then.331
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, 32(%rdi)
.LBB66_102:                             # %if.end.335
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	cmpq	$0, 120(%rax)
	je	.LBB66_104
# BB#103:                               # %if.then.339
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	-16(%rbp), %rdi
	movq	720(%rdi), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, 32(%rdi)
.LBB66_104:                             # %if.end.345
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Fbuffer_swap_text, .Lfunc_end66-Fbuffer_swap_text
	.cfi_endproc

	.align	16, 0x90
	.type	bset_bidi_display_reordering,@function
bset_bidi_display_reordering:           # @bset_bidi_display_reordering
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 240(%rdi)
	popq	%rbp
	retq
.Lfunc_end67:
	.size	bset_bidi_display_reordering, .Lfunc_end67-bset_bidi_display_reordering
	.cfi_endproc

	.globl	Fset_buffer_multibyte
	.align	16, 0x90
	.type	Fset_buffer_multibyte,@function
Fset_buffer_multibyte:                  # @Fset_buffer_multibyte
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
	subq	$528, %rsp              # imm = 0x210
	movb	$1, %al
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdi, -16(%rbp)
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rdx
	movb	%al, -201(%rbp)         # 1-byte Spill
	jne	.LBB68_2
# BB#1:                                 # %lor.rhs
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	setne	%dl
	movb	%dl, -201(%rbp)         # 1-byte Spill
.LBB68_2:                               # %lor.end
	movb	-201(%rbp), %al         # 1-byte Reload
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -57(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fbuffer_modified_p
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -58(%rbp)
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	cmpq	$0, 784(%rax)
	je	.LBB68_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	error
.LBB68_4:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movl	%esi, -236(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	-236(%rbp), %edi        # 4-byte Reload
	cmpl	%esi, %edi
	jne	.LBB68_6
# BB#5:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB68_179
.LBB68_6:                               # %if.end.16
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	movq	current_buffer, %rdi
	callq	clear_charpos_cache
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB68_8
# BB#7:                                 # %if.then.21
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB68_9
.LBB68_8:                               # %if.else
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB68_9:                               # %if.end.24
	testb	$1, -57(%rbp)
	je	.LBB68_11
# BB#10:                                # %if.then.26
	movabsq	$.L.str.25, %rdi
	movb	$0, %al
	callq	error
.LBB68_11:                              # %if.end.27
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	752(%rax), %rsi
	movq	current_buffer, %rax
	movq	768(%rax), %rdx
	callq	invalidate_buffer_caches
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB68_56
# BB#12:                                # %if.then.33
	xorl	%edi, %edi
	callq	set_intervals_multibyte
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_enable_multibyte_characters
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 16(%rsi)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	current_buffer, %rsi
	movq	%rax, 752(%rsi)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rsi
	movq	%rax, 768(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-280(%rbp), %rdx        # 8-byte Reload
	callq	temp_set_point_both
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB68_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB68_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB68_13 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB68_13 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB68_13
.LBB68_16:                              # %for.end
	movq	$1, -80(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB68_17:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB68_21
# BB#18:                                # %if.then.54
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB68_20
# BB#19:                                # %if.then.59
	jmp	.LBB68_53
.LBB68_20:                              # %if.end.60
                                        #   in Loop: Header=BB68_17 Depth=1
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
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB68_21:                              # %if.end.70
                                        #   in Loop: Header=BB68_17 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB68_22
	jmp	.LBB68_23
.LBB68_22:                              # %cond.true
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB68_24
	jmp	.LBB68_25
.LBB68_23:                              # %cond.false
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB68_25
.LBB68_24:                              # %if.then.79
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB68_52
.LBB68_25:                              # %if.else.80
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$192, %ecx
	je	.LBB68_27
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$193, %ecx
	jne	.LBB68_41
.LBB68_27:                              # %if.then.87
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB68_29
# BB#28:                                # %cond.true.90
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	$1, -104(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB68_36
.LBB68_29:                              # %cond.false.93
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB68_31
# BB#30:                                # %cond.true.98
                                        #   in Loop: Header=BB68_17 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -104(%rbp)
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
	movl	%esi, -288(%rbp)        # 4-byte Spill
	jmp	.LBB68_35
.LBB68_31:                              # %cond.false.110
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB68_33
# BB#32:                                # %cond.true.115
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	$3, -104(%rbp)
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
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB68_34
.LBB68_33:                              # %cond.false.129
                                        #   in Loop: Header=BB68_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-104(%rbp), %rdx
	movq	-96(%rbp), %rdi
	callq	string_char
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB68_34:                              # %cond.end
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB68_35:                              # %cond.end.132
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB68_36:                              # %cond.end.134
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	xorl	%r8d, %r8d
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -104(%rbp)
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-80(%rbp), %rdx
	movslq	-104(%rbp), %r9
	addq	%r9, %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	del_range_2
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	24(%rdx), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	40(%rdx), %rcx
	addq	$-1, %rcx
	movq	%rcx, -96(%rbp)
	movl	-100(%rbp), %r8d
	movb	%r8b, %r10b
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -96(%rbp)
	movb	%r10b, (%rcx)
	movq	-80(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jle	.LBB68_38
# BB#37:                                # %if.then.155
                                        #   in Loop: Header=BB68_17 Depth=1
	movslq	-104(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
.LBB68_38:                              # %if.end.157
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jle	.LBB68_40
# BB#39:                                # %if.then.160
                                        #   in Loop: Header=BB68_17 Depth=1
	movslq	-104(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
.LBB68_40:                              # %if.end.163
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB68_51
.LBB68_41:                              # %if.else.166
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB68_43
# BB#42:                                # %cond.true.170
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	$1, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB68_50
.LBB68_43:                              # %cond.false.171
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB68_45
# BB#44:                                # %cond.true.175
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	$2, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB68_49
.LBB68_45:                              # %cond.false.176
                                        #   in Loop: Header=BB68_17 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB68_47
# BB#46:                                # %cond.true.180
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	$3, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB68_48
.LBB68_47:                              # %cond.false.181
                                        #   in Loop: Header=BB68_17 Depth=1
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
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB68_48:                              # %cond.end.187
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB68_49:                              # %cond.end.189
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB68_50:                              # %cond.end.191
                                        #   in Loop: Header=BB68_17 Depth=1
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	movslq	-104(%rbp), %rcx
	addq	-80(%rbp), %rcx
	movq	%rcx, -80(%rbp)
.LBB68_51:                              # %if.end.196
                                        #   in Loop: Header=BB68_17 Depth=1
	jmp	.LBB68_52
.LBB68_52:                              # %if.end.197
                                        #   in Loop: Header=BB68_17 Depth=1
	jmp	.LBB68_17
.LBB68_53:                              # %while.end
	testb	$1, -57(%rbp)
	je	.LBB68_55
# BB#54:                                # %if.then.199
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fnarrow_to_region
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB68_55:                              # %if.end.205
	jmp	.LBB68_159
.LBB68_56:                              # %if.else.206
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_68
# BB#57:                                # %land.lhs.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$1, 24(%rax)
	jle	.LBB68_68
# BB#58:                                # %land.lhs.true.219
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	32(%rcx), %rax
	jge	.LBB68_68
# BB#59:                                # %land.lhs.true.226
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	40(%rcx), %rcx
	movzbl	-1(%rax,%rcx), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	jne	.LBB68_68
# BB#60:                                # %if.then.240
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
.LBB68_61:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-152(%rbp), %rdx
	movzbl	(%rdx), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	movb	%cl, -345(%rbp)         # 1-byte Spill
	jne	.LBB68_63
# BB#62:                                # %land.rhs
                                        #   in Loop: Header=BB68_61 Depth=1
	movq	-152(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	(%rcx), %rax
	seta	%dl
	movb	%dl, -345(%rbp)         # 1-byte Spill
.LBB68_63:                              # %land.end
                                        #   in Loop: Header=BB68_61 Depth=1
	movb	-345(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB68_64
	jmp	.LBB68_65
.LBB68_64:                              # %while.body.256
                                        #   in Loop: Header=BB68_61 Depth=1
	movq	-152(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB68_61
.LBB68_65:                              # %while.end.258
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$192, %ecx
	jne	.LBB68_67
# BB#66:                                # %if.then.263
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	24(%rdx), %rcx
	addq	$-1, %rcx
	movq	-152(%rbp), %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	move_gap_both
.LBB68_67:                              # %if.end.273
	jmp	.LBB68_68
.LBB68_68:                              # %if.end.274
	movq	$1, -120(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
.LBB68_69:                              # %while.body.286
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB68_73
# BB#70:                                # %if.then.290
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-120(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB68_72
# BB#71:                                # %if.then.295
	jmp	.LBB68_139
.LBB68_72:                              # %if.end.296
                                        #   in Loop: Header=BB68_69 Depth=1
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
	movq	%rax, -136(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	32(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB68_73:                              # %if.end.317
                                        #   in Loop: Header=BB68_69 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB68_74
	jmp	.LBB68_75
.LBB68_74:                              # %cond.true.318
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB68_76
	jmp	.LBB68_77
.LBB68_75:                              # %cond.false.323
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB68_77
.LBB68_76:                              # %if.then.328
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB68_138
.LBB68_77:                              # %if.else.331
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_115
# BB#78:                                # %land.lhs.true.335
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$192, %ecx
	je	.LBB68_115
# BB#79:                                # %lor.lhs.false.339
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$193, %ecx
	je	.LBB68_115
# BB#80:                                # %land.lhs.true.343
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jb	.LBB68_82
# BB#81:                                # %cond.true.346
                                        #   in Loop: Header=BB68_69 Depth=1
	xorl	%eax, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB68_113
.LBB68_82:                              # %cond.false.347
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB68_84
# BB#83:                                # %cond.true.352
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	$1, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB68_112
.LBB68_84:                              # %cond.false.353
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	addq	$1, %rax
	cmpq	-144(%rbp), %rax
	jae	.LBB68_86
# BB#85:                                # %lor.lhs.false.357
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB68_87
.LBB68_86:                              # %cond.true.363
                                        #   in Loop: Header=BB68_69 Depth=1
	xorl	%eax, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB68_111
.LBB68_87:                              # %cond.false.364
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$192, %ecx
	jne	.LBB68_89
# BB#88:                                # %cond.true.370
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	$2, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB68_110
.LBB68_89:                              # %cond.false.371
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	addq	$2, %rax
	cmpq	-144(%rbp), %rax
	jae	.LBB68_91
# BB#90:                                # %lor.lhs.false.375
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB68_92
.LBB68_91:                              # %cond.true.381
                                        #   in Loop: Header=BB68_69 Depth=1
	xorl	%eax, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB68_109
.LBB68_92:                              # %cond.false.382
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$240, %ecx
	cmpl	$224, %ecx
	jne	.LBB68_94
# BB#93:                                # %cond.true.388
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	$3, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB68_108
.LBB68_94:                              # %cond.false.389
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	addq	$3, %rax
	cmpq	-144(%rbp), %rax
	jae	.LBB68_96
# BB#95:                                # %lor.lhs.false.393
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB68_97
.LBB68_96:                              # %cond.true.399
                                        #   in Loop: Header=BB68_69 Depth=1
	xorl	%eax, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB68_107
.LBB68_97:                              # %cond.false.400
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$248, %ecx
	cmpl	$240, %ecx
	jne	.LBB68_99
# BB#98:                                # %cond.true.406
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	$4, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB68_106
.LBB68_99:                              # %cond.false.407
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	addq	$4, %rax
	cmpq	-144(%rbp), %rax
	jae	.LBB68_101
# BB#100:                               # %lor.lhs.false.411
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB68_102
.LBB68_101:                             # %cond.true.417
                                        #   in Loop: Header=BB68_69 Depth=1
	xorl	%eax, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB68_105
.LBB68_102:                             # %cond.false.418
                                        #   in Loop: Header=BB68_69 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$248, %eax
	movb	%cl, -397(%rbp)         # 1-byte Spill
	jne	.LBB68_104
# BB#103:                               # %land.rhs.423
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-136(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$240, %ecx
	cmpl	$128, %ecx
	sete	%dl
	movb	%dl, -397(%rbp)         # 1-byte Spill
.LBB68_104:                             # %land.end.429
                                        #   in Loop: Header=BB68_69 Depth=1
	movb	-397(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
.LBB68_105:                             # %cond.end.431
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB68_106:                             # %cond.end.433
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB68_107:                             # %cond.end.435
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB68_108:                             # %cond.end.437
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB68_109:                             # %cond.end.439
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB68_110:                             # %cond.end.441
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB68_111:                             # %cond.end.443
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB68_112:                             # %cond.end.445
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB68_113:                             # %cond.end.447
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)
	cmpl	$0, %eax
	jle	.LBB68_115
# BB#114:                               # %if.then.451
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-164(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movslq	-164(%rbp), %rcx
	addq	-120(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	jmp	.LBB68_137
.LBB68_115:                             # %if.else.456
                                        #   in Loop: Header=BB68_69 Depth=1
	movb	$1, %al
	movq	-136(%rbp), %rcx
	movzbl	(%rcx), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -176(%rbp)
	testb	$1, %al
	jne	.LBB68_116
	jmp	.LBB68_117
.LBB68_116:                             # %cond.true.461
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-176(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB68_118
	jmp	.LBB68_119
.LBB68_117:                             # %cond.false.465
                                        #   in Loop: Header=BB68_69 Depth=1
	movslq	-176(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB68_119
.LBB68_118:                             # %cond.true.470
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	$1, %eax
	movl	-176(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -169(%rbp)
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB68_130
.LBB68_119:                             # %cond.false.473
                                        #   in Loop: Header=BB68_69 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB68_120
	jmp	.LBB68_121
.LBB68_120:                             # %cond.true.474
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-176(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB68_122
	jmp	.LBB68_123
.LBB68_121:                             # %cond.false.478
                                        #   in Loop: Header=BB68_69 Depth=1
	movslq	-176(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB68_123
.LBB68_122:                             # %cond.true.483
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	$2, %eax
	movl	-176(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -169(%rbp)
	movl	-176(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -168(%rbp)
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB68_129
.LBB68_123:                             # %cond.false.491
                                        #   in Loop: Header=BB68_69 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB68_124
	jmp	.LBB68_125
.LBB68_124:                             # %cond.true.492
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-176(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB68_126
	jmp	.LBB68_127
.LBB68_125:                             # %cond.false.496
                                        #   in Loop: Header=BB68_69 Depth=1
	movslq	-176(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB68_127
.LBB68_126:                             # %cond.true.501
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	$3, %eax
	movl	-176(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -169(%rbp)
	movl	-176(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -168(%rbp)
	movl	-176(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -167(%rbp)
	movl	%eax, -412(%rbp)        # 4-byte Spill
	jmp	.LBB68_128
.LBB68_127:                             # %cond.false.515
                                        #   in Loop: Header=BB68_69 Depth=1
	leaq	-169(%rbp), %rsi
	movl	-176(%rbp), %edi
	callq	char_string
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB68_128:                             # %cond.end.517
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB68_129:                             # %cond.end.519
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB68_130:                             # %cond.end.521
                                        #   in Loop: Header=BB68_69 Depth=1
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)
	movb	-169(%rbp), %cl
	movq	-136(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	current_buffer, %rdi
	movq	-120(%rbp), %rdx
	addq	$1, %rdx
	movq	-120(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-424(%rbp), %rdx        # 8-byte Reload
	callq	temp_set_point_both
	movl	$1, %ecx
	xorl	%eax, %eax
	leaq	-169(%rbp), %rdx
	movl	-164(%rbp), %r8d
	addl	$-1, %r8d
	movl	%r8d, -164(%rbp)
	addq	$1, %rdx
	movslq	-164(%rbp), %rsi
	movslq	-164(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	insert_1_both
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -120(%rbp)
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	24(%rsi), %rdx
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	40(%rsi), %rdx
	addq	$-1, %rdx
	movq	%rdx, -136(%rbp)
	movq	-120(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	jg	.LBB68_132
# BB#131:                               # %if.then.544
                                        #   in Loop: Header=BB68_69 Depth=1
	movslq	-164(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB68_132:                             # %if.end.547
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB68_134
# BB#133:                               # %if.then.550
                                        #   in Loop: Header=BB68_69 Depth=1
	movslq	-164(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB68_134:                             # %if.end.553
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB68_136
# BB#135:                               # %if.then.556
                                        #   in Loop: Header=BB68_69 Depth=1
	movslq	-164(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB68_136:                             # %if.end.559
                                        #   in Loop: Header=BB68_69 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	32(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB68_137:                             # %if.end.571
                                        #   in Loop: Header=BB68_69 Depth=1
	jmp	.LBB68_138
.LBB68_138:                             # %if.end.572
                                        #   in Loop: Header=BB68_69 Depth=1
	jmp	.LBB68_69
.LBB68_139:                             # %while.end.573
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	je	.LBB68_141
# BB#140:                               # %if.then.578
	movq	current_buffer, %rdi
	movq	-112(%rbp), %rsi
	callq	temp_set_point
.LBB68_141:                             # %if.end.579
	testb	$1, -57(%rbp)
	je	.LBB68_143
# BB#142:                               # %if.then.581
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fnarrow_to_region
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB68_143:                             # %if.end.587
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_enable_multibyte_characters
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rdi
	callq	advance_to_char_boundary
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 24(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rdi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	chars_in_text
	addq	$1, %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	24(%rsi), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	40(%rsi), %rax
	addq	$-1, %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	subq	24(%rdi), %rsi
	movq	%rax, %rdi
	callq	chars_in_text
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	8(%rsi), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 16(%rsi)
	movq	current_buffer, %rax
	movq	760(%rax), %rdi
	callq	advance_to_char_boundary
	movq	current_buffer, %rsi
	movq	%rax, 760(%rsi)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	cmpq	24(%rsi), %rax
	jle	.LBB68_145
# BB#144:                               # %if.then.631
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
	movq	current_buffer, %rcx
	movq	760(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	subq	24(%rdx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	chars_in_text
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	%rax, 752(%rcx)
	jmp	.LBB68_146
.LBB68_145:                             # %if.else.650
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rdi
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	chars_in_text
	addq	$1, %rax
	movq	current_buffer, %rsi
	movq	%rax, 752(%rsi)
.LBB68_146:                             # %if.end.658
	movq	current_buffer, %rax
	movq	776(%rax), %rdi
	callq	advance_to_char_boundary
	movq	current_buffer, %rdi
	movq	%rax, 776(%rdi)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	cmpq	24(%rdi), %rax
	jle	.LBB68_148
# BB#147:                               # %if.then.667
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
	movq	current_buffer, %rcx
	movq	776(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	subq	24(%rdx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	chars_in_text
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	%rax, 768(%rcx)
	jmp	.LBB68_149
.LBB68_148:                             # %if.else.686
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rdi
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	chars_in_text
	addq	$1, %rax
	movq	current_buffer, %rsi
	movq	%rax, 768(%rsi)
.LBB68_149:                             # %if.end.694
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	advance_to_char_boundary
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	cmpq	24(%rdi), %rax
	jle	.LBB68_151
# BB#150:                               # %if.then.704
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
	movq	-184(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	subq	24(%rdx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	chars_in_text
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB68_152
.LBB68_151:                             # %if.else.721
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rdi
	movq	-184(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	chars_in_text
	addq	$1, %rax
	movq	%rax, -192(%rbp)
.LBB68_152:                             # %if.end.727
	movq	current_buffer, %rdi
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rdx
	callq	temp_set_point_both
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	$0, 128(%rdx)
.LBB68_153:                             # %for.cond.732
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB68_156
# BB#154:                               # %for.body.734
                                        #   in Loop: Header=BB68_153 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	advance_to_char_boundary
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	buf_bytepos_to_charpos
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
# BB#155:                               # %for.inc.741
                                        #   in Loop: Header=BB68_153 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB68_153
.LBB68_156:                             # %for.end.743
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 128(%rax)
	je	.LBB68_158
# BB#157:                               # %if.then.747
	callq	emacs_abort
.LBB68_158:                             # %if.end.748
	movl	$1, %edi
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 128(%rcx)
	callq	set_intervals_multibyte
.LBB68_159:                             # %if.end.751
	movl	$901, %edi              # imm = 0x385
	movq	-72(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_164
# BB#160:                               # %if.then.755
	movl	$175, %edi
	movq	current_buffer, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.26, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	intern
	xorl	%edi, %edi
	movq	-16(%rbp), %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_162
# BB#161:                               # %cond.true.761
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB68_163
.LBB68_162:                             # %cond.false.763
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB68_163:                             # %cond.end.765
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB68_164:                             # %if.end.769
	movq	current_buffer, %rax
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
	movq	current_buffer, %rdi
	callq	buffer_window_count
	cmpl	$0, %eax
	je	.LBB68_166
# BB#165:                               # %if.then.772
	movl	$10, windows_or_buffers_changed
.LBB68_166:                             # %if.end.773
	movq	all_buffers, %rax
	movq	%rax, -40(%rbp)
.LBB68_167:                             # %for.cond.774
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB68_173
# BB#168:                               # %for.body.776
                                        #   in Loop: Header=BB68_167 Depth=1
	movq	-40(%rbp), %rax
	movq	784(%rax), %rax
	cmpq	current_buffer, %rax
	jne	.LBB68_171
# BB#169:                               # %land.lhs.true.780
                                        #   in Loop: Header=BB68_167 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_171
# BB#170:                               # %if.then.784
                                        #   in Loop: Header=BB68_167 Depth=1
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 312(%rcx)
	movq	-40(%rbp), %rax
	movb	936(%rax), %dl
	andb	$-2, %dl
	orb	$1, %dl
	movb	%dl, 936(%rax)
.LBB68_171:                             # %if.end.791
                                        #   in Loop: Header=BB68_167 Depth=1
	jmp	.LBB68_172
.LBB68_172:                             # %for.inc.792
                                        #   in Loop: Header=BB68_167 Depth=1
	movq	-40(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB68_167
.LBB68_173:                             # %for.end.794
	testb	$1, -58(%rbp)
	jne	.LBB68_176
# BB#174:                               # %land.lhs.true.796
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fbuffer_modified_p
	xorl	%edi, %edi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_176
# BB#175:                               # %if.then.802
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fset_buffer_modified_p
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB68_176:                             # %if.end.805
	callq	Fcurrent_buffer
	movq	%rax, %rdi
	callq	Fget_buffer_process
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB68_177
	jmp	.LBB68_178
.LBB68_177:                             # %if.then.810
	movq	-200(%rbp), %rdi
	callq	setup_process_coding_systems
.LBB68_178:                             # %if.end.811
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB68_179:                             # %return
	movq	-8(%rbp), %rax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end68:
	.size	Fset_buffer_multibyte, .Lfunc_end68-Fset_buffer_multibyte
	.cfi_endproc

	.align	16, 0x90
	.type	advance_to_char_boundary,@function
advance_to_char_boundary:               # @advance_to_char_boundary
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
	movq	%rdi, -16(%rbp)
	cmpq	$1, -16(%rbp)
	jne	.LBB69_2
# BB#1:                                 # %if.then
	movq	$1, -8(%rbp)
	jmp	.LBB69_32
.LBB69_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB69_4
# BB#3:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB69_5
.LBB69_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB69_5
.LBB69_5:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	jne	.LBB69_31
# BB#6:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB69_7:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB69_9
# BB#8:                                 # %cond.true.12
                                        #   in Loop: Header=BB69_7 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB69_10
.LBB69_9:                               # %cond.false.15
                                        #   in Loop: Header=BB69_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB69_10
.LBB69_10:                              # %cond.end.16
                                        #   in Loop: Header=BB69_7 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -20(%rbp)
# BB#11:                                # %do.cond
                                        #   in Loop: Header=BB69_7 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB69_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB69_7 Depth=1
	cmpq	$1, -16(%rbp)
	setg	%al
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB69_13:                              # %land.end
                                        #   in Loop: Header=BB69_7 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB69_7
# BB#14:                                # %do.end
	jmp	.LBB69_15
.LBB69_15:                              # %do.body.29
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB69_17
# BB#16:                                # %cond.true.34
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB69_18
.LBB69_17:                              # %cond.false.37
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB69_18
.LBB69_18:                              # %cond.end.38
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB69_20
# BB#19:                                # %cond.true.47
	movl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB69_27
.LBB69_20:                              # %cond.false.48
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB69_22
# BB#21:                                # %cond.true.52
	movl	$2, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB69_26
.LBB69_22:                              # %cond.false.53
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB69_24
# BB#23:                                # %cond.true.57
	movl	$3, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB69_25
.LBB69_24:                              # %cond.false.58
	movl	$5, %eax
	movl	$4, %ecx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB69_25:                              # %cond.end.63
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB69_26:                              # %cond.end.65
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB69_27:                              # %cond.end.67
	movl	-76(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
# BB#28:                                # %do.end.72
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB69_30
# BB#29:                                # %if.then.75
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB69_30:                              # %if.end.76
	jmp	.LBB69_31
.LBB69_31:                              # %if.end.77
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB69_32:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end69:
	.size	advance_to_char_boundary, .Lfunc_end69-advance_to_char_boundary
	.cfi_endproc

	.globl	Fkill_all_local_variables
	.align	16, 0x90
	.type	Fkill_all_local_variables,@function
Fkill_all_local_variables:              # @Fkill_all_local_variables
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
	movl	$253, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	movq	current_buffer, %rdi
	callq	swap_out_buffer_local_variables
	xorl	%esi, %esi
	movq	current_buffer, %rdi
	callq	reset_buffer_local_variables
	xorl	%edi, %edi
	movl	$12, update_mode_lines
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end70:
	.size	Fkill_all_local_variables, .Lfunc_end70-Fkill_all_local_variables
	.cfi_endproc

	.globl	overlays_at
	.align	16, 0x90
	.type	overlays_at,@function
overlays_at:                            # @overlays_at
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
	subq	$224, %rsp
	movb	%sil, %al
	movb	16(%rbp), %r10b
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	andb	$1, %r10b
	movb	%r10b, -49(%rbp)
	movq	$0, -96(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -112(%rbp)
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movq	current_buffer, %rcx
	movq	752(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movb	$0, -129(%rbp)
	movq	current_buffer, %rcx
	movq	944(%rcx), %rcx
	movq	%rcx, -88(%rbp)
.LBB71_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB71_33
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$1, %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB71_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB71_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB71_6
.LBB71_5:                               # %cond.false
	callq	emacs_abort
.LBB71_6:                               # %cond.end
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	jge	.LBB71_10
# BB#7:                                 # %if.then
	movq	-128(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jge	.LBB71_9
# BB#8:                                 # %if.then.15
	movq	-152(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB71_9:                               # %if.end
	jmp	.LBB71_33
.LBB71_10:                              # %if.end.16
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB71_13
# BB#11:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB71_13
# BB#12:                                # %cond.true.25
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	marker_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB71_14
.LBB71_13:                              # %cond.false.27
	callq	emacs_abort
.LBB71_14:                              # %cond.end.28
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rcx
	cmpq	-144(%rbp), %rcx
	jge	.LBB71_17
# BB#15:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB71_17
# BB#16:                                # %if.then.35
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB71_17:                              # %if.end.36
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB71_19
# BB#18:                                # %if.then.39
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_32
.LBB71_19:                              # %if.end.40
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jg	.LBB71_28
# BB#20:                                # %if.then.43
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB71_25
# BB#21:                                # %if.then.46
                                        #   in Loop: Header=BB71_1 Depth=1
	testb	$1, -9(%rbp)
	je	.LBB71_23
# BB#22:                                # %if.then.48
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movabsq	$1152921504606846975, %rcx # imm = 0xFFFFFFFFFFFFFFF
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	callq	xpalloc
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB71_24
.LBB71_23:                              # %if.else
                                        #   in Loop: Header=BB71_1 Depth=1
	movb	$1, -129(%rbp)
.LBB71_24:                              # %if.end.50
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_25
.LBB71_25:                              # %if.end.51
                                        #   in Loop: Header=BB71_1 Depth=1
	testb	$1, -129(%rbp)
	jne	.LBB71_27
# BB#26:                                # %if.then.53
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB71_27:                              # %if.end.54
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB71_31
.LBB71_28:                              # %if.else.55
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB71_30
# BB#29:                                # %if.then.58
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB71_30:                              # %if.end.59
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_31
.LBB71_31:                              # %if.end.60
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_32
.LBB71_32:                              # %for.inc
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB71_1
.LBB71_33:                              # %for.end
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB71_34:                              # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB71_71
# BB#35:                                # %for.body.64
                                        #   in Loop: Header=BB71_34 Depth=1
	movl	$1, %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB71_38
# BB#36:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-72(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB71_38
# BB#37:                                # %cond.true.80
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-72(%rbp), %rdi
	callq	marker_position
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB71_39
.LBB71_38:                              # %cond.false.82
	callq	emacs_abort
.LBB71_39:                              # %cond.end.83
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	-160(%rbp), %rcx
	jge	.LBB71_43
# BB#40:                                # %if.then.87
	movq	-160(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB71_42
# BB#41:                                # %if.then.90
	movq	-160(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB71_42:                              # %if.end.91
	jmp	.LBB71_71
.LBB71_43:                              # %if.end.92
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB71_46
# BB#44:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB71_46
# BB#45:                                # %cond.true.101
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-80(%rbp), %rdi
	callq	marker_position
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB71_47
.LBB71_46:                              # %cond.false.103
	callq	emacs_abort
.LBB71_47:                              # %cond.end.104
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	-168(%rbp), %rcx
	jge	.LBB71_59
# BB#48:                                # %if.then.108
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB71_53
# BB#49:                                # %if.then.111
                                        #   in Loop: Header=BB71_34 Depth=1
	testb	$1, -9(%rbp)
	je	.LBB71_51
# BB#50:                                # %if.then.113
                                        #   in Loop: Header=BB71_34 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movabsq	$1152921504606846975, %rcx # imm = 0xFFFFFFFFFFFFFFF
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-216(%rbp), %rsi        # 8-byte Reload
	callq	xpalloc
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB71_52
.LBB71_51:                              # %if.else.115
                                        #   in Loop: Header=BB71_34 Depth=1
	movb	$1, -129(%rbp)
.LBB71_52:                              # %if.end.116
                                        #   in Loop: Header=BB71_34 Depth=1
	jmp	.LBB71_53
.LBB71_53:                              # %if.end.117
                                        #   in Loop: Header=BB71_34 Depth=1
	testb	$1, -129(%rbp)
	jne	.LBB71_55
# BB#54:                                # %if.then.119
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB71_55:                              # %if.end.121
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-160(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB71_58
# BB#56:                                # %land.lhs.true.125
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-160(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jle	.LBB71_58
# BB#57:                                # %if.then.128
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB71_58:                              # %if.end.129
                                        #   in Loop: Header=BB71_34 Depth=1
	jmp	.LBB71_69
.LBB71_59:                              # %if.else.130
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-168(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB71_62
# BB#60:                                # %land.lhs.true.133
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-168(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jle	.LBB71_62
# BB#61:                                # %if.then.136
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB71_68
.LBB71_62:                              # %if.else.137
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-168(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB71_67
# BB#63:                                # %land.lhs.true.140
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-160(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jle	.LBB71_67
# BB#64:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB71_34 Depth=1
	testb	$1, -49(%rbp)
	je	.LBB71_66
# BB#65:                                # %lor.lhs.false
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-160(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB71_67
.LBB71_66:                              # %if.then.147
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB71_67:                              # %if.end.148
                                        #   in Loop: Header=BB71_34 Depth=1
	jmp	.LBB71_68
.LBB71_68:                              # %if.end.149
                                        #   in Loop: Header=BB71_34 Depth=1
	jmp	.LBB71_69
.LBB71_69:                              # %if.end.150
                                        #   in Loop: Header=BB71_34 Depth=1
	jmp	.LBB71_70
.LBB71_70:                              # %for.inc.151
                                        #   in Loop: Header=BB71_34 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB71_34
.LBB71_71:                              # %for.end.153
	cmpq	$0, -40(%rbp)
	je	.LBB71_73
# BB#72:                                # %if.then.155
	movq	-120(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB71_73:                              # %if.end.156
	cmpq	$0, -48(%rbp)
	je	.LBB71_75
# BB#74:                                # %if.then.158
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB71_75:                              # %if.end.159
	movq	-96(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	overlays_at, .Lfunc_end71-overlays_at
	.cfi_endproc

	.globl	mouse_face_overlay_overlaps
	.align	16, 0x90
	.type	mouse_face_overlay_overlaps,@function
mouse_face_overlay_overlaps:            # @mouse_face_overlay_overlaps
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB72_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB72_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB72_4
.LBB72_3:                               # %cond.false
	callq	emacs_abort
.LBB72_4:                               # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB72_7
# BB#5:                                 # %land.lhs.true.17
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB72_7
# BB#6:                                 # %cond.true.23
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB72_8
.LBB72_7:                               # %cond.false.27
	callq	emacs_abort
.LBB72_8:                               # %cond.end.28
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	$16384, -152(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %r9d
	leaq	-144(%rbp), %rdi
	movq	%rax, -160(%rbp)
	movb	$0, -161(%rbp)
	movq	$10, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	subq	$16, %rsp
	movq	$0, (%rsp)
	callq	overlays_in
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB72_15
# BB#9:                                 # %if.then
	jmp	.LBB72_10
.LBB72_10:                              # %do.body
	movq	-32(%rbp), %rax
	movq	-152(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB72_12
# BB#11:                                # %if.then.37
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	-152(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -152(%rbp)
	movq	-32(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	jmp	.LBB72_13
.LBB72_12:                              # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -56(%rbp)
	movb	$1, -161(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB72_13:                              # %if.end
	jmp	.LBB72_14
.LBB72_14:                              # %do.end
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	leaq	-32(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	subq	$16, %rsp
	movq	$0, (%rsp)
	callq	overlays_in
	addq	$16, %rsp
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB72_15:                              # %if.end.41
	movq	$0, -40(%rbp)
.LBB72_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB72_22
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB72_16 Depth=1
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB72_20
# BB#18:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB72_16 Depth=1
	movl	$687, %edi              # imm = 0x2AF
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB72_19
	jmp	.LBB72_20
.LBB72_19:                              # %if.then.52
	jmp	.LBB72_22
.LBB72_20:                              # %if.end.53
                                        #   in Loop: Header=BB72_16 Depth=1
	jmp	.LBB72_21
.LBB72_21:                              # %for.inc
                                        #   in Loop: Header=BB72_16 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB72_16
.LBB72_22:                              # %for.end
	jmp	.LBB72_23
.LBB72_23:                              # %do.body.54
	testb	$1, -161(%rbp)
	je	.LBB72_25
# BB#24:                                # %if.then.55
	xorl	%edi, %edi
	movb	$0, -161(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB72_25:                              # %if.end.58
	jmp	.LBB72_26
.LBB72_26:                              # %do.end.59
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	mouse_face_overlay_overlaps, .Lfunc_end72-mouse_face_overlay_overlaps
	.cfi_endproc

	.align	16, 0x90
	.type	overlays_in,@function
overlays_in:                            # @overlays_in
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
	subq	$224, %rsp
	movb	%dl, %al
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	$0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -112(%rbp)
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movq	current_buffer, %rcx
	movq	752(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movb	$0, -129(%rbp)
	movq	-16(%rbp), %rcx
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	cmpq	16(%rsi), %rcx
	sete	%al
	andb	$1, %al
	movb	%al, -130(%rbp)
	movq	current_buffer, %rcx
	movq	944(%rcx), %rcx
	movq	%rcx, -88(%rbp)
.LBB73_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB73_33
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB73_1 Depth=1
	movl	$1, %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB73_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB73_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB73_6
.LBB73_5:                               # %cond.false
	callq	emacs_abort
.LBB73_6:                               # %cond.end
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	jge	.LBB73_10
# BB#7:                                 # %if.then
	movq	-128(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jge	.LBB73_9
# BB#8:                                 # %if.then.15
	movq	-152(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB73_9:                               # %if.end
	jmp	.LBB73_33
.LBB73_10:                              # %if.end.16
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB73_13
# BB#11:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB73_13
# BB#12:                                # %cond.true.25
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	marker_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB73_14
.LBB73_13:                              # %cond.false.27
	callq	emacs_abort
.LBB73_14:                              # %cond.end.28
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	-152(%rbp), %rcx
	jge	.LBB73_16
# BB#15:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.LBB73_20
.LBB73_16:                              # %lor.lhs.false
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB73_28
# BB#17:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB73_20
# BB#18:                                # %lor.lhs.false.40
                                        #   in Loop: Header=BB73_1 Depth=1
	testb	$1, -130(%rbp)
	je	.LBB73_28
# BB#19:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB73_28
.LBB73_20:                              # %if.then.46
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB73_25
# BB#21:                                # %if.then.49
                                        #   in Loop: Header=BB73_1 Depth=1
	testb	$1, -17(%rbp)
	je	.LBB73_23
# BB#22:                                # %if.then.51
                                        #   in Loop: Header=BB73_1 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movabsq	$1152921504606846975, %rcx # imm = 0xFFFFFFFFFFFFFFF
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	callq	xpalloc
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB73_24
.LBB73_23:                              # %if.else
                                        #   in Loop: Header=BB73_1 Depth=1
	movb	$1, -129(%rbp)
.LBB73_24:                              # %if.end.53
                                        #   in Loop: Header=BB73_1 Depth=1
	jmp	.LBB73_25
.LBB73_25:                              # %if.end.54
                                        #   in Loop: Header=BB73_1 Depth=1
	testb	$1, -129(%rbp)
	jne	.LBB73_27
# BB#26:                                # %if.then.56
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB73_27:                              # %if.end.57
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB73_31
.LBB73_28:                              # %if.else.58
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB73_30
# BB#29:                                # %if.then.61
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB73_30:                              # %if.end.62
                                        #   in Loop: Header=BB73_1 Depth=1
	jmp	.LBB73_31
.LBB73_31:                              # %if.end.63
                                        #   in Loop: Header=BB73_1 Depth=1
	jmp	.LBB73_32
.LBB73_32:                              # %for.inc
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB73_1
.LBB73_33:                              # %for.end
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB73_34:                              # %for.cond.65
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB73_67
# BB#35:                                # %for.body.67
                                        #   in Loop: Header=BB73_34 Depth=1
	movl	$1, %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB73_38
# BB#36:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-72(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB73_38
# BB#37:                                # %cond.true.83
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-72(%rbp), %rdi
	callq	marker_position
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB73_39
.LBB73_38:                              # %cond.false.85
	callq	emacs_abort
.LBB73_39:                              # %cond.end.86
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	-160(%rbp), %rcx
	jge	.LBB73_43
# BB#40:                                # %if.then.90
	movq	-160(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB73_42
# BB#41:                                # %if.then.93
	movq	-160(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB73_42:                              # %if.end.94
	jmp	.LBB73_67
.LBB73_43:                              # %if.end.95
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB73_46
# BB#44:                                # %land.lhs.true.100
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB73_46
# BB#45:                                # %cond.true.104
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-80(%rbp), %rdi
	callq	marker_position
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB73_47
.LBB73_46:                              # %cond.false.106
	callq	emacs_abort
.LBB73_47:                              # %cond.end.107
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	-168(%rbp), %rcx
	jge	.LBB73_49
# BB#48:                                # %land.lhs.true.111
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-160(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.LBB73_53
.LBB73_49:                              # %lor.lhs.false.114
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-160(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB73_61
# BB#50:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-168(%rbp), %rax
	je	.LBB73_53
# BB#51:                                # %lor.lhs.false.120
                                        #   in Loop: Header=BB73_34 Depth=1
	testb	$1, -130(%rbp)
	je	.LBB73_61
# BB#52:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-168(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB73_61
.LBB73_53:                              # %if.then.126
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB73_58
# BB#54:                                # %if.then.129
                                        #   in Loop: Header=BB73_34 Depth=1
	testb	$1, -17(%rbp)
	je	.LBB73_56
# BB#55:                                # %if.then.131
                                        #   in Loop: Header=BB73_34 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movabsq	$1152921504606846975, %rcx # imm = 0xFFFFFFFFFFFFFFF
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-216(%rbp), %rsi        # 8-byte Reload
	callq	xpalloc
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB73_57
.LBB73_56:                              # %if.else.133
                                        #   in Loop: Header=BB73_34 Depth=1
	movb	$1, -129(%rbp)
.LBB73_57:                              # %if.end.134
                                        #   in Loop: Header=BB73_34 Depth=1
	jmp	.LBB73_58
.LBB73_58:                              # %if.end.135
                                        #   in Loop: Header=BB73_34 Depth=1
	testb	$1, -129(%rbp)
	jne	.LBB73_60
# BB#59:                                # %if.then.137
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB73_60:                              # %if.end.139
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB73_65
.LBB73_61:                              # %if.else.141
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-168(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB73_64
# BB#62:                                # %land.lhs.true.144
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-168(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jle	.LBB73_64
# BB#63:                                # %if.then.147
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB73_64:                              # %if.end.148
                                        #   in Loop: Header=BB73_34 Depth=1
	jmp	.LBB73_65
.LBB73_65:                              # %if.end.149
                                        #   in Loop: Header=BB73_34 Depth=1
	jmp	.LBB73_66
.LBB73_66:                              # %for.inc.150
                                        #   in Loop: Header=BB73_34 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB73_34
.LBB73_67:                              # %for.end.152
	cmpq	$0, -48(%rbp)
	je	.LBB73_69
# BB#68:                                # %if.then.154
	movq	-120(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB73_69:                              # %if.end.155
	cmpq	$0, -56(%rbp)
	je	.LBB73_71
# BB#70:                                # %if.then.157
	movq	-128(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB73_71:                              # %if.end.158
	movq	-96(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	overlays_in, .Lfunc_end73-overlays_in
	.cfi_endproc

	.globl	Foverlay_get
	.align	16, 0x90
	.type	Foverlay_get,@function
Foverlay_get:                           # @Foverlay_get
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_OVERLAY
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	xorl	%edx, %edx
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	lookup_char_property
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	Foverlay_get, .Lfunc_end74-Foverlay_get
	.cfi_endproc

	.globl	overlay_touches_p
	.align	16, 0x90
	.type	overlay_touches_p,@function
overlay_touches_p:                      # @overlay_touches_p
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	current_buffer, %rdi
	movq	944(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB75_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB75_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB75_1 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB75_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB75_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB75_6
.LBB75_5:                               # %cond.false
	callq	emacs_abort
.LBB75_6:                               # %cond.end
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	jge	.LBB75_8
# BB#7:                                 # %if.then
	jmp	.LBB75_17
.LBB75_8:                               # %if.end
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB75_14
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB75_12
# BB#10:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB75_12
# BB#11:                                # %cond.true.26
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB75_13
.LBB75_12:                              # %cond.false.30
	callq	emacs_abort
.LBB75_13:                              # %cond.end.31
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpq	-16(%rbp), %rax
	jne	.LBB75_15
.LBB75_14:                              # %if.then.35
	movb	$1, -1(%rbp)
	jmp	.LBB75_35
.LBB75_15:                              # %if.end.36
                                        #   in Loop: Header=BB75_1 Depth=1
	jmp	.LBB75_16
.LBB75_16:                              # %for.inc
                                        #   in Loop: Header=BB75_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB75_1
.LBB75_17:                              # %for.end
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB75_18:                              # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB75_34
# BB#19:                                # %for.body.39
                                        #   in Loop: Header=BB75_18 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB75_22
# BB#20:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB75_22
# BB#21:                                # %cond.true.53
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB75_23
.LBB75_22:                              # %cond.false.57
	callq	emacs_abort
.LBB75_23:                              # %cond.end.58
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	jge	.LBB75_25
# BB#24:                                # %if.then.62
	jmp	.LBB75_34
.LBB75_25:                              # %if.end.63
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB75_31
# BB#26:                                # %lor.lhs.false.66
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB75_29
# BB#27:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB75_29
# BB#28:                                # %cond.true.79
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB75_30
.LBB75_29:                              # %cond.false.83
	callq	emacs_abort
.LBB75_30:                              # %cond.end.84
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpq	-16(%rbp), %rax
	jne	.LBB75_32
.LBB75_31:                              # %if.then.88
	movb	$1, -1(%rbp)
	jmp	.LBB75_35
.LBB75_32:                              # %if.end.89
                                        #   in Loop: Header=BB75_18 Depth=1
	jmp	.LBB75_33
.LBB75_33:                              # %for.inc.90
                                        #   in Loop: Header=BB75_18 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB75_18
.LBB75_34:                              # %for.end.92
	movb	$0, -1(%rbp)
.LBB75_35:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	overlay_touches_p, .Lfunc_end75-overlay_touches_p
	.cfi_endproc

	.globl	sort_overlays
	.align	16, 0x90
	.type	sort_overlays,@function
sort_overlays:                          # @sort_overlays
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
# BB#1:                                 # %do.body
	movl	$40, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	xorl	%esi, %esi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	divq	%rcx
	shrq	$0, %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB76_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -72(%rbp)
	jmp	.LBB76_4
.LBB76_3:                               # %if.else
	movl	$40, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -72(%rbp)
	movb	$1, -57(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB76_4:                               # %if.end
	jmp	.LBB76_5
.LBB76_5:                               # %do.end
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB76_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB76_48
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	OVERLAYP
	testb	$1, %al
	jne	.LBB76_8
	jmp	.LBB76_46
.LBB76_8:                               # %land.lhs.true
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB76_11
# BB#9:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB76_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB76_12
.LBB76_11:                              # %cond.false
	callq	emacs_abort
.LBB76_12:                              # %cond.end
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jle	.LBB76_46
# BB#13:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB76_16
# BB#14:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB76_16
# BB#15:                                # %cond.true.32
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB76_17
.LBB76_16:                              # %cond.false.36
	callq	emacs_abort
.LBB76_17:                              # %cond.end.37
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jle	.LBB76_46
# BB#18:                                # %if.then.41
                                        #   in Loop: Header=BB76_6 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB76_23
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB76_6 Depth=1
	movl	$1018, %edi             # imm = 0x3FA
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB76_20
	jmp	.LBB76_22
.LBB76_20:                              # %land.lhs.true.47
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-96(%rbp), %rdi
	callq	XWINDOW
	cmpq	-24(%rbp), %rax
	je	.LBB76_22
# BB#21:                                # %if.then.51
                                        #   in Loop: Header=BB76_6 Depth=1
	jmp	.LBB76_47
.LBB76_22:                              # %if.end.52
                                        #   in Loop: Header=BB76_6 Depth=1
	jmp	.LBB76_23
.LBB76_23:                              # %if.end.53
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$1, %edx
	jne	.LBB76_26
# BB#24:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB76_26
# BB#25:                                # %cond.true.68
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB76_27
.LBB76_26:                              # %cond.false.72
	callq	emacs_abort
.LBB76_27:                              # %cond.end.73
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-40(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$1, %edx
	jne	.LBB76_30
# BB#28:                                # %land.lhs.true.82
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB76_30
# BB#29:                                # %cond.true.88
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-88(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB76_31
.LBB76_30:                              # %cond.false.92
	callq	emacs_abort
.LBB76_31:                              # %cond.end.93
                                        #   in Loop: Header=BB76_6 Depth=1
	movl	$773, %edi              # imm = 0x305
	movq	-40(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 16(%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB76_33
# BB#32:                                # %if.then.102
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-40(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.LBB76_45
.LBB76_33:                              # %if.else.105
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB76_35
# BB#34:                                # %if.then.111
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.LBB76_44
.LBB76_35:                              # %if.else.116
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB76_43
# BB#36:                                # %if.then.121
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB76_38
# BB#37:                                # %cond.true.131
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB76_39
.LBB76_38:                              # %cond.false.133
                                        #   in Loop: Header=BB76_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB76_39
.LBB76_39:                              # %cond.end.134
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB76_41
# BB#40:                                # %cond.true.143
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-112(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB76_42
.LBB76_41:                              # %cond.false.145
                                        #   in Loop: Header=BB76_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB76_42
.LBB76_42:                              # %cond.end.146
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB76_43:                              # %if.end.150
                                        #   in Loop: Header=BB76_6 Depth=1
	jmp	.LBB76_44
.LBB76_44:                              # %if.end.151
                                        #   in Loop: Header=BB76_6 Depth=1
	jmp	.LBB76_45
.LBB76_45:                              # %if.end.152
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB76_46:                              # %if.end.153
                                        #   in Loop: Header=BB76_6 Depth=1
	jmp	.LBB76_47
.LBB76_47:                              # %for.inc
                                        #   in Loop: Header=BB76_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB76_6
.LBB76_48:                              # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$1, -16(%rbp)
	jle	.LBB76_50
# BB#49:                                # %if.then.157
	movl	$40, %eax
	movl	%eax, %edx
	movabsq	$compare_overlays, %rcx
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-200(%rbp), %rsi        # 8-byte Reload
	callq	qsort
.LBB76_50:                              # %if.end.158
	movq	$0, -32(%rbp)
.LBB76_51:                              # %for.cond.159
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB76_54
# BB#52:                                # %for.body.162
                                        #   in Loop: Header=BB76_51 Depth=1
	movq	-32(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#53:                                # %for.inc.166
                                        #   in Loop: Header=BB76_51 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB76_51
.LBB76_54:                              # %for.end.168
	jmp	.LBB76_55
.LBB76_55:                              # %do.body.169
	testb	$1, -57(%rbp)
	je	.LBB76_57
# BB#56:                                # %if.then.171
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB76_57:                              # %if.end.174
	jmp	.LBB76_58
.LBB76_58:                              # %do.end.175
	movq	-16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	sort_overlays, .Lfunc_end76-sort_overlays
	.cfi_endproc

	.align	16, 0x90
	.type	compare_overlays,@function
compare_overlays:                       # @compare_overlays
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	-40(%rbp), %rdi
	cmpq	24(%rdi), %rsi
	je	.LBB77_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-40(%rbp), %rsi
	cmpq	24(%rsi), %rdx
	cmovll	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB77_17
.LBB77_2:                               # %if.else
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB77_6
# BB#3:                                 # %if.then.7
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-40(%rbp), %rsi
	cmpq	16(%rsi), %rdx
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jge	.LBB77_5
# BB#4:                                 # %land.rhs
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	32(%rcx), %rax
	setg	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB77_5:                               # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB77_17
.LBB77_6:                               # %if.else.13
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB77_10
# BB#7:                                 # %if.then.17
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-40(%rbp), %rsi
	cmpq	16(%rsi), %rdx
	movb	%cl, -42(%rbp)          # 1-byte Spill
	jle	.LBB77_9
# BB#8:                                 # %land.rhs.21
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	32(%rcx), %rax
	setl	%dl
	movb	%dl, -42(%rbp)          # 1-byte Spill
.LBB77_9:                               # %land.end.25
	movb	-42(%rbp), %al          # 1-byte Reload
	movl	$1, %ecx
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB77_17
.LBB77_10:                              # %if.else.27
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB77_12
# BB#11:                                # %if.then.31
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-32(%rbp), %rsi
	cmpq	16(%rsi), %rdx
	cmovll	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB77_17
.LBB77_12:                              # %if.else.36
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	32(%rcx), %rax
	je	.LBB77_14
# BB#13:                                # %if.then.40
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-40(%rbp), %rsi
	cmpq	32(%rsi), %rdx
	cmovll	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB77_17
.LBB77_14:                              # %if.else.45
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB77_16
# BB#15:                                # %if.then.48
	movl	$0, -4(%rbp)
	jmp	.LBB77_17
.LBB77_16:                              # %if.else.49
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-40(%rbp), %rsi
	cmpq	(%rsi), %rdx
	cmovll	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB77_17:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end77:
	.size	compare_overlays, .Lfunc_end77-compare_overlays
	.cfi_endproc

	.globl	overlay_strings
	.align	16, 0x90
	.type	overlay_strings,@function
overlay_strings:                        # @overlay_strings
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
	subq	$880, %rsp              # imm = 0x370
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	current_buffer, %rdx
	movq	312(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -81(%rbp)
	movq	$0, overlay_heads+24
	movq	$0, overlay_heads+16
	movq	$0, overlay_tails+24
	movq	$0, overlay_tails+16
	movq	current_buffer, %rax
	movq	944(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB78_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB78_30
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$1, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB78_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB78_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB78_6
.LBB78_5:                               # %cond.false
	callq	emacs_abort
.LBB78_6:                               # %cond.end
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB78_9
# BB#7:                                 # %land.lhs.true.18
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB78_9
# BB#8:                                 # %cond.true.24
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB78_10
.LBB78_9:                               # %cond.false.28
	callq	emacs_abort
.LBB78_10:                              # %cond.end.29
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	jge	.LBB78_12
# BB#11:                                # %if.then
	jmp	.LBB78_30
.LBB78_12:                              # %if.end
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB78_15
# BB#13:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB78_15
# BB#14:                                # %if.then.38
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_29
.LBB78_15:                              # %if.end.39
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$1018, %edi             # imm = 0x3FA
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB78_16
	jmp	.LBB78_18
.LBB78_16:                              # %land.lhs.true.44
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	cmpq	-24(%rbp), %rax
	je	.LBB78_18
# BB#17:                                # %if.then.48
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_29
.LBB78_18:                              # %if.end.49
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB78_24
# BB#19:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$199, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB78_20
	jmp	.LBB78_24
.LBB78_20:                              # %if.then.57
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	jne	.LBB78_22
# BB#21:                                # %cond.true.60
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$168, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB78_23
.LBB78_22:                              # %cond.false.63
                                        #   in Loop: Header=BB78_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB78_23:                              # %cond.end.65
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$773, %edi              # imm = 0x305
	movq	-40(%rbp), %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movabsq	$overlay_heads, %rdi
	movq	-80(%rbp), %rcx
	subq	-72(%rbp), %rcx
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-224(%rbp), %r8         # 8-byte Reload
	callq	record_overlay_string
	jmp	.LBB78_28
.LBB78_24:                              # %if.else
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB78_27
# BB#25:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$168, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB78_26
	jmp	.LBB78_27
.LBB78_26:                              # %if.then.76
                                        #   in Loop: Header=BB78_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$773, %edi              # imm = 0x305
	movq	-40(%rbp), %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movabsq	$overlay_tails, %rdi
	movq	-80(%rbp), %rsi
	subq	-72(%rbp), %rsi
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-264(%rbp), %r8         # 8-byte Reload
	callq	record_overlay_string
.LBB78_27:                              # %if.end.81
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_28
.LBB78_28:                              # %if.end.82
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_29
.LBB78_29:                              # %for.inc
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_1
.LBB78_30:                              # %for.end
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB78_31:                              # %for.cond.83
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB78_60
# BB#32:                                # %for.body.85
                                        #   in Loop: Header=BB78_31 Depth=1
	movl	$1, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB78_35
# BB#33:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB78_35
# BB#34:                                # %cond.true.99
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB78_36
.LBB78_35:                              # %cond.false.103
	callq	emacs_abort
.LBB78_36:                              # %cond.end.104
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB78_39
# BB#37:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB78_39
# BB#38:                                # %cond.true.118
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB78_40
.LBB78_39:                              # %cond.false.122
	callq	emacs_abort
.LBB78_40:                              # %cond.end.123
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	jle	.LBB78_42
# BB#41:                                # %if.then.127
	jmp	.LBB78_60
.LBB78_42:                              # %if.end.128
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB78_45
# BB#43:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB78_45
# BB#44:                                # %if.then.134
                                        #   in Loop: Header=BB78_31 Depth=1
	jmp	.LBB78_59
.LBB78_45:                              # %if.end.135
                                        #   in Loop: Header=BB78_31 Depth=1
	movl	$1018, %edi             # imm = 0x3FA
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB78_46
	jmp	.LBB78_48
.LBB78_46:                              # %land.lhs.true.140
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	cmpq	-24(%rbp), %rax
	je	.LBB78_48
# BB#47:                                # %if.then.144
                                        #   in Loop: Header=BB78_31 Depth=1
	jmp	.LBB78_59
.LBB78_48:                              # %if.end.145
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB78_54
# BB#49:                                # %land.lhs.true.148
                                        #   in Loop: Header=BB78_31 Depth=1
	movl	$199, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB78_50
	jmp	.LBB78_54
.LBB78_50:                              # %if.then.153
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	jne	.LBB78_52
# BB#51:                                # %cond.true.156
                                        #   in Loop: Header=BB78_31 Depth=1
	movl	$168, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB78_53
.LBB78_52:                              # %cond.false.159
                                        #   in Loop: Header=BB78_31 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB78_53:                              # %cond.end.161
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movl	$773, %edi              # imm = 0x305
	movq	-40(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movabsq	$overlay_heads, %rdi
	movq	-80(%rbp), %rcx
	subq	-72(%rbp), %rcx
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-344(%rbp), %r8         # 8-byte Reload
	callq	record_overlay_string
	jmp	.LBB78_58
.LBB78_54:                              # %if.else.166
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB78_57
# BB#55:                                # %land.lhs.true.169
                                        #   in Loop: Header=BB78_31 Depth=1
	movl	$168, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB78_56
	jmp	.LBB78_57
.LBB78_56:                              # %if.then.174
                                        #   in Loop: Header=BB78_31 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$773, %edi              # imm = 0x305
	movq	-40(%rbp), %rsi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	movabsq	$overlay_tails, %rdi
	movq	-80(%rbp), %rsi
	subq	-72(%rbp), %rsi
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-384(%rbp), %r8         # 8-byte Reload
	callq	record_overlay_string
.LBB78_57:                              # %if.end.179
                                        #   in Loop: Header=BB78_31 Depth=1
	jmp	.LBB78_58
.LBB78_58:                              # %if.end.180
                                        #   in Loop: Header=BB78_31 Depth=1
	jmp	.LBB78_59
.LBB78_59:                              # %for.inc.181
                                        #   in Loop: Header=BB78_31 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_31
.LBB78_60:                              # %for.end.183
	cmpq	$1, overlay_tails+16
	jle	.LBB78_62
# BB#61:                                # %if.then.186
	movl	$32, %eax
	movl	%eax, %edx
	movabsq	$cmp_for_strings, %rcx
	movq	overlay_tails, %rsi
	movq	overlay_tails+16, %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-392(%rbp), %rsi        # 8-byte Reload
	callq	qsort
.LBB78_62:                              # %if.end.187
	cmpq	$1, overlay_heads+16
	jle	.LBB78_64
# BB#63:                                # %if.then.190
	movl	$32, %eax
	movl	%eax, %edx
	movabsq	$cmp_for_strings, %rcx
	movq	overlay_heads, %rsi
	movq	overlay_heads+16, %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-400(%rbp), %rsi        # 8-byte Reload
	callq	qsort
.LBB78_64:                              # %if.end.191
	cmpq	$0, overlay_heads+24
	jne	.LBB78_66
# BB#65:                                # %lor.lhs.false
	cmpq	$0, overlay_tails+24
	je	.LBB78_382
.LBB78_66:                              # %if.then.194
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB78_67
	jmp	.LBB78_126
.LBB78_67:                              # %cond.true.195
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB78_68
	jmp	.LBB78_97
.LBB78_68:                              # %cond.true.196
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB78_70
# BB#69:                                # %cond.true.205
	xorl	%eax, %eax
	movq	overlay_tails+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	overlay_tails+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB78_71
.LBB78_70:                              # %cond.false.229
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -404(%rbp)        # 4-byte Spill
.LBB78_71:                              # %cond.end.238
	movl	-404(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB78_81
# BB#72:                                # %cond.true.242
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB78_77
# BB#73:                                # %cond.true.247
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -408(%rbp)        # 4-byte Spill
	jge	.LBB78_75
# BB#74:                                # %cond.true.260
	xorl	%eax, %eax
	movq	overlay_tails+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	overlay_tails+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -412(%rbp)        # 4-byte Spill
	jmp	.LBB78_76
.LBB78_75:                              # %cond.false.286
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -412(%rbp)        # 4-byte Spill
.LBB78_76:                              # %cond.end.295
	movl	-412(%rbp), %eax        # 4-byte Reload
	movq	overlay_tails+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-408(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB78_89
	jmp	.LBB78_86
.LBB78_77:                              # %cond.false.302
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB78_79
# BB#78:                                # %cond.true.313
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -416(%rbp)        # 4-byte Spill
	jmp	.LBB78_80
.LBB78_79:                              # %cond.false.326
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -416(%rbp)        # 4-byte Spill
.LBB78_80:                              # %cond.end.335
	movl	-416(%rbp), %eax        # 4-byte Reload
	movq	overlay_tails+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	overlay_heads+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB78_89
	jmp	.LBB78_86
.LBB78_81:                              # %cond.false.344
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB78_83
# BB#82:                                # %cond.true.349
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB78_89
	jmp	.LBB78_86
.LBB78_83:                              # %cond.false.359
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB78_85
# BB#84:                                # %cond.true.364
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB78_89
	jmp	.LBB78_86
.LBB78_85:                              # %cond.false.374
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB78_89
.LBB78_86:                              # %lor.lhs.false.384
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB78_88
# BB#87:                                # %land.lhs.true.394
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB78_89
.LBB78_88:                              # %lor.lhs.false.402
	movl	$127, %eax
	movq	overlay_heads+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	overlay_tails+24, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB78_93
.LBB78_89:                              # %cond.true.410
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB78_91
# BB#90:                                # %cond.true.418
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB78_92
.LBB78_91:                              # %cond.false.426
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
.LBB78_92:                              # %cond.end.436
	movl	-420(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_93:                              # %cond.false.439
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB78_95
# BB#94:                                # %cond.true.447
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB78_96
.LBB78_95:                              # %cond.false.455
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -424(%rbp)        # 4-byte Spill
.LBB78_96:                              # %cond.end.465
	movl	-424(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_97:                              # %cond.false.468
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_99
# BB#98:                                # %cond.true.475
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB78_100
.LBB78_99:                              # %cond.false.494
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB78_100:                             # %cond.end.499
	movq	-432(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB78_110
# BB#101:                               # %cond.true.503
	cmpq	$0, overlay_tails+24
	jge	.LBB78_106
# BB#102:                               # %cond.true.506
	movq	overlay_heads+24, %rax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB78_104
# BB#103:                               # %cond.true.513
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB78_105
.LBB78_104:                             # %cond.false.532
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB78_105:                             # %cond.end.537
	movq	-448(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB78_118
	jmp	.LBB78_115
.LBB78_106:                             # %cond.false.542
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_108
# BB#107:                               # %cond.true.549
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB78_109
.LBB78_108:                             # %cond.false.558
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB78_109:                             # %cond.end.563
	movq	-456(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	cmpq	overlay_heads+24, %rax
	jl	.LBB78_118
	jmp	.LBB78_115
.LBB78_110:                             # %cond.false.568
	cmpq	$0, overlay_heads+24
	jge	.LBB78_112
# BB#111:                               # %cond.true.571
	movq	overlay_tails+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_118
	jmp	.LBB78_115
.LBB78_112:                             # %cond.false.575
	cmpq	$0, overlay_tails+24
	jge	.LBB78_114
# BB#113:                               # %cond.true.578
	movq	overlay_heads+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_118
	jmp	.LBB78_115
.LBB78_114:                             # %cond.false.582
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	overlay_tails+24, %rax
	jl	.LBB78_118
.LBB78_115:                             # %lor.lhs.false.586
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_117
# BB#116:                               # %land.lhs.true.592
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	$-128, %rax
	jl	.LBB78_118
.LBB78_117:                             # %lor.lhs.false.596
	movl	$127, %eax
	movl	%eax, %ecx
	movq	overlay_heads+24, %rdx
	addq	overlay_tails+24, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB78_122
.LBB78_118:                             # %cond.true.600
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB78_120
# BB#119:                               # %cond.true.608
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -460(%rbp)        # 4-byte Spill
	jmp	.LBB78_121
.LBB78_120:                             # %cond.false.616
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -460(%rbp)        # 4-byte Spill
.LBB78_121:                             # %cond.end.626
	movl	-460(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_122:                             # %cond.false.629
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB78_124
# BB#123:                               # %cond.true.637
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -464(%rbp)        # 4-byte Spill
	jmp	.LBB78_125
.LBB78_124:                             # %cond.false.645
	movq	overlay_heads+24, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	overlay_tails+24, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -464(%rbp)        # 4-byte Spill
.LBB78_125:                             # %cond.end.655
	movl	-464(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_126:                             # %cond.false.658
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB78_127
	jmp	.LBB78_186
.LBB78_127:                             # %cond.true.659
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB78_128
	jmp	.LBB78_157
.LBB78_128:                             # %cond.true.660
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB78_130
# BB#129:                               # %cond.true.671
	xorl	%eax, %eax
	movq	overlay_tails+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	overlay_tails+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB78_131
.LBB78_130:                             # %cond.false.697
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -468(%rbp)        # 4-byte Spill
.LBB78_131:                             # %cond.end.706
	movl	-468(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB78_141
# BB#132:                               # %cond.true.710
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB78_137
# BB#133:                               # %cond.true.715
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -472(%rbp)        # 4-byte Spill
	jge	.LBB78_135
# BB#134:                               # %cond.true.728
	xorl	%eax, %eax
	movq	overlay_tails+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	overlay_tails+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	overlay_heads+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB78_136
.LBB78_135:                             # %cond.false.754
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -476(%rbp)        # 4-byte Spill
.LBB78_136:                             # %cond.end.763
	movl	-476(%rbp), %eax        # 4-byte Reload
	movq	overlay_tails+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-472(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB78_149
	jmp	.LBB78_146
.LBB78_137:                             # %cond.false.770
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB78_139
# BB#138:                               # %cond.true.781
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -480(%rbp)        # 4-byte Spill
	jmp	.LBB78_140
.LBB78_139:                             # %cond.false.794
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -480(%rbp)        # 4-byte Spill
.LBB78_140:                             # %cond.end.803
	movl	-480(%rbp), %eax        # 4-byte Reload
	movq	overlay_tails+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	overlay_heads+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB78_149
	jmp	.LBB78_146
.LBB78_141:                             # %cond.false.812
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB78_143
# BB#142:                               # %cond.true.817
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB78_149
	jmp	.LBB78_146
.LBB78_143:                             # %cond.false.827
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB78_145
# BB#144:                               # %cond.true.832
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB78_149
	jmp	.LBB78_146
.LBB78_145:                             # %cond.false.842
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB78_149
.LBB78_146:                             # %lor.lhs.false.852
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB78_148
# BB#147:                               # %land.lhs.true.862
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB78_149
.LBB78_148:                             # %lor.lhs.false.870
	movl	$32767, %eax            # imm = 0x7FFF
	movq	overlay_heads+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	overlay_tails+24, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB78_153
.LBB78_149:                             # %cond.true.878
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB78_151
# BB#150:                               # %cond.true.886
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -484(%rbp)        # 4-byte Spill
	jmp	.LBB78_152
.LBB78_151:                             # %cond.false.894
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -484(%rbp)        # 4-byte Spill
.LBB78_152:                             # %cond.end.904
	movl	-484(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_153:                             # %cond.false.907
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB78_155
# BB#154:                               # %cond.true.915
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -488(%rbp)        # 4-byte Spill
	jmp	.LBB78_156
.LBB78_155:                             # %cond.false.923
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -488(%rbp)        # 4-byte Spill
.LBB78_156:                             # %cond.end.933
	movl	-488(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_157:                             # %cond.false.936
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_159
# BB#158:                               # %cond.true.943
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB78_160
.LBB78_159:                             # %cond.false.962
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB78_160:                             # %cond.end.967
	movq	-496(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB78_170
# BB#161:                               # %cond.true.971
	cmpq	$0, overlay_tails+24
	jge	.LBB78_166
# BB#162:                               # %cond.true.974
	movq	overlay_heads+24, %rax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jge	.LBB78_164
# BB#163:                               # %cond.true.981
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB78_165
.LBB78_164:                             # %cond.false.1000
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB78_165:                             # %cond.end.1005
	movq	-512(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB78_178
	jmp	.LBB78_175
.LBB78_166:                             # %cond.false.1010
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_168
# BB#167:                               # %cond.true.1017
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB78_169
.LBB78_168:                             # %cond.false.1026
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB78_169:                             # %cond.end.1031
	movq	-520(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	cmpq	overlay_heads+24, %rax
	jl	.LBB78_178
	jmp	.LBB78_175
.LBB78_170:                             # %cond.false.1036
	cmpq	$0, overlay_heads+24
	jge	.LBB78_172
# BB#171:                               # %cond.true.1039
	movq	overlay_tails+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_178
	jmp	.LBB78_175
.LBB78_172:                             # %cond.false.1043
	cmpq	$0, overlay_tails+24
	jge	.LBB78_174
# BB#173:                               # %cond.true.1046
	movq	overlay_heads+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_178
	jmp	.LBB78_175
.LBB78_174:                             # %cond.false.1050
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	overlay_tails+24, %rax
	jl	.LBB78_178
.LBB78_175:                             # %lor.lhs.false.1054
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_177
# BB#176:                               # %land.lhs.true.1060
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB78_178
.LBB78_177:                             # %lor.lhs.false.1064
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	overlay_heads+24, %rdx
	addq	overlay_tails+24, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB78_182
.LBB78_178:                             # %cond.true.1068
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB78_180
# BB#179:                               # %cond.true.1076
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -524(%rbp)        # 4-byte Spill
	jmp	.LBB78_181
.LBB78_180:                             # %cond.false.1084
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -524(%rbp)        # 4-byte Spill
.LBB78_181:                             # %cond.end.1094
	movl	-524(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_182:                             # %cond.false.1097
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB78_184
# BB#183:                               # %cond.true.1105
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -528(%rbp)        # 4-byte Spill
	jmp	.LBB78_185
.LBB78_184:                             # %cond.false.1113
	movq	overlay_heads+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	overlay_tails+24, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -528(%rbp)        # 4-byte Spill
.LBB78_185:                             # %cond.end.1123
	movl	-528(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_186:                             # %cond.false.1126
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB78_187
	jmp	.LBB78_246
.LBB78_187:                             # %cond.true.1127
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB78_188
	jmp	.LBB78_217
.LBB78_188:                             # %cond.true.1128
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	overlay_heads+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB78_190
# BB#189:                               # %cond.true.1137
	xorl	%eax, %eax
	movq	overlay_tails+24, %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	overlay_tails+24, %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jmp	.LBB78_191
.LBB78_190:                             # %cond.false.1159
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	overlay_heads+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
.LBB78_191:                             # %cond.end.1166
	movl	-532(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB78_201
# BB#192:                               # %cond.true.1170
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB78_197
# BB#193:                               # %cond.true.1174
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -536(%rbp)        # 4-byte Spill
	jge	.LBB78_195
# BB#194:                               # %cond.true.1184
	xorl	%eax, %eax
	movq	overlay_tails+24, %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	overlay_tails+24, %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	overlay_heads+24, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jmp	.LBB78_196
.LBB78_195:                             # %cond.false.1206
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	overlay_heads+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -540(%rbp)        # 4-byte Spill
.LBB78_196:                             # %cond.end.1213
	movl	-540(%rbp), %eax        # 4-byte Reload
	movq	overlay_tails+24, %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-536(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB78_209
	jmp	.LBB78_206
.LBB78_197:                             # %cond.false.1219
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	overlay_heads+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB78_199
# BB#198:                               # %cond.true.1228
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	overlay_heads+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -544(%rbp)        # 4-byte Spill
	jmp	.LBB78_200
.LBB78_199:                             # %cond.false.1239
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	overlay_heads+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -544(%rbp)        # 4-byte Spill
.LBB78_200:                             # %cond.end.1246
	movl	-544(%rbp), %eax        # 4-byte Reload
	movq	overlay_tails+24, %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	overlay_heads+24, %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB78_209
	jmp	.LBB78_206
.LBB78_201:                             # %cond.false.1253
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB78_203
# BB#202:                               # %cond.true.1257
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	movq	overlay_heads+24, %rax
	movl	%eax, %edx
	movq	overlay_tails+24, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB78_209
	jmp	.LBB78_206
.LBB78_203:                             # %cond.false.1264
	movq	overlay_tails+24, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB78_205
# BB#204:                               # %cond.true.1268
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_heads+24, %rax
	movl	%eax, %edx
	movq	overlay_tails+24, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB78_209
	jmp	.LBB78_206
.LBB78_205:                             # %cond.false.1275
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB78_209
.LBB78_206:                             # %lor.lhs.false.1282
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB78_208
# BB#207:                               # %land.lhs.true.1290
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB78_209
.LBB78_208:                             # %lor.lhs.false.1296
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	overlay_heads+24, %rcx
	movl	%ecx, %edx
	movq	overlay_tails+24, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB78_213
.LBB78_209:                             # %cond.true.1302
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB78_211
# BB#210:                               # %cond.true.1308
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	jmp	.LBB78_212
.LBB78_211:                             # %cond.false.1312
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -548(%rbp)        # 4-byte Spill
.LBB78_212:                             # %cond.end.1318
	movl	-548(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_213:                             # %cond.false.1321
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB78_215
# BB#214:                               # %cond.true.1327
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -552(%rbp)        # 4-byte Spill
	jmp	.LBB78_216
.LBB78_215:                             # %cond.false.1331
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -552(%rbp)        # 4-byte Spill
.LBB78_216:                             # %cond.end.1337
	movl	-552(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_217:                             # %cond.false.1340
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_219
# BB#218:                               # %cond.true.1347
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB78_220
.LBB78_219:                             # %cond.false.1366
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB78_220:                             # %cond.end.1371
	movq	-560(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB78_230
# BB#221:                               # %cond.true.1375
	cmpq	$0, overlay_tails+24
	jge	.LBB78_226
# BB#222:                               # %cond.true.1378
	movq	overlay_heads+24, %rax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jge	.LBB78_224
# BB#223:                               # %cond.true.1385
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB78_225
.LBB78_224:                             # %cond.false.1404
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB78_225:                             # %cond.end.1409
	movq	-576(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB78_238
	jmp	.LBB78_235
.LBB78_226:                             # %cond.false.1414
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_228
# BB#227:                               # %cond.true.1421
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB78_229
.LBB78_228:                             # %cond.false.1430
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB78_229:                             # %cond.end.1435
	movq	-584(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	cmpq	overlay_heads+24, %rax
	jl	.LBB78_238
	jmp	.LBB78_235
.LBB78_230:                             # %cond.false.1440
	cmpq	$0, overlay_heads+24
	jge	.LBB78_232
# BB#231:                               # %cond.true.1443
	movq	overlay_tails+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_238
	jmp	.LBB78_235
.LBB78_232:                             # %cond.false.1447
	cmpq	$0, overlay_tails+24
	jge	.LBB78_234
# BB#233:                               # %cond.true.1450
	movq	overlay_heads+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_238
	jmp	.LBB78_235
.LBB78_234:                             # %cond.false.1454
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	overlay_tails+24, %rax
	jl	.LBB78_238
.LBB78_235:                             # %lor.lhs.false.1458
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_237
# BB#236:                               # %land.lhs.true.1464
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB78_238
.LBB78_237:                             # %lor.lhs.false.1468
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	overlay_heads+24, %rdx
	addq	overlay_tails+24, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB78_242
.LBB78_238:                             # %cond.true.1472
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB78_240
# BB#239:                               # %cond.true.1478
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	jmp	.LBB78_241
.LBB78_240:                             # %cond.false.1482
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -588(%rbp)        # 4-byte Spill
.LBB78_241:                             # %cond.end.1488
	movl	-588(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_242:                             # %cond.false.1491
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB78_244
# BB#243:                               # %cond.true.1497
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -592(%rbp)        # 4-byte Spill
	jmp	.LBB78_245
.LBB78_244:                             # %cond.false.1501
	movq	overlay_heads+24, %rax
	movl	%eax, %ecx
	movq	overlay_tails+24, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -592(%rbp)        # 4-byte Spill
.LBB78_245:                             # %cond.end.1507
	movl	-592(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_246:                             # %cond.false.1510
	movb	$1, %al
	testb	$1, %al
	jne	.LBB78_247
	jmp	.LBB78_306
.LBB78_247:                             # %cond.true.1511
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB78_248
	jmp	.LBB78_277
.LBB78_248:                             # %cond.true.1512
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_250
# BB#249:                               # %cond.true.1519
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB78_251
.LBB78_250:                             # %cond.false.1538
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB78_251:                             # %cond.end.1543
	movq	-600(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB78_261
# BB#252:                               # %cond.true.1547
	cmpq	$0, overlay_tails+24
	jge	.LBB78_257
# BB#253:                               # %cond.true.1550
	movq	overlay_heads+24, %rax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jge	.LBB78_255
# BB#254:                               # %cond.true.1557
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB78_256
.LBB78_255:                             # %cond.false.1576
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB78_256:                             # %cond.end.1581
	movq	-616(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB78_269
	jmp	.LBB78_266
.LBB78_257:                             # %cond.false.1586
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_259
# BB#258:                               # %cond.true.1593
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB78_260
.LBB78_259:                             # %cond.false.1602
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB78_260:                             # %cond.end.1607
	movq	-624(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	cmpq	overlay_heads+24, %rax
	jl	.LBB78_269
	jmp	.LBB78_266
.LBB78_261:                             # %cond.false.1612
	cmpq	$0, overlay_heads+24
	jge	.LBB78_263
# BB#262:                               # %cond.true.1615
	movq	overlay_tails+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_269
	jmp	.LBB78_266
.LBB78_263:                             # %cond.false.1619
	cmpq	$0, overlay_tails+24
	jge	.LBB78_265
# BB#264:                               # %cond.true.1622
	movq	overlay_heads+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_269
	jmp	.LBB78_266
.LBB78_265:                             # %cond.false.1626
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	overlay_tails+24, %rax
	jl	.LBB78_269
.LBB78_266:                             # %lor.lhs.false.1630
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_268
# BB#267:                               # %land.lhs.true.1636
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	jl	.LBB78_269
.LBB78_268:                             # %lor.lhs.false.1640
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_273
.LBB78_269:                             # %cond.true.1644
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB78_271
# BB#270:                               # %cond.true.1648
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB78_272
.LBB78_271:                             # %cond.false.1650
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB78_272:                             # %cond.end.1654
	movq	-632(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_273:                             # %cond.false.1656
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB78_275
# BB#274:                               # %cond.true.1660
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB78_276
.LBB78_275:                             # %cond.false.1662
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB78_276:                             # %cond.end.1666
	movq	-640(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_277:                             # %cond.false.1668
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_279
# BB#278:                               # %cond.true.1675
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB78_280
.LBB78_279:                             # %cond.false.1694
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB78_280:                             # %cond.end.1699
	movq	-648(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB78_290
# BB#281:                               # %cond.true.1703
	cmpq	$0, overlay_tails+24
	jge	.LBB78_286
# BB#282:                               # %cond.true.1706
	movq	overlay_heads+24, %rax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jge	.LBB78_284
# BB#283:                               # %cond.true.1713
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB78_285
.LBB78_284:                             # %cond.false.1732
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB78_285:                             # %cond.end.1737
	movq	-664(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	movq	-656(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB78_298
	jmp	.LBB78_295
.LBB78_286:                             # %cond.false.1742
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_288
# BB#287:                               # %cond.true.1749
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB78_289
.LBB78_288:                             # %cond.false.1758
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB78_289:                             # %cond.end.1763
	movq	-672(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	cmpq	overlay_heads+24, %rax
	jl	.LBB78_298
	jmp	.LBB78_295
.LBB78_290:                             # %cond.false.1768
	cmpq	$0, overlay_heads+24
	jge	.LBB78_292
# BB#291:                               # %cond.true.1771
	movq	overlay_tails+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_298
	jmp	.LBB78_295
.LBB78_292:                             # %cond.false.1775
	cmpq	$0, overlay_tails+24
	jge	.LBB78_294
# BB#293:                               # %cond.true.1778
	movq	overlay_heads+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_298
	jmp	.LBB78_295
.LBB78_294:                             # %cond.false.1782
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	overlay_tails+24, %rax
	jl	.LBB78_298
.LBB78_295:                             # %lor.lhs.false.1786
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_297
# BB#296:                               # %land.lhs.true.1792
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	jl	.LBB78_298
.LBB78_297:                             # %lor.lhs.false.1796
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_302
.LBB78_298:                             # %cond.true.1800
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB78_300
# BB#299:                               # %cond.true.1804
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB78_301
.LBB78_300:                             # %cond.false.1806
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB78_301:                             # %cond.end.1810
	movq	-680(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_302:                             # %cond.false.1812
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB78_304
# BB#303:                               # %cond.true.1816
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB78_305
.LBB78_304:                             # %cond.false.1818
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB78_305:                             # %cond.end.1822
	movq	-688(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_306:                             # %cond.false.1824
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB78_307
	jmp	.LBB78_336
.LBB78_307:                             # %cond.true.1825
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_309
# BB#308:                               # %cond.true.1832
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB78_310
.LBB78_309:                             # %cond.false.1851
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB78_310:                             # %cond.end.1856
	movq	-696(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB78_320
# BB#311:                               # %cond.true.1860
	cmpq	$0, overlay_tails+24
	jge	.LBB78_316
# BB#312:                               # %cond.true.1863
	movq	overlay_heads+24, %rax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jge	.LBB78_314
# BB#313:                               # %cond.true.1870
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB78_315
.LBB78_314:                             # %cond.false.1889
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB78_315:                             # %cond.end.1894
	movq	-712(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB78_328
	jmp	.LBB78_325
.LBB78_316:                             # %cond.false.1899
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_318
# BB#317:                               # %cond.true.1906
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB78_319
.LBB78_318:                             # %cond.false.1915
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB78_319:                             # %cond.end.1920
	movq	-720(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	cmpq	overlay_heads+24, %rax
	jl	.LBB78_328
	jmp	.LBB78_325
.LBB78_320:                             # %cond.false.1925
	cmpq	$0, overlay_heads+24
	jge	.LBB78_322
# BB#321:                               # %cond.true.1928
	movq	overlay_tails+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_328
	jmp	.LBB78_325
.LBB78_322:                             # %cond.false.1932
	cmpq	$0, overlay_tails+24
	jge	.LBB78_324
# BB#323:                               # %cond.true.1935
	movq	overlay_heads+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_328
	jmp	.LBB78_325
.LBB78_324:                             # %cond.false.1939
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	overlay_tails+24, %rax
	jl	.LBB78_328
.LBB78_325:                             # %lor.lhs.false.1943
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_327
# BB#326:                               # %land.lhs.true.1949
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	jl	.LBB78_328
.LBB78_327:                             # %lor.lhs.false.1953
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_332
.LBB78_328:                             # %cond.true.1957
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB78_330
# BB#329:                               # %cond.true.1961
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB78_331
.LBB78_330:                             # %cond.false.1963
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB78_331:                             # %cond.end.1967
	movq	-728(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_332:                             # %cond.false.1969
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB78_334
# BB#333:                               # %cond.true.1973
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB78_335
.LBB78_334:                             # %cond.false.1975
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB78_335:                             # %cond.end.1979
	movq	-736(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_336:                             # %cond.false.1981
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_338
# BB#337:                               # %cond.true.1988
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB78_339
.LBB78_338:                             # %cond.false.2007
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB78_339:                             # %cond.end.2012
	movq	-744(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB78_349
# BB#340:                               # %cond.true.2016
	cmpq	$0, overlay_tails+24
	jge	.LBB78_345
# BB#341:                               # %cond.true.2019
	movq	overlay_heads+24, %rax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jge	.LBB78_343
# BB#342:                               # %cond.true.2026
	xorl	%eax, %eax
	imulq	$0, overlay_tails+24, %rcx
	addq	overlay_heads+24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, overlay_tails+24, %rdi
	addq	overlay_heads+24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	jmp	.LBB78_344
.LBB78_343:                             # %cond.false.2045
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB78_344:                             # %cond.end.2050
	movq	-760(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	movq	-752(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB78_357
	jmp	.LBB78_354
.LBB78_345:                             # %cond.false.2055
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_347
# BB#346:                               # %cond.true.2062
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB78_348
.LBB78_347:                             # %cond.false.2071
	imulq	$0, overlay_tails+24, %rax
	addq	overlay_heads+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB78_348:                             # %cond.end.2076
	movq	-768(%rbp), %rax        # 8-byte Reload
	subq	overlay_tails+24, %rax
	cmpq	overlay_heads+24, %rax
	jl	.LBB78_357
	jmp	.LBB78_354
.LBB78_349:                             # %cond.false.2081
	cmpq	$0, overlay_heads+24
	jge	.LBB78_351
# BB#350:                               # %cond.true.2084
	movq	overlay_tails+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_357
	jmp	.LBB78_354
.LBB78_351:                             # %cond.false.2088
	cmpq	$0, overlay_tails+24
	jge	.LBB78_353
# BB#352:                               # %cond.true.2091
	movq	overlay_heads+24, %rax
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB78_357
	jmp	.LBB78_354
.LBB78_353:                             # %cond.false.2095
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	cmpq	overlay_tails+24, %rax
	jl	.LBB78_357
.LBB78_354:                             # %lor.lhs.false.2099
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB78_356
# BB#355:                               # %land.lhs.true.2105
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	jl	.LBB78_357
.LBB78_356:                             # %lor.lhs.false.2109
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_361
.LBB78_357:                             # %cond.true.2113
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB78_359
# BB#358:                               # %cond.true.2117
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB78_360
.LBB78_359:                             # %cond.false.2119
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB78_360:                             # %cond.end.2123
	movq	-776(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -120(%rbp)
	testb	$1, %cl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_361:                             # %cond.false.2125
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	overlay_heads+24, %rcx
	addq	overlay_tails+24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB78_363
# BB#362:                               # %cond.true.2129
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB78_364
.LBB78_363:                             # %cond.false.2131
	movq	overlay_heads+24, %rax
	addq	overlay_tails+24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB78_364:                             # %cond.end.2135
	movq	-784(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -120(%rbp)
	testb	$1, %dl
	jne	.LBB78_365
	jmp	.LBB78_366
.LBB78_365:                             # %if.then.2137
	movq	$-1, %rdi
	callq	memory_full
.LBB78_366:                             # %if.end.2138
	movq	-120(%rbp), %rax
	cmpq	overlay_str_len, %rax
	jle	.LBB78_368
# BB#367:                               # %if.then.2141
	movabsq	$overlay_str_len, %rsi
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	overlay_str_buf, %rdi
	movq	-120(%rbp), %rdx
	subq	overlay_str_len, %rdx
	callq	xpalloc
	movq	%rax, overlay_str_buf
.LBB78_368:                             # %if.end.2144
	movq	overlay_str_buf, %rax
	movq	%rax, -112(%rbp)
	movq	overlay_tails+16, %rax
	movq	%rax, -104(%rbp)
.LBB78_369:                             # %for.cond.2145
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, %rax
	jl	.LBB78_371
# BB#370:                               # %for.body.2148
                                        #   in Loop: Header=BB78_369 Depth=1
	movq	-104(%rbp), %rax
	shlq	$5, %rax
	addq	overlay_tails, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	SDATA
	movq	-112(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	movq	%rsi, -800(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-96(%rbp), %rdi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movb	-81(%rbp), %cl
	movzbl	%al, %edx
	andl	$1, %edx
	movzbl	%cl, %r8d
	andl	$1, %r8d
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	-800(%rbp), %rsi        # 8-byte Reload
	movq	-808(%rbp), %r9         # 8-byte Reload
	movl	%edx, -812(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	-812(%rbp), %ecx        # 4-byte Reload
	callq	copy_text
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB78_369
.LBB78_371:                             # %for.end.2154
	movq	$0, -104(%rbp)
.LBB78_372:                             # %for.cond.2155
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	overlay_heads+16, %rax
	jge	.LBB78_377
# BB#373:                               # %for.body.2158
                                        #   in Loop: Header=BB78_372 Depth=1
	movq	-104(%rbp), %rax
	shlq	$5, %rax
	addq	overlay_heads, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	SDATA
	movq	-112(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	movq	%rsi, -832(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-96(%rbp), %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movb	-81(%rbp), %cl
	movzbl	%al, %edx
	andl	$1, %edx
	movzbl	%cl, %r8d
	andl	$1, %r8d
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	-832(%rbp), %rsi        # 8-byte Reload
	movq	-840(%rbp), %r9         # 8-byte Reload
	movl	%edx, -844(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	-844(%rbp), %ecx        # 4-byte Reload
	callq	copy_text
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	shlq	$5, %rax
	addq	overlay_heads, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB78_374
	jmp	.LBB78_375
.LBB78_374:                             # %if.then.2170
                                        #   in Loop: Header=BB78_372 Depth=1
	movq	-96(%rbp), %rdi
	callq	SDATA
	movq	-112(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-96(%rbp), %rdi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movb	-81(%rbp), %cl
	movzbl	%al, %edx
	andl	$1, %edx
	movzbl	%cl, %r8d
	andl	$1, %r8d
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	-864(%rbp), %rsi        # 8-byte Reload
	movq	-872(%rbp), %r9         # 8-byte Reload
	movl	%edx, -876(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	-876(%rbp), %ecx        # 4-byte Reload
	callq	copy_text
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB78_375:                             # %if.end.2177
                                        #   in Loop: Header=BB78_372 Depth=1
	jmp	.LBB78_376
.LBB78_376:                             # %for.inc.2178
                                        #   in Loop: Header=BB78_372 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB78_372
.LBB78_377:                             # %for.end.2179
	movq	-112(%rbp), %rax
	movq	overlay_str_buf, %rcx
	addq	-120(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB78_379
# BB#378:                               # %if.then.2183
	callq	emacs_abort
.LBB78_379:                             # %if.end.2184
	cmpq	$0, -32(%rbp)
	je	.LBB78_381
# BB#380:                               # %if.then.2186
	movq	overlay_str_buf, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB78_381:                             # %if.end.2187
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB78_383
.LBB78_382:                             # %if.end.2188
	movq	$0, -8(%rbp)
.LBB78_383:                             # %return
	movq	-8(%rbp), %rax
	addq	$880, %rsp              # imm = 0x370
	popq	%rbp
	retq
.Lfunc_end78:
	.size	overlay_strings, .Lfunc_end78-overlay_strings
	.cfi_endproc

	.align	16, 0x90
	.type	record_overlay_string,@function
record_overlay_string:                  # @record_overlay_string
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
	subq	$864, %rsp              # imm = 0x360
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	jne	.LBB79_2
# BB#1:                                 # %if.then
	movl	$5, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$32, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	xpalloc
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB79_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-8(%rbp), %rdx
	shlq	$5, %rcx
	addq	(%rdx), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-8(%rbp), %rdx
	shlq	$5, %rcx
	addq	(%rdx), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-8(%rbp), %rdx
	shlq	$5, %rcx
	addq	(%rdx), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	jne	.LBB79_4
# BB#3:                                 # %cond.true
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB79_5
.LBB79_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB79_5
.LBB79_5:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-8(%rbp), %rdx
	shlq	$5, %rcx
	addq	(%rdx), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 16(%rax)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB79_7
# BB#6:                                 # %if.then.23
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	jmp	.LBB79_11
.LBB79_7:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB79_9
# BB#8:                                 # %if.then.26
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	count_size_as_multibyte
	movq	%rax, -48(%rbp)
	jmp	.LBB79_10
.LBB79_9:                               # %if.else.30
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -48(%rbp)
.LBB79_10:                              # %if.end.32
	jmp	.LBB79_11
.LBB79_11:                              # %if.end.33
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_12
	jmp	.LBB79_71
.LBB79_12:                              # %cond.true.34
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_13
	jmp	.LBB79_42
.LBB79_13:                              # %cond.true.35
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_15
# BB#14:                                # %cond.true.43
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB79_16
.LBB79_15:                              # %cond.false.69
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -84(%rbp)         # 4-byte Spill
.LBB79_16:                              # %cond.end.79
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB79_26
# BB#17:                                # %cond.true.83
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_22
# BB#18:                                # %cond.true.88
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jge	.LBB79_20
# BB#19:                                # %cond.true.103
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB79_21
.LBB79_20:                              # %cond.false.131
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
.LBB79_21:                              # %cond.end.141
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-88(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB79_34
	jmp	.LBB79_31
.LBB79_22:                              # %cond.false.148
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_24
# BB#23:                                # %cond.true.160
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB79_25
.LBB79_24:                              # %cond.false.174
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
.LBB79_25:                              # %cond.end.184
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB79_34
	jmp	.LBB79_31
.LBB79_26:                              # %cond.false.194
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_28
# BB#27:                                # %cond.true.200
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB79_34
	jmp	.LBB79_31
.LBB79_28:                              # %cond.false.211
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_30
# BB#29:                                # %cond.true.216
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB79_34
	jmp	.LBB79_31
.LBB79_30:                              # %cond.false.228
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB79_34
.LBB79_31:                              # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_33
# BB#32:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB79_34
.LBB79_33:                              # %lor.lhs.false.257
	movl	$127, %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB79_38
.LBB79_34:                              # %cond.true.266
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB79_36
# BB#35:                                # %cond.true.275
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB79_37
.LBB79_36:                              # %cond.false.284
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
.LBB79_37:                              # %cond.end.295
	movl	-100(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_38:                              # %cond.false.298
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB79_40
# BB#39:                                # %cond.true.307
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB79_41
.LBB79_40:                              # %cond.false.316
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
.LBB79_41:                              # %cond.end.327
	movl	-104(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_42:                              # %cond.false.330
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_44
# BB#43:                                # %cond.true.338
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB79_45
.LBB79_44:                              # %cond.false.359
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB79_45:                              # %cond.end.365
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_55
# BB#46:                                # %cond.true.369
	cmpq	$0, -48(%rbp)
	jge	.LBB79_51
# BB#47:                                # %cond.true.372
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jge	.LBB79_49
# BB#48:                                # %cond.true.381
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB79_50
.LBB79_49:                              # %cond.false.402
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB79_50:                              # %cond.end.408
	movq	-128(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_63
	jmp	.LBB79_60
.LBB79_51:                              # %cond.false.413
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_53
# BB#52:                                # %cond.true.421
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB79_54
.LBB79_53:                              # %cond.false.431
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB79_54:                              # %cond.end.437
	movq	-136(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_63
	jmp	.LBB79_60
.LBB79_55:                              # %cond.false.443
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_57
# BB#56:                                # %cond.true.447
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_63
	jmp	.LBB79_60
.LBB79_57:                              # %cond.false.452
	cmpq	$0, -48(%rbp)
	jge	.LBB79_59
# BB#58:                                # %cond.true.455
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_63
	jmp	.LBB79_60
.LBB79_59:                              # %cond.false.461
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_63
.LBB79_60:                              # %lor.lhs.false.466
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_62
# BB#61:                                # %land.lhs.true.473
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB79_63
.LBB79_62:                              # %lor.lhs.false.478
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_67
.LBB79_63:                              # %cond.true.483
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB79_65
# BB#64:                                # %cond.true.492
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB79_66
.LBB79_65:                              # %cond.false.501
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB79_66:                              # %cond.end.512
	movl	-140(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_67:                              # %cond.false.515
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB79_69
# BB#68:                                # %cond.true.524
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB79_70
.LBB79_69:                              # %cond.false.533
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB79_70:                              # %cond.end.544
	movl	-144(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_71:                              # %cond.false.547
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_72
	jmp	.LBB79_131
.LBB79_72:                              # %cond.true.548
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_73
	jmp	.LBB79_102
.LBB79_73:                              # %cond.true.549
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_75
# BB#74:                                # %cond.true.561
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB79_76
.LBB79_75:                              # %cond.false.589
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
.LBB79_76:                              # %cond.end.599
	movl	-148(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB79_86
# BB#77:                                # %cond.true.603
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_82
# BB#78:                                # %cond.true.608
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -152(%rbp)        # 4-byte Spill
	jge	.LBB79_80
# BB#79:                                # %cond.true.623
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB79_81
.LBB79_80:                              # %cond.false.651
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
.LBB79_81:                              # %cond.end.661
	movl	-156(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-152(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB79_94
	jmp	.LBB79_91
.LBB79_82:                              # %cond.false.668
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_84
# BB#83:                                # %cond.true.680
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB79_85
.LBB79_84:                              # %cond.false.694
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
.LBB79_85:                              # %cond.end.704
	movl	-160(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB79_94
	jmp	.LBB79_91
.LBB79_86:                              # %cond.false.714
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_88
# BB#87:                                # %cond.true.720
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB79_94
	jmp	.LBB79_91
.LBB79_88:                              # %cond.false.731
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_90
# BB#89:                                # %cond.true.736
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB79_94
	jmp	.LBB79_91
.LBB79_90:                              # %cond.false.748
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB79_94
.LBB79_91:                              # %lor.lhs.false.759
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_93
# BB#92:                                # %land.lhs.true.770
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB79_94
.LBB79_93:                              # %lor.lhs.false.779
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB79_98
.LBB79_94:                              # %cond.true.788
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_96
# BB#95:                                # %cond.true.797
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB79_97
.LBB79_96:                              # %cond.false.806
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -164(%rbp)        # 4-byte Spill
.LBB79_97:                              # %cond.end.817
	movl	-164(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_98:                              # %cond.false.820
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_100
# BB#99:                                # %cond.true.829
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB79_101
.LBB79_100:                             # %cond.false.838
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -168(%rbp)        # 4-byte Spill
.LBB79_101:                             # %cond.end.849
	movl	-168(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_102:                             # %cond.false.852
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_104
# BB#103:                               # %cond.true.860
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB79_105
.LBB79_104:                             # %cond.false.881
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB79_105:                             # %cond.end.887
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_115
# BB#106:                               # %cond.true.891
	cmpq	$0, -48(%rbp)
	jge	.LBB79_111
# BB#107:                               # %cond.true.894
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jge	.LBB79_109
# BB#108:                               # %cond.true.903
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB79_110
.LBB79_109:                             # %cond.false.924
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB79_110:                             # %cond.end.930
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_123
	jmp	.LBB79_120
.LBB79_111:                             # %cond.false.935
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_113
# BB#112:                               # %cond.true.943
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB79_114
.LBB79_113:                             # %cond.false.953
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB79_114:                             # %cond.end.959
	movq	-200(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_123
	jmp	.LBB79_120
.LBB79_115:                             # %cond.false.965
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_117
# BB#116:                               # %cond.true.969
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_123
	jmp	.LBB79_120
.LBB79_117:                             # %cond.false.974
	cmpq	$0, -48(%rbp)
	jge	.LBB79_119
# BB#118:                               # %cond.true.977
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_123
	jmp	.LBB79_120
.LBB79_119:                             # %cond.false.983
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_123
.LBB79_120:                             # %lor.lhs.false.988
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_122
# BB#121:                               # %land.lhs.true.995
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB79_123
.LBB79_122:                             # %lor.lhs.false.1000
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_127
.LBB79_123:                             # %cond.true.1005
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_125
# BB#124:                               # %cond.true.1014
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB79_126
.LBB79_125:                             # %cond.false.1023
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -204(%rbp)        # 4-byte Spill
.LBB79_126:                             # %cond.end.1034
	movl	-204(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_127:                             # %cond.false.1037
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_129
# BB#128:                               # %cond.true.1046
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB79_130
.LBB79_129:                             # %cond.false.1055
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -208(%rbp)        # 4-byte Spill
.LBB79_130:                             # %cond.end.1066
	movl	-208(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_131:                             # %cond.false.1069
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_132
	jmp	.LBB79_191
.LBB79_132:                             # %cond.true.1070
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_133
	jmp	.LBB79_162
.LBB79_133:                             # %cond.true.1071
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_135
# BB#134:                               # %cond.true.1081
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB79_136
.LBB79_135:                             # %cond.false.1105
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
.LBB79_136:                             # %cond.end.1113
	movl	-212(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB79_146
# BB#137:                               # %cond.true.1117
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_142
# BB#138:                               # %cond.true.1121
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	jge	.LBB79_140
# BB#139:                               # %cond.true.1133
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB79_141
.LBB79_140:                             # %cond.false.1157
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
.LBB79_141:                             # %cond.end.1165
	movl	-220(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-216(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB79_154
	jmp	.LBB79_151
.LBB79_142:                             # %cond.false.1171
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_144
# BB#143:                               # %cond.true.1181
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	jmp	.LBB79_145
.LBB79_144:                             # %cond.false.1193
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
.LBB79_145:                             # %cond.end.1201
	movl	-224(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB79_154
	jmp	.LBB79_151
.LBB79_146:                             # %cond.false.1209
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_148
# BB#147:                               # %cond.true.1214
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB79_154
	jmp	.LBB79_151
.LBB79_148:                             # %cond.false.1222
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_150
# BB#149:                               # %cond.true.1226
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB79_154
	jmp	.LBB79_151
.LBB79_150:                             # %cond.false.1235
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB79_154
.LBB79_151:                             # %lor.lhs.false.1243
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_153
# BB#152:                               # %land.lhs.true.1252
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB79_154
.LBB79_153:                             # %lor.lhs.false.1259
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %edx
	movq	-48(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB79_158
.LBB79_154:                             # %cond.true.1266
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_156
# BB#155:                               # %cond.true.1273
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB79_157
.LBB79_156:                             # %cond.false.1278
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB79_157:                             # %cond.end.1285
	movl	-228(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_158:                             # %cond.false.1288
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_160
# BB#159:                               # %cond.true.1295
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB79_161
.LBB79_160:                             # %cond.false.1300
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -232(%rbp)        # 4-byte Spill
.LBB79_161:                             # %cond.end.1307
	movl	-232(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_162:                             # %cond.false.1310
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_164
# BB#163:                               # %cond.true.1318
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB79_165
.LBB79_164:                             # %cond.false.1339
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB79_165:                             # %cond.end.1345
	movq	-240(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_175
# BB#166:                               # %cond.true.1349
	cmpq	$0, -48(%rbp)
	jge	.LBB79_171
# BB#167:                               # %cond.true.1352
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jge	.LBB79_169
# BB#168:                               # %cond.true.1361
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB79_170
.LBB79_169:                             # %cond.false.1382
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB79_170:                             # %cond.end.1388
	movq	-256(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_183
	jmp	.LBB79_180
.LBB79_171:                             # %cond.false.1393
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_173
# BB#172:                               # %cond.true.1401
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB79_174
.LBB79_173:                             # %cond.false.1411
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB79_174:                             # %cond.end.1417
	movq	-264(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_183
	jmp	.LBB79_180
.LBB79_175:                             # %cond.false.1423
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_177
# BB#176:                               # %cond.true.1427
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_183
	jmp	.LBB79_180
.LBB79_177:                             # %cond.false.1432
	cmpq	$0, -48(%rbp)
	jge	.LBB79_179
# BB#178:                               # %cond.true.1435
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_183
	jmp	.LBB79_180
.LBB79_179:                             # %cond.false.1441
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_183
.LBB79_180:                             # %lor.lhs.false.1446
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_182
# BB#181:                               # %land.lhs.true.1453
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB79_183
.LBB79_182:                             # %lor.lhs.false.1458
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_187
.LBB79_183:                             # %cond.true.1463
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_185
# BB#184:                               # %cond.true.1470
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB79_186
.LBB79_185:                             # %cond.false.1475
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB79_186:                             # %cond.end.1482
	movl	-268(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_187:                             # %cond.false.1485
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_189
# BB#188:                               # %cond.true.1492
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB79_190
.LBB79_189:                             # %cond.false.1497
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -272(%rbp)        # 4-byte Spill
.LBB79_190:                             # %cond.end.1504
	movl	-272(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_191:                             # %cond.false.1507
	movb	$1, %al
	testb	$1, %al
	jne	.LBB79_192
	jmp	.LBB79_251
.LBB79_192:                             # %cond.true.1508
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_193
	jmp	.LBB79_222
.LBB79_193:                             # %cond.true.1509
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_195
# BB#194:                               # %cond.true.1517
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB79_196
.LBB79_195:                             # %cond.false.1538
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB79_196:                             # %cond.end.1544
	movq	-280(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_206
# BB#197:                               # %cond.true.1548
	cmpq	$0, -48(%rbp)
	jge	.LBB79_202
# BB#198:                               # %cond.true.1551
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jge	.LBB79_200
# BB#199:                               # %cond.true.1560
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB79_201
.LBB79_200:                             # %cond.false.1581
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB79_201:                             # %cond.end.1587
	movq	-296(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_214
	jmp	.LBB79_211
.LBB79_202:                             # %cond.false.1592
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_204
# BB#203:                               # %cond.true.1600
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB79_205
.LBB79_204:                             # %cond.false.1610
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB79_205:                             # %cond.end.1616
	movq	-304(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_214
	jmp	.LBB79_211
.LBB79_206:                             # %cond.false.1622
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_208
# BB#207:                               # %cond.true.1626
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_214
	jmp	.LBB79_211
.LBB79_208:                             # %cond.false.1631
	cmpq	$0, -48(%rbp)
	jge	.LBB79_210
# BB#209:                               # %cond.true.1634
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_214
	jmp	.LBB79_211
.LBB79_210:                             # %cond.false.1640
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_214
.LBB79_211:                             # %lor.lhs.false.1645
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_213
# BB#212:                               # %land.lhs.true.1652
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_214
.LBB79_213:                             # %lor.lhs.false.1657
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_218
.LBB79_214:                             # %cond.true.1662
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_216
# BB#215:                               # %cond.true.1667
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB79_217
.LBB79_216:                             # %cond.false.1670
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB79_217:                             # %cond.end.1675
	movq	-312(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_218:                             # %cond.false.1677
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_220
# BB#219:                               # %cond.true.1682
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB79_221
.LBB79_220:                             # %cond.false.1685
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB79_221:                             # %cond.end.1690
	movq	-320(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_222:                             # %cond.false.1692
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_224
# BB#223:                               # %cond.true.1700
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB79_225
.LBB79_224:                             # %cond.false.1721
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB79_225:                             # %cond.end.1727
	movq	-328(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_235
# BB#226:                               # %cond.true.1731
	cmpq	$0, -48(%rbp)
	jge	.LBB79_231
# BB#227:                               # %cond.true.1734
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jge	.LBB79_229
# BB#228:                               # %cond.true.1743
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB79_230
.LBB79_229:                             # %cond.false.1764
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB79_230:                             # %cond.end.1770
	movq	-344(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_243
	jmp	.LBB79_240
.LBB79_231:                             # %cond.false.1775
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_233
# BB#232:                               # %cond.true.1783
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB79_234
.LBB79_233:                             # %cond.false.1793
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB79_234:                             # %cond.end.1799
	movq	-352(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_243
	jmp	.LBB79_240
.LBB79_235:                             # %cond.false.1805
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_237
# BB#236:                               # %cond.true.1809
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_243
	jmp	.LBB79_240
.LBB79_237:                             # %cond.false.1814
	cmpq	$0, -48(%rbp)
	jge	.LBB79_239
# BB#238:                               # %cond.true.1817
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_243
	jmp	.LBB79_240
.LBB79_239:                             # %cond.false.1823
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_243
.LBB79_240:                             # %lor.lhs.false.1828
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_242
# BB#241:                               # %land.lhs.true.1835
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_243
.LBB79_242:                             # %lor.lhs.false.1840
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_247
.LBB79_243:                             # %cond.true.1845
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_245
# BB#244:                               # %cond.true.1850
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB79_246
.LBB79_245:                             # %cond.false.1853
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB79_246:                             # %cond.end.1858
	movq	-360(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_247:                             # %cond.false.1860
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_249
# BB#248:                               # %cond.true.1865
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB79_250
.LBB79_249:                             # %cond.false.1868
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB79_250:                             # %cond.end.1873
	movq	-368(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_251:                             # %cond.false.1875
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_252
	jmp	.LBB79_281
.LBB79_252:                             # %cond.true.1876
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_254
# BB#253:                               # %cond.true.1884
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB79_255
.LBB79_254:                             # %cond.false.1905
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB79_255:                             # %cond.end.1911
	movq	-376(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_265
# BB#256:                               # %cond.true.1915
	cmpq	$0, -48(%rbp)
	jge	.LBB79_261
# BB#257:                               # %cond.true.1918
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jge	.LBB79_259
# BB#258:                               # %cond.true.1927
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB79_260
.LBB79_259:                             # %cond.false.1948
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB79_260:                             # %cond.end.1954
	movq	-392(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_273
	jmp	.LBB79_270
.LBB79_261:                             # %cond.false.1959
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_263
# BB#262:                               # %cond.true.1967
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB79_264
.LBB79_263:                             # %cond.false.1977
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB79_264:                             # %cond.end.1983
	movq	-400(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_273
	jmp	.LBB79_270
.LBB79_265:                             # %cond.false.1989
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_267
# BB#266:                               # %cond.true.1993
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_273
	jmp	.LBB79_270
.LBB79_267:                             # %cond.false.1998
	cmpq	$0, -48(%rbp)
	jge	.LBB79_269
# BB#268:                               # %cond.true.2001
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_273
	jmp	.LBB79_270
.LBB79_269:                             # %cond.false.2007
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_273
.LBB79_270:                             # %lor.lhs.false.2012
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_272
# BB#271:                               # %land.lhs.true.2019
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_273
.LBB79_272:                             # %lor.lhs.false.2024
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_277
.LBB79_273:                             # %cond.true.2029
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_275
# BB#274:                               # %cond.true.2034
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB79_276
.LBB79_275:                             # %cond.false.2037
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB79_276:                             # %cond.end.2042
	movq	-408(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_277:                             # %cond.false.2044
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_279
# BB#278:                               # %cond.true.2049
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB79_280
.LBB79_279:                             # %cond.false.2052
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB79_280:                             # %cond.end.2057
	movq	-416(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_281:                             # %cond.false.2059
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_283
# BB#282:                               # %cond.true.2067
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB79_284
.LBB79_283:                             # %cond.false.2088
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB79_284:                             # %cond.end.2094
	movq	-424(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_294
# BB#285:                               # %cond.true.2098
	cmpq	$0, -48(%rbp)
	jge	.LBB79_290
# BB#286:                               # %cond.true.2101
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jge	.LBB79_288
# BB#287:                               # %cond.true.2110
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB79_289
.LBB79_288:                             # %cond.false.2131
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB79_289:                             # %cond.end.2137
	movq	-440(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_302
	jmp	.LBB79_299
.LBB79_290:                             # %cond.false.2142
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_292
# BB#291:                               # %cond.true.2150
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB79_293
.LBB79_292:                             # %cond.false.2160
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB79_293:                             # %cond.end.2166
	movq	-448(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_302
	jmp	.LBB79_299
.LBB79_294:                             # %cond.false.2172
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_296
# BB#295:                               # %cond.true.2176
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_302
	jmp	.LBB79_299
.LBB79_296:                             # %cond.false.2181
	cmpq	$0, -48(%rbp)
	jge	.LBB79_298
# BB#297:                               # %cond.true.2184
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_302
	jmp	.LBB79_299
.LBB79_298:                             # %cond.false.2190
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_302
.LBB79_299:                             # %lor.lhs.false.2195
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_301
# BB#300:                               # %land.lhs.true.2202
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_302
.LBB79_301:                             # %lor.lhs.false.2207
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_306
.LBB79_302:                             # %cond.true.2212
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_304
# BB#303:                               # %cond.true.2217
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB79_305
.LBB79_304:                             # %cond.false.2220
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB79_305:                             # %cond.end.2225
	movq	-456(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_306:                             # %cond.false.2227
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_308
# BB#307:                               # %cond.true.2232
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB79_309
.LBB79_308:                             # %cond.false.2235
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB79_309:                             # %cond.end.2240
	movq	-464(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_310
	jmp	.LBB79_311
.LBB79_310:                             # %if.then.2242
	movq	$-1, %rdi
	callq	memory_full
.LBB79_311:                             # %if.end.2243
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB79_312
	jmp	.LBB79_619
.LBB79_312:                             # %if.then.2246
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB79_314
# BB#313:                               # %if.then.2251
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	jmp	.LBB79_318
.LBB79_314:                             # %if.else.2253
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB79_316
# BB#315:                               # %if.then.2255
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	count_size_as_multibyte
	movq	%rax, -48(%rbp)
	jmp	.LBB79_317
.LBB79_316:                             # %if.else.2259
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -48(%rbp)
.LBB79_317:                             # %if.end.2261
	jmp	.LBB79_318
.LBB79_318:                             # %if.end.2262
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_319
	jmp	.LBB79_378
.LBB79_319:                             # %cond.true.2263
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_320
	jmp	.LBB79_349
.LBB79_320:                             # %cond.true.2264
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_322
# BB#321:                               # %cond.true.2276
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB79_323
.LBB79_322:                             # %cond.false.2304
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -484(%rbp)        # 4-byte Spill
.LBB79_323:                             # %cond.end.2314
	movl	-484(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB79_333
# BB#324:                               # %cond.true.2318
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_329
# BB#325:                               # %cond.true.2323
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -488(%rbp)        # 4-byte Spill
	jge	.LBB79_327
# BB#326:                               # %cond.true.2338
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	jmp	.LBB79_328
.LBB79_327:                             # %cond.false.2366
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -492(%rbp)        # 4-byte Spill
.LBB79_328:                             # %cond.end.2376
	movl	-492(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-488(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB79_341
	jmp	.LBB79_338
.LBB79_329:                             # %cond.false.2383
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_331
# BB#330:                               # %cond.true.2395
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -496(%rbp)        # 4-byte Spill
	jmp	.LBB79_332
.LBB79_331:                             # %cond.false.2409
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -496(%rbp)        # 4-byte Spill
.LBB79_332:                             # %cond.end.2419
	movl	-496(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB79_341
	jmp	.LBB79_338
.LBB79_333:                             # %cond.false.2429
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_335
# BB#334:                               # %cond.true.2435
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB79_341
	jmp	.LBB79_338
.LBB79_335:                             # %cond.false.2446
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_337
# BB#336:                               # %cond.true.2451
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB79_341
	jmp	.LBB79_338
.LBB79_337:                             # %cond.false.2463
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB79_341
.LBB79_338:                             # %lor.lhs.false.2474
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_340
# BB#339:                               # %land.lhs.true.2485
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB79_341
.LBB79_340:                             # %lor.lhs.false.2494
	movl	$127, %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB79_345
.LBB79_341:                             # %cond.true.2503
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB79_343
# BB#342:                               # %cond.true.2512
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -500(%rbp)        # 4-byte Spill
	jmp	.LBB79_344
.LBB79_343:                             # %cond.false.2521
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -500(%rbp)        # 4-byte Spill
.LBB79_344:                             # %cond.end.2532
	movl	-500(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_345:                             # %cond.false.2535
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB79_347
# BB#346:                               # %cond.true.2544
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -504(%rbp)        # 4-byte Spill
	jmp	.LBB79_348
.LBB79_347:                             # %cond.false.2553
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -504(%rbp)        # 4-byte Spill
.LBB79_348:                             # %cond.end.2564
	movl	-504(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_349:                             # %cond.false.2567
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_351
# BB#350:                               # %cond.true.2575
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB79_352
.LBB79_351:                             # %cond.false.2596
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB79_352:                             # %cond.end.2602
	movq	-512(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_362
# BB#353:                               # %cond.true.2606
	cmpq	$0, -48(%rbp)
	jge	.LBB79_358
# BB#354:                               # %cond.true.2609
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jge	.LBB79_356
# BB#355:                               # %cond.true.2618
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB79_357
.LBB79_356:                             # %cond.false.2639
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB79_357:                             # %cond.end.2645
	movq	-528(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_370
	jmp	.LBB79_367
.LBB79_358:                             # %cond.false.2650
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_360
# BB#359:                               # %cond.true.2658
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB79_361
.LBB79_360:                             # %cond.false.2668
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB79_361:                             # %cond.end.2674
	movq	-536(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_370
	jmp	.LBB79_367
.LBB79_362:                             # %cond.false.2680
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_364
# BB#363:                               # %cond.true.2684
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_370
	jmp	.LBB79_367
.LBB79_364:                             # %cond.false.2689
	cmpq	$0, -48(%rbp)
	jge	.LBB79_366
# BB#365:                               # %cond.true.2692
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_370
	jmp	.LBB79_367
.LBB79_366:                             # %cond.false.2698
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_370
.LBB79_367:                             # %lor.lhs.false.2703
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_369
# BB#368:                               # %land.lhs.true.2710
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB79_370
.LBB79_369:                             # %lor.lhs.false.2715
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_374
.LBB79_370:                             # %cond.true.2720
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB79_372
# BB#371:                               # %cond.true.2729
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -540(%rbp)        # 4-byte Spill
	jmp	.LBB79_373
.LBB79_372:                             # %cond.false.2738
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -540(%rbp)        # 4-byte Spill
.LBB79_373:                             # %cond.end.2749
	movl	-540(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_374:                             # %cond.false.2752
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB79_376
# BB#375:                               # %cond.true.2761
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -544(%rbp)        # 4-byte Spill
	jmp	.LBB79_377
.LBB79_376:                             # %cond.false.2770
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -544(%rbp)        # 4-byte Spill
.LBB79_377:                             # %cond.end.2781
	movl	-544(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_378:                             # %cond.false.2784
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_379
	jmp	.LBB79_438
.LBB79_379:                             # %cond.true.2785
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_380
	jmp	.LBB79_409
.LBB79_380:                             # %cond.true.2786
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_382
# BB#381:                               # %cond.true.2798
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB79_383
.LBB79_382:                             # %cond.false.2826
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -548(%rbp)        # 4-byte Spill
.LBB79_383:                             # %cond.end.2836
	movl	-548(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB79_393
# BB#384:                               # %cond.true.2840
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_389
# BB#385:                               # %cond.true.2845
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -552(%rbp)        # 4-byte Spill
	jge	.LBB79_387
# BB#386:                               # %cond.true.2860
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB79_388
.LBB79_387:                             # %cond.false.2888
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -556(%rbp)        # 4-byte Spill
.LBB79_388:                             # %cond.end.2898
	movl	-556(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-552(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB79_401
	jmp	.LBB79_398
.LBB79_389:                             # %cond.false.2905
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_391
# BB#390:                               # %cond.true.2917
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -560(%rbp)        # 4-byte Spill
	jmp	.LBB79_392
.LBB79_391:                             # %cond.false.2931
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -560(%rbp)        # 4-byte Spill
.LBB79_392:                             # %cond.end.2941
	movl	-560(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB79_401
	jmp	.LBB79_398
.LBB79_393:                             # %cond.false.2951
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_395
# BB#394:                               # %cond.true.2957
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB79_401
	jmp	.LBB79_398
.LBB79_395:                             # %cond.false.2968
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_397
# BB#396:                               # %cond.true.2973
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB79_401
	jmp	.LBB79_398
.LBB79_397:                             # %cond.false.2985
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB79_401
.LBB79_398:                             # %lor.lhs.false.2996
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_400
# BB#399:                               # %land.lhs.true.3007
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB79_401
.LBB79_400:                             # %lor.lhs.false.3016
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB79_405
.LBB79_401:                             # %cond.true.3025
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_403
# BB#402:                               # %cond.true.3034
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -564(%rbp)        # 4-byte Spill
	jmp	.LBB79_404
.LBB79_403:                             # %cond.false.3043
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -564(%rbp)        # 4-byte Spill
.LBB79_404:                             # %cond.end.3054
	movl	-564(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_405:                             # %cond.false.3057
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_407
# BB#406:                               # %cond.true.3066
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -568(%rbp)        # 4-byte Spill
	jmp	.LBB79_408
.LBB79_407:                             # %cond.false.3075
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -568(%rbp)        # 4-byte Spill
.LBB79_408:                             # %cond.end.3086
	movl	-568(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_409:                             # %cond.false.3089
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_411
# BB#410:                               # %cond.true.3097
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB79_412
.LBB79_411:                             # %cond.false.3118
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB79_412:                             # %cond.end.3124
	movq	-576(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_422
# BB#413:                               # %cond.true.3128
	cmpq	$0, -48(%rbp)
	jge	.LBB79_418
# BB#414:                               # %cond.true.3131
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jge	.LBB79_416
# BB#415:                               # %cond.true.3140
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB79_417
.LBB79_416:                             # %cond.false.3161
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB79_417:                             # %cond.end.3167
	movq	-592(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-584(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_430
	jmp	.LBB79_427
.LBB79_418:                             # %cond.false.3172
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_420
# BB#419:                               # %cond.true.3180
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB79_421
.LBB79_420:                             # %cond.false.3190
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB79_421:                             # %cond.end.3196
	movq	-600(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_430
	jmp	.LBB79_427
.LBB79_422:                             # %cond.false.3202
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_424
# BB#423:                               # %cond.true.3206
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_430
	jmp	.LBB79_427
.LBB79_424:                             # %cond.false.3211
	cmpq	$0, -48(%rbp)
	jge	.LBB79_426
# BB#425:                               # %cond.true.3214
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_430
	jmp	.LBB79_427
.LBB79_426:                             # %cond.false.3220
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_430
.LBB79_427:                             # %lor.lhs.false.3225
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_429
# BB#428:                               # %land.lhs.true.3232
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB79_430
.LBB79_429:                             # %lor.lhs.false.3237
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_434
.LBB79_430:                             # %cond.true.3242
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_432
# BB#431:                               # %cond.true.3251
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -604(%rbp)        # 4-byte Spill
	jmp	.LBB79_433
.LBB79_432:                             # %cond.false.3260
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -604(%rbp)        # 4-byte Spill
.LBB79_433:                             # %cond.end.3271
	movl	-604(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_434:                             # %cond.false.3274
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_436
# BB#435:                               # %cond.true.3283
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -608(%rbp)        # 4-byte Spill
	jmp	.LBB79_437
.LBB79_436:                             # %cond.false.3292
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -608(%rbp)        # 4-byte Spill
.LBB79_437:                             # %cond.end.3303
	movl	-608(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_438:                             # %cond.false.3306
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_439
	jmp	.LBB79_498
.LBB79_439:                             # %cond.true.3307
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_440
	jmp	.LBB79_469
.LBB79_440:                             # %cond.true.3308
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_442
# BB#441:                               # %cond.true.3318
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -612(%rbp)        # 4-byte Spill
	jmp	.LBB79_443
.LBB79_442:                             # %cond.false.3342
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
.LBB79_443:                             # %cond.end.3350
	movl	-612(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB79_453
# BB#444:                               # %cond.true.3354
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_449
# BB#445:                               # %cond.true.3358
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -616(%rbp)        # 4-byte Spill
	jge	.LBB79_447
# BB#446:                               # %cond.true.3370
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB79_448
.LBB79_447:                             # %cond.false.3394
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
.LBB79_448:                             # %cond.end.3402
	movl	-620(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-616(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB79_461
	jmp	.LBB79_458
.LBB79_449:                             # %cond.false.3408
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_451
# BB#450:                               # %cond.true.3418
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -624(%rbp)        # 4-byte Spill
	jmp	.LBB79_452
.LBB79_451:                             # %cond.false.3430
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -624(%rbp)        # 4-byte Spill
.LBB79_452:                             # %cond.end.3438
	movl	-624(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB79_461
	jmp	.LBB79_458
.LBB79_453:                             # %cond.false.3446
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_455
# BB#454:                               # %cond.true.3451
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB79_461
	jmp	.LBB79_458
.LBB79_455:                             # %cond.false.3459
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_457
# BB#456:                               # %cond.true.3463
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB79_461
	jmp	.LBB79_458
.LBB79_457:                             # %cond.false.3472
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB79_461
.LBB79_458:                             # %lor.lhs.false.3480
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_460
# BB#459:                               # %land.lhs.true.3489
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB79_461
.LBB79_460:                             # %lor.lhs.false.3496
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%ecx, %edx
	movq	-48(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB79_465
.LBB79_461:                             # %cond.true.3503
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_463
# BB#462:                               # %cond.true.3510
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -628(%rbp)        # 4-byte Spill
	jmp	.LBB79_464
.LBB79_463:                             # %cond.false.3515
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -628(%rbp)        # 4-byte Spill
.LBB79_464:                             # %cond.end.3522
	movl	-628(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_465:                             # %cond.false.3525
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_467
# BB#466:                               # %cond.true.3532
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -632(%rbp)        # 4-byte Spill
	jmp	.LBB79_468
.LBB79_467:                             # %cond.false.3537
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -632(%rbp)        # 4-byte Spill
.LBB79_468:                             # %cond.end.3544
	movl	-632(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_469:                             # %cond.false.3547
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_471
# BB#470:                               # %cond.true.3555
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB79_472
.LBB79_471:                             # %cond.false.3576
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB79_472:                             # %cond.end.3582
	movq	-640(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_482
# BB#473:                               # %cond.true.3586
	cmpq	$0, -48(%rbp)
	jge	.LBB79_478
# BB#474:                               # %cond.true.3589
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jge	.LBB79_476
# BB#475:                               # %cond.true.3598
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB79_477
.LBB79_476:                             # %cond.false.3619
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB79_477:                             # %cond.end.3625
	movq	-656(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_490
	jmp	.LBB79_487
.LBB79_478:                             # %cond.false.3630
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_480
# BB#479:                               # %cond.true.3638
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB79_481
.LBB79_480:                             # %cond.false.3648
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB79_481:                             # %cond.end.3654
	movq	-664(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_490
	jmp	.LBB79_487
.LBB79_482:                             # %cond.false.3660
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_484
# BB#483:                               # %cond.true.3664
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_490
	jmp	.LBB79_487
.LBB79_484:                             # %cond.false.3669
	cmpq	$0, -48(%rbp)
	jge	.LBB79_486
# BB#485:                               # %cond.true.3672
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_490
	jmp	.LBB79_487
.LBB79_486:                             # %cond.false.3678
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_490
.LBB79_487:                             # %lor.lhs.false.3683
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_489
# BB#488:                               # %land.lhs.true.3690
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB79_490
.LBB79_489:                             # %lor.lhs.false.3695
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_494
.LBB79_490:                             # %cond.true.3700
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_492
# BB#491:                               # %cond.true.3707
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	jmp	.LBB79_493
.LBB79_492:                             # %cond.false.3712
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -668(%rbp)        # 4-byte Spill
.LBB79_493:                             # %cond.end.3719
	movl	-668(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_494:                             # %cond.false.3722
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_496
# BB#495:                               # %cond.true.3729
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -672(%rbp)        # 4-byte Spill
	jmp	.LBB79_497
.LBB79_496:                             # %cond.false.3734
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -672(%rbp)        # 4-byte Spill
.LBB79_497:                             # %cond.end.3741
	movl	-672(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_498:                             # %cond.false.3744
	movb	$1, %al
	testb	$1, %al
	jne	.LBB79_499
	jmp	.LBB79_558
.LBB79_499:                             # %cond.true.3745
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_500
	jmp	.LBB79_529
.LBB79_500:                             # %cond.true.3746
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_502
# BB#501:                               # %cond.true.3754
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB79_503
.LBB79_502:                             # %cond.false.3775
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB79_503:                             # %cond.end.3781
	movq	-680(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_513
# BB#504:                               # %cond.true.3785
	cmpq	$0, -48(%rbp)
	jge	.LBB79_509
# BB#505:                               # %cond.true.3788
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jge	.LBB79_507
# BB#506:                               # %cond.true.3797
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB79_508
.LBB79_507:                             # %cond.false.3818
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB79_508:                             # %cond.end.3824
	movq	-696(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-688(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_521
	jmp	.LBB79_518
.LBB79_509:                             # %cond.false.3829
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_511
# BB#510:                               # %cond.true.3837
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB79_512
.LBB79_511:                             # %cond.false.3847
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB79_512:                             # %cond.end.3853
	movq	-704(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_521
	jmp	.LBB79_518
.LBB79_513:                             # %cond.false.3859
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_515
# BB#514:                               # %cond.true.3863
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_521
	jmp	.LBB79_518
.LBB79_515:                             # %cond.false.3868
	cmpq	$0, -48(%rbp)
	jge	.LBB79_517
# BB#516:                               # %cond.true.3871
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_521
	jmp	.LBB79_518
.LBB79_517:                             # %cond.false.3877
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_521
.LBB79_518:                             # %lor.lhs.false.3882
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_520
# BB#519:                               # %land.lhs.true.3889
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_521
.LBB79_520:                             # %lor.lhs.false.3894
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_525
.LBB79_521:                             # %cond.true.3899
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_523
# BB#522:                               # %cond.true.3904
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB79_524
.LBB79_523:                             # %cond.false.3907
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB79_524:                             # %cond.end.3912
	movq	-712(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_525:                             # %cond.false.3914
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_527
# BB#526:                               # %cond.true.3919
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB79_528
.LBB79_527:                             # %cond.false.3922
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB79_528:                             # %cond.end.3927
	movq	-720(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_529:                             # %cond.false.3929
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_531
# BB#530:                               # %cond.true.3937
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB79_532
.LBB79_531:                             # %cond.false.3958
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB79_532:                             # %cond.end.3964
	movq	-728(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_542
# BB#533:                               # %cond.true.3968
	cmpq	$0, -48(%rbp)
	jge	.LBB79_538
# BB#534:                               # %cond.true.3971
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jge	.LBB79_536
# BB#535:                               # %cond.true.3980
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB79_537
.LBB79_536:                             # %cond.false.4001
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB79_537:                             # %cond.end.4007
	movq	-744(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_550
	jmp	.LBB79_547
.LBB79_538:                             # %cond.false.4012
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_540
# BB#539:                               # %cond.true.4020
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB79_541
.LBB79_540:                             # %cond.false.4030
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB79_541:                             # %cond.end.4036
	movq	-752(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_550
	jmp	.LBB79_547
.LBB79_542:                             # %cond.false.4042
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_544
# BB#543:                               # %cond.true.4046
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_550
	jmp	.LBB79_547
.LBB79_544:                             # %cond.false.4051
	cmpq	$0, -48(%rbp)
	jge	.LBB79_546
# BB#545:                               # %cond.true.4054
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_550
	jmp	.LBB79_547
.LBB79_546:                             # %cond.false.4060
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_550
.LBB79_547:                             # %lor.lhs.false.4065
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_549
# BB#548:                               # %land.lhs.true.4072
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_550
.LBB79_549:                             # %lor.lhs.false.4077
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_554
.LBB79_550:                             # %cond.true.4082
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_552
# BB#551:                               # %cond.true.4087
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB79_553
.LBB79_552:                             # %cond.false.4090
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB79_553:                             # %cond.end.4095
	movq	-760(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_554:                             # %cond.false.4097
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_556
# BB#555:                               # %cond.true.4102
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB79_557
.LBB79_556:                             # %cond.false.4105
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB79_557:                             # %cond.end.4110
	movq	-768(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_558:                             # %cond.false.4112
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_559
	jmp	.LBB79_588
.LBB79_559:                             # %cond.true.4113
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_561
# BB#560:                               # %cond.true.4121
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	jmp	.LBB79_562
.LBB79_561:                             # %cond.false.4142
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB79_562:                             # %cond.end.4148
	movq	-776(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_572
# BB#563:                               # %cond.true.4152
	cmpq	$0, -48(%rbp)
	jge	.LBB79_568
# BB#564:                               # %cond.true.4155
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jge	.LBB79_566
# BB#565:                               # %cond.true.4164
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB79_567
.LBB79_566:                             # %cond.false.4185
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB79_567:                             # %cond.end.4191
	movq	-792(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-784(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_580
	jmp	.LBB79_577
.LBB79_568:                             # %cond.false.4196
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_570
# BB#569:                               # %cond.true.4204
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB79_571
.LBB79_570:                             # %cond.false.4214
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB79_571:                             # %cond.end.4220
	movq	-800(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_580
	jmp	.LBB79_577
.LBB79_572:                             # %cond.false.4226
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_574
# BB#573:                               # %cond.true.4230
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_580
	jmp	.LBB79_577
.LBB79_574:                             # %cond.false.4235
	cmpq	$0, -48(%rbp)
	jge	.LBB79_576
# BB#575:                               # %cond.true.4238
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_580
	jmp	.LBB79_577
.LBB79_576:                             # %cond.false.4244
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_580
.LBB79_577:                             # %lor.lhs.false.4249
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_579
# BB#578:                               # %land.lhs.true.4256
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_580
.LBB79_579:                             # %lor.lhs.false.4261
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_584
.LBB79_580:                             # %cond.true.4266
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_582
# BB#581:                               # %cond.true.4271
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB79_583
.LBB79_582:                             # %cond.false.4274
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB79_583:                             # %cond.end.4279
	movq	-808(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_584:                             # %cond.false.4281
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_586
# BB#585:                               # %cond.true.4286
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB79_587
.LBB79_586:                             # %cond.false.4289
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB79_587:                             # %cond.end.4294
	movq	-816(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_588:                             # %cond.false.4296
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_590
# BB#589:                               # %cond.true.4304
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB79_591
.LBB79_590:                             # %cond.false.4325
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB79_591:                             # %cond.end.4331
	movq	-824(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB79_601
# BB#592:                               # %cond.true.4335
	cmpq	$0, -48(%rbp)
	jge	.LBB79_597
# BB#593:                               # %cond.true.4338
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jge	.LBB79_595
# BB#594:                               # %cond.true.4347
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdx
	movq	-8(%rbp), %r8
	addq	24(%r8), %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB79_596
.LBB79_595:                             # %cond.false.4368
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB79_596:                             # %cond.end.4374
	movq	-840(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-832(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB79_609
	jmp	.LBB79_606
.LBB79_597:                             # %cond.false.4379
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_599
# BB#598:                               # %cond.true.4387
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB79_600
.LBB79_599:                             # %cond.false.4397
	imulq	$0, -48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB79_600:                             # %cond.end.4403
	movq	-848(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_609
	jmp	.LBB79_606
.LBB79_601:                             # %cond.false.4409
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jge	.LBB79_603
# BB#602:                               # %cond.true.4413
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_609
	jmp	.LBB79_606
.LBB79_603:                             # %cond.false.4418
	cmpq	$0, -48(%rbp)
	jge	.LBB79_605
# BB#604:                               # %cond.true.4421
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB79_609
	jmp	.LBB79_606
.LBB79_605:                             # %cond.false.4427
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB79_609
.LBB79_606:                             # %lor.lhs.false.4432
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_608
# BB#607:                               # %land.lhs.true.4439
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_609
.LBB79_608:                             # %lor.lhs.false.4444
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_613
.LBB79_609:                             # %cond.true.4449
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_611
# BB#610:                               # %cond.true.4454
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB79_612
.LBB79_611:                             # %cond.false.4457
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB79_612:                             # %cond.end.4462
	movq	-856(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_613:                             # %cond.false.4464
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_615
# BB#614:                               # %cond.true.4469
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jmp	.LBB79_616
.LBB79_615:                             # %cond.false.4472
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB79_616:                             # %cond.end.4477
	movq	-864(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB79_617
	jmp	.LBB79_618
.LBB79_617:                             # %if.then.4479
	movq	$-1, %rdi
	callq	memory_full
.LBB79_618:                             # %if.end.4480
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB79_619:                             # %if.end.4482
	addq	$864, %rsp              # imm = 0x360
	popq	%rbp
	retq
.Lfunc_end79:
	.size	record_overlay_string, .Lfunc_end79-record_overlay_string
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_for_strings,@function
cmp_for_strings:                        # @cmp_for_strings
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-40(%rbp), %rdi
	cmpq	16(%rdi), %rsi
	je	.LBB80_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-32(%rbp), %rsi
	cmpq	16(%rsi), %rdx
	cmovll	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB80_5
.LBB80_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB80_4
# BB#3:                                 # %if.then.7
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-40(%rbp), %rsi
	cmpq	24(%rsi), %rdx
	cmovll	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB80_5
.LBB80_4:                               # %if.end.12
	movl	$0, -4(%rbp)
.LBB80_5:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end80:
	.size	cmp_for_strings, .Lfunc_end80-cmp_for_strings
	.cfi_endproc

	.globl	recenter_overlay_lists
	.align	16, 0x90
	.type	recenter_overlay_lists,@function
recenter_overlay_lists:                 # @recenter_overlay_lists
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rsi
	movq	944(%rsi), %rsi
	movq	%rsi, -56(%rbp)
.LBB81_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB81_15 Depth 2
	cmpq	$0, -56(%rbp)
	je	.LBB81_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB81_1 Depth=1
	movl	$1, %esi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB81_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB81_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB81_6
.LBB81_5:                               # %cond.false
	callq	emacs_abort
.LBB81_6:                               # %cond.end
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	-16(%rbp), %rax
	jle	.LBB81_28
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB81_10
# BB#8:                                 # %land.lhs.true.16
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB81_10
# BB#9:                                 # %cond.true.20
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB81_11
.LBB81_10:                              # %cond.false.22
	callq	emacs_abort
.LBB81_11:                              # %cond.end.23
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB81_13
# BB#12:                                # %if.then.26
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB81_14
.LBB81_13:                              # %if.else
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	set_buffer_overlays_before
.LBB81_14:                              # %if.end
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	$0, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	952(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB81_15:                              # %for.cond.28
                                        #   Parent Loop BB81_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -80(%rbp)
	je	.LBB81_24
# BB#16:                                # %for.body.30
                                        #   in Loop: Header=BB81_15 Depth=2
	movl	$1, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB81_19
# BB#17:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB81_15 Depth=2
	movq	-96(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB81_19
# BB#18:                                # %cond.true.42
                                        #   in Loop: Header=BB81_15 Depth=2
	movq	-96(%rbp), %rdi
	callq	marker_position
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB81_20
.LBB81_19:                              # %cond.false.44
	callq	emacs_abort
.LBB81_20:                              # %cond.end.45
                                        #   in Loop: Header=BB81_15 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	-72(%rbp), %rax
	jl	.LBB81_22
# BB#21:                                # %if.then.49
                                        #   in Loop: Header=BB81_1 Depth=1
	jmp	.LBB81_24
.LBB81_22:                              # %if.end.50
                                        #   in Loop: Header=BB81_15 Depth=2
	jmp	.LBB81_23
.LBB81_23:                              # %for.inc
                                        #   in Loop: Header=BB81_15 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB81_15
.LBB81_24:                              # %for.end
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, -88(%rbp)
	je	.LBB81_26
# BB#25:                                # %if.then.54
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB81_27
.LBB81_26:                              # %if.else.56
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_buffer_overlays_after
.LBB81_27:                              # %if.end.57
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB81_29
.LBB81_28:                              # %if.else.58
	jmp	.LBB81_31
.LBB81_29:                              # %if.end.59
                                        #   in Loop: Header=BB81_1 Depth=1
	jmp	.LBB81_30
.LBB81_30:                              # %for.inc.60
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB81_1
.LBB81_31:                              # %for.end.61
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	952(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB81_32:                              # %for.cond.63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB81_52 Depth 2
	cmpq	$0, -56(%rbp)
	je	.LBB81_67
# BB#33:                                # %for.body.65
                                        #   in Loop: Header=BB81_32 Depth=1
	movl	$1, %esi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB81_36
# BB#34:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB81_36
# BB#35:                                # %cond.true.80
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB81_37
.LBB81_36:                              # %cond.false.82
	callq	emacs_abort
.LBB81_37:                              # %cond.end.83
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	-16(%rbp), %rax
	jle	.LBB81_39
# BB#38:                                # %if.then.87
	jmp	.LBB81_67
.LBB81_39:                              # %if.end.88
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB81_42
# BB#40:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB81_42
# BB#41:                                # %cond.true.97
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB81_43
.LBB81_42:                              # %cond.false.99
	callq	emacs_abort
.LBB81_43:                              # %cond.end.100
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	cmpq	-16(%rbp), %rax
	jg	.LBB81_65
# BB#44:                                # %if.then.104
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB81_47
# BB#45:                                # %land.lhs.true.110
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB81_47
# BB#46:                                # %cond.true.114
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB81_48
.LBB81_47:                              # %cond.false.116
	callq	emacs_abort
.LBB81_48:                              # %cond.end.117
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB81_50
# BB#49:                                # %if.then.122
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB81_51
.LBB81_50:                              # %if.else.124
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	set_buffer_overlays_after
.LBB81_51:                              # %if.end.125
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	$0, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	944(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB81_52:                              # %for.cond.127
                                        #   Parent Loop BB81_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB81_61
# BB#53:                                # %for.body.129
                                        #   in Loop: Header=BB81_52 Depth=2
	movl	$1, %esi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB81_56
# BB#54:                                # %land.lhs.true.138
                                        #   in Loop: Header=BB81_52 Depth=2
	movq	-136(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB81_56
# BB#55:                                # %cond.true.142
                                        #   in Loop: Header=BB81_52 Depth=2
	movq	-136(%rbp), %rdi
	callq	marker_position
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB81_57
.LBB81_56:                              # %cond.false.144
	callq	emacs_abort
.LBB81_57:                              # %cond.end.145
                                        #   in Loop: Header=BB81_52 Depth=2
	movq	-200(%rbp), %rax        # 8-byte Reload
	cmpq	-112(%rbp), %rax
	jg	.LBB81_59
# BB#58:                                # %if.then.149
                                        #   in Loop: Header=BB81_32 Depth=1
	jmp	.LBB81_61
.LBB81_59:                              # %if.end.150
                                        #   in Loop: Header=BB81_52 Depth=2
	jmp	.LBB81_60
.LBB81_60:                              # %for.inc.151
                                        #   in Loop: Header=BB81_52 Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB81_52
.LBB81_61:                              # %for.end.153
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, -128(%rbp)
	je	.LBB81_63
# BB#62:                                # %if.then.156
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-56(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB81_64
.LBB81_63:                              # %if.else.158
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_buffer_overlays_before
.LBB81_64:                              # %if.end.159
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB81_65:                              # %if.end.160
                                        #   in Loop: Header=BB81_32 Depth=1
	jmp	.LBB81_66
.LBB81_66:                              # %for.inc.161
                                        #   in Loop: Header=BB81_32 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB81_32
.LBB81_67:                              # %for.end.162
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 960(%rcx)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	recenter_overlay_lists, .Lfunc_end81-recenter_overlay_lists
	.cfi_endproc

	.globl	adjust_overlays_for_insert
	.align	16, 0x90
	.type	adjust_overlays_for_insert,@function
adjust_overlays_for_insert:             # @adjust_overlays_for_insert
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	960(%rsi), %rsi
	cmpq	-8(%rbp), %rsi
	jl	.LBB82_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	addq	960(%rcx), %rax
	movq	%rax, 960(%rcx)
.LBB82_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end82:
	.size	adjust_overlays_for_insert, .Lfunc_end82-adjust_overlays_for_insert
	.cfi_endproc

	.globl	adjust_overlays_for_delete
	.align	16, 0x90
	.type	adjust_overlays_for_delete,@function
adjust_overlays_for_delete:             # @adjust_overlays_for_delete
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	960(%rsi), %rsi
	cmpq	-8(%rbp), %rsi
	jge	.LBB83_2
# BB#1:                                 # %if.then
	jmp	.LBB83_6
.LBB83_2:                               # %if.else
	movq	current_buffer, %rax
	movq	960(%rax), %rax
	subq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB83_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	960(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 960(%rcx)
	jmp	.LBB83_5
.LBB83_4:                               # %if.else.6
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	recenter_overlay_lists
.LBB83_5:                               # %if.end
	jmp	.LBB83_6
.LBB83_6:                               # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	adjust_overlays_for_delete, .Lfunc_end83-adjust_overlays_for_delete
	.cfi_endproc

	.globl	fix_start_end_in_overlays
	.align	16, 0x90
	.type	fix_start_end_in_overlays,@function
fix_start_end_in_overlays:              # @fix_start_end_in_overlays
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	current_buffer, %rsi
	movq	944(%rsi), %rsi
	movq	%rsi, -64(%rbp)
.LBB84_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB84_32
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	$1, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB84_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB84_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB84_6
.LBB84_5:                               # %cond.false
	callq	emacs_abort
.LBB84_6:                               # %cond.end
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB84_9
# BB#7:                                 # %land.lhs.true.18
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB84_9
# BB#8:                                 # %cond.true.24
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB84_10
.LBB84_9:                               # %cond.false.28
	callq	emacs_abort
.LBB84_10:                              # %cond.end.29
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	jge	.LBB84_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_marker
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB84_12:                              # %if.end
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB84_14
# BB#13:                                # %if.then.39
	jmp	.LBB84_32
.LBB84_14:                              # %if.end.40
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.LBB84_17
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.LBB84_30
# BB#16:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB84_30
.LBB84_17:                              # %if.then.48
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	960(%rcx), %rax
	jge	.LBB84_22
# BB#18:                                # %if.then.51
                                        #   in Loop: Header=BB84_1 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB84_20
# BB#19:                                # %if.then.53
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB84_21
.LBB84_20:                              # %if.else
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB84_21:                              # %if.end.54
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB84_26
.LBB84_22:                              # %if.else.55
                                        #   in Loop: Header=BB84_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB84_24
# BB#23:                                # %if.then.57
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB84_25
.LBB84_24:                              # %if.else.58
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB84_25:                              # %if.end.60
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB84_26:                              # %if.end.61
                                        #   in Loop: Header=BB84_1 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB84_28
# BB#27:                                # %if.then.63
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	callq	set_buffer_overlays_before
	jmp	.LBB84_29
.LBB84_28:                              # %if.else.65
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB84_29:                              # %if.end.68
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB84_31
.LBB84_30:                              # %if.else.70
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB84_31:                              # %if.end.72
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_1
.LBB84_32:                              # %for.end
	movq	$0, -72(%rbp)
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB84_33:                              # %for.cond.73
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB84_64
# BB#34:                                # %for.body.75
                                        #   in Loop: Header=BB84_33 Depth=1
	movl	$1, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB84_37
# BB#35:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB84_37
# BB#36:                                # %cond.true.89
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB84_38
.LBB84_37:                              # %cond.false.93
	callq	emacs_abort
.LBB84_38:                              # %cond.end.94
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB84_41
# BB#39:                                # %land.lhs.true.102
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB84_41
# BB#40:                                # %cond.true.108
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB84_42
.LBB84_41:                              # %cond.false.112
	callq	emacs_abort
.LBB84_42:                              # %cond.end.113
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	jge	.LBB84_44
# BB#43:                                # %if.then.117
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_marker
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB84_44:                              # %if.end.124
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.LBB84_46
# BB#45:                                # %if.then.127
	jmp	.LBB84_64
.LBB84_46:                              # %if.end.128
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB84_49
# BB#47:                                # %lor.lhs.false.131
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.LBB84_62
# BB#48:                                # %land.lhs.true.134
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB84_62
.LBB84_49:                              # %if.then.137
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	960(%rcx), %rax
	jge	.LBB84_54
# BB#50:                                # %if.then.141
                                        #   in Loop: Header=BB84_33 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB84_52
# BB#51:                                # %if.then.143
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB84_53
.LBB84_52:                              # %if.else.144
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB84_53:                              # %if.end.146
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB84_58
.LBB84_54:                              # %if.else.147
                                        #   in Loop: Header=BB84_33 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB84_56
# BB#55:                                # %if.then.149
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB84_57
.LBB84_56:                              # %if.else.150
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB84_57:                              # %if.end.152
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB84_58:                              # %if.end.153
                                        #   in Loop: Header=BB84_33 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB84_60
# BB#59:                                # %if.then.155
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	callq	set_buffer_overlays_after
	jmp	.LBB84_61
.LBB84_60:                              # %if.else.157
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB84_61:                              # %if.end.160
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB84_63
.LBB84_62:                              # %if.else.162
                                        #   in Loop: Header=BB84_33 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB84_63:                              # %if.end.164
                                        #   in Loop: Header=BB84_33 Depth=1
	jmp	.LBB84_33
.LBB84_64:                              # %for.end.165
	cmpq	$0, -48(%rbp)
	je	.LBB84_66
# BB#65:                                # %if.then.167
	movq	current_buffer, %rax
	movq	944(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	callq	set_buffer_overlays_before
.LBB84_66:                              # %if.end.170
	cmpq	$0, -56(%rbp)
	je	.LBB84_68
# BB#67:                                # %if.then.172
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	current_buffer, %rdi
	movq	-40(%rbp), %rsi
	callq	set_buffer_overlays_after
.LBB84_68:                              # %if.end.175
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	960(%rax), %rsi
	callq	recenter_overlay_lists
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	fix_start_end_in_overlays, .Lfunc_end84-fix_start_end_in_overlays
	.cfi_endproc

	.globl	fix_overlays_before
	.align	16, 0x90
	.type	fix_overlays_before,@function
fix_overlays_before:                    # @fix_overlays_before
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	944(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB85_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB85_7
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB85_1 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB85_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB85_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB85_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB85_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB85_6
.LBB85_5:                               # %cond.false
	callq	emacs_abort
.LBB85_6:                               # %cond.end
                                        #   in Loop: Header=BB85_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	cmpq	-24(%rbp), %rax
	setge	%cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB85_7:                               # %land.end
                                        #   in Loop: Header=BB85_1 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB85_8
	jmp	.LBB85_9
.LBB85_8:                               # %while.body
                                        #   in Loop: Header=BB85_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB85_1
.LBB85_9:                               # %while.end
	cmpq	$0, -32(%rbp)
	je	.LBB85_12
# BB#10:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.LBB85_12
# BB#11:                                # %lor.lhs.false.17
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB85_13
.LBB85_12:                              # %if.then
	jmp	.LBB85_29
.LBB85_13:                              # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB85_14:                              # %while.cond.21
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB85_29
# BB#15:                                # %while.body.23
                                        #   in Loop: Header=BB85_14 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB85_18
# BB#16:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB85_14 Depth=1
	movq	-56(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB85_18
# BB#17:                                # %cond.true.37
                                        #   in Loop: Header=BB85_14 Depth=1
	movq	-56(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB85_19
.LBB85_18:                              # %cond.false.41
	callq	emacs_abort
.LBB85_19:                              # %cond.end.42
                                        #   in Loop: Header=BB85_14 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	cmpq	-24(%rbp), %rcx
	jne	.LBB85_24
# BB#20:                                # %if.then.46
                                        #   in Loop: Header=BB85_14 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, -48(%rbp)
	jne	.LBB85_22
# BB#21:                                # %if.then.50
                                        #   in Loop: Header=BB85_14 Depth=1
	movq	-8(%rbp), %rax
	movq	944(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	set_buffer_overlays_before
	jmp	.LBB85_23
.LBB85_22:                              # %if.else
                                        #   in Loop: Header=BB85_14 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB85_23:                              # %if.end.56
                                        #   in Loop: Header=BB85_14 Depth=1
	jmp	.LBB85_28
.LBB85_24:                              # %if.else.57
                                        #   in Loop: Header=BB85_14 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB85_26
# BB#25:                                # %if.then.60
                                        #   in Loop: Header=BB85_14 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB85_27
.LBB85_26:                              # %if.else.62
	jmp	.LBB85_29
.LBB85_27:                              # %if.end.63
                                        #   in Loop: Header=BB85_14 Depth=1
	jmp	.LBB85_28
.LBB85_28:                              # %if.end.64
                                        #   in Loop: Header=BB85_14 Depth=1
	jmp	.LBB85_14
.LBB85_29:                              # %while.end.65
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	fix_overlays_before, .Lfunc_end85-fix_overlays_before
	.cfi_endproc

	.globl	Foverlayp
	.align	16, 0x90
	.type	Foverlayp,@function
Foverlayp:                              # @Foverlayp
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	OVERLAYP
	testb	$1, %al
	jne	.LBB86_1
	jmp	.LBB86_2
.LBB86_1:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB86_3
.LBB86_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB86_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Foverlayp, .Lfunc_end86-Foverlayp
	.cfi_endproc

	.globl	Fmake_overlay
	.align	16, 0x90
	.type	Fmake_overlay,@function
Fmake_overlay:                          # @Fmake_overlay
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
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB87_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	jmp	.LBB87_3
.LBB87_2:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	CHECK_BUFFER
.LBB87_3:                               # %if.end
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB87_7
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB87_7
# BB#5:                                 # %land.lhs.true.7
	movq	-8(%rbp), %rdi
	callq	Fmarker_buffer
	cmpq	-24(%rbp), %rax
	je	.LBB87_7
# BB#6:                                 # %if.then.11
	movabsq	$.L.str.27, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB87_7:                               # %if.end.12
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB87_11
# BB#8:                                 # %land.lhs.true.17
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB87_11
# BB#9:                                 # %land.lhs.true.21
	movq	-16(%rbp), %rdi
	callq	Fmarker_buffer
	cmpq	-24(%rbp), %rax
	je	.LBB87_11
# BB#10:                                # %if.then.25
	movabsq	$.L.str.27, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB87_11:                              # %if.end.26
	jmp	.LBB87_12
.LBB87_12:                              # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB87_15
# BB#13:                                # %land.lhs.true.31
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB87_15
# BB#14:                                # %if.then.35
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB87_19
.LBB87_15:                              # %if.else.38
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB87_17
# BB#16:                                # %cond.true
	jmp	.LBB87_18
.LBB87_17:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB87_18:                              # %cond.end
	jmp	.LBB87_19
.LBB87_19:                              # %if.end.45
	jmp	.LBB87_20
.LBB87_20:                              # %do.end
	jmp	.LBB87_21
.LBB87_21:                              # %do.body.46
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB87_24
# BB#22:                                # %land.lhs.true.51
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB87_24
# BB#23:                                # %if.then.55
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB87_28
.LBB87_24:                              # %if.else.58
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB87_26
# BB#25:                                # %cond.true.64
	jmp	.LBB87_27
.LBB87_26:                              # %cond.false.65
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB87_27:                              # %cond.end.67
	jmp	.LBB87_28
.LBB87_28:                              # %if.end.68
	jmp	.LBB87_29
.LBB87_29:                              # %do.end.69
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB87_31
# BB#30:                                # %if.then.73
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB87_31:                              # %if.end.74
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -56(%rbp)
	callq	Fmake_marker
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	Fset_marker
	movq	%rax, -8(%rbp)
	callq	Fmake_marker
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	Fset_marker
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB87_33
# BB#32:                                # %if.then.83
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	orl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, (%rax)
.LBB87_33:                              # %if.end.85
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB87_35
# BB#34:                                # %if.then.89
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	orl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, (%rax)
.LBB87_35:                              # %if.end.94
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	build_overlay
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB87_38
# BB#36:                                # %land.lhs.true.103
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB87_38
# BB#37:                                # %cond.true.107
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB87_39
.LBB87_38:                              # %cond.false.109
	callq	emacs_abort
.LBB87_39:                              # %cond.end.110
	movq	-56(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	960(%rax), %rcx
	jge	.LBB87_41
# BB#40:                                # %if.then.113
	movq	-56(%rbp), %rax
	movq	952(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	XOVERLAY
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 8(%rax)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XOVERLAY
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_overlays_after
	jmp	.LBB87_42
.LBB87_41:                              # %if.else.116
	movq	-56(%rbp), %rax
	movq	944(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	XOVERLAY
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 8(%rax)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XOVERLAY
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_overlays_before
.LBB87_42:                              # %if.end.120
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	960(%rax), %rsi
	callq	recenter_overlay_lists
	movq	-48(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	Fmake_overlay, .Lfunc_end87-Fmake_overlay
	.cfi_endproc

	.globl	Fmove_overlay
	.align	16, 0x90
	.type	Fmove_overlay,@function
Fmove_overlay:                          # @Fmove_overlay
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -56(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_OVERLAY
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB88_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	Fmarker_buffer
	movq	%rax, -40(%rbp)
.LBB88_2:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB88_4
# BB#3:                                 # %if.then.6
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
.LBB88_4:                               # %if.end.8
	movq	-40(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-40(%rbp), %rdi
	callq	Fbuffer_live_p
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB88_6
# BB#5:                                 # %if.then.12
	movabsq	$.L.str.28, %rdi
	movb	$0, %al
	callq	error
.LBB88_6:                               # %if.end.13
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB88_10
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB88_10
# BB#8:                                 # %land.lhs.true.19
	movq	-24(%rbp), %rdi
	callq	Fmarker_buffer
	cmpq	-40(%rbp), %rax
	je	.LBB88_10
# BB#9:                                 # %if.then.23
	movabsq	$.L.str.27, %rdi
	movq	-24(%rbp), %rsi
	callq	signal_error
.LBB88_10:                              # %if.end.24
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB88_14
# BB#11:                                # %land.lhs.true.29
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB88_14
# BB#12:                                # %land.lhs.true.33
	movq	-32(%rbp), %rdi
	callq	Fmarker_buffer
	cmpq	-40(%rbp), %rax
	je	.LBB88_14
# BB#13:                                # %if.then.37
	movabsq	$.L.str.27, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB88_14:                              # %if.end.38
	jmp	.LBB88_15
.LBB88_15:                              # %do.body
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB88_18
# BB#16:                                # %land.lhs.true.43
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB88_18
# BB#17:                                # %if.then.47
	movq	-24(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB88_22
.LBB88_18:                              # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB88_20
# BB#19:                                # %cond.true
	jmp	.LBB88_21
.LBB88_20:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB88_21:                              # %cond.end
	jmp	.LBB88_22
.LBB88_22:                              # %if.end.56
	jmp	.LBB88_23
.LBB88_23:                              # %do.end
	jmp	.LBB88_24
.LBB88_24:                              # %do.body.57
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB88_27
# BB#25:                                # %land.lhs.true.62
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB88_27
# BB#26:                                # %if.then.66
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB88_31
.LBB88_27:                              # %if.else.69
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB88_29
# BB#28:                                # %cond.true.75
	jmp	.LBB88_30
.LBB88_29:                              # %cond.false.76
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB88_30:                              # %cond.end.78
	jmp	.LBB88_31
.LBB88_31:                              # %if.end.79
	jmp	.LBB88_32
.LBB88_32:                              # %do.end.80
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB88_34
# BB#33:                                # %if.then.84
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB88_34:                              # %if.end.85
	movl	$546, %edi              # imm = 0x222
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	Fmarker_buffer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB88_44
# BB#35:                                # %if.then.95
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB88_38
# BB#36:                                # %land.lhs.true.103
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB88_38
# BB#37:                                # %cond.true.109
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB88_39
.LBB88_38:                              # %cond.false.113
	callq	emacs_abort
.LBB88_39:                              # %cond.end.114
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB88_42
# BB#40:                                # %land.lhs.true.121
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB88_42
# BB#41:                                # %cond.true.127
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB88_43
.LBB88_42:                              # %cond.false.131
	callq	emacs_abort
.LBB88_43:                              # %cond.end.132
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	unchain_both
.LBB88_44:                              # %if.end.134
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	Fset_marker
	movq	-16(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	XOVERLAY
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	Fset_marker
	movq	-16(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB88_48
# BB#45:                                # %if.then.149
	cmpq	$0, -56(%rbp)
	je	.LBB88_47
# BB#46:                                # %if.then.150
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	modify_overlay
.LBB88_47:                              # %if.end.151
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	modify_overlay
	jmp	.LBB88_61
.LBB88_48:                              # %if.else.152
	movq	-96(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB88_50
# BB#49:                                # %if.then.155
	movq	-48(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	modify_overlay
	jmp	.LBB88_60
.LBB88_50:                              # %if.else.156
	movq	-104(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB88_52
# BB#51:                                # %if.then.159
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	modify_overlay
	jmp	.LBB88_59
.LBB88_52:                              # %if.else.160
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rax
	cmpq	-80(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	jge	.LBB88_54
# BB#53:                                # %cond.true.163
	movq	-96(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB88_55
.LBB88_54:                              # %cond.false.164
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB88_55:                              # %cond.end.165
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx
	cmpq	-88(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jle	.LBB88_57
# BB#56:                                # %cond.true.169
	movq	-104(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB88_58
.LBB88_57:                              # %cond.false.170
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB88_58:                              # %cond.end.171
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	modify_overlay
.LBB88_59:                              # %if.end.173
	jmp	.LBB88_60
.LBB88_60:                              # %if.end.174
	jmp	.LBB88_61
.LBB88_61:                              # %if.end.175
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB88_64
# BB#62:                                # %land.lhs.true.178
	movl	$380, %edi              # imm = 0x17C
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB88_64
# BB#63:                                # %if.then.184
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fdelete_overlay
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB88_68
.LBB88_64:                              # %if.end.187
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	960(%rcx), %rax
	jge	.LBB88_66
# BB#65:                                # %if.then.190
	movq	-48(%rbp), %rax
	movq	952(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	XOVERLAY
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 8(%rax)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XOVERLAY
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_overlays_after
	jmp	.LBB88_67
.LBB88_66:                              # %if.else.193
	movq	-48(%rbp), %rax
	movq	944(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	XOVERLAY
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 8(%rax)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XOVERLAY
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_overlays_before
.LBB88_67:                              # %if.end.197
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	960(%rax), %rsi
	callq	recenter_overlay_lists
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB88_68:                              # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end88:
	.size	Fmove_overlay, .Lfunc_end88-Fmove_overlay
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_OVERLAY,@function
CHECK_OVERLAY:                          # @CHECK_OVERLAY
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	OVERLAYP
	testb	$1, %al
	jne	.LBB89_1
	jmp	.LBB89_2
.LBB89_1:                               # %cond.true
	jmp	.LBB89_3
.LBB89_2:                               # %cond.false
	movl	$733, %edi              # imm = 0x2DD
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB89_3:                               # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	CHECK_OVERLAY, .Lfunc_end89-CHECK_OVERLAY
	.cfi_endproc

	.align	16, 0x90
	.type	unchain_both,@function
unchain_both:                           # @unchain_both
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	944(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	unchain_overlay
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_overlays_before
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	952(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	unchain_overlay
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_overlays_after
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	unchain_both, .Lfunc_end90-unchain_both
	.cfi_endproc

	.align	16, 0x90
	.type	modify_overlay,@function
modify_overlay:                         # @modify_overlay
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	-24(%rbp), %rdx
	jle	.LBB91_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB91_2:                               # %if.end
	jmp	.LBB91_3
.LBB91_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB91_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB91_6
# BB#5:                                 # %if.then.6
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
	jmp	.LBB91_11
.LBB91_6:                               # %if.else
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB91_8
# BB#7:                                 # %if.then.17
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB91_8:                               # %if.end.23
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB91_10
# BB#9:                                 # %if.then.28
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB91_10:                              # %if.end.32
	jmp	.LBB91_11
.LBB91_11:                              # %if.end.33
	jmp	.LBB91_12
.LBB91_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	bset_redisplay
	movq	-8(%rbp), %rdi
	movq	720(%rdi), %rdi
	movq	72(%rdi), %rax
	addq	$1, %rax
	movq	%rax, 72(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	modify_overlay, .Lfunc_end91-modify_overlay
	.cfi_endproc

	.globl	Fdelete_overlay
	.align	16, 0x90
	.type	Fdelete_overlay,@function
Fdelete_overlay:                        # @Fdelete_overlay
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_OVERLAY
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	Fmarker_buffer
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB92_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB92_7
.LBB92_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movl	$546, %edi              # imm = 0x222
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	unchain_both
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XOVERLAY
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	drop_overlay
	cmpl	$0, windows_or_buffers_changed
	jne	.LBB92_6
# BB#3:                                 # %land.lhs.true
	movl	$199, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_5
# BB#4:                                 # %lor.lhs.false
	movl	$168, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB92_6
.LBB92_5:                               # %if.then.17
	movq	-32(%rbp), %rax
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
.LBB92_6:                               # %if.end.18
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB92_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	Fdelete_overlay, .Lfunc_end92-Fdelete_overlay
	.cfi_endproc

	.globl	Fdelete_all_overlays
	.align	16, 0x90
	.type	Fdelete_all_overlays,@function
Fdelete_all_overlays:                   # @Fdelete_all_overlays
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_buffer
	movq	%rax, %rdi
	callq	delete_all_overlays
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	Fdelete_all_overlays, .Lfunc_end93-Fdelete_all_overlays
	.cfi_endproc

	.globl	Foverlay_start
	.align	16, 0x90
	.type	Foverlay_start,@function
Foverlay_start:                         # @Foverlay_start
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_OVERLAY
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	Fmarker_position
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	Foverlay_start, .Lfunc_end94-Foverlay_start
	.cfi_endproc

	.globl	Foverlay_end
	.align	16, 0x90
	.type	Foverlay_end,@function
Foverlay_end:                           # @Foverlay_end
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_OVERLAY
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	Fmarker_position
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	Foverlay_end, .Lfunc_end95-Foverlay_end
	.cfi_endproc

	.globl	Foverlay_buffer
	.align	16, 0x90
	.type	Foverlay_buffer,@function
Foverlay_buffer:                        # @Foverlay_buffer
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_OVERLAY
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	Fmarker_buffer
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	Foverlay_buffer, .Lfunc_end96-Foverlay_buffer
	.cfi_endproc

	.globl	Foverlay_properties
	.align	16, 0x90
	.type	Foverlay_properties,@function
Foverlay_properties:                    # @Foverlay_properties
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_OVERLAY
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	32(%rax), %rdi
	callq	Fcopy_sequence
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	Foverlay_properties, .Lfunc_end97-Foverlay_properties
	.cfi_endproc

	.globl	Foverlays_at
	.align	16, 0x90
	.type	Foverlays_at,@function
Foverlays_at:                           # @Foverlays_at
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB98_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB98_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB98_8
.LBB98_4:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB98_6
# BB#5:                                 # %cond.true
	jmp	.LBB98_7
.LBB98_6:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB98_7:                               # %cond.end
	jmp	.LBB98_8
.LBB98_8:                               # %if.end
	jmp	.LBB98_9
.LBB98_9:                               # %do.end
	callq	buffer_has_overlays
	testb	$1, %al
	jne	.LBB98_11
# BB#10:                                # %if.then.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB98_17
.LBB98_11:                              # %if.end.15
	movq	$10, -32(%rbp)
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movl	$1, %esi
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	xorl	%r8d, %r8d
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movl	$0, (%rsp)
	callq	overlays_at
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB98_16
# BB#12:                                # %if.then.21
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB98_13
	jmp	.LBB98_14
.LBB98_13:                              # %cond.true.24
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB98_15
.LBB98_14:                              # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB98_15
.LBB98_15:                              # %cond.end.27
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	sort_overlays
	movq	%rax, -40(%rbp)
.LBB98_16:                              # %if.end.29
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Flist
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB98_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	Foverlays_at, .Lfunc_end98-Foverlays_at
	.cfi_endproc

	.globl	Foverlays_in
	.align	16, 0x90
	.type	Foverlays_in,@function
Foverlays_in:                           # @Foverlays_in
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB99_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB99_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB99_8
.LBB99_4:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB99_6
# BB#5:                                 # %cond.true
	jmp	.LBB99_7
.LBB99_6:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB99_7:                               # %cond.end
	jmp	.LBB99_8
.LBB99_8:                               # %if.end
	jmp	.LBB99_9
.LBB99_9:                               # %do.end
	jmp	.LBB99_10
.LBB99_10:                              # %do.body.12
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB99_13
# BB#11:                                # %land.lhs.true.17
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB99_13
# BB#12:                                # %if.then.21
	movq	-24(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB99_17
.LBB99_13:                              # %if.else.24
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB99_15
# BB#14:                                # %cond.true.30
	jmp	.LBB99_16
.LBB99_15:                              # %cond.false.31
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB99_16:                              # %cond.end.33
	jmp	.LBB99_17
.LBB99_17:                              # %if.end.34
	jmp	.LBB99_18
.LBB99_18:                              # %do.end.35
	callq	buffer_has_overlays
	testb	$1, %al
	jne	.LBB99_20
# BB#19:                                # %if.then.37
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB99_21
.LBB99_20:                              # %if.end.39
	movq	$10, -32(%rbp)
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movl	$1, %edx
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %r9d
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rdi
	sarq	$2, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	$0, (%rsp)
	callq	overlays_in
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Flist
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB99_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	Foverlays_in, .Lfunc_end99-Foverlays_in
	.cfi_endproc

	.globl	Fnext_overlay_change
	.align	16, 0x90
	.type	Fnext_overlay_change,@function
Fnext_overlay_change:                   # @Fnext_overlay_change
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB100_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB100_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB100_8
.LBB100_4:                              # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB100_6
# BB#5:                                 # %cond.true
	jmp	.LBB100_7
.LBB100_6:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB100_7:                              # %cond.end
	jmp	.LBB100_8
.LBB100_8:                              # %if.end
	jmp	.LBB100_9
.LBB100_9:                              # %do.end
	callq	buffer_has_overlays
	testb	$1, %al
	jne	.LBB100_11
# BB#10:                                # %if.then.13
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB100_22
.LBB100_11:                             # %if.end.14
	movq	$10, -32(%rbp)
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movl	$1, %esi
	leaq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	movl	$1, (%rsp)
	callq	overlays_at
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
.LBB100_12:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB100_21
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB100_12 Depth=1
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$1, %edx
	jne	.LBB100_16
# BB#14:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB100_12 Depth=1
	movq	-64(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB100_16
# BB#15:                                # %cond.true.28
                                        #   in Loop: Header=BB100_12 Depth=1
	movq	-64(%rbp), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB100_17
.LBB100_16:                             # %cond.false.30
	callq	emacs_abort
.LBB100_17:                             # %cond.end.31
                                        #   in Loop: Header=BB100_12 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	jge	.LBB100_19
# BB#18:                                # %if.then.34
                                        #   in Loop: Header=BB100_12 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB100_19:                             # %if.end.35
                                        #   in Loop: Header=BB100_12 Depth=1
	jmp	.LBB100_20
.LBB100_20:                             # %for.inc
                                        #   in Loop: Header=BB100_12 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB100_12
.LBB100_21:                             # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB100_22:                             # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	Fnext_overlay_change, .Lfunc_end100-Fnext_overlay_change
	.cfi_endproc

	.globl	Fprevious_overlay_change
	.align	16, 0x90
	.type	Fprevious_overlay_change,@function
Fprevious_overlay_change:               # @Fprevious_overlay_change
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB101_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB101_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB101_8
.LBB101_4:                              # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB101_6
# BB#5:                                 # %cond.true
	jmp	.LBB101_7
.LBB101_6:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB101_7:                              # %cond.end
	jmp	.LBB101_8
.LBB101_8:                              # %if.end
	jmp	.LBB101_9
.LBB101_9:                              # %do.end
	callq	buffer_has_overlays
	testb	$1, %al
	jne	.LBB101_11
# BB#10:                                # %if.then.13
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB101_14
.LBB101_11:                             # %if.end.14
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jne	.LBB101_13
# BB#12:                                # %if.then.18
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB101_14
.LBB101_13:                             # %if.end.19
	movq	$10, -40(%rbp)
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movl	$1, %esi
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-24(%rbp), %r9
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	movl	$1, (%rsp)
	callq	overlays_at
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	xfree
	movq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB101_14:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	Fprevious_overlay_change, .Lfunc_end101-Fprevious_overlay_change
	.cfi_endproc

	.globl	Foverlay_lists
	.align	16, 0x90
	.type	Foverlay_lists,@function
Foverlay_lists:                         # @Foverlay_lists
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
	subq	$48, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	944(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB102_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB102_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB102_1 Depth=1
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB102_1
.LBB102_4:                              # %for.end
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB102_5:                              # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB102_8
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB102_5 Depth=1
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
# BB#7:                                 # %for.inc.9
                                        #   in Loop: Header=BB102_5 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB102_5
.LBB102_8:                              # %for.end.11
	movq	-16(%rbp), %rdi
	callq	Fnreverse
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fnreverse
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	Foverlay_lists, .Lfunc_end102-Foverlay_lists
	.cfi_endproc

	.globl	Foverlay_recenter
	.align	16, 0x90
	.type	Foverlay_recenter,@function
Foverlay_recenter:                      # @Foverlay_recenter
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB103_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB103_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB103_8
.LBB103_4:                              # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB103_6
# BB#5:                                 # %cond.true
	jmp	.LBB103_7
.LBB103_6:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB103_7:                              # %cond.end
	jmp	.LBB103_8
.LBB103_8:                              # %if.end
	jmp	.LBB103_9
.LBB103_9:                              # %do.end
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	recenter_overlay_lists
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	Foverlay_recenter, .Lfunc_end103-Foverlay_recenter
	.cfi_endproc

	.globl	Foverlay_put
	.align	16, 0x90
	.type	Foverlay_put,@function
Foverlay_put:                           # @Foverlay_put
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_OVERLAY
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	Fmarker_buffer
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB104_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -42(%rbp)          # 1-byte Spill
	jne	.LBB104_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB104_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -42(%rbp)          # 1-byte Spill
.LBB104_3:                              # %land.end
                                        #   in Loop: Header=BB104_1 Depth=1
	movb	-42(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB104_4
	jmp	.LBB104_8
.LBB104_4:                              # %for.body
                                        #   in Loop: Header=BB104_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB104_6
# BB#5:                                 # %if.then
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -41(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	XSETCAR
	jmp	.LBB104_9
.LBB104_6:                              # %if.end
                                        #   in Loop: Header=BB104_1 Depth=1
	jmp	.LBB104_7
.LBB104_7:                              # %for.inc
                                        #   in Loop: Header=BB104_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB104_1
.LBB104_8:                              # %for.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -41(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %r8
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	XOVERLAY
	movq	32(%rax), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	Fcons
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_overlay_plist
.LBB104_9:                              # %found
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB104_25
# BB#10:                                # %if.then.39
	testb	$1, -41(%rbp)
	je	.LBB104_12
# BB#11:                                # %if.then.40
	movq	-40(%rbp), %rdi
	callq	XBUFFER
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	modify_overlay
.LBB104_12:                             # %if.end.47
	movl	$380, %edi              # imm = 0x17C
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_24
# BB#13:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB104_24
# BB#14:                                # %land.lhs.true.54
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB104_17
# BB#15:                                # %land.lhs.true.61
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB104_17
# BB#16:                                # %cond.true
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB104_18
.LBB104_17:                             # %cond.false
	callq	emacs_abort
.LBB104_18:                             # %cond.end
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB104_21
# BB#19:                                # %land.lhs.true.76
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB104_21
# BB#20:                                # %cond.true.82
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB104_22
.LBB104_21:                             # %cond.false.86
	callq	emacs_abort
.LBB104_22:                             # %cond.end.87
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB104_24
# BB#23:                                # %if.then.91
	movq	-8(%rbp), %rdi
	callq	Fdelete_overlay
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB104_24:                             # %if.end.93
	jmp	.LBB104_25
.LBB104_25:                             # %if.end.94
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	Foverlay_put, .Lfunc_end104-Foverlay_put
	.cfi_endproc

	.globl	report_overlay_modification
	.align	16, 0x90
	.type	report_overlay_modification,@function
report_overlay_modification:            # @report_overlay_modification
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
	subq	$1232, %rsp             # imm = 0x4D0
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB105_2
# BB#1:                                 # %cond.true
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB105_3
.LBB105_2:                              # %cond.false
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB105_3:                              # %cond.end
	movl	-236(%rbp), %eax        # 4-byte Reload
	xorl	%edi, %edi
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -73(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	testb	$1, -17(%rbp)
	jne	.LBB105_67
# BB#4:                                 # %if.then
	movq	$0, last_overlay_modification_hooks_used
	movq	current_buffer, %rax
	movq	944(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB105_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB105_35
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB105_5 Depth=1
	movl	$1, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB105_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-112(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_9
# BB#8:                                 # %cond.true.18
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-112(%rbp), %rdi
	callq	marker_position
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB105_10
.LBB105_9:                              # %cond.false.20
	callq	emacs_abort
.LBB105_10:                             # %cond.end.21
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	-96(%rbp), %rcx
	jle	.LBB105_12
# BB#11:                                # %if.then.26
	jmp	.LBB105_35
.LBB105_12:                             # %if.end
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB105_15
# BB#13:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-104(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_15
# BB#14:                                # %cond.true.35
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-104(%rbp), %rdi
	callq	marker_position
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB105_16
.LBB105_15:                             # %cond.false.37
	callq	emacs_abort
.LBB105_16:                             # %cond.end.38
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	testb	$1, -73(%rbp)
	je	.LBB105_22
# BB#17:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	-88(%rbp), %rax
	je	.LBB105_19
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB105_22
.LBB105_19:                             # %if.then.49
                                        #   in Loop: Header=BB105_5 Depth=1
	movl	$554, %edi              # imm = 0x22A
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB105_21
# BB#20:                                # %if.then.55
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	add_overlay_mod_hooklist
.LBB105_21:                             # %if.end.56
                                        #   in Loop: Header=BB105_5 Depth=1
	jmp	.LBB105_22
.LBB105_22:                             # %if.end.57
                                        #   in Loop: Header=BB105_5 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB105_28
# BB#23:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	-96(%rbp), %rax
	je	.LBB105_25
# BB#24:                                # %lor.lhs.false.64
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB105_28
.LBB105_25:                             # %if.then.68
                                        #   in Loop: Header=BB105_5 Depth=1
	movl	$552, %edi              # imm = 0x228
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB105_27
# BB#26:                                # %if.then.74
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	add_overlay_mod_hooklist
.LBB105_27:                             # %if.end.75
                                        #   in Loop: Header=BB105_5 Depth=1
	jmp	.LBB105_28
.LBB105_28:                             # %if.end.76
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	-88(%rbp), %rax
	jle	.LBB105_33
# BB#29:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB105_33
# BB#30:                                # %if.then.84
                                        #   in Loop: Header=BB105_5 Depth=1
	movl	$676, %edi              # imm = 0x2A4
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB105_32
# BB#31:                                # %if.then.90
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	add_overlay_mod_hooklist
.LBB105_32:                             # %if.end.91
                                        #   in Loop: Header=BB105_5 Depth=1
	jmp	.LBB105_33
.LBB105_33:                             # %if.end.92
                                        #   in Loop: Header=BB105_5 Depth=1
	jmp	.LBB105_34
.LBB105_34:                             # %for.inc
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB105_5
.LBB105_35:                             # %for.end
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB105_36:                             # %for.cond.93
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB105_66
# BB#37:                                # %for.body.95
                                        #   in Loop: Header=BB105_36 Depth=1
	movl	$1, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-64(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB105_40
# BB#38:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-136(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_40
# BB#39:                                # %cond.true.113
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-136(%rbp), %rdi
	callq	marker_position
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB105_41
.LBB105_40:                             # %cond.false.115
	callq	emacs_abort
.LBB105_41:                             # %cond.end.116
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	jne	.LBB105_44
# BB#42:                                # %land.lhs.true.122
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-144(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_44
# BB#43:                                # %cond.true.126
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-144(%rbp), %rdi
	callq	marker_position
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB105_45
.LBB105_44:                             # %cond.false.128
	callq	emacs_abort
.LBB105_45:                             # %cond.end.129
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	-120(%rbp), %rcx
	jge	.LBB105_47
# BB#46:                                # %if.then.134
	jmp	.LBB105_66
.LBB105_47:                             # %if.end.135
                                        #   in Loop: Header=BB105_36 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB105_53
# BB#48:                                # %land.lhs.true.138
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	-120(%rbp), %rax
	je	.LBB105_50
# BB#49:                                # %lor.lhs.false.142
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB105_53
.LBB105_50:                             # %if.then.146
                                        #   in Loop: Header=BB105_36 Depth=1
	movl	$554, %edi              # imm = 0x22A
	movq	-64(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB105_52
# BB#51:                                # %if.then.152
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	add_overlay_mod_hooklist
.LBB105_52:                             # %if.end.153
                                        #   in Loop: Header=BB105_36 Depth=1
	jmp	.LBB105_53
.LBB105_53:                             # %if.end.154
                                        #   in Loop: Header=BB105_36 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB105_59
# BB#54:                                # %land.lhs.true.157
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	-128(%rbp), %rax
	je	.LBB105_56
# BB#55:                                # %lor.lhs.false.161
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB105_59
.LBB105_56:                             # %if.then.165
                                        #   in Loop: Header=BB105_36 Depth=1
	movl	$552, %edi              # imm = 0x228
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB105_58
# BB#57:                                # %if.then.171
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	add_overlay_mod_hooklist
.LBB105_58:                             # %if.end.172
                                        #   in Loop: Header=BB105_36 Depth=1
	jmp	.LBB105_59
.LBB105_59:                             # %if.end.173
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	-120(%rbp), %rax
	jle	.LBB105_64
# BB#60:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	-128(%rbp), %rax
	jge	.LBB105_64
# BB#61:                                # %if.then.181
                                        #   in Loop: Header=BB105_36 Depth=1
	movl	$676, %edi              # imm = 0x2A4
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB105_63
# BB#62:                                # %if.then.187
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	add_overlay_mod_hooklist
.LBB105_63:                             # %if.end.188
                                        #   in Loop: Header=BB105_36 Depth=1
	jmp	.LBB105_64
.LBB105_64:                             # %if.end.189
                                        #   in Loop: Header=BB105_36 Depth=1
	jmp	.LBB105_65
.LBB105_65:                             # %for.inc.190
                                        #   in Loop: Header=BB105_36 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB105_36
.LBB105_66:                             # %for.end.192
	jmp	.LBB105_67
.LBB105_67:                             # %if.end.193
	movq	last_overlay_modification_hooks_used, %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB105_71
# BB#68:                                # %if.then.195
	movq	last_overlay_modification_hooks, %rdi
	callq	XVECTOR
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB105_70
# BB#69:                                # %if.then.202
	jmp	.LBB105_485
.LBB105_70:                             # %if.end.203
	jmp	.LBB105_71
.LBB105_71:                             # %if.end.204
	movq	$16384, -184(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -192(%rbp)
	movb	$0, -193(%rbp)
# BB#72:                                # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_73
	jmp	.LBB105_152
.LBB105_73:                             # %cond.true.206
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_74
	jmp	.LBB105_113
.LBB105_74:                             # %cond.true.207
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB105_76
# BB#75:                                # %cond.true.212
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
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
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB105_77
.LBB105_76:                             # %cond.false.230
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -372(%rbp)        # 4-byte Spill
.LBB105_77:                             # %cond.end.236
	movl	-372(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB105_79
# BB#78:                                # %land.lhs.true.240
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB105_105
.LBB105_79:                             # %lor.lhs.false.245
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_80
	jmp	.LBB105_91
.LBB105_80:                             # %cond.true.246
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB105_85
# BB#81:                                # %cond.true.251
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -376(%rbp)        # 4-byte Spill
	jge	.LBB105_83
# BB#82:                                # %cond.true.261
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB105_84
.LBB105_83:                             # %cond.false.271
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
.LBB105_84:                             # %cond.end.277
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-376(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB105_105
	jmp	.LBB105_102
.LBB105_85:                             # %cond.false.281
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_86
	jmp	.LBB105_87
.LBB105_86:                             # %cond.true.282
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_105
	jmp	.LBB105_102
.LBB105_87:                             # %cond.false.283
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB105_89
# BB#88:                                # %cond.true.291
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
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
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB105_90
.LBB105_89:                             # %cond.false.311
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
.LBB105_90:                             # %cond.end.317
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB105_105
	jmp	.LBB105_102
.LBB105_91:                             # %cond.false.324
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_92
	jmp	.LBB105_93
.LBB105_92:                             # %cond.true.325
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_105
	jmp	.LBB105_102
.LBB105_93:                             # %cond.false.326
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB105_98
# BB#94:                                # %cond.true.331
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	jge	.LBB105_96
# BB#95:                                # %cond.true.341
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
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
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB105_97
.LBB105_96:                             # %cond.false.361
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -392(%rbp)        # 4-byte Spill
.LBB105_97:                             # %cond.end.367
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-388(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB105_105
	jmp	.LBB105_102
.LBB105_98:                             # %cond.false.372
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB105_100
# BB#99:                                # %cond.true.380
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB105_101
.LBB105_100:                            # %cond.false.390
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
.LBB105_101:                            # %cond.end.396
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB105_105
.LBB105_102:                            # %lor.lhs.false.403
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB105_104
# BB#103:                               # %land.lhs.true.411
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB105_105
.LBB105_104:                            # %lor.lhs.false.417
	movl	$127, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB105_109
.LBB105_105:                            # %cond.true.423
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB105_107
# BB#106:                               # %cond.true.429
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -400(%rbp)        # 4-byte Spill
	jmp	.LBB105_108
.LBB105_107:                            # %cond.false.435
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -400(%rbp)        # 4-byte Spill
.LBB105_108:                            # %cond.end.443
	movl	-400(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_109:                            # %cond.false.446
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB105_111
# BB#110:                               # %cond.true.452
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -404(%rbp)        # 4-byte Spill
	jmp	.LBB105_112
.LBB105_111:                            # %cond.false.458
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -404(%rbp)        # 4-byte Spill
.LBB105_112:                            # %cond.end.466
	movl	-404(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_113:                            # %cond.false.469
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_115
# BB#114:                               # %cond.true.475
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB105_116
.LBB105_115:                            # %cond.false.492
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB105_116:                            # %cond.end.496
	movq	-416(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB105_118
# BB#117:                               # %land.lhs.true.500
	cmpq	$0, -152(%rbp)
	jl	.LBB105_144
.LBB105_118:                            # %lor.lhs.false.503
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_119
	jmp	.LBB105_130
.LBB105_119:                            # %cond.true.504
	cmpq	$0, -152(%rbp)
	jge	.LBB105_124
# BB#120:                               # %cond.true.507
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jge	.LBB105_122
# BB#121:                               # %cond.true.513
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB105_123
.LBB105_122:                            # %cond.false.521
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB105_123:                            # %cond.end.525
	movq	-432(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	cqto
	movq	-440(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_144
	jmp	.LBB105_141
.LBB105_124:                            # %cond.false.530
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_125
	jmp	.LBB105_126
.LBB105_125:                            # %cond.true.531
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_144
	jmp	.LBB105_141
.LBB105_126:                            # %cond.false.532
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_128
# BB#127:                               # %cond.true.538
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB105_129
.LBB105_128:                            # %cond.false.555
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB105_129:                            # %cond.end.559
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	movq	-456(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_144
	jmp	.LBB105_141
.LBB105_130:                            # %cond.false.564
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_131
	jmp	.LBB105_132
.LBB105_131:                            # %cond.true.565
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_144
	jmp	.LBB105_141
.LBB105_132:                            # %cond.false.566
	cmpq	$0, -152(%rbp)
	jge	.LBB105_137
# BB#133:                               # %cond.true.569
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jge	.LBB105_135
# BB#134:                               # %cond.true.575
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB105_136
.LBB105_135:                            # %cond.false.592
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB105_136:                            # %cond.end.596
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	cqto
	movq	-480(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_144
	jmp	.LBB105_141
.LBB105_137:                            # %cond.false.601
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_139
# BB#138:                               # %cond.true.607
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB105_140
.LBB105_139:                            # %cond.false.615
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB105_140:                            # %cond.end.619
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	cqto
	movq	-496(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_144
.LBB105_141:                            # %lor.lhs.false.624
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_143
# BB#142:                               # %land.lhs.true.630
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB105_144
.LBB105_143:                            # %lor.lhs.false.634
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB105_148
.LBB105_144:                            # %cond.true.638
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB105_146
# BB#145:                               # %cond.true.644
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -500(%rbp)        # 4-byte Spill
	jmp	.LBB105_147
.LBB105_146:                            # %cond.false.650
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -500(%rbp)        # 4-byte Spill
.LBB105_147:                            # %cond.end.658
	movl	-500(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_148:                            # %cond.false.661
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB105_150
# BB#149:                               # %cond.true.667
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -504(%rbp)        # 4-byte Spill
	jmp	.LBB105_151
.LBB105_150:                            # %cond.false.673
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -504(%rbp)        # 4-byte Spill
.LBB105_151:                            # %cond.end.681
	movl	-504(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_152:                            # %cond.false.684
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_153
	jmp	.LBB105_232
.LBB105_153:                            # %cond.true.685
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_154
	jmp	.LBB105_193
.LBB105_154:                            # %cond.true.686
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB105_156
# BB#155:                               # %cond.true.694
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
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
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB105_157
.LBB105_156:                            # %cond.false.714
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -508(%rbp)        # 4-byte Spill
.LBB105_157:                            # %cond.end.720
	movl	-508(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB105_159
# BB#158:                               # %land.lhs.true.724
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB105_185
.LBB105_159:                            # %lor.lhs.false.729
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_160
	jmp	.LBB105_171
.LBB105_160:                            # %cond.true.730
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB105_165
# BB#161:                               # %cond.true.735
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -512(%rbp)        # 4-byte Spill
	jge	.LBB105_163
# BB#162:                               # %cond.true.745
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB105_164
.LBB105_163:                            # %cond.false.755
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -516(%rbp)        # 4-byte Spill
.LBB105_164:                            # %cond.end.761
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-512(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB105_185
	jmp	.LBB105_182
.LBB105_165:                            # %cond.false.766
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_166
	jmp	.LBB105_167
.LBB105_166:                            # %cond.true.767
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_185
	jmp	.LBB105_182
.LBB105_167:                            # %cond.false.768
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB105_169
# BB#168:                               # %cond.true.776
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
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
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB105_170
.LBB105_169:                            # %cond.false.796
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -520(%rbp)        # 4-byte Spill
.LBB105_170:                            # %cond.end.802
	movl	-520(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB105_185
	jmp	.LBB105_182
.LBB105_171:                            # %cond.false.809
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_172
	jmp	.LBB105_173
.LBB105_172:                            # %cond.true.810
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_185
	jmp	.LBB105_182
.LBB105_173:                            # %cond.false.811
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB105_178
# BB#174:                               # %cond.true.816
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -524(%rbp)        # 4-byte Spill
	jge	.LBB105_176
# BB#175:                               # %cond.true.826
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
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
	movl	%eax, -528(%rbp)        # 4-byte Spill
	jmp	.LBB105_177
.LBB105_176:                            # %cond.false.846
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -528(%rbp)        # 4-byte Spill
.LBB105_177:                            # %cond.end.852
	movl	-528(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-524(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB105_185
	jmp	.LBB105_182
.LBB105_178:                            # %cond.false.857
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB105_180
# BB#179:                               # %cond.true.865
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -532(%rbp)        # 4-byte Spill
	jmp	.LBB105_181
.LBB105_180:                            # %cond.false.875
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -532(%rbp)        # 4-byte Spill
.LBB105_181:                            # %cond.end.881
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB105_185
.LBB105_182:                            # %lor.lhs.false.888
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB105_184
# BB#183:                               # %land.lhs.true.896
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB105_185
.LBB105_184:                            # %lor.lhs.false.902
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB105_189
.LBB105_185:                            # %cond.true.908
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB105_187
# BB#186:                               # %cond.true.914
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -536(%rbp)        # 4-byte Spill
	jmp	.LBB105_188
.LBB105_187:                            # %cond.false.920
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -536(%rbp)        # 4-byte Spill
.LBB105_188:                            # %cond.end.928
	movl	-536(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_189:                            # %cond.false.931
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB105_191
# BB#190:                               # %cond.true.937
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -540(%rbp)        # 4-byte Spill
	jmp	.LBB105_192
.LBB105_191:                            # %cond.false.943
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -540(%rbp)        # 4-byte Spill
.LBB105_192:                            # %cond.end.951
	movl	-540(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_193:                            # %cond.false.954
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_195
# BB#194:                               # %cond.true.960
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB105_196
.LBB105_195:                            # %cond.false.977
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB105_196:                            # %cond.end.981
	movq	-552(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB105_198
# BB#197:                               # %land.lhs.true.985
	cmpq	$0, -152(%rbp)
	jl	.LBB105_224
.LBB105_198:                            # %lor.lhs.false.988
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_199
	jmp	.LBB105_210
.LBB105_199:                            # %cond.true.989
	cmpq	$0, -152(%rbp)
	jge	.LBB105_204
# BB#200:                               # %cond.true.992
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jge	.LBB105_202
# BB#201:                               # %cond.true.998
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB105_203
.LBB105_202:                            # %cond.false.1006
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB105_203:                            # %cond.end.1010
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	cqto
	movq	-576(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-560(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_224
	jmp	.LBB105_221
.LBB105_204:                            # %cond.false.1015
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_205
	jmp	.LBB105_206
.LBB105_205:                            # %cond.true.1016
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_224
	jmp	.LBB105_221
.LBB105_206:                            # %cond.false.1017
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_208
# BB#207:                               # %cond.true.1023
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB105_209
.LBB105_208:                            # %cond.false.1040
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB105_209:                            # %cond.end.1044
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_224
	jmp	.LBB105_221
.LBB105_210:                            # %cond.false.1049
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_211
	jmp	.LBB105_212
.LBB105_211:                            # %cond.true.1050
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_224
	jmp	.LBB105_221
.LBB105_212:                            # %cond.false.1051
	cmpq	$0, -152(%rbp)
	jge	.LBB105_217
# BB#213:                               # %cond.true.1054
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jge	.LBB105_215
# BB#214:                               # %cond.true.1060
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB105_216
.LBB105_215:                            # %cond.false.1077
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB105_216:                            # %cond.end.1081
	movq	-608(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	cqto
	movq	-616(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-600(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_224
	jmp	.LBB105_221
.LBB105_217:                            # %cond.false.1086
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_219
# BB#218:                               # %cond.true.1092
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB105_220
.LBB105_219:                            # %cond.false.1100
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB105_220:                            # %cond.end.1104
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_224
.LBB105_221:                            # %lor.lhs.false.1109
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_223
# BB#222:                               # %land.lhs.true.1115
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB105_224
.LBB105_223:                            # %lor.lhs.false.1119
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB105_228
.LBB105_224:                            # %cond.true.1123
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB105_226
# BB#225:                               # %cond.true.1129
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -636(%rbp)        # 4-byte Spill
	jmp	.LBB105_227
.LBB105_226:                            # %cond.false.1135
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -636(%rbp)        # 4-byte Spill
.LBB105_227:                            # %cond.end.1143
	movl	-636(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_228:                            # %cond.false.1146
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB105_230
# BB#229:                               # %cond.true.1152
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -640(%rbp)        # 4-byte Spill
	jmp	.LBB105_231
.LBB105_230:                            # %cond.false.1158
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -640(%rbp)        # 4-byte Spill
.LBB105_231:                            # %cond.end.1166
	movl	-640(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_232:                            # %cond.false.1169
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_233
	jmp	.LBB105_312
.LBB105_233:                            # %cond.true.1170
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_234
	jmp	.LBB105_273
.LBB105_234:                            # %cond.true.1171
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB105_236
# BB#235:                               # %cond.true.1178
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jmp	.LBB105_237
.LBB105_236:                            # %cond.false.1196
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -644(%rbp)        # 4-byte Spill
.LBB105_237:                            # %cond.end.1201
	movl	-644(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB105_239
# BB#238:                               # %land.lhs.true.1205
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB105_265
.LBB105_239:                            # %lor.lhs.false.1209
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_240
	jmp	.LBB105_251
.LBB105_240:                            # %cond.true.1210
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB105_245
# BB#241:                               # %cond.true.1214
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -648(%rbp)        # 4-byte Spill
	jge	.LBB105_243
# BB#242:                               # %cond.true.1222
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	jmp	.LBB105_244
.LBB105_243:                            # %cond.false.1231
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
.LBB105_244:                            # %cond.end.1236
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-648(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB105_265
	jmp	.LBB105_262
.LBB105_245:                            # %cond.false.1241
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_246
	jmp	.LBB105_247
.LBB105_246:                            # %cond.true.1242
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_265
	jmp	.LBB105_262
.LBB105_247:                            # %cond.false.1243
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB105_249
# BB#248:                               # %cond.true.1250
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB105_250
.LBB105_249:                            # %cond.false.1268
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -656(%rbp)        # 4-byte Spill
.LBB105_250:                            # %cond.end.1273
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB105_265
	jmp	.LBB105_262
.LBB105_251:                            # %cond.false.1279
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_252
	jmp	.LBB105_253
.LBB105_252:                            # %cond.true.1280
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_265
	jmp	.LBB105_262
.LBB105_253:                            # %cond.false.1281
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB105_258
# BB#254:                               # %cond.true.1285
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	jge	.LBB105_256
# BB#255:                               # %cond.true.1293
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	jmp	.LBB105_257
.LBB105_256:                            # %cond.false.1311
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -664(%rbp)        # 4-byte Spill
.LBB105_257:                            # %cond.end.1316
	movl	-664(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-660(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB105_265
	jmp	.LBB105_262
.LBB105_258:                            # %cond.false.1321
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB105_260
# BB#259:                               # %cond.true.1328
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	jmp	.LBB105_261
.LBB105_260:                            # %cond.false.1337
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -668(%rbp)        # 4-byte Spill
.LBB105_261:                            # %cond.end.1342
	movl	-668(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB105_265
.LBB105_262:                            # %lor.lhs.false.1348
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB105_264
# BB#263:                               # %land.lhs.true.1355
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB105_265
.LBB105_264:                            # %lor.lhs.false.1360
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB105_269
.LBB105_265:                            # %cond.true.1365
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB105_267
# BB#266:                               # %cond.true.1370
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -672(%rbp)        # 4-byte Spill
	jmp	.LBB105_268
.LBB105_267:                            # %cond.false.1373
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -672(%rbp)        # 4-byte Spill
.LBB105_268:                            # %cond.end.1378
	movl	-672(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_269:                            # %cond.false.1381
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB105_271
# BB#270:                               # %cond.true.1386
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -676(%rbp)        # 4-byte Spill
	jmp	.LBB105_272
.LBB105_271:                            # %cond.false.1389
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -676(%rbp)        # 4-byte Spill
.LBB105_272:                            # %cond.end.1394
	movl	-676(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_273:                            # %cond.false.1397
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_275
# BB#274:                               # %cond.true.1403
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB105_276
.LBB105_275:                            # %cond.false.1420
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB105_276:                            # %cond.end.1424
	movq	-688(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB105_278
# BB#277:                               # %land.lhs.true.1428
	cmpq	$0, -152(%rbp)
	jl	.LBB105_304
.LBB105_278:                            # %lor.lhs.false.1431
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_279
	jmp	.LBB105_290
.LBB105_279:                            # %cond.true.1432
	cmpq	$0, -152(%rbp)
	jge	.LBB105_284
# BB#280:                               # %cond.true.1435
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jge	.LBB105_282
# BB#281:                               # %cond.true.1441
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB105_283
.LBB105_282:                            # %cond.false.1449
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB105_283:                            # %cond.end.1453
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-696(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_304
	jmp	.LBB105_301
.LBB105_284:                            # %cond.false.1458
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_285
	jmp	.LBB105_286
.LBB105_285:                            # %cond.true.1459
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_304
	jmp	.LBB105_301
.LBB105_286:                            # %cond.false.1460
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_288
# BB#287:                               # %cond.true.1466
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB105_289
.LBB105_288:                            # %cond.false.1483
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB105_289:                            # %cond.end.1487
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_304
	jmp	.LBB105_301
.LBB105_290:                            # %cond.false.1492
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_291
	jmp	.LBB105_292
.LBB105_291:                            # %cond.true.1493
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_304
	jmp	.LBB105_301
.LBB105_292:                            # %cond.false.1494
	cmpq	$0, -152(%rbp)
	jge	.LBB105_297
# BB#293:                               # %cond.true.1497
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jge	.LBB105_295
# BB#294:                               # %cond.true.1503
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB105_296
.LBB105_295:                            # %cond.false.1520
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB105_296:                            # %cond.end.1524
	movq	-744(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	cqto
	movq	-752(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_304
	jmp	.LBB105_301
.LBB105_297:                            # %cond.false.1529
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_299
# BB#298:                               # %cond.true.1535
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB105_300
.LBB105_299:                            # %cond.false.1543
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB105_300:                            # %cond.end.1547
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_304
.LBB105_301:                            # %lor.lhs.false.1552
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_303
# BB#302:                               # %land.lhs.true.1558
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB105_304
.LBB105_303:                            # %lor.lhs.false.1562
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB105_308
.LBB105_304:                            # %cond.true.1566
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB105_306
# BB#305:                               # %cond.true.1571
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -772(%rbp)        # 4-byte Spill
	jmp	.LBB105_307
.LBB105_306:                            # %cond.false.1574
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -772(%rbp)        # 4-byte Spill
.LBB105_307:                            # %cond.end.1579
	movl	-772(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_308:                            # %cond.false.1582
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB105_310
# BB#309:                               # %cond.true.1587
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -776(%rbp)        # 4-byte Spill
	jmp	.LBB105_311
.LBB105_310:                            # %cond.false.1590
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -776(%rbp)        # 4-byte Spill
.LBB105_311:                            # %cond.end.1595
	movl	-776(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_312:                            # %cond.false.1598
	movb	$1, %al
	testb	$1, %al
	jne	.LBB105_313
	jmp	.LBB105_392
.LBB105_313:                            # %cond.true.1599
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_314
	jmp	.LBB105_353
.LBB105_314:                            # %cond.true.1600
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_316
# BB#315:                               # %cond.true.1606
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB105_317
.LBB105_316:                            # %cond.false.1623
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB105_317:                            # %cond.end.1627
	movq	-784(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB105_319
# BB#318:                               # %land.lhs.true.1631
	cmpq	$0, -152(%rbp)
	jl	.LBB105_345
.LBB105_319:                            # %lor.lhs.false.1634
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_320
	jmp	.LBB105_331
.LBB105_320:                            # %cond.true.1635
	cmpq	$0, -152(%rbp)
	jge	.LBB105_325
# BB#321:                               # %cond.true.1638
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jge	.LBB105_323
# BB#322:                               # %cond.true.1644
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB105_324
.LBB105_323:                            # %cond.false.1652
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB105_324:                            # %cond.end.1656
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-792(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_345
	jmp	.LBB105_342
.LBB105_325:                            # %cond.false.1661
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_326
	jmp	.LBB105_327
.LBB105_326:                            # %cond.true.1662
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_345
	jmp	.LBB105_342
.LBB105_327:                            # %cond.false.1663
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_329
# BB#328:                               # %cond.true.1669
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	jmp	.LBB105_330
.LBB105_329:                            # %cond.false.1686
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB105_330:                            # %cond.end.1690
	movq	-816(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	cqto
	movq	-824(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_345
	jmp	.LBB105_342
.LBB105_331:                            # %cond.false.1695
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_332
	jmp	.LBB105_333
.LBB105_332:                            # %cond.true.1696
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_345
	jmp	.LBB105_342
.LBB105_333:                            # %cond.false.1697
	cmpq	$0, -152(%rbp)
	jge	.LBB105_338
# BB#334:                               # %cond.true.1700
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jge	.LBB105_336
# BB#335:                               # %cond.true.1706
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB105_337
.LBB105_336:                            # %cond.false.1723
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB105_337:                            # %cond.end.1727
	movq	-840(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	cqto
	movq	-848(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-832(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_345
	jmp	.LBB105_342
.LBB105_338:                            # %cond.false.1732
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_340
# BB#339:                               # %cond.true.1738
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB105_341
.LBB105_340:                            # %cond.false.1746
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB105_341:                            # %cond.end.1750
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_345
.LBB105_342:                            # %lor.lhs.false.1755
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_344
# BB#343:                               # %land.lhs.true.1761
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB105_345
.LBB105_344:                            # %lor.lhs.false.1765
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_349
.LBB105_345:                            # %cond.true.1769
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_347
# BB#346:                               # %cond.true.1773
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB105_348
.LBB105_347:                            # %cond.false.1775
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB105_348:                            # %cond.end.1779
	movq	-872(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_349:                            # %cond.false.1781
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_351
# BB#350:                               # %cond.true.1785
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB105_352
.LBB105_351:                            # %cond.false.1787
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB105_352:                            # %cond.end.1791
	movq	-880(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_353:                            # %cond.false.1793
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_355
# BB#354:                               # %cond.true.1799
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB105_356
.LBB105_355:                            # %cond.false.1816
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB105_356:                            # %cond.end.1820
	movq	-888(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB105_358
# BB#357:                               # %land.lhs.true.1824
	cmpq	$0, -152(%rbp)
	jl	.LBB105_384
.LBB105_358:                            # %lor.lhs.false.1827
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_359
	jmp	.LBB105_370
.LBB105_359:                            # %cond.true.1828
	cmpq	$0, -152(%rbp)
	jge	.LBB105_364
# BB#360:                               # %cond.true.1831
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jge	.LBB105_362
# BB#361:                               # %cond.true.1837
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB105_363
.LBB105_362:                            # %cond.false.1845
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB105_363:                            # %cond.end.1849
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	cqto
	movq	-912(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-896(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_384
	jmp	.LBB105_381
.LBB105_364:                            # %cond.false.1854
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_365
	jmp	.LBB105_366
.LBB105_365:                            # %cond.true.1855
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_384
	jmp	.LBB105_381
.LBB105_366:                            # %cond.false.1856
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_368
# BB#367:                               # %cond.true.1862
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	jmp	.LBB105_369
.LBB105_368:                            # %cond.false.1879
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB105_369:                            # %cond.end.1883
	movq	-920(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -928(%rbp)        # 8-byte Spill
	cqto
	movq	-928(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_384
	jmp	.LBB105_381
.LBB105_370:                            # %cond.false.1888
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_371
	jmp	.LBB105_372
.LBB105_371:                            # %cond.true.1889
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_384
	jmp	.LBB105_381
.LBB105_372:                            # %cond.false.1890
	cmpq	$0, -152(%rbp)
	jge	.LBB105_377
# BB#373:                               # %cond.true.1893
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jge	.LBB105_375
# BB#374:                               # %cond.true.1899
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB105_376
.LBB105_375:                            # %cond.false.1916
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB105_376:                            # %cond.end.1920
	movq	-944(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	cqto
	movq	-952(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-936(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_384
	jmp	.LBB105_381
.LBB105_377:                            # %cond.false.1925
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_379
# BB#378:                               # %cond.true.1931
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB105_380
.LBB105_379:                            # %cond.false.1939
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
.LBB105_380:                            # %cond.end.1943
	movq	-960(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	cqto
	movq	-968(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_384
.LBB105_381:                            # %lor.lhs.false.1948
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_383
# BB#382:                               # %land.lhs.true.1954
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB105_384
.LBB105_383:                            # %lor.lhs.false.1958
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_388
.LBB105_384:                            # %cond.true.1962
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_386
# BB#385:                               # %cond.true.1966
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB105_387
.LBB105_386:                            # %cond.false.1968
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB105_387:                            # %cond.end.1972
	movq	-976(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_388:                            # %cond.false.1974
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_390
# BB#389:                               # %cond.true.1978
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB105_391
.LBB105_390:                            # %cond.false.1980
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB105_391:                            # %cond.end.1984
	movq	-984(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_392:                            # %cond.false.1986
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_393
	jmp	.LBB105_432
.LBB105_393:                            # %cond.true.1987
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_395
# BB#394:                               # %cond.true.1993
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	jmp	.LBB105_396
.LBB105_395:                            # %cond.false.2010
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB105_396:                            # %cond.end.2014
	movq	-992(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB105_398
# BB#397:                               # %land.lhs.true.2018
	cmpq	$0, -152(%rbp)
	jl	.LBB105_424
.LBB105_398:                            # %lor.lhs.false.2021
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_399
	jmp	.LBB105_410
.LBB105_399:                            # %cond.true.2022
	cmpq	$0, -152(%rbp)
	jge	.LBB105_404
# BB#400:                               # %cond.true.2025
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jge	.LBB105_402
# BB#401:                               # %cond.true.2031
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB105_403
.LBB105_402:                            # %cond.false.2039
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB105_403:                            # %cond.end.2043
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	cqto
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_424
	jmp	.LBB105_421
.LBB105_404:                            # %cond.false.2048
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_405
	jmp	.LBB105_406
.LBB105_405:                            # %cond.true.2049
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_424
	jmp	.LBB105_421
.LBB105_406:                            # %cond.false.2050
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_408
# BB#407:                               # %cond.true.2056
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB105_409
.LBB105_408:                            # %cond.false.2073
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB105_409:                            # %cond.end.2077
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	cqto
	movq	-1032(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_424
	jmp	.LBB105_421
.LBB105_410:                            # %cond.false.2082
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_411
	jmp	.LBB105_412
.LBB105_411:                            # %cond.true.2083
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_424
	jmp	.LBB105_421
.LBB105_412:                            # %cond.false.2084
	cmpq	$0, -152(%rbp)
	jge	.LBB105_417
# BB#413:                               # %cond.true.2087
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jge	.LBB105_415
# BB#414:                               # %cond.true.2093
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB105_416
.LBB105_415:                            # %cond.false.2110
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB105_416:                            # %cond.end.2114
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
	cqto
	movq	-1056(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_424
	jmp	.LBB105_421
.LBB105_417:                            # %cond.false.2119
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_419
# BB#418:                               # %cond.true.2125
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB105_420
.LBB105_419:                            # %cond.false.2133
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB105_420:                            # %cond.end.2137
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1072(%rbp)       # 8-byte Spill
	cqto
	movq	-1072(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_424
.LBB105_421:                            # %lor.lhs.false.2142
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_423
# BB#422:                               # %land.lhs.true.2148
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB105_424
.LBB105_423:                            # %lor.lhs.false.2152
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_428
.LBB105_424:                            # %cond.true.2156
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_426
# BB#425:                               # %cond.true.2160
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB105_427
.LBB105_426:                            # %cond.false.2162
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB105_427:                            # %cond.end.2166
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_428:                            # %cond.false.2168
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_430
# BB#429:                               # %cond.true.2172
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB105_431
.LBB105_430:                            # %cond.false.2174
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB105_431:                            # %cond.end.2178
	movq	-1088(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_432:                            # %cond.false.2180
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_434
# BB#433:                               # %cond.true.2186
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB105_435
.LBB105_434:                            # %cond.false.2203
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB105_435:                            # %cond.end.2207
	movq	-1096(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB105_437
# BB#436:                               # %land.lhs.true.2211
	cmpq	$0, -152(%rbp)
	jl	.LBB105_463
.LBB105_437:                            # %lor.lhs.false.2214
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_438
	jmp	.LBB105_449
.LBB105_438:                            # %cond.true.2215
	cmpq	$0, -152(%rbp)
	jge	.LBB105_443
# BB#439:                               # %cond.true.2218
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jge	.LBB105_441
# BB#440:                               # %cond.true.2224
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB105_442
.LBB105_441:                            # %cond.false.2232
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB105_442:                            # %cond.end.2236
	movq	-1112(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1120(%rbp)       # 8-byte Spill
	cqto
	movq	-1120(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_463
	jmp	.LBB105_460
.LBB105_443:                            # %cond.false.2241
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_444
	jmp	.LBB105_445
.LBB105_444:                            # %cond.true.2242
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_463
	jmp	.LBB105_460
.LBB105_445:                            # %cond.false.2243
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_447
# BB#446:                               # %cond.true.2249
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB105_448
.LBB105_447:                            # %cond.false.2266
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB105_448:                            # %cond.end.2270
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1136(%rbp)       # 8-byte Spill
	cqto
	movq	-1136(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_463
	jmp	.LBB105_460
.LBB105_449:                            # %cond.false.2275
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_450
	jmp	.LBB105_451
.LBB105_450:                            # %cond.true.2276
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_463
	jmp	.LBB105_460
.LBB105_451:                            # %cond.false.2277
	cmpq	$0, -152(%rbp)
	jge	.LBB105_456
# BB#452:                               # %cond.true.2280
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	jge	.LBB105_454
# BB#453:                               # %cond.true.2286
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB105_455
.LBB105_454:                            # %cond.false.2303
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB105_455:                            # %cond.end.2307
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
	cqto
	movq	-1160(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB105_463
	jmp	.LBB105_460
.LBB105_456:                            # %cond.false.2312
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_458
# BB#457:                               # %cond.true.2318
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB105_459
.LBB105_458:                            # %cond.false.2326
	movq	-152(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
.LBB105_459:                            # %cond.end.2330
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1176(%rbp)       # 8-byte Spill
	cqto
	movq	-1176(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-152(%rbp), %rax
	jl	.LBB105_463
.LBB105_460:                            # %lor.lhs.false.2335
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_462
# BB#461:                               # %land.lhs.true.2341
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB105_463
.LBB105_462:                            # %lor.lhs.false.2345
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_467
.LBB105_463:                            # %cond.true.2349
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_465
# BB#464:                               # %cond.true.2353
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB105_466
.LBB105_465:                            # %cond.false.2355
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB105_466:                            # %cond.end.2359
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -208(%rbp)
	testb	$1, %cl
	jne	.LBB105_472
	jmp	.LBB105_471
.LBB105_467:                            # %cond.false.2361
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_469
# BB#468:                               # %cond.true.2365
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB105_470
.LBB105_469:                            # %cond.false.2367
	movq	-152(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB105_470:                            # %cond.end.2371
	movq	-1192(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -208(%rbp)
	testb	$1, %dl
	jne	.LBB105_472
.LBB105_471:                            # %lor.lhs.false.2373
	movq	$-1, %rax
	cmpq	-208(%rbp), %rax
	jae	.LBB105_473
.LBB105_472:                            # %if.then.2376
	movq	$-1, %rdi
	callq	memory_full
.LBB105_473:                            # %if.else
	movq	-208(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jg	.LBB105_475
# BB#474:                               # %if.then.2379
	movq	-208(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -184(%rbp)
	movq	-208(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -160(%rbp)
	jmp	.LBB105_476
.LBB105_475:                            # %if.else.2381
	movq	-208(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -216(%rbp)
	movb	$1, -193(%rbp)
	movq	-216(%rbp), %rsi
	callq	record_unwind_protect
.LBB105_476:                            # %if.end.2384
	jmp	.LBB105_477
.LBB105_477:                            # %if.end.2385
	jmp	.LBB105_478
.LBB105_478:                            # %do.end
	movq	-160(%rbp), %rax
	movq	last_overlay_modification_hooks, %rdi
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	XVECTOR
	addq	$8, %rax
	movq	-152(%rbp), %rdi
	shlq	$3, %rdi
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-1208(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	movq	$0, -168(%rbp)
.LBB105_479:                            # %for.cond.2389
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jge	.LBB105_481
# BB#480:                               # %for.body.2392
                                        #   in Loop: Header=BB105_479 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)
	movq	-160(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -224(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)
	movq	-160(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movb	-17(%rbp), %dl
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	andb	$1, %dl
	movzbl	%dl, %edx
	callq	call_overlay_mod_hooks
	jmp	.LBB105_479
.LBB105_481:                            # %for.end.2397
	jmp	.LBB105_482
.LBB105_482:                            # %do.body.2398
	testb	$1, -193(%rbp)
	je	.LBB105_484
# BB#483:                               # %if.then.2400
	xorl	%edi, %edi
	movb	$0, -193(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB105_484:                            # %if.end.2403
	jmp	.LBB105_485
.LBB105_485:                            # %do.end.2404
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	report_overlay_modification, .Lfunc_end105-report_overlay_modification
	.cfi_endproc

	.align	16, 0x90
	.type	add_overlay_mod_hooklist,@function
add_overlay_mod_hooklist:               # @add_overlay_mod_hooklist
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	last_overlay_modification_hooks, %rdi
	callq	ASIZE
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	cmpq	last_overlay_modification_hooks_used, %rax
	jg	.LBB106_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	last_overlay_modification_hooks, %rdi
	callq	larger_vector
	movq	%rax, last_overlay_modification_hooks
.LBB106_2:                              # %if.end
	movq	last_overlay_modification_hooks, %rdi
	movq	last_overlay_modification_hooks_used, %rsi
	movq	-8(%rbp), %rdx
	callq	ASET
	movq	last_overlay_modification_hooks_used, %rdx
	addq	$1, %rdx
	movq	%rdx, last_overlay_modification_hooks_used
	movq	last_overlay_modification_hooks, %rdi
	movq	last_overlay_modification_hooks_used, %rsi
	movq	-16(%rbp), %rdx
	callq	ASET
	movq	last_overlay_modification_hooks_used, %rdx
	addq	$1, %rdx
	movq	%rdx, last_overlay_modification_hooks_used
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	add_overlay_mod_hooklist, .Lfunc_end106-add_overlay_mod_hooklist
	.cfi_endproc

	.align	16, 0x90
	.type	call_overlay_mod_hooks,@function
call_overlay_mod_hooks:                 # @call_overlay_mod_hooks
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
	subq	$128, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
.LBB107_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB107_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB107_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	testb	$1, -17(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	je	.LBB107_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB107_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB107_6
.LBB107_5:                              # %cond.false
                                        #   in Loop: Header=BB107_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB107_6:                              # %cond.end
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	call4
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB107_11
.LBB107_7:                              # %if.else
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	testb	$1, -17(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	je	.LBB107_9
# BB#8:                                 # %cond.true.12
                                        #   in Loop: Header=BB107_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB107_10
.LBB107_9:                              # %cond.false.14
                                        #   in Loop: Header=BB107_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB107_10:                             # %cond.end.16
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call5
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB107_11:                             # %if.end
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB107_1
.LBB107_12:                             # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	call_overlay_mod_hooks, .Lfunc_end107-call_overlay_mod_hooks
	.cfi_endproc

	.globl	evaporate_overlays
	.align	16, 0x90
	.type	evaporate_overlays,@function
evaporate_overlays:                     # @evaporate_overlays
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	960(%rcx), %rax
	jg	.LBB108_20
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	944(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB108_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB108_19
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB108_2 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB108_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB108_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB108_7
.LBB108_6:                              # %cond.false
	callq	emacs_abort
.LBB108_7:                              # %cond.end
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	jge	.LBB108_9
# BB#8:                                 # %if.then.15
	jmp	.LBB108_19
.LBB108_9:                              # %if.end
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB108_17
# BB#10:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB108_13
# BB#11:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB108_13
# BB#12:                                # %cond.true.30
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB108_14
.LBB108_13:                             # %cond.false.34
	callq	emacs_abort
.LBB108_14:                             # %cond.end.35
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB108_17
# BB#15:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB108_2 Depth=1
	movl	$380, %edi              # imm = 0x17C
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB108_17
# BB#16:                                # %if.then.45
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB108_17:                             # %if.end.47
                                        #   in Loop: Header=BB108_2 Depth=1
	jmp	.LBB108_18
.LBB108_18:                             # %for.inc
                                        #   in Loop: Header=BB108_2 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB108_2
.LBB108_19:                             # %for.end
	jmp	.LBB108_39
.LBB108_20:                             # %if.else
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB108_21:                             # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB108_38
# BB#22:                                # %for.body.50
                                        #   in Loop: Header=BB108_21 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB108_25
# BB#23:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB108_25
# BB#24:                                # %cond.true.64
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB108_26
.LBB108_25:                             # %cond.false.68
	callq	emacs_abort
.LBB108_26:                             # %cond.end.69
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	jle	.LBB108_28
# BB#27:                                # %if.then.73
	jmp	.LBB108_38
.LBB108_28:                             # %if.end.74
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB108_36
# BB#29:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB108_32
# BB#30:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB108_32
# BB#31:                                # %cond.true.90
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB108_33
.LBB108_32:                             # %cond.false.94
	callq	emacs_abort
.LBB108_33:                             # %cond.end.95
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB108_36
# BB#34:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB108_21 Depth=1
	movl	$380, %edi              # imm = 0x17C
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB108_36
# BB#35:                                # %if.then.105
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB108_36:                             # %if.end.107
                                        #   in Loop: Header=BB108_21 Depth=1
	jmp	.LBB108_37
.LBB108_37:                             # %for.inc.108
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB108_21
.LBB108_38:                             # %for.end.110
	jmp	.LBB108_39
.LBB108_39:                             # %if.end.111
	jmp	.LBB108_40
.LBB108_40:                             # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB108_43
# BB#41:                                # %for.body.117
                                        #   in Loop: Header=BB108_40 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fdelete_overlay
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#42:                                # %for.inc.119
                                        #   in Loop: Header=BB108_40 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB108_40
.LBB108_43:                             # %for.end.121
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	evaporate_overlays, .Lfunc_end108-evaporate_overlays
	.cfi_endproc

	.globl	enlarge_buffer_text
	.align	16, 0x90
	.type	enlarge_buffer_text,@function
enlarge_buffer_text:                    # @enlarge_buffer_text
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %rsi
	subq	$1, %rsi
	movq	-8(%rbp), %rdi
	movq	720(%rdi), %rdi
	addq	40(%rdi), %rsi
	addq	$1, %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	callq	block_input
	movq	-8(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	-32(%rbp), %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB109_2
# BB#1:                                 # %if.then
	callq	unblock_input
	movq	-32(%rbp), %rdi
	callq	memory_full
.LBB109_2:                              # %if.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, (%rcx)
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	enlarge_buffer_text, .Lfunc_end109-enlarge_buffer_text
	.cfi_endproc

	.globl	init_buffer_once
	.align	16, 0x90
	.type	init_buffer_once,@function
init_buffer_once:                       # @init_buffer_once
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
	subq	$80, %rsp
	movabsq	$buffer_local_flags, %rax
	movq	$-2, %rsi
	movq	%rax, %rcx
	xorl	%edx, %edx
	movl	$976, %edi              # imm = 0x3D0
	movl	%edi, %r8d
	movabsq	$buffer_permanent_local_flags, %rdi
	movl	$50, %r9d
	movl	%r9d, %r10d
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%r8, -40(%rbp)          # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	memset
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-20(%rbp), %esi         # 4-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	bset_filename
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_directory
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_backed_up
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_save_length
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_auto_save_file_name
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_read_only
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_major_mode
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_mode_name
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_undo_list
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_mark_active
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_point_before_scroll
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_file_truename
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_invisibility_spec
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_file_format
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_auto_save_file_format
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_display_count
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_display_time
	movabsq	$buffer_local_flags, %rdi
	movq	$-2, %rsi
	callq	bset_enable_multibyte_characters
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_name
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_mark
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_local_var_alist
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_keymap
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_downcase_table
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_upcase_table
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_case_canon_table
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_case_eqv_table
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_minor_modes
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_width_table
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_pt_marker
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_begv_marker
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_zv_marker
	movabsq	$buffer_local_flags, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	callq	bset_last_selected_window
	movl	$1, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+96
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+288
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+280
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+144
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+176
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+256
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+264
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+152
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+216
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+224
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+232
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+160
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+168
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+120
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+296
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+128
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+344
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+136
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+240
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+248
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+320
	movl	-4(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -4(%rbp)
	movslq	%r9d, %rax
	movb	$1, buffer_permanent_local_flags(,%rax)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+424
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+432
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+440
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+448
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+456
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+464
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+472
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+480
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+488
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+496
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+504
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+512
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+520
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+536
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+544
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+104
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+552
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+560
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	make_natnum
	movq	%rax, buffer_local_flags+568
	movl	-4(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -4(%rbp)
	cmpl	$50, -4(%rbp)
	jl	.LBB110_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB110_2:                              # %if.end
	movabsq	$buffer_defaults, %rdi
	movl	-4(%rbp), %eax
	movl	%eax, last_per_buffer_idx
	callq	reset_buffer
	movabsq	$buffer_defaults, %rdi
	movl	$1, %esi
	callq	reset_buffer_local_variables
	movabsq	$buffer_local_symbols, %rdi
	callq	reset_buffer
	movabsq	$buffer_local_symbols, %rdi
	movl	$1, %esi
	callq	reset_buffer_local_variables
	movabsq	$buffer_defaults, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$buffer_local_symbols, %rcx
	addq	$576, %rcx              # imm = 0x240
	movq	%rdi, %rdx
	addq	$576, %rdx              # imm = 0x240
	movq	%rdx, buffer_defaults+720
	movq	%rcx, buffer_local_symbols+720
	movl	$0, buffer_defaults+792
	movl	$0, buffer_local_symbols+792
	movl	$0, buffer_defaults+796
	movl	$0, buffer_local_symbols+796
	callq	set_buffer_intervals
	movabsq	$buffer_local_symbols, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	set_buffer_intervals
	movabsq	$.L.str.29, %rdi
	callq	build_pure_c_string
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_name
	movabsq	$.L.str.30, %rdi
	callq	build_pure_c_string
	movabsq	$buffer_local_symbols, %rdi
	movq	%rax, %rsi
	callq	bset_name
	movabsq	$.L.str.31, %rdi
	movabsq	$4611686018528256071, %rax # imm = 0x4000000006032047
	movq	%rax, buffer_defaults
	movq	%rax, buffer_local_symbols
	callq	build_pure_c_string
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_mode_line_format
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_header_line_format
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_abbrev_mode
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_overwrite_mode
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_case_fold_search
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_auto_fill_function
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_selective_display
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_selective_display_ellipses
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_abbrev_table
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_display_table
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_undo_list
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_mark_active
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_file_format
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_auto_save_file_format
	movabsq	$buffer_defaults, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	callq	set_buffer_overlays_before
	movabsq	$buffer_defaults, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	callq	set_buffer_overlays_after
	movl	$8, %r8d
	movl	%r8d, %edi
	movq	$1, buffer_defaults+960
	callq	make_natnum
	xorl	%edi, %edi
	movq	%rax, buffer_defaults+152
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_truncate_lines
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_word_wrap
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_ctl_arrow
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_bidi_display_reordering
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_bidi_paragraph_direction
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_cursor_type
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_extra_line_spacing
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_cursor_in_non_selected_windows
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_enable_multibyte_characters
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_buffer_file_coding_system
	movl	$70, %r8d
	movl	%r8d, %edi
	callq	make_natnum
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	%rax, buffer_defaults+160
	callq	make_natnum
	movl	$901, %edi              # imm = 0x385
	movq	%rax, buffer_defaults+168
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_cache_long_scans
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_file_truename
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	callq	make_natnum
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	%rax, buffer_defaults+416
	callq	make_natnum
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	%rax, buffer_defaults+424
	callq	make_natnum
	xorl	%edi, %edi
	movq	%rax, buffer_defaults+432
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_left_fringe_width
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_right_fringe_width
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_fringes_outside_margins
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_scroll_bar_width
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_scroll_bar_height
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_vertical_scroll_bar_type
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_horizontal_scroll_bar_type
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_indicate_empty_lines
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_indicate_buffer_boundaries
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_fringe_indicator_alist
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_fringe_cursor_alist
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_scroll_up_aggressively
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_scroll_down_aggressively
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_display_time
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.32, %rdi
	movq	%rax, Vbuffer_alist
	movq	$0, current_buffer
	movq	$0, all_buffers
	callq	build_pure_c_string
	movl	$479, %edi              # imm = 0x1DF
	movq	%rax, QSFundamental
	callq	builtin_lisp_symbol
	movabsq	$buffer_defaults, %rdi
	movq	%rax, %rsi
	callq	bset_major_mode
	movl	$592, %edi              # imm = 0x250
	callq	builtin_lisp_symbol
	movl	$747, %edi              # imm = 0x2EB
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movabsq	$.L.str.33, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	%rax, %rdi
	callq	Fget_buffer_create
	xorl	%edi, %edi
	movq	%rax, Vprin1_to_string_buffer
	callq	builtin_lisp_symbol
	movabsq	$.L.str.14, %rdi
	movq	%rax, Vbuffer_alist
	callq	build_pure_c_string
	movq	%rax, %rdi
	callq	Fget_buffer_create
	movq	%rax, %rdi
	callq	Fset_buffer
	movb	$0, globals+3396
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	init_buffer_once, .Lfunc_end110-init_buffer_once
	.cfi_endproc

	.align	16, 0x90
	.type	bset_save_length,@function
bset_save_length:                       # @bset_save_length
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end111:
	.size	bset_save_length, .Lfunc_end111-bset_save_length
	.cfi_endproc

	.align	16, 0x90
	.type	bset_major_mode,@function
bset_major_mode:                        # @bset_major_mode
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 80(%rdi)
	popq	%rbp
	retq
.Lfunc_end112:
	.size	bset_major_mode, .Lfunc_end112-bset_major_mode
	.cfi_endproc

	.align	16, 0x90
	.type	bset_mode_name,@function
bset_mode_name:                         # @bset_mode_name
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 88(%rdi)
	popq	%rbp
	retq
.Lfunc_end113:
	.size	bset_mode_name, .Lfunc_end113-bset_mode_name
	.cfi_endproc

	.align	16, 0x90
	.type	bset_invisibility_spec,@function
bset_invisibility_spec:                 # @bset_invisibility_spec
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 400(%rdi)
	popq	%rbp
	retq
.Lfunc_end114:
	.size	bset_invisibility_spec, .Lfunc_end114-bset_invisibility_spec
	.cfi_endproc

	.align	16, 0x90
	.type	bset_minor_modes,@function
bset_minor_modes:                       # @bset_minor_modes
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 272(%rdi)
	popq	%rbp
	retq
.Lfunc_end115:
	.size	bset_minor_modes, .Lfunc_end115-bset_minor_modes
	.cfi_endproc

	.align	16, 0x90
	.type	bset_mode_line_format,@function
bset_mode_line_format:                  # @bset_mode_line_format
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 96(%rdi)
	popq	%rbp
	retq
.Lfunc_end116:
	.size	bset_mode_line_format, .Lfunc_end116-bset_mode_line_format
	.cfi_endproc

	.align	16, 0x90
	.type	bset_header_line_format,@function
bset_header_line_format:                # @bset_header_line_format
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 104(%rdi)
	popq	%rbp
	retq
.Lfunc_end117:
	.size	bset_header_line_format, .Lfunc_end117-bset_header_line_format
	.cfi_endproc

	.align	16, 0x90
	.type	bset_abbrev_mode,@function
bset_abbrev_mode:                       # @bset_abbrev_mode
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 288(%rdi)
	popq	%rbp
	retq
.Lfunc_end118:
	.size	bset_abbrev_mode, .Lfunc_end118-bset_abbrev_mode
	.cfi_endproc

	.align	16, 0x90
	.type	bset_overwrite_mode,@function
bset_overwrite_mode:                    # @bset_overwrite_mode
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 280(%rdi)
	popq	%rbp
	retq
.Lfunc_end119:
	.size	bset_overwrite_mode, .Lfunc_end119-bset_overwrite_mode
	.cfi_endproc

	.align	16, 0x90
	.type	bset_case_fold_search,@function
bset_case_fold_search:                  # @bset_case_fold_search
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 144(%rdi)
	popq	%rbp
	retq
.Lfunc_end120:
	.size	bset_case_fold_search, .Lfunc_end120-bset_case_fold_search
	.cfi_endproc

	.align	16, 0x90
	.type	bset_auto_fill_function,@function
bset_auto_fill_function:                # @bset_auto_fill_function
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 176(%rdi)
	popq	%rbp
	retq
.Lfunc_end121:
	.size	bset_auto_fill_function, .Lfunc_end121-bset_auto_fill_function
	.cfi_endproc

	.align	16, 0x90
	.type	bset_selective_display,@function
bset_selective_display:                 # @bset_selective_display
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 256(%rdi)
	popq	%rbp
	retq
.Lfunc_end122:
	.size	bset_selective_display, .Lfunc_end122-bset_selective_display
	.cfi_endproc

	.align	16, 0x90
	.type	bset_selective_display_ellipses,@function
bset_selective_display_ellipses:        # @bset_selective_display_ellipses
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 264(%rdi)
	popq	%rbp
	retq
.Lfunc_end123:
	.size	bset_selective_display_ellipses, .Lfunc_end123-bset_selective_display_ellipses
	.cfi_endproc

	.align	16, 0x90
	.type	bset_abbrev_table,@function
bset_abbrev_table:                      # @bset_abbrev_table
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end124:
	.size	bset_abbrev_table, .Lfunc_end124-bset_abbrev_table
	.cfi_endproc

	.align	16, 0x90
	.type	bset_display_table,@function
bset_display_table:                     # @bset_display_table
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 296(%rdi)
	popq	%rbp
	retq
.Lfunc_end125:
	.size	bset_display_table, .Lfunc_end125-bset_display_table
	.cfi_endproc

	.align	16, 0x90
	.type	bset_word_wrap,@function
bset_word_wrap:                         # @bset_word_wrap
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 224(%rdi)
	popq	%rbp
	retq
.Lfunc_end126:
	.size	bset_word_wrap, .Lfunc_end126-bset_word_wrap
	.cfi_endproc

	.align	16, 0x90
	.type	bset_ctl_arrow,@function
bset_ctl_arrow:                         # @bset_ctl_arrow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp381:
	.cfi_def_cfa_offset 16
.Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp383:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 232(%rdi)
	popq	%rbp
	retq
.Lfunc_end127:
	.size	bset_ctl_arrow, .Lfunc_end127-bset_ctl_arrow
	.cfi_endproc

	.align	16, 0x90
	.type	bset_cursor_in_non_selected_windows,@function
bset_cursor_in_non_selected_windows:    # @bset_cursor_in_non_selected_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
.Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp386:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 568(%rdi)
	popq	%rbp
	retq
.Lfunc_end128:
	.size	bset_cursor_in_non_selected_windows, .Lfunc_end128-bset_cursor_in_non_selected_windows
	.cfi_endproc

	.align	16, 0x90
	.type	bset_buffer_file_coding_system,@function
bset_buffer_file_coding_system:         # @bset_buffer_file_coding_system
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 320(%rdi)
	popq	%rbp
	retq
.Lfunc_end129:
	.size	bset_buffer_file_coding_system, .Lfunc_end129-bset_buffer_file_coding_system
	.cfi_endproc

	.align	16, 0x90
	.type	bset_left_fringe_width,@function
bset_left_fringe_width:                 # @bset_left_fringe_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 440(%rdi)
	popq	%rbp
	retq
.Lfunc_end130:
	.size	bset_left_fringe_width, .Lfunc_end130-bset_left_fringe_width
	.cfi_endproc

	.align	16, 0x90
	.type	bset_right_fringe_width,@function
bset_right_fringe_width:                # @bset_right_fringe_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp395:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 448(%rdi)
	popq	%rbp
	retq
.Lfunc_end131:
	.size	bset_right_fringe_width, .Lfunc_end131-bset_right_fringe_width
	.cfi_endproc

	.align	16, 0x90
	.type	bset_fringes_outside_margins,@function
bset_fringes_outside_margins:           # @bset_fringes_outside_margins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp396:
	.cfi_def_cfa_offset 16
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp398:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 456(%rdi)
	popq	%rbp
	retq
.Lfunc_end132:
	.size	bset_fringes_outside_margins, .Lfunc_end132-bset_fringes_outside_margins
	.cfi_endproc

	.align	16, 0x90
	.type	bset_scroll_bar_width,@function
bset_scroll_bar_width:                  # @bset_scroll_bar_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp401:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 464(%rdi)
	popq	%rbp
	retq
.Lfunc_end133:
	.size	bset_scroll_bar_width, .Lfunc_end133-bset_scroll_bar_width
	.cfi_endproc

	.align	16, 0x90
	.type	bset_scroll_bar_height,@function
bset_scroll_bar_height:                 # @bset_scroll_bar_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
.Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp404:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 472(%rdi)
	popq	%rbp
	retq
.Lfunc_end134:
	.size	bset_scroll_bar_height, .Lfunc_end134-bset_scroll_bar_height
	.cfi_endproc

	.align	16, 0x90
	.type	bset_vertical_scroll_bar_type,@function
bset_vertical_scroll_bar_type:          # @bset_vertical_scroll_bar_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp407:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 480(%rdi)
	popq	%rbp
	retq
.Lfunc_end135:
	.size	bset_vertical_scroll_bar_type, .Lfunc_end135-bset_vertical_scroll_bar_type
	.cfi_endproc

	.align	16, 0x90
	.type	bset_horizontal_scroll_bar_type,@function
bset_horizontal_scroll_bar_type:        # @bset_horizontal_scroll_bar_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp408:
	.cfi_def_cfa_offset 16
.Ltmp409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp410:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 488(%rdi)
	popq	%rbp
	retq
.Lfunc_end136:
	.size	bset_horizontal_scroll_bar_type, .Lfunc_end136-bset_horizontal_scroll_bar_type
	.cfi_endproc

	.align	16, 0x90
	.type	bset_indicate_empty_lines,@function
bset_indicate_empty_lines:              # @bset_indicate_empty_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp411:
	.cfi_def_cfa_offset 16
.Ltmp412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp413:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 496(%rdi)
	popq	%rbp
	retq
.Lfunc_end137:
	.size	bset_indicate_empty_lines, .Lfunc_end137-bset_indicate_empty_lines
	.cfi_endproc

	.align	16, 0x90
	.type	bset_indicate_buffer_boundaries,@function
bset_indicate_buffer_boundaries:        # @bset_indicate_buffer_boundaries
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
.Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp416:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 504(%rdi)
	popq	%rbp
	retq
.Lfunc_end138:
	.size	bset_indicate_buffer_boundaries, .Lfunc_end138-bset_indicate_buffer_boundaries
	.cfi_endproc

	.align	16, 0x90
	.type	bset_fringe_indicator_alist,@function
bset_fringe_indicator_alist:            # @bset_fringe_indicator_alist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp417:
	.cfi_def_cfa_offset 16
.Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp419:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 512(%rdi)
	popq	%rbp
	retq
.Lfunc_end139:
	.size	bset_fringe_indicator_alist, .Lfunc_end139-bset_fringe_indicator_alist
	.cfi_endproc

	.align	16, 0x90
	.type	bset_fringe_cursor_alist,@function
bset_fringe_cursor_alist:               # @bset_fringe_cursor_alist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
.Ltmp421:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp422:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 520(%rdi)
	popq	%rbp
	retq
.Lfunc_end140:
	.size	bset_fringe_cursor_alist, .Lfunc_end140-bset_fringe_cursor_alist
	.cfi_endproc

	.align	16, 0x90
	.type	bset_scroll_up_aggressively,@function
bset_scroll_up_aggressively:            # @bset_scroll_up_aggressively
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
.Ltmp424:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp425:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 536(%rdi)
	popq	%rbp
	retq
.Lfunc_end141:
	.size	bset_scroll_up_aggressively, .Lfunc_end141-bset_scroll_up_aggressively
	.cfi_endproc

	.align	16, 0x90
	.type	bset_scroll_down_aggressively,@function
bset_scroll_down_aggressively:          # @bset_scroll_down_aggressively
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp426:
	.cfi_def_cfa_offset 16
.Ltmp427:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp428:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 544(%rdi)
	popq	%rbp
	retq
.Lfunc_end142:
	.size	bset_scroll_down_aggressively, .Lfunc_end142-bset_scroll_down_aggressively
	.cfi_endproc

	.globl	init_buffer
	.align	16, 0x90
	.type	init_buffer,@function
init_buffer:                            # @init_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp429:
	.cfi_def_cfa_offset 16
.Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp431:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	$4, %esi
	leaq	-72(%rbp), %rax
	movabsq	$.L.str.14, %rcx
	movl	%edi, -4(%rbp)
	movq	$9, -72(%rbp)
	movq	$-1, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, %rdi
	callq	Fset_buffer
	xorl	%edi, %edi
	movq	buffer_defaults+312, %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB143_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fset_buffer_multibyte
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB143_2:                              # %if.end
	callq	get_current_dir_name
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB143_4
# BB#3:                                 # %if.then.8
	movq	stderr, %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	emacs_strerror
	movabsq	$.L.str.34, %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movq	current_buffer, %rdx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_directory
	jmp	.LBB143_12
.LBB143_4:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB143_8
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	realloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB143_7
# BB#6:                                 # %if.then.19
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.35, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fatal
.LBB143_7:                              # %if.end.22
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$47, (%rcx,%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, 1(%rcx,%rax)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB143_8:                              # %if.end.26
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	make_unibyte_string
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_directory
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	24(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB143_11
# BB#9:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	24(%rax), %rdi
	callq	SSDATA
	movl	$.L.str.36, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB143_11
# BB#10:                                # %if.then.37
	movl	$4, %esi
	leaq	-112(%rbp), %rax
	movabsq	$.L.str.37, %rcx
	movq	$2, -112(%rbp)
	movq	$-1, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rdi
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	24(%rcx), %rsi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	concat2
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_directory
.LBB143_11:                             # %if.end.48
	jmp	.LBB143_12
.LBB143_12:                             # %if.end.49
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	get_minibuffer
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	current_buffer, %rdi
	movq	24(%rdi), %rsi
	movq	%rax, %rdi
	callq	bset_directory
	movq	-16(%rbp), %rdi
	callq	free
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end143:
	.size	init_buffer, .Lfunc_end143-init_buffer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI144_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	syms_of_buffer
	.align	16, 0x90
	.type	syms_of_buffer,@function
syms_of_buffer:                         # @syms_of_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp432:
	.cfi_def_cfa_offset 16
.Ltmp433:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp434:
	.cfi_def_cfa_register %rbp
	subq	$656, %rsp              # imm = 0x290
	movabsq	$last_overlay_modification_hooks, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$42, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$QSFundamental, %rdi
	movq	%rax, last_overlay_modification_hooks
	callq	staticpro
	movabsq	$Vbuffer_alist, %rdi
	callq	staticpro
	movl	$1002, %edi             # imm = 0x3EA
	callq	builtin_lisp_symbol
	movl	$263, %edi              # imm = 0x107
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$607, %edi              # imm = 0x25F
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$811, %edi              # imm = 0x32B
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	list4
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$455, %edi              # imm = 0x1C7
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$785, %edi              # imm = 0x311
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorps	%xmm0, %xmm0
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	make_float
	movsd	.LCPI144_0, %xmm0       # xmm0 = mem[0],zero
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	make_float
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$736, %edi              # imm = 0x2E0
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$263, %edi              # imm = 0x107
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.38, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	intern
	movl	$737, %edi              # imm = 0x2E1
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$778, %edi              # imm = 0x30A
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$778, %edi              # imm = 0x30A
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	$2, %r8d
	movl	%r8d, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	listn
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$778, %edi              # imm = 0x30A
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.39, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -176(%rbp)        # 8-byte Spill
# BB#1:                                 # %do.body
	movabsq	$syms_of_buffer.o_fwd, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$96, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#2:                                 # %do.end
	jmp	.LBB144_3
.LBB144_3:                              # %do.body.33
	movabsq	$syms_of_buffer.o_fwd.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$104, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#4:                                 # %do.end.34
	jmp	.LBB144_5
.LBB144_5:                              # %do.body.35
	movabsq	$syms_of_buffer.o_fwd.43, %rdi
	movabsq	$.L.str.44, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$552, %rax              # imm = 0x228
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#6:                                 # %do.end.36
	jmp	.LBB144_7
.LBB144_7:                              # %do.body.37
	movabsq	$syms_of_buffer.o_fwd.45, %rdi
	movabsq	$.L.str.46, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$560, %rax              # imm = 0x230
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#8:                                 # %do.end.38
	jmp	.LBB144_9
.LBB144_9:                              # %do.body.39
	movabsq	$syms_of_buffer.o_fwd.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$568, %rax              # imm = 0x238
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#10:                                # %do.end.40
	jmp	.LBB144_11
.LBB144_11:                             # %do.body.41
	movabsq	$syms_of_buffer.o_fwd.49, %rdi
	movabsq	$.L.str.50, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#12:                                # %do.end.42
	jmp	.LBB144_13
.LBB144_13:                             # %do.body.43
	movabsq	$syms_of_buffer.o_fwd.51, %rdi
	movabsq	$.L.str.52, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$232, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#14:                                # %do.end.44
	jmp	.LBB144_15
.LBB144_15:                             # %do.body.45
	movabsq	$syms_of_buffer.o_fwd.53, %rdi
	movabsq	$.L.str.54, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$312, %rax              # imm = 0x138
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#16:                                # %do.end.46
	jmp	.LBB144_17
.LBB144_17:                             # %do.body.47
	movabsq	$syms_of_buffer.o_fwd.55, %rdi
	movabsq	$.L.str.56, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$320, %rax              # imm = 0x140
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#18:                                # %do.end.48
	jmp	.LBB144_19
.LBB144_19:                             # %do.body.49
	movabsq	$syms_of_buffer.o_fwd.57, %rdi
	movabsq	$.L.str.58, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$216, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#20:                                # %do.end.50
	jmp	.LBB144_21
.LBB144_21:                             # %do.body.51
	movabsq	$syms_of_buffer.o_fwd.59, %rdi
	movabsq	$.L.str.60, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$160, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#22:                                # %do.end.52
	jmp	.LBB144_23
.LBB144_23:                             # %do.body.53
	movabsq	$syms_of_buffer.o_fwd.61, %rdi
	movabsq	$.L.str.62, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$168, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#24:                                # %do.end.54
	jmp	.LBB144_25
.LBB144_25:                             # %do.body.55
	movabsq	$syms_of_buffer.o_fwd.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$152, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#26:                                # %do.end.56
	jmp	.LBB144_27
.LBB144_27:                             # %do.body.57
	movabsq	$syms_of_buffer.o_fwd.65, %rdi
	movabsq	$.L.str.66, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$144, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#28:                                # %do.end.58
	jmp	.LBB144_29
.LBB144_29:                             # %do.body.59
	movabsq	$syms_of_buffer.o_fwd.67, %rdi
	movabsq	$.L.str.68, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$424, %rax              # imm = 0x1A8
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#30:                                # %do.end.60
	jmp	.LBB144_31
.LBB144_31:                             # %do.body.61
	movabsq	$syms_of_buffer.o_fwd.69, %rdi
	movabsq	$.L.str.70, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$432, %rax              # imm = 0x1B0
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#32:                                # %do.end.62
	jmp	.LBB144_33
.LBB144_33:                             # %do.body.63
	movabsq	$syms_of_buffer.o_fwd.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$440, %rax              # imm = 0x1B8
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#34:                                # %do.end.64
	jmp	.LBB144_35
.LBB144_35:                             # %do.body.65
	movabsq	$syms_of_buffer.o_fwd.73, %rdi
	movabsq	$.L.str.74, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$448, %rax              # imm = 0x1C0
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#36:                                # %do.end.66
	jmp	.LBB144_37
.LBB144_37:                             # %do.body.67
	movabsq	$syms_of_buffer.o_fwd.75, %rdi
	movabsq	$.L.str.76, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$456, %rax              # imm = 0x1C8
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#38:                                # %do.end.68
	jmp	.LBB144_39
.LBB144_39:                             # %do.body.69
	movabsq	$syms_of_buffer.o_fwd.77, %rdi
	movabsq	$.L.str.78, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$464, %rax              # imm = 0x1D0
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#40:                                # %do.end.70
	jmp	.LBB144_41
.LBB144_41:                             # %do.body.71
	movabsq	$syms_of_buffer.o_fwd.79, %rdi
	movabsq	$.L.str.80, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$480, %rax              # imm = 0x1E0
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#42:                                # %do.end.72
	jmp	.LBB144_43
.LBB144_43:                             # %do.body.73
	movabsq	$syms_of_buffer.o_fwd.81, %rdi
	movabsq	$.L.str.82, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$496, %rax              # imm = 0x1F0
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#44:                                # %do.end.74
	jmp	.LBB144_45
.LBB144_45:                             # %do.body.75
	movabsq	$syms_of_buffer.o_fwd.83, %rdi
	movabsq	$.L.str.84, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#46:                                # %do.end.76
	jmp	.LBB144_47
.LBB144_47:                             # %do.body.77
	movabsq	$syms_of_buffer.o_fwd.85, %rdi
	movabsq	$.L.str.86, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$512, %rax              # imm = 0x200
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#48:                                # %do.end.78
	jmp	.LBB144_49
.LBB144_49:                             # %do.body.79
	movabsq	$syms_of_buffer.o_fwd.87, %rdi
	movabsq	$.L.str.88, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$520, %rax              # imm = 0x208
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#50:                                # %do.end.80
	jmp	.LBB144_51
.LBB144_51:                             # %do.body.81
	movabsq	$syms_of_buffer.o_fwd.89, %rdi
	movabsq	$.L.str.90, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$536, %rax              # imm = 0x218
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#52:                                # %do.end.82
	jmp	.LBB144_53
.LBB144_53:                             # %do.body.83
	movabsq	$syms_of_buffer.o_fwd.91, %rdi
	movabsq	$.L.str.92, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$544, %rax              # imm = 0x220
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#54:                                # %do.end.84
	jmp	.LBB144_55
.LBB144_55:                             # %do.body.85
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$104, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd, %rdi
	movabsq	$.L.str.93, %rsi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#56:                                # %do.end.87
	jmp	.LBB144_57
.LBB144_57:                             # %do.body.88
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$96, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.94, %rdi
	movabsq	$.L.str.95, %rsi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#58:                                # %do.end.90
	jmp	.LBB144_59
.LBB144_59:                             # %do.body.91
	movabsq	$syms_of_buffer.o_fwd.96, %rdi
	movabsq	$.L.str.97, %rsi
	movabsq	$buffer_defaults, %rax
	addq	$80, %rax
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#60:                                # %do.end.92
	jmp	.LBB144_61
.LBB144_61:                             # %do.body.93
	movl	$897, %edi              # imm = 0x381
	movq	current_buffer, %rax
	addq	$80, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.98, %rdi
	movabsq	$.L.str.99, %rsi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#62:                                # %do.end.95
	jmp	.LBB144_63
.LBB144_63:                             # %do.body.96
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$88, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.100, %rdi
	movabsq	$.L.str.101, %rsi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#64:                                # %do.end.98
	jmp	.LBB144_65
.LBB144_65:                             # %do.body.99
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$120, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.102, %rdi
	movabsq	$.L.str.103, %rsi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#66:                                # %do.end.101
	jmp	.LBB144_67
.LBB144_67:                             # %do.body.102
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$288, %rax              # imm = 0x120
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.104, %rdi
	movabsq	$.L.str.105, %rsi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#68:                                # %do.end.104
	jmp	.LBB144_69
.LBB144_69:                             # %do.body.105
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$144, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.106, %rdi
	movabsq	$.L.str.107, %rsi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#70:                                # %do.end.107
	jmp	.LBB144_71
.LBB144_71:                             # %do.body.108
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$160, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.108, %rdi
	movabsq	$.L.str.109, %rsi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#72:                                # %do.end.110
	jmp	.LBB144_73
.LBB144_73:                             # %do.body.111
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$168, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.110, %rdi
	movabsq	$.L.str.111, %rsi
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#74:                                # %do.end.113
	jmp	.LBB144_75
.LBB144_75:                             # %do.body.114
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$152, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.112, %rdi
	movabsq	$.L.str.113, %rsi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#76:                                # %do.end.116
	jmp	.LBB144_77
.LBB144_77:                             # %do.body.117
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$232, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.114, %rdi
	movabsq	$.L.str.115, %rsi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#78:                                # %do.end.119
	jmp	.LBB144_79
.LBB144_79:                             # %do.body.120
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$312, %rax              # imm = 0x138
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.116, %rdi
	movabsq	$.L.str.117, %rsi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#80:                                # %do.end.122
	movabsq	$.L.str.117, %rdi
	callq	intern_c_string
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-49, %cx
	orw	$16, %cx
	movw	%cx, lispsym(,%rax)
# BB#81:                                # %do.body.124
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$320, %rax              # imm = 0x140
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.118, %rdi
	movabsq	$.L.str.119, %rsi
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#82:                                # %do.end.126
	jmp	.LBB144_83
.LBB144_83:                             # %do.body.127
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$240, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.120, %rdi
	movabsq	$.L.str.121, %rsi
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#84:                                # %do.end.129
	jmp	.LBB144_85
.LBB144_85:                             # %do.body.130
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$248, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.122, %rdi
	movabsq	$.L.str.123, %rsi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#86:                                # %do.end.132
	jmp	.LBB144_87
.LBB144_87:                             # %do.body.133
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$216, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.124, %rdi
	movabsq	$.L.str.125, %rsi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#88:                                # %do.end.135
	jmp	.LBB144_89
.LBB144_89:                             # %do.body.136
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$224, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.126, %rdi
	movabsq	$.L.str.127, %rsi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#90:                                # %do.end.138
	jmp	.LBB144_91
.LBB144_91:                             # %do.body.139
	movl	$885, %edi              # imm = 0x375
	movq	current_buffer, %rax
	addq	$24, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.128, %rdi
	movabsq	$.L.str.129, %rsi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#92:                                # %do.end.141
	jmp	.LBB144_93
.LBB144_93:                             # %do.body.142
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$176, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.130, %rdi
	movabsq	$.L.str.131, %rsi
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#94:                                # %do.end.144
	jmp	.LBB144_95
.LBB144_95:                             # %do.body.145
	movl	$885, %edi              # imm = 0x375
	movq	current_buffer, %rax
	addq	$16, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.132, %rdi
	movabsq	$.L.str.133, %rsi
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#96:                                # %do.end.147
	jmp	.LBB144_97
.LBB144_97:                             # %do.body.148
	movl	$885, %edi              # imm = 0x375
	movq	current_buffer, %rax
	addq	$392, %rax              # imm = 0x188
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.134, %rdi
	movabsq	$.L.str.135, %rsi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#98:                                # %do.end.150
	jmp	.LBB144_99
.LBB144_99:                             # %do.body.151
	movl	$885, %edi              # imm = 0x375
	movq	current_buffer, %rax
	addq	$48, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.136, %rdi
	movabsq	$.L.str.137, %rsi
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#100:                               # %do.end.153
	jmp	.LBB144_101
.LBB144_101:                            # %do.body.154
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$56, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.138, %rdi
	movabsq	$.L.str.139, %rsi
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#102:                               # %do.end.156
	jmp	.LBB144_103
.LBB144_103:                            # %do.body.157
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$32, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.140, %rdi
	movabsq	$.L.str.141, %rsi
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#104:                               # %do.end.159
	jmp	.LBB144_105
.LBB144_105:                            # %do.body.160
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$40, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.142, %rdi
	movabsq	$.L.str.143, %rsi
	movq	-376(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#106:                               # %do.end.162
	jmp	.LBB144_107
.LBB144_107:                            # %do.body.163
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.144, %rdi
	movabsq	$.L.str.145, %rsi
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#108:                               # %do.end.165
	jmp	.LBB144_109
.LBB144_109:                            # %do.body.166
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$264, %rax              # imm = 0x108
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.146, %rdi
	movabsq	$.L.str.147, %rsi
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#110:                               # %do.end.168
	jmp	.LBB144_111
.LBB144_111:                            # %do.body.169
	movl	$736, %edi              # imm = 0x2E0
	movq	current_buffer, %rax
	addq	$280, %rax              # imm = 0x118
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.148, %rdi
	movabsq	$.L.str.149, %rsi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#112:                               # %do.end.171
	jmp	.LBB144_113
.LBB144_113:                            # %do.body.172
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$296, %rax              # imm = 0x128
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.150, %rdi
	movabsq	$.L.str.151, %rsi
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#114:                               # %do.end.174
	jmp	.LBB144_115
.LBB144_115:                            # %do.body.175
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$424, %rax              # imm = 0x1A8
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.152, %rdi
	movabsq	$.L.str.153, %rsi
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#116:                               # %do.end.177
	jmp	.LBB144_117
.LBB144_117:                            # %do.body.178
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$432, %rax              # imm = 0x1B0
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.154, %rdi
	movabsq	$.L.str.155, %rsi
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#118:                               # %do.end.180
	jmp	.LBB144_119
.LBB144_119:                            # %do.body.181
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$440, %rax              # imm = 0x1B8
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.156, %rdi
	movabsq	$.L.str.157, %rsi
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#120:                               # %do.end.183
	jmp	.LBB144_121
.LBB144_121:                            # %do.body.184
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$448, %rax              # imm = 0x1C0
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.158, %rdi
	movabsq	$.L.str.159, %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#122:                               # %do.end.186
	jmp	.LBB144_123
.LBB144_123:                            # %do.body.187
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$456, %rax              # imm = 0x1C8
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.160, %rdi
	movabsq	$.L.str.161, %rsi
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#124:                               # %do.end.189
	jmp	.LBB144_125
.LBB144_125:                            # %do.body.190
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$464, %rax              # imm = 0x1D0
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.162, %rdi
	movabsq	$.L.str.163, %rsi
	movq	-456(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#126:                               # %do.end.192
	jmp	.LBB144_127
.LBB144_127:                            # %do.body.193
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$472, %rax              # imm = 0x1D8
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.164, %rdi
	movabsq	$.L.str.165, %rsi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#128:                               # %do.end.195
	jmp	.LBB144_129
.LBB144_129:                            # %do.body.196
	movl	$1002, %edi             # imm = 0x3EA
	movq	current_buffer, %rax
	addq	$480, %rax              # imm = 0x1E0
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.166, %rdi
	movabsq	$.L.str.167, %rsi
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#130:                               # %do.end.198
	jmp	.LBB144_131
.LBB144_131:                            # %do.body.199
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$488, %rax              # imm = 0x1E8
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.168, %rdi
	movabsq	$.L.str.169, %rsi
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#132:                               # %do.end.201
	jmp	.LBB144_133
.LBB144_133:                            # %do.body.202
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$496, %rax              # imm = 0x1F0
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.170, %rdi
	movabsq	$.L.str.171, %rsi
	movq	-488(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#134:                               # %do.end.204
	jmp	.LBB144_135
.LBB144_135:                            # %do.body.205
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.172, %rdi
	movabsq	$.L.str.173, %rsi
	movq	-496(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#136:                               # %do.end.207
	jmp	.LBB144_137
.LBB144_137:                            # %do.body.208
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$512, %rax              # imm = 0x200
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.174, %rdi
	movabsq	$.L.str.175, %rsi
	movq	-504(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#138:                               # %do.end.210
	jmp	.LBB144_139
.LBB144_139:                            # %do.body.211
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$520, %rax              # imm = 0x208
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.176, %rdi
	movabsq	$.L.str.177, %rsi
	movq	-512(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#140:                               # %do.end.213
	jmp	.LBB144_141
.LBB144_141:                            # %do.body.214
	movl	$455, %edi              # imm = 0x1C7
	movq	current_buffer, %rax
	addq	$536, %rax              # imm = 0x218
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.178, %rdi
	movabsq	$.L.str.179, %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#142:                               # %do.end.216
	jmp	.LBB144_143
.LBB144_143:                            # %do.body.217
	movl	$455, %edi              # imm = 0x1C7
	movq	current_buffer, %rax
	addq	$544, %rax              # imm = 0x220
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.180, %rdi
	movabsq	$.L.str.181, %rsi
	movq	-528(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#144:                               # %do.end.219
	jmp	.LBB144_145
.LBB144_145:                            # %do.body.220
	movabsq	$syms_of_buffer.o_fwd.182, %rdi
	movabsq	$.L.str.183, %rsi
	movabsq	$globals, %rax
	addq	$104, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#146:                               # %do.end.221
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+104
# BB#147:                               # %do.body.223
	movabsq	$syms_of_buffer.o_fwd.184, %rdi
	movabsq	$.L.str.185, %rsi
	movabsq	$globals, %rdx
	callq	defvar_lisp
# BB#148:                               # %do.end.224
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals
# BB#149:                               # %do.body.226
	movabsq	$syms_of_buffer.o_fwd.186, %rdi
	movabsq	$.L.str.187, %rsi
	movabsq	$globals, %rax
	addq	$776, %rax              # imm = 0x308
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#150:                               # %do.end.227
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+776
# BB#151:                               # %do.body.229
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$968, %rax              # imm = 0x3C8
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.188, %rdi
	movabsq	$.L.str.189, %rsi
	movq	-536(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#152:                               # %do.end.231
	jmp	.LBB144_153
.LBB144_153:                            # %do.body.232
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$304, %rax              # imm = 0x130
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.190, %rdi
	movabsq	$.L.str.191, %rsi
	movq	-544(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#154:                               # %do.end.234
	jmp	.LBB144_155
.LBB144_155:                            # %do.body.235
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$344, %rax              # imm = 0x158
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.192, %rdi
	movabsq	$.L.str.193, %rsi
	movq	-552(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#156:                               # %do.end.237
	jmp	.LBB144_157
.LBB144_157:                            # %do.body.238
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.194, %rdi
	movabsq	$.L.str.195, %rsi
	movq	-560(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#158:                               # %do.end.240
	jmp	.LBB144_159
.LBB144_159:                            # %do.body.241
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$328, %rax              # imm = 0x148
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.196, %rdi
	movabsq	$.L.str.197, %rsi
	movq	-568(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#160:                               # %do.end.243
	jmp	.LBB144_161
.LBB144_161:                            # %do.body.244
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$336, %rax              # imm = 0x150
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.198, %rdi
	movabsq	$.L.str.199, %rsi
	movq	-576(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#162:                               # %do.end.246
	jmp	.LBB144_163
.LBB144_163:                            # %do.body.247
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$400, %rax              # imm = 0x190
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.200, %rdi
	movabsq	$.L.str.201, %rsi
	movq	-584(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#164:                               # %do.end.249
	jmp	.LBB144_165
.LBB144_165:                            # %do.body.250
	movl	$559, %edi              # imm = 0x22F
	movq	current_buffer, %rax
	addq	$416, %rax              # imm = 0x1A0
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.202, %rdi
	movabsq	$.L.str.203, %rsi
	movq	-592(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#166:                               # %do.end.252
	jmp	.LBB144_167
.LBB144_167:                            # %do.body.253
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$528, %rax              # imm = 0x210
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.204, %rdi
	movabsq	$.L.str.205, %rsi
	movq	-600(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#168:                               # %do.end.255
	jmp	.LBB144_169
.LBB144_169:                            # %do.body.256
	movabsq	$syms_of_buffer.o_fwd.206, %rdi
	movabsq	$.L.str.207, %rsi
	movabsq	$globals, %rax
	addq	$2440, %rax             # imm = 0x988
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#170:                               # %do.end.257
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2440
# BB#171:                               # %do.body.259
	movabsq	$syms_of_buffer.o_fwd.208, %rdi
	movabsq	$.L.str.209, %rsi
	movabsq	$globals, %rax
	addq	$1112, %rax             # imm = 0x458
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#172:                               # %do.end.260
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1112
# BB#173:                               # %do.body.262
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$552, %rax              # imm = 0x228
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.210, %rdi
	movabsq	$.L.str.211, %rsi
	movq	-608(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#174:                               # %do.end.264
	jmp	.LBB144_175
.LBB144_175:                            # %do.body.265
	movl	$711, %edi              # imm = 0x2C7
	movq	current_buffer, %rax
	addq	$560, %rax              # imm = 0x230
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.212, %rdi
	movabsq	$.L.str.213, %rsi
	movq	-616(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#176:                               # %do.end.267
	jmp	.LBB144_177
.LBB144_177:                            # %do.body.268
	xorl	%edi, %edi
	movq	current_buffer, %rax
	addq	$568, %rax              # imm = 0x238
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$syms_of_buffer.bo_fwd.214, %rdi
	movabsq	$.L.str.215, %rsi
	movq	-624(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	defvar_per_buffer
# BB#178:                               # %do.end.270
	jmp	.LBB144_179
.LBB144_179:                            # %do.body.271
	movabsq	$syms_of_buffer.o_fwd.216, %rdi
	movabsq	$.L.str.217, %rsi
	movabsq	$globals, %rax
	addq	$1216, %rax             # imm = 0x4C0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#180:                               # %do.end.272
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1216
# BB#181:                               # %do.body.274
	movabsq	$syms_of_buffer.o_fwd.218, %rdi
	movabsq	$.L.str.219, %rsi
	movabsq	$globals, %rax
	addq	$192, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#182:                               # %do.end.275
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+192
# BB#183:                               # %do.body.277
	movabsq	$syms_of_buffer.o_fwd.220, %rdi
	movabsq	$.L.str.221, %rsi
	movabsq	$globals, %rax
	addq	$144, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#184:                               # %do.end.278
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Sbuffer_live_p, %rcx
	movq	%rax, globals+144
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sbuffer_list, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_file_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_buffer_create, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_indirect_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgenerate_new_buffer_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_file_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_base_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_local_value, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_local_variables, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_modified_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sforce_mode_line_update, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_buffer_modified_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_modified_tick, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_chars_modified_tick, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srename_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sother_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_enable_undo, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skill_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbury_buffer_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_buffer_major_mode, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scurrent_buffer, %rdi
	callq	defsubr
	movabsq	$Sset_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbarf_if_buffer_read_only, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Serase_buffer, %rdi
	callq	defsubr
	movabsq	$Sbuffer_swap_text, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_buffer_multibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skill_all_local_variables, %rdi
	callq	defsubr
	movabsq	$Soverlayp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_overlay, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_overlay, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_all_overlays, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smove_overlay, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlay_start, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlay_end, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlay_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlay_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlays_at, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlays_in, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snext_overlay_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprevious_overlay_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlay_recenter, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlay_lists, %rdi
	callq	defsubr
	movabsq	$Soverlay_get, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soverlay_put, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srestore_buffer_modified_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$.L.str.222, %rdi
	callq	intern_c_string
	movl	$343, %edi              # imm = 0x157
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	-640(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -648(%rbp)        # 8-byte Spill
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end144:
	.size	syms_of_buffer, .Lfunc_end144-syms_of_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	defvar_per_buffer,@function
defvar_per_buffer:                      # @defvar_per_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp435:
	.cfi_def_cfa_offset 16
.Ltmp436:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp437:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	intern
	movabsq	$lispsym, %rcx
	subq	$0, %rax
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	subq	%rcx, %rax
	movl	%eax, %r8d
	movl	%r8d, -44(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, (%rax)
	movl	-44(%rbp), %r8d
	movq	-8(%rbp), %rax
	movl	%r8d, 4(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movw	(%rax), %r9w
	andw	$-257, %r9w             # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %r9w              # imm = 0x100
	movw	%r9w, (%rax)
	movq	-40(%rbp), %rax
	movw	(%rax), %r9w
	andw	$-15, %r9w
	orw	$6, %r9w
	movw	%r9w, (%rax)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	SET_SYMBOL_FWD
	movq	-40(%rbp), %rdi
	callq	make_lisp_symbol
	movslq	-44(%rbp), %rcx
	movq	%rax, buffer_local_symbols(,%rcx)
	movslq	-44(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB145_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB145_2:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end145:
	.size	defvar_per_buffer, .Lfunc_end145-defvar_per_buffer
	.cfi_endproc

	.globl	keys_of_buffer
	.align	16, 0x90
	.type	keys_of_buffer,@function
keys_of_buffer:                         # @keys_of_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp438:
	.cfi_def_cfa_offset 16
.Ltmp439:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp440:
	.cfi_def_cfa_register %rbp
	movl	$98, %esi
	movabsq	$.L.str.223, %rdx
	movq	control_x_map, %rdi
	callq	initial_define_key
	movl	$107, %esi
	movabsq	$.L.str.224, %rdx
	movq	control_x_map, %rdi
	callq	initial_define_key
	popq	%rbp
	retq
.Lfunc_end146:
	.size	keys_of_buffer, .Lfunc_end146-keys_of_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	copy_overlays,@function
copy_overlays:                          # @copy_overlays
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp441:
	.cfi_def_cfa_offset 16
.Ltmp442:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp443:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB147_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB147_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB147_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XMARKER
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	callq	build_marker
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$31, %ecx
	movb	%cl, %r8b
	movq	-48(%rbp), %rdi
	movb	%r8b, -65(%rbp)         # 1-byte Spill
	callq	XMARKER
	movb	-65(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	(%rax), %r9d
	shll	$31, %ecx
	andl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	orl	%ecx, %r9d
	movl	%r9d, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	XMARKER
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	callq	build_marker
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$31, %ecx
	movb	%cl, %r8b
	movq	-56(%rbp), %rdi
	movb	%r8b, -66(%rbp)         # 1-byte Spill
	callq	XMARKER
	movb	-66(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	(%rax), %r9d
	shll	$31, %ecx
	andl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	orl	%ecx, %r9d
	movl	%r9d, (%rax)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	Fcopy_sequence
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	build_overlay
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB147_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB147_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	%rax, -32(%rbp)
	jmp	.LBB147_5
.LBB147_4:                              # %if.else
                                        #   in Loop: Header=BB147_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	XOVERLAY
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
.LBB147_5:                              # %if.end
                                        #   in Loop: Header=BB147_1 Depth=1
	jmp	.LBB147_6
.LBB147_6:                              # %for.inc
                                        #   in Loop: Header=BB147_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB147_1
.LBB147_7:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end147:
	.size	copy_overlays, .Lfunc_end147-copy_overlays
	.cfi_endproc

	.align	16, 0x90
	.type	unchain_overlay,@function
unchain_overlay:                        # @unchain_overlay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp444:
	.cfi_def_cfa_offset 16
.Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp446:
	.cfi_def_cfa_register %rbp
	leaq	-8(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB148_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB148_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB148_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB148_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.LBB148_6
.LBB148_4:                              # %if.end
                                        #   in Loop: Header=BB148_1 Depth=1
	jmp	.LBB148_5
.LBB148_5:                              # %for.inc
                                        #   in Loop: Header=BB148_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB148_1
.LBB148_6:                              # %for.end
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end148:
	.size	unchain_overlay, .Lfunc_end148-unchain_overlay
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No buffer named %s"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid buffer argument"
	.size	.L.str.1, 24

	.type	Vbuffer_alist,@object   # @Vbuffer_alist
	.comm	Vbuffer_alist,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Empty string for buffer name is not allowed"
	.size	.L.str.2, 44

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Buffer name `%s' is in use"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"No such buffer: `%s'"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Base buffer has been killed"
	.size	.L.str.5, 28

	.type	current_buffer,@object  # @current_buffer
	.comm	current_buffer,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"buffer-save-without-query"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"buffer-file-number"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"buffer-stale-function"
	.size	.L.str.8, 22

	.type	buffer_defaults,@object # @buffer_defaults
	.comm	buffer_defaults,976,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" "
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-%ld"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<%ld>"
	.size	.L.str.11, 6

	.type	buffer_local_flags,@object # @buffer_local_flags
	.comm	buffer_local_flags,976,8
	.type	last_per_buffer_idx,@object # @last_per_buffer_idx
	.comm	last_per_buffer_idx,4,4
	.type	buffer_local_symbols,@object # @buffer_local_symbols
	.comm	buffer_local_symbols,976,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Empty string is invalid as a buffer name"
	.size	.L.str.12, 41

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"rename-auto-save-file"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"*scratch*"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Buffer %s modified; kill anyway? "
	.size	.L.str.15, 34

	.type	all_buffers,@object     # @all_buffers
	.comm	all_buffers,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"auto-save-visited-file-name"
	.size	.L.str.16, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"delete-auto-save-files"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Attempt to set major mode for a dead buffer"
	.size	.L.str.18, 44

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"initial-major-mode"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Selecting deleted buffer"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Cannot swap a dead buffer's text"
	.size	.L.str.21, 33

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Cannot swap indirect buffers's text"
	.size	.L.str.22, 36

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"One of the buffers to swap has indirect buffers"
	.size	.L.str.23, 48

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Cannot do `set-buffer-multibyte' on an indirect buffer"
	.size	.L.str.24, 55

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Changing multibyteness in a narrowed buffer"
	.size	.L.str.25, 44

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"set-buffer-multibyte"
	.size	.L.str.26, 21

	.type	overlay_heads,@object   # @overlay_heads
	.local	overlay_heads
	.comm	overlay_heads,32,8
	.type	overlay_tails,@object   # @overlay_tails
	.local	overlay_tails
	.comm	overlay_tails,32,8
	.type	overlay_str_len,@object # @overlay_str_len
	.local	overlay_str_len
	.comm	overlay_str_len,8,8
	.type	overlay_str_buf,@object # @overlay_str_buf
	.local	overlay_str_buf
	.comm	overlay_str_buf,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Marker points into wrong buffer"
	.size	.L.str.27, 32

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Attempt to move overlay to a dead buffer"
	.size	.L.str.28, 41

	.type	last_overlay_modification_hooks_used,@object # @last_overlay_modification_hooks_used
	.local	last_overlay_modification_hooks_used
	.comm	last_overlay_modification_hooks_used,8,8
	.type	last_overlay_modification_hooks,@object # @last_overlay_modification_hooks
	.local	last_overlay_modification_hooks
	.comm	last_overlay_modification_hooks,8,8
	.type	buffer_permanent_local_flags,@object # @buffer_permanent_local_flags
	.local	buffer_permanent_local_flags
	.comm	buffer_permanent_local_flags,50,16
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	" *buffer-defaults*"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	" *buffer-local-symbols*"
	.size	.L.str.30, 24

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%-"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Fundamental"
	.size	.L.str.32, 12

	.type	QSFundamental,@object   # @QSFundamental
	.local	QSFundamental
	.comm	QSFundamental,8,8
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	" prin1"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Error getting directory: %s\n"
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"get_current_dir_name: %s\n"
	.size	.L.str.35, 26

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"/:"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"overwrite-mode-textual"
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Attempt to modify a protected field"
	.size	.L.str.39, 36

	.type	syms_of_buffer.o_fwd,@object # @syms_of_buffer.o_fwd
	.local	syms_of_buffer.o_fwd
	.comm	syms_of_buffer.o_fwd,16,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"default-mode-line-format"
	.size	.L.str.40, 25

	.type	syms_of_buffer.o_fwd.41,@object # @syms_of_buffer.o_fwd.41
	.local	syms_of_buffer.o_fwd.41
	.comm	syms_of_buffer.o_fwd.41,16,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"default-header-line-format"
	.size	.L.str.42, 27

	.type	syms_of_buffer.o_fwd.43,@object # @syms_of_buffer.o_fwd.43
	.local	syms_of_buffer.o_fwd.43
	.comm	syms_of_buffer.o_fwd.43,16,8
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"default-cursor-type"
	.size	.L.str.44, 20

	.type	syms_of_buffer.o_fwd.45,@object # @syms_of_buffer.o_fwd.45
	.local	syms_of_buffer.o_fwd.45
	.comm	syms_of_buffer.o_fwd.45,16,8
	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"default-line-spacing"
	.size	.L.str.46, 21

	.type	syms_of_buffer.o_fwd.47,@object # @syms_of_buffer.o_fwd.47
	.local	syms_of_buffer.o_fwd.47
	.comm	syms_of_buffer.o_fwd.47,16,8
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"default-cursor-in-non-selected-windows"
	.size	.L.str.48, 39

	.type	syms_of_buffer.o_fwd.49,@object # @syms_of_buffer.o_fwd.49
	.local	syms_of_buffer.o_fwd.49
	.comm	syms_of_buffer.o_fwd.49,16,8
	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"default-abbrev-mode"
	.size	.L.str.50, 20

	.type	syms_of_buffer.o_fwd.51,@object # @syms_of_buffer.o_fwd.51
	.local	syms_of_buffer.o_fwd.51
	.comm	syms_of_buffer.o_fwd.51,16,8
	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"default-ctl-arrow"
	.size	.L.str.52, 18

	.type	syms_of_buffer.o_fwd.53,@object # @syms_of_buffer.o_fwd.53
	.local	syms_of_buffer.o_fwd.53
	.comm	syms_of_buffer.o_fwd.53,16,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"default-enable-multibyte-characters"
	.size	.L.str.54, 36

	.type	syms_of_buffer.o_fwd.55,@object # @syms_of_buffer.o_fwd.55
	.local	syms_of_buffer.o_fwd.55
	.comm	syms_of_buffer.o_fwd.55,16,8
	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"default-buffer-file-coding-system"
	.size	.L.str.56, 34

	.type	syms_of_buffer.o_fwd.57,@object # @syms_of_buffer.o_fwd.57
	.local	syms_of_buffer.o_fwd.57
	.comm	syms_of_buffer.o_fwd.57,16,8
	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"default-truncate-lines"
	.size	.L.str.58, 23

	.type	syms_of_buffer.o_fwd.59,@object # @syms_of_buffer.o_fwd.59
	.local	syms_of_buffer.o_fwd.59
	.comm	syms_of_buffer.o_fwd.59,16,8
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"default-fill-column"
	.size	.L.str.60, 20

	.type	syms_of_buffer.o_fwd.61,@object # @syms_of_buffer.o_fwd.61
	.local	syms_of_buffer.o_fwd.61
	.comm	syms_of_buffer.o_fwd.61,16,8
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"default-left-margin"
	.size	.L.str.62, 20

	.type	syms_of_buffer.o_fwd.63,@object # @syms_of_buffer.o_fwd.63
	.local	syms_of_buffer.o_fwd.63
	.comm	syms_of_buffer.o_fwd.63,16,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"default-tab-width"
	.size	.L.str.64, 18

	.type	syms_of_buffer.o_fwd.65,@object # @syms_of_buffer.o_fwd.65
	.local	syms_of_buffer.o_fwd.65
	.comm	syms_of_buffer.o_fwd.65,16,8
	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"default-case-fold-search"
	.size	.L.str.66, 25

	.type	syms_of_buffer.o_fwd.67,@object # @syms_of_buffer.o_fwd.67
	.local	syms_of_buffer.o_fwd.67
	.comm	syms_of_buffer.o_fwd.67,16,8
	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"default-left-margin-width"
	.size	.L.str.68, 26

	.type	syms_of_buffer.o_fwd.69,@object # @syms_of_buffer.o_fwd.69
	.local	syms_of_buffer.o_fwd.69
	.comm	syms_of_buffer.o_fwd.69,16,8
	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"default-right-margin-width"
	.size	.L.str.70, 27

	.type	syms_of_buffer.o_fwd.71,@object # @syms_of_buffer.o_fwd.71
	.local	syms_of_buffer.o_fwd.71
	.comm	syms_of_buffer.o_fwd.71,16,8
	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"default-left-fringe-width"
	.size	.L.str.72, 26

	.type	syms_of_buffer.o_fwd.73,@object # @syms_of_buffer.o_fwd.73
	.local	syms_of_buffer.o_fwd.73
	.comm	syms_of_buffer.o_fwd.73,16,8
	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"default-right-fringe-width"
	.size	.L.str.74, 27

	.type	syms_of_buffer.o_fwd.75,@object # @syms_of_buffer.o_fwd.75
	.local	syms_of_buffer.o_fwd.75
	.comm	syms_of_buffer.o_fwd.75,16,8
	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"default-fringes-outside-margins"
	.size	.L.str.76, 32

	.type	syms_of_buffer.o_fwd.77,@object # @syms_of_buffer.o_fwd.77
	.local	syms_of_buffer.o_fwd.77
	.comm	syms_of_buffer.o_fwd.77,16,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"default-scroll-bar-width"
	.size	.L.str.78, 25

	.type	syms_of_buffer.o_fwd.79,@object # @syms_of_buffer.o_fwd.79
	.local	syms_of_buffer.o_fwd.79
	.comm	syms_of_buffer.o_fwd.79,16,8
	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"default-vertical-scroll-bar"
	.size	.L.str.80, 28

	.type	syms_of_buffer.o_fwd.81,@object # @syms_of_buffer.o_fwd.81
	.local	syms_of_buffer.o_fwd.81
	.comm	syms_of_buffer.o_fwd.81,16,8
	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"default-indicate-empty-lines"
	.size	.L.str.82, 29

	.type	syms_of_buffer.o_fwd.83,@object # @syms_of_buffer.o_fwd.83
	.local	syms_of_buffer.o_fwd.83
	.comm	syms_of_buffer.o_fwd.83,16,8
	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"default-indicate-buffer-boundaries"
	.size	.L.str.84, 35

	.type	syms_of_buffer.o_fwd.85,@object # @syms_of_buffer.o_fwd.85
	.local	syms_of_buffer.o_fwd.85
	.comm	syms_of_buffer.o_fwd.85,16,8
	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"default-fringe-indicator-alist"
	.size	.L.str.86, 31

	.type	syms_of_buffer.o_fwd.87,@object # @syms_of_buffer.o_fwd.87
	.local	syms_of_buffer.o_fwd.87
	.comm	syms_of_buffer.o_fwd.87,16,8
	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"default-fringe-cursor-alist"
	.size	.L.str.88, 28

	.type	syms_of_buffer.o_fwd.89,@object # @syms_of_buffer.o_fwd.89
	.local	syms_of_buffer.o_fwd.89
	.comm	syms_of_buffer.o_fwd.89,16,8
	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"default-scroll-up-aggressively"
	.size	.L.str.90, 31

	.type	syms_of_buffer.o_fwd.91,@object # @syms_of_buffer.o_fwd.91
	.local	syms_of_buffer.o_fwd.91
	.comm	syms_of_buffer.o_fwd.91,16,8
	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"default-scroll-down-aggressively"
	.size	.L.str.92, 33

	.type	syms_of_buffer.bo_fwd,@object # @syms_of_buffer.bo_fwd
	.local	syms_of_buffer.bo_fwd
	.comm	syms_of_buffer.bo_fwd,16,8
	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"header-line-format"
	.size	.L.str.93, 19

	.type	syms_of_buffer.bo_fwd.94,@object # @syms_of_buffer.bo_fwd.94
	.local	syms_of_buffer.bo_fwd.94
	.comm	syms_of_buffer.bo_fwd.94,16,8
	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"mode-line-format"
	.size	.L.str.95, 17

	.type	syms_of_buffer.o_fwd.96,@object # @syms_of_buffer.o_fwd.96
	.local	syms_of_buffer.o_fwd.96
	.comm	syms_of_buffer.o_fwd.96,16,8
	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"default-major-mode"
	.size	.L.str.97, 19

	.type	syms_of_buffer.bo_fwd.98,@object # @syms_of_buffer.bo_fwd.98
	.local	syms_of_buffer.bo_fwd.98
	.comm	syms_of_buffer.bo_fwd.98,16,8
	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"major-mode"
	.size	.L.str.99, 11

	.type	syms_of_buffer.bo_fwd.100,@object # @syms_of_buffer.bo_fwd.100
	.local	syms_of_buffer.bo_fwd.100
	.comm	syms_of_buffer.bo_fwd.100,16,8
	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"mode-name"
	.size	.L.str.101, 10

	.type	syms_of_buffer.bo_fwd.102,@object # @syms_of_buffer.bo_fwd.102
	.local	syms_of_buffer.bo_fwd.102
	.comm	syms_of_buffer.bo_fwd.102,16,8
	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"local-abbrev-table"
	.size	.L.str.103, 19

	.type	syms_of_buffer.bo_fwd.104,@object # @syms_of_buffer.bo_fwd.104
	.local	syms_of_buffer.bo_fwd.104
	.comm	syms_of_buffer.bo_fwd.104,16,8
	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"abbrev-mode"
	.size	.L.str.105, 12

	.type	syms_of_buffer.bo_fwd.106,@object # @syms_of_buffer.bo_fwd.106
	.local	syms_of_buffer.bo_fwd.106
	.comm	syms_of_buffer.bo_fwd.106,16,8
	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"case-fold-search"
	.size	.L.str.107, 17

	.type	syms_of_buffer.bo_fwd.108,@object # @syms_of_buffer.bo_fwd.108
	.local	syms_of_buffer.bo_fwd.108
	.comm	syms_of_buffer.bo_fwd.108,16,8
	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"fill-column"
	.size	.L.str.109, 12

	.type	syms_of_buffer.bo_fwd.110,@object # @syms_of_buffer.bo_fwd.110
	.local	syms_of_buffer.bo_fwd.110
	.comm	syms_of_buffer.bo_fwd.110,16,8
	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"left-margin"
	.size	.L.str.111, 12

	.type	syms_of_buffer.bo_fwd.112,@object # @syms_of_buffer.bo_fwd.112
	.local	syms_of_buffer.bo_fwd.112
	.comm	syms_of_buffer.bo_fwd.112,16,8
	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"tab-width"
	.size	.L.str.113, 10

	.type	syms_of_buffer.bo_fwd.114,@object # @syms_of_buffer.bo_fwd.114
	.local	syms_of_buffer.bo_fwd.114
	.comm	syms_of_buffer.bo_fwd.114,16,8
	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"ctl-arrow"
	.size	.L.str.115, 10

	.type	syms_of_buffer.bo_fwd.116,@object # @syms_of_buffer.bo_fwd.116
	.local	syms_of_buffer.bo_fwd.116
	.comm	syms_of_buffer.bo_fwd.116,16,8
	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"enable-multibyte-characters"
	.size	.L.str.117, 28

	.type	syms_of_buffer.bo_fwd.118,@object # @syms_of_buffer.bo_fwd.118
	.local	syms_of_buffer.bo_fwd.118
	.comm	syms_of_buffer.bo_fwd.118,16,8
	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"buffer-file-coding-system"
	.size	.L.str.119, 26

	.type	syms_of_buffer.bo_fwd.120,@object # @syms_of_buffer.bo_fwd.120
	.local	syms_of_buffer.bo_fwd.120
	.comm	syms_of_buffer.bo_fwd.120,16,8
	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"bidi-display-reordering"
	.size	.L.str.121, 24

	.type	syms_of_buffer.bo_fwd.122,@object # @syms_of_buffer.bo_fwd.122
	.local	syms_of_buffer.bo_fwd.122
	.comm	syms_of_buffer.bo_fwd.122,16,8
	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"bidi-paragraph-direction"
	.size	.L.str.123, 25

	.type	syms_of_buffer.bo_fwd.124,@object # @syms_of_buffer.bo_fwd.124
	.local	syms_of_buffer.bo_fwd.124
	.comm	syms_of_buffer.bo_fwd.124,16,8
	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"truncate-lines"
	.size	.L.str.125, 15

	.type	syms_of_buffer.bo_fwd.126,@object # @syms_of_buffer.bo_fwd.126
	.local	syms_of_buffer.bo_fwd.126
	.comm	syms_of_buffer.bo_fwd.126,16,8
	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"word-wrap"
	.size	.L.str.127, 10

	.type	syms_of_buffer.bo_fwd.128,@object # @syms_of_buffer.bo_fwd.128
	.local	syms_of_buffer.bo_fwd.128
	.comm	syms_of_buffer.bo_fwd.128,16,8
	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"default-directory"
	.size	.L.str.129, 18

	.type	syms_of_buffer.bo_fwd.130,@object # @syms_of_buffer.bo_fwd.130
	.local	syms_of_buffer.bo_fwd.130
	.comm	syms_of_buffer.bo_fwd.130,16,8
	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"auto-fill-function"
	.size	.L.str.131, 19

	.type	syms_of_buffer.bo_fwd.132,@object # @syms_of_buffer.bo_fwd.132
	.local	syms_of_buffer.bo_fwd.132
	.comm	syms_of_buffer.bo_fwd.132,16,8
	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"buffer-file-name"
	.size	.L.str.133, 17

	.type	syms_of_buffer.bo_fwd.134,@object # @syms_of_buffer.bo_fwd.134
	.local	syms_of_buffer.bo_fwd.134
	.comm	syms_of_buffer.bo_fwd.134,16,8
	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"buffer-file-truename"
	.size	.L.str.135, 21

	.type	syms_of_buffer.bo_fwd.136,@object # @syms_of_buffer.bo_fwd.136
	.local	syms_of_buffer.bo_fwd.136
	.comm	syms_of_buffer.bo_fwd.136,16,8
	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"buffer-auto-save-file-name"
	.size	.L.str.137, 27

	.type	syms_of_buffer.bo_fwd.138,@object # @syms_of_buffer.bo_fwd.138
	.local	syms_of_buffer.bo_fwd.138
	.comm	syms_of_buffer.bo_fwd.138,16,8
	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"buffer-read-only"
	.size	.L.str.139, 17

	.type	syms_of_buffer.bo_fwd.140,@object # @syms_of_buffer.bo_fwd.140
	.local	syms_of_buffer.bo_fwd.140
	.comm	syms_of_buffer.bo_fwd.140,16,8
	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"buffer-backed-up"
	.size	.L.str.141, 17

	.type	syms_of_buffer.bo_fwd.142,@object # @syms_of_buffer.bo_fwd.142
	.local	syms_of_buffer.bo_fwd.142
	.comm	syms_of_buffer.bo_fwd.142,16,8
	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"buffer-saved-size"
	.size	.L.str.143, 18

	.type	syms_of_buffer.bo_fwd.144,@object # @syms_of_buffer.bo_fwd.144
	.local	syms_of_buffer.bo_fwd.144
	.comm	syms_of_buffer.bo_fwd.144,16,8
	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"selective-display"
	.size	.L.str.145, 18

	.type	syms_of_buffer.bo_fwd.146,@object # @syms_of_buffer.bo_fwd.146
	.local	syms_of_buffer.bo_fwd.146
	.comm	syms_of_buffer.bo_fwd.146,16,8
	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"selective-display-ellipses"
	.size	.L.str.147, 27

	.type	syms_of_buffer.bo_fwd.148,@object # @syms_of_buffer.bo_fwd.148
	.local	syms_of_buffer.bo_fwd.148
	.comm	syms_of_buffer.bo_fwd.148,16,8
	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"overwrite-mode"
	.size	.L.str.149, 15

	.type	syms_of_buffer.bo_fwd.150,@object # @syms_of_buffer.bo_fwd.150
	.local	syms_of_buffer.bo_fwd.150
	.comm	syms_of_buffer.bo_fwd.150,16,8
	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"buffer-display-table"
	.size	.L.str.151, 21

	.type	syms_of_buffer.bo_fwd.152,@object # @syms_of_buffer.bo_fwd.152
	.local	syms_of_buffer.bo_fwd.152
	.comm	syms_of_buffer.bo_fwd.152,16,8
	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"left-margin-width"
	.size	.L.str.153, 18

	.type	syms_of_buffer.bo_fwd.154,@object # @syms_of_buffer.bo_fwd.154
	.local	syms_of_buffer.bo_fwd.154
	.comm	syms_of_buffer.bo_fwd.154,16,8
	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"right-margin-width"
	.size	.L.str.155, 19

	.type	syms_of_buffer.bo_fwd.156,@object # @syms_of_buffer.bo_fwd.156
	.local	syms_of_buffer.bo_fwd.156
	.comm	syms_of_buffer.bo_fwd.156,16,8
	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"left-fringe-width"
	.size	.L.str.157, 18

	.type	syms_of_buffer.bo_fwd.158,@object # @syms_of_buffer.bo_fwd.158
	.local	syms_of_buffer.bo_fwd.158
	.comm	syms_of_buffer.bo_fwd.158,16,8
	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"right-fringe-width"
	.size	.L.str.159, 19

	.type	syms_of_buffer.bo_fwd.160,@object # @syms_of_buffer.bo_fwd.160
	.local	syms_of_buffer.bo_fwd.160
	.comm	syms_of_buffer.bo_fwd.160,16,8
	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"fringes-outside-margins"
	.size	.L.str.161, 24

	.type	syms_of_buffer.bo_fwd.162,@object # @syms_of_buffer.bo_fwd.162
	.local	syms_of_buffer.bo_fwd.162
	.comm	syms_of_buffer.bo_fwd.162,16,8
	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"scroll-bar-width"
	.size	.L.str.163, 17

	.type	syms_of_buffer.bo_fwd.164,@object # @syms_of_buffer.bo_fwd.164
	.local	syms_of_buffer.bo_fwd.164
	.comm	syms_of_buffer.bo_fwd.164,16,8
	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"scroll-bar-height"
	.size	.L.str.165, 18

	.type	syms_of_buffer.bo_fwd.166,@object # @syms_of_buffer.bo_fwd.166
	.local	syms_of_buffer.bo_fwd.166
	.comm	syms_of_buffer.bo_fwd.166,16,8
	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"vertical-scroll-bar"
	.size	.L.str.167, 20

	.type	syms_of_buffer.bo_fwd.168,@object # @syms_of_buffer.bo_fwd.168
	.local	syms_of_buffer.bo_fwd.168
	.comm	syms_of_buffer.bo_fwd.168,16,8
	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"horizontal-scroll-bar"
	.size	.L.str.169, 22

	.type	syms_of_buffer.bo_fwd.170,@object # @syms_of_buffer.bo_fwd.170
	.local	syms_of_buffer.bo_fwd.170
	.comm	syms_of_buffer.bo_fwd.170,16,8
	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"indicate-empty-lines"
	.size	.L.str.171, 21

	.type	syms_of_buffer.bo_fwd.172,@object # @syms_of_buffer.bo_fwd.172
	.local	syms_of_buffer.bo_fwd.172
	.comm	syms_of_buffer.bo_fwd.172,16,8
	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"indicate-buffer-boundaries"
	.size	.L.str.173, 27

	.type	syms_of_buffer.bo_fwd.174,@object # @syms_of_buffer.bo_fwd.174
	.local	syms_of_buffer.bo_fwd.174
	.comm	syms_of_buffer.bo_fwd.174,16,8
	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"fringe-indicator-alist"
	.size	.L.str.175, 23

	.type	syms_of_buffer.bo_fwd.176,@object # @syms_of_buffer.bo_fwd.176
	.local	syms_of_buffer.bo_fwd.176
	.comm	syms_of_buffer.bo_fwd.176,16,8
	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"fringe-cursor-alist"
	.size	.L.str.177, 20

	.type	syms_of_buffer.bo_fwd.178,@object # @syms_of_buffer.bo_fwd.178
	.local	syms_of_buffer.bo_fwd.178
	.comm	syms_of_buffer.bo_fwd.178,16,8
	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"scroll-up-aggressively"
	.size	.L.str.179, 23

	.type	syms_of_buffer.bo_fwd.180,@object # @syms_of_buffer.bo_fwd.180
	.local	syms_of_buffer.bo_fwd.180
	.comm	syms_of_buffer.bo_fwd.180,16,8
	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"scroll-down-aggressively"
	.size	.L.str.181, 25

	.type	syms_of_buffer.o_fwd.182,@object # @syms_of_buffer.o_fwd.182
	.local	syms_of_buffer.o_fwd.182
	.comm	syms_of_buffer.o_fwd.182,16,8
	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"before-change-functions"
	.size	.L.str.183, 24

	.type	syms_of_buffer.o_fwd.184,@object # @syms_of_buffer.o_fwd.184
	.local	syms_of_buffer.o_fwd.184
	.comm	syms_of_buffer.o_fwd.184,16,8
	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"after-change-functions"
	.size	.L.str.185, 23

	.type	syms_of_buffer.o_fwd.186,@object # @syms_of_buffer.o_fwd.186
	.local	syms_of_buffer.o_fwd.186
	.comm	syms_of_buffer.o_fwd.186,16,8
	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"first-change-hook"
	.size	.L.str.187, 18

	.type	syms_of_buffer.bo_fwd.188,@object # @syms_of_buffer.bo_fwd.188
	.local	syms_of_buffer.bo_fwd.188
	.comm	syms_of_buffer.bo_fwd.188,16,8
	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"buffer-undo-list"
	.size	.L.str.189, 17

	.type	syms_of_buffer.bo_fwd.190,@object # @syms_of_buffer.bo_fwd.190
	.local	syms_of_buffer.bo_fwd.190
	.comm	syms_of_buffer.bo_fwd.190,16,8
	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"mark-active"
	.size	.L.str.191, 12

	.type	syms_of_buffer.bo_fwd.192,@object # @syms_of_buffer.bo_fwd.192
	.local	syms_of_buffer.bo_fwd.192
	.comm	syms_of_buffer.bo_fwd.192,16,8
	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"cache-long-scans"
	.size	.L.str.193, 17

	.type	syms_of_buffer.bo_fwd.194,@object # @syms_of_buffer.bo_fwd.194
	.local	syms_of_buffer.bo_fwd.194
	.comm	syms_of_buffer.bo_fwd.194,16,8
	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"point-before-scroll"
	.size	.L.str.195, 20

	.type	syms_of_buffer.bo_fwd.196,@object # @syms_of_buffer.bo_fwd.196
	.local	syms_of_buffer.bo_fwd.196
	.comm	syms_of_buffer.bo_fwd.196,16,8
	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"buffer-file-format"
	.size	.L.str.197, 19

	.type	syms_of_buffer.bo_fwd.198,@object # @syms_of_buffer.bo_fwd.198
	.local	syms_of_buffer.bo_fwd.198
	.comm	syms_of_buffer.bo_fwd.198,16,8
	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"buffer-auto-save-file-format"
	.size	.L.str.199, 29

	.type	syms_of_buffer.bo_fwd.200,@object # @syms_of_buffer.bo_fwd.200
	.local	syms_of_buffer.bo_fwd.200
	.comm	syms_of_buffer.bo_fwd.200,16,8
	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"buffer-invisibility-spec"
	.size	.L.str.201, 25

	.type	syms_of_buffer.bo_fwd.202,@object # @syms_of_buffer.bo_fwd.202
	.local	syms_of_buffer.bo_fwd.202
	.comm	syms_of_buffer.bo_fwd.202,16,8
	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"buffer-display-count"
	.size	.L.str.203, 21

	.type	syms_of_buffer.bo_fwd.204,@object # @syms_of_buffer.bo_fwd.204
	.local	syms_of_buffer.bo_fwd.204
	.comm	syms_of_buffer.bo_fwd.204,16,8
	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"buffer-display-time"
	.size	.L.str.205, 20

	.type	syms_of_buffer.o_fwd.206,@object # @syms_of_buffer.o_fwd.206
	.local	syms_of_buffer.o_fwd.206
	.comm	syms_of_buffer.o_fwd.206,16,8
	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"transient-mark-mode"
	.size	.L.str.207, 20

	.type	syms_of_buffer.o_fwd.208,@object # @syms_of_buffer.o_fwd.208
	.local	syms_of_buffer.o_fwd.208
	.comm	syms_of_buffer.o_fwd.208,16,8
	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"inhibit-read-only"
	.size	.L.str.209, 18

	.type	syms_of_buffer.bo_fwd.210,@object # @syms_of_buffer.bo_fwd.210
	.local	syms_of_buffer.bo_fwd.210
	.comm	syms_of_buffer.bo_fwd.210,16,8
	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"cursor-type"
	.size	.L.str.211, 12

	.type	syms_of_buffer.bo_fwd.212,@object # @syms_of_buffer.bo_fwd.212
	.local	syms_of_buffer.bo_fwd.212
	.comm	syms_of_buffer.bo_fwd.212,16,8
	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"line-spacing"
	.size	.L.str.213, 13

	.type	syms_of_buffer.bo_fwd.214,@object # @syms_of_buffer.bo_fwd.214
	.local	syms_of_buffer.bo_fwd.214
	.comm	syms_of_buffer.bo_fwd.214,16,8
	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"cursor-in-non-selected-windows"
	.size	.L.str.215, 31

	.type	syms_of_buffer.o_fwd.216,@object # @syms_of_buffer.o_fwd.216
	.local	syms_of_buffer.o_fwd.216
	.comm	syms_of_buffer.o_fwd.216,16,8
	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"kill-buffer-query-functions"
	.size	.L.str.217, 28

	.type	syms_of_buffer.o_fwd.218,@object # @syms_of_buffer.o_fwd.218
	.local	syms_of_buffer.o_fwd.218
	.comm	syms_of_buffer.o_fwd.218,16,8
	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"change-major-mode-hook"
	.size	.L.str.219, 23

	.type	syms_of_buffer.o_fwd.220,@object # @syms_of_buffer.o_fwd.220
	.local	syms_of_buffer.o_fwd.220
	.comm	syms_of_buffer.o_fwd.220,16,8
	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"buffer-list-update-hook"
	.size	.L.str.221, 24

	.type	Scurrent_buffer,@object # @Scurrent_buffer
	.data
	.align	8
Scurrent_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_buffer
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.250
	.quad	0
	.quad	0
	.size	Scurrent_buffer, 48

	.type	Serase_buffer,@object   # @Serase_buffer
	.align	8
Serase_buffer:
	.quad	167772160               # 0xa000000
	.quad	Ferase_buffer
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.222
	.quad	.L.str.253
	.quad	0
	.size	Serase_buffer, 48

	.type	Skill_all_local_variables,@object # @Skill_all_local_variables
	.align	8
Skill_all_local_variables:
	.quad	167772160               # 0xa000000
	.quad	Fkill_all_local_variables
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.255
	.quad	0
	.quad	0
	.size	Skill_all_local_variables, 48

	.type	Soverlay_lists,@object  # @Soverlay_lists
	.align	8
Soverlay_lists:
	.quad	167772160               # 0xa000000
	.quad	Foverlay_lists
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.270
	.quad	0
	.quad	0
	.size	Soverlay_lists, 48

	.type	.L.str.222,@object      # @.str.222
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.222:
	.asciz	"erase-buffer"
	.size	.L.str.222, 13

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"switch-to-buffer"
	.size	.L.str.223, 17

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"kill-buffer"
	.size	.L.str.224, 12

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"buffer-live-p"
	.size	.L.str.225, 14

	.type	Sbuffer_live_p,@object  # @Sbuffer_live_p
	.data
	.align	8
Sbuffer_live_p:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_live_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.225
	.quad	0
	.quad	0
	.size	Sbuffer_live_p, 48

	.type	.L.str.226,@object      # @.str.226
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.226:
	.asciz	"buffer-list"
	.size	.L.str.226, 12

	.type	Sbuffer_list,@object    # @Sbuffer_list
	.data
	.align	8
Sbuffer_list:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_list
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.226
	.quad	0
	.quad	0
	.size	Sbuffer_list, 48

	.type	.L.str.227,@object      # @.str.227
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.227:
	.asciz	"get-buffer"
	.size	.L.str.227, 11

	.type	Sget_buffer,@object     # @Sget_buffer
	.data
	.align	8
Sget_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fget_buffer
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.227
	.quad	0
	.quad	0
	.size	Sget_buffer, 48

	.type	.L.str.228,@object      # @.str.228
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.228:
	.asciz	"get-file-buffer"
	.size	.L.str.228, 16

	.type	Sget_file_buffer,@object # @Sget_file_buffer
	.data
	.align	8
Sget_file_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fget_file_buffer
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.228
	.quad	0
	.quad	0
	.size	Sget_file_buffer, 48

	.type	.L.str.229,@object      # @.str.229
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.229:
	.asciz	"get-buffer-create"
	.size	.L.str.229, 18

	.type	Sget_buffer_create,@object # @Sget_buffer_create
	.data
	.align	8
Sget_buffer_create:
	.quad	167772160               # 0xa000000
	.quad	Fget_buffer_create
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.229
	.quad	0
	.quad	0
	.size	Sget_buffer_create, 48

	.type	.L.str.230,@object      # @.str.230
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.230:
	.asciz	"make-indirect-buffer"
	.size	.L.str.230, 21

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"bMake indirect buffer (to buffer): \nBName of indirect buffer: "
	.size	.L.str.231, 63

	.type	Smake_indirect_buffer,@object # @Smake_indirect_buffer
	.data
	.align	8
Smake_indirect_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fmake_indirect_buffer
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	0
	.size	Smake_indirect_buffer, 48

	.type	.L.str.232,@object      # @.str.232
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.232:
	.asciz	"generate-new-buffer-name"
	.size	.L.str.232, 25

	.type	Sgenerate_new_buffer_name,@object # @Sgenerate_new_buffer_name
	.data
	.align	8
Sgenerate_new_buffer_name:
	.quad	167772160               # 0xa000000
	.quad	Fgenerate_new_buffer_name
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.232
	.quad	0
	.quad	0
	.size	Sgenerate_new_buffer_name, 48

	.type	.L.str.233,@object      # @.str.233
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.233:
	.asciz	"buffer-name"
	.size	.L.str.233, 12

	.type	Sbuffer_name,@object    # @Sbuffer_name
	.data
	.align	8
Sbuffer_name:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_name
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.233
	.quad	0
	.quad	0
	.size	Sbuffer_name, 48

	.type	Sbuffer_file_name,@object # @Sbuffer_file_name
	.align	8
Sbuffer_file_name:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_file_name
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.133
	.quad	0
	.quad	0
	.size	Sbuffer_file_name, 48

	.type	.L.str.234,@object      # @.str.234
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.234:
	.asciz	"buffer-base-buffer"
	.size	.L.str.234, 19

	.type	Sbuffer_base_buffer,@object # @Sbuffer_base_buffer
	.data
	.align	8
Sbuffer_base_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_base_buffer
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.234
	.quad	0
	.quad	0
	.size	Sbuffer_base_buffer, 48

	.type	.L.str.235,@object      # @.str.235
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.235:
	.asciz	"buffer-local-value"
	.size	.L.str.235, 19

	.type	Sbuffer_local_value,@object # @Sbuffer_local_value
	.data
	.align	8
Sbuffer_local_value:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_local_value
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.235
	.quad	0
	.quad	0
	.size	Sbuffer_local_value, 48

	.type	.L.str.236,@object      # @.str.236
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.236:
	.asciz	"buffer-local-variables"
	.size	.L.str.236, 23

	.type	Sbuffer_local_variables,@object # @Sbuffer_local_variables
	.data
	.align	8
Sbuffer_local_variables:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_local_variables
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.236
	.quad	0
	.quad	0
	.size	Sbuffer_local_variables, 48

	.type	.L.str.237,@object      # @.str.237
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.237:
	.asciz	"buffer-modified-p"
	.size	.L.str.237, 18

	.type	Sbuffer_modified_p,@object # @Sbuffer_modified_p
	.data
	.align	8
Sbuffer_modified_p:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_modified_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.237
	.quad	0
	.quad	0
	.size	Sbuffer_modified_p, 48

	.type	.L.str.238,@object      # @.str.238
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.238:
	.asciz	"force-mode-line-update"
	.size	.L.str.238, 23

	.type	Sforce_mode_line_update,@object # @Sforce_mode_line_update
	.data
	.align	8
Sforce_mode_line_update:
	.quad	167772160               # 0xa000000
	.quad	Fforce_mode_line_update
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.238
	.quad	0
	.quad	0
	.size	Sforce_mode_line_update, 48

	.type	.L.str.239,@object      # @.str.239
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.239:
	.asciz	"set-buffer-modified-p"
	.size	.L.str.239, 22

	.type	Sset_buffer_modified_p,@object # @Sset_buffer_modified_p
	.data
	.align	8
Sset_buffer_modified_p:
	.quad	167772160               # 0xa000000
	.quad	Fset_buffer_modified_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.239
	.quad	0
	.quad	0
	.size	Sset_buffer_modified_p, 48

	.type	.L.str.240,@object      # @.str.240
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.240:
	.asciz	"buffer-modified-tick"
	.size	.L.str.240, 21

	.type	Sbuffer_modified_tick,@object # @Sbuffer_modified_tick
	.data
	.align	8
Sbuffer_modified_tick:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_modified_tick
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.240
	.quad	0
	.quad	0
	.size	Sbuffer_modified_tick, 48

	.type	.L.str.241,@object      # @.str.241
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.241:
	.asciz	"buffer-chars-modified-tick"
	.size	.L.str.241, 27

	.type	Sbuffer_chars_modified_tick,@object # @Sbuffer_chars_modified_tick
	.data
	.align	8
Sbuffer_chars_modified_tick:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_chars_modified_tick
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.241
	.quad	0
	.quad	0
	.size	Sbuffer_chars_modified_tick, 48

	.type	.L.str.242,@object      # @.str.242
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.242:
	.asciz	"rename-buffer"
	.size	.L.str.242, 14

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"(list (read-string \"Rename buffer (to new name): \" \t      nil 'buffer-name-history (buffer-name (current-buffer))) \t      current-prefix-arg)"
	.size	.L.str.243, 142

	.type	Srename_buffer,@object  # @Srename_buffer
	.data
	.align	8
Srename_buffer:
	.quad	167772160               # 0xa000000
	.quad	Frename_buffer
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.242
	.quad	.L.str.243
	.quad	0
	.size	Srename_buffer, 48

	.type	.L.str.244,@object      # @.str.244
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.244:
	.asciz	"other-buffer"
	.size	.L.str.244, 13

	.type	Sother_buffer,@object   # @Sother_buffer
	.data
	.align	8
Sother_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fother_buffer
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.244
	.quad	0
	.quad	0
	.size	Sother_buffer, 48

	.type	.L.str.245,@object      # @.str.245
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.245:
	.asciz	"buffer-enable-undo"
	.size	.L.str.245, 19

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.zero	1
	.size	.L.str.246, 1

	.type	Sbuffer_enable_undo,@object # @Sbuffer_enable_undo
	.data
	.align	8
Sbuffer_enable_undo:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_enable_undo
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	0
	.size	Sbuffer_enable_undo, 48

	.type	.L.str.247,@object      # @.str.247
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.247:
	.asciz	"bKill buffer: "
	.size	.L.str.247, 15

	.type	Skill_buffer,@object    # @Skill_buffer
	.data
	.align	8
Skill_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fkill_buffer
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.224
	.quad	.L.str.247
	.quad	0
	.size	Skill_buffer, 48

	.type	.L.str.248,@object      # @.str.248
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.248:
	.asciz	"bury-buffer-internal"
	.size	.L.str.248, 21

	.type	Sbury_buffer_internal,@object # @Sbury_buffer_internal
	.data
	.align	8
Sbury_buffer_internal:
	.quad	167772160               # 0xa000000
	.quad	Fbury_buffer_internal
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.248
	.quad	0
	.quad	0
	.size	Sbury_buffer_internal, 48

	.type	.L.str.249,@object      # @.str.249
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.249:
	.asciz	"set-buffer-major-mode"
	.size	.L.str.249, 22

	.type	Sset_buffer_major_mode,@object # @Sset_buffer_major_mode
	.data
	.align	8
Sset_buffer_major_mode:
	.quad	167772160               # 0xa000000
	.quad	Fset_buffer_major_mode
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.249
	.quad	0
	.quad	0
	.size	Sset_buffer_major_mode, 48

	.type	.L.str.250,@object      # @.str.250
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.250:
	.asciz	"current-buffer"
	.size	.L.str.250, 15

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"set-buffer"
	.size	.L.str.251, 11

	.type	Sset_buffer,@object     # @Sset_buffer
	.data
	.align	8
Sset_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fset_buffer
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.251
	.quad	0
	.quad	0
	.size	Sset_buffer, 48

	.type	.L.str.252,@object      # @.str.252
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.252:
	.asciz	"barf-if-buffer-read-only"
	.size	.L.str.252, 25

	.type	Sbarf_if_buffer_read_only,@object # @Sbarf_if_buffer_read_only
	.data
	.align	8
Sbarf_if_buffer_read_only:
	.quad	167772160               # 0xa000000
	.quad	Fbarf_if_buffer_read_only
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.252
	.quad	0
	.quad	0
	.size	Sbarf_if_buffer_read_only, 48

	.type	.L.str.253,@object      # @.str.253
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.253:
	.asciz	"*"
	.size	.L.str.253, 2

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"buffer-swap-text"
	.size	.L.str.254, 17

	.type	Sbuffer_swap_text,@object # @Sbuffer_swap_text
	.data
	.align	8
Sbuffer_swap_text:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_swap_text
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.254
	.quad	0
	.quad	0
	.size	Sbuffer_swap_text, 48

	.type	Sset_buffer_multibyte,@object # @Sset_buffer_multibyte
	.align	8
Sset_buffer_multibyte:
	.quad	167772160               # 0xa000000
	.quad	Fset_buffer_multibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.26
	.quad	0
	.quad	0
	.size	Sset_buffer_multibyte, 48

	.type	.L.str.255,@object      # @.str.255
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.255:
	.asciz	"kill-all-local-variables"
	.size	.L.str.255, 25

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"overlayp"
	.size	.L.str.256, 9

	.type	Soverlayp,@object       # @Soverlayp
	.data
	.align	8
Soverlayp:
	.quad	167772160               # 0xa000000
	.quad	Foverlayp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.256
	.quad	0
	.quad	0
	.size	Soverlayp, 48

	.type	.L.str.257,@object      # @.str.257
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.257:
	.asciz	"make-overlay"
	.size	.L.str.257, 13

	.type	Smake_overlay,@object   # @Smake_overlay
	.data
	.align	8
Smake_overlay:
	.quad	167772160               # 0xa000000
	.quad	Fmake_overlay
	.short	2                       # 0x2
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.257
	.quad	0
	.quad	0
	.size	Smake_overlay, 48

	.type	.L.str.258,@object      # @.str.258
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.258:
	.asciz	"delete-overlay"
	.size	.L.str.258, 15

	.type	Sdelete_overlay,@object # @Sdelete_overlay
	.data
	.align	8
Sdelete_overlay:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_overlay
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.258
	.quad	0
	.quad	0
	.size	Sdelete_overlay, 48

	.type	.L.str.259,@object      # @.str.259
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.259:
	.asciz	"delete-all-overlays"
	.size	.L.str.259, 20

	.type	Sdelete_all_overlays,@object # @Sdelete_all_overlays
	.data
	.align	8
Sdelete_all_overlays:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_all_overlays
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.259
	.quad	0
	.quad	0
	.size	Sdelete_all_overlays, 48

	.type	.L.str.260,@object      # @.str.260
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.260:
	.asciz	"move-overlay"
	.size	.L.str.260, 13

	.type	Smove_overlay,@object   # @Smove_overlay
	.data
	.align	8
Smove_overlay:
	.quad	167772160               # 0xa000000
	.quad	Fmove_overlay
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.260
	.quad	0
	.quad	0
	.size	Smove_overlay, 48

	.type	.L.str.261,@object      # @.str.261
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.261:
	.asciz	"overlay-start"
	.size	.L.str.261, 14

	.type	Soverlay_start,@object  # @Soverlay_start
	.data
	.align	8
Soverlay_start:
	.quad	167772160               # 0xa000000
	.quad	Foverlay_start
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.261
	.quad	0
	.quad	0
	.size	Soverlay_start, 48

	.type	.L.str.262,@object      # @.str.262
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.262:
	.asciz	"overlay-end"
	.size	.L.str.262, 12

	.type	Soverlay_end,@object    # @Soverlay_end
	.data
	.align	8
Soverlay_end:
	.quad	167772160               # 0xa000000
	.quad	Foverlay_end
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.262
	.quad	0
	.quad	0
	.size	Soverlay_end, 48

	.type	.L.str.263,@object      # @.str.263
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.263:
	.asciz	"overlay-buffer"
	.size	.L.str.263, 15

	.type	Soverlay_buffer,@object # @Soverlay_buffer
	.data
	.align	8
Soverlay_buffer:
	.quad	167772160               # 0xa000000
	.quad	Foverlay_buffer
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.263
	.quad	0
	.quad	0
	.size	Soverlay_buffer, 48

	.type	.L.str.264,@object      # @.str.264
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.264:
	.asciz	"overlay-properties"
	.size	.L.str.264, 19

	.type	Soverlay_properties,@object # @Soverlay_properties
	.data
	.align	8
Soverlay_properties:
	.quad	167772160               # 0xa000000
	.quad	Foverlay_properties
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.264
	.quad	0
	.quad	0
	.size	Soverlay_properties, 48

	.type	.L.str.265,@object      # @.str.265
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.265:
	.asciz	"overlays-at"
	.size	.L.str.265, 12

	.type	Soverlays_at,@object    # @Soverlays_at
	.data
	.align	8
Soverlays_at:
	.quad	167772160               # 0xa000000
	.quad	Foverlays_at
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.265
	.quad	0
	.quad	0
	.size	Soverlays_at, 48

	.type	.L.str.266,@object      # @.str.266
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.266:
	.asciz	"overlays-in"
	.size	.L.str.266, 12

	.type	Soverlays_in,@object    # @Soverlays_in
	.data
	.align	8
Soverlays_in:
	.quad	167772160               # 0xa000000
	.quad	Foverlays_in
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.266
	.quad	0
	.quad	0
	.size	Soverlays_in, 48

	.type	.L.str.267,@object      # @.str.267
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.267:
	.asciz	"next-overlay-change"
	.size	.L.str.267, 20

	.type	Snext_overlay_change,@object # @Snext_overlay_change
	.data
	.align	8
Snext_overlay_change:
	.quad	167772160               # 0xa000000
	.quad	Fnext_overlay_change
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.267
	.quad	0
	.quad	0
	.size	Snext_overlay_change, 48

	.type	.L.str.268,@object      # @.str.268
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.268:
	.asciz	"previous-overlay-change"
	.size	.L.str.268, 24

	.type	Sprevious_overlay_change,@object # @Sprevious_overlay_change
	.data
	.align	8
Sprevious_overlay_change:
	.quad	167772160               # 0xa000000
	.quad	Fprevious_overlay_change
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.268
	.quad	0
	.quad	0
	.size	Sprevious_overlay_change, 48

	.type	.L.str.269,@object      # @.str.269
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.269:
	.asciz	"overlay-recenter"
	.size	.L.str.269, 17

	.type	Soverlay_recenter,@object # @Soverlay_recenter
	.data
	.align	8
Soverlay_recenter:
	.quad	167772160               # 0xa000000
	.quad	Foverlay_recenter
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.269
	.quad	0
	.quad	0
	.size	Soverlay_recenter, 48

	.type	.L.str.270,@object      # @.str.270
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.270:
	.asciz	"overlay-lists"
	.size	.L.str.270, 14

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"overlay-get"
	.size	.L.str.271, 12

	.type	Soverlay_get,@object    # @Soverlay_get
	.data
	.align	8
Soverlay_get:
	.quad	167772160               # 0xa000000
	.quad	Foverlay_get
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.271
	.quad	0
	.quad	0
	.size	Soverlay_get, 48

	.type	.L.str.272,@object      # @.str.272
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.272:
	.asciz	"overlay-put"
	.size	.L.str.272, 12

	.type	Soverlay_put,@object    # @Soverlay_put
	.data
	.align	8
Soverlay_put:
	.quad	167772160               # 0xa000000
	.quad	Foverlay_put
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.272
	.quad	0
	.quad	0
	.size	Soverlay_put, 48

	.type	.L.str.273,@object      # @.str.273
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.273:
	.asciz	"restore-buffer-modified-p"
	.size	.L.str.273, 26

	.type	Srestore_buffer_modified_p,@object # @Srestore_buffer_modified_p
	.data
	.align	8
Srestore_buffer_modified_p:
	.quad	167772160               # 0xa000000
	.quad	Frestore_buffer_modified_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.273
	.quad	0
	.quad	0
	.size	Srestore_buffer_modified_p, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
