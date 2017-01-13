	.text
	.file	"md5.bc"
	.globl	md5_init_ctx
	.align	16, 0x90
	.type	md5_init_ctx,@function
md5_init_ctx:                           # @md5_init_ctx
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
	movq	-8(%rbp), %rdi
	movl	$1732584193, (%rdi)     # imm = 0x67452301
	movq	-8(%rbp), %rdi
	movl	$-271733879, 4(%rdi)    # imm = 0xFFFFFFFFEFCDAB89
	movq	-8(%rbp), %rdi
	movl	$-1732584194, 8(%rdi)   # imm = 0xFFFFFFFF98BADCFE
	movq	-8(%rbp), %rdi
	movl	$271733878, 12(%rdi)    # imm = 0x10325476
	movq	-8(%rbp), %rdi
	movl	$0, 20(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	md5_init_ctx, .Lfunc_end0-md5_init_ctx
	.cfi_endproc

	.globl	md5_read_ctx
	.align	16, 0x90
	.type	md5_read_ctx,@function
md5_read_ctx:                           # @md5_read_ctx
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	(%rsi), %esi
	callq	set_uint32
	movq	-24(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	callq	set_uint32
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	set_uint32
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %esi
	movq	%rax, %rdi
	callq	set_uint32
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	md5_read_ctx, .Lfunc_end1-md5_read_ctx
	.cfi_endproc

	.align	16, 0x90
	.type	set_uint32,@function
set_uint32:                             # @set_uint32
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	%esi, (%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	set_uint32, .Lfunc_end2-set_uint32
	.cfi_endproc

	.globl	md5_finish_ctx
	.align	16, 0x90
	.type	md5_finish_ctx,@function
md5_finish_ctx:                         # @md5_finish_ctx
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
	subq	$48, %rsp
	movl	$32, %eax
	movl	$16, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %edx
	movl	%edx, -20(%rbp)
	cmpl	$56, -20(%rbp)
	cmovbl	%ecx, %eax
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rsi
	addl	16(%rsi), %eax
	movl	%eax, 16(%rsi)
	movq	-8(%rbp), %rsi
	movl	16(%rsi), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 20(%rax)
.LBB3_2:                                # %if.end
	movabsq	$fillbuf, %rsi
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	shll	$3, %ecx
	movq	-32(%rbp), %rax
	subq	$2, %rax
	movq	-8(%rbp), %rdx
	movl	%ecx, 28(%rdx,%rax,4)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	shll	$3, %ecx
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	shrl	$29, %edi
	orl	%edi, %ecx
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rdx
	movl	%ecx, 28(%rdx,%rax,4)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	addq	$28, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	$2, %rax
	shlq	$2, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %r8d
	subq	%r8, %rax
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	memcpy
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movq	-32(%rbp), %rdx
	shlq	$2, %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	md5_process_block
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	md5_read_ctx
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	md5_finish_ctx, .Lfunc_end3-md5_finish_ctx
	.cfi_endproc

	.globl	md5_process_block
	.align	16, 0x90
	.type	md5_process_block,@function
md5_process_block:                      # @md5_process_block
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	-16(%rbp), %rdx
	shrq	$2, %rdx
	movq	%rdx, -112(%rbp)
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -120(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -124(%rbp)
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %eax
	movl	%eax, -128(%rbp)
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -132(%rbp)
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	%eax, -136(%rbp)
	movq	-16(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	movq	-24(%rbp), %rdx
	addl	16(%rdx), %eax
	movl	%eax, 16(%rdx)
	movq	-16(%rbp), %rdx
	shrq	$31, %rdx
	shrq	$1, %rdx
	movq	-24(%rbp), %rsi
	movl	16(%rsi), %eax
	cmpl	-140(%rbp), %eax
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-24(%rbp), %rsi
	movl	20(%rsi), %eax
	movl	%eax, %edi
	addq	%rdx, %rdi
	movl	%edi, %eax
	movl	%eax, 20(%rsi)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jae	.LBB4_131
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-124(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movl	-128(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movl	-132(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movl	-136(%rbp), %ecx
	movl	%ecx, -168(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	-136(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-680876936, %eax       # imm = 0xFFFFFFFFD76AA478
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-124(%rbp), %eax
	shll	$7, %eax
	movl	-124(%rbp), %ecx
	shrl	$25, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_5:                                # %do.body.25
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	-132(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-389564586, %eax       # imm = 0xFFFFFFFFE8C7B756
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-136(%rbp), %eax
	shll	$12, %eax
	movl	-136(%rbp), %ecx
	shrl	$20, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#6:                                 # %do.end.38
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %do.body.39
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	-128(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$606105819, %eax        # imm = 0x242070DB
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-132(%rbp), %eax
	shll	$17, %eax
	movl	-132(%rbp), %ecx
	shrl	$15, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#8:                                 # %do.end.52
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_9
.LBB4_9:                                # %do.body.53
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	-124(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-1044525330, %eax      # imm = 0xFFFFFFFFC1BDCEEE
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-128(%rbp), %eax
	shll	$22, %eax
	movl	-128(%rbp), %ecx
	shrl	$10, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#10:                                # %do.end.66
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.67
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	-136(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-176418897, %eax       # imm = 0xFFFFFFFFF57C0FAF
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-124(%rbp), %eax
	shll	$7, %eax
	movl	-124(%rbp), %ecx
	shrl	$25, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#12:                                # %do.end.80
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.81
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	-132(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$1200080426, %eax       # imm = 0x4787C62A
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-136(%rbp), %eax
	shll	$12, %eax
	movl	-136(%rbp), %ecx
	shrl	$20, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#14:                                # %do.end.94
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %do.body.95
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	-128(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-1473231341, %eax      # imm = 0xFFFFFFFFA8304613
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-132(%rbp), %eax
	shll	$17, %eax
	movl	-132(%rbp), %ecx
	shrl	$15, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#16:                                # %do.end.108
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_17
.LBB4_17:                               # %do.body.109
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	-124(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-45705983, %eax        # imm = 0xFFFFFFFFFD469501
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-128(%rbp), %eax
	shll	$22, %eax
	movl	-128(%rbp), %ecx
	shrl	$10, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#18:                                # %do.end.122
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_19
.LBB4_19:                               # %do.body.123
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	-136(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$1770035416, %eax       # imm = 0x698098D8
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-124(%rbp), %eax
	shll	$7, %eax
	movl	-124(%rbp), %ecx
	shrl	$25, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#20:                                # %do.end.136
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_21
.LBB4_21:                               # %do.body.137
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	-132(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-1958414417, %eax      # imm = 0xFFFFFFFF8B44F7AF
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-136(%rbp), %eax
	shll	$12, %eax
	movl	-136(%rbp), %ecx
	shrl	$20, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#22:                                # %do.end.150
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               # %do.body.151
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	-128(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-42063, %eax           # imm = 0xFFFFFFFFFFFF5BB1
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-132(%rbp), %eax
	shll	$17, %eax
	movl	-132(%rbp), %ecx
	shrl	$15, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#24:                                # %do.end.164
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.165
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	-124(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-1990404162, %eax      # imm = 0xFFFFFFFF895CD7BE
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-128(%rbp), %eax
	shll	$22, %eax
	movl	-128(%rbp), %ecx
	shrl	$10, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#26:                                # %do.end.178
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_27
.LBB4_27:                               # %do.body.179
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	-136(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$1804603682, %eax       # imm = 0x6B901122
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-124(%rbp), %eax
	shll	$7, %eax
	movl	-124(%rbp), %ecx
	shrl	$25, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#28:                                # %do.end.192
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_29
.LBB4_29:                               # %do.body.193
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	-132(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-40341101, %eax        # imm = 0xFFFFFFFFFD987193
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-136(%rbp), %eax
	shll	$12, %eax
	movl	-136(%rbp), %ecx
	shrl	$20, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#30:                                # %do.end.206
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.207
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	-128(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$-1502002290, %eax      # imm = 0xFFFFFFFFA679438E
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-132(%rbp), %eax
	shll	$17, %eax
	movl	-132(%rbp), %ecx
	shrl	$15, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#32:                                # %do.end.220
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_33
.LBB4_33:                               # %do.body.221
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	-124(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	movq	-104(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movl	%ecx, (%rsi)
	addl	%ecx, %eax
	addl	$1236535329, %eax       # imm = 0x49B40821
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -104(%rbp)
	movl	-128(%rbp), %eax
	shll	$22, %eax
	movl	-128(%rbp), %ecx
	shrl	$10, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#34:                                # %do.end.234
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_35
.LBB4_35:                               # %do.body.235
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	-132(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-92(%rbp), %eax
	addl	$-165796510, %eax       # imm = 0xFFFFFFFFF61E2562
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#36:                                # %do.end.247
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_37
.LBB4_37:                               # %do.body.248
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	-128(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-72(%rbp), %eax
	addl	$-1069501632, %eax      # imm = 0xFFFFFFFFC040B340
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$9, %eax
	movl	-136(%rbp), %ecx
	shrl	$23, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#38:                                # %do.end.260
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_39
.LBB4_39:                               # %do.body.261
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	-124(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-52(%rbp), %eax
	addl	$643717713, %eax        # imm = 0x265E5A51
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$14, %eax
	movl	-132(%rbp), %ecx
	shrl	$18, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#40:                                # %do.end.273
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_41
.LBB4_41:                               # %do.body.274
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	-136(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-96(%rbp), %eax
	addl	$-373897302, %eax       # imm = 0xFFFFFFFFE9B6C7AA
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$20, %eax
	movl	-128(%rbp), %ecx
	shrl	$12, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#42:                                # %do.end.286
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_43
.LBB4_43:                               # %do.body.287
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	-132(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-76(%rbp), %eax
	addl	$-701558691, %eax       # imm = 0xFFFFFFFFD62F105D
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#44:                                # %do.end.299
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_45
.LBB4_45:                               # %do.body.300
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	-128(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-56(%rbp), %eax
	addl	$38016083, %eax         # imm = 0x2441453
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$9, %eax
	movl	-136(%rbp), %ecx
	shrl	$23, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#46:                                # %do.end.312
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_47
.LBB4_47:                               # %do.body.313
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	-124(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-36(%rbp), %eax
	addl	$-660478335, %eax       # imm = 0xFFFFFFFFD8A1E681
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$14, %eax
	movl	-132(%rbp), %ecx
	shrl	$18, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#48:                                # %do.end.325
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_49
.LBB4_49:                               # %do.body.326
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	-136(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-80(%rbp), %eax
	addl	$-405537848, %eax       # imm = 0xFFFFFFFFE7D3FBC8
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$20, %eax
	movl	-128(%rbp), %ecx
	shrl	$12, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#50:                                # %do.end.338
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_51
.LBB4_51:                               # %do.body.339
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	-132(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-60(%rbp), %eax
	addl	$568446438, %eax        # imm = 0x21E1CDE6
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#52:                                # %do.end.351
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_53
.LBB4_53:                               # %do.body.352
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	-128(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-40(%rbp), %eax
	addl	$-1019803690, %eax      # imm = 0xFFFFFFFFC33707D6
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$9, %eax
	movl	-136(%rbp), %ecx
	shrl	$23, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#54:                                # %do.end.364
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_55
.LBB4_55:                               # %do.body.365
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	-124(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-84(%rbp), %eax
	addl	$-187363961, %eax       # imm = 0xFFFFFFFFF4D50D87
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$14, %eax
	movl	-132(%rbp), %ecx
	shrl	$18, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#56:                                # %do.end.377
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_57
.LBB4_57:                               # %do.body.378
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	-136(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-64(%rbp), %eax
	addl	$1163531501, %eax       # imm = 0x455A14ED
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$20, %eax
	movl	-128(%rbp), %ecx
	shrl	$12, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#58:                                # %do.end.390
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_59
.LBB4_59:                               # %do.body.391
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	-132(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-44(%rbp), %eax
	addl	$-1444681467, %eax      # imm = 0xFFFFFFFFA9E3E905
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#60:                                # %do.end.403
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_61
.LBB4_61:                               # %do.body.404
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	-128(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-88(%rbp), %eax
	addl	$-51403784, %eax        # imm = 0xFFFFFFFFFCEFA3F8
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$9, %eax
	movl	-136(%rbp), %ecx
	shrl	$23, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#62:                                # %do.end.416
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_63
.LBB4_63:                               # %do.body.417
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	-124(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-68(%rbp), %eax
	addl	$1735328473, %eax       # imm = 0x676F02D9
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$14, %eax
	movl	-132(%rbp), %ecx
	shrl	$18, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#64:                                # %do.end.429
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_65
.LBB4_65:                               # %do.body.430
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	-136(%rbp), %edx
	andl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-48(%rbp), %eax
	addl	$-1926607734, %eax      # imm = 0xFFFFFFFF8D2A4C8A
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$20, %eax
	movl	-128(%rbp), %ecx
	shrl	$12, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#66:                                # %do.end.442
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_67
.LBB4_67:                               # %do.body.443
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	xorl	-132(%rbp), %eax
	xorl	-136(%rbp), %eax
	addl	-76(%rbp), %eax
	addl	$-378558, %eax          # imm = 0xFFFFFFFFFFFA3942
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$4, %eax
	movl	-124(%rbp), %ecx
	shrl	$28, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#68:                                # %do.end.454
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_69
.LBB4_69:                               # %do.body.455
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	xorl	-128(%rbp), %eax
	xorl	-132(%rbp), %eax
	addl	-64(%rbp), %eax
	addl	$-2022574463, %eax      # imm = 0xFFFFFFFF8771F681
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$11, %eax
	movl	-136(%rbp), %ecx
	shrl	$21, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#70:                                # %do.end.466
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_71
.LBB4_71:                               # %do.body.467
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	xorl	-124(%rbp), %eax
	xorl	-128(%rbp), %eax
	addl	-52(%rbp), %eax
	addl	$1839030562, %eax       # imm = 0x6D9D6122
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$16, %eax
	movl	-132(%rbp), %ecx
	shrl	$16, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#72:                                # %do.end.478
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_73
.LBB4_73:                               # %do.body.479
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	xorl	-136(%rbp), %eax
	xorl	-124(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$-35309556, %eax        # imm = 0xFFFFFFFFFDE5380C
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$23, %eax
	movl	-128(%rbp), %ecx
	shrl	$9, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#74:                                # %do.end.490
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_75
.LBB4_75:                               # %do.body.491
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	xorl	-132(%rbp), %eax
	xorl	-136(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$-1530992060, %eax      # imm = 0xFFFFFFFFA4BEEA44
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$4, %eax
	movl	-124(%rbp), %ecx
	shrl	$28, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#76:                                # %do.end.502
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_77
.LBB4_77:                               # %do.body.503
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	xorl	-128(%rbp), %eax
	xorl	-132(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1272893353, %eax       # imm = 0x4BDECFA9
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$11, %eax
	movl	-136(%rbp), %ecx
	shrl	$21, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#78:                                # %do.end.514
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_79
.LBB4_79:                               # %do.body.515
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	xorl	-124(%rbp), %eax
	xorl	-128(%rbp), %eax
	addl	-68(%rbp), %eax
	addl	$-155497632, %eax       # imm = 0xFFFFFFFFF6BB4B60
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$16, %eax
	movl	-132(%rbp), %ecx
	shrl	$16, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#80:                                # %do.end.526
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_81
.LBB4_81:                               # %do.body.527
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	xorl	-136(%rbp), %eax
	xorl	-124(%rbp), %eax
	addl	-56(%rbp), %eax
	addl	$-1094730640, %eax      # imm = 0xFFFFFFFFBEBFBC70
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$23, %eax
	movl	-128(%rbp), %ecx
	shrl	$9, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#82:                                # %do.end.538
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_83
.LBB4_83:                               # %do.body.539
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	xorl	-132(%rbp), %eax
	xorl	-136(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	$681279174, %eax        # imm = 0x289B7EC6
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$4, %eax
	movl	-124(%rbp), %ecx
	shrl	$28, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#84:                                # %do.end.550
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_85
.LBB4_85:                               # %do.body.551
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	xorl	-128(%rbp), %eax
	xorl	-132(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$-358537222, %eax       # imm = 0xFFFFFFFFEAA127FA
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$11, %eax
	movl	-136(%rbp), %ecx
	shrl	$21, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#86:                                # %do.end.562
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_87
.LBB4_87:                               # %do.body.563
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	xorl	-124(%rbp), %eax
	xorl	-128(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$-722521979, %eax       # imm = 0xFFFFFFFFD4EF3085
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$16, %eax
	movl	-132(%rbp), %ecx
	shrl	$16, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#88:                                # %do.end.574
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_89
.LBB4_89:                               # %do.body.575
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	xorl	-136(%rbp), %eax
	xorl	-124(%rbp), %eax
	addl	-72(%rbp), %eax
	addl	$76029189, %eax         # imm = 0x4881D05
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$23, %eax
	movl	-128(%rbp), %ecx
	shrl	$9, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#90:                                # %do.end.586
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_91
.LBB4_91:                               # %do.body.587
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	xorl	-132(%rbp), %eax
	xorl	-136(%rbp), %eax
	addl	-60(%rbp), %eax
	addl	$-640364487, %eax       # imm = 0xFFFFFFFFD9D4D039
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$4, %eax
	movl	-124(%rbp), %ecx
	shrl	$28, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#92:                                # %do.end.598
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_93
.LBB4_93:                               # %do.body.599
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	xorl	-128(%rbp), %eax
	xorl	-132(%rbp), %eax
	addl	-48(%rbp), %eax
	addl	$-421815835, %eax       # imm = 0xFFFFFFFFE6DB99E5
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$11, %eax
	movl	-136(%rbp), %ecx
	shrl	$21, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#94:                                # %do.end.610
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_95
.LBB4_95:                               # %do.body.611
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	xorl	-124(%rbp), %eax
	xorl	-128(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$530742520, %eax        # imm = 0x1FA27CF8
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$16, %eax
	movl	-132(%rbp), %ecx
	shrl	$16, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#96:                                # %do.end.622
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_97
.LBB4_97:                               # %do.body.623
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	xorl	-136(%rbp), %eax
	xorl	-124(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$-995338651, %eax       # imm = 0xFFFFFFFFC4AC5665
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$23, %eax
	movl	-128(%rbp), %ecx
	shrl	$9, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#98:                                # %do.end.634
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_99
.LBB4_99:                               # %do.body.635
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-96(%rbp), %eax
	addl	$-198630844, %eax       # imm = 0xFFFFFFFFF4292244
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$6, %eax
	movl	-124(%rbp), %ecx
	shrl	$26, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#100:                               # %do.end.646
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_101
.LBB4_101:                              # %do.body.647
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-68(%rbp), %eax
	addl	$1126891415, %eax       # imm = 0x432AFF97
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$10, %eax
	movl	-136(%rbp), %ecx
	shrl	$22, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#102:                               # %do.end.659
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_103
.LBB4_103:                              # %do.body.660
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-40(%rbp), %eax
	addl	$-1416354905, %eax      # imm = 0xFFFFFFFFAB9423A7
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$15, %eax
	movl	-132(%rbp), %ecx
	shrl	$17, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#104:                               # %do.end.672
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_105
.LBB4_105:                              # %do.body.673
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-76(%rbp), %eax
	addl	$-57434055, %eax        # imm = 0xFFFFFFFFFC93A039
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$21, %eax
	movl	-128(%rbp), %ecx
	shrl	$11, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#106:                               # %do.end.685
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_107
.LBB4_107:                              # %do.body.686
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-48(%rbp), %eax
	addl	$1700485571, %eax       # imm = 0x655B59C3
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$6, %eax
	movl	-124(%rbp), %ecx
	shrl	$26, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#108:                               # %do.end.698
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_109
.LBB4_109:                              # %do.body.699
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-84(%rbp), %eax
	addl	$-1894986606, %eax      # imm = 0xFFFFFFFF8F0CCC92
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$10, %eax
	movl	-136(%rbp), %ecx
	shrl	$22, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#110:                               # %do.end.711
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_111
.LBB4_111:                              # %do.body.712
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-56(%rbp), %eax
	addl	$-1051523, %eax         # imm = 0xFFFFFFFFFFEFF47D
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$15, %eax
	movl	-132(%rbp), %ecx
	shrl	$17, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#112:                               # %do.end.724
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_113
.LBB4_113:                              # %do.body.725
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-92(%rbp), %eax
	addl	$-2054922799, %eax      # imm = 0xFFFFFFFF85845DD1
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$21, %eax
	movl	-128(%rbp), %ecx
	shrl	$11, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#114:                               # %do.end.737
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_115
.LBB4_115:                              # %do.body.738
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-64(%rbp), %eax
	addl	$1873313359, %eax       # imm = 0x6FA87E4F
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$6, %eax
	movl	-124(%rbp), %ecx
	shrl	$26, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#116:                               # %do.end.750
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_117
.LBB4_117:                              # %do.body.751
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-36(%rbp), %eax
	addl	$-30611744, %eax        # imm = 0xFFFFFFFFFE2CE6E0
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$10, %eax
	movl	-136(%rbp), %ecx
	shrl	$22, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#118:                               # %do.end.763
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_119
.LBB4_119:                              # %do.body.764
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-72(%rbp), %eax
	addl	$-1560198380, %eax      # imm = 0xFFFFFFFFA3014314
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$15, %eax
	movl	-132(%rbp), %ecx
	shrl	$17, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#120:                               # %do.end.776
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_121
.LBB4_121:                              # %do.body.777
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-44(%rbp), %eax
	addl	$1309151649, %eax       # imm = 0x4E0811A1
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$21, %eax
	movl	-128(%rbp), %ecx
	shrl	$11, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#122:                               # %do.end.789
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_123
.LBB4_123:                              # %do.body.790
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-80(%rbp), %eax
	addl	$-145523070, %eax       # imm = 0xFFFFFFFFF7537E82
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	shll	$6, %eax
	movl	-124(%rbp), %ecx
	shrl	$26, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#124:                               # %do.end.802
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_125
.LBB4_125:                              # %do.body.803
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-52(%rbp), %eax
	addl	$-1120210379, %eax      # imm = 0xFFFFFFFFBD3AF235
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$10, %eax
	movl	-136(%rbp), %ecx
	shrl	$22, %ecx
	orl	%ecx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#126:                               # %do.end.815
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_127
.LBB4_127:                              # %do.body.816
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-88(%rbp), %eax
	addl	$718787259, %eax        # imm = 0x2AD7D2BB
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	shll	$15, %eax
	movl	-132(%rbp), %ecx
	shrl	$17, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#128:                               # %do.end.828
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_129
.LBB4_129:                              # %do.body.829
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	xorl	$-1, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	addl	-60(%rbp), %eax
	addl	$-343485551, %eax       # imm = 0xFFFFFFFFEB86D391
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	shll	$21, %eax
	movl	-128(%rbp), %ecx
	shrl	$11, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#130:                               # %do.end.841
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-156(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-164(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-168(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB4_1
.LBB4_131:                              # %while.end
	movl	-124(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-128(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-132(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-136(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 12(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	md5_process_block, .Lfunc_end4-md5_process_block
	.cfi_endproc

	.globl	md5_stream
	.align	16, 0x90
	.type	md5_stream,@function
md5_stream:                             # @md5_stream
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
	subq	$224, %rsp
	movl	$32840, %eax            # imm = 0x8048
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB5_17
.LBB5_2:                                # %if.end
	leaq	-184(%rbp), %rdi
	callq	md5_init_ctx
.LBB5_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	movq	$0, -192(%rbp)
.LBB5_4:                                # %while.body.2
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	$32768, %eax            # imm = 0x8000
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx
	addq	-192(%rbp), %rdx
	subq	-192(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	fread
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	-192(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpq	$32768, -192(%rbp)      # imm = 0x8000
	jne	.LBB5_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_13
.LBB5_6:                                # %if.end.5
                                        #   in Loop: Header=BB5_4 Depth=2
	cmpq	$0, -208(%rbp)
	jne	.LBB5_10
# BB#7:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB5_9
# BB#8:                                 # %if.then.10
	movq	-200(%rbp), %rdi
	callq	free
	movl	$1, -4(%rbp)
	jmp	.LBB5_17
.LBB5_9:                                # %if.end.11
	jmp	.LBB5_14
.LBB5_10:                               # %if.end.12
                                        #   in Loop: Header=BB5_4 Depth=2
	movq	-16(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB5_12
# BB#11:                                # %if.then.15
	jmp	.LBB5_14
.LBB5_12:                               # %if.end.16
                                        #   in Loop: Header=BB5_4 Depth=2
	jmp	.LBB5_4
.LBB5_13:                               # %while.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$32768, %eax            # imm = 0x8000
	movl	%eax, %esi
	leaq	-184(%rbp), %rdx
	movq	-200(%rbp), %rdi
	callq	md5_process_block
	jmp	.LBB5_3
.LBB5_14:                               # %process_partial_block
	cmpq	$0, -192(%rbp)
	jbe	.LBB5_16
# BB#15:                                # %if.then.18
	leaq	-184(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	md5_process_bytes
.LBB5_16:                               # %if.end.19
	leaq	-184(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	md5_finish_ctx
	movq	-200(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	free
	movl	$0, -4(%rbp)
.LBB5_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	md5_stream, .Lfunc_end5-md5_stream
	.cfi_endproc

	.globl	md5_process_bytes
	.align	16, 0x90
	.type	md5_process_bytes,@function
md5_process_bytes:                      # @md5_process_bytes
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	je	.LBB6_7
# BB#1:                                 # %if.then
	movl	$128, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, -32(%rbp)
	subq	-32(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	jbe	.LBB6_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_4
.LBB6_3:                                # %cond.false
	movl	$128, %eax
	movl	%eax, %ecx
	subq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB6_4:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$28, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %r8d
	movl	%r8d, %edx
	addq	%rax, %rdx
	movl	%edx, %r8d
	movl	%r8d, 24(%rcx)
	movq	-24(%rbp), %rax
	cmpl	$64, 24(%rax)
	jbe	.LBB6_6
# BB#5:                                 # %if.then.13
	movq	-24(%rbp), %rax
	addq	$28, %rax
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %edx
	andl	$-64, %edx
	movl	%edx, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	md5_process_block
	movq	-24(%rbp), %rax
	movl	24(%rax), %r8d
	andl	$63, %r8d
	movl	%r8d, 24(%rax)
	movq	-24(%rbp), %rax
	addq	$28, %rax
	movq	-32(%rbp), %rcx
	addq	-40(%rbp), %rcx
	andq	$-64, %rcx
	movq	-24(%rbp), %rdx
	addq	$28, %rdx
	addq	%rcx, %rdx
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	memcpy
.LBB6_6:                                # %if.end
	movq	-8(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -16(%rbp)
.LBB6_7:                                # %if.end.29
	cmpq	$64, -16(%rbp)
	jb	.LBB6_15
# BB#8:                                 # %if.then.32
	movq	-8(%rbp), %rax
	andq	$3, %rax
	cmpq	$0, %rax
	je	.LBB6_13
# BB#9:                                 # %if.then.35
	jmp	.LBB6_10
.LBB6_10:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$64, -16(%rbp)
	jbe	.LBB6_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	$28, %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	md5_process_block
	movq	-8(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, -8(%rbp)
	movq	-16(%rbp), %rcx
	subq	$64, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB6_10
.LBB6_12:                               # %while.end
	jmp	.LBB6_14
.LBB6_13:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	andq	$-64, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	md5_process_block
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	andq	$-64, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	andq	$63, %rax
	movq	%rax, -16(%rbp)
.LBB6_14:                               # %if.end.45
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.46
	cmpq	$0, -16(%rbp)
	jbe	.LBB6_19
# BB#16:                                # %if.then.49
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$28, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	memcpy
	movq	-16(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$64, -48(%rbp)
	jb	.LBB6_18
# BB#17:                                # %if.then.59
	movl	$64, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	addq	$28, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	callq	md5_process_block
	movq	-48(%rbp), %rcx
	subq	$64, %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	addq	$28, %rcx
	movq	-24(%rbp), %rdx
	addq	$28, %rdx
	addq	$64, %rdx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
.LBB6_18:                               # %if.end.66
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 24(%rax)
.LBB6_19:                               # %if.end.69
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	md5_process_bytes, .Lfunc_end6-md5_process_bytes
	.cfi_endproc

	.globl	md5_buffer
	.align	16, 0x90
	.type	md5_buffer,@function
md5_buffer:                             # @md5_buffer
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
	subq	$192, %rsp
	leaq	-184(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdi
	callq	md5_init_ctx
	leaq	-184(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	md5_process_bytes
	leaq	-184(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	md5_finish_ctx
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	md5_buffer, .Lfunc_end7-md5_buffer
	.cfi_endproc

	.type	fillbuf,@object         # @fillbuf
	.section	.rodata,"a",@progbits
	.align	16
fillbuf:
	.asciz	"\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	fillbuf, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
