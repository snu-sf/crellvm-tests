	.text
	.file	"hashtab.bc"
	.globl	hash_init
	.align	16, 0x90
	.type	hash_init,@function
hash_init:                              # @hash_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	round_up_2
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$131072, 8(%rax)        # imm = 0x20000
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	shrq	$1, %rcx
	movq	%rcx, 8(%rax)
.LBB0_2:                                # %if.end
	movl	$8, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	xcalloc
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	imulq	$15, 8(%rax), %rax
	shrq	$4, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	hash_init, .Lfunc_end0-hash_init
	.cfi_endproc

	.align	16, 0x90
	.type	round_up_2,@function
round_up_2:                             # @round_up_2
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
	movl	$1, -12(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	shrq	$1, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB1_1
.LBB1_3:                                # %while.end
	movslq	-12(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	round_up_2, .Lfunc_end1-round_up_2
	.cfi_endproc

	.globl	hash_load
	.align	16, 0x90
	.type	hash_load,@function
hash_load:                              # @hash_load
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB2_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	hash_insert
	movq	-32(%rbp), %rsi
	addq	-40(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_1
.LBB2_3:                                # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	hash_load, .Lfunc_end2-hash_load
	.cfi_endproc

	.globl	hash_insert
	.align	16, 0x90
	.type	hash_insert,@function
hash_insert:                            # @hash_insert
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	hash_find_slot
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	hash_insert_at
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	hash_insert, .Lfunc_end3-hash_insert
	.cfi_endproc

	.globl	hash_find_slot
	.align	16, 0x90
	.type	hash_find_slot,@function
hash_find_slot:                         # @hash_find_slot
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
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	-24(%rbp), %rdi
	callq	*%rsi
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 40(%rax)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	divq	%rsi
	movl	%edx, %ecx
	movl	%ecx, -48(%rbp)
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	shlq	$3, %rdx
	addq	(%rdi), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	$0, (%rdx)
	jne	.LBB4_6
# BB#2:                                 # %if.then
	cmpq	$0, -40(%rbp)
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB4_5:                                # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB4_18
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	hash_deleted_item, %rax
	jne	.LBB4_10
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB4_9
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB4_9:                                # %if.end.10
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_15
.LBB4_10:                               # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB4_12
# BB#11:                                # %if.then.13
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_18
.LBB4_12:                               # %if.end.14
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB4_14
# BB#13:                                # %if.then.18
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_18
.LBB4_14:                               # %if.end.19
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 32(%rax)
.LBB4_15:                               # %if.end.21
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB4_17
# BB#16:                                # %if.then.23
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	orq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
.LBB4_17:                               # %if.end.26
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_1
.LBB4_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	hash_find_slot, .Lfunc_end4-hash_find_slot
	.cfi_endproc

	.globl	hash_find_item
	.align	16, 0x90
	.type	hash_find_item,@function
hash_find_item:                         # @hash_find_item
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
	callq	hash_find_slot
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	hash_deleted_item, %rax
	jne	.LBB5_3
.LBB5_2:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB5_4:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	hash_find_item, .Lfunc_end5-hash_find_item
	.cfi_endproc

	.globl	hash_insert_at
	.align	16, 0x90
	.type	hash_insert_at,@function
hash_insert_at:                         # @hash_insert_at
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	hash_deleted_item, %rax
	jne	.LBB6_3
.LBB6_2:                                # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB6_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jb	.LBB6_5
# BB#4:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	hash_rehash
.LBB6_5:                                # %if.end.5
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	hash_insert_at, .Lfunc_end6-hash_insert_at
	.cfi_endproc

	.align	16, 0x90
	.type	hash_rehash,@function
hash_rehash:                            # @hash_rehash
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
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdx
	shlq	$1, %rdx
	movq	%rdx, 8(%rdi)
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	addl	$1, %eax
	movl	%eax, 48(%rdx)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	shrq	$4, %rdi
	subq	%rdi, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, 16(%rdi)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	%rcx, %rdi
	callq	xcalloc
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	hash_find_slot
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	hash_rehash, .Lfunc_end7-hash_rehash
	.cfi_endproc

	.globl	hash_delete
	.align	16, 0x90
	.type	hash_delete,@function
hash_delete:                            # @hash_delete
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
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	hash_find_slot
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_delete_at
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	hash_delete, .Lfunc_end8-hash_delete
	.cfi_endproc

	.globl	hash_delete_at
	.align	16, 0x90
	.type	hash_delete_at,@function
hash_delete_at:                         # @hash_delete_at
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_3
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	hash_deleted_item, %rax
	je	.LBB9_3
# BB#2:                                 # %if.then
	movq	hash_deleted_item, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movq	$0, -8(%rbp)
.LBB9_4:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	hash_delete_at, .Lfunc_end9-hash_delete_at
	.cfi_endproc

	.globl	hash_free_items
	.align	16, 0x90
	.type	hash_free_items,@function
hash_free_items:                        # @hash_free_items
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	shlq	$3, %rsi
	addq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB10_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB10_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	hash_deleted_item, %rax
	je	.LBB10_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
.LBB10_5:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_7:                               # %for.end
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	hash_free_items, .Lfunc_end10-hash_free_items
	.cfi_endproc

	.globl	hash_delete_items
	.align	16, 0x90
	.type	hash_delete_items,@function
hash_delete_items:                      # @hash_delete_items
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	shlq	$3, %rdi
	addq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	hash_delete_items, .Lfunc_end11-hash_delete_items
	.cfi_endproc

	.globl	hash_free
	.align	16, 0x90
	.type	hash_free,@function
hash_free:                              # @hash_free
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
	cmpq	$0, -16(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	hash_free_items
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	hash_free, .Lfunc_end12-hash_free
	.cfi_endproc

	.globl	hash_map
	.align	16, 0x90
	.type	hash_map,@function
hash_map:                               # @hash_map
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
	movq	8(%rsi), %rsi
	movq	-8(%rbp), %rdi
	shlq	$3, %rsi
	addq	(%rdi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB13_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	hash_deleted_item, %rax
	je	.LBB13_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	*%rax
.LBB13_5:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_6
.LBB13_6:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_1
.LBB13_7:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	hash_map, .Lfunc_end13-hash_map
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI14_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI14_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_2:
	.quad	4636737291354636288     # double 100
	.text
	.globl	hash_print_stats
	.align	16, 0x90
	.type	hash_print_stats,@function
hash_print_stats:                       # @hash_print_stats
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
	subq	$80, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rcx
	movq	24(%rdi), %rdi
	movd	%rdi, %xmm0
	movaps	.LCPI14_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI14_1(%rip), %xmm2  # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movsd	.LCPI14_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movd	%rcx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	divsd	%xmm1, %xmm3
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movaps	%xmm3, %xmm0
	movb	$1, %al
	callq	fprintf
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-8(%rbp), %rsi
	cmpq	$0, 40(%rsi)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	je	.LBB14_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movaps	.LCPI14_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI14_1(%rip), %xmm2  # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movsd	.LCPI14_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movq	40(%rax), %xmm0         # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -64(%rbp)        # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB14_3
.LBB14_3:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.2, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	$1, %al
	callq	fprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	hash_print_stats, .Lfunc_end14-hash_print_stats
	.cfi_endproc

	.globl	hash_dump
	.align	16, 0x90
	.type	hash_dump,@function
hash_dump:                              # @hash_dump
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-8(%rbp), %rsi
	shlq	$3, %rdx
	addq	(%rsi), %rdx
	movq	%rdx, -48(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB15_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_7
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	hash_deleted_item, %rax
	je	.LBB15_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, (%rcx)
.LBB15_7:                               # %if.end.6
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_8
.LBB15_8:                               # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB15_3
.LBB15_9:                               # %for.end
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB15_11
# BB#10:                                # %if.then.8
	movl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	qsort
.LBB15_11:                              # %if.end.10
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	hash_dump, .Lfunc_end15-hash_dump
	.cfi_endproc

	.globl	hash_dump_select
	.align	16, 0x90
	.type	hash_dump_select,@function
hash_dump_select:                       # @hash_dump_select
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	shlq	$3, %rcx
	addq	(%rdx), %rcx
	movq	%rcx, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	hash_dump
	movq	%rax, -8(%rbp)
	jmp	.LBB16_18
.LBB16_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movl	$1, -60(%rbp)
.LBB16_4:                               # %if.end.3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB16_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB16_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_10
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	hash_deleted_item, %rax
	je	.LBB16_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB16_10
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB16_10:                              # %if.end.12
                                        #   in Loop: Header=BB16_5 Depth=1
	jmp	.LBB16_11
.LBB16_11:                              # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB16_5
.LBB16_12:                              # %for.end
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	cmpl	$0, -60(%rbp)
	je	.LBB16_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
.LBB16_14:                              # %if.end.19
	cmpq	$0, -40(%rbp)
	je	.LBB16_17
# BB#15:                                # %land.lhs.true.21
	cmpq	$1, -72(%rbp)
	jbe	.LBB16_17
# BB#16:                                # %if.then.23
	movl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	qsort
.LBB16_17:                              # %if.end.24
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	hash_dump_select, .Lfunc_end16-hash_dump_select
	.cfi_endproc

	.globl	hash_maparg
	.align	16, 0x90
	.type	hash_maparg,@function
hash_maparg:                            # @hash_maparg
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
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%r8, %rsi
	callq	hash_dump
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB17_1
.LBB17_4:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	hash_maparg, .Lfunc_end17-hash_maparg
	.cfi_endproc

	.type	hash_deleted_item,@object # @hash_deleted_item
	.data
	.globl	hash_deleted_item
	.align	8
hash_deleted_item:
	.quad	hash_deleted_item
	.size	hash_deleted_item, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Load=%ld/%ld=%.0f%%, "
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Rehash=%d, "
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Collisions=%ld/%ld=%.0f%%\n"
	.size	.L.str.2, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
