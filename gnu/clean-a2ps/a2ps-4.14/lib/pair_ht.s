	.text
	.file	"pair_ht.bc"
	.globl	pair_table_new
	.align	16, 0x90
	.type	pair_table_new,@function
pair_table_new:                         # @pair_table_new
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
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$pair_hash_1, %rdi
	movabsq	$pair_hash_2, %rdx
	movabsq	$pair_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pair_table_new, .Lfunc_end0-pair_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	pair_hash_1,@function
pair_hash_1:                            # @pair_hash_1
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
	movq	(%rax), %rax
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
	.size	pair_hash_1, .Lfunc_end1-pair_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	pair_hash_2,@function
pair_hash_2:                            # @pair_hash_2
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
	movq	(%rax), %rax
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
	.size	pair_hash_2, .Lfunc_end2-pair_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	pair_hash_cmp,@function
pair_hash_cmp:                          # @pair_hash_cmp
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
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
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
	.size	pair_hash_cmp, .Lfunc_end3-pair_hash_cmp
	.cfi_endproc

	.globl	pair_table_free
	.align	16, 0x90
	.type	pair_table_free,@function
pair_table_free:                        # @pair_table_free
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
	movabsq	$pair_free, %rax
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
	.size	pair_table_free, .Lfunc_end4-pair_table_free
	.cfi_endproc

	.align	16, 0x90
	.type	pair_free,@function
pair_free:                              # @pair_free
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB5_3:                                # %if.end
	jmp	.LBB5_4
.LBB5_4:                                # %do.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.body.2
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB5_7:                                # %if.end.6
	jmp	.LBB5_8
.LBB5_8:                                # %do.end.7
	jmp	.LBB5_9
.LBB5_9:                                # %do.body.8
	cmpq	$0, -8(%rbp)
	je	.LBB5_11
# BB#10:                                # %if.then.10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB5_11:                               # %if.end.11
	jmp	.LBB5_12
.LBB5_12:                               # %do.end.12
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pair_free, .Lfunc_end5-pair_free
	.cfi_endproc

	.globl	pair_add
	.align	16, 0x90
	.type	pair_add,@function
pair_add:                               # @pair_add
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
	subq	$64, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB6_3:                                # %if.end
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB6_5:                                # %if.end.9
	cmpq	$0, -24(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.11
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.14
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
.LBB6_8:                                # %if.end.16
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pair_add, .Lfunc_end6-pair_add
	.cfi_endproc

	.globl	pair_delete
	.align	16, 0x90
	.type	pair_delete,@function
pair_delete:                            # @pair_delete
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
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_delete
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	pair_free
.LBB7_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pair_delete, .Lfunc_end7-pair_delete
	.cfi_endproc

	.globl	pair_get
	.align	16, 0x90
	.type	pair_get,@function
pair_get:                               # @pair_get
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
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	$0, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pair_get, .Lfunc_end8-pair_get
	.cfi_endproc

	.globl	pair_table_map
	.align	16, 0x90
	.type	pair_table_map,@function
pair_table_map:                         # @pair_table_map
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$pair_hash_qcmp, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	hash_dump
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB9_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rdi
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	8(%rcx), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB9_5
.LBB9_4:                                # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %edi
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rsi
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	8(%rcx), %rdx
	movq	-32(%rbp), %rcx
	callq	*%rax
	movl	-40(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -40(%rbp)
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pair_table_map, .Lfunc_end9-pair_table_map
	.cfi_endproc

	.align	16, 0x90
	.type	pair_hash_qcmp,@function
pair_hash_qcmp:                         # @pair_hash_qcmp
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
# BB#1:                                 # %do.body
	jmp	.LBB10_2
.LBB10_2:                               # %do.body.1
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
.LBB10_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB10_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_7
.LBB10_5:                               # %if.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_6
.LBB10_6:                               # %do.cond
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB10_3
.LBB10_7:                               # %do.end
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
.Lfunc_end10:
	.size	pair_hash_qcmp, .Lfunc_end10-pair_hash_qcmp
	.cfi_endproc

	.globl	pair_table_list_short
	.align	16, 0x90
	.type	pair_table_list_short,@function
pair_table_list_short:                  # @pair_table_list_short
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$pair_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	$-1, %rcx
	movabsq	$pair_key_len, %rdx
	movabsq	$pair_key_fputs, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	lister_fprint_vertical
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pair_table_list_short, .Lfunc_end11-pair_table_list_short
	.cfi_endproc

	.align	16, 0x90
	.type	pair_key_len,@function
pair_key_len:                           # @pair_key_len
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	strlen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pair_key_len, .Lfunc_end12-pair_key_len
	.cfi_endproc

	.align	16, 0x90
	.type	pair_key_fputs,@function
pair_key_fputs:                         # @pair_key_fputs
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
.Lfunc_end13:
	.size	pair_key_fputs, .Lfunc_end13-pair_key_fputs
	.cfi_endproc

	.globl	pair_table_list_long
	.align	16, 0x90
	.type	pair_table_list_long,@function
pair_table_list_long:                   # @pair_table_list_long
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$pair_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB14_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdx
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	$0, 8(%rax)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	je	.LBB14_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movabsq	$.L.str.1, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_5:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB14_1
.LBB14_7:                               # %for.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pair_table_list_long, .Lfunc_end14-pair_table_list_long
	.cfi_endproc

	.globl	pair_table_self_print
	.align	16, 0x90
	.type	pair_table_self_print,@function
pair_table_self_print:                  # @pair_table_self_print
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$pair_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB15_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdx
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	$0, 8(%rax)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	je	.LBB15_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movabsq	$.L.str.1, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB15_5
.LBB15_5:                               # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_1
.LBB15_7:                               # %for.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pair_table_self_print, .Lfunc_end15-pair_table_self_print
	.cfi_endproc

	.globl	pair_table_load
	.align	16, 0x90
	.type	pair_table_load,@function
pair_table_load:                        # @pair_table_load
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %if.then
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	quotearg
	movabsq	$.L.str.3, %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB16_3:                               # %if.end
	jmp	.LBB16_4
.LBB16_4:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	xrfopen
	movq	%rax, -24(%rbp)
.LBB16_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-60(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	getshline_numbered
	cmpl	$-1, %eax
	je	.LBB16_16
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB16_5 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	-32(%rbp), %rdi
	callq	strtok
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB16_5 Depth=1
	jmp	.LBB16_5
.LBB16_8:                               # %if.end.7
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-48(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_12
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB16_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	callq	strtok
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB16_11
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB16_5 Depth=1
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movl	-80(%rbp), %ecx         # 4-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB16_11:                              # %if.end.16
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	pair_table_load
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB16_15
.LBB16_12:                              # %if.else
                                        #   in Loop: Header=BB16_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	callq	strtok
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB16_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB16_5 Depth=1
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB16_14:                              # %if.end.23
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	pair_add
.LBB16_15:                              # %if.end.24
                                        #   in Loop: Header=BB16_5 Depth=1
	jmp	.LBB16_5
.LBB16_16:                              # %while.end
	movq	-32(%rbp), %rdi
	callq	free
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	$1, %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pair_table_load, .Lfunc_end16-pair_table_load
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%-16s = %s\n"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"<NULL>"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s:%s\n"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Loading map file `%s'\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" \t\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"***"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"missing argument for `%s'"
	.size	.L.str.6, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
