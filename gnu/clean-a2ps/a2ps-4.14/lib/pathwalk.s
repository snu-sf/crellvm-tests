	.text
	.file	"pathwalk.bc"
	.globl	pw_string_to_path
	.align	16, 0x90
	.type	pw_string_to_path,@function
pw_string_to_path:                      # @pw_string_to_path
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
	movl	$58, %esi
	leaq	-12(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	pw_internal_string_to_path
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pw_string_to_path, .Lfunc_end0-pw_string_to_path
	.cfi_endproc

	.align	16, 0x90
	.type	pw_internal_string_to_path,@function
pw_internal_string_to_path:             # @pw_internal_string_to_path
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
	subq	$80, %rsp
	movb	%sil, %al
	movl	$8, %esi
	movl	%esi, %ecx
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$5, -36(%rbp)
	movl	$0, -40(%rbp)
	movslq	-36(%rbp), %rsi
	movq	%rcx, %rdi
	callq	xcalloc
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rdi
	movsbl	-9(%rbp), %esi
	callq	strchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
.LBB1_7:                                # %if.end.9
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -60(%rbp)
	jne	.LBB1_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_15
.LBB1_9:                                # %if.else.14
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$47, %edx
	jne	.LBB1_11
# BB#10:                                # %if.then.18
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
.LBB1_11:                               # %if.end.19
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.20
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	xmalloc
	movslq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-48(%rbp), %rsi
	movslq	-60(%rbp), %rdx
	callq	strncpy
	movslq	-60(%rbp), %rcx
	movslq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-40(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -40(%rbp)
	movl	-40(%rbp), %r8d
	cmpl	-36(%rbp), %r8d
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jl	.LBB1_14
# BB#13:                                # %if.then.35
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	%rax, -32(%rbp)
.LBB1_14:                               # %if.end.40
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_15
.LBB1_15:                               # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rdi
	movsbl	-9(%rbp), %esi
	callq	strchr
	movq	%rax, -48(%rbp)
	jmp	.LBB1_1
.LBB1_16:                               # %for.end
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	$0, (%rdx,%rcx,8)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pw_internal_string_to_path, .Lfunc_end1-pw_internal_string_to_path
	.cfi_endproc

	.globl	pw_append_string_to_path
	.align	16, 0x90
	.type	pw_append_string_to_path,@function
pw_append_string_to_path:               # @pw_append_string_to_path
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	pw_path_length
	movl	$58, %esi
	leaq	-24(%rbp), %rdx
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	pw_internal_string_to_path
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %ecx
	callq	pw_path_concat
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pw_append_string_to_path, .Lfunc_end2-pw_append_string_to_path
	.cfi_endproc

	.align	16, 0x90
	.type	pw_path_length,@function
pw_path_length:                         # @pw_path_length
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.end
	movl	$0, -20(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB3_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_7:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pw_path_length, .Lfunc_end3-pw_path_length
	.cfi_endproc

	.align	16, 0x90
	.type	pw_path_concat,@function
pw_path_concat:                         # @pw_path_concat
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	addl	-28(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	%rax, -8(%rbp)
	movl	$0, -32(%rbp)
.LBB4_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB4_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB4_2 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-12(%rbp), %edx
	addl	-32(%rbp), %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_2
.LBB4_5:                                # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB4_6:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pw_path_concat, .Lfunc_end4-pw_path_concat
	.cfi_endproc

	.globl	pw_prepend_string_to_path
	.align	16, 0x90
	.type	pw_prepend_string_to_path,@function
pw_prepend_string_to_path:              # @pw_prepend_string_to_path
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	pw_path_length
	movl	$58, %esi
	leaq	-24(%rbp), %rdx
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	pw_internal_string_to_path
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-24(%rbp), %esi
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	pw_path_concat
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pw_prepend_string_to_path, .Lfunc_end5-pw_prepend_string_to_path
	.cfi_endproc

	.globl	pw_free_path
	.align	16, 0x90
	.type	pw_free_path,@function
pw_free_path:                           # @pw_free_path
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB6_6
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB6_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	free
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_2
.LBB6_5:                                # %for.end
	jmp	.LBB6_6
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB6_9:                                # %if.end.6
	jmp	.LBB6_10
.LBB6_10:                               # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pw_free_path, .Lfunc_end6-pw_free_path
	.cfi_endproc

	.globl	pw_fprintf_path
	.align	16, 0x90
	.type	pw_fprintf_path,@function
pw_fprintf_path:                        # @pw_fprintf_path
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_5
# BB#1:                                 # %if.then
	jmp	.LBB7_2
.LBB7_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, -24(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB7_2
.LBB7_4:                                # %while.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pw_fprintf_path, .Lfunc_end7-pw_fprintf_path
	.cfi_endproc

	.globl	pw_file_exists_p
	.align	16, 0x90
	.type	pw_file_exists_p,@function
pw_file_exists_p:                       # @pw_file_exists_p
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	pw_find_file_index
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pw_file_exists_p, .Lfunc_end8-pw_file_exists_p
	.cfi_endproc

	.align	16, 0x90
	.type	pw_find_file_index,@function
pw_find_file_index:                     # @pw_find_file_index
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_6
# BB#1:                                 # %if.then
	jmp	.LBB9_2
.LBB9_2:                                # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rdi
	callq	strlen
	movq	-216(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-240(%rbp), %rdi        # 8-byte Reload
	leaq	16(%rdi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -192(%rbp)
# BB#3:                                 # %do.body.3
	movq	-192(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	stpcpy
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	stpcpy
	movq	%rax, -248(%rbp)        # 8-byte Spill
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end.6
	jmp	.LBB9_7
.LBB9_6:                                # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %do.body.7
	movl	msg_verbosity, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB9_10
# BB#9:                                 # %if.then.9
	movabsq	$.L.str.14, %rsi
	movq	stderr, %rdi
	movq	-192(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB9_10:                               # %if.end.11
	jmp	.LBB9_11
.LBB9_11:                               # %do.end.12
	cmpq	$0, -16(%rbp)
	je	.LBB9_25
# BB#12:                                # %if.then.14
	movl	$0, -36(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB9_24
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_15
.LBB9_15:                               # %do.body.16
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -224(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rdi
	callq	strlen
	movq	-232(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-264(%rbp), %rcx        # 8-byte Reload
	leaq	17(%rcx,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -200(%rbp)
	movq	-200(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	stpcpy
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -224(%rbp)
	movb	$47, (%rax)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	stpcpy
	movq	%rax, -272(%rbp)        # 8-byte Spill
# BB#16:                                # %do.end.26
                                        #   in Loop: Header=BB9_13 Depth=1
	leaq	-184(%rbp), %rsi
	movq	-200(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#17:                                # %if.then.28
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.29
	movl	msg_verbosity, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB9_20
# BB#19:                                # %if.then.32
	movabsq	$.L.str.15, %rsi
	movq	stderr, %rdi
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB9_20:                               # %if.end.36
	jmp	.LBB9_21
.LBB9_21:                               # %do.end.37
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_28
.LBB9_22:                               # %if.end.39
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_23
.LBB9_23:                               # %for.inc
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_13
.LBB9_24:                               # %for.end
	jmp	.LBB9_25
.LBB9_25:                               # %if.end.40
	movl	msg_verbosity, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB9_27
# BB#26:                                # %if.then.43
	movabsq	$.L.str.16, %rsi
	movq	stderr, %rdi
	movq	-192(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.17, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	pw_fprintf_path
.LBB9_27:                               # %if.end.45
	movl	$0, -4(%rbp)
.LBB9_28:                               # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pw_find_file_index, .Lfunc_end9-pw_find_file_index
	.cfi_endproc

	.globl	pw_find_file
	.align	16, 0x90
	.type	pw_find_file,@function
pw_find_file:                           # @pw_find_file
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_pw_find_file
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pw_find_file, .Lfunc_end10-pw_find_file
	.cfi_endproc

	.align	16, 0x90
	.type	_pw_find_file,@function
_pw_find_file:                          # @_pw_find_file
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	pw_find_file_index
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB11_5
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.2
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	strlen
	addq	$2, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-32(%rbp), %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	xmalloc
	movabsq	$.L.str.3, %rsi
	movl	$47, %ecx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rax,8), %rdx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	movb	$0, %al
	callq	sprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	strlen
	addq	$2, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	xmalloc
	movabsq	$.L.str.18, %rsi
	movl	$47, %ecx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rax,8), %rdx
	movq	-24(%rbp), %r8
	movb	$0, %al
	callq	sprintf
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB11_4:                               # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.26
	movq	$0, -8(%rbp)
.LBB11_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_pw_find_file, .Lfunc_end11-_pw_find_file
	.cfi_endproc

	.globl	xpw_find_file
	.align	16, 0x90
	.type	xpw_find_file,@function
xpw_find_file:                          # @xpw_find_file
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_pw_find_file
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$0, -24(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB12_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	strlen
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_4
.LBB12_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_4
.LBB12_4:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	16(%rcx,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	cmpq	$0, -24(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	jne	.LBB12_6
# BB#5:                                 # %cond.true.5
	movabsq	$.L.str.1, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false.6
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB12_7:                               # %cond.end.7
	movq	-80(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str, %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	__errno_location
	movabsq	$.L.str.2, %rdi
	movl	(%rax), %esi
	movl	%esi, -88(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	movl	-88(%rbp), %esi         # 4-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB12_8:                               # %if.end
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	xpw_find_file, .Lfunc_end12-xpw_find_file
	.cfi_endproc

	.globl	xpw_find_included_file
	.align	16, 0x90
	.type	xpw_find_included_file,@function
xpw_find_included_file:                 # @xpw_find_included_file
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movsbl	(%rcx), %eax
	cmpl	$47, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	dir_name
	movq	%rax, -48(%rbp)
.LBB13_3:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	-32(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-208(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	je	.LBB13_5
# BB#4:                                 # %cond.true
	movq	-40(%rbp), %rdi
	callq	strlen
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB13_6
.LBB13_6:                               # %cond.end
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	leaq	17(%rcx,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -40(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%r8, -248(%rbp)         # 8-byte Spill
	je	.LBB13_8
# BB#7:                                 # %cond.true.8
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false.9
	movabsq	$.L.str.1, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_9:                               # %cond.end.10
	movq	-256(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.3, %rsi
	movl	$47, %ecx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	-248(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	sprintf
	movl	%eax, -260(%rbp)        # 4-byte Spill
# BB#10:                                # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB13_12
# BB#11:                                # %if.then.14
	movq	-48(%rbp), %rdi
	callq	free
.LBB13_12:                              # %if.end.15
	jmp	.LBB13_13
.LBB13_13:                              # %do.end
	leaq	-200(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB13_15
# BB#14:                                # %if.then.19
	movq	-56(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -8(%rbp)
	jmp	.LBB13_16
.LBB13_15:                              # %if.end.21
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	xpw_find_file
	movq	%rax, -8(%rbp)
.LBB13_16:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	xpw_find_included_file, .Lfunc_end13-xpw_find_included_file
	.cfi_endproc

	.globl	pw_paste_file
	.align	16, 0x90
	.type	pw_paste_file,@function
pw_paste_file:                          # @pw_paste_file
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
	subq	$640, %rsp              # imm = 0x280
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -564(%rbp)
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB14_6
# BB#2:                                 # %if.then
	movq	stderr, %rdi
	movq	-24(%rbp), %rdx
	cmpq	$0, -32(%rbp)
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	je	.LBB14_4
# BB#3:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	movabsq	$.L.str.1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB14_5
.LBB14_5:                               # %cond.end
	movq	-600(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.4, %rsi
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	-592(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB14_6:                               # %if.end
	jmp	.LBB14_7
.LBB14_7:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_pw_find_file
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jne	.LBB14_9
# BB#8:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB14_28
.LBB14_9:                               # %if.end.5
	movabsq	$.L.str.5, %rsi
	movq	-552(%rbp), %rdi
	callq	fopen
	movq	%rax, -560(%rbp)
	cmpq	$0, -560(%rbp)
	jne	.LBB14_11
# BB#10:                                # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB14_28
.LBB14_11:                              # %if.end.8
	jmp	.LBB14_12
.LBB14_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$512, %esi              # imm = 0x200
	leaq	-544(%rbp), %rdi
	movq	-560(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB14_16
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB14_12 Depth=1
	movabsq	$.L.str.6, %rsi
	movl	$30, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rdi
	movl	-564(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -564(%rbp)
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB14_15
# BB#14:                                # %if.then.14
	jmp	.LBB14_16
.LBB14_15:                              # %if.end.15
                                        #   in Loop: Header=BB14_12 Depth=1
	jmp	.LBB14_12
.LBB14_16:                              # %while.end
	jmp	.LBB14_17
.LBB14_17:                              # %while.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movl	$512, %esi              # imm = 0x200
	leaq	-544(%rbp), %rdi
	movq	-560(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB14_27
# BB#18:                                # %while.body.20
                                        #   in Loop: Header=BB14_17 Depth=1
	movabsq	$.L.str.7, %rsi
	movl	$18, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rdi
	movl	-564(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -564(%rbp)
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB14_26
# BB#19:                                # %if.then.25
                                        #   in Loop: Header=BB14_17 Depth=1
	movabsq	$.L.str.8, %rsi
	leaq	-544(%rbp), %rax
	addq	$18, %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rdi
	callq	strtok
	movq	%rax, -576(%rbp)
# BB#20:                                # %do.body.28
                                        #   in Loop: Header=BB14_17 Depth=1
	movl	msg_verbosity, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB14_22
# BB#21:                                # %if.then.31
                                        #   in Loop: Header=BB14_17 Depth=1
	movabsq	$.L.str.9, %rsi
	movq	stderr, %rdi
	movq	-576(%rbp), %rdx
	movq	-552(%rbp), %rcx
	movl	-564(%rbp), %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -608(%rbp)        # 4-byte Spill
.LBB14_22:                              # %if.end.33
                                        #   in Loop: Header=BB14_17 Depth=1
	jmp	.LBB14_23
.LBB14_23:                              # %do.end.34
                                        #   in Loop: Header=BB14_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-576(%rbp), %rsi
	callq	pw_paste_file
	cmpl	$0, %eax
	jne	.LBB14_25
# BB#24:                                # %if.then.37
                                        #   in Loop: Header=BB14_17 Depth=1
	callq	__errno_location
	movabsq	$.L.str.2, %rdi
	movl	(%rax), %esi
	movq	-552(%rbp), %rdx
	movl	-564(%rbp), %ecx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	%esi, -616(%rbp)        # 4-byte Spill
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-576(%rbp), %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	movl	-616(%rbp), %esi        # 4-byte Reload
	movq	-624(%rbp), %rdx        # 8-byte Reload
	movl	-612(%rbp), %ecx        # 4-byte Reload
	movq	-632(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB14_25:                              # %if.end.41
                                        #   in Loop: Header=BB14_17 Depth=1
	jmp	.LBB14_17
.LBB14_26:                              # %if.end.42
                                        #   in Loop: Header=BB14_17 Depth=1
	leaq	-544(%rbp), %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -636(%rbp)        # 4-byte Spill
	jmp	.LBB14_17
.LBB14_27:                              # %while.end.45
	movq	-560(%rbp), %rdi
	callq	fclose
	movq	-552(%rbp), %rdi
	movl	%eax, -640(%rbp)        # 4-byte Spill
	callq	free
	movl	$1, -4(%rbp)
.LBB14_28:                              # %return
	movl	-4(%rbp), %eax
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pw_paste_file, .Lfunc_end14-pw_paste_file
	.cfi_endproc

	.globl	pw_glob
	.align	16, 0x90
	.type	pw_glob,@function
pw_glob:                                # @pw_glob
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
	movq	%rsi, -16(%rbp)
	movl	msg_verbosity, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.10, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.11, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	pw_fprintf_path
.LBB15_2:                               # %if.end
	movabsq	$.L.str.12, %rdi
	movl	$20, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movl	$2, %eax
	movl	%eax, %ecx
	movabsq	$da_str_print, %r8
	movabsq	$strverscmp, %r9
	callq	da_new
	movabsq	$pw_filter_fnmatch, %rsi
	movabsq	$pw_filter_da_append, %rcx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %r8
	callq	pw_filterdir
	movq	-24(%rbp), %rdi
	callq	da_qsort
	movabsq	$free, %rsi
	movq	-24(%rbp), %rdi
	callq	da_unique
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pw_glob, .Lfunc_end15-pw_glob
	.cfi_endproc

	.align	16, 0x90
	.type	pw_filterdir,@function
pw_filterdir:                           # @pw_filterdir
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	filterdir
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pw_filterdir, .Lfunc_end16-pw_filterdir
	.cfi_endproc

	.align	16, 0x90
	.type	pw_filter_fnmatch,@function
pw_filter_fnmatch:                      # @pw_filter_fnmatch
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	callq	fnmatch
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pw_filter_fnmatch, .Lfunc_end17-pw_filter_fnmatch
	.cfi_endproc

	.align	16, 0x90
	.type	pw_filter_da_append,@function
pw_filter_da_append:                    # @pw_filter_da_append
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
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	xstrdup
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	da_append
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pw_filter_da_append, .Lfunc_end18-pw_filter_da_append
	.cfi_endproc

	.globl	pw_glob_print
	.align	16, 0x90
	.type	pw_glob_print,@function
pw_glob_print:                          # @pw_glob_print
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
	movabsq	$pw_filter_fnmatch, %rax
	movabsq	$pw_filter_print, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %r8          # 8-byte Reload
	callq	pw_filterdir
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pw_glob_print, .Lfunc_end19-pw_glob_print
	.cfi_endproc

	.align	16, 0x90
	.type	pw_filter_print,@function
pw_filter_print:                        # @pw_filter_print
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
	subq	$32, %rsp
	movabsq	$.L.str.19, %rax
	movl	$47, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pw_filter_print, .Lfunc_end20-pw_filter_print
	.cfi_endproc

	.globl	pw_glob_on_suffix
	.align	16, 0x90
	.type	pw_glob_on_suffix,@function
pw_glob_on_suffix:                      # @pw_glob_on_suffix
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	$.L.str.13, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	strlen
	movq	-48(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	16(%rdi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -32(%rbp)
# BB#2:                                 # %do.body.3
	movq	-32(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	stpcpy
	movq	%rax, -64(%rbp)         # 8-byte Spill
# BB#3:                                 # %do.end
	jmp	.LBB21_4
.LBB21_4:                               # %do.end.6
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	pw_glob
	movabsq	$da_str_cut_suffix, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	da_map
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pw_glob_on_suffix, .Lfunc_end21-pw_glob_on_suffix
	.cfi_endproc

	.align	16, 0x90
	.type	da_str_cut_suffix,@function
da_str_cut_suffix:                      # @da_str_cut_suffix
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
	subq	$16, %rsp
	movl	$46, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strrchr
	movb	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	da_str_cut_suffix, .Lfunc_end22-da_str_cut_suffix
	.cfi_endproc

	.globl	pw_lister_on_suffix
	.align	16, 0x90
	.type	pw_lister_on_suffix,@function
pw_lister_on_suffix:                    # @pw_lister_on_suffix
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pw_glob_on_suffix
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$strlen, %r8
	movabsq	$fputs, %rdx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %r9
	movq	40(%r9), %rcx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %r9          # 8-byte Reload
	callq	lister_fprint_vertical
	movabsq	$free, %rsi
	movq	-32(%rbp), %rdi
	callq	da_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	pw_lister_on_suffix, .Lfunc_end23-pw_lister_on_suffix
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s%s"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cannot find file `%s'"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s%c%s%s"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pw: pasting `%s%s'\n"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"r"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"% -- code follows this line --"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"% -- include file:"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" \n\t"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"pw: including file '%s' upon request given in '%s':%d\n"
	.size	.L.str.9, 55

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"pw: globbing `%s'\n"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\t-> %s\n"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Dir entries"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"*"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pw: looking for `%s'\n"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pw: success in %s\n"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"pw: did not find `%s' in path\n"
	.size	.L.str.16, 31

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pw:  %s\n"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s%c%s"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s%c%s\n"
	.size	.L.str.19, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
