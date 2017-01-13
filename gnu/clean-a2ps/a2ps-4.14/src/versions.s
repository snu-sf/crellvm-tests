	.text
	.file	"versions.bc"
	.globl	version_set_to_null
	.align	16, 0x90
	.type	version_set_to_null,@function
version_set_to_null:                    # @version_set_to_null
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
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, -16(%rbp)
	jae	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end0:
	.size	version_set_to_null, .Lfunc_end0-version_set_to_null
	.cfi_endproc

	.globl	version_null_p
	.align	16, 0x90
	.type	version_null_p,@function
version_null_p:                         # @version_null_p
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
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, -24(%rbp)
	jae	.LBB1_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB1_4
# BB#3:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB1_7
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_6:                                # %for.end
	movb	$1, -1(%rbp)
.LBB1_7:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	version_null_p, .Lfunc_end1-version_null_p
	.cfi_endproc

	.globl	version_cmp
	.align	16, 0x90
	.type	version_cmp,@function
version_cmp:                            # @version_cmp
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -28(%rbp)
	jge	.LBB2_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx,%rax,4), %edx
	jge	.LBB2_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB2_10
.LBB2_4:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx,%rax,4), %edx
	jle	.LBB2_6
# BB#5:                                 # %if.then.9
	movl	$1, -4(%rbp)
	jmp	.LBB2_10
.LBB2_6:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.10
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_8
.LBB2_8:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_1
.LBB2_9:                                # %for.end
	movl	$0, -4(%rbp)
.LBB2_10:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	version_cmp, .Lfunc_end2-version_cmp
	.cfi_endproc

	.globl	version_cpy
	.align	16, 0x90
	.type	version_cpy,@function
version_cpy:                            # @version_cpy
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
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	movl	8(%rdi), %ecx
	movl	%ecx, 8(%rsi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	version_cpy, .Lfunc_end3-version_cpy
	.cfi_endproc

	.globl	version_self_print
	.align	16, 0x90
	.type	version_self_print,@function
version_self_print:                     # @version_self_print
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	8(%rax), %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB4_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	version_self_print, .Lfunc_end4-version_self_print
	.cfi_endproc

	.globl	version_length
	.align	16, 0x90
	.type	version_length,@function
version_length:                         # @version_length
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$10, (%rdx)
	movl	%eax, %esi
	cmovll	%ecx, %esi
	addl	$2, %esi
	movq	-16(%rbp), %rdx
	cmpl	$10, 4(%rdx)
	cmovll	%ecx, %eax
	addl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	$2, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$10, (%rdx)
	movl	%eax, %esi
	cmovll	%ecx, %esi
	addl	$1, %esi
	movq	-16(%rbp), %rdx
	cmpl	$10, 4(%rdx)
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -4(%rbp)
.LBB5_3:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	version_length, .Lfunc_end5-version_length
	.cfi_endproc

	.globl	version_add
	.align	16, 0x90
	.type	version_add,@function
version_add:                            # @version_add
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -20(%rbp)
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	addl	(%rcx,%rax,4), %edx
	movl	%edx, (%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	version_add, .Lfunc_end6-version_add
	.cfi_endproc

	.globl	string_to_version
	.align	16, 0x90
	.type	string_to_version,@function
string_to_version:                      # @string_to_version
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rsi, %rax
	addq	$4, %rax
	movl	$.L.str, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	leaq	-17(%rbp), %r9
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	%r8b, -33(%rbp)         # 1-byte Spill
	movq	%r9, %r8
	movb	-33(%rbp), %al          # 1-byte Reload
	callq	__isoc99_sscanf
	movl	%eax, %r10d
	subl	$2, %eax
	movl	%r10d, -40(%rbp)        # 4-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_5
.LBB7_5:                                # %entry
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.LBB7_4
.LBB7_2:                                # %sw.bb.3
	movsbl	-17(%rbp), %eax
	subl	$97, %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB7_4
.LBB7_3:                                # %sw.default
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB7_4:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	string_to_version, .Lfunc_end7-string_to_version
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d.%d%c"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d.%d"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"invalid version number `%s'"
	.size	.L.str.2, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
