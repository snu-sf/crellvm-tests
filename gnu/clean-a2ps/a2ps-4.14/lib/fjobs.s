	.text
	.file	"fjobs.bc"
	.globl	_a2ps_file_job_new
	.align	16, 0x90
	.type	_a2ps_file_job_new,@function
_a2ps_file_job_new:                     # @_a2ps_file_job_new
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
	movl	$144, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movl	$56, %esi
	movl	%esi, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 32(%rax)
	movq	-32(%rbp), %rax
	addq	$40, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movb	$1, 96(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 97(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 100(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 120(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 128(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 136(%rax)
	movl	-12(%rbp), %r8d
	movq	-32(%rbp), %rax
	movl	%r8d, 124(%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_a2ps_file_job_new, .Lfunc_end0-_a2ps_file_job_new
	.cfi_endproc

	.globl	file_job_free
	.align	16, 0x90
	.type	file_job_free,@function
file_job_free:                          # @file_job_free
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %do.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.body.2
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB1_7:                                # %if.end.6
	jmp	.LBB1_8
.LBB1_8:                                # %do.end.7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_job_free, .Lfunc_end1-file_job_free
	.cfi_endproc

	.globl	file_job_self_print
	.align	16, 0x90
	.type	file_job_self_print,@function
file_job_self_print:                    # @file_job_self_print
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	movabsq	$.L.str, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdx
	movq	-16(%rbp), %rsi
	movl	108(%rsi), %ecx
	movq	-16(%rbp), %rsi
	movl	112(%rsi), %r8d
	movq	-16(%rbp), %rsi
	movl	116(%rsi), %r9d
	movq	-16(%rbp), %rsi
	movl	100(%rsi), %r10d
	movq	-16(%rbp), %rsi
	movl	104(%rsi), %r11d
	movq	-16(%rbp), %rsi
	movl	120(%rsi), %ebx
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	jne	.LBB2_2
# BB#1:                                 # %cond.true
	movabsq	$.L.str.2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB2_3:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB2_5
# BB#4:                                 # %cond.true.3
	movabsq	$.L.str.2, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.4
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB2_6:                                # %cond.end.6
	movq	-64(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rcx
	movb	32(%rcx), %dl
	andb	$1, %dl
	movzbl	%dl, %r8d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_job_self_print, .Lfunc_end2-file_job_self_print
	.cfi_endproc

	.globl	file_job_synchronize_sheets
	.align	16, 0x90
	.type	file_job_synchronize_sheets,@function
file_job_synchronize_sheets:            # @file_job_synchronize_sheets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 100(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 100(%rax)
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 104(%rax)
	movq	-16(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	100(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 120(%rax)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_job_synchronize_sheets, .Lfunc_end3-file_job_synchronize_sheets
	.cfi_endproc

	.globl	file_job_synchronize_pages
	.align	16, 0x90
	.type	file_job_synchronize_pages,@function
file_job_synchronize_pages:             # @file_job_synchronize_pages
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 108(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 108(%rax)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 132(%rax)
	jne	.LBB4_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movl	$1, 132(%rax)
.LBB4_4:                                # %if.end.6
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movl	136(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 128(%rax)
	movq	-16(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	108(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 116(%rax)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	file_job_synchronize_pages, .Lfunc_end4-file_job_synchronize_pages
	.cfi_endproc

	.globl	file_job_unlink_tmpfile
	.align	16, 0x90
	.type	file_job_unlink_tmpfile,@function
file_job_unlink_tmpfile:                # @file_job_unlink_tmpfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	unlink
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	unlink
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB5_4:                                # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_job_unlink_tmpfile, .Lfunc_end5-file_job_unlink_tmpfile
	.cfi_endproc

	.globl	file_name_cmp
	.align	16, 0x90
	.type	file_name_cmp,@function
file_name_cmp:                          # @file_name_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	file_name_cmp, .Lfunc_end6-file_name_cmp
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"File `%s': Pages %d-%d (%d), Sheets %d-%d (%d)\n"
	.size	.L.str, 48

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\tdel-tmp: `%s', stdin-tmp: `%s', is_toc: %d"
	.size	.L.str.1, 44

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
