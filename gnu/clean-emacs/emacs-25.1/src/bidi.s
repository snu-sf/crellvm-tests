	.text
	.file	"bidi.bc"
	.globl	bidi_mirror_char
	.align	16, 0x90
	.type	bidi_mirror_char,@function
bidi_mirror_char:                       # @bidi_mirror_char
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
	movl	%edi, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:                                # %if.end
	cmpl	$0, -8(%rbp)
	jl	.LBB0_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$4194303, -8(%rbp)      # imm = 0x3FFFFF
	jle	.LBB0_5
.LBB0_4:                                # %if.then.3
	callq	emacs_abort
.LBB0_5:                                # %if.end.4
	movq	bidi_mirror_table, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	jne	.LBB0_10
# BB#6:                                 # %if.then.8
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB0_8
# BB#7:                                 # %lor.lhs.false.12
	cmpl	$4194303, -20(%rbp)     # imm = 0x3FFFFF
	jle	.LBB0_9
.LBB0_8:                                # %if.then.15
	callq	emacs_abort
.LBB0_9:                                # %if.end.16
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:                               # %if.end.17
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bidi_mirror_char, .Lfunc_end0-bidi_mirror_char
	.cfi_endproc

	.globl	bidi_push_it
	.align	16, 0x90
	.type	bidi_push_it,@function
bidi_push_it:                           # @bidi_push_it
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
	movq	bidi_cache_max_elts, %rdi
	addq	$50000, %rdi            # imm = 0xC350
	movq	%rdi, bidi_cache_max_elts
	movq	bidi_cache_idx, %rdi
	callq	bidi_cache_ensure_space
	movl	$2328, %eax             # imm = 0x918
	movl	%eax, %edx
	movq	bidi_cache_idx, %rdi
	movq	%rdi, %rcx
	addq	$1, %rcx
	movq	%rcx, bidi_cache_idx
	imulq	$2328, %rdi, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	bidi_cache_start, %rcx
	movl	bidi_cache_sp, %eax
	movl	%eax, %r8d
	addl	$1, %r8d
	movl	%r8d, bidi_cache_sp
	movslq	%eax, %rdx
	movq	%rcx, bidi_cache_start_stack(,%rdx,8)
	movq	bidi_cache_idx, %rcx
	movq	%rcx, bidi_cache_start
	movq	$-1, bidi_cache_last_idx
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bidi_push_it, .Lfunc_end1-bidi_push_it
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_ensure_space,@function
bidi_cache_ensure_space:                # @bidi_cache_ensure_space
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	bidi_cache_size, %rdi
	jl	.LBB2_21
# BB#1:                                 # %if.then
	movq	$200, -16(%rbp)
	movq	bidi_cache_size, %rax
	movq	bidi_cache_max_elts, %rcx
	subq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB2_3
# BB#2:                                 # %if.then.2
	movq	bidi_cache_max_elts, %rax
	subq	bidi_cache_size, %rax
	movq	%rax, -16(%rbp)
.LBB2_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	bidi_cache_size, %rcx
	addq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB2_5
# BB#4:                                 # %cond.true
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false
	movq	bidi_cache_size, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB2_6:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	bidi_cache_max_elts, %rax
	jg	.LBB2_20
# BB#7:                                 # %if.then.9
	movabsq	$3961929569095694, %rax # imm = 0xE135A9C97500E
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	bidi_cache_max_elts, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	-32(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jge	.LBB2_9
# BB#8:                                 # %cond.true.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false.12
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB2_10:                               # %cond.end.13
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB2_12
# BB#11:                                # %cond.true.16
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_16
.LBB2_12:                               # %cond.false.17
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB2_14
# BB#13:                                # %cond.true.19
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_15
.LBB2_14:                               # %cond.false.20
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB2_15:                               # %cond.end.21
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB2_16:                               # %cond.end.23
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	bidi_cache, %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	subq	bidi_cache_size, %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jle	.LBB2_18
# BB#17:                                # %cond.true.28
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_19
.LBB2_18:                               # %cond.false.29
	movq	-8(%rbp), %rax
	subq	bidi_cache_size, %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB2_19:                               # %cond.end.32
	movq	-96(%rbp), %rax         # 8-byte Reload
	movabsq	$bidi_cache_size, %rsi
	movl	$2328, %ecx             # imm = 0x918
	movl	%ecx, %r8d
	movq	-40(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	xpalloc
	movq	%rax, bidi_cache
.LBB2_20:                               # %if.end.34
	jmp	.LBB2_21
.LBB2_21:                               # %if.end.35
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bidi_cache_ensure_space, .Lfunc_end2-bidi_cache_ensure_space
	.cfi_endproc

	.globl	bidi_pop_it
	.align	16, 0x90
	.type	bidi_pop_it,@function
bidi_pop_it:                            # @bidi_pop_it
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, bidi_cache_start
	jg	.LBB3_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB3_2:                                # %if.end
	movl	$2328, %eax             # imm = 0x918
	movl	%eax, %edx
	movq	bidi_cache_start, %rcx
	subq	$1, %rcx
	movq	%rcx, bidi_cache_idx
	movq	-8(%rbp), %rcx
	movq	bidi_cache_idx, %rsi
	imulq	$2328, %rsi, %rsi       # imm = 0x918
	addq	bidi_cache, %rsi
	movq	%rcx, %rdi
	callq	memcpy
	cmpl	$0, bidi_cache_sp
	jg	.LBB3_4
# BB#3:                                 # %if.then.2
	callq	emacs_abort
.LBB3_4:                                # %if.end.3
	movl	bidi_cache_sp, %eax
	addl	$-1, %eax
	movl	%eax, bidi_cache_sp
	movslq	%eax, %rcx
	movq	bidi_cache_start_stack(,%rcx,8), %rcx
	movq	%rcx, bidi_cache_start
	movq	$-1, bidi_cache_last_idx
	movq	bidi_cache_max_elts, %rcx
	subq	$50000, %rcx            # imm = 0xC350
	movq	%rcx, bidi_cache_max_elts
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bidi_pop_it, .Lfunc_end3-bidi_pop_it
	.cfi_endproc

	.globl	bidi_shelve_cache
	.align	16, 0x90
	.type	bidi_shelve_cache,@function
bidi_shelve_cache:                      # @bidi_shelve_cache
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
	subq	$48, %rsp
	cmpq	$0, bidi_cache_idx
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	imulq	$2328, bidi_cache_idx, %rax # imm = 0x918
	addq	$76, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	xmalloc
	movabsq	$bidi_cache_start_stack, %rdi
	movl	$40, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	bidi_cache_total_alloc, %rax
	movq	%rax, bidi_cache_total_alloc
	movq	-16(%rbp), %rax
	movq	bidi_cache_idx, %rsi
	movq	%rsi, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	bidi_cache, %rsi
	imulq	$2328, bidi_cache_idx, %r8 # imm = 0x918
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	callq	memcpy
	movq	-16(%rbp), %rax
	addq	$8, %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	addq	%rdx, %rax
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	movl	bidi_cache_sp, %ecx
	movl	%ecx, 48(%rax,%rdx)
	movq	-16(%rbp), %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	movq	bidi_cache_start, %rsi
	movq	%rsi, 52(%rax,%rdx)
	movq	-16(%rbp), %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	movq	bidi_cache_last_idx, %rsi
	movq	%rsi, 60(%rax,%rdx)
	movq	-16(%rbp), %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	movq	bidi_cache_max_elts, %rsi
	movq	%rsi, 68(%rax,%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bidi_shelve_cache, .Lfunc_end4-bidi_shelve_cache
	.cfi_endproc

	.globl	bidi_unshelve_cache
	.align	16, 0x90
	.type	bidi_unshelve_cache,@function
bidi_unshelve_cache:                    # @bidi_unshelve_cache
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
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_4
# BB#1:                                 # %if.then
	testb	$1, -9(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then.2
	movq	$0, bidi_cache_start
	movl	$0, bidi_cache_sp
	movq	$50000, bidi_cache_max_elts # imm = 0xC350
	callq	bidi_cache_reset
.LBB5_3:                                # %if.end
	jmp	.LBB5_8
.LBB5_4:                                # %if.else
	testb	$1, -9(%rbp)
	je	.LBB5_6
# BB#5:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	imulq	$2328, -32(%rbp), %rax  # imm = 0x918
	addq	$76, %rax
	movq	bidi_cache_total_alloc, %rcx
	subq	%rax, %rcx
	movq	%rcx, bidi_cache_total_alloc
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.5
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, bidi_cache_idx
	movq	bidi_cache_idx, %rdi
	callq	bidi_cache_ensure_space
	movabsq	$bidi_cache_start_stack, %rax
	movl	$40, %ecx
	movl	%ecx, %edx
	movq	bidi_cache, %rdi
	movq	-24(%rbp), %rsi
	addq	$8, %rsi
	imulq	$2328, bidi_cache_idx, %r8 # imm = 0x918
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rax
	addq	$8, %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	addq	%rdx, %rax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-24(%rbp), %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	movl	48(%rax,%rdx), %ecx
	movl	%ecx, bidi_cache_sp
	movq	-24(%rbp), %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	movq	52(%rax,%rdx), %rax
	movq	%rax, bidi_cache_start
	movq	-24(%rbp), %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	movq	60(%rax,%rdx), %rax
	movq	%rax, bidi_cache_last_idx
	movq	-24(%rbp), %rax
	imulq	$2328, bidi_cache_idx, %rdx # imm = 0x918
	movq	68(%rax,%rdx), %rax
	movq	%rax, bidi_cache_max_elts
	imulq	$2328, bidi_cache_idx, %rax # imm = 0x918
	addq	$76, %rax
	movq	bidi_cache_total_alloc, %rdx
	subq	%rax, %rdx
	movq	%rdx, bidi_cache_total_alloc
.LBB5_7:                                # %if.end.35
	movq	-24(%rbp), %rdi
	callq	xfree
.LBB5_8:                                # %if.end.36
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	bidi_unshelve_cache, .Lfunc_end5-bidi_unshelve_cache
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_reset,@function
bidi_cache_reset:                       # @bidi_cache_reset
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
	xorl	%edi, %edi
	callq	bidi_cache_reset_to
	popq	%rbp
	retq
.Lfunc_end6:
	.size	bidi_cache_reset, .Lfunc_end6-bidi_cache_reset
	.cfi_endproc

	.globl	bidi_init_it
	.align	16, 0x90
	.type	bidi_init_it,@function
bidi_init_it:                           # @bidi_init_it
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
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, -32(%rbp)
	testb	$1, bidi_initialized
	jne	.LBB7_2
# BB#1:                                 # %if.then
	callq	bidi_initialize
.LBB7_2:                                # %if.end
	cmpq	$0, -8(%rbp)
	jl	.LBB7_4
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB7_4:                                # %if.end.3
	cmpq	$0, -16(%rbp)
	jl	.LBB7_6
# BB#5:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB7_6:                                # %if.end.7
	movb	-17(%rbp), %al
	movq	-32(%rbp), %rcx
	andb	$1, %al
	movb	2320(%rcx), %dl
	shlb	$2, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 2320(%rcx)
	movq	-32(%rbp), %rcx
	movq	$-1, 24(%rcx)
	movq	-32(%rbp), %rcx
	movb	2320(%rcx), %al
	andb	$-2, %al
	orb	$1, %al
	movb	%al, 2320(%rcx)
	movq	-32(%rbp), %rdi
	callq	bidi_set_paragraph_end
	movq	-32(%rbp), %rcx
	movb	2320(%rcx), %al
	andb	$-3, %al
	orb	$2, %al
	movb	%al, 2320(%rcx)
	movq	-32(%rbp), %rcx
	movq	$-1, 2312(%rcx)
	movq	-32(%rbp), %rcx
	movl	$6, 40(%rcx)
	movq	-32(%rbp), %rcx
	movl	$6, 44(%rcx)
	movq	-32(%rbp), %rcx
	movl	$6, 48(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 84(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 80(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 100(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 96(%rcx)
	movq	-32(%rbp), %rcx
	movq	$-1, 104(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 116(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 112(%rcx)
	movq	-32(%rbp), %rcx
	movq	$-1, 120(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 132(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 128(%rcx)
	movq	-32(%rbp), %rcx
	movq	$-1, 152(%rcx)
	movq	-32(%rbp), %rcx
	movl	$1, 180(%rcx)
	movq	-32(%rbp), %rcx
	movq	$-1, 192(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 200(%rcx)
	cmpq	$0, bidi_cache_start
	jne	.LBB7_8
# BB#7:                                 # %if.then.34
	callq	bidi_cache_shrink
	jmp	.LBB7_9
.LBB7_8:                                # %if.else
	callq	bidi_cache_reset
.LBB7_9:                                # %if.end.35
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	bidi_init_it, .Lfunc_end7-bidi_init_it
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_initialize,@function
bidi_initialize:                        # @bidi_initialize
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
	movabsq	$.L.str.11, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	uniprop_table
	xorl	%edi, %edi
	movq	%rax, bidi_type_table
	movq	bidi_type_table, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB8_2:                                # %if.end
	movabsq	$bidi_type_table, %rdi
	callq	staticpro
	movabsq	$.L.str.12, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	uniprop_table
	xorl	%edi, %edi
	movq	%rax, bidi_mirror_table
	movq	bidi_mirror_table, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_4
# BB#3:                                 # %if.then.7
	callq	emacs_abort
.LBB8_4:                                # %if.end.8
	movabsq	$bidi_mirror_table, %rdi
	callq	staticpro
	movabsq	$.L.str.13, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	uniprop_table
	xorl	%edi, %edi
	movq	%rax, bidi_brackets_table
	movq	bidi_brackets_table, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_6
# BB#5:                                 # %if.then.13
	callq	emacs_abort
.LBB8_6:                                # %if.end.14
	movabsq	$bidi_brackets_table, %rdi
	callq	staticpro
	movl	$741, %edi              # imm = 0x2E5
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fsymbol_value
	movq	%rax, paragraph_start_re
	movq	paragraph_start_re, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB8_8
# BB#7:                                 # %if.then.18
	movabsq	$.L.str.14, %rdi
	callq	build_string
	movq	%rax, paragraph_start_re
.LBB8_8:                                # %if.end.20
	movabsq	$paragraph_start_re, %rdi
	callq	staticpro
	movl	$740, %edi              # imm = 0x2E4
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fsymbol_value
	movq	%rax, paragraph_separate_re
	movq	paragraph_separate_re, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB8_10
# BB#9:                                 # %if.then.24
	movabsq	$.L.str.15, %rdi
	callq	build_string
	movq	%rax, paragraph_separate_re
.LBB8_10:                               # %if.end.26
	movabsq	$paragraph_separate_re, %rdi
	callq	staticpro
	movl	$0, bidi_cache_sp
	movq	$0, bidi_cache_total_alloc
	movq	$50000, bidi_cache_max_elts # imm = 0xC350
	movb	$1, bidi_initialized
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	bidi_initialize, .Lfunc_end8-bidi_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_set_paragraph_end,@function
bidi_set_paragraph_end:                 # @bidi_set_paragraph_end
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
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 204(%rdi)
	movq	-8(%rbp), %rdi
	movb	218(%rdi), %al
	movq	-8(%rbp), %rdi
	movb	%al, 52(%rdi)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	bidi_set_paragraph_end, .Lfunc_end9-bidi_set_paragraph_end
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_shrink,@function
bidi_cache_shrink:                      # @bidi_cache_shrink
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
	cmpq	$200, bidi_cache_size
	jle	.LBB10_2
# BB#1:                                 # %if.then
	movl	$465600, %eax           # imm = 0x71AC0
	movl	%eax, %esi
	movq	bidi_cache, %rcx
	movq	%rcx, %rdi
	callq	xrealloc
	movq	%rax, bidi_cache
	movq	$200, bidi_cache_size
.LBB10_2:                               # %if.end
	callq	bidi_cache_reset
	movq	$50000, bidi_cache_max_elts # imm = 0xC350
	popq	%rbp
	retq
.Lfunc_end10:
	.size	bidi_cache_shrink, .Lfunc_end10-bidi_cache_shrink
	.cfi_endproc

	.globl	bidi_paragraph_init
	.align	16, 0x90
	.type	bidi_paragraph_init,@function
bidi_paragraph_init:                    # @bidi_paragraph_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
	movb	%dl, %al
	movb	$1, %cl
	movl	%edi, -44(%rbp)
	movq	%rsi, -56(%rbp)
	andb	$1, %al
	movb	%al, -57(%rbp)
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -72(%rbp)
	movq	-56(%rbp), %rsi
	cmpq	$0, 2264(%rsi)
	movb	%cl, -185(%rbp)         # 1-byte Spill
	jne	.LBB11_2
# BB#1:                                 # %lor.rhs
	movq	-56(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB11_2:                               # %lor.end
	movb	-185(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -73(%rbp)
	testb	$1, -73(%rbp)
	je	.LBB11_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB11_5:                               # %cond.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	testb	$1, -73(%rbp)
	je	.LBB11_7
# BB#6:                                 # %cond.true.6
	movq	-56(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false.8
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB11_8:                               # %cond.end.9
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB11_11
# BB#9:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB11_11
# BB#10:                                # %if.then
	movl	$1, -44(%rbp)
	jmp	.LBB11_15
.LBB11_11:                              # %if.else
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB11_13
# BB#12:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB11_14
.LBB11_13:                              # %if.then.15
	callq	emacs_abort
.LBB11_14:                              # %if.end
	jmp	.LBB11_15
.LBB11_15:                              # %if.end.16
	cmpl	$1, -44(%rbp)
	jne	.LBB11_17
# BB#16:                                # %if.then.18
	movq	-56(%rbp), %rax
	movl	$1, 2304(%rax)
	movq	-56(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 2320(%rax)
	jmp	.LBB11_77
.LBB11_17:                              # %if.else.19
	cmpl	$2, -44(%rbp)
	jne	.LBB11_19
# BB#18:                                # %if.then.21
	movq	-56(%rbp), %rax
	movl	$2, 2304(%rax)
	movq	-56(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 2320(%rax)
	jmp	.LBB11_76
.LBB11_19:                              # %if.else.26
	cmpl	$0, -44(%rbp)
	jne	.LBB11_74
# BB#20:                                # %if.then.28
	movq	$-1, -136(%rbp)
	movl	$0, -140(%rbp)
	testb	$1, bidi_initialized
	jne	.LBB11_22
# BB#21:                                # %if.then.31
	callq	bidi_initialize
.LBB11_22:                              # %if.end.32
	movq	-56(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB11_25
# BB#23:                                # %land.lhs.true.35
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	cmpq	2312(%rcx), %rax
	jge	.LBB11_25
# BB#24:                                # %if.then.38
	jmp	.LBB11_84
.LBB11_25:                              # %if.end.39
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_26
	jmp	.LBB11_27
.LBB11_26:                              # %cond.true.44
	movq	-56(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	SDATA
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB11_28
.LBB11_27:                              # %cond.false.48
	movq	-56(%rbp), %rax
	movq	2264(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB11_28:                              # %cond.end.51
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jle	.LBB11_31
# BB#29:                                # %land.lhs.true.54
	movq	-72(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-56(%rbp), %rax
	movb	2288(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	bidi_char_at_pos
	cmpl	$10, %eax
	jne	.LBB11_31
# BB#30:                                # %if.then.61
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
.LBB11_31:                              # %if.end.63
	testb	$1, -73(%rbp)
	je	.LBB11_33
# BB#32:                                # %if.then.65
	movq	$0, -88(%rbp)
	jmp	.LBB11_34
.LBB11_33:                              # %if.else.66
	movq	-128(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	bidi_find_paragraph_start
	movq	%rax, -88(%rbp)
.LBB11_34:                              # %if.end.68
	movq	-56(%rbp), %rax
	movq	$-1, 2312(%rax)
	movq	-56(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 2320(%rax)
.LBB11_35:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_49 Depth 2
                                        #       Child Loop BB11_60 Depth 3
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	testb	$1, -73(%rbp)
	jne	.LBB11_37
# BB#36:                                # %if.then.74
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	current_buffer, %rdi
	movq	-72(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -128(%rbp)
.LBB11_37:                              # %if.end.76
                                        #   in Loop: Header=BB11_35 Depth=1
	leaq	-136(%rbp), %rcx
	leaq	-140(%rbp), %r8
	leaq	-112(%rbp), %rax
	leaq	-120(%rbp), %rdx
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi
	movq	-72(%rbp), %r9
	movq	-104(%rbp), %r10
	movq	-56(%rbp), %r11
	addq	$2256, %r11             # imm = 0x8D0
	movq	-56(%rbp), %rbx
	movq	2296(%rbx), %rbx
	movb	-73(%rbp), %r14b
	movq	-56(%rbp), %r15
	movb	2320(%r15), %r12b
	shrb	$2, %r12b
	andb	$1, %r12b
	andb	$1, %r14b
	andb	$1, %r12b
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movzbl	%r14b, %r13d
	movl	%r13d, 8(%rsp)
	movzbl	%r12b, %r13d
	movl	%r13d, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	$0, 40(%rsp)
	callq	find_first_strong_char
	movl	%eax, -144(%rbp)
	cmpl	$2, -144(%rbp)
	je	.LBB11_39
# BB#38:                                # %lor.lhs.false.85
                                        #   in Loop: Header=BB11_35 Depth=1
	cmpl	$7, -144(%rbp)
	jne	.LBB11_40
.LBB11_39:                              # %if.then.87
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	-56(%rbp), %rax
	movl	$2, 2304(%rax)
	jmp	.LBB11_43
.LBB11_40:                              # %if.else.89
                                        #   in Loop: Header=BB11_35 Depth=1
	cmpl	$1, -144(%rbp)
	jne	.LBB11_42
# BB#41:                                # %if.then.91
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	-56(%rbp), %rax
	movl	$1, 2304(%rax)
.LBB11_42:                              # %if.end.93
                                        #   in Loop: Header=BB11_35 Depth=1
	jmp	.LBB11_43
.LBB11_43:                              # %if.end.94
                                        #   in Loop: Header=BB11_35 Depth=1
	testb	$1, -73(%rbp)
	jne	.LBB11_68
# BB#44:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB11_35 Depth=1
	testb	$1, -57(%rbp)
	je	.LBB11_68
# BB#45:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 2304(%rax)
	jne	.LBB11_68
# BB#46:                                # %if.then.101
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	760(%rcx), %rax
	jne	.LBB11_48
# BB#47:                                # %if.then.104
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	-56(%rbp), %rax
	movl	$1, 2304(%rax)
	jmp	.LBB11_67
.LBB11_48:                              # %if.else.106
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -168(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB11_49:                              # %while.cond
                                        #   Parent Loop BB11_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_60 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-176(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	760(%rsi), %rdx
	movb	%cl, -233(%rbp)         # 1-byte Spill
	jle	.LBB11_51
# BB#50:                                # %land.rhs
                                        #   in Loop: Header=BB11_49 Depth=2
	movq	-160(%rbp), %rax
	cmpq	-88(%rbp), %rax
	setge	%cl
	movb	%cl, -233(%rbp)         # 1-byte Spill
.LBB11_51:                              # %land.end
                                        #   in Loop: Header=BB11_49 Depth=2
	movb	-233(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_52
	jmp	.LBB11_66
.LBB11_52:                              # %while.body
                                        #   in Loop: Header=BB11_49 Depth=2
	jmp	.LBB11_53
.LBB11_53:                              # %do.body.111
                                        #   in Loop: Header=BB11_49 Depth=2
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_55
# BB#54:                                # %if.then.114
                                        #   in Loop: Header=BB11_49 Depth=2
	movq	-176(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB11_64
.LBB11_55:                              # %if.else.116
                                        #   in Loop: Header=BB11_49 Depth=2
	jmp	.LBB11_56
.LBB11_56:                              # %do.body.117
                                        #   in Loop: Header=BB11_49 Depth=2
	movq	-176(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB11_58
# BB#57:                                # %if.then.120
                                        #   in Loop: Header=BB11_49 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-176(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB11_59
.LBB11_58:                              # %if.else.123
                                        #   in Loop: Header=BB11_49 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-176(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
.LBB11_59:                              # %if.end.130
                                        #   in Loop: Header=BB11_49 Depth=2
	jmp	.LBB11_60
.LBB11_60:                              # %while.cond.131
                                        #   Parent Loop BB11_35 Depth=1
                                        #     Parent Loop BB11_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB11_61
	jmp	.LBB11_62
.LBB11_61:                              # %while.body.134
                                        #   in Loop: Header=BB11_60 Depth=3
	movq	-184(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB11_60
.LBB11_62:                              # %while.end
                                        #   in Loop: Header=BB11_49 Depth=2
	jmp	.LBB11_63
.LBB11_63:                              # %do.end
                                        #   in Loop: Header=BB11_49 Depth=2
	jmp	.LBB11_64
.LBB11_64:                              # %if.end.136
                                        #   in Loop: Header=BB11_49 Depth=2
	jmp	.LBB11_65
.LBB11_65:                              # %do.end.137
                                        #   in Loop: Header=BB11_49 Depth=2
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	bidi_find_paragraph_start
	movq	%rax, -160(%rbp)
	jmp	.LBB11_49
.LBB11_66:                              # %while.end.139
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB11_67:                              # %if.end.140
                                        #   in Loop: Header=BB11_35 Depth=1
	jmp	.LBB11_68
.LBB11_68:                              # %if.end.141
                                        #   in Loop: Header=BB11_35 Depth=1
	jmp	.LBB11_69
.LBB11_69:                              # %do.cond
                                        #   in Loop: Header=BB11_35 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -73(%rbp)
	movb	%cl, -249(%rbp)         # 1-byte Spill
	jne	.LBB11_72
# BB#70:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB11_35 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -57(%rbp)
	movb	%cl, -249(%rbp)         # 1-byte Spill
	je	.LBB11_72
# BB#71:                                # %land.rhs.146
                                        #   in Loop: Header=BB11_35 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 2304(%rax)
	sete	%cl
	movb	%cl, -249(%rbp)         # 1-byte Spill
.LBB11_72:                              # %land.end.150
                                        #   in Loop: Header=BB11_35 Depth=1
	movb	-249(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_35
# BB#73:                                # %do.end.151
	jmp	.LBB11_75
.LBB11_74:                              # %if.else.152
	callq	emacs_abort
.LBB11_75:                              # %if.end.153
	jmp	.LBB11_76
.LBB11_76:                              # %if.end.154
	jmp	.LBB11_77
.LBB11_77:                              # %if.end.155
	movq	-56(%rbp), %rax
	cmpl	$1, 2304(%rax)
	je	.LBB11_80
# BB#78:                                # %land.lhs.true.159
	movq	-56(%rbp), %rax
	cmpl	$2, 2304(%rax)
	je	.LBB11_80
# BB#79:                                # %if.then.163
	movq	-56(%rbp), %rax
	movl	$1, 2304(%rax)
.LBB11_80:                              # %if.end.165
	movq	-56(%rbp), %rax
	cmpl	$2, 2304(%rax)
	jne	.LBB11_82
# BB#81:                                # %if.then.169
	movq	-56(%rbp), %rax
	movb	$1, 218(%rax)
	jmp	.LBB11_83
.LBB11_82:                              # %if.else.170
	movq	-56(%rbp), %rax
	movb	$0, 218(%rax)
.LBB11_83:                              # %if.end.174
	movq	-56(%rbp), %rdi
	callq	bidi_line_init
.LBB11_84:                              # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	bidi_paragraph_init, .Lfunc_end11-bidi_paragraph_init
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_char_at_pos,@function
bidi_char_at_pos:                       # @bidi_char_at_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB12_18
.LBB12_3:                               # %if.end
	jmp	.LBB12_8
.LBB12_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB12_6
# BB#5:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB12_7
.LBB12_7:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB12_8:                               # %if.end.8
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_10
# BB#9:                                 # %cond.true.11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB12_17
.LBB12_10:                              # %cond.false.14
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_12
# BB#11:                                # %cond.true.19
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	jmp	.LBB12_16
.LBB12_12:                              # %cond.false.32
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_14
# BB#13:                                # %cond.true.37
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB12_15
.LBB12_14:                              # %cond.false.51
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB12_15:                              # %cond.end.52
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB12_16:                              # %cond.end.54
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB12_17:                              # %cond.end.56
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB12_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	bidi_char_at_pos, .Lfunc_end12-bidi_char_at_pos
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_find_paragraph_start,@function
bidi_find_paragraph_start:              # @bidi_find_paragraph_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	paragraph_start_re, %rsi
	movq	%rsi, -24(%rbp)
	movq	current_buffer, %rsi
	movq	768(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	current_buffer, %rsi
	movq	776(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	callq	bidi_paragraph_cache_on_off
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB13_2:                               # %if.end
	jmp	.LBB13_3
.LBB13_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_15 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	760(%rsi), %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jle	.LBB13_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	cmpq	$7500, %rdx             # imm = 0x1D4C
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jge	.LBB13_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB13_3 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	callq	fast_looking_at
	cmpq	$0, %rax
	setl	%r10b
	movb	%r10b, -89(%rbp)        # 1-byte Spill
.LBB13_6:                               # %land.end
                                        #   in Loop: Header=BB13_3 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_7
	jmp	.LBB13_25
.LBB13_7:                               # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_8
.LBB13_8:                               # %do.body
                                        #   in Loop: Header=BB13_3 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_10
# BB#9:                                 # %if.then.8
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_19
.LBB13_10:                              # %if.else
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_11
.LBB13_11:                              # %do.body.10
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB13_13
# BB#12:                                # %if.then.13
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB13_14
.LBB13_13:                              # %if.else.16
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
.LBB13_14:                              # %if.end.23
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_15
.LBB13_15:                              # %while.cond.24
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB13_16
	jmp	.LBB13_17
.LBB13_16:                              # %while.body.27
                                        #   in Loop: Header=BB13_15 Depth=2
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_15
.LBB13_17:                              # %while.end
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_18
.LBB13_18:                              # %do.end
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_19
.LBB13_19:                              # %if.end.29
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_20
.LBB13_20:                              # %do.end.30
                                        #   in Loop: Header=BB13_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_23
# BB#21:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB13_3 Depth=1
	leaq	-72(%rbp), %rcx
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	region_cache_backward
	cmpl	$0, %eax
	je	.LBB13_23
# BB#22:                                # %if.then.35
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -16(%rbp)
	jmp	.LBB13_25
.LBB13_23:                              # %if.else.37
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	$-1, %rdx
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	find_newline_no_quit
	movq	%rax, -8(%rbp)
# BB#24:                                # %if.end.39
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_3
.LBB13_25:                              # %while.end.40
	cmpq	$7500, -56(%rbp)        # imm = 0x1D4C
	jl	.LBB13_27
# BB#26:                                # %if.then.43
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB13_27:                              # %if.end.45
	cmpq	$0, -48(%rbp)
	je	.LBB13_29
# BB#28:                                # %if.then.47
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	know_region_cache
.LBB13_29:                              # %if.end.48
	movq	current_buffer, %rax
	movq	760(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	current_buffer, %rax
	movq	776(%rax), %rdx
	callq	clip_to_bounds
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	bidi_find_paragraph_start, .Lfunc_end13-bidi_find_paragraph_start
	.cfi_endproc

	.align	16, 0x90
	.type	find_first_strong_char,@function
find_first_strong_char:                 # @find_first_strong_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
.Ltmp50:
	.cfi_offset %rbx, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
	movb	56(%rbp), %al
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movb	32(%rbp), %bl
	movb	24(%rbp), %r14b
	movq	16(%rbp), %r15
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r15, -80(%rbp)
	andb	$1, %r14b
	movb	%r14b, -81(%rbp)
	andb	$1, %bl
	movb	%bl, -82(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	andb	$1, %al
	movb	%al, -105(%rbp)
	testb	$1, -105(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB14_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %r9
	movb	-82(%rbp), %al
	movq	-96(%rbp), %r10
	movq	-104(%rbp), %r11
	andb	$1, %al
	movzbl	%al, %ebx
	movl	%ebx, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	bidi_fetch_char_skip_isolates
	xorl	%esi, %esi
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %edi
	callq	bidi_get_type
	movl	%eax, -124(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
.LBB14_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %edi
	callq	bidi_get_category
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$3, %eax
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB14_7
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_3 Depth=1
	testb	$1, -105(%rbp)
	je	.LBB14_6
# BB#5:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB14_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$16, -124(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB14_7
.LBB14_6:                               # %land.rhs
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-32(%rbp), %rax
	subq	-120(%rbp), %rax
	cmpq	$100000, %rax           # imm = 0x186A0
	setl	%cl
	movb	%cl, -129(%rbp)         # 1-byte Spill
.LBB14_7:                               # %land.end
                                        #   in Loop: Header=BB14_3 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_8
	jmp	.LBB14_16
.LBB14_8:                               # %for.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB14_10
# BB#9:                                 # %if.then.14
	movl	$6, -124(%rbp)
	jmp	.LBB14_16
.LBB14_10:                              # %if.end.15
                                        #   in Loop: Header=BB14_3 Depth=1
	testb	$1, -81(%rbp)
	jne	.LBB14_14
# BB#11:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB14_3 Depth=1
	cmpl	$6, -124(%rbp)
	jne	.LBB14_14
# BB#12:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	bidi_at_paragraph_end
	cmpq	$-1, %rax
	jl	.LBB14_14
# BB#13:                                # %if.then.22
	jmp	.LBB14_16
.LBB14_14:                              # %if.end.23
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %r9
	movb	-82(%rbp), %al
	movq	-96(%rbp), %r10
	movq	-104(%rbp), %r11
	andb	$1, %al
	movzbl	%al, %ebx
	movl	%ebx, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	bidi_fetch_char_skip_isolates
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=1
	xorl	%esi, %esi
	movl	-128(%rbp), %edi
	callq	bidi_get_type
	movl	%eax, -124(%rbp)
	jmp	.LBB14_3
.LBB14_16:                              # %for.end
	movl	-124(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	find_first_strong_char, .Lfunc_end14-find_first_strong_char
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_line_init,@function
bidi_line_init:                         # @bidi_line_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 184(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 204(%rdi)
	movq	-8(%rbp), %rdi
	movb	218(%rdi), %dl
	movq	-8(%rbp), %rdi
	movb	%dl, 52(%rdi)
	movq	-8(%rbp), %rdi
	movb	$0, 219(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movb	$0, 53(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 176(%rdi)
	movq	-8(%rbp), %rdi
	movq	$-1, 136(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movq	$-1, 152(%rdi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	cmpl	$2, 2304(%rsi)
	cmovel	%ecx, %eax
	movq	-8(%rbp), %rsi
	movzbl	218(%rsi), %edx
	movl	%eax, %esi
	callq	bidi_set_sos_type
	callq	bidi_cache_reset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	bidi_line_init, .Lfunc_end15-bidi_line_init
	.cfi_endproc

	.globl	bidi_move_to_visually_next
	.align	16, 0x90
	.type	bidi_move_to_visually_next,@function
bidi_move_to_visually_next:             # @bidi_move_to_visually_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$2400, %rsp             # imm = 0x960
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	jl	.LBB16_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jge	.LBB16_3
.LBB16_2:                               # %if.then
	callq	emacs_abort
.LBB16_3:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 184(%rax)
	jne	.LBB16_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movl	$1, 184(%rax)
.LBB16_5:                               # %if.end.5
	movq	-8(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB16_9
# BB#6:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$10, 16(%rax)
	je	.LBB16_8
# BB#7:                                 # %lor.lhs.false.7
	movq	-8(%rbp), %rax
	cmpl	$-1, 16(%rax)
	jne	.LBB16_9
.LBB16_8:                               # %if.then.10
	movq	-8(%rbp), %rdi
	callq	bidi_line_init
.LBB16_9:                               # %if.end.11
	movq	bidi_cache_idx, %rax
	cmpq	bidi_cache_start, %rax
	jne	.LBB16_13
# BB#10:                                # %if.then.13
	leaq	-2352(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	bidi_copy_it
	movq	-8(%rbp), %rsi
	movb	2320(%rsi), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB16_12
# BB#11:                                # %if.then.18
	movq	-2344(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2344(%rbp)
	movq	-2352(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2352(%rbp)
	movl	$10, -2336(%rbp)
	movq	$1, -2320(%rbp)
	movq	$1, -2328(%rbp)
.LBB16_12:                              # %if.end.23
	leaq	-2352(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bidi_cache_iterator_state
	movl	%eax, -2380(%rbp)       # 4-byte Spill
.LBB16_13:                              # %if.end.24
	movq	-8(%rbp), %rax
	movsbl	52(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	bidi_level_of_next_char
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB16_21
# BB#14:                                # %if.then.28
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setg	%cl
	andb	$1, %cl
	movb	%cl, -2353(%rbp)
	testb	$1, -2353(%rbp)
	je	.LBB16_16
# BB#15:                                # %cond.true
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2384(%rbp)       # 4-byte Spill
	jmp	.LBB16_17
.LBB16_16:                              # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -2384(%rbp)       # 4-byte Spill
.LBB16_17:                              # %cond.end
	movl	-2384(%rbp), %eax       # 4-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %edx
	movl	%eax, -2360(%rbp)
	movb	-2353(%rbp), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movl	%ecx, -2364(%rbp)
	movl	-12(%rbp), %eax
	addl	-2364(%rbp), %eax
	movl	%eax, -2368(%rbp)
	movq	-8(%rbp), %rdi
	movl	-2360(%rbp), %esi
	movb	-2353(%rbp), %r8b
	xorb	$-1, %r8b
	movzbl	%r8b, %eax
	andl	$1, %eax
	movl	%eax, %edx
	callq	bidi_find_other_level_edge
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	subl	184(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 184(%rdi)
	movq	-8(%rbp), %rdi
	callq	bidi_peek_at_next_level
	movl	%eax, -20(%rbp)
.LBB16_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-2368(%rbp), %eax
	je	.LBB16_20
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB16_18 Depth=1
	movl	-2364(%rbp), %eax
	addl	-2368(%rbp), %eax
	movl	%eax, -2368(%rbp)
	movl	-2364(%rbp), %eax
	addl	-2360(%rbp), %eax
	movl	%eax, -2360(%rbp)
	movq	-8(%rbp), %rdi
	movl	-2360(%rbp), %esi
	movb	-2353(%rbp), %cl
	xorb	$-1, %cl
	movzbl	%cl, %eax
	andl	$1, %eax
	movl	%eax, %edx
	callq	bidi_find_other_level_edge
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	subl	184(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 184(%rdi)
	movq	-8(%rbp), %rdi
	callq	bidi_peek_at_next_level
	movl	%eax, -20(%rbp)
	jmp	.LBB16_18
.LBB16_20:                              # %while.end
	movq	-8(%rbp), %rdi
	callq	bidi_level_of_next_char
	movl	%eax, -20(%rbp)
.LBB16_21:                              # %if.end.51
	movq	-8(%rbp), %rax
	cmpl	$1, 184(%rax)
	jne	.LBB16_35
# BB#22:                                # %land.lhs.true.55
	movq	-8(%rbp), %rax
	cmpl	$10, 16(%rax)
	je	.LBB16_24
# BB#23:                                # %lor.lhs.false.59
	movq	-8(%rbp), %rax
	cmpl	$-1, 16(%rax)
	jne	.LBB16_35
.LBB16_24:                              # %if.then.63
	movq	-8(%rbp), %rax
	cmpq	$0, 2264(%rax)
	jne	.LBB16_26
# BB#25:                                # %lor.lhs.false.65
	movq	-8(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB16_26
	jmp	.LBB16_27
.LBB16_26:                              # %if.then.69
	movq	-8(%rbp), %rax
	movq	2272(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 2312(%rcx)
	jmp	.LBB16_34
.LBB16_27:                              # %if.else
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	776(%rcx), %rax
	jge	.LBB16_33
# BB#28:                                # %if.then.74
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	32(%rdx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bidi_at_paragraph_end
	movq	%rax, -2376(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jg	.LBB16_30
# BB#29:                                # %if.then.85
	callq	emacs_abort
.LBB16_30:                              # %if.end.86
	cmpq	$0, -2376(%rbp)
	jl	.LBB16_32
# BB#31:                                # %if.then.89
	movq	-8(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 2320(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	24(%rdx), %rax
	addq	-2376(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 2312(%rdx)
.LBB16_32:                              # %if.end.97
	jmp	.LBB16_33
.LBB16_33:                              # %if.end.98
	jmp	.LBB16_34
.LBB16_34:                              # %if.end.99
	jmp	.LBB16_35
.LBB16_35:                              # %if.end.100
	movq	-8(%rbp), %rax
	cmpl	$1, 184(%rax)
	jne	.LBB16_47
# BB#36:                                # %land.lhs.true.104
	movq	bidi_cache_idx, %rax
	cmpq	bidi_cache_start, %rax
	jle	.LBB16_47
# BB#37:                                # %if.then.107
	movq	-8(%rbp), %rax
	movsbl	52(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	218(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB16_40
# BB#38:                                # %land.lhs.true.113
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	bidi_cache_idx, %rcx
	subq	$1, %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	8(%rcx), %rcx
	movq	bidi_cache_idx, %rdx
	subq	$1, %rdx
	imulq	$2328, %rdx, %rdx       # imm = 0x918
	addq	bidi_cache, %rdx
	addq	24(%rdx), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jle	.LBB16_40
# BB#39:                                # %if.then.125
	callq	bidi_cache_reset
	jmp	.LBB16_46
.LBB16_40:                              # %if.else.126
	movq	-8(%rbp), %rax
	movsbl	52(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	218(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB16_44
# BB#41:                                # %land.lhs.true.135
	movq	bidi_cache_idx, %rax
	cmpq	bidi_cache_size, %rax
	jl	.LBB16_44
# BB#42:                                # %land.lhs.true.138
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	bidi_cache_idx, %rcx
	subq	$1, %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB16_44
# BB#43:                                # %if.then.145
	callq	bidi_cache_reset
	jmp	.LBB16_45
.LBB16_44:                              # %if.else.146
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	bidi_cache_iterator_state
	movl	%eax, -2388(%rbp)       # 4-byte Spill
.LBB16_45:                              # %if.end.148
	jmp	.LBB16_46
.LBB16_46:                              # %if.end.149
	jmp	.LBB16_47
.LBB16_47:                              # %if.end.150
	addq	$2400, %rsp             # imm = 0x960
	popq	%rbp
	retq
.Lfunc_end16:
	.size	bidi_move_to_visually_next, .Lfunc_end16-bidi_move_to_visually_next
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_copy_it,@function
bidi_copy_it:                           # @bidi_copy_it
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	204(%rax), %rax
	shlq	$4, %rax
	addq	$224, %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	bidi_copy_it, .Lfunc_end17-bidi_copy_it
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_iterator_state,@function
bidi_cache_iterator_state:              # @bidi_cache_iterator_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movb	%sil, %cl
	movq	%rdi, -16(%rbp)
	andb	$1, %cl
	movb	%cl, -17(%rbp)
	andb	$1, %al
	movb	%al, -18(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$-1, 184(%rdi)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB18_2:                               # %if.end
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	bidi_cache_search
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jge	.LBB18_5
# BB#3:                                 # %land.lhs.true
	testb	$1, -18(%rbp)
	je	.LBB18_5
# BB#4:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB18_27
.LBB18_5:                               # %if.end.4
	cmpq	$0, -32(%rbp)
	jge	.LBB18_18
# BB#6:                                 # %if.then.6
	movq	bidi_cache_idx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	bidi_cache_ensure_space
	movq	bidi_cache_start, %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB18_11
# BB#7:                                 # %land.lhs.true.8
	movq	-32(%rbp), %rax
	cmpq	bidi_cache_size, %rax
	jge	.LBB18_11
# BB#8:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	$1, %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	imulq	$2328, %rdx, %rdx       # imm = 0x918
	addq	bidi_cache, %rdx
	addq	24(%rdx), %rcx
	cmpq	%rcx, %rax
	jg	.LBB18_10
# BB#9:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	bidi_cache_start, %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB18_11
.LBB18_10:                              # %if.then.20
	callq	bidi_cache_reset
	movq	bidi_cache_start, %rax
	movq	%rax, -32(%rbp)
.LBB18_11:                              # %if.end.21
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jg	.LBB18_13
# BB#12:                                # %if.then.24
	callq	emacs_abort
.LBB18_13:                              # %if.end.25
	movq	bidi_cache_size, %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB18_17
# BB#14:                                # %if.then.27
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	bidi_copy_it
	testb	$1, -17(%rbp)
	jne	.LBB18_16
# BB#15:                                # %if.then.30
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movb	$-1, 52(%rax)
.LBB18_16:                              # %if.end.32
	jmp	.LBB18_17
.LBB18_17:                              # %if.end.33
	jmp	.LBB18_22
.LBB18_18:                              # %if.else
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movl	%ecx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edi
	callq	bidi_check_type
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movl	%ecx, 44(%rax)
	movq	-16(%rbp), %rax
	movl	44(%rax), %edi
	callq	bidi_check_type
	testb	$1, -17(%rbp)
	je	.LBB18_20
# BB#19:                                # %if.then.41
	movq	-16(%rbp), %rax
	movb	52(%rax), %cl
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movb	%cl, 52(%rax)
	jmp	.LBB18_21
.LBB18_20:                              # %if.else.45
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movb	$-1, 52(%rax)
.LBB18_21:                              # %if.end.48
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rdx
	movq	%rdx, 104(%rax)
	movq	112(%rcx), %rcx
	movq	%rcx, 112(%rax)
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rdx
	movq	%rdx, 136(%rax)
	movq	144(%rcx), %rcx
	movq	%rcx, 144(%rax)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	-32(%rbp), %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	%rax, 192(%rcx)
	movq	-16(%rbp), %rax
	movl	200(%rax), %esi
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movl	%esi, 200(%rax)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	%rax, 152(%rcx)
	movq	-16(%rbp), %rax
	movl	160(%rax), %esi
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movl	%esi, 160(%rax)
.LBB18_22:                              # %if.end.63
	movq	bidi_cache_size, %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB18_26
# BB#23:                                # %if.then.65
	movq	-32(%rbp), %rax
	movq	%rax, bidi_cache_last_idx
	movq	-32(%rbp), %rax
	cmpq	bidi_cache_idx, %rax
	jl	.LBB18_25
# BB#24:                                # %if.then.67
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, bidi_cache_idx
.LBB18_25:                              # %if.end.69
	movl	$1, -4(%rbp)
	jmp	.LBB18_27
.LBB18_26:                              # %if.else.70
	movq	$-1, bidi_cache_last_idx
	movl	$0, -4(%rbp)
.LBB18_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	bidi_cache_iterator_state, .Lfunc_end18-bidi_cache_iterator_state
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_level_of_next_char,@function
bidi_level_of_next_char:                # @bidi_level_of_next_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp68:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$-2, -40(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$1, 184(%rdi)
	jne	.LBB19_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	$0, 2264(%rax)
	jne	.LBB19_3
# BB#2:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_3
	jmp	.LBB19_4
.LBB19_3:                               # %cond.true
	movq	-24(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB19_5
.LBB19_4:                               # %cond.false
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB19_5:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB19_7
# BB#6:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movsbl	52(%rax), %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB19_71
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.5
	movq	bidi_cache_idx, %rax
	cmpq	bidi_cache_start, %rax
	jle	.LBB19_24
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB19_24
# BB#10:                                # %if.then.8
	movb	$1, %al
	movq	-24(%rbp), %rcx
	cmpq	$0, 2264(%rcx)
	movb	%al, -161(%rbp)         # 1-byte Spill
	jne	.LBB19_12
# BB#11:                                # %lor.rhs
	movq	-24(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	movb	%al, -161(%rbp)         # 1-byte Spill
.LBB19_12:                              # %lor.end
	movb	-161(%rbp), %al         # 1-byte Reload
	movl	$1, %ecx
	xorl	%edx, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 184(%rsi)
	jle	.LBB19_16
# BB#13:                                # %if.then.20
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	jg	.LBB19_15
# BB#14:                                # %if.then.23
	callq	emacs_abort
.LBB19_15:                              # %if.end.24
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_19
.LBB19_16:                              # %if.else
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-52(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB19_18
# BB#17:                                # %if.then.31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB19_18:                              # %if.end.33
	jmp	.LBB19_19
.LBB19_19:                              # %if.end.34
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB19_21
# BB#20:                                # %if.then.39
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	bidi_cache_find
	movl	%eax, -28(%rbp)
.LBB19_21:                              # %if.end.41
	cmpl	$0, -28(%rbp)
	je	.LBB19_23
# BB#22:                                # %if.then.44
	movq	-24(%rbp), %rax
	movsbl	52(%rax), %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB19_71
.LBB19_23:                              # %if.end.47
	jmp	.LBB19_24
.LBB19_24:                              # %if.end.48
	movq	-24(%rbp), %rax
	cmpl	$-1, 184(%rax)
	jne	.LBB19_26
# BB#25:                                # %if.then.52
	callq	emacs_abort
.LBB19_26:                              # %if.end.53
	cmpl	$0, -28(%rbp)
	jne	.LBB19_28
# BB#27:                                # %if.then.56
	movq	-24(%rbp), %rdi
	callq	bidi_type_of_next_char
	movl	%eax, -28(%rbp)
.LBB19_28:                              # %if.end.58
	cmpl	$6, -28(%rbp)
	jne	.LBB19_30
# BB#29:                                # %if.then.61
	movq	-24(%rbp), %rax
	movsbl	52(%rax), %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB19_71
.LBB19_30:                              # %if.end.64
	movq	-24(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %edi
	callq	bidi_check_type
	movq	-24(%rbp), %rax
	cmpl	$22, 48(%rax)
	je	.LBB19_33
# BB#31:                                # %lor.lhs.false.71
	movq	-24(%rbp), %rax
	cmpl	$5, 48(%rax)
	je	.LBB19_33
# BB#32:                                # %lor.lhs.false.75
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	callq	bidi_isolate_fmt_char
	testb	$1, %al
	jne	.LBB19_33
	jmp	.LBB19_45
.LBB19_33:                              # %land.lhs.true.79
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB19_45
# BB#34:                                # %land.lhs.true.84
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	218(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB19_45
# BB#35:                                # %if.then.91
	movl	$40, %eax
	movl	%eax, %edx
	leaq	-136(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -72(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movq	-24(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -96(%rbp)
	movq	-24(%rbp), %rsi
	addq	$2256, %rsi             # imm = 0x8D0
	movq	%rcx, %rdi
	callq	memcpy
	movq	-24(%rbp), %rcx
	movb	2320(%rcx), %r8b
	shrb	$2, %r8b
	andb	$1, %r8b
	andb	$1, %r8b
	movb	%r8b, -141(%rbp)
	movq	-24(%rbp), %rcx
	movl	200(%rcx), %eax
	movl	%eax, -148(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	jg	.LBB19_37
# BB#36:                                # %if.then.102
	callq	emacs_abort
.LBB19_37:                              # %if.end.103
	jmp	.LBB19_38
.LBB19_38:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-88(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-136(%rbp), %r8
	leaq	-64(%rbp), %rax
	leaq	-96(%rbp), %rsi
	movq	-96(%rbp), %rdi
	addq	-80(%rbp), %rdi
	movq	%rdi, -80(%rbp)
	movq	-64(%rbp), %r9
	addq	-72(%rbp), %r9
	movq	%r9, -72(%rbp)
	movq	-24(%rbp), %r10
	movq	2296(%r10), %r10
	movb	-141(%rbp), %r11b
	andb	$1, %r11b
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%r10, %r9
	movzbl	%r11b, %ebx
	movl	%ebx, (%rsp)
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	callq	bidi_fetch_char
	xorl	%esi, %esi
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edi
	callq	bidi_get_type
	movl	%eax, -140(%rbp)
# BB#39:                                # %do.cond
                                        #   in Loop: Header=BB19_38 Depth=1
	movb	$1, %al
	cmpl	$22, -140(%rbp)
	movb	%al, -177(%rbp)         # 1-byte Spill
	je	.LBB19_43
# BB#40:                                # %lor.lhs.false.111
                                        #   in Loop: Header=BB19_38 Depth=1
	movb	$1, %al
	cmpl	$5, -140(%rbp)
	movb	%al, -177(%rbp)         # 1-byte Spill
	je	.LBB19_43
# BB#41:                                # %lor.lhs.false.114
                                        #   in Loop: Header=BB19_38 Depth=1
	movl	-140(%rbp), %edi
	callq	bidi_isolate_fmt_char
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -177(%rbp)         # 1-byte Spill
	jne	.LBB19_43
# BB#42:                                # %lor.rhs.117
                                        #   in Loop: Header=BB19_38 Depth=1
	movl	-56(%rbp), %edi
	callq	bidi_explicit_dir_char
	movb	%al, -177(%rbp)         # 1-byte Spill
.LBB19_43:                              # %lor.end.120
                                        #   in Loop: Header=BB19_38 Depth=1
	movb	-177(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_38
# BB#44:                                # %do.end
	movl	-140(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 144(%rcx)
	movq	-24(%rbp), %rcx
	movl	144(%rcx), %edi
	callq	bidi_check_type
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 136(%rdx)
.LBB19_45:                              # %if.end.127
	movl	$1, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	bidi_cache_iterator_state
	movq	-24(%rbp), %rdi
	cmpl	$6, 48(%rdi)
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB19_55
# BB#46:                                # %lor.lhs.false.132
	movq	-24(%rbp), %rax
	cmpl	$21, 48(%rax)
	je	.LBB19_55
# BB#47:                                # %lor.lhs.false.136
	movq	-24(%rbp), %rax
	cmpl	$10, 16(%rax)
	je	.LBB19_55
# BB#48:                                # %lor.lhs.false.140
	movq	-24(%rbp), %rax
	cmpl	$-1, 16(%rax)
	je	.LBB19_55
# BB#49:                                # %lor.lhs.false.144
	movq	-24(%rbp), %rax
	cmpl	$22, 48(%rax)
	je	.LBB19_53
# BB#50:                                # %lor.lhs.false.148
	movq	-24(%rbp), %rax
	cmpl	$5, 48(%rax)
	je	.LBB19_53
# BB#51:                                # %lor.lhs.false.152
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	callq	bidi_isolate_fmt_char
	testb	$1, %al
	jne	.LBB19_53
# BB#52:                                # %lor.lhs.false.156
	movq	-24(%rbp), %rax
	movl	16(%rax), %edi
	callq	bidi_explicit_dir_char
	testb	$1, %al
	jne	.LBB19_53
	jmp	.LBB19_56
.LBB19_53:                              # %land.lhs.true.160
	movq	-24(%rbp), %rax
	cmpl	$6, 144(%rax)
	je	.LBB19_55
# BB#54:                                # %lor.lhs.false.165
	movq	-24(%rbp), %rax
	cmpl	$21, 144(%rax)
	jne	.LBB19_56
.LBB19_55:                              # %if.then.170
	movq	-24(%rbp), %rax
	movzbl	218(%rax), %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB19_70
.LBB19_56:                              # %if.else.175
	movl	-32(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB19_64
# BB#57:                                # %if.then.178
	cmpl	$2, -28(%rbp)
	jne	.LBB19_59
# BB#58:                                # %if.then.181
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB19_63
.LBB19_59:                              # %if.else.182
	cmpl	$3, -28(%rbp)
	je	.LBB19_61
# BB#60:                                # %lor.lhs.false.185
	cmpl	$4, -28(%rbp)
	jne	.LBB19_62
.LBB19_61:                              # %if.then.188
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -32(%rbp)
.LBB19_62:                              # %if.end.190
	jmp	.LBB19_63
.LBB19_63:                              # %if.end.191
	jmp	.LBB19_69
.LBB19_64:                              # %if.else.192
	cmpl	$1, -28(%rbp)
	je	.LBB19_67
# BB#65:                                # %lor.lhs.false.195
	cmpl	$3, -28(%rbp)
	je	.LBB19_67
# BB#66:                                # %lor.lhs.false.198
	cmpl	$4, -28(%rbp)
	jne	.LBB19_68
.LBB19_67:                              # %if.then.201
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB19_68:                              # %if.end.203
	jmp	.LBB19_69
.LBB19_69:                              # %if.end.204
	jmp	.LBB19_70
.LBB19_70:                              # %if.end.205
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 52(%rdx)
	movl	-32(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB19_71:                              # %return
	movl	-12(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	bidi_level_of_next_char, .Lfunc_end19-bidi_level_of_next_char
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_find_other_level_edge,@function
bidi_find_other_level_edge:             # @bidi_find_other_level_edge
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
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB20_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subl	184(%rcx), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movl	184(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB20_3:                               # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %edi
	movl	-20(%rbp), %esi
	movb	-13(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	bidi_cache_find_level_change
	movq	%rax, -32(%rbp)
	cmpq	bidi_cache_start, %rax
	jl	.LBB20_5
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	bidi_cache_fetch_state
	jmp	.LBB20_15
.LBB20_5:                               # %if.else
	testb	$1, -13(%rbp)
	je	.LBB20_7
# BB#6:                                 # %if.then.4
	callq	emacs_abort
.LBB20_7:                               # %if.end
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	bidi_cache_iterator_state
	cmpl	$0, %eax
	jne	.LBB20_9
# BB#8:                                 # %if.then.7
	callq	emacs_abort
.LBB20_9:                               # %if.end.8
	jmp	.LBB20_10
.LBB20_10:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	bidi_level_of_next_char
	movl	$1, %esi
	xorl	%edx, %edx
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	bidi_cache_iterator_state
	cmpl	$0, %eax
	jne	.LBB20_12
# BB#11:                                # %if.then.12
                                        #   in Loop: Header=BB20_10 Depth=1
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	bidi_cache_idx, %rcx
	subq	$1, %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	bidi_cache_fetch_state
	movl	$1, %eax
	movl	-36(%rbp), %edx
	movb	%dl, %r8b
	movq	-8(%rbp), %rcx
	movb	%r8b, 52(%rcx)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	bidi_cache_iterator_state
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB20_12:                              # %if.end.16
                                        #   in Loop: Header=BB20_10 Depth=1
	jmp	.LBB20_13
.LBB20_13:                              # %do.cond
                                        #   in Loop: Header=BB20_10 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB20_10
# BB#14:                                # %do.end
	jmp	.LBB20_15
.LBB20_15:                              # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	bidi_find_other_level_edge, .Lfunc_end20-bidi_find_other_level_edge
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_peek_at_next_level,@function
bidi_peek_at_next_level:                # @bidi_peek_at_next_level
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	bidi_cache_idx, %rdi
	cmpq	bidi_cache_start, %rdi
	jne	.LBB21_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB21_2:                               # %if.end
	cmpq	$-1, bidi_cache_last_idx
	je	.LBB21_5
# BB#3:                                 # %lor.lhs.false
	movq	bidi_cache_last_idx, %rax
	movq	bidi_cache_idx, %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 184(%rax)
	jle	.LBB21_6
.LBB21_5:                               # %if.then.4
	movq	bidi_cache_idx, %rax
	subq	$1, %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.end.6
	movq	bidi_cache_last_idx, %rax
	movq	-16(%rbp), %rcx
	movslq	184(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %edx
	movl	%edx, -4(%rbp)
.LBB21_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	bidi_peek_at_next_level, .Lfunc_end21-bidi_peek_at_next_level
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_at_paragraph_end,@function
bidi_at_paragraph_end:                  # @bidi_at_paragraph_end
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	paragraph_separate_re, %rsi
	movq	%rsi, -24(%rbp)
	movq	paragraph_start_re, %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	current_buffer, %r8
	movq	776(%r8), %r8
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	callq	fast_looking_at
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jge	.LBB22_5
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	current_buffer, %r8
	movq	776(%r8), %r8
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	callq	fast_looking_at
	cmpq	$0, %rax
	jl	.LBB22_3
# BB#2:                                 # %if.then.7
	movq	$-1, -40(%rbp)
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movq	$-2, -40(%rbp)
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.8
	movq	-40(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	bidi_at_paragraph_end, .Lfunc_end22-bidi_at_paragraph_end
	.cfi_endproc

	.globl	bidi_find_first_overridden
	.align	16, 0x90
	.type	bidi_find_first_overridden,@function
bidi_find_first_overridden:             # @bidi_find_first_overridden
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	768(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB23_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	bidi_resolve_weak
	movl	%eax, -20(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 48(%rax)
	je	.LBB23_6
.LBB23_3:                               # %lor.lhs.false
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$1, -20(%rbp)
	jne	.LBB23_7
# BB#4:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 48(%rax)
	je	.LBB23_6
# BB#5:                                 # %lor.lhs.false.6
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$7, 48(%rax)
	jne	.LBB23_7
.LBB23_6:                               # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB23_7:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_8
.LBB23_8:                               # %do.cond
                                        #   in Loop: Header=BB23_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	768(%rsi), %rdx
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jne	.LBB23_12
# BB#9:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB23_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	current_buffer, %rsi
	cmpq	768(%rsi), %rdx
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jge	.LBB23_12
# BB#10:                                # %land.lhs.true.15
                                        #   in Loop: Header=BB23_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpl	$-1, 16(%rdx)
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB23_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$10, 16(%rax)
	setne	%cl
	movb	%cl, -21(%rbp)          # 1-byte Spill
.LBB23_12:                              # %land.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_1
# BB#13:                                # %do.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	bidi_find_first_overridden, .Lfunc_end23-bidi_find_first_overridden
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_resolve_weak,@function
bidi_resolve_weak:                      # @bidi_resolve_weak
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
	subq	$2432, %rsp             # imm = 0x980
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	204(%rdi), %rdi
	movq	-8(%rbp), %rax
	addq	$208, %rax
	shlq	$4, %rdi
	addq	%rdi, %rax
	movzbl	10(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	bidi_resolve_explicit
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	2256(%rdi), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB24_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 2264(%rax)
	je	.LBB24_3
.LBB24_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -2400(%rbp)       # 8-byte Spill
	jmp	.LBB24_4
.LBB24_3:                               # %cond.false
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -2400(%rbp)       # 8-byte Spill
.LBB24_4:                               # %cond.end
	movq	-2400(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2368(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$208, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movzbl	11(%rdx), %ecx
	sarl	$1, %ecx
	andl	$3, %ecx
	movl	%ecx, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$6, 40(%rax)
	jne	.LBB24_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	bidi_set_sos_type
.LBB24_6:                               # %if.end
	cmpl	$21, -12(%rbp)
	je	.LBB24_10
# BB#7:                                 # %lor.lhs.false.15
	cmpl	$22, -12(%rbp)
	je	.LBB24_10
# BB#8:                                 # %lor.lhs.false.18
	cmpl	$5, -12(%rbp)
	je	.LBB24_10
# BB#9:                                 # %lor.lhs.false.21
	cmpl	$7, -12(%rbp)
	jne	.LBB24_11
.LBB24_10:                              # %if.then.24
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
.LBB24_11:                              # %if.end.25
	movq	-8(%rbp), %rax
	movl	44(%rax), %edi
	callq	bidi_check_type
	cmpl	$2, -16(%rbp)
	jne	.LBB24_13
# BB#12:                                # %if.then.29
	movl	$2, -12(%rbp)
	jmp	.LBB24_135
.LBB24_13:                              # %if.else
	cmpl	$1, -16(%rbp)
	jne	.LBB24_15
# BB#14:                                # %if.then.32
	movl	$1, -12(%rbp)
	jmp	.LBB24_134
.LBB24_15:                              # %if.else.33
	cmpl	$20, -12(%rbp)
	jne	.LBB24_30
# BB#16:                                # %if.then.36
	movq	-8(%rbp), %rax
	cmpl	$0, 80(%rax)
	je	.LBB24_22
# BB#17:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$6, 80(%rax)
	je	.LBB24_22
# BB#18:                                # %if.then.44
	movq	-8(%rbp), %rax
	movl	80(%rax), %edi
	callq	bidi_isolate_fmt_char
	testb	$1, %al
	jne	.LBB24_19
	jmp	.LBB24_20
.LBB24_19:                              # %if.then.48
	movl	$23, -12(%rbp)
	jmp	.LBB24_21
.LBB24_20:                              # %if.else.49
	movq	-8(%rbp), %rax
	movl	80(%rax), %ecx
	movl	%ecx, -12(%rbp)
.LBB24_21:                              # %if.end.52
	jmp	.LBB24_29
.LBB24_22:                              # %if.else.53
	movq	-8(%rbp), %rax
	cmpl	$2, 180(%rax)
	jne	.LBB24_24
# BB#23:                                # %if.then.56
	movl	$2, -12(%rbp)
	jmp	.LBB24_28
.LBB24_24:                              # %if.else.57
	movq	-8(%rbp), %rax
	cmpl	$1, 180(%rax)
	jne	.LBB24_26
# BB#25:                                # %if.then.61
	movl	$1, -12(%rbp)
	jmp	.LBB24_27
.LBB24_26:                              # %if.else.62
	callq	emacs_abort
.LBB24_27:                              # %if.end.63
	jmp	.LBB24_28
.LBB24_28:                              # %if.end.64
	jmp	.LBB24_29
.LBB24_29:                              # %if.end.65
	jmp	.LBB24_30
.LBB24_30:                              # %if.end.66
	cmpl	$3, -12(%rbp)
	jne	.LBB24_33
# BB#31:                                # %land.lhs.true.69
	movq	-8(%rbp), %rax
	cmpl	$7, 96(%rax)
	jne	.LBB24_33
# BB#32:                                # %if.then.73
	movl	$4, -12(%rbp)
	jmp	.LBB24_133
.LBB24_33:                              # %if.else.74
	cmpl	$7, -12(%rbp)
	jne	.LBB24_35
# BB#34:                                # %if.then.77
	movl	$2, -12(%rbp)
	jmp	.LBB24_132
.LBB24_35:                              # %if.else.78
	cmpl	$17, -12(%rbp)
	jne	.LBB24_38
# BB#36:                                # %land.lhs.true.81
	movq	-8(%rbp), %rax
	cmpl	$3, 80(%rax)
	jne	.LBB24_38
# BB#37:                                # %land.lhs.true.86
	movq	-8(%rbp), %rax
	cmpl	$3, 84(%rax)
	je	.LBB24_42
.LBB24_38:                              # %lor.lhs.false.90
	cmpl	$19, -12(%rbp)
	jne	.LBB24_74
# BB#39:                                # %land.lhs.true.93
	movq	-8(%rbp), %rax
	cmpl	$3, 80(%rax)
	jne	.LBB24_41
# BB#40:                                # %land.lhs.true.98
	movq	-8(%rbp), %rax
	cmpl	$3, 84(%rax)
	je	.LBB24_42
.LBB24_41:                              # %lor.lhs.false.103
	movq	-8(%rbp), %rax
	cmpl	$4, 80(%rax)
	jne	.LBB24_74
.LBB24_42:                              # %if.then.108
	movq	-8(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB24_43
	jmp	.LBB24_44
.LBB24_43:                              # %cond.true.114
	movq	-8(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	SDATA
	movq	%rax, -2408(%rbp)       # 8-byte Spill
	jmp	.LBB24_45
.LBB24_44:                              # %cond.false.118
	movq	-8(%rbp), %rax
	movq	2264(%rax), %rax
	movq	%rax, -2408(%rbp)       # 8-byte Spill
.LBB24_45:                              # %cond.end.121
	movq	-2408(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2376(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	cmpq	-2368(%rbp), %rax
	jl	.LBB24_47
# BB#46:                                # %cond.true.125
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -2412(%rbp)       # 4-byte Spill
	jmp	.LBB24_48
.LBB24_47:                              # %cond.false.126
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	-2376(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movb	2288(%rcx), %dl
	shrb	$1, %dl
	andb	$1, %dl
	andb	$1, %dl
	movq	%rax, %rdi
	movzbl	%dl, %edx
	callq	bidi_char_at_pos
	movl	%eax, -2412(%rbp)       # 4-byte Spill
.LBB24_48:                              # %cond.end.130
	movl	-2412(%rbp), %eax       # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	bidi_get_type
	movl	%eax, -32(%rbp)
	cmpl	$5, -32(%rbp)
	je	.LBB24_50
# BB#49:                                # %lor.lhs.false.135
	movl	-28(%rbp), %edi
	callq	bidi_explicit_dir_char
	testb	$1, %al
	jne	.LBB24_50
	jmp	.LBB24_56
.LBB24_50:                              # %if.then.138
	leaq	-2360(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	bidi_copy_it
.LBB24_51:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	bidi_resolve_explicit
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	-24(%rbp), %eax
	movb	%dl, -2413(%rbp)        # 1-byte Spill
	jne	.LBB24_53
# BB#52:                                # %land.rhs
                                        #   in Loop: Header=BB24_51 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$5, 40(%rax)
	sete	%cl
	movb	%cl, -2413(%rbp)        # 1-byte Spill
.LBB24_53:                              # %land.end
                                        #   in Loop: Header=BB24_51 Depth=1
	movb	-2413(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB24_54
	jmp	.LBB24_55
.LBB24_54:                              # %while.body
                                        #   in Loop: Header=BB24_51 Depth=1
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB24_51
.LBB24_55:                              # %while.end
	leaq	-2360(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	bidi_copy_it
.LBB24_56:                              # %if.end.146
	cmpl	$17, -12(%rbp)
	jne	.LBB24_60
# BB#57:                                # %land.lhs.true.149
	cmpl	$3, -32(%rbp)
	jne	.LBB24_60
# BB#58:                                # %land.lhs.true.152
	movq	-8(%rbp), %rax
	cmpl	$7, 96(%rax)
	je	.LBB24_60
# BB#59:                                # %if.then.157
	movl	$3, -12(%rbp)
	jmp	.LBB24_73
.LBB24_60:                              # %if.else.158
	cmpl	$19, -12(%rbp)
	jne	.LBB24_72
# BB#61:                                # %if.then.161
	movq	-8(%rbp), %rax
	cmpl	$4, 80(%rax)
	jne	.LBB24_66
# BB#62:                                # %land.lhs.true.166
	cmpl	$4, -32(%rbp)
	je	.LBB24_65
# BB#63:                                # %lor.lhs.false.169
	cmpl	$3, -32(%rbp)
	jne	.LBB24_66
# BB#64:                                # %land.lhs.true.172
	movq	-8(%rbp), %rax
	cmpl	$7, 96(%rax)
	jne	.LBB24_66
.LBB24_65:                              # %if.then.177
	movl	$4, -12(%rbp)
	jmp	.LBB24_71
.LBB24_66:                              # %if.else.178
	movq	-8(%rbp), %rax
	cmpl	$3, 80(%rax)
	jne	.LBB24_70
# BB#67:                                # %land.lhs.true.183
	cmpl	$3, -32(%rbp)
	jne	.LBB24_70
# BB#68:                                # %land.lhs.true.186
	movq	-8(%rbp), %rax
	cmpl	$7, 96(%rax)
	je	.LBB24_70
# BB#69:                                # %if.then.191
	movl	$3, -12(%rbp)
.LBB24_70:                              # %if.end.192
	jmp	.LBB24_71
.LBB24_71:                              # %if.end.193
	jmp	.LBB24_72
.LBB24_72:                              # %if.end.194
	jmp	.LBB24_73
.LBB24_73:                              # %if.end.195
	jmp	.LBB24_131
.LBB24_74:                              # %if.else.196
	cmpl	$18, -12(%rbp)
	je	.LBB24_76
# BB#75:                                # %lor.lhs.false.199
	cmpl	$5, -12(%rbp)
	jne	.LBB24_130
.LBB24_76:                              # %if.then.202
	movq	-8(%rbp), %rax
	cmpl	$3, 80(%rax)
	jne	.LBB24_78
# BB#77:                                # %if.then.207
	movl	$3, -12(%rbp)
	jmp	.LBB24_129
.LBB24_78:                              # %if.else.208
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB24_83
# BB#79:                                # %land.lhs.true.212
	movq	-8(%rbp), %rax
	cmpl	$5, 176(%rax)
	je	.LBB24_83
# BB#80:                                # %if.then.215
	movq	-8(%rbp), %rax
	cmpl	$3, 176(%rax)
	jne	.LBB24_82
# BB#81:                                # %if.then.219
	movl	$3, -12(%rbp)
.LBB24_82:                              # %if.end.220
	jmp	.LBB24_128
.LBB24_83:                              # %if.else.221
	cmpl	$5, -12(%rbp)
	jne	.LBB24_90
# BB#84:                                # %land.lhs.true.224
	cmpl	$0, -24(%rbp)
	jne	.LBB24_90
# BB#85:                                # %land.lhs.true.227
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	bidi_explicit_dir_char
	testb	$1, %al
	jne	.LBB24_90
# BB#86:                                # %land.lhs.true.229
	movq	-8(%rbp), %rax
	cmpl	$1, 96(%rax)
	je	.LBB24_89
# BB#87:                                # %lor.lhs.false.234
	movq	-8(%rbp), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB24_90
# BB#88:                                # %land.lhs.true.239
	movq	-8(%rbp), %rax
	cmpl	$1, 180(%rax)
	jne	.LBB24_90
.LBB24_89:                              # %if.then.243
	movl	$1, -12(%rbp)
	jmp	.LBB24_127
.LBB24_90:                              # %if.else.244
	movq	-8(%rbp), %rax
	cmpq	$0, 168(%rax)
	jl	.LBB24_126
# BB#91:                                # %if.then.248
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, -2384(%rbp)
	movq	-8(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB24_92
	jmp	.LBB24_93
.LBB24_92:                              # %cond.true.257
	movq	-8(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	SDATA
	movq	%rax, -2424(%rbp)       # 8-byte Spill
	jmp	.LBB24_94
.LBB24_93:                              # %cond.false.261
	movq	-8(%rbp), %rax
	movq	2264(%rax), %rax
	movq	%rax, -2424(%rbp)       # 8-byte Spill
.LBB24_94:                              # %cond.end.264
	movq	-2424(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2392(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jg	.LBB24_96
# BB#95:                                # %if.then.269
	callq	emacs_abort
.LBB24_96:                              # %if.end.270
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	cmpq	-2368(%rbp), %rax
	jl	.LBB24_98
# BB#97:                                # %cond.true.276
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -2428(%rbp)       # 4-byte Spill
	jmp	.LBB24_99
.LBB24_98:                              # %cond.false.277
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	-2392(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movb	2288(%rcx), %dl
	shrb	$1, %dl
	andb	$1, %dl
	andb	$1, %dl
	movq	%rax, %rdi
	movzbl	%dl, %edx
	callq	bidi_char_at_pos
	movl	%eax, -2428(%rbp)       # 4-byte Spill
.LBB24_99:                              # %cond.end.288
	movl	-2428(%rbp), %eax       # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	bidi_get_type
	movl	%eax, -32(%rbp)
	cmpl	$18, -32(%rbp)
	je	.LBB24_102
# BB#100:                               # %lor.lhs.false.293
	cmpl	$5, -32(%rbp)
	je	.LBB24_102
# BB#101:                               # %lor.lhs.false.296
	movl	-28(%rbp), %edi
	callq	bidi_explicit_dir_char
	testb	$1, %al
	jne	.LBB24_102
	jmp	.LBB24_114
.LBB24_102:                             # %if.then.299
	leaq	-2360(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	bidi_copy_it
.LBB24_103:                             # %while.cond.300
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	bidi_resolve_explicit
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	-24(%rbp), %eax
	movb	%dl, -2429(%rbp)        # 1-byte Spill
	jne	.LBB24_107
# BB#104:                               # %land.rhs.304
                                        #   in Loop: Header=BB24_103 Depth=1
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpl	$5, 40(%rcx)
	movb	%al, -2430(%rbp)        # 1-byte Spill
	je	.LBB24_106
# BB#105:                               # %lor.rhs
                                        #   in Loop: Header=BB24_103 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$18, 40(%rax)
	sete	%cl
	movb	%cl, -2430(%rbp)        # 1-byte Spill
.LBB24_106:                             # %lor.end
                                        #   in Loop: Header=BB24_103 Depth=1
	movb	-2430(%rbp), %al        # 1-byte Reload
	movb	%al, -2429(%rbp)        # 1-byte Spill
.LBB24_107:                             # %land.end.311
                                        #   in Loop: Header=BB24_103 Depth=1
	movb	-2429(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB24_108
	jmp	.LBB24_109
.LBB24_108:                             # %while.body.312
                                        #   in Loop: Header=BB24_103 Depth=1
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB24_103
.LBB24_109:                             # %while.end.314
	cmpl	$5, -12(%rbp)
	jne	.LBB24_112
# BB#110:                               # %land.lhs.true.317
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-2352(%rbp), %rcx
	addq	-2336(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB24_112
# BB#111:                               # %if.then.324
	movq	-2352(%rbp), %rax
	movq	%rax, -2384(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB24_113
.LBB24_112:                             # %if.else.326
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -2384(%rbp)
.LBB24_113:                             # %if.end.328
	leaq	-2360(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	bidi_copy_it
.LBB24_114:                             # %if.end.329
	movq	-2384(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 168(%rcx)
	cmpl	$3, -32(%rbp)
	jne	.LBB24_122
# BB#115:                               # %if.then.333
	movq	-8(%rbp), %rax
	cmpl	$7, 96(%rax)
	jne	.LBB24_117
# BB#116:                               # %if.then.338
	movl	$4, -32(%rbp)
	jmp	.LBB24_121
.LBB24_117:                             # %if.else.339
	cmpl	$5, -12(%rbp)
	jne	.LBB24_119
# BB#118:                               # %if.then.342
	movl	$23, -12(%rbp)
	jmp	.LBB24_120
.LBB24_119:                             # %if.else.343
	movl	$3, -12(%rbp)
.LBB24_120:                             # %if.end.344
	jmp	.LBB24_121
.LBB24_121:                             # %if.end.345
	jmp	.LBB24_125
.LBB24_122:                             # %if.else.346
	cmpl	$6, -32(%rbp)
	jne	.LBB24_124
# BB#123:                               # %if.then.349
	movq	-8(%rbp), %rax
	movq	$-1, 168(%rax)
.LBB24_124:                             # %if.end.351
	jmp	.LBB24_125
.LBB24_125:                             # %if.end.352
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 176(%rcx)
.LBB24_126:                             # %if.end.354
	jmp	.LBB24_127
.LBB24_127:                             # %if.end.355
	jmp	.LBB24_128
.LBB24_128:                             # %if.end.356
	jmp	.LBB24_129
.LBB24_129:                             # %if.end.357
	jmp	.LBB24_130
.LBB24_130:                             # %if.end.358
	jmp	.LBB24_131
.LBB24_131:                             # %if.end.359
	jmp	.LBB24_132
.LBB24_132:                             # %if.end.360
	jmp	.LBB24_133
.LBB24_133:                             # %if.end.361
	jmp	.LBB24_134
.LBB24_134:                             # %if.end.362
	jmp	.LBB24_135
.LBB24_135:                             # %if.end.363
	cmpl	$17, -12(%rbp)
	je	.LBB24_142
# BB#136:                               # %lor.lhs.false.366
	cmpl	$18, -12(%rbp)
	je	.LBB24_142
# BB#137:                               # %lor.lhs.false.369
	cmpl	$19, -12(%rbp)
	je	.LBB24_142
# BB#138:                               # %lor.lhs.false.372
	cmpl	$5, -12(%rbp)
	jne	.LBB24_143
# BB#139:                               # %land.lhs.true.375
	movq	-8(%rbp), %rax
	cmpl	$19, 80(%rax)
	je	.LBB24_142
# BB#140:                               # %lor.lhs.false.380
	movq	-8(%rbp), %rax
	cmpl	$17, 80(%rax)
	je	.LBB24_142
# BB#141:                               # %lor.lhs.false.385
	movq	-8(%rbp), %rax
	cmpl	$18, 80(%rax)
	jne	.LBB24_143
.LBB24_142:                             # %if.then.390
	movl	$23, -12(%rbp)
.LBB24_143:                             # %if.end.391
	movq	-8(%rbp), %rax
	cmpl	$0, 44(%rax)
	jne	.LBB24_145
# BB#144:                               # %if.then.395
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
.LBB24_145:                             # %if.end.397
	movq	-8(%rbp), %rax
	movl	44(%rax), %edi
	callq	bidi_check_type
	cmpl	$3, -12(%rbp)
	jne	.LBB24_151
# BB#146:                               # %if.then.401
	movq	-8(%rbp), %rax
	cmpl	$1, 96(%rax)
	je	.LBB24_149
# BB#147:                               # %lor.lhs.false.406
	movq	-8(%rbp), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB24_150
# BB#148:                               # %land.lhs.true.411
	movq	-8(%rbp), %rax
	cmpl	$1, 180(%rax)
	jne	.LBB24_150
.LBB24_149:                             # %if.then.415
	movl	$1, -12(%rbp)
.LBB24_150:                             # %if.end.416
	jmp	.LBB24_151
.LBB24_151:                             # %if.end.417
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %edi
	callq	bidi_check_type
	movl	-12(%rbp), %eax
	addq	$2432, %rsp             # imm = 0x980
	popq	%rbp
	retq
.Lfunc_end24:
	.size	bidi_resolve_weak, .Lfunc_end24-bidi_resolve_weak
	.cfi_endproc

	.globl	bidi_dump_cached_states
	.align	16, 0x90
	.type	bidi_dump_cached_states,@function
bidi_dump_cached_states:                # @bidi_dump_cached_states
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
	subq	$64, %rsp
	movl	$1, -12(%rbp)
	cmpq	$0, bidi_cache_idx
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB25_19
.LBB25_2:                               # %if.end
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.2, %rcx
	movq	stderr, %rdi
	movq	bidi_cache_idx, %rdx
	cmpq	$1, bidi_cache_idx
	cmoveq	%rcx, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movq	bidi_cache_idx, %rcx
	subq	$1, %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB25_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	jle	.LBB25_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	$10, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -8(%rbp)
	jmp	.LBB25_3
.LBB25_6:                               # %for.end
	movabsq	$.L.str.4, %rdi
	movq	stderr, %rsi
	callq	fputs
	movq	$0, -8(%rbp)
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB25_7:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	bidi_cache_idx, %rax
	jge	.LBB25_10
# BB#8:                                 # %for.body.7
                                        #   in Loop: Header=BB25_7 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	stderr, %rdi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movl	16(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
# BB#9:                                 # %for.inc.10
                                        #   in Loop: Header=BB25_7 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_7
.LBB25_10:                              # %for.end.12
	movabsq	$.L.str.6, %rdi
	movq	stderr, %rsi
	callq	fputs
	movabsq	$.L.str.7, %rdi
	movq	stderr, %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	fputs
	movq	$0, -8(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB25_11:                              # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	bidi_cache_idx, %rax
	jge	.LBB25_14
# BB#12:                                # %for.body.17
                                        #   in Loop: Header=BB25_11 Depth=1
	movabsq	$.L.str.8, %rsi
	movq	stderr, %rdi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
# BB#13:                                # %for.inc.20
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_11
.LBB25_14:                              # %for.end.22
	movabsq	$.L.str.6, %rdi
	movq	stderr, %rsi
	callq	fputs
	movabsq	$.L.str.9, %rdi
	movq	stderr, %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	fputs
	movq	$0, -8(%rbp)
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB25_15:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	bidi_cache_idx, %rax
	jge	.LBB25_18
# BB#16:                                # %for.body.28
                                        #   in Loop: Header=BB25_15 Depth=1
	movabsq	$.L.str.10, %rsi
	movq	stderr, %rdi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	8(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#17:                                # %for.inc.32
                                        #   in Loop: Header=BB25_15 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_15
.LBB25_18:                              # %for.end.34
	movabsq	$.L.str.6, %rdi
	movq	stderr, %rsi
	callq	fputs
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB25_19:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	bidi_dump_cached_states, .Lfunc_end25-bidi_dump_cached_states
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_reset_to,@function
bidi_cache_reset_to:                    # @bidi_cache_reset_to
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
	movl	%edi, -4(%rbp)
	movq	bidi_cache_start, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, bidi_cache_idx
	movq	$-1, bidi_cache_last_idx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	bidi_cache_reset_to, .Lfunc_end26-bidi_cache_reset_to
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_paragraph_cache_on_off,@function
bidi_paragraph_cache_on_off:            # @bidi_paragraph_cache_on_off
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
	subq	$48, %rsp
	movq	current_buffer, %rax
	movq	%rax, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -16(%rbp)
	movb	$1, -17(%rbp)
.LBB27_2:                               # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	344(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_9
# BB#3:                                 # %if.then.2
	testb	$1, -17(%rbp)
	je	.LBB27_5
# BB#4:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_8
.LBB27_5:                               # %if.then.7
	movq	-16(%rbp), %rax
	cmpq	$0, 928(%rax)
	je	.LBB27_7
# BB#6:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	928(%rax), %rdi
	callq	free_region_cache
	movq	-16(%rbp), %rax
	movq	$0, 928(%rax)
.LBB27_7:                               # %if.end.12
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.13
	movq	$0, -8(%rbp)
	jmp	.LBB27_15
.LBB27_9:                               # %if.else
	testb	$1, -17(%rbp)
	je	.LBB27_11
# BB#10:                                # %lor.lhs.false.15
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB27_14
.LBB27_11:                              # %if.then.19
	movq	-16(%rbp), %rax
	cmpq	$0, 928(%rax)
	jne	.LBB27_13
# BB#12:                                # %if.then.22
	callq	new_region_cache
	movq	-16(%rbp), %rcx
	movq	%rax, 928(%rcx)
.LBB27_13:                              # %if.end.25
	jmp	.LBB27_14
.LBB27_14:                              # %if.end.26
	movq	-16(%rbp), %rax
	movq	928(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB27_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	bidi_paragraph_cache_on_off, .Lfunc_end27-bidi_paragraph_cache_on_off
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_fetch_char_skip_isolates,@function
bidi_fetch_char_skip_isolates:          # @bidi_fetch_char_skip_isolates
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp96:
	.cfi_offset %rbx, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movb	16(%rbp), %r11b
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	andb	$1, %r11b
	movb	%r11b, -57(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movb	-57(%rbp), %r11b
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %r10
	andb	$1, %r11b
	movzbl	%r11b, %ebx
	movl	%ebx, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	callq	bidi_fetch_char
	xorl	%esi, %esi
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edi
	callq	bidi_get_type
	movl	%eax, -104(%rbp)
	movq	$0, -112(%rbp)
	cmpl	$13, -104(%rbp)
	je	.LBB28_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$14, -104(%rbp)
	je	.LBB28_3
# BB#2:                                 # %lor.lhs.false.3
	cmpl	$15, -104(%rbp)
	jne	.LBB28_16
.LBB28_3:                               # %if.then
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
.LBB28_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -112(%rbp)
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jle	.LBB28_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB28_4 Depth=1
	cmpl	$6, -104(%rbp)
	setne	%al
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB28_6:                               # %land.end
                                        #   in Loop: Header=BB28_4 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB28_7
	jmp	.LBB28_15
.LBB28_7:                               # %while.body
                                        #   in Loop: Header=BB28_4 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movb	-57(%rbp), %r10b
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %r11
	andb	$1, %r10b
	movzbl	%r10b, %ebx
	movl	%ebx, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	bidi_fetch_char
	xorl	%esi, %esi
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edi
	callq	bidi_get_type
	movl	%eax, -104(%rbp)
	cmpl	$13, -104(%rbp)
	je	.LBB28_10
# BB#8:                                 # %lor.lhs.false.12
                                        #   in Loop: Header=BB28_4 Depth=1
	cmpl	$14, -104(%rbp)
	je	.LBB28_10
# BB#9:                                 # %lor.lhs.false.14
                                        #   in Loop: Header=BB28_4 Depth=1
	cmpl	$15, -104(%rbp)
	jne	.LBB28_11
.LBB28_10:                              # %if.then.16
                                        #   in Loop: Header=BB28_4 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB28_14
.LBB28_11:                              # %if.else
                                        #   in Loop: Header=BB28_4 Depth=1
	cmpl	$16, -104(%rbp)
	jne	.LBB28_13
# BB#12:                                # %if.then.19
                                        #   in Loop: Header=BB28_4 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
.LBB28_13:                              # %if.end
                                        #   in Loop: Header=BB28_4 Depth=1
	jmp	.LBB28_14
.LBB28_14:                              # %if.end.20
                                        #   in Loop: Header=BB28_4 Depth=1
	jmp	.LBB28_4
.LBB28_15:                              # %while.end
	jmp	.LBB28_16
.LBB28_16:                              # %if.end.21
	movq	-16(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movl	-100(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	bidi_fetch_char_skip_isolates, .Lfunc_end28-bidi_fetch_char_skip_isolates
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_get_type,@function
bidi_get_type:                          # @bidi_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movl	$6, -4(%rbp)
	jmp	.LBB29_14
.LBB29_2:                               # %if.end
	cmpl	$0, -8(%rbp)
	jl	.LBB29_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$4194303, -8(%rbp)      # imm = 0x3FFFFF
	jle	.LBB29_5
.LBB29_4:                               # %if.then.3
	callq	emacs_abort
.LBB29_5:                               # %if.end.4
	movq	bidi_type_table, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB29_7
# BB#6:                                 # %if.then.7
	callq	emacs_abort
.LBB29_7:                               # %if.end.8
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	addl	$-5, %ecx
	subl	$2, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jb	.LBB29_8
	jmp	.LBB29_15
.LBB29_15:                              # %if.end.8
	movl	-20(%rbp), %eax         # 4-byte Reload
	addl	$-8, %eax
	subl	$8, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB29_9
	jmp	.LBB29_8
.LBB29_8:                               # %sw.bb
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_14
.LBB29_9:                               # %sw.default
	cmpl	$1, -12(%rbp)
	jne	.LBB29_11
# BB#10:                                # %if.then.11
	movl	$1, -4(%rbp)
	jmp	.LBB29_14
.LBB29_11:                              # %if.else
	cmpl	$2, -12(%rbp)
	jne	.LBB29_13
# BB#12:                                # %if.then.14
	movl	$2, -4(%rbp)
	jmp	.LBB29_14
.LBB29_13:                              # %if.else.15
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB29_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	bidi_get_type, .Lfunc_end29-bidi_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_get_category,@function
bidi_get_category:                      # @bidi_get_category
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$23, %rcx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	ja	.LBB30_6
# BB#8:                                 # %entry
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	.LJTI30_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB30_1:                               # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB30_7
.LBB30_2:                               # %sw.bb.1
	movl	$3, -4(%rbp)
	jmp	.LBB30_7
.LBB30_3:                               # %sw.bb.2
	movl	$2, -4(%rbp)
	jmp	.LBB30_7
.LBB30_4:                               # %sw.bb.3
	movl	$1, -4(%rbp)
	jmp	.LBB30_7
.LBB30_5:                               # %sw.bb.4
	movl	$4, -4(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %sw.default
	callq	emacs_abort
.LBB30_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	bidi_get_category, .Lfunc_end30-bidi_get_category
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI30_0:
	.quad	.LBB30_1
	.quad	.LBB30_2
	.quad	.LBB30_2
	.quad	.LBB30_3
	.quad	.LBB30_3
	.quad	.LBB30_3
	.quad	.LBB30_4
	.quad	.LBB30_2
	.quad	.LBB30_5
	.quad	.LBB30_5
	.quad	.LBB30_5
	.quad	.LBB30_5
	.quad	.LBB30_5
	.quad	.LBB30_5
	.quad	.LBB30_5
	.quad	.LBB30_5
	.quad	.LBB30_5
	.quad	.LBB30_3
	.quad	.LBB30_3
	.quad	.LBB30_3
	.quad	.LBB30_3
	.quad	.LBB30_4
	.quad	.LBB30_4
	.quad	.LBB30_4

	.text
	.align	16, 0x90
	.type	bidi_fetch_char,@function
bidi_fetch_char:                        # @bidi_fetch_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movb	16(%rbp), %r11b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	andb	$1, %r11b
	movb	%r11b, -49(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB31_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB31_2
	jmp	.LBB31_3
.LBB31_2:                               # %cond.true
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB31_4
.LBB31_3:                               # %cond.false
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB31_4:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB31_7
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jle	.LBB31_7
# BB#6:                                 # %if.then
	leaq	-104(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movb	-49(%rbp), %cl
	movq	-32(%rbp), %r8
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	compute_display_string_pos
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.LBB31_7:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB31_9
# BB#8:                                 # %if.then.7
	movl	$-1, -76(%rbp)
	movq	-64(%rbp), %rax
	movq	$1, (%rax)
	movq	-72(%rbp), %rax
	movq	$1, (%rax)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB31_112
.LBB31_9:                               # %if.else
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jl	.LBB31_27
# BB#10:                                # %land.lhs.true.9
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB31_27
# BB#11:                                # %if.then.11
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jle	.LBB31_13
# BB#12:                                # %if.then.13
	callq	emacs_abort
.LBB31_13:                              # %if.end.14
	movq	-32(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB31_15
# BB#14:                                # %if.then.16
	movl	$8233, -76(%rbp)        # imm = 0x2029
	jmp	.LBB31_16
.LBB31_15:                              # %if.else.17
	movl	$65532, -76(%rbp)       # imm = 0xFFFC
.LBB31_16:                              # %if.end.18
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	compute_display_string_end
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jge	.LBB31_18
# BB#17:                                # %if.then.21
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB31_28
.LBB31_18:                              # %if.end.22
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	(%rcx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jg	.LBB31_20
# BB#19:                                # %if.then.24
	callq	emacs_abort
.LBB31_20:                              # %if.end.25
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB31_22
# BB#21:                                # %if.then.28
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rax
	movb	32(%rax), %r8b
	shrb	$1, %r8b
	andb	$1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	bidi_count_bytes
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB31_26
.LBB31_22:                              # %if.else.31
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB31_23
	jmp	.LBB31_24
.LBB31_23:                              # %if.then.34
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	SDATA
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	-16(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movb	32(%rdi), %r8b
	shrb	$1, %r8b
	andb	$1, %r8b
	andb	$1, %r8b
	movq	%rax, %rdi
	movzbl	%r8b, %r8d
	callq	bidi_count_bytes
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB31_25
.LBB31_24:                              # %if.else.43
	movq	current_buffer, %rdi
	movq	-120(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	subq	-16(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB31_25:                              # %if.end.46
	jmp	.LBB31_26
.LBB31_26:                              # %if.end.47
	jmp	.LBB31_111
.LBB31_27:                              # %if.else.48
	jmp	.LBB31_28
.LBB31_28:                              # %normal_char
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB31_47
# BB#29:                                # %if.then.51
	movq	-40(%rbp), %rax
	movb	32(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB31_40
# BB#30:                                # %if.then.57
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB31_32
# BB#31:                                # %cond.true.60
	movl	$1, -108(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB31_39
.LBB31_32:                              # %cond.false.65
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB31_34
# BB#33:                                # %cond.true.72
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -108(%rbp)
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -136(%rbp)        # 4-byte Spill
	jmp	.LBB31_38
.LBB31_34:                              # %cond.false.90
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB31_36
# BB#35:                                # %cond.true.97
	movl	$3, -108(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB31_37
.LBB31_36:                              # %cond.false.117
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-108(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB31_37:                              # %cond.end.121
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB31_38:                              # %cond.end.123
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB31_39:                              # %cond.end.125
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movslq	-108(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, (%rdx)
	jmp	.LBB31_46
.LBB31_40:                              # %if.else.128
	movb	$1, %al
	testb	$1, %al
	jne	.LBB31_41
	jmp	.LBB31_42
.LBB31_41:                              # %cond.true.129
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB31_43
	jmp	.LBB31_44
.LBB31_42:                              # %cond.false.136
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB31_44
.LBB31_43:                              # %cond.true.143
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB31_45
.LBB31_44:                              # %cond.false.147
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB31_45:                              # %cond.end.152
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rcx
	movq	$1, (%rcx)
.LBB31_46:                              # %if.end.154
	jmp	.LBB31_110
.LBB31_47:                              # %if.else.155
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB31_48
	jmp	.LBB31_66
.LBB31_48:                              # %if.then.158
	movq	-40(%rbp), %rax
	movb	32(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB31_59
# BB#49:                                # %if.then.164
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB31_51
# BB#50:                                # %cond.true.172
	movl	$1, -108(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB31_58
.LBB31_51:                              # %cond.false.178
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB31_53
# BB#52:                                # %cond.true.186
	movl	$2, -108(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$31, %ecx
	shll	$6, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-152(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	callq	SDATA
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	movq	-16(%rbp), %rdi
	movzbl	(%rax,%rdi), %esi
	cmpl	$194, %esi
	cmovll	%edx, %ecx
	movl	-156(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB31_57
.LBB31_53:                              # %cond.false.210
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB31_55
# BB#54:                                # %cond.true.218
	movl	$3, -108(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	movl	-164(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	%edx, -168(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-16(%rbp), %rdi
	movzbl	2(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-168(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB31_56
.LBB31_55:                              # %cond.false.241
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	SDATA
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-108(%rbp), %rdx
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	string_char
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB31_56:                              # %cond.end.246
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB31_57:                              # %cond.end.248
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB31_58:                              # %cond.end.250
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movslq	-108(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, (%rdx)
	jmp	.LBB31_65
.LBB31_59:                              # %if.else.253
	movb	$1, %al
	testb	$1, %al
	jne	.LBB31_60
	jmp	.LBB31_61
.LBB31_60:                              # %cond.true.254
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB31_62
	jmp	.LBB31_63
.LBB31_61:                              # %cond.false.261
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, %esi
	addq	$0, %rsi
	cmpq	$128, %rsi
	jae	.LBB31_63
.LBB31_62:                              # %cond.true.268
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB31_64
.LBB31_63:                              # %cond.false.272
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	addl	$4194048, %ecx          # imm = 0x3FFF00
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB31_64:                              # %cond.end.277
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rcx
	movq	$1, (%rcx)
.LBB31_65:                              # %if.end.279
	jmp	.LBB31_109
.LBB31_66:                              # %if.else.280
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB31_68
# BB#67:                                # %cond.true.283
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB31_69
.LBB31_68:                              # %cond.false.285
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB31_69
.LBB31_69:                              # %cond.end.286
	movq	-184(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB31_74
# BB#70:                                # %cond.true.296
	movl	$1, -108(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB31_72
# BB#71:                                # %cond.true.301
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB31_73
.LBB31_72:                              # %cond.false.304
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB31_73
.LBB31_73:                              # %cond.end.305
	movq	-192(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB31_108
.LBB31_74:                              # %cond.false.314
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB31_76
# BB#75:                                # %cond.true.319
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB31_77
.LBB31_76:                              # %cond.false.322
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB31_77
.LBB31_77:                              # %cond.end.323
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB31_88
# BB#78:                                # %cond.true.334
	movl	$2, -108(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB31_80
# BB#79:                                # %cond.true.339
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB31_81
.LBB31_80:                              # %cond.false.342
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB31_81
.LBB31_81:                              # %cond.end.343
	movq	-216(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$31, %edx
	shll	$6, %edx
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%edx, -220(%rbp)        # 4-byte Spill
	jl	.LBB31_83
# BB#82:                                # %cond.true.358
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB31_84
.LBB31_83:                              # %cond.false.361
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB31_84
.LBB31_84:                              # %cond.end.362
	movq	-232(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$63, %edx
	movl	-220(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%esi, -236(%rbp)        # 4-byte Spill
	jl	.LBB31_86
# BB#85:                                # %cond.true.377
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB31_87
.LBB31_86:                              # %cond.false.380
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB31_87
.LBB31_87:                              # %cond.end.381
	movq	-248(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	addq	-16(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	(%rsi), %rsi
	movzbl	-1(%rsi,%rax), %edi
	cmpl	$194, %edi
	cmovll	%edx, %ecx
	movl	-236(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB31_107
.LBB31_88:                              # %cond.false.394
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB31_90
# BB#89:                                # %cond.true.399
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB31_91
.LBB31_90:                              # %cond.false.402
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB31_91
.LBB31_91:                              # %cond.end.403
	movq	-264(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB31_102
# BB#92:                                # %cond.true.414
	movl	$3, -108(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB31_94
# BB#93:                                # %cond.true.419
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB31_95
.LBB31_94:                              # %cond.false.422
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB31_95
.LBB31_95:                              # %cond.end.423
	movq	-272(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jl	.LBB31_97
# BB#96:                                # %cond.true.438
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB31_98
.LBB31_97:                              # %cond.false.441
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB31_98
.LBB31_98:                              # %cond.end.442
	movq	-288(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	movl	-276(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%esi, -292(%rbp)        # 4-byte Spill
	jl	.LBB31_100
# BB#99:                                # %cond.true.458
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB31_101
.LBB31_100:                             # %cond.false.461
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB31_101
.LBB31_101:                             # %cond.end.462
	movq	-304(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	1(%rcx,%rax), %edx
	andl	$63, %edx
	movl	-292(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movl	%esi, -308(%rbp)        # 4-byte Spill
	jmp	.LBB31_106
.LBB31_102:                             # %cond.false.473
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB31_104
# BB#103:                               # %cond.true.478
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB31_105
.LBB31_104:                             # %cond.false.481
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB31_105
.LBB31_105:                             # %cond.end.482
	movq	-320(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-108(%rbp), %rdx
	addq	-16(%rbp), %rax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	addq	(%rdi), %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	string_char
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB31_106:                             # %cond.end.490
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB31_107:                             # %cond.end.492
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB31_108:                             # %cond.end.494
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movslq	-108(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, (%rdx)
.LBB31_109:                             # %if.end.497
	jmp	.LBB31_110
.LBB31_110:                             # %if.end.498
	movq	-72(%rbp), %rax
	movq	$1, (%rax)
.LBB31_111:                             # %if.end.499
	jmp	.LBB31_112
.LBB31_112:                             # %if.end.500
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	addq	(%rcx), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB31_116
# BB#113:                               # %land.lhs.true.504
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	addq	(%rcx), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jle	.LBB31_116
# BB#114:                               # %land.lhs.true.508
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB31_116
# BB#115:                               # %if.then.510
	leaq	-104(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movb	-49(%rbp), %r8b
	movq	-32(%rbp), %rax
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movq	%rax, %r8
	callq	compute_display_string_pos
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.LBB31_116:                             # %if.end.517
	movl	-76(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end31:
	.size	bidi_fetch_char, .Lfunc_end31-bidi_fetch_char
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_count_bytes,@function
bidi_count_bytes:                       # @bidi_count_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB32_17
.LBB32_2:                               # %if.else
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	jne	.LBB32_4
# BB#3:                                 # %if.then.3
	callq	emacs_abort
.LBB32_4:                               # %if.end
	jmp	.LBB32_5
.LBB32_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB32_16
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB32_5 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB32_15
.LBB32_8:                               # %cond.false
                                        #   in Loop: Header=BB32_5 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_10
# BB#9:                                 # %cond.true.12
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB32_14
.LBB32_10:                              # %cond.false.13
                                        #   in Loop: Header=BB32_5 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_12
# BB#11:                                # %cond.true.17
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	$3, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB32_13
.LBB32_12:                              # %cond.false.18
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB32_13:                              # %cond.end
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB32_14:                              # %cond.end.23
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB32_15:                              # %cond.end.25
                                        #   in Loop: Header=BB32_5 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB32_5
.LBB32_16:                              # %while.end
	jmp	.LBB32_17
.LBB32_17:                              # %if.end.28
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	bidi_count_bytes, .Lfunc_end32-bidi_count_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_set_sos_type,@function
bidi_set_sos_type:                      # @bidi_set_sos_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	cmpl	-16(%rbp), %edx
	jle	.LBB33_2
# BB#1:                                 # %cond.true
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB33_3
.LBB33_2:                               # %cond.false
	movl	-16(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB33_3:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	$2, %edx
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	movl	%ecx, %eax
	cmovnel	%edx, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 180(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 80(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 100(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 96(%rsi)
	movq	-8(%rbp), %rsi
	cmpl	$2, 180(%rsi)
	cmovel	%edx, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 128(%rsi)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 120(%rdi)
	movq	-8(%rbp), %rsi
	movl	$0, 116(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 112(%rsi)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	bidi_set_sos_type, .Lfunc_end33-bidi_set_sos_type
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_search,@function
bidi_cache_search:                      # @bidi_cache_search
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	bidi_cache_idx, %rdi
	cmpq	bidi_cache_start, %rdi
	jle	.LBB34_34
# BB#1:                                 # %if.then
	cmpq	$-1, bidi_cache_last_idx
	jne	.LBB34_3
# BB#2:                                 # %if.then.2
	movq	bidi_cache_idx, %rax
	subq	$1, %rax
	movq	%rax, bidi_cache_last_idx
.LBB34_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	bidi_cache_last_idx, %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB34_5
# BB#4:                                 # %if.then.5
	movl	$-1, -24(%rbp)
	movq	bidi_cache_last_idx, %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB34_12
.LBB34_5:                               # %if.else
	movq	-16(%rbp), %rax
	movq	bidi_cache_last_idx, %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	8(%rcx), %rcx
	movq	bidi_cache_last_idx, %rdx
	imulq	$2328, %rdx, %rdx       # imm = 0x918
	addq	bidi_cache, %rdx
	addq	24(%rdx), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jle	.LBB34_7
# BB#6:                                 # %if.then.12
	movl	$1, -24(%rbp)
	movq	bidi_cache_last_idx, %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB34_11
.LBB34_7:                               # %if.else.14
	cmpl	$0, -24(%rbp)
	je	.LBB34_9
# BB#8:                                 # %if.then.15
	movq	bidi_cache_last_idx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB34_10
.LBB34_9:                               # %if.else.16
	movl	$-1, -24(%rbp)
	movq	bidi_cache_idx, %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB34_10:                              # %if.end.18
	jmp	.LBB34_11
.LBB34_11:                              # %if.end.19
	jmp	.LBB34_12
.LBB34_12:                              # %if.end.20
	cmpl	$0, -24(%rbp)
	jge	.LBB34_23
# BB#13:                                # %if.then.22
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB34_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	bidi_cache_start, %rax
	jl	.LBB34_22
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB34_20
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdx
	imulq	$2328, %rdx, %rdx       # imm = 0x918
	addq	bidi_cache, %rdx
	addq	24(%rdx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB34_20
# BB#17:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB34_14 Depth=1
	cmpl	$-1, -20(%rbp)
	je	.LBB34_19
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jg	.LBB34_20
.LBB34_19:                              # %if.then.38
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB34_35
.LBB34_20:                              # %if.end.39
                                        #   in Loop: Header=BB34_14 Depth=1
	jmp	.LBB34_21
.LBB34_21:                              # %for.inc
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB34_14
.LBB34_22:                              # %for.end
	jmp	.LBB34_33
.LBB34_23:                              # %if.else.40
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB34_24:                              # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	bidi_cache_idx, %rax
	jge	.LBB34_32
# BB#25:                                # %for.body.44
                                        #   in Loop: Header=BB34_24 Depth=1
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB34_30
# BB#26:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB34_24 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdx
	imulq	$2328, %rdx, %rdx       # imm = 0x918
	addq	bidi_cache, %rdx
	addq	24(%rdx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB34_30
# BB#27:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB34_24 Depth=1
	cmpl	$-1, -20(%rbp)
	je	.LBB34_29
# BB#28:                                # %lor.lhs.false.60
                                        #   in Loop: Header=BB34_24 Depth=1
	movq	-32(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jg	.LBB34_30
.LBB34_29:                              # %if.then.66
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB34_35
.LBB34_30:                              # %if.end.67
                                        #   in Loop: Header=BB34_24 Depth=1
	jmp	.LBB34_31
.LBB34_31:                              # %for.inc.68
                                        #   in Loop: Header=BB34_24 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB34_24
.LBB34_32:                              # %for.end.69
	jmp	.LBB34_33
.LBB34_33:                              # %if.end.70
	jmp	.LBB34_34
.LBB34_34:                              # %if.end.71
	movq	$-1, -8(%rbp)
.LBB34_35:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	bidi_cache_search, .Lfunc_end34-bidi_cache_search
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_check_type,@function
bidi_check_type:                        # @bidi_check_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	bidi_check_type, .Lfunc_end35-bidi_check_type
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_find,@function
bidi_cache_find:                        # @bidi_cache_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	184(%rdx), %edx
	callq	bidi_cache_search
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	bidi_cache_start, %rax
	jl	.LBB36_4
# BB#1:                                 # %land.lhs.true
	testb	$1, -17(%rbp)
	je	.LBB36_3
# BB#2:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %ecx
	cmpl	$0, %ecx
	jl	.LBB36_4
.LBB36_3:                               # %if.then
	movq	-32(%rbp), %rax
	movl	184(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	%rax, %rsi
	callq	bidi_copy_it
	movq	-40(%rbp), %rax
	movq	%rax, bidi_cache_last_idx
	movl	-44(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 184(%rax)
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB36_5
.LBB36_4:                               # %if.end
	movl	$0, -4(%rbp)
.LBB36_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	bidi_cache_find, .Lfunc_end36-bidi_cache_find
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_type_of_next_char,@function
bidi_type_of_next_char:                 # @bidi_type_of_next_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 184(%rdi)
	je	.LBB37_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB37_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	bidi_resolve_neutral
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	bidi_type_of_next_char, .Lfunc_end37-bidi_type_of_next_char
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_isolate_fmt_char,@function
bidi_isolate_fmt_char:                  # @bidi_isolate_fmt_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	movl	%edi, -4(%rbp)
	cmpl	$13, -4(%rbp)
	movb	%al, -5(%rbp)           # 1-byte Spill
	je	.LBB38_4
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$14, -4(%rbp)
	movb	%al, -5(%rbp)           # 1-byte Spill
	je	.LBB38_4
# BB#2:                                 # %lor.lhs.false.2
	movb	$1, %al
	cmpl	$16, -4(%rbp)
	movb	%al, -5(%rbp)           # 1-byte Spill
	je	.LBB38_4
# BB#3:                                 # %lor.rhs
	cmpl	$15, -4(%rbp)
	sete	%al
	movb	%al, -5(%rbp)           # 1-byte Spill
.LBB38_4:                               # %lor.end
	movb	-5(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end38:
	.size	bidi_isolate_fmt_char, .Lfunc_end38-bidi_isolate_fmt_char
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_explicit_dir_char,@function
bidi_explicit_dir_char:                 # @bidi_explicit_dir_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	testb	$1, bidi_initialized
	jne	.LBB39_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB39_2:                               # %if.end
	cmpl	$0, -8(%rbp)
	jge	.LBB39_4
# BB#3:                                 # %if.then.1
	movb	$0, -1(%rbp)
	jmp	.LBB39_10
.LBB39_4:                               # %if.end.2
	movq	bidi_type_table, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	movb	$1, %cl
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -12(%rbp)
	cmpl	$8, -12(%rbp)
	movb	%cl, -13(%rbp)          # 1-byte Spill
	je	.LBB39_9
# BB#5:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$9, -12(%rbp)
	movb	%al, -13(%rbp)          # 1-byte Spill
	je	.LBB39_9
# BB#6:                                 # %lor.lhs.false.7
	movb	$1, %al
	cmpl	$10, -12(%rbp)
	movb	%al, -13(%rbp)          # 1-byte Spill
	je	.LBB39_9
# BB#7:                                 # %lor.lhs.false.10
	movb	$1, %al
	cmpl	$11, -12(%rbp)
	movb	%al, -13(%rbp)          # 1-byte Spill
	je	.LBB39_9
# BB#8:                                 # %lor.rhs
	cmpl	$12, -12(%rbp)
	sete	%al
	movb	%al, -13(%rbp)          # 1-byte Spill
.LBB39_9:                               # %lor.end
	movb	-13(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB39_10:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	bidi_explicit_dir_char, .Lfunc_end39-bidi_explicit_dir_char
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_resolve_neutral,@function
bidi_resolve_neutral:                   # @bidi_resolve_neutral
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$2416, %rsp             # imm = 0x970
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	bidi_resolve_brackets
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movslq	204(%rdi), %rdi
	movq	-16(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movzbl	10(%rcx), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	bidi_get_category
	cmpl	$1, %eax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -25(%rbp)
	cmpl	$6, -20(%rbp)
	je	.LBB40_3
# BB#1:                                 # %land.lhs.true
	testb	$1, -25(%rbp)
	jne	.LBB40_4
# BB#2:                                 # %lor.lhs.false
	movl	-20(%rbp), %edi
	callq	bidi_isolate_fmt_char
	testb	$1, %al
	jne	.LBB40_4
.LBB40_3:                               # %lor.lhs.false.8
	cmpl	$5, -20(%rbp)
	jne	.LBB40_62
.LBB40_4:                               # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 112(%rax)
	je	.LBB40_9
# BB#5:                                 # %land.lhs.true.14
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jg	.LBB40_8
# BB#6:                                 # %lor.lhs.false.19
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB40_9
# BB#7:                                 # %land.lhs.true.25
	movq	-16(%rbp), %rax
	cmpl	$16, 40(%rax)
	jne	.LBB40_9
.LBB40_8:                               # %if.then.29
	movq	-16(%rbp), %rax
	movl	128(%rax), %edi
	movq	-16(%rbp), %rax
	movl	112(%rax), %esi
	movl	-24(%rbp), %edx
	callq	bidi_resolve_neutral_1
	movl	%eax, -20(%rbp)
	jmp	.LBB40_61
.LBB40_9:                               # %if.else
	cmpl	$0, -24(%rbp)
	jne	.LBB40_18
# BB#10:                                # %land.lhs.true.36
	movq	-16(%rbp), %rax
	cmpl	$1, 128(%rax)
	jne	.LBB40_18
# BB#11:                                # %land.lhs.true.41
	movb	$1, %al
	testb	$1, %al
	jne	.LBB40_12
	jmp	.LBB40_13
.LBB40_12:                              # %cond.true
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB40_17
	jmp	.LBB40_14
.LBB40_13:                              # %cond.false
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB40_17
.LBB40_14:                              # %lor.lhs.false.49
	cmpl	$5, -20(%rbp)
	je	.LBB40_18
# BB#15:                                # %land.lhs.true.52
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	bidi_explicit_dir_char
	testb	$1, %al
	jne	.LBB40_18
# BB#16:                                # %land.lhs.true.55
	movl	-20(%rbp), %edi
	callq	bidi_isolate_fmt_char
	testb	$1, %al
	jne	.LBB40_18
.LBB40_17:                              # %if.then.57
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movl	128(%rax), %edi
	movl	-24(%rbp), %edx
	callq	bidi_resolve_neutral_1
	movl	%eax, -20(%rbp)
	jmp	.LBB40_60
.LBB40_18:                              # %if.else.61
	cmpl	$1, -24(%rbp)
	jne	.LBB40_27
# BB#19:                                # %land.lhs.true.64
	movq	-16(%rbp), %rax
	movzbl	218(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB40_27
# BB#20:                                # %land.lhs.true.71
	movq	-16(%rbp), %rax
	cmpl	$2, 128(%rax)
	je	.LBB40_23
# BB#21:                                # %lor.lhs.false.76
	movq	-16(%rbp), %rax
	cmpl	$3, 128(%rax)
	je	.LBB40_23
# BB#22:                                # %lor.lhs.false.81
	movq	-16(%rbp), %rax
	cmpl	$4, 128(%rax)
	jne	.LBB40_27
.LBB40_23:                              # %land.lhs.true.86
	cmpl	$5, -20(%rbp)
	je	.LBB40_27
# BB#24:                                # %land.lhs.true.89
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	bidi_explicit_dir_char
	testb	$1, %al
	jne	.LBB40_27
# BB#25:                                # %land.lhs.true.92
	movl	-20(%rbp), %edi
	callq	bidi_isolate_fmt_char
	testb	$1, %al
	jne	.LBB40_27
# BB#26:                                # %if.then.94
	movl	$2, %esi
	movq	-16(%rbp), %rax
	movl	128(%rax), %edi
	movl	-24(%rbp), %edx
	callq	bidi_resolve_neutral_1
	movl	%eax, -20(%rbp)
	jmp	.LBB40_59
.LBB40_27:                              # %if.else.98
	leaq	-2360(%rbp), %rdi
	movb	-25(%rbp), %al
	andb	$1, %al
	movb	%al, -2365(%rbp)
	movq	-16(%rbp), %rsi
	callq	bidi_copy_it
.LBB40_28:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_33 Depth 2
	movq	-16(%rbp), %rdi
	cmpl	$6, -20(%rbp)
	sete	%al
	movzbl	%al, %ecx
	andl	$1, %ecx
	xorl	%edx, %edx
	movl	%ecx, %esi
	callq	bidi_cache_iterator_state
	movq	-16(%rbp), %rdi
	movl	204(%rdi), %ecx
	movl	%ecx, -2372(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, -2380(%rbp)       # 4-byte Spill
	callq	bidi_resolve_brackets
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	204(%rdi), %eax
	movl	%eax, -2376(%rbp)
	movslq	-2376(%rbp), %rdi
	movq	-16(%rbp), %r8
	addq	$208, %r8
	shlq	$4, %rdi
	addq	%rdi, %r8
	movzbl	10(%r8), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB40_36
# BB#29:                                # %land.lhs.true.114
                                        #   in Loop: Header=BB40_28 Depth=1
	movslq	-2376(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	11(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	jne	.LBB40_32
# BB#30:                                # %lor.lhs.false.120
                                        #   in Loop: Header=BB40_28 Depth=1
	movl	-2376(%rbp), %eax
	movl	-2372(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB40_36
# BB#31:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB40_28 Depth=1
	movl	-2376(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	addq	$208, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movzbl	11(%rdx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB40_36
.LBB40_32:                              # %if.then.132
                                        #   in Loop: Header=BB40_28 Depth=1
	jmp	.LBB40_33
.LBB40_33:                              # %while.cond
                                        #   Parent Loop BB40_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	cmpl	-24(%rbp), %edx
	jle	.LBB40_35
# BB#34:                                # %while.body
                                        #   in Loop: Header=BB40_33 Depth=2
	movq	-16(%rbp), %rdi
	cmpl	$6, -20(%rbp)
	sete	%al
	movzbl	%al, %ecx
	andl	$1, %ecx
	xorl	%edx, %edx
	movl	%ecx, %esi
	callq	bidi_cache_iterator_state
	movq	-16(%rbp), %rdi
	movl	%eax, -2384(%rbp)       # 4-byte Spill
	callq	bidi_resolve_brackets
	movl	%eax, -20(%rbp)
	jmp	.LBB40_33
.LBB40_35:                              # %while.end
                                        #   in Loop: Header=BB40_28 Depth=1
	jmp	.LBB40_36
.LBB40_36:                              # %if.end
                                        #   in Loop: Header=BB40_28 Depth=1
	testb	$1, -2365(%rbp)
	jne	.LBB40_40
# BB#37:                                # %land.lhs.true.146
                                        #   in Loop: Header=BB40_28 Depth=1
	movl	-20(%rbp), %edi
	callq	bidi_get_category
	cmpl	$1, %eax
	je	.LBB40_39
# BB#38:                                # %lor.lhs.false.150
                                        #   in Loop: Header=BB40_28 Depth=1
	movl	-20(%rbp), %edi
	callq	bidi_isolate_fmt_char
	testb	$1, %al
	jne	.LBB40_39
	jmp	.LBB40_40
.LBB40_39:                              # %if.then.153
                                        #   in Loop: Header=BB40_28 Depth=1
	movb	$1, -2365(%rbp)
.LBB40_40:                              # %if.end.154
                                        #   in Loop: Header=BB40_28 Depth=1
	jmp	.LBB40_41
.LBB40_41:                              # %do.cond
                                        #   in Loop: Header=BB40_28 Depth=1
	movb	$1, %al
	cmpl	$6, -20(%rbp)
	movb	%al, -2385(%rbp)        # 1-byte Spill
	je	.LBB40_46
# BB#42:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB40_28 Depth=1
	cmpl	$5, -20(%rbp)
	je	.LBB40_45
# BB#43:                                # %land.lhs.true.160
                                        #   in Loop: Header=BB40_28 Depth=1
	movl	-20(%rbp), %edi
	callq	bidi_get_category
	cmpl	$1, %eax
	je	.LBB40_45
# BB#44:                                # %land.lhs.true.164
                                        #   in Loop: Header=BB40_28 Depth=1
	movl	-20(%rbp), %edi
	callq	bidi_isolate_fmt_char
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -2385(%rbp)        # 1-byte Spill
	jne	.LBB40_45
	jmp	.LBB40_46
.LBB40_45:                              # %lor.rhs
                                        #   in Loop: Header=BB40_28 Depth=1
	movq	-16(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	cmpl	-24(%rbp), %edx
	setne	%sil
	movb	%sil, -2385(%rbp)       # 1-byte Spill
.LBB40_46:                              # %lor.end
                                        #   in Loop: Header=BB40_28 Depth=1
	movb	-2385(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB40_28
# BB#47:                                # %do.end
	movl	$1, %edx
	leaq	-2360(%rbp), %rax
	addq	$104, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	bidi_remember_char
	movq	-16(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-16(%rbp), %rsi
	addq	$208, %rsi
	shlq	$4, %rax
	addq	%rax, %rsi
	movzbl	10(%rsi), %edx
	cmpl	-24(%rbp), %edx
	jne	.LBB40_49
# BB#48:                                # %lor.lhs.false.183
	cmpl	$6, -20(%rbp)
	jne	.LBB40_53
.LBB40_49:                              # %if.then.186
	testb	$1, -2365(%rbp)
	je	.LBB40_51
# BB#50:                                # %if.then.188
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -2364(%rbp)
	jmp	.LBB40_52
.LBB40_51:                              # %if.else.191
	leaq	-2360(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	bidi_copy_it
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB40_63
.LBB40_52:                              # %if.end.193
	jmp	.LBB40_58
.LBB40_53:                              # %if.else.194
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	decl	%ecx
	subl	$2, %ecx
	movl	%eax, -2392(%rbp)       # 4-byte Spill
	movl	%ecx, -2396(%rbp)       # 4-byte Spill
	jb	.LBB40_54
	jmp	.LBB40_64
.LBB40_64:                              # %if.else.194
	movl	-2392(%rbp), %eax       # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -2400(%rbp)       # 4-byte Spill
	jb	.LBB40_55
	jmp	.LBB40_65
.LBB40_65:                              # %if.else.194
	movl	-2392(%rbp), %eax       # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -2404(%rbp)       # 4-byte Spill
	jne	.LBB40_56
	jmp	.LBB40_54
.LBB40_54:                              # %sw.bb
	movl	-20(%rbp), %eax
	movl	%eax, -2364(%rbp)
	jmp	.LBB40_57
.LBB40_55:                              # %sw.bb.195
	movl	$2, -2364(%rbp)
	jmp	.LBB40_57
.LBB40_56:                              # %sw.default
	callq	emacs_abort
.LBB40_57:                              # %sw.epilog
	jmp	.LBB40_58
.LBB40_58:                              # %if.end.196
	movl	-2232(%rbp), %edi
	movl	-2364(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	bidi_resolve_neutral_1
	movl	%eax, -20(%rbp)
	movl	-2364(%rbp), %eax
	movl	%eax, -2248(%rbp)
	movl	-20(%rbp), %edi
	callq	bidi_check_type
	movl	-20(%rbp), %eax
	movl	%eax, -2320(%rbp)
	movl	-2364(%rbp), %edi
	callq	bidi_check_type
	leaq	-2360(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	bidi_copy_it
.LBB40_59:                              # %if.end.203
	jmp	.LBB40_60
.LBB40_60:                              # %if.end.204
	jmp	.LBB40_61
.LBB40_61:                              # %if.end.205
	jmp	.LBB40_62
.LBB40_62:                              # %if.end.206
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB40_63:                              # %return
	movl	-4(%rbp), %eax
	addq	$2416, %rsp             # imm = 0x970
	popq	%rbp
	retq
.Lfunc_end40:
	.size	bidi_resolve_neutral, .Lfunc_end40-bidi_resolve_neutral
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_resolve_brackets,@function
bidi_resolve_brackets:                  # @bidi_resolve_brackets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	204(%rdi), %rdi
	movq	-8(%rbp), %rax
	addq	$208, %rax
	shlq	$4, %rdi
	addq	%rdi, %rax
	movzbl	10(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movb	$0, -13(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 2264(%rax)
	jne	.LBB41_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB41_2
	jmp	.LBB41_3
.LBB41_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB41_4
.LBB41_3:                               # %cond.false
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB41_4:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, 40(%rax)
	je	.LBB41_8
# BB#5:                                 # %lor.lhs.false.6
	movq	-8(%rbp), %rax
	cmpl	$2, 40(%rax)
	je	.LBB41_8
# BB#6:                                 # %lor.lhs.false.10
	movq	-8(%rbp), %rax
	cmpl	$4, 40(%rax)
	je	.LBB41_8
# BB#7:                                 # %lor.lhs.false.14
	movq	-8(%rbp), %rax
	cmpl	$3, 40(%rax)
	jne	.LBB41_9
.LBB41_8:                               # %if.then
	leaq	-40(%rbp), %rdi
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	callq	bidi_remember_char
	jmp	.LBB41_10
.LBB41_9:                               # %if.else
	movq	-8(%rbp), %rax
	movq	120(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB41_10:                              # %if.end
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB41_12
# BB#11:                                # %if.then.23
	movq	-8(%rbp), %rax
	movq	104(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	112(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB41_13
.LBB41_12:                              # %if.else.25
	movq	$-1, -56(%rbp)
.LBB41_13:                              # %if.end.27
	movq	-8(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB41_15
# BB#14:                                # %if.then.28
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	bidi_cache_find
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %eax
	movl	%eax, -24(%rbp)
.LBB41_15:                              # %if.end.32
	cmpl	$0, -20(%rbp)
	jne	.LBB41_27
# BB#16:                                # %if.then.35
	movq	-8(%rbp), %rdi
	callq	bidi_resolve_weak
	movl	%eax, -20(%rbp)
	cmpl	$23, -20(%rbp)
	jne	.LBB41_26
# BB#17:                                # %if.then.39
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB41_22
# BB#18:                                # %if.then.42
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB41_21
# BB#19:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	bidi_paired_bracket_type
	cmpl	$3, %eax
	jne	.LBB41_21
# BB#20:                                # %if.then.52
	movq	-8(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB41_21:                              # %if.end.53
	jmp	.LBB41_25
.LBB41_22:                              # %if.else.54
	movq	-8(%rbp), %rdi
	callq	bidi_find_bracket_pairs
	testb	$1, %al
	jne	.LBB41_23
	jmp	.LBB41_24
.LBB41_23:                              # %if.then.56
	movb	$1, -13(%rbp)
.LBB41_24:                              # %if.end.57
	jmp	.LBB41_25
.LBB41_25:                              # %if.end.58
	jmp	.LBB41_26
.LBB41_26:                              # %if.end.59
	jmp	.LBB41_47
.LBB41_27:                              # %if.else.60
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB41_46
# BB#28:                                # %if.then.64
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	cmpl	-12(%rbp), %edx
	jle	.LBB41_31
# BB#29:                                # %land.lhs.true.73
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	11(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	je	.LBB41_31
# BB#30:                                # %if.then.80
	leaq	-40(%rbp), %rdi
	xorl	%edx, %edx
	movl	-12(%rbp), %esi
	callq	bidi_record_type_for_neutral
	leaq	-56(%rbp), %rdi
	movl	$1, %edx
	movl	-12(%rbp), %esi
	callq	bidi_record_type_for_neutral
.LBB41_31:                              # %if.end.81
	cmpl	$23, -20(%rbp)
	jne	.LBB41_41
# BB#32:                                # %land.lhs.true.84
	movl	-24(%rbp), %edi
	callq	bidi_paired_bracket_type
	cmpl	$2, %eax
	jne	.LBB41_41
# BB#33:                                # %if.then.88
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB41_35
# BB#34:                                # %if.then.93
	movb	$1, -13(%rbp)
	jmp	.LBB41_40
.LBB41_35:                              # %if.else.94
	movq	-8(%rbp), %rax
	cmpq	$-1, 152(%rax)
	jne	.LBB41_39
# BB#36:                                # %if.then.98
	movq	-8(%rbp), %rdi
	callq	bidi_find_bracket_pairs
	testb	$1, %al
	jne	.LBB41_37
	jmp	.LBB41_38
.LBB41_37:                              # %if.then.100
	movb	$1, -13(%rbp)
.LBB41_38:                              # %if.end.101
	jmp	.LBB41_39
.LBB41_39:                              # %if.end.102
	jmp	.LBB41_40
.LBB41_40:                              # %if.end.103
	jmp	.LBB41_41
.LBB41_41:                              # %if.end.104
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	cmpl	-12(%rbp), %edx
	jne	.LBB41_45
# BB#42:                                # %if.then.113
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 120(%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 128(%rax)
	cmpq	$0, -56(%rbp)
	jle	.LBB41_44
# BB#43:                                # %if.then.118
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, 104(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 112(%rax)
.LBB41_44:                              # %if.end.120
	jmp	.LBB41_45
.LBB41_45:                              # %if.end.121
	jmp	.LBB41_46
.LBB41_46:                              # %if.end.122
	jmp	.LBB41_47
.LBB41_47:                              # %if.end.123
	testb	$1, -13(%rbp)
	je	.LBB41_66
# BB#48:                                # %if.then.125
	movl	$1, %eax
	movl	$2, %ecx
	movq	-8(%rbp), %rdx
	movslq	204(%rdx), %rdx
	movq	-8(%rbp), %rsi
	addq	$208, %rsi
	shlq	$4, %rdx
	addq	%rdx, %rsi
	movzbl	10(%rsi), %edi
	movl	%edi, -68(%rbp)
	movl	-68(%rbp), %edi
	andl	$1, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rdx
	movl	160(%rdx), %eax
	cmpl	-72(%rbp), %eax
	jne	.LBB41_50
# BB#49:                                # %if.then.138
	movl	-72(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB41_61
.LBB41_50:                              # %if.else.139
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	je	.LBB41_55
	jmp	.LBB41_67
.LBB41_67:                              # %if.else.139
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	ja	.LBB41_59
	jmp	.LBB41_51
.LBB41_51:                              # %sw.bb
	movq	-8(%rbp), %rax
	cmpl	$2, 160(%rax)
	jne	.LBB41_53
# BB#52:                                # %cond.true.145
	movl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB41_54
.LBB41_53:                              # %cond.false.146
	movl	-72(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB41_54:                              # %cond.end.147
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB41_60
.LBB41_55:                              # %sw.bb.149
	movq	-8(%rbp), %rax
	cmpl	$1, 160(%rax)
	jne	.LBB41_57
# BB#56:                                # %cond.true.153
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB41_58
.LBB41_57:                              # %cond.false.154
	movl	-72(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB41_58:                              # %cond.end.155
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB41_60
.LBB41_59:                              # %sw.default
	jmp	.LBB41_60
.LBB41_60:                              # %sw.epilog
	jmp	.LBB41_61
.LBB41_61:                              # %if.end.157
	cmpl	$23, -20(%rbp)
	je	.LBB41_65
# BB#62:                                # %if.then.160
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	bidi_cache_search
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	bidi_cache_start, %rax
	jge	.LBB41_64
# BB#63:                                # %if.then.165
	callq	emacs_abort
.LBB41_64:                              # %if.end.166
	movl	-20(%rbp), %eax
	movq	-80(%rbp), %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	movl	%eax, 40(%rcx)
.LBB41_65:                              # %if.end.169
	jmp	.LBB41_66
.LBB41_66:                              # %if.end.170
	movl	-20(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	bidi_resolve_brackets, .Lfunc_end41-bidi_resolve_brackets
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_resolve_neutral_1,@function
bidi_resolve_neutral_1:                 # @bidi_resolve_neutral_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$3, -12(%rbp)
	je	.LBB42_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -12(%rbp)
	jne	.LBB42_3
.LBB42_2:                               # %if.then
	movl	$2, -12(%rbp)
.LBB42_3:                               # %if.end
	cmpl	$3, -8(%rbp)
	je	.LBB42_5
# BB#4:                                 # %lor.lhs.false.3
	cmpl	$4, -8(%rbp)
	jne	.LBB42_6
.LBB42_5:                               # %if.then.5
	movl	$2, -8(%rbp)
.LBB42_6:                               # %if.end.6
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB42_8
# BB#7:                                 # %if.then.8
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB42_11
.LBB42_8:                               # %if.else
	movl	-16(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB42_10
# BB#9:                                 # %if.then.10
	movl	$1, -4(%rbp)
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.11
	movl	$2, -4(%rbp)
.LBB42_11:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end42:
	.size	bidi_resolve_neutral_1, .Lfunc_end42-bidi_resolve_neutral_1
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_remember_char,@function
bidi_remember_char:                     # @bidi_remember_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
	testb	$1, -17(%rbp)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB43_3
.LBB43_2:                               # %if.else
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB43_3:                               # %if.end
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	bidi_check_type
	movq	-16(%rbp), %rax
	movl	48(%rax), %edi
	movq	-8(%rbp), %rax
	movl	%edi, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	bidi_check_type
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	bidi_remember_char, .Lfunc_end43-bidi_remember_char
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_paired_bracket_type,@function
bidi_paired_bracket_type:               # @bidi_paired_bracket_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB44_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB44_6
.LBB44_2:                               # %if.end
	cmpl	$0, -8(%rbp)
	jl	.LBB44_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$4194303, -8(%rbp)      # imm = 0x3FFFFF
	jle	.LBB44_5
.LBB44_4:                               # %if.then.3
	callq	emacs_abort
.LBB44_5:                               # %if.end.4
	movq	bidi_brackets_table, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -4(%rbp)
.LBB44_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	bidi_paired_bracket_type, .Lfunc_end44-bidi_paired_bracket_type
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_find_bracket_pairs,@function
bidi_find_bracket_pairs:                # @bidi_find_bracket_pairs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$21200, %rsp            # imm = 0x52D0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 184(%rdi)
	je	.LBB45_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB45_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	bidi_paired_bracket_type
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jne	.LBB45_102
# BB#3:                                 # %if.then.4
	leaq	-18736(%rbp), %rdi
	movl	$1, %eax
	movl	$2, %ecx
	movl	$-1, -16404(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	218(%rdx), %esi
	movl	%esi, -18740(%rbp)
	movq	-8(%rbp), %rdx
	movslq	204(%rdx), %rdx
	movq	-8(%rbp), %r8
	addq	$208, %r8
	shlq	$4, %rdx
	addq	%rdx, %r8
	movzbl	10(%r8), %esi
	movl	%esi, -18744(%rbp)
	movl	-18744(%rbp), %esi
	movl	%esi, -18748(%rbp)
	movl	-18744(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movl	%eax, -18752(%rbp)
	movb	$0, -21081(%rbp)
	movb	$0, -21082(%rbp)
	movq	bidi_cache_idx, %rdx
	movl	%edx, %eax
	movl	%eax, -21100(%rbp)
	movq	-8(%rbp), %rsi
	callq	bidi_copy_it
	movl	$1, -20896(%rbp)
.LBB45_4:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_41 Depth 2
                                        #     Child Loop BB45_63 Depth 2
                                        #     Child Loop BB45_75 Depth 2
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	movl	%edx, -21112(%rbp)
	movl	-18748(%rbp), %edx
	cmpl	-21112(%rbp), %edx
	jge	.LBB45_6
# BB#5:                                 # %if.then.19
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21112(%rbp), %eax
	movl	%eax, -18748(%rbp)
.LBB45_6:                               # %if.end.20
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$2, -12(%rbp)
	jne	.LBB45_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$-1, 152(%rax)
	jne	.LBB45_9
# BB#8:                                 # %if.then.25
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 152(%rcx)
.LBB45_9:                               # %if.end.27
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rdi
	cmpl	$6, -16(%rbp)
	sete	%al
	movzbl	%al, %ecx
	andl	$1, %ecx
	xorl	%edx, %edx
	movl	%ecx, %esi
	callq	bidi_cache_iterator_state
	cmpl	$0, %eax
	jne	.LBB45_11
# BB#10:                                # %if.then.32
	movslq	-21100(%rbp), %rax
	subq	bidi_cache_start, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	bidi_cache_reset_to
	leaq	-18736(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	bidi_copy_it
	jmp	.LBB45_103
.LBB45_11:                              # %if.end.35
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$2, -12(%rbp)
	jne	.LBB45_28
# BB#12:                                # %if.then.38
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_13
.LBB45_13:                              # %do.body
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$1364, -16404(%rbp)     # imm = 0x554
	jge	.LBB45_26
# BB#14:                                # %if.then.42
                                        #   in Loop: Header=BB45_4 Depth=1
	movb	$1, %al
	movl	-16404(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -16404(%rbp)
	testb	$1, %al
	jne	.LBB45_15
	jmp	.LBB45_16
.LBB45_15:                              # %cond.true
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB45_17
	jmp	.LBB45_18
.LBB45_16:                              # %cond.false
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_18
.LBB45_17:                              # %cond.true.51
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -21148(%rbp)      # 4-byte Spill
	jmp	.LBB45_25
.LBB45_18:                              # %cond.false.53
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$9001, 16(%rax)         # imm = 0x2329
	jne	.LBB45_20
# BB#19:                                # %cond.true.57
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$12296, %eax            # imm = 0x3008
	movl	%eax, -21152(%rbp)      # 4-byte Spill
	jmp	.LBB45_24
.LBB45_20:                              # %cond.false.58
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$9002, 16(%rax)         # imm = 0x232A
	jne	.LBB45_22
# BB#21:                                # %cond.true.62
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$12297, %eax            # imm = 0x3009
	movl	%eax, -21156(%rbp)      # 4-byte Spill
	jmp	.LBB45_23
.LBB45_22:                              # %cond.false.63
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -21156(%rbp)      # 4-byte Spill
.LBB45_23:                              # %cond.end
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21156(%rbp), %eax      # 4-byte Reload
	movl	%eax, -21152(%rbp)      # 4-byte Spill
.LBB45_24:                              # %cond.end.66
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21152(%rbp), %eax      # 4-byte Reload
	movl	%eax, -21148(%rbp)      # 4-byte Spill
.LBB45_25:                              # %cond.end.68
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21148(%rbp), %eax      # 4-byte Reload
	movl	%eax, -21116(%rbp)
	movl	-21116(%rbp), %edi
	callq	bidi_mirror_char
	leaq	-16400(%rbp), %rcx
	movslq	-16404(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	%eax, (%rsi)
	movq	bidi_cache_last_idx, %rdx
	movl	%edx, %eax
	movslq	-16404(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	%eax, 4(%rsi)
	movslq	-16404(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rcx
	movb	8(%rcx), %r8b
	andb	$-4, %r8b
	movb	%r8b, 8(%rcx)
.LBB45_26:                              # %if.end.78
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_27
.LBB45_27:                              # %do.end
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_70
.LBB45_28:                              # %if.else
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$3, -12(%rbp)
	jne	.LBB45_56
# BB#29:                                # %if.then.81
                                        #   in Loop: Header=BB45_4 Depth=1
	movb	$1, %al
	movl	-16404(%rbp), %ecx
	movl	%ecx, -21120(%rbp)
	testb	$1, %al
	jne	.LBB45_30
	jmp	.LBB45_31
.LBB45_30:                              # %cond.true.82
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB45_32
	jmp	.LBB45_33
.LBB45_31:                              # %cond.false.87
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_33
.LBB45_32:                              # %cond.true.93
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -21160(%rbp)      # 4-byte Spill
	jmp	.LBB45_40
.LBB45_33:                              # %cond.false.95
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$9001, 16(%rax)         # imm = 0x2329
	jne	.LBB45_35
# BB#34:                                # %cond.true.99
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$12296, %eax            # imm = 0x3008
	movl	%eax, -21164(%rbp)      # 4-byte Spill
	jmp	.LBB45_39
.LBB45_35:                              # %cond.false.100
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$9002, 16(%rax)         # imm = 0x232A
	jne	.LBB45_37
# BB#36:                                # %cond.true.104
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$12297, %eax            # imm = 0x3009
	movl	%eax, -21168(%rbp)      # 4-byte Spill
	jmp	.LBB45_38
.LBB45_37:                              # %cond.false.105
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -21168(%rbp)      # 4-byte Spill
.LBB45_38:                              # %cond.end.107
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21168(%rbp), %eax      # 4-byte Reload
	movl	%eax, -21164(%rbp)      # 4-byte Spill
.LBB45_39:                              # %cond.end.109
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21164(%rbp), %eax      # 4-byte Reload
	movl	%eax, -21160(%rbp)      # 4-byte Spill
.LBB45_40:                              # %cond.end.111
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21160(%rbp), %eax      # 4-byte Reload
	movl	%eax, -21124(%rbp)
.LBB45_41:                              # %while.cond.113
                                        #   Parent Loop BB45_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -21120(%rbp)
	movb	%cl, -21169(%rbp)       # 1-byte Spill
	jl	.LBB45_43
# BB#42:                                # %land.rhs
                                        #   in Loop: Header=BB45_41 Depth=2
	leaq	-16400(%rbp), %rax
	movslq	-21120(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	cmpl	-21124(%rbp), %edx
	setne	%sil
	movb	%sil, -21169(%rbp)      # 1-byte Spill
.LBB45_43:                              # %land.end
                                        #   in Loop: Header=BB45_41 Depth=2
	movb	-21169(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB45_44
	jmp	.LBB45_45
.LBB45_44:                              # %while.body.121
                                        #   in Loop: Header=BB45_41 Depth=2
	movl	-21120(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -21120(%rbp)
	jmp	.LBB45_41
.LBB45_45:                              # %while.end
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$0, -21120(%rbp)
	jl	.LBB45_53
# BB#46:                                # %if.then.124
                                        #   in Loop: Header=BB45_4 Depth=1
	leaq	-21080(%rbp), %rsi
	leaq	-16400(%rbp), %rax
	movslq	-21120(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	4(%rax), %rdi
	callq	bidi_cache_fetch_state
	leaq	-16400(%rbp), %rax
	movslq	-21120(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movb	8(%rax), %dl
	andb	$3, %dl
	movzbl	%dl, %r8d
	andl	$1, %r8d
	cmpl	$0, %r8d
	je	.LBB45_48
# BB#47:                                # %if.then.136
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-18752(%rbp), %eax
	movl	%eax, -20920(%rbp)
	jmp	.LBB45_52
.LBB45_48:                              # %if.else.137
                                        #   in Loop: Header=BB45_4 Depth=1
	leaq	-16400(%rbp), %rax
	movslq	-21120(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movb	8(%rax), %dl
	andb	$3, %dl
	movzbl	%dl, %esi
	andl	$2, %esi
	cmpl	$0, %esi
	je	.LBB45_50
# BB#49:                                # %if.then.146
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$1, %eax
	movl	$2, %ecx
	cmpl	$1, -18752(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -20920(%rbp)
	jmp	.LBB45_51
.LBB45_50:                              # %if.else.151
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$0, -20920(%rbp)
.LBB45_51:                              # %if.end.153
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_52
.LBB45_52:                              # %if.end.154
                                        #   in Loop: Header=BB45_4 Depth=1
	leaq	-21080(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -20928(%rbp)
	callq	bidi_cache_iterator_state
	movl	-21120(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -16404(%rbp)
	movl	%eax, -21176(%rbp)      # 4-byte Spill
.LBB45_53:                              # %if.end.159
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$0, -16404(%rbp)
	jge	.LBB45_55
# BB#54:                                # %if.then.162
	movb	$1, -17(%rbp)
	jmp	.LBB45_89
.LBB45_55:                              # %if.end.163
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_69
.LBB45_56:                              # %if.else.164
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	44(%rax), %edi
	callq	bidi_get_category
	cmpl	$1, %eax
	je	.LBB45_68
# BB#57:                                # %if.then.168
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$0, -21128(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -21180(%rbp)      # 4-byte Spill
	movl	%edx, -21184(%rbp)      # 4-byte Spill
	je	.LBB45_58
	jmp	.LBB45_104
.LBB45_104:                             # %if.then.168
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21180(%rbp), %eax      # 4-byte Reload
	addl	$-2, %eax
	subl	$3, %eax
	movl	%eax, -21188(%rbp)      # 4-byte Spill
	jb	.LBB45_59
	jmp	.LBB45_60
.LBB45_58:                              # %sw.bb
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$2, %eax
	movl	$1, %ecx
	movl	-18744(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	cmovel	%ecx, %eax
	movl	%eax, -21128(%rbp)
	movb	$1, -21081(%rbp)
	jmp	.LBB45_61
.LBB45_59:                              # %sw.bb.175
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$2, %eax
	movl	$1, %ecx
	movl	-18744(%rbp), %edx
	andl	$1, %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movl	%eax, -21128(%rbp)
	movb	$1, -21082(%rbp)
	jmp	.LBB45_61
.LBB45_60:                              # %sw.default
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_61
.LBB45_61:                              # %sw.epilog
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$0, -21128(%rbp)
	je	.LBB45_67
# BB#62:                                # %if.then.181
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-16404(%rbp), %eax
	movl	%eax, -21132(%rbp)
.LBB45_63:                              # %for.cond
                                        #   Parent Loop BB45_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -21132(%rbp)
	jl	.LBB45_66
# BB#64:                                # %for.body
                                        #   in Loop: Header=BB45_63 Depth=2
	leaq	-16400(%rbp), %rax
	movl	-21128(%rbp), %ecx
	movslq	-21132(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movb	8(%rax), %sil
	andb	$3, %sil
	movzbl	%sil, %edi
	orl	%ecx, %edi
	movb	%dil, %sil
	movb	8(%rax), %r8b
	andb	$3, %sil
	andb	$-4, %r8b
	orb	%sil, %r8b
	movb	%r8b, 8(%rax)
# BB#65:                                # %for.inc
                                        #   in Loop: Header=BB45_63 Depth=2
	movl	-21132(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -21132(%rbp)
	jmp	.LBB45_63
.LBB45_66:                              # %for.end
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_67
.LBB45_67:                              # %if.end.193
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_68
.LBB45_68:                              # %if.end.194
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_69
.LBB45_69:                              # %if.end.195
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_70
.LBB45_70:                              # %if.end.196
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	204(%rax), %ecx
	movl	%ecx, -21104(%rbp)
	movq	-8(%rbp), %rdi
	callq	bidi_resolve_weak
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	204(%rdi), %eax
	movl	%eax, -21108(%rbp)
	movslq	-21108(%rbp), %rdi
	movq	-8(%rbp), %rdx
	addq	$208, %rdx
	shlq	$4, %rdi
	addq	%rdi, %rdx
	movzbl	10(%rdx), %eax
	cmpl	-21112(%rbp), %eax
	jle	.LBB45_82
# BB#71:                                # %land.lhs.true.207
                                        #   in Loop: Header=BB45_4 Depth=1
	movslq	-21108(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	11(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	jne	.LBB45_74
# BB#72:                                # %lor.lhs.false
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21108(%rbp), %eax
	movl	-21104(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB45_82
# BB#73:                                # %land.lhs.true.218
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-21108(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	addq	$208, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movzbl	11(%rdx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB45_82
.LBB45_74:                              # %if.then.227
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_75
.LBB45_75:                              # %while.cond.228
                                        #   Parent Loop BB45_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	cmpl	-21112(%rbp), %edx
	jle	.LBB45_81
# BB#76:                                # %while.body.237
                                        #   in Loop: Header=BB45_75 Depth=2
	movl	-18748(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	204(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$208, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movzbl	10(%rdx), %esi
	cmpl	%esi, %eax
	jge	.LBB45_78
# BB#77:                                # %if.then.246
                                        #   in Loop: Header=BB45_75 Depth=2
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	movl	%edx, -18748(%rbp)
.LBB45_78:                              # %if.end.253
                                        #   in Loop: Header=BB45_75 Depth=2
	movq	-8(%rbp), %rdi
	cmpl	$6, -16(%rbp)
	sete	%al
	movzbl	%al, %ecx
	andl	$1, %ecx
	xorl	%edx, %edx
	movl	%ecx, %esi
	callq	bidi_cache_iterator_state
	cmpl	$0, %eax
	jne	.LBB45_80
# BB#79:                                # %if.then.258
	movslq	-21100(%rbp), %rax
	subq	bidi_cache_start, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	bidi_cache_reset_to
	leaq	-18736(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	bidi_copy_it
	jmp	.LBB45_103
.LBB45_80:                              # %if.end.262
                                        #   in Loop: Header=BB45_75 Depth=2
	movq	-8(%rbp), %rdi
	callq	bidi_resolve_weak
	movl	%eax, -16(%rbp)
	jmp	.LBB45_75
.LBB45_81:                              # %while.end.264
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_82
.LBB45_82:                              # %if.end.265
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$6, -16(%rbp)
	je	.LBB45_84
# BB#83:                                # %lor.lhs.false.268
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	cmpl	-21112(%rbp), %edx
	je	.LBB45_85
.LBB45_84:                              # %if.then.277
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -21096(%rbp)
	jmp	.LBB45_89
.LBB45_85:                              # %if.end.279
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$23, 44(%rax)
	jne	.LBB45_87
# BB#86:                                # %if.then.283
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	bidi_paired_bracket_type
	movl	%eax, -12(%rbp)
	jmp	.LBB45_88
.LBB45_87:                              # %if.else.286
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	$1, -12(%rbp)
.LBB45_88:                              # %if.end.287
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_4
.LBB45_89:                              # %while.end.288
	xorl	%esi, %esi
	movq	-18728(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	bidi_cache_find
	movl	%eax, -16(%rbp)
	movl	-18748(%rbp), %eax
	cmpl	-18740(%rbp), %eax
	jne	.LBB45_101
# BB#90:                                # %land.lhs.true.293
	cmpl	$0, -18740(%rbp)
	jne	.LBB45_92
# BB#91:                                # %land.lhs.true.296
	testb	$1, -21082(%rbp)
	je	.LBB45_94
.LBB45_92:                              # %lor.lhs.false.298
	cmpl	$1, -18740(%rbp)
	jne	.LBB45_101
# BB#93:                                # %land.lhs.true.301
	testb	$1, -21081(%rbp)
	jne	.LBB45_101
.LBB45_94:                              # %if.then.303
	movq	-8(%rbp), %rax
	cmpq	$0, 2264(%rax)
	jne	.LBB45_96
# BB#95:                                # %lor.lhs.false.305
	movq	-8(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB45_96
	jmp	.LBB45_97
.LBB45_96:                              # %cond.true.309
	movq	-8(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -21200(%rbp)      # 8-byte Spill
	jmp	.LBB45_98
.LBB45_97:                              # %cond.false.311
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -21200(%rbp)      # 8-byte Spill
.LBB45_98:                              # %cond.end.312
	movq	-21200(%rbp), %rax      # 8-byte Reload
	movq	%rax, -21144(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB45_100
# BB#99:                                # %if.then.315
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -21096(%rbp)
.LBB45_100:                             # %if.end.317
	movq	-21144(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movl	-18752(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 160(%rax)
	movq	bidi_cache_last_idx, %rax
	subq	bidi_cache_start, %rax
	movl	%eax, %edx
	movl	%edx, %edi
	callq	bidi_cache_reset_to
	movl	-18752(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 112(%rax)
	movq	-21096(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movb	$0, -17(%rbp)
.LBB45_101:                             # %if.end.325
	jmp	.LBB45_102
.LBB45_102:                             # %if.end.326
	jmp	.LBB45_103
.LBB45_103:                             # %give_up
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$21200, %rsp            # imm = 0x52D0
	popq	%rbp
	retq
.Lfunc_end45:
	.size	bidi_find_bracket_pairs, .Lfunc_end45-bidi_find_bracket_pairs
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_record_type_for_neutral,@function
bidi_record_type_for_neutral:           # @bidi_record_type_for_neutral
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	movq	bidi_cache_last_idx, %rdi
	addq	$1, %rdi
	movl	%edi, %edx
	movl	%edx, -20(%rbp)
.LBB46_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	bidi_cache_idx, %rax
	jge	.LBB46_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB46_1 Depth=1
	movslq	-20(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movslq	204(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$2328, %rcx, %rcx       # imm = 0x918
	addq	bidi_cache, %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %edx
	cmpl	-12(%rbp), %edx
	jg	.LBB46_7
# BB#3:                                 # %if.then
	testb	$1, -13(%rbp)
	je	.LBB46_5
# BB#4:                                 # %if.then.11
	movslq	-20(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 104(%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 112(%rax)
	jmp	.LBB46_6
.LBB46_5:                               # %if.else
	movslq	-20(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 120(%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 128(%rax)
.LBB46_6:                               # %if.end
	jmp	.LBB46_9
.LBB46_7:                               # %if.end.16
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_8
.LBB46_8:                               # %for.inc
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB46_1
.LBB46_9:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end46:
	.size	bidi_record_type_for_neutral, .Lfunc_end46-bidi_record_type_for_neutral
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_fetch_state,@function
bidi_cache_fetch_state:                 # @bidi_cache_fetch_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	184(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	bidi_cache_start, %rsi
	jl	.LBB47_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	bidi_cache_idx, %rax
	jl	.LBB47_3
.LBB47_2:                               # %if.then
	callq	emacs_abort
.LBB47_3:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movq	%rax, %rsi
	callq	bidi_copy_it
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 184(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, bidi_cache_last_idx
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	bidi_cache_fetch_state, .Lfunc_end47-bidi_cache_fetch_state
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_cache_find_level_change,@function
bidi_cache_find_level_change:           # @bidi_cache_find_level_change
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	cmpq	$0, bidi_cache_idx
	je	.LBB48_27
# BB#1:                                 # %if.then
	cmpl	$0, -16(%rbp)
	je	.LBB48_3
# BB#2:                                 # %cond.true
	movq	bidi_cache_last_idx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB48_4
.LBB48_3:                               # %cond.false
	movq	bidi_cache_idx, %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB48_4:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movb	-17(%rbp), %sil
	testb	$1, %sil
	cmovnel	%edx, %ecx
	movl	%ecx, -36(%rbp)
	cmpq	$0, -32(%rbp)
	jge	.LBB48_6
# BB#5:                                 # %if.then.4
	movq	$0, -32(%rbp)
.LBB48_6:                               # %if.end
	cmpl	$0, -16(%rbp)
	jne	.LBB48_8
# BB#7:                                 # %if.then.6
	movl	$-1, -16(%rbp)
	jmp	.LBB48_11
.LBB48_8:                               # %if.else
	cmpl	$0, -36(%rbp)
	jne	.LBB48_10
# BB#9:                                 # %if.then.8
	movslq	-16(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB48_10:                              # %if.end.9
	jmp	.LBB48_11
.LBB48_11:                              # %if.end.10
	cmpl	$0, -16(%rbp)
	jge	.LBB48_19
# BB#12:                                # %if.then.13
	jmp	.LBB48_13
.LBB48_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	bidi_cache_start, %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB48_18
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB48_13 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %edx
	cmpl	$0, %edx
	jl	.LBB48_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB48_13 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %edx
	cmpl	-12(%rbp), %edx
	jge	.LBB48_17
# BB#16:                                # %if.then.30
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_28
.LBB48_17:                              # %if.end.31
                                        #   in Loop: Header=BB48_13 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB48_13
.LBB48_18:                              # %while.end
	jmp	.LBB48_26
.LBB48_19:                              # %if.else.32
	jmp	.LBB48_20
.LBB48_20:                              # %while.cond.33
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	bidi_cache_idx, %rcx
	movslq	-36(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB48_25
# BB#21:                                # %while.body.38
                                        #   in Loop: Header=BB48_20 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %edx
	cmpl	$0, %edx
	jl	.LBB48_24
# BB#22:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB48_20 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$2328, %rax, %rax       # imm = 0x918
	addq	bidi_cache, %rax
	movsbl	52(%rax), %edx
	cmpl	-12(%rbp), %edx
	jge	.LBB48_24
# BB#23:                                # %if.then.54
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_28
.LBB48_24:                              # %if.end.55
                                        #   in Loop: Header=BB48_20 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB48_20
.LBB48_25:                              # %while.end.56
	jmp	.LBB48_26
.LBB48_26:                              # %if.end.57
	jmp	.LBB48_27
.LBB48_27:                              # %if.end.58
	movq	$-1, -8(%rbp)
.LBB48_28:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end48:
	.size	bidi_cache_find_level_change, .Lfunc_end48-bidi_cache_find_level_change
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_resolve_explicit,@function
bidi_resolve_explicit:                  # @bidi_resolve_explicit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp160:
	.cfi_offset %rbx, -56
.Ltmp161:
	.cfi_offset %r12, -48
.Ltmp162:
	.cfi_offset %r13, -40
.Ltmp163:
	.cfi_offset %r14, -32
.Ltmp164:
	.cfi_offset %r15, -24
	movb	$1, %al
	movq	%rdi, -48(%rbp)
	movl	$0, -64(%rbp)
	movq	-48(%rbp), %rdi
	cmpq	$0, 2264(%rdi)
	movb	%al, -141(%rbp)         # 1-byte Spill
	jne	.LBB49_2
# BB#1:                                 # %lor.rhs
	movq	-48(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	movb	%al, -141(%rbp)         # 1-byte Spill
.LBB49_2:                               # %lor.end
	movb	-141(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -78(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	$0, 2264(%rcx)
	jne	.LBB49_4
# BB#3:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB49_4
	jmp	.LBB49_5
.LBB49_4:                               # %cond.true
	movq	-48(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB49_6
.LBB49_5:                               # %cond.false
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB49_6:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$5, 44(%rax)
	je	.LBB49_14
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$5, 40(%rax)
	je	.LBB49_14
# BB#8:                                 # %if.then
	movq	-48(%rbp), %rax
	cmpl	$23, 44(%rax)
	jne	.LBB49_12
# BB#9:                                 # %land.lhs.true.13
	movq	-48(%rbp), %rax
	movl	40(%rax), %edi
	callq	bidi_get_category
	cmpl	$3, %eax
	jne	.LBB49_12
# BB#10:                                # %land.lhs.true.17
	movq	-48(%rbp), %rax
	movl	16(%rax), %edi
	callq	bidi_paired_bracket_type
	cmpl	$3, %eax
	jne	.LBB49_12
# BB#11:                                # %if.then.20
	movl	$1, %edx
	movq	-48(%rbp), %rax
	addq	$72, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	bidi_remember_char
	jmp	.LBB49_13
.LBB49_12:                              # %if.else
	xorl	%edx, %edx
	movq	-48(%rbp), %rax
	addq	$72, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	bidi_remember_char
.LBB49_13:                              # %if.end
	jmp	.LBB49_14
.LBB49_14:                              # %if.end.22
	movq	-48(%rbp), %rax
	cmpl	$2, 44(%rax)
	je	.LBB49_17
# BB#15:                                # %lor.lhs.false.25
	movq	-48(%rbp), %rax
	cmpl	$1, 44(%rax)
	je	.LBB49_17
# BB#16:                                # %lor.lhs.false.28
	movq	-48(%rbp), %rax
	cmpl	$7, 44(%rax)
	jne	.LBB49_18
.LBB49_17:                              # %if.then.31
	xorl	%edx, %edx
	movq	-48(%rbp), %rax
	addq	$88, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	bidi_remember_char
.LBB49_18:                              # %if.end.32
	movq	-48(%rbp), %rax
	cmpl	$2, 40(%rax)
	je	.LBB49_22
# BB#19:                                # %lor.lhs.false.35
	movq	-48(%rbp), %rax
	cmpl	$1, 40(%rax)
	je	.LBB49_22
# BB#20:                                # %lor.lhs.false.38
	movq	-48(%rbp), %rax
	cmpl	$3, 40(%rax)
	je	.LBB49_22
# BB#21:                                # %lor.lhs.false.41
	movq	-48(%rbp), %rax
	cmpl	$4, 40(%rax)
	jne	.LBB49_23
.LBB49_22:                              # %if.then.44
	movl	$1, %edx
	movq	-48(%rbp), %rax
	addq	$120, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	bidi_remember_char
.LBB49_23:                              # %if.end.45
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jl	.LBB49_27
# BB#24:                                # %if.then.48
	movq	-48(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-48(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB49_26
# BB#25:                                # %if.then.52
	movq	-48(%rbp), %rax
	movq	$-1, 152(%rax)
.LBB49_26:                              # %if.end.54
	jmp	.LBB49_27
.LBB49_27:                              # %if.end.55
	movq	-48(%rbp), %rax
	cmpq	$0, 168(%rax)
	jl	.LBB49_30
# BB#28:                                # %land.lhs.true.57
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	168(%rcx), %rax
	jl	.LBB49_30
# BB#29:                                # %if.then.61
	movq	-48(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 176(%rax)
.LBB49_30:                              # %if.end.63
	movq	-48(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-128(%rbp), %rax
	je	.LBB49_32
# BB#31:                                # %if.then.66
	movq	-48(%rbp), %rax
	movq	$-1, 152(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 160(%rax)
.LBB49_32:                              # %if.end.68
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testb	$1, -78(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	je	.LBB49_34
# BB#33:                                # %cond.true.70
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB49_35
.LBB49_34:                              # %cond.false.71
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB49_35:                              # %cond.end.72
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB49_37
# BB#36:                                # %lor.lhs.false.75
	movq	-48(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB49_51
.LBB49_37:                              # %if.then.76
	movq	-48(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 2320(%rax)
	testb	$1, -78(%rbp)
	je	.LBB49_44
# BB#38:                                # %if.then.81
	movq	-48(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB49_39
	jmp	.LBB49_40
.LBB49_39:                              # %cond.true.85
	movq	-48(%rbp), %rax
	movq	2256(%rax), %rdi
	callq	SDATA
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB49_41
.LBB49_40:                              # %cond.false.89
	movq	-48(%rbp), %rax
	movq	2264(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB49_41:                              # %cond.end.92
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jge	.LBB49_43
# BB#42:                                # %if.then.96
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
.LBB49_43:                              # %if.end.99
	jmp	.LBB49_47
.LBB49_44:                              # %if.else.100
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB49_46
# BB#45:                                # %if.then.103
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_46:                              # %if.end.108
	jmp	.LBB49_47
.LBB49_47:                              # %if.end.109
	movq	-48(%rbp), %rax
	movb	2320(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB49_50
# BB#48:                                # %land.lhs.true.114
	movq	-48(%rbp), %rax
	cmpl	$0, 80(%rax)
	je	.LBB49_50
# BB#49:                                # %if.then.118
	movq	-48(%rbp), %rax
	movl	84(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB49_50:                              # %if.end.120
	jmp	.LBB49_62
.LBB49_51:                              # %if.else.121
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testb	$1, -78(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	je	.LBB49_53
# BB#52:                                # %cond.true.124
	movq	-48(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB49_54
.LBB49_53:                              # %cond.false.127
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB49_54:                              # %cond.end.129
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB49_60
# BB#55:                                # %if.then.132
	movq	-48(%rbp), %rax
	cmpq	$0, 24(%rax)
	jg	.LBB49_57
# BB#56:                                # %if.then.135
	callq	emacs_abort
.LBB49_57:                              # %if.end.136
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB49_59
# BB#58:                                # %if.then.141
	callq	emacs_abort
.LBB49_59:                              # %if.end.142
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movl	48(%rax), %edx
	movl	%edx, -64(%rbp)
	jmp	.LBB49_61
.LBB49_60:                              # %if.else.147
	movl	$6, -64(%rbp)
.LBB49_61:                              # %if.end.148
	jmp	.LBB49_62
.LBB49_62:                              # %if.end.149
	movq	-48(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-48(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	movl	%edx, -68(%rbp)
	movq	-48(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-48(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	11(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movb	%sil, -77(%rbp)
	movq	-48(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-48(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	11(%rcx), %edx
	sarl	$1, %edx
	andl	$3, %edx
	movl	%edx, -76(%rbp)
	movl	-68(%rbp), %edx
	movl	%edx, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testb	$1, -78(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	je	.LBB49_64
# BB#63:                                # %cond.true.167
	movq	-48(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB49_65
.LBB49_64:                              # %cond.false.170
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB49_65:                              # %cond.end.172
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB49_70
# BB#66:                                # %if.then.176
	movl	$-1, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	$1, 32(%rax)
	movq	-48(%rbp), %rax
	movq	$1, 24(%rax)
	testb	$1, -78(%rbp)
	je	.LBB49_68
# BB#67:                                # %cond.true.181
	movq	-48(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB49_69
.LBB49_68:                              # %cond.false.184
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB49_69:                              # %cond.end.186
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-48(%rbp), %rax
	movl	$0, 200(%rax)
	jmp	.LBB49_94
.LBB49_70:                              # %if.else.190
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	subl	$12, %ecx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	je	.LBB49_83
	jmp	.LBB49_154
.LBB49_154:                             # %if.else.190
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB49_77
	jmp	.LBB49_155
.LBB49_155:                             # %if.else.190
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$14, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jne	.LBB49_92
	jmp	.LBB49_71
.LBB49_71:                              # %sw.bb
	cmpl	$125, -68(%rbp)
	jge	.LBB49_75
# BB#72:                                # %land.lhs.true.193
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB49_75
# BB#73:                                # %land.lhs.true.196
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB49_75
# BB#74:                                # %if.then.199
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	-68(%rbp), %eax
	addl	$1, %eax
	andl	$-2, %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rsi
	movb	53(%rsi), %dil
	addb	$1, %dil
	movb	%dil, 53(%rsi)
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	bidi_push_embedding_level
	jmp	.LBB49_76
.LBB49_75:                              # %if.else.203
	movq	-48(%rbp), %rax
	movq	64(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 64(%rax)
.LBB49_76:                              # %if.end.206
	jmp	.LBB49_93
.LBB49_77:                              # %sw.bb.207
	cmpl	$124, -68(%rbp)
	jge	.LBB49_81
# BB#78:                                # %land.lhs.true.210
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB49_81
# BB#79:                                # %land.lhs.true.214
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB49_81
# BB#80:                                # %if.then.218
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	-68(%rbp), %eax
	addl	$2, %eax
	andl	$-2, %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rsi
	movb	53(%rsi), %dil
	addb	$1, %dil
	movb	%dil, 53(%rsi)
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	bidi_push_embedding_level
	jmp	.LBB49_82
.LBB49_81:                              # %if.else.223
	movq	-48(%rbp), %rax
	movq	64(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 64(%rax)
.LBB49_82:                              # %if.end.226
	jmp	.LBB49_93
.LBB49_83:                              # %sw.bb.227
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB49_91
# BB#84:                                # %if.then.230
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB49_86
# BB#85:                                # %if.then.233
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 56(%rax)
	jmp	.LBB49_90
.LBB49_86:                              # %if.else.235
	testb	$1, -77(%rbp)
	jne	.LBB49_89
# BB#87:                                # %land.lhs.true.237
	movq	-48(%rbp), %rax
	cmpl	$1, 204(%rax)
	jl	.LBB49_89
# BB#88:                                # %if.then.241
	movq	-48(%rbp), %rdi
	callq	bidi_pop_embedding_level
	movl	%eax, -72(%rbp)
.LBB49_89:                              # %if.end.243
	jmp	.LBB49_90
.LBB49_90:                              # %if.end.244
	jmp	.LBB49_91
.LBB49_91:                              # %if.end.245
	jmp	.LBB49_93
.LBB49_92:                              # %sw.default
	jmp	.LBB49_93
.LBB49_93:                              # %sw.epilog
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	addq	$192, %rax
	movq	-48(%rbp), %rcx
	addq	$200, %rcx
	movq	-48(%rbp), %rdx
	addq	$2256, %rdx             # imm = 0x8D0
	movq	-48(%rbp), %r8
	movq	2296(%r8), %r9
	movq	-48(%rbp), %r8
	movb	2320(%r8), %r10b
	shrb	$2, %r10b
	andb	$1, %r10b
	movq	-48(%rbp), %r8
	addq	$32, %r8
	movq	-48(%rbp), %r11
	addq	$24, %r11
	andb	$1, %r10b
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%r8, -248(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movzbl	%r10b, %ebx
	movl	%ebx, (%rsp)
	movq	-248(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	bidi_fetch_char
	movl	%eax, -52(%rbp)
.LBB49_94:                              # %if.end.257
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movb	-72(%rbp), %dl
	movq	-48(%rbp), %rcx
	movb	%dl, 52(%rcx)
	movl	-52(%rbp), %edi
	xorl	%esi, %esi
	callq	bidi_get_type
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-48(%rbp), %rcx
	movl	48(%rcx), %edi
	callq	bidi_check_type
	movq	-48(%rbp), %rcx
	movl	$0, 44(%rcx)
	movl	-56(%rbp), %eax
	addl	$-8, %eax
	movl	%eax, %ecx
	subl	$8, %eax
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movl	%eax, -260(%rbp)        # 4-byte Spill
	ja	.LBB49_150
# BB#156:                               # %if.end.257
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	.LJTI49_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB49_95:                              # %sw.bb.264
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-48(%rbp), %rcx
	movl	44(%rcx), %edi
	callq	bidi_check_type
	movl	$5, -56(%rbp)
	cmpl	$125, -72(%rbp)
	jge	.LBB49_102
# BB#96:                                # %land.lhs.true.269
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB49_102
# BB#97:                                # %land.lhs.true.273
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB49_102
# BB#98:                                # %if.then.277
	movl	-72(%rbp), %eax
	addl	$1, %eax
	andl	$-2, %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rcx
	cmpl	$10, 44(%rcx)
	jne	.LBB49_100
# BB#99:                                # %if.then.284
	movl	$0, -76(%rbp)
	jmp	.LBB49_101
.LBB49_100:                             # %if.else.285
	movl	$2, -76(%rbp)
.LBB49_101:                             # %if.end.286
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	bidi_push_embedding_level
	movl	-72(%rbp), %ecx
	movb	%cl, %al
	movq	-48(%rbp), %rdi
	movb	%al, 52(%rdi)
	jmp	.LBB49_105
.LBB49_102:                             # %if.else.289
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB49_104
# BB#103:                               # %if.then.293
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 56(%rax)
.LBB49_104:                             # %if.end.296
	jmp	.LBB49_105
.LBB49_105:                             # %if.end.297
	jmp	.LBB49_151
.LBB49_106:                             # %sw.bb.298
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-48(%rbp), %rcx
	movl	44(%rcx), %edi
	callq	bidi_check_type
	movl	$5, -56(%rbp)
	cmpl	$124, -72(%rbp)
	jge	.LBB49_113
# BB#107:                               # %land.lhs.true.303
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB49_113
# BB#108:                               # %land.lhs.true.307
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB49_113
# BB#109:                               # %if.then.311
	movl	-72(%rbp), %eax
	addl	$2, %eax
	andl	$-2, %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rcx
	cmpl	$8, 44(%rcx)
	jne	.LBB49_111
# BB#110:                               # %if.then.317
	movl	$0, -76(%rbp)
	jmp	.LBB49_112
.LBB49_111:                             # %if.else.318
	movl	$1, -76(%rbp)
.LBB49_112:                             # %if.end.319
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	bidi_push_embedding_level
	movl	-72(%rbp), %ecx
	movb	%cl, %al
	movq	-48(%rbp), %rdi
	movb	%al, 52(%rdi)
	jmp	.LBB49_116
.LBB49_113:                             # %if.else.322
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB49_115
# BB#114:                               # %if.then.326
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 56(%rax)
.LBB49_115:                             # %if.end.329
	jmp	.LBB49_116
.LBB49_116:                             # %if.end.330
	jmp	.LBB49_151
.LBB49_117:                             # %sw.bb.331
	testb	$1, -78(%rbp)
	je	.LBB49_119
# BB#118:                               # %cond.true.334
	movq	-48(%rbp), %rax
	movq	2272(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB49_120
.LBB49_119:                             # %cond.false.337
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB49_120:                             # %cond.end.339
	movq	-272(%rbp), %rax        # 8-byte Reload
	leaq	-104(%rbp), %rcx
	leaq	-116(%rbp), %r8
	leaq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movl	$1, %edi
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movl	200(%rax), %r9d
	movl	%r9d, -116(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	-112(%rbp), %r11
	movq	-48(%rbp), %rbx
	addq	$2256, %rbx             # imm = 0x8D0
	movq	-48(%rbp), %r14
	movq	2296(%r14), %r14
	movb	-78(%rbp), %r15b
	movq	-48(%rbp), %r12
	movb	2320(%r12), %r13b
	shrb	$2, %r13b
	andb	$1, %r13b
	andb	$1, %r15b
	andb	$1, %r13b
	movl	%edi, -276(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	%rbx, %r9
	movq	%r14, (%rsp)
	movzbl	%r15b, %r10d
	movl	%r10d, 8(%rsp)
	movzbl	%r13b, %r10d
	movl	%r10d, 16(%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movl	$1, 40(%rsp)
	callq	find_first_strong_char
	movl	%eax, -60(%rbp)
	cmpl	$2, -60(%rbp)
	je	.LBB49_123
# BB#121:                               # %land.lhs.true.358
	cmpl	$7, -60(%rbp)
	je	.LBB49_123
# BB#122:                               # %if.then.361
	movl	$13, -56(%rbp)
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 48(%rcx)
	jmp	.LBB49_130
.LBB49_123:                             # %if.else.363
	movl	$14, -56(%rbp)
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 48(%rcx)
# BB#124:                               # %if.end.365
	jmp	.LBB49_125
.LBB49_125:                             # %sw.bb.366
	cmpl	$0, -76(%rbp)
	jne	.LBB49_127
# BB#126:                               # %if.then.369
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 44(%rcx)
	jmp	.LBB49_128
.LBB49_127:                             # %if.else.371
	movl	$2, %eax
	movl	$1, %ecx
	cmpl	$1, -76(%rbp)
	cmovel	%ecx, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 44(%rdx)
.LBB49_128:                             # %if.end.376
	movq	-48(%rbp), %rax
	movl	44(%rax), %edi
	callq	bidi_check_type
	jmp	.LBB49_151
.LBB49_129:                             # %sw.bb.378
	jmp	.LBB49_130
.LBB49_130:                             # %fsi_as_lri
	cmpl	$0, -76(%rbp)
	jne	.LBB49_132
# BB#131:                               # %if.then.381
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 44(%rcx)
	jmp	.LBB49_133
.LBB49_132:                             # %if.else.383
	movl	$2, %eax
	movl	$1, %ecx
	cmpl	$1, -76(%rbp)
	cmovel	%ecx, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 44(%rdx)
.LBB49_133:                             # %if.end.388
	movq	-48(%rbp), %rax
	movl	44(%rax), %edi
	callq	bidi_check_type
	jmp	.LBB49_151
.LBB49_134:                             # %sw.bb.390
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB49_136
# BB#135:                               # %if.then.393
	movq	-48(%rbp), %rax
	movq	64(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 64(%rax)
	jmp	.LBB49_142
.LBB49_136:                             # %if.else.396
	movq	-48(%rbp), %rax
	movsbl	53(%rax), %ecx
	cmpl	$0, %ecx
	jle	.LBB49_141
# BB#137:                               # %if.then.401
	movq	-48(%rbp), %rax
	movq	$0, 56(%rax)
.LBB49_138:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-48(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	11(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	jne	.LBB49_139
	jmp	.LBB49_140
.LBB49_139:                             # %while.body
                                        #   in Loop: Header=BB49_138 Depth=1
	movq	-48(%rbp), %rdi
	callq	bidi_pop_embedding_level
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB49_138
.LBB49_140:                             # %while.end
	movq	-48(%rbp), %rdi
	callq	bidi_pop_embedding_level
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movb	53(%rdi), %cl
	addb	$-1, %cl
	movb	%cl, 53(%rdi)
.LBB49_141:                             # %if.end.415
	jmp	.LBB49_142
.LBB49_142:                             # %if.end.416
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 52(%rdx)
	movq	-48(%rbp), %rdx
	movslq	204(%rdx), %rdx
	movq	-48(%rbp), %rsi
	addq	$208, %rsi
	shlq	$4, %rdx
	addq	%rdx, %rsi
	movzbl	11(%rsi), %eax
	sarl	$1, %eax
	andl	$3, %eax
	movl	%eax, -140(%rbp)
	cmpl	$1, -140(%rbp)
	jne	.LBB49_144
# BB#143:                               # %if.then.429
	movq	-48(%rbp), %rax
	movl	$1, 44(%rax)
	jmp	.LBB49_148
.LBB49_144:                             # %if.else.431
	cmpl	$2, -140(%rbp)
	jne	.LBB49_146
# BB#145:                               # %if.then.434
	movq	-48(%rbp), %rax
	movl	$2, 44(%rax)
	jmp	.LBB49_147
.LBB49_146:                             # %if.else.436
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 44(%rcx)
.LBB49_147:                             # %if.end.438
	jmp	.LBB49_148
.LBB49_148:                             # %if.end.439
	jmp	.LBB49_151
.LBB49_149:                             # %sw.bb.440
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-48(%rbp), %rcx
	movl	44(%rcx), %edi
	callq	bidi_check_type
	movl	$5, -56(%rbp)
	jmp	.LBB49_151
.LBB49_150:                             # %sw.default.443
	jmp	.LBB49_151
.LBB49_151:                             # %sw.epilog.444
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-48(%rbp), %rcx
	movl	40(%rcx), %edi
	callq	bidi_check_type
	movq	-48(%rbp), %rcx
	cmpl	$6, 40(%rcx)
	jne	.LBB49_153
# BB#152:                               # %if.then.450
	movq	-48(%rbp), %rdi
	callq	bidi_set_paragraph_end
	movq	-48(%rbp), %rdi
	movl	40(%rdi), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, 44(%rdi)
.LBB49_153:                             # %if.end.453
	movq	-48(%rbp), %rax
	movsbl	52(%rax), %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	bidi_resolve_explicit, .Lfunc_end49-bidi_resolve_explicit
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI49_0:
	.quad	.LBB49_106
	.quad	.LBB49_106
	.quad	.LBB49_95
	.quad	.LBB49_95
	.quad	.LBB49_149
	.quad	.LBB49_129
	.quad	.LBB49_125
	.quad	.LBB49_117
	.quad	.LBB49_134

	.text
	.align	16, 0x90
	.type	bidi_push_embedding_level,@function
bidi_push_embedding_level:              # @bidi_push_embedding_level
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
	subq	$48, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	movslq	204(%rdi), %rdi
	movq	-8(%rbp), %r8
	addq	$208, %r8
	shlq	$4, %rdi
	addq	%rdi, %r8
	movzbl	10(%r8), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	204(%rdi), %ecx
	addl	$1, %ecx
	movl	%ecx, 204(%rdi)
	movq	-8(%rbp), %rdi
	movslq	204(%rdi), %rdi
	movq	-8(%rbp), %r8
	addq	$208, %r8
	shlq	$4, %rdi
	addq	%rdi, %r8
	movq	%r8, -32(%rbp)
	movl	-12(%rbp), %ecx
	movb	%cl, %al
	movq	-32(%rbp), %rdi
	movb	%al, 10(%rdi)
	movl	-16(%rbp), %ecx
	andl	$3, %ecx
	shll	$1, %ecx
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	orl	%edx, %ecx
	movb	%cl, %al
	movq	-32(%rbp), %rdi
	movb	%al, 11(%rdi)
	testb	$1, -17(%rbp)
	je	.LBB50_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movl	96(%rdx), %esi
	movq	-32(%rbp), %rdx
	movw	%si, %di
	movw	8(%rdx), %r8w
	andw	$7, %di
	shlw	$3, %di
	andw	$-57, %r8w
	orw	%di, %r8w
	movw	%r8w, 8(%rdx)
	movq	-8(%rbp), %rdx
	movl	128(%rdx), %esi
	movq	-32(%rbp), %rdx
	movw	%si, %di
	movw	8(%rdx), %r8w
	andw	$7, %di
	shlw	$6, %di
	andw	$-449, %r8w             # imm = 0xFFFFFFFFFFFFFE3F
	orw	%di, %r8w
	movw	%r8w, 8(%rdx)
	movq	-8(%rbp), %rdx
	movl	112(%rdx), %esi
	movq	-32(%rbp), %rdx
	movw	%si, %di
	movw	8(%rdx), %r8w
	andw	$7, %di
	andw	$-8, %r8w
	orw	%di, %r8w
	movw	%r8w, 8(%rdx)
	movq	-8(%rbp), %rdx
	movq	104(%rdx), %rdx
	movq	-32(%rbp), %r9
	movq	%rdx, (%r9)
	movq	-8(%rbp), %rdx
	cmpl	$1, 180(%rdx)
	cmovel	%ecx, %eax
	shll	$3, %eax
	movq	-32(%rbp), %rdx
	movzbl	11(%rdx), %ecx
	orl	%eax, %ecx
	movb	%cl, %r10b
	movb	%r10b, 11(%rdx)
.LBB50_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	bidi_set_sos_type
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	bidi_push_embedding_level, .Lfunc_end50-bidi_push_embedding_level
	.cfi_endproc

	.align	16, 0x90
	.type	bidi_pop_embedding_level,@function
bidi_pop_embedding_level:               # @bidi_pop_embedding_level
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 204(%rdi)
	jle	.LBB51_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	11(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movb	%sil, -13(%rbp)
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rax
	movq	%rax, -40(%rbp)
	movq	8(%rcx), %rax
	movq	%rax, -32(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB51_3
# BB#2:                                 # %if.then.13
	movl	$2, %eax
	movl	$1, %ecx
	movzbl	-29(%rbp), %edx
	sarl	$3, %edx
	andl	$1, %edx
	movl	%edx, -44(%rbp)
	movq	-8(%rbp), %rsi
	movl	$0, 80(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 84(%rsi)
	movw	-32(%rbp), %di
	shrw	$3, %di
	andw	$7, %di
	movzwl	%di, %edx
	movq	-8(%rbp), %rsi
	movl	%edx, 96(%rsi)
	movw	-32(%rbp), %di
	shrw	$6, %di
	andw	$7, %di
	movzwl	%di, %edx
	movq	-8(%rbp), %rsi
	movl	%edx, 128(%rsi)
	movw	-32(%rbp), %di
	andw	$7, %di
	movzwl	%di, %edx
	movq	-8(%rbp), %rsi
	movl	%edx, 112(%rsi)
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %r8
	movq	%rsi, 104(%r8)
	cmpl	$0, -44(%rbp)
	cmovel	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 180(%rsi)
	jmp	.LBB51_4
.LBB51_3:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	204(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addq	$208, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movzbl	10(%rdx), %edx
	callq	bidi_set_sos_type
.LBB51_4:                               # %if.end
	movq	-8(%rbp), %rax
	movl	204(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 204(%rax)
.LBB51_5:                               # %if.end.39
	movq	-8(%rbp), %rax
	movslq	204(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$208, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movzbl	10(%rcx), %edx
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	bidi_pop_embedding_level, .Lfunc_end51-bidi_pop_embedding_level
	.cfi_endproc

	.type	bidi_mirror_table,@object # @bidi_mirror_table
	.local	bidi_mirror_table
	.comm	bidi_mirror_table,8,8
	.type	bidi_cache_max_elts,@object # @bidi_cache_max_elts
	.data
	.align	8
bidi_cache_max_elts:
	.quad	50000                   # 0xc350
	.size	bidi_cache_max_elts, 8

	.type	bidi_cache_idx,@object  # @bidi_cache_idx
	.local	bidi_cache_idx
	.comm	bidi_cache_idx,8,8
	.type	bidi_cache,@object      # @bidi_cache
	.local	bidi_cache
	.comm	bidi_cache,8,8
	.type	bidi_cache_start,@object # @bidi_cache_start
	.local	bidi_cache_start
	.comm	bidi_cache_start,8,8
	.type	bidi_cache_sp,@object   # @bidi_cache_sp
	.local	bidi_cache_sp
	.comm	bidi_cache_sp,4,4
	.type	bidi_cache_start_stack,@object # @bidi_cache_start_stack
	.local	bidi_cache_start_stack
	.comm	bidi_cache_start_stack,40,16
	.type	bidi_cache_last_idx,@object # @bidi_cache_last_idx
	.local	bidi_cache_last_idx
	.comm	bidi_cache_last_idx,8,8
	.type	bidi_cache_total_alloc,@object # @bidi_cache_total_alloc
	.local	bidi_cache_total_alloc
	.comm	bidi_cache_total_alloc,8,8
	.type	bidi_initialized,@object # @bidi_initialized
	.local	bidi_initialized
	.comm	bidi_initialized,1,1
	.type	bidi_cache_size,@object # @bidi_cache_size
	.local	bidi_cache_size
	.comm	bidi_cache_size,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"The cache is empty.\n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Total of  %ld state%s in cache:\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"s"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ch  "
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%*c"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"lvl "
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%*d"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"pos "
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%*ld"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"bidi-class"
	.size	.L.str.11, 11

	.type	bidi_type_table,@object # @bidi_type_table
	.local	bidi_type_table
	.comm	bidi_type_table,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"mirroring"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"bracket-type"
	.size	.L.str.13, 13

	.type	bidi_brackets_table,@object # @bidi_brackets_table
	.local	bidi_brackets_table
	.comm	bidi_brackets_table,8,8
	.type	paragraph_start_re,@object # @paragraph_start_re
	.local	paragraph_start_re
	.comm	paragraph_start_re,8,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\f\\|[ \t]*$"
	.size	.L.str.14, 10

	.type	paragraph_separate_re,@object # @paragraph_separate_re
	.local	paragraph_separate_re
	.comm	paragraph_separate_re,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"[ \t\f]*$"
	.size	.L.str.15, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
