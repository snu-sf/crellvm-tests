	.text
	.file	"gimpconfigwriter.bc"
	.globl	gimp_config_writer_new_file
	.align	16, 0x90
	.type	gimp_config_writer_new_file,@function
gimp_config_writer_new_file:            # @gimp_config_writer_new_file
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_new_file(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -40(%rbp)
	je	.LBB0_8
# BB#7:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_9
.LBB0_8:                                # %if.then.4
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_new_file(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_10:                               # %if.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.end.7
	cmpl	$0, -20(%rbp)
	je	.LBB0_15
# BB#12:                                # %if.then.8
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_mkstemp@PLT
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.11
	movq	-40(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	dgettext@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_14:                               # %if.end.17
	jmp	.LBB0_18
.LBB0_15:                               # %if.else.18
	movl	$420, %esi              # imm = 0x1A4
	movq	-16(%rbp), %rdi
	callq	creat@PLT
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	jne	.LBB0_17
# BB#16:                                # %if.then.21
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_17:                               # %if.end.27
	jmp	.LBB0_18
.LBB0_18:                               # %if.end.28
	movl	$56, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -48(%rbp)
	movl	-60(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	callq	g_string_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 32(%rdx)
	cmpq	$0, -32(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.36
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_config_writer_comment@PLT
	movq	-48(%rbp), %rdi
	callq	gimp_config_writer_linefeed@PLT
.LBB0_20:                               # %if.end.37
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_writer_new_file, .Lfunc_end0-gimp_config_writer_new_file
	.cfi_endproc

	.globl	gimp_config_writer_comment
	.align	16, 0x90
	.type	gimp_config_writer_comment,@function
gimp_config_writer_comment:             # @gimp_config_writer_comment
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_comment(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_35
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	jmp	.LBB1_35
.LBB1_7:                                # %if.end.2
	jmp	.LBB1_8
.LBB1_8:                                # %do.body.3
	movq	-8(%rbp), %rax
	cmpl	$0, 44(%rax)
	jne	.LBB1_10
# BB#9:                                 # %if.then.5
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.6
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_comment(%rip), %rsi
	leaq	.L.str.26(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_35
.LBB1_11:                               # %if.end.7
	jmp	.LBB1_12
.LBB1_12:                               # %do.end.8
	cmpq	$0, -16(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.10
	jmp	.LBB1_35
.LBB1_14:                               # %if.end.11
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_comment_mode@PLT
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB1_15:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
	cmpl	$0, -36(%rbp)
	jle	.LBB1_33
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -40(%rbp)
.LBB1_17:                               # %for.cond
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$10, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB1_21
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_17 Depth=2
	cmpl	$75, -32(%rbp)
	jle	.LBB1_20
# BB#19:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_17 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -40(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB1_21
.LBB1_20:                               # %land.rhs
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	setl	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB1_21:                               # %land.end
                                        #   in Loop: Header=BB1_17 Depth=2
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_22
	jmp	.LBB1_26
.LBB1_22:                               # %for.body
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	g_ascii_table@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	(%rax), %rax
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB1_24
# BB#23:                                # %if.then.27
                                        #   in Loop: Header=BB1_17 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB1_24:                               # %if.end.28
                                        #   in Loop: Header=BB1_17 Depth=2
	jmp	.LBB1_25
.LBB1_25:                               # %for.inc
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB1_17
.LBB1_26:                               # %for.end
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$75, -32(%rbp)
	jle	.LBB1_30
# BB#27:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB1_30
# BB#28:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB1_30
# BB#29:                                # %if.then.37
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB1_30:                               # %if.end.38
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	movslq	-32(%rbp), %rdx
	callq	g_string_append_len@PLT
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -36(%rbp)
	cmpl	$0, -36(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jle	.LBB1_32
# BB#31:                                # %if.then.44
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_newline
.LBB1_32:                               # %if.end.45
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_15
.LBB1_33:                               # %while.end
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_config_writer_comment_mode@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_newline
	movq	-8(%rbp), %rdi
	cmpl	$0, 44(%rdi)
	jne	.LBB1_35
# BB#34:                                # %if.then.49
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_flush
.LBB1_35:                               # %if.end.50
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_config_writer_comment, .Lfunc_end1-gimp_config_writer_comment
	.cfi_endproc

	.globl	gimp_config_writer_linefeed
	.align	16, 0x90
	.type	gimp_config_writer_linefeed,@function
gimp_config_writer_linefeed:            # @gimp_config_writer_linefeed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_linefeed(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_13
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_7
# BB#6:                                 # %if.then.1
	jmp	.LBB2_13
.LBB2_7:                                # %if.end.2
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_12
# BB#8:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB2_12
# BB#9:                                 # %if.then.5
	leaq	.L.str.25(%rip), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	write@PLT
	cmpq	$0, %rax
	jge	.LBB2_11
# BB#10:                                # %if.then.7
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	-20(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal@PLT
.LBB2_11:                               # %if.end.12
	jmp	.LBB2_13
.LBB2_12:                               # %if.else.13
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_newline
.LBB2_13:                               # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_config_writer_linefeed, .Lfunc_end2-gimp_config_writer_linefeed
	.cfi_endproc

	.globl	gimp_config_writer_new_fd
	.align	16, 0x90
	.type	gimp_config_writer_new_fd,@function
gimp_config_writer_new_fd:              # @gimp_config_writer_new_fd
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
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jle	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_new_fd(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	$56, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	callq	g_string_new@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_config_writer_new_fd, .Lfunc_end3-gimp_config_writer_new_fd
	.cfi_endproc

	.globl	gimp_config_writer_new_string
	.align	16, 0x90
	.type	gimp_config_writer_new_string,@function
gimp_config_writer_new_string:          # @gimp_config_writer_new_string
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
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_new_string(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movl	$56, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_config_writer_new_string, .Lfunc_end4-gimp_config_writer_new_string
	.cfi_endproc

	.globl	gimp_config_writer_comment_mode
	.align	16, 0x90
	.type	gimp_config_writer_comment_mode,@function
gimp_config_writer_comment_mode:        # @gimp_config_writer_comment_mode
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_comment_mode(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_14
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_7
# BB#6:                                 # %if.then.1
	jmp	.LBB5_14
.LBB5_7:                                # %if.end.2
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	40(%rdx), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB5_9
# BB#8:                                 # %if.then.5
	jmp	.LBB5_14
.LBB5_9:                                # %if.end.6
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 40(%rcx)
	cmpl	$0, -12(%rbp)
	je	.LBB5_14
# BB#10:                                # %if.then.9
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB5_12
# BB#11:                                # %if.then.11
	leaq	.L.str.10(%rip), %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	g_string_append_len@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.13
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_newline
.LBB5_13:                               # %if.end.14
	jmp	.LBB5_14
.LBB5_14:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_config_writer_comment_mode, .Lfunc_end5-gimp_config_writer_comment_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_writer_newline,@function
gimp_config_writer_newline:             # @gimp_config_writer_newline
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
	movl	$10, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	g_string_append_c_inline
	movq	-8(%rbp), %rdi
	cmpl	$0, 40(%rdi)
	movq	%rax, -24(%rbp)         # 8-byte Spill
	je	.LBB6_2
# BB#1:                                 # %if.then
	leaq	.L.str.10(%rip), %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	g_string_append_len@PLT
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB6_2:                                # %if.end
	movl	$0, -12(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB6_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	leaq	.L.str.27(%rip), %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	g_string_append_len@PLT
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_config_writer_newline, .Lfunc_end6-gimp_config_writer_newline
	.cfi_endproc

	.globl	gimp_config_writer_open
	.align	16, 0x90
	.type	gimp_config_writer_open,@function
gimp_config_writer_open:                # @gimp_config_writer_open
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_open(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_15
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.3
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_open(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_15
.LBB7_9:                                # %if.end.5
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_12
# BB#11:                                # %if.then.7
	jmp	.LBB7_15
.LBB7_12:                               # %if.end.8
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 44(%rax)
	jle	.LBB7_14
# BB#13:                                # %if.then.11
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_newline
.LBB7_14:                               # %if.end.12
	leaq	.L.str.12(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 44(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf@PLT
.LBB7_15:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_config_writer_open, .Lfunc_end7-gimp_config_writer_open
	.cfi_endproc

	.globl	gimp_config_writer_print
	.align	16, 0x90
	.type	gimp_config_writer_print,@function
gimp_config_writer_print:               # @gimp_config_writer_print
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
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_print(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_17
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.1
	cmpl	$0, -20(%rbp)
	je	.LBB8_8
# BB#7:                                 # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	je	.LBB8_9
.LBB8_8:                                # %if.then.4
	jmp	.LBB8_10
.LBB8_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_print(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_17
.LBB8_10:                               # %if.end.6
	jmp	.LBB8_11
.LBB8_11:                               # %do.end.7
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB8_13
# BB#12:                                # %if.then.8
	jmp	.LBB8_17
.LBB8_13:                               # %if.end.9
	cmpl	$0, -20(%rbp)
	jge	.LBB8_15
# BB#14:                                # %if.then.11
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB8_15:                               # %if.end.12
	cmpl	$0, -20(%rbp)
	je	.LBB8_17
# BB#16:                                # %if.then.14
	movl	$32, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_string_append_c_inline
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_string_append_len@PLT
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB8_17:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_config_writer_print, .Lfunc_end8-gimp_config_writer_print
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB9_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_string_append_c_inline, .Lfunc_end9-g_string_append_c_inline
	.cfi_endproc

	.globl	gimp_config_writer_printf
	.align	16, 0x90
	.type	gimp_config_writer_printf,@function
gimp_config_writer_printf:              # @gimp_config_writer_printf
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
	subq	$432, %rsp              # imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB10_15
# BB#14:                                # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB10_15:                              # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_printf(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_13
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then.3
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_printf(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_13
.LBB10_9:                               # %if.end.5
	jmp	.LBB10_10
.LBB10_10:                              # %do.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB10_12
# BB#11:                                # %if.then.7
	jmp	.LBB10_13
.LBB10_12:                              # %if.end.8
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	leaq	-224(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_strdup_vprintf@PLT
	movl	$32, %esi
	leaq	-48(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	g_string_append_c_inline
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	g_string_append@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_free@PLT
.LBB10_13:                              # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_config_writer_printf, .Lfunc_end10-gimp_config_writer_printf
	.cfi_endproc

	.globl	gimp_config_writer_string
	.align	16, 0x90
	.type	gimp_config_writer_string,@function
gimp_config_writer_string:              # @gimp_config_writer_string
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_string(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_8
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB11_7
# BB#6:                                 # %if.then.1
	jmp	.LBB11_8
.LBB11_7:                               # %if.end.2
	movl	$32, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_string_append_c_inline
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_config_string_append_escaped@PLT
.LBB11_8:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_config_writer_string, .Lfunc_end11-gimp_config_writer_string
	.cfi_endproc

	.globl	gimp_config_writer_identifier
	.align	16, 0x90
	.type	gimp_config_writer_identifier,@function
gimp_config_writer_identifier:          # @gimp_config_writer_identifier
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_identifier(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_13
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	jmp	.LBB12_6
.LBB12_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB12_8
# BB#7:                                 # %if.then.3
	jmp	.LBB12_9
.LBB12_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_identifier(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_13
.LBB12_9:                               # %if.end.5
	jmp	.LBB12_10
.LBB12_10:                              # %do.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB12_12
# BB#11:                                # %if.then.7
	jmp	.LBB12_13
.LBB12_12:                              # %if.end.8
	leaq	.L.str.16(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf@PLT
.LBB12_13:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_config_writer_identifier, .Lfunc_end12-gimp_config_writer_identifier
	.cfi_endproc

	.globl	gimp_config_writer_data
	.align	16, 0x90
	.type	gimp_config_writer_data,@function
gimp_config_writer_data:                # @gimp_config_writer_data
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_data(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_25
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	jmp	.LBB13_6
.LBB13_6:                               # %do.body.1
	cmpl	$0, -12(%rbp)
	jle	.LBB13_8
# BB#7:                                 # %if.then.3
	jmp	.LBB13_9
.LBB13_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_data(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_25
.LBB13_9:                               # %if.end.5
	jmp	.LBB13_10
.LBB13_10:                              # %do.end.6
	jmp	.LBB13_11
.LBB13_11:                              # %do.body.7
	cmpq	$0, -24(%rbp)
	je	.LBB13_13
# BB#12:                                # %if.then.9
	jmp	.LBB13_14
.LBB13_13:                              # %if.else.10
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_data(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_25
.LBB13_14:                              # %if.end.11
	jmp	.LBB13_15
.LBB13_15:                              # %do.end.12
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB13_17
# BB#16:                                # %if.then.13
	jmp	.LBB13_25
.LBB13_17:                              # %if.end.14
	leaq	.L.str.19(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_string_append@PLT
	movl	$0, -28(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB13_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB13_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	g_ascii_table@GOTPCREL(%rip), %rax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movq	(%rax), %rax
	movzwl	(%rax,%rcx,2), %esi
	andl	$2, %esi
	cmpl	$0, %esi
	je	.LBB13_21
# BB#20:                                # %if.then.20
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	callq	g_string_append_c_inline
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB13_22
.LBB13_21:                              # %if.else.25
                                        #   in Loop: Header=BB13_18 Depth=1
	leaq	.L.str.20(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf@PLT
.LBB13_22:                              # %if.end.30
                                        #   in Loop: Header=BB13_18 Depth=1
	jmp	.LBB13_23
.LBB13_23:                              # %for.inc
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_18
.LBB13_24:                              # %for.end
	leaq	.L.str.21(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_string_append@PLT
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB13_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_config_writer_data, .Lfunc_end13-gimp_config_writer_data
	.cfi_endproc

	.globl	gimp_config_writer_revert
	.align	16, 0x90
	.type	gimp_config_writer_revert,@function
gimp_config_writer_revert:              # @gimp_config_writer_revert
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_revert(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_18
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB14_7
# BB#6:                                 # %if.then.1
	jmp	.LBB14_18
.LBB14_7:                               # %if.end.2
	jmp	.LBB14_8
.LBB14_8:                               # %do.body.3
	movq	-8(%rbp), %rax
	cmpl	$0, 44(%rax)
	jle	.LBB14_10
# BB#9:                                 # %if.then.5
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.6
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_revert(%rip), %rsi
	leaq	.L.str.22(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_18
.LBB14_11:                              # %if.end.7
	jmp	.LBB14_12
.LBB14_12:                              # %do.end.8
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.9
	movq	-8(%rbp), %rax
	cmpl	$-1, 48(%rax)
	je	.LBB14_15
# BB#14:                                # %if.then.11
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.12
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_revert(%rip), %rsi
	leaq	.L.str.23(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_18
.LBB14_16:                              # %if.end.13
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.14
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	48(%rax), %rsi
	callq	g_string_truncate@PLT
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %ecx
	addl	$-1, %ecx
	movl	%ecx, 44(%rsi)
	movq	-8(%rbp), %rsi
	movl	$-1, 48(%rsi)
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB14_18:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_config_writer_revert, .Lfunc_end14-gimp_config_writer_revert
	.cfi_endproc

	.globl	gimp_config_writer_close
	.align	16, 0x90
	.type	gimp_config_writer_close,@function
gimp_config_writer_close:               # @gimp_config_writer_close
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_close(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_16
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB15_7
# BB#6:                                 # %if.then.1
	jmp	.LBB15_16
.LBB15_7:                               # %if.end.2
	jmp	.LBB15_8
.LBB15_8:                               # %do.body.3
	movq	-8(%rbp), %rax
	cmpl	$0, 44(%rax)
	jle	.LBB15_10
# BB#9:                                 # %if.then.5
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.6
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_close(%rip), %rsi
	leaq	.L.str.22(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_16
.LBB15_11:                              # %if.end.7
	jmp	.LBB15_12
.LBB15_12:                              # %do.end.8
	movl	$41, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_string_append_c_inline
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %esi
	addl	$-1, %esi
	movl	%esi, 44(%rdi)
	cmpl	$0, %esi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jne	.LBB15_16
# BB#13:                                # %if.then.11
	movl	$10, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_string_append_c_inline
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	movq	%rax, -24(%rbp)         # 8-byte Spill
	je	.LBB15_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_flush
.LBB15_15:                              # %if.end.16
	jmp	.LBB15_16
.LBB15_16:                              # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_config_writer_close, .Lfunc_end15-gimp_config_writer_close
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_writer_flush,@function
gimp_config_writer_flush:               # @gimp_config_writer_flush
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdx
	callq	write@PLT
	cmpq	$0, %rax
	jge	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.28(%rip), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	dgettext@PLT
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	-20(%rbp), %esi         # 4-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
.LBB16_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	g_string_truncate@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_config_writer_flush, .Lfunc_end16-gimp_config_writer_flush
	.cfi_endproc

	.globl	gimp_config_writer_finish
	.align	16, 0x90
	.type	gimp_config_writer_finish,@function
gimp_config_writer_finish:              # @gimp_config_writer_finish
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$1, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_finish(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_27
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	jmp	.LBB17_6
.LBB17_6:                               # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB17_8
# BB#7:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB17_9
.LBB17_8:                               # %if.then.4
	jmp	.LBB17_10
.LBB17_9:                               # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_finish(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_27
.LBB17_10:                              # %if.end.6
	jmp	.LBB17_11
.LBB17_11:                              # %do.end.7
	movq	-16(%rbp), %rax
	cmpl	$0, 44(%rax)
	jge	.LBB17_13
# BB#12:                                # %if.then.9
	leaq	.L.str.24(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB17_17
.LBB17_13:                              # %if.else.10
	jmp	.LBB17_14
.LBB17_14:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB17_16
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close@PLT
	jmp	.LBB17_14
.LBB17_16:                              # %while.end
	jmp	.LBB17_17
.LBB17_17:                              # %if.end.12
	cmpq	$0, -24(%rbp)
	je	.LBB17_19
# BB#18:                                # %if.then.14
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_linefeed@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_config_writer_comment@PLT
.LBB17_19:                              # %if.end.15
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB17_21
# BB#20:                                # %if.then.17
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_config_writer_close_file
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	callq	g_free@PLT
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	g_string_free@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB17_22
.LBB17_21:                              # %if.else.19
	movl	$1, -36(%rbp)
.LBB17_22:                              # %if.end.20
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB17_24
# BB#23:                                # %if.then.23
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_propagate_error@PLT
	movl	$0, -36(%rbp)
.LBB17_24:                              # %if.end.25
	jmp	.LBB17_25
.LBB17_25:                              # %do.body.26
	movl	$56, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#26:                                # %do.end.27
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_config_writer_finish, .Lfunc_end17-gimp_config_writer_finish
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB18_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB18_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_writer_close_file,@function
gimp_config_writer_close_file:          # @gimp_config_writer_close_file
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_writer_close_file(%rip), %rsi
	leaq	.L.str.29(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB19_29
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB19_7
# BB#6:                                 # %if.then.1
	movl	$1, -4(%rbp)
	jmp	.LBB19_29
.LBB19_7:                               # %if.end.2
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB19_11
# BB#8:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	close@PLT
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_unlink@PLT
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB19_10:                              # %if.end.11
	movl	$0, -4(%rbp)
	jmp	.LBB19_29
.LBB19_11:                              # %if.end.12
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB19_16
# BB#12:                                # %land.lhs.true
	movl	$16, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB19_16
# BB#13:                                # %if.then.18
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	fsync@PLT
	cmpl	$0, %eax
	je	.LBB19_15
# BB#14:                                # %if.then.22
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.30(%rip), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	close@PLT
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_unlink@PLT
	movl	$0, -4(%rbp)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB19_29
.LBB19_15:                              # %if.end.33
	jmp	.LBB19_16
.LBB19_16:                              # %if.end.34
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	close@PLT
	cmpl	$0, %eax
	je	.LBB19_24
# BB#17:                                # %if.then.38
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB19_22
# BB#18:                                # %if.then.41
	movl	$16, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB19_20
# BB#19:                                # %if.then.45
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.30(%rip), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
	jmp	.LBB19_21
.LBB19_20:                              # %if.else.52
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
.LBB19_21:                              # %if.end.59
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_unlink@PLT
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB19_23
.LBB19_22:                              # %if.else.62
	movq	-24(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.28(%rip), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
.LBB19_23:                              # %if.end.69
	movl	$0, -4(%rbp)
	jmp	.LBB19_29
.LBB19_24:                              # %if.end.70
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB19_28
# BB#25:                                # %if.then.73
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	rename@PLT
	cmpl	$-1, %eax
	jne	.LBB19_27
# BB#26:                                # %if.then.78
	movq	-24(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.32(%rip), %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movl	$2, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	callq	g_unlink@PLT
	movl	$0, -4(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB19_29
.LBB19_27:                              # %if.end.87
	jmp	.LBB19_28
.LBB19_28:                              # %if.end.88
	movl	$1, -4(%rbp)
.LBB19_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_config_writer_close_file, .Lfunc_end19-gimp_config_writer_close_file
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpConfig"
	.size	.L.str, 14

	.type	.L__func__.gimp_config_writer_new_file,@object # @__func__.gimp_config_writer_new_file
.L__func__.gimp_config_writer_new_file:
	.asciz	"gimp_config_writer_new_file"
	.size	.L__func__.gimp_config_writer_new_file, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filename != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"XXXXXX"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp20-libgimp"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Could not create temporary file for '%s': %s"
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.6, 36

	.type	.L__func__.gimp_config_writer_new_fd,@object # @__func__.gimp_config_writer_new_fd
.L__func__.gimp_config_writer_new_fd:
	.asciz	"gimp_config_writer_new_fd"
	.size	.L__func__.gimp_config_writer_new_fd, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fd > 0"
	.size	.L.str.7, 7

	.type	.L__func__.gimp_config_writer_new_string,@object # @__func__.gimp_config_writer_new_string
.L__func__.gimp_config_writer_new_string:
	.asciz	"gimp_config_writer_new_string"
	.size	.L__func__.gimp_config_writer_new_string, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"string != NULL"
	.size	.L.str.8, 15

	.type	.L__func__.gimp_config_writer_comment_mode,@object # @__func__.gimp_config_writer_comment_mode
.L__func__.gimp_config_writer_comment_mode:
	.asciz	"gimp_config_writer_comment_mode"
	.size	.L__func__.gimp_config_writer_comment_mode, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"writer != NULL"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"# "
	.size	.L.str.10, 3

	.type	.L__func__.gimp_config_writer_open,@object # @__func__.gimp_config_writer_open
.L__func__.gimp_config_writer_open:
	.asciz	"gimp_config_writer_open"
	.size	.L__func__.gimp_config_writer_open, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"name != NULL"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"(%s"
	.size	.L.str.12, 4

	.type	.L__func__.gimp_config_writer_print,@object # @__func__.gimp_config_writer_print
.L__func__.gimp_config_writer_print:
	.asciz	"gimp_config_writer_print"
	.size	.L__func__.gimp_config_writer_print, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"len == 0 || string != NULL"
	.size	.L.str.13, 27

	.type	.L__func__.gimp_config_writer_printf,@object # @__func__.gimp_config_writer_printf
.L__func__.gimp_config_writer_printf:
	.asciz	"gimp_config_writer_printf"
	.size	.L__func__.gimp_config_writer_printf, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"format != NULL"
	.size	.L.str.14, 15

	.type	.L__func__.gimp_config_writer_string,@object # @__func__.gimp_config_writer_string
.L__func__.gimp_config_writer_string:
	.asciz	"gimp_config_writer_string"
	.size	.L__func__.gimp_config_writer_string, 26

	.type	.L__func__.gimp_config_writer_identifier,@object # @__func__.gimp_config_writer_identifier
.L__func__.gimp_config_writer_identifier:
	.asciz	"gimp_config_writer_identifier"
	.size	.L__func__.gimp_config_writer_identifier, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"identifier != NULL"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	" %s"
	.size	.L.str.16, 4

	.type	.L__func__.gimp_config_writer_data,@object # @__func__.gimp_config_writer_data
.L__func__.gimp_config_writer_data:
	.asciz	"gimp_config_writer_data"
	.size	.L__func__.gimp_config_writer_data, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"length > 0"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"data != NULL"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" \""
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\\%o"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\""
	.size	.L.str.21, 2

	.type	.L__func__.gimp_config_writer_revert,@object # @__func__.gimp_config_writer_revert
.L__func__.gimp_config_writer_revert:
	.asciz	"gimp_config_writer_revert"
	.size	.L__func__.gimp_config_writer_revert, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"writer->depth > 0"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"writer->marker != -1"
	.size	.L.str.23, 21

	.type	.L__func__.gimp_config_writer_close,@object # @__func__.gimp_config_writer_close
.L__func__.gimp_config_writer_close:
	.asciz	"gimp_config_writer_close"
	.size	.L__func__.gimp_config_writer_close, 25

	.type	.L__func__.gimp_config_writer_finish,@object # @__func__.gimp_config_writer_finish
.L__func__.gimp_config_writer_finish:
	.asciz	"gimp_config_writer_finish"
	.size	.L__func__.gimp_config_writer_finish, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp_config_writer_finish: depth < 0 !!"
	.size	.L.str.24, 40

	.type	.L__func__.gimp_config_writer_linefeed,@object # @__func__.gimp_config_writer_linefeed
.L__func__.gimp_config_writer_linefeed:
	.asciz	"gimp_config_writer_linefeed"
	.size	.L__func__.gimp_config_writer_linefeed, 28

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\n"
	.size	.L.str.25, 2

	.type	.L__func__.gimp_config_writer_comment,@object # @__func__.gimp_config_writer_comment
.L__func__.gimp_config_writer_comment:
	.asciz	"gimp_config_writer_comment"
	.size	.L__func__.gimp_config_writer_comment, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"writer->depth == 0"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"    "
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Error writing to '%s': %s"
	.size	.L.str.28, 26

	.type	.L__func__.gimp_config_writer_close_file,@object # @__func__.gimp_config_writer_close_file
.L__func__.gimp_config_writer_close_file:
	.asciz	"gimp_config_writer_close_file"
	.size	.L__func__.gimp_config_writer_close_file, 30

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"writer->fd != 0"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Error writing to temporary file for '%s': %s\nThe original file has not been touched."
	.size	.L.str.30, 85

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Error writing to temporary file for '%s': %s\nNo file has been created."
	.size	.L.str.31, 71

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Could not create '%s': %s"
	.size	.L.str.32, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
