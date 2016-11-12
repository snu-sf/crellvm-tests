	.text
	.file	"delegate.bc"
	.globl	delegation_table_new
	.align	16, 0x90
	.type	delegation_table_new,@function
delegation_table_new:                   # @delegation_table_new
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
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$delegate_hash_1, %rdx
	movabsq	$delegate_hash_2, %rcx
	movabsq	$delegate_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	delegation_table_new, .Lfunc_end0-delegation_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	delegate_hash_1,@function
delegate_hash_1:                        # @delegate_hash_1
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB1_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$15, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_3
.LBB1_5:                                # %while.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end1:
	.size	delegate_hash_1, .Lfunc_end1-delegate_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	delegate_hash_2,@function
delegate_hash_2:                        # @delegate_hash_2
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
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB2_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB2_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$7, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_3
.LBB2_5:                                # %while.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end2:
	.size	delegate_hash_2, .Lfunc_end2-delegate_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	delegate_hash_cmp,@function
delegate_hash_cmp:                      # @delegate_hash_cmp
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.body.1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB3_3:                                # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB3_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_7
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_6
.LBB3_6:                                # %do.cond
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB3_3
.LBB3_7:                                # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end3:
	.size	delegate_hash_cmp, .Lfunc_end3-delegate_hash_cmp
	.cfi_endproc

	.globl	delegation_table_free
	.align	16, 0x90
	.type	delegation_table_free,@function
delegation_table_free:                  # @delegation_table_free
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
	movabsq	$delegate_free, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	delegation_table_free, .Lfunc_end4-delegation_table_free
	.cfi_endproc

	.align	16, 0x90
	.type	delegate_free,@function
delegate_free:                          # @delegate_free
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	delegate_free, .Lfunc_end5-delegate_free
	.cfi_endproc

	.globl	add_delegation
	.align	16, 0x90
	.type	add_delegation,@function
add_delegation:                         # @add_delegation
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
	subq	$176, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movabsq	$.L.str, %rsi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	strtok
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB6_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	xstrdup
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.2, %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	callq	strtok
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB6_4:                                # %if.end.10
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	callq	strtok
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB6_6:                                # %if.end.16
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	-40(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-128(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$2, %rdi
	shlq	$0, %rdi
	callq	xmalloc
	movabsq	$.L.str.3, %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	sprintf
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.4, %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	strtok
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.26
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB6_8:                                # %if.end.29
	movabsq	$.L.str.5, %rsi
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	strspn
	movq	-160(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rdi
	callq	xstrdup
	movq	-48(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	delegation_table, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -168(%rbp)        # 8-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	add_delegation, .Lfunc_end6-add_delegation
	.cfi_endproc

	.globl	get_subcontract
	.align	16, 0x90
	.type	get_subcontract,@function
get_subcontract:                        # @get_subcontract
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
	subq	$64, %rsp
	movabsq	$.L.str.3, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	17(%rsi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	leaq	-40(%rbp), %rcx
	movq	delegation_table, %rdi
	movq	%rcx, %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	hash_find_item
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_subcontract, .Lfunc_end7-get_subcontract
	.cfi_endproc

	.globl	get_delegate_command
	.align	16, 0x90
	.type	get_delegate_command,@function
get_delegate_command:                   # @get_delegate_command
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
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdx
	movq	job, %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	callq	expand_user_string
	movq	%rax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	get_delegate_command, .Lfunc_end8-get_delegate_command
	.cfi_endproc

	.globl	subcontract
	.align	16, 0x90
	.type	subcontract,@function
subcontract:                            # @subcontract
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
	subq	$768, %rsp              # imm = 0x300
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -596(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	job, %rsi
	cmpq	264(%rsi), %rdx
	jne	.LBB9_7
# BB#1:                                 # %if.then
	jmp	.LBB9_2
.LBB9_2:                                # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.7, %rsi
	callq	tempnam
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB9_5:                                # %cond.end
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
# BB#6:                                 # %do.end
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	buffer_save
	movl	$1, %edx
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	get_delegate_command
	movq	%rax, -40(%rbp)
	movq	job, %rax
	movq	264(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB9_8
.LBB9_7:                                # %if.else
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	get_delegate_command
	movq	%rax, -40(%rbp)
.LBB9_8:                                # %if.end
	jmp	.LBB9_9
.LBB9_9:                                # %do.body.9
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB9_11
# BB#10:                                # %if.then.11
	movabsq	$.L.str.8, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %r8
	movb	$0, %al
	callq	fprintf
	movl	%eax, -684(%rbp)        # 4-byte Spill
.LBB9_11:                               # %if.end.15
	jmp	.LBB9_12
.LBB9_12:                               # %do.end.16
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.17
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_15
# BB#14:                                # %cond.true.19
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB9_16
.LBB9_15:                               # %cond.false.21
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.7, %rsi
	callq	tempnam
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB9_16:                               # %cond.end.23
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
# BB#17:                                # %do.end.26
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_19
# BB#18:                                # %if.then.30
	callq	__errno_location
	movabsq	$.L.str.10, %rdi
	movl	(%rax), %esi
	movl	%esi, -700(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-700(%rbp), %esi        # 4-byte Reload
	movq	-712(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movl	$0, -4(%rbp)
	jmp	.LBB9_50
.LBB9_19:                               # %if.end.35
	movabsq	$.L.str.11, %rsi
	movq	-40(%rbp), %rdi
	callq	popen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_21
# BB#20:                                # %if.then.38
	movq	-64(%rbp), %rdi
	callq	fclose
	movl	%eax, -716(%rbp)        # 4-byte Spill
	callq	__errno_location
	movabsq	$.L.str.12, %rdi
	movl	(%rax), %esi
	movl	%esi, -720(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-720(%rbp), %esi        # 4-byte Reload
	movq	-728(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movl	$0, -4(%rbp)
	jmp	.LBB9_50
.LBB9_21:                               # %if.end.43
	movq	job, %rdi
	callq	file_job_synchronize_sheets
	movq	job, %rdi
	callq	file_job_synchronize_pages
.LBB9_22:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_29 Depth 2
                                        #     Child Loop BB9_36 Depth 2
	movl	$512, %esi              # imm = 0x200
	leaq	-592(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB9_45
# BB#23:                                # %while.body
                                        #   in Loop: Header=BB9_22 Depth=1
	movabsq	$.L.str.13, %rdi
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-592(%rbp), %rsi
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_25
# BB#24:                                # %if.then.49
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	job, %rax
	movl	136(%rax), %ecx
	movq	job, %rax
	imull	132(%rax), %ecx
	movq	job, %rax
	addl	112(%rax), %ecx
	movl	%ecx, 112(%rax)
	movq	job, %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movq	job, %rdi
	callq	file_job_synchronize_sheets
	movq	job, %rdi
	callq	file_job_synchronize_pages
	jmp	.LBB9_44
.LBB9_25:                               # %if.else.51
                                        #   in Loop: Header=BB9_22 Depth=1
	movabsq	$.L.str.14, %rdi
	movl	$27, %eax
	movl	%eax, %edx
	leaq	-592(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_32
# BB#26:                                # %if.then.55
                                        #   in Loop: Header=BB9_22 Depth=1
	movl	$1, -596(%rbp)
# BB#27:                                # %do.body.56
                                        #   in Loop: Header=BB9_22 Depth=1
	leaq	-565(%rbp), %rax
	movq	%rax, -632(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -624(%rbp)
	movq	-624(%rbp), %rdi
	movq	-632(%rbp), %rsi
	callq	strcpy
	movq	%rax, -736(%rbp)        # 8-byte Spill
# BB#28:                                # %do.end.62
                                        #   in Loop: Header=BB9_22 Depth=1
	movabsq	$.L.str.15, %rsi
	movq	-624(%rbp), %rdi
	callq	strtok
	movq	%rax, -616(%rbp)
.LBB9_29:                               # %while.cond.64
                                        #   Parent Loop BB9_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.15, %rsi
	callq	strtok
	movq	%rax, -608(%rbp)
	cmpq	$0, %rax
	je	.LBB9_31
# BB#30:                                # %while.body.67
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	job, %rdi
	movq	-616(%rbp), %rsi
	movq	-608(%rbp), %rdx
	callq	add_needed_resource
	jmp	.LBB9_29
.LBB9_31:                               # %while.end
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_43
.LBB9_32:                               # %if.else.68
                                        #   in Loop: Header=BB9_22 Depth=1
	movabsq	$.L.str.16, %rdi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-592(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_42
# BB#33:                                # %if.then.72
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_34
.LBB9_34:                               # %do.body.76
                                        #   in Loop: Header=BB9_22 Depth=1
	leaq	-588(%rbp), %rax
	movq	%rax, -664(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -656(%rbp)
	movq	-656(%rbp), %rdi
	movq	-664(%rbp), %rsi
	callq	strcpy
	movq	%rax, -744(%rbp)        # 8-byte Spill
# BB#35:                                # %do.end.84
                                        #   in Loop: Header=BB9_22 Depth=1
	movabsq	$.L.str.15, %rsi
	movq	-656(%rbp), %rdi
	callq	strtok
	movq	%rax, -648(%rbp)
.LBB9_36:                               # %while.cond.86
                                        #   Parent Loop BB9_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.15, %rsi
	callq	strtok
	movq	%rax, -640(%rbp)
	cmpq	$0, %rax
	je	.LBB9_41
# BB#37:                                # %while.body.89
                                        #   in Loop: Header=BB9_36 Depth=2
	movl	-596(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jne	.LBB9_39
	jmp	.LBB9_38
.LBB9_38:                               # %sw.bb
                                        #   in Loop: Header=BB9_36 Depth=2
	movq	job, %rdi
	movq	-648(%rbp), %rsi
	movq	-640(%rbp), %rdx
	callq	add_needed_resource
	jmp	.LBB9_40
.LBB9_39:                               # %sw.default
                                        #   in Loop: Header=BB9_36 Depth=2
	jmp	.LBB9_40
.LBB9_40:                               # %sw.epilog
                                        #   in Loop: Header=BB9_36 Depth=2
	jmp	.LBB9_36
.LBB9_41:                               # %while.end.90
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_42
.LBB9_42:                               # %if.end.91
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_43
.LBB9_43:                               # %if.end.92
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_44
.LBB9_44:                               # %if.end.93
                                        #   in Loop: Header=BB9_22 Depth=1
	leaq	-592(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	fputs
	movl	%eax, -752(%rbp)        # 4-byte Spill
	jmp	.LBB9_22
.LBB9_45:                               # %while.end.96
	movq	-56(%rbp), %rdi
	callq	pclose
	movq	-64(%rbp), %rdi
	movl	%eax, -756(%rbp)        # 4-byte Spill
	callq	fclose
	cmpq	$0, -48(%rbp)
	movl	%eax, -760(%rbp)        # 4-byte Spill
	je	.LBB9_47
# BB#46:                                # %if.then.100
	movq	-48(%rbp), %rdi
	callq	unlink
	movl	%eax, -764(%rbp)        # 4-byte Spill
.LBB9_47:                               # %if.end.102
	cmpl	$0, -68(%rbp)
	jne	.LBB9_49
# BB#48:                                # %if.then.104
	movl	$0, -4(%rbp)
	jmp	.LBB9_50
.LBB9_49:                               # %if.end.105
	movq	job, %rax
	movq	1536(%rax), %rdi
	callq	output_is_to_void
	xorl	%esi, %esi
	movl	%eax, -668(%rbp)
	movq	job, %rdi
	movq	1536(%rdi), %rdi
	callq	output_to_void
	movabsq	$.L.str.17, %rsi
	movq	job, %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.18, %rsi
	movq	job, %rdi
	movq	1536(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movb	$0, %al
	callq	output
	movabsq	$stream_dump, %rsi
	movq	job, %rcx
	movq	1536(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdx
	callq	output_delayed_routine
	movabsq	$unlink2, %rcx
	movq	job, %rdx
	movq	1536(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rcx, %rsi
	callq	output_delayed_routine
	movabsq	$.L.str.19, %rsi
	movq	job, %rcx
	movq	1536(%rcx), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.20, %rsi
	movq	job, %rcx
	movq	1536(%rcx), %rdi
	movb	$0, %al
	callq	output
	movq	job, %rcx
	movq	1536(%rcx), %rdi
	movl	-668(%rbp), %esi
	callq	output_to_void
	movq	job, %rcx
	movq	1528(%rcx), %rcx
	movl	$0, 56(%rcx)
	movl	$1, -4(%rbp)
.LBB9_50:                               # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	subcontract, .Lfunc_end9-subcontract
	.cfi_endproc

	.globl	delegations_list_long
	.align	16, 0x90
	.type	delegations_list_long,@function
delegations_list_long:                  # @delegations_list_long
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$delegate_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movabsq	$.L.str.21, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	$0, -20(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	dump_contract
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	delegations_list_long, .Lfunc_end10-delegations_list_long
	.cfi_endproc

	.align	16, 0x90
	.type	delegate_hash_qcmp,@function
delegate_hash_qcmp:                     # @delegate_hash_qcmp
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
# BB#1:                                 # %do.body
	jmp	.LBB11_2
.LBB11_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB11_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB11_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_7
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_6
.LBB11_6:                               # %do.cond
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB11_3
.LBB11_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end11:
	.size	delegate_hash_qcmp, .Lfunc_end11-delegate_hash_qcmp
	.cfi_endproc

	.align	16, 0x90
	.type	dump_contract,@function
dump_contract:                          # @dump_contract
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	xstrdup
	movabsq	$.L.str.22, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strtok
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.22, %rsi
	movq	%rax, -24(%rbp)
	callq	strtok
	movabsq	$.L.str.23, %rdi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.24, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dump_contract, .Lfunc_end12-dump_contract
	.cfi_endproc

	.globl	delegations_list_short
	.align	16, 0x90
	.type	delegations_list_short,@function
delegations_list_short:                 # @delegations_list_short
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$delegate_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movabsq	$.L.str.21, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	_IO_putc
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	$-1, %rcx
	movabsq	$delegate_name_len, %rdx
	movabsq	$delegate_name_fputs, %rsi
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	lister_fprint_vertical
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	delegations_list_short, .Lfunc_end13-delegations_list_short
	.cfi_endproc

	.align	16, 0x90
	.type	delegate_name_len,@function
delegate_name_len:                      # @delegate_name_len
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	strlen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	delegate_name_len, .Lfunc_end14-delegate_name_len
	.cfi_endproc

	.align	16, 0x90
	.type	delegate_name_fputs,@function
delegate_name_fputs:                    # @delegate_name_fputs
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
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	delegate_name_fputs, .Lfunc_end15-delegate_name_fputs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" \t\n"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"missing argument for `%s'"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" \t\n:"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s:%s"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\t "
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"delegating command"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"a2_"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Delegating `%s' to `%s' (%s)\n"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"w"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"cannot create file `%s'"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"r"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cannot open a pipe on `%s'"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%%Page: "
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%%DocumentNeededResources: "
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" \n\t"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%%+ "
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"BeginInclude\n"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%%%%BeginDocument: %s\n"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%%%%EndDocument\n"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"EndInclude\n"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Applications configured for delegation"
	.size	.L.str.21, 39

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	":"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Delegation `%s', from %s to %s\n"
	.size	.L.str.23, 32

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\t%s\n"
	.size	.L.str.24, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
