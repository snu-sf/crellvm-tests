	.text
	.file	"str_ht.bc"
	.globl	string_htable_new
	.align	16, 0x90
	.type	string_htable_new,@function
string_htable_new:                      # @string_htable_new
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
	movabsq	$string_hash_1, %rdx
	movabsq	$string_hash_2, %rcx
	movabsq	$string_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	string_htable_new, .Lfunc_end0-string_htable_new
	.cfi_endproc

	.align	16, 0x90
	.type	string_hash_1,@function
string_hash_1:                          # @string_hash_1
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
	.size	string_hash_1, .Lfunc_end1-string_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	string_hash_2,@function
string_hash_2:                          # @string_hash_2
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
	.size	string_hash_2, .Lfunc_end2-string_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	string_hash_cmp,@function
string_hash_cmp:                        # @string_hash_cmp
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
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB3_3:                                # %do.body.3
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
# BB#8:                                 # %do.end.14
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.16
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end3:
	.size	string_hash_cmp, .Lfunc_end3-string_hash_cmp
	.cfi_endproc

	.globl	string_htable_free
	.align	16, 0x90
	.type	string_htable_free,@function
string_htable_free:                     # @string_htable_free
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
	movabsq	$free, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	hash_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	string_htable_free, .Lfunc_end4-string_htable_free
	.cfi_endproc

	.globl	string_htable_add
	.align	16, 0x90
	.type	string_htable_add,@function
string_htable_add:                      # @string_htable_add
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
	movq	-16(%rbp), %rsi
	callq	hash_find_item
	cmpq	$0, %rax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	xstrdup
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB5_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	string_htable_add, .Lfunc_end5-string_htable_add
	.cfi_endproc

	.globl	string_htable_get
	.align	16, 0x90
	.type	string_htable_get,@function
string_htable_get:                      # @string_htable_get
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	hash_find_item
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	string_htable_get, .Lfunc_end6-string_htable_get
	.cfi_endproc

	.globl	string_htable_self_print
	.align	16, 0x90
	.type	string_htable_self_print,@function
string_htable_self_print:               # @string_htable_self_print
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$string_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	string_htable_self_print, .Lfunc_end7-string_htable_self_print
	.cfi_endproc

	.align	16, 0x90
	.type	string_hash_qcmp,@function
string_hash_qcmp:                       # @string_hash_qcmp
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB8_2
.LBB8_2:                                # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB8_3:                                # %do.body.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB8_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_7
.LBB8_5:                                # %if.end
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_6
.LBB8_6:                                # %do.cond
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB8_3
.LBB8_7:                                # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.14
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.16
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end8:
	.size	string_hash_qcmp, .Lfunc_end8-string_hash_qcmp
	.cfi_endproc

	.globl	string_htable_dump_sorted
	.align	16, 0x90
	.type	string_htable_dump_sorted,@function
string_htable_dump_sorted:              # @string_htable_dump_sorted
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$string_hash_qcmp, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rdx
	callq	hash_dump
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	string_htable_dump_sorted, .Lfunc_end9-string_htable_dump_sorted
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
