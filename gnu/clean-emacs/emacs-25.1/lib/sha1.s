	.text
	.file	"sha1.bc"
	.globl	sha1_init_ctx
	.align	16, 0x90
	.type	sha1_init_ctx,@function
sha1_init_ctx:                          # @sha1_init_ctx
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
	movl	$-1009589776, 16(%rdi)  # imm = 0xFFFFFFFFC3D2E1F0
	movq	-8(%rbp), %rdi
	movl	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 20(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 28(%rdi)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sha1_init_ctx, .Lfunc_end0-sha1_init_ctx
	.cfi_endproc

	.globl	sha1_read_ctx
	.align	16, 0x90
	.type	sha1_read_ctx,@function
sha1_read_ctx:                          # @sha1_read_ctx
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
	movl	(%rsi), %eax
	shll	$24, %eax
	movq	-8(%rbp), %rsi
	movl	(%rsi), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	(%rsi), %ecx
	shrl	$8, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	(%rsi), %ecx
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, %esi
	callq	set_uint32
	movq	-24(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %eax
	shll	$24, %eax
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %ecx
	shrl	$8, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %ecx
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, %esi
	callq	set_uint32
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	shll	$24, %eax
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %ecx
	shrl	$8, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %ecx
	shrl	$24, %ecx
	orl	%ecx, %eax
	movq	%rdx, %rdi
	movl	%eax, %esi
	callq	set_uint32
	movq	-24(%rbp), %rdx
	addq	$12, %rdx
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	shll	$24, %eax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	shrl	$8, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	shrl	$24, %ecx
	orl	%ecx, %eax
	movq	%rdx, %rdi
	movl	%eax, %esi
	callq	set_uint32
	movq	-24(%rbp), %rdx
	addq	$16, %rdx
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	shll	$24, %eax
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %ecx
	shrl	$8, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %ecx
	shrl	$24, %ecx
	orl	%ecx, %eax
	movq	%rdx, %rdi
	movl	%eax, %esi
	callq	set_uint32
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sha1_read_ctx, .Lfunc_end1-sha1_read_ctx
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

	.globl	sha1_finish_ctx
	.align	16, 0x90
	.type	sha1_finish_ctx,@function
sha1_finish_ctx:                        # @sha1_finish_ctx
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
	movl	28(%rsi), %edx
	movl	%edx, -20(%rbp)
	cmpl	$56, -20(%rbp)
	cmovbl	%ecx, %eax
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rsi
	addl	20(%rsi), %eax
	movl	%eax, 20(%rsi)
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
.LBB3_2:                                # %if.end
	movabsq	$fillbuf, %rsi
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$3, %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	shrl	$29, %edx
	orl	%edx, %ecx
	shll	$24, %ecx
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	shll	$3, %edx
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	shrl	$29, %edi
	orl	%edi, %edx
	andl	$65280, %edx            # imm = 0xFF00
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	shll	$3, %edx
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	shrl	$29, %edi
	orl	%edi, %edx
	shrl	$8, %edx
	andl	$65280, %edx            # imm = 0xFF00
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	shll	$3, %edx
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	shrl	$29, %edi
	orl	%edi, %edx
	shrl	$24, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	subq	$2, %rax
	movq	-8(%rbp), %r8
	movl	%ecx, 32(%r8,%rax,4)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	shll	$3, %ecx
	shll	$24, %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	shll	$3, %edx
	andl	$65280, %edx            # imm = 0xFF00
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	shll	$3, %edx
	shrl	$8, %edx
	andl	$65280, %edx            # imm = 0xFF00
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	shll	$3, %edx
	shrl	$24, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %r8
	movl	%ecx, 32(%r8,%rax,4)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %r8
	addq	$32, %r8
	addq	%rax, %r8
	movq	-32(%rbp), %rax
	subq	$2, %rax
	shlq	$2, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %r9d
	subq	%r9, %rax
	movq	%r8, %rdi
	movq	%rax, %rdx
	callq	memcpy
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	-32(%rbp), %rdx
	shlq	$2, %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	sha1_process_block
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sha1_read_ctx
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sha1_finish_ctx, .Lfunc_end3-sha1_finish_ctx
	.cfi_endproc

	.globl	sha1_process_block
	.align	16, 0x90
	.type	sha1_process_block,@function
sha1_process_block:                     # @sha1_process_block
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	shrq	$2, %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -116(%rbp)
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %eax
	movl	%eax, -120(%rbp)
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -124(%rbp)
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	%eax, -128(%rbp)
	movq	-24(%rbp), %rdx
	movl	16(%rdx), %eax
	movl	%eax, -132(%rbp)
	movq	-16(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	movq	-24(%rbp), %rdx
	addl	20(%rdx), %eax
	movl	%eax, 20(%rdx)
	movq	-16(%rbp), %rdx
	shrq	$31, %rdx
	shrq	$1, %rdx
	movq	-24(%rbp), %rsi
	movl	20(%rsi), %eax
	cmpl	-136(%rbp), %eax
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-24(%rbp), %rsi
	movl	24(%rsi), %eax
	movl	%eax, %edi
	addq	%rdx, %rdi
	movl	%edi, %eax
	movl	%eax, 24(%rsi)
.LBB4_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB4_167
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -144(%rbp)
.LBB4_3:                                # %for.cond
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -144(%rbp)
	jge	.LBB4_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	shll	$24, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	andl	$65280, %edx            # imm = 0xFF00
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	shrl	$8, %edx
	andl	$65280, %edx            # imm = 0xFF00
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	shrl	$24, %edx
	orl	%edx, %ecx
	movslq	-144(%rbp), %rax
	movl	%ecx, -112(%rbp,%rax,4)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB4_3
.LBB4_6:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %do.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-112(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#8:                                 # %do.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_9
.LBB4_9:                                # %do.body.36
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-108(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#10:                                # %do.end.51
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.52
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-104(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#12:                                # %do.end.67
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.68
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-100(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#14:                                # %do.end.83
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %do.body.84
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-96(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#16:                                # %do.end.99
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_17
.LBB4_17:                               # %do.body.100
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-92(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#18:                                # %do.end.115
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_19
.LBB4_19:                               # %do.body.116
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-88(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#20:                                # %do.end.131
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_21
.LBB4_21:                               # %do.body.132
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-84(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#22:                                # %do.end.147
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               # %do.body.148
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-80(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#24:                                # %do.end.163
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.164
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-76(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#26:                                # %do.end.179
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_27
.LBB4_27:                               # %do.body.180
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-72(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#28:                                # %do.end.195
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_29
.LBB4_29:                               # %do.body.196
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-68(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#30:                                # %do.end.211
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.212
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-64(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#32:                                # %do.end.227
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_33
.LBB4_33:                               # %do.body.228
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-60(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#34:                                # %do.end.243
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_35
.LBB4_35:                               # %do.body.244
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-56(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#36:                                # %do.end.259
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_37
.LBB4_37:                               # %do.body.260
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	addl	-52(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#38:                                # %do.end.275
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_39
.LBB4_39:                               # %do.body.276
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	movl	-112(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -112(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#40:                                # %do.end.301
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_41
.LBB4_41:                               # %do.body.302
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	movl	-108(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -108(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#42:                                # %do.end.327
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_43
.LBB4_43:                               # %do.body.328
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	movl	-104(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -104(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#44:                                # %do.end.353
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_45
.LBB4_45:                               # %do.body.354
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	$1518500249, %eax       # imm = 0x5A827999
	movl	-100(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -100(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#46:                                # %do.end.379
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_47
.LBB4_47:                               # %do.body.380
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-96(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -96(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#48:                                # %do.end.404
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_49
.LBB4_49:                               # %do.body.405
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-92(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -92(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#50:                                # %do.end.429
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_51
.LBB4_51:                               # %do.body.430
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-88(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#52:                                # %do.end.454
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_53
.LBB4_53:                               # %do.body.455
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-84(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -84(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#54:                                # %do.end.479
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_55
.LBB4_55:                               # %do.body.480
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-80(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#56:                                # %do.end.504
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_57
.LBB4_57:                               # %do.body.505
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-76(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#58:                                # %do.end.529
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_59
.LBB4_59:                               # %do.body.530
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-72(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#60:                                # %do.end.554
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_61
.LBB4_61:                               # %do.body.555
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-68(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#62:                                # %do.end.579
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_63
.LBB4_63:                               # %do.body.580
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-64(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#64:                                # %do.end.604
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_65
.LBB4_65:                               # %do.body.605
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-60(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#66:                                # %do.end.629
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_67
.LBB4_67:                               # %do.body.630
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-56(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#68:                                # %do.end.654
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_69
.LBB4_69:                               # %do.body.655
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-52(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#70:                                # %do.end.679
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_71
.LBB4_71:                               # %do.body.680
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-112(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -112(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#72:                                # %do.end.704
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_73
.LBB4_73:                               # %do.body.705
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-108(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -108(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#74:                                # %do.end.729
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_75
.LBB4_75:                               # %do.body.730
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-104(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -104(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#76:                                # %do.end.754
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_77
.LBB4_77:                               # %do.body.755
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-100(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -100(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#78:                                # %do.end.779
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_79
.LBB4_79:                               # %do.body.780
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-96(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -96(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#80:                                # %do.end.804
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_81
.LBB4_81:                               # %do.body.805
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-92(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -92(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#82:                                # %do.end.829
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_83
.LBB4_83:                               # %do.body.830
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-88(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#84:                                # %do.end.854
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_85
.LBB4_85:                               # %do.body.855
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1859775393, %eax       # imm = 0x6ED9EBA1
	movl	-84(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -84(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#86:                                # %do.end.879
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_87
.LBB4_87:                               # %do.body.880
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-80(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#88:                                # %do.end.906
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_89
.LBB4_89:                               # %do.body.907
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-76(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#90:                                # %do.end.933
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_91
.LBB4_91:                               # %do.body.934
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-72(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#92:                                # %do.end.960
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_93
.LBB4_93:                               # %do.body.961
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-68(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#94:                                # %do.end.987
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_95
.LBB4_95:                               # %do.body.988
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-64(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#96:                                # %do.end.1014
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_97
.LBB4_97:                               # %do.body.1015
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-60(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#98:                                # %do.end.1041
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_99
.LBB4_99:                               # %do.body.1042
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-56(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#100:                               # %do.end.1068
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_101
.LBB4_101:                              # %do.body.1069
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-52(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#102:                               # %do.end.1095
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_103
.LBB4_103:                              # %do.body.1096
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-112(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -112(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#104:                               # %do.end.1122
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_105
.LBB4_105:                              # %do.body.1123
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-108(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -108(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#106:                               # %do.end.1149
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_107
.LBB4_107:                              # %do.body.1150
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-104(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -104(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#108:                               # %do.end.1176
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_109
.LBB4_109:                              # %do.body.1177
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-100(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -100(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#110:                               # %do.end.1203
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_111
.LBB4_111:                              # %do.body.1204
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-96(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -96(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#112:                               # %do.end.1230
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_113
.LBB4_113:                              # %do.body.1231
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-92(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -92(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#114:                               # %do.end.1257
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_115
.LBB4_115:                              # %do.body.1258
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-88(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#116:                               # %do.end.1284
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_117
.LBB4_117:                              # %do.body.1285
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-84(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -84(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#118:                               # %do.end.1311
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_119
.LBB4_119:                              # %do.body.1312
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-80(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#120:                               # %do.end.1338
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_121
.LBB4_121:                              # %do.body.1339
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-76(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#122:                               # %do.end.1365
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_123
.LBB4_123:                              # %do.body.1366
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-72(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#124:                               # %do.end.1392
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_125
.LBB4_125:                              # %do.body.1393
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	addl	$-1894007588, %eax      # imm = 0xFFFFFFFF8F1BBCDC
	movl	-68(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#126:                               # %do.end.1419
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_127
.LBB4_127:                              # %do.body.1420
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-64(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#128:                               # %do.end.1444
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_129
.LBB4_129:                              # %do.body.1445
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-60(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#130:                               # %do.end.1469
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_131
.LBB4_131:                              # %do.body.1470
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-56(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#132:                               # %do.end.1494
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_133
.LBB4_133:                              # %do.body.1495
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-52(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#134:                               # %do.end.1519
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_135
.LBB4_135:                              # %do.body.1520
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-112(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -112(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#136:                               # %do.end.1544
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_137
.LBB4_137:                              # %do.body.1545
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-108(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -108(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#138:                               # %do.end.1569
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_139
.LBB4_139:                              # %do.body.1570
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-104(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -104(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#140:                               # %do.end.1594
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_141
.LBB4_141:                              # %do.body.1595
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-100(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -100(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#142:                               # %do.end.1619
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_143
.LBB4_143:                              # %do.body.1620
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-96(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -96(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#144:                               # %do.end.1644
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_145
.LBB4_145:                              # %do.body.1645
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-92(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -92(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#146:                               # %do.end.1669
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_147
.LBB4_147:                              # %do.body.1670
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-88(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#148:                               # %do.end.1694
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_149
.LBB4_149:                              # %do.body.1695
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-84(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -84(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#150:                               # %do.end.1719
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_151
.LBB4_151:                              # %do.body.1720
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-80(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#152:                               # %do.end.1744
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_153
.LBB4_153:                              # %do.body.1745
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-76(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#154:                               # %do.end.1769
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_155
.LBB4_155:                              # %do.body.1770
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-72(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	xorl	-104(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#156:                               # %do.end.1794
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_157
.LBB4_157:                              # %do.body.1795
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$5, %eax
	movl	-116(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-68(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	xorl	-100(%rbp), %ecx
	xorl	-80(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	addl	%ecx, %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -120(%rbp)
# BB#158:                               # %do.end.1819
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_159
.LBB4_159:                              # %do.body.1820
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$5, %eax
	movl	-132(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	xorl	-124(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-64(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	xorl	-96(%rbp), %ecx
	xorl	-76(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	addl	%ecx, %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#160:                               # %do.end.1844
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_161
.LBB4_161:                              # %do.body.1845
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$5, %eax
	movl	-128(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	xorl	-120(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-60(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	xorl	-92(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	addl	%ecx, %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -132(%rbp)
# BB#162:                               # %do.end.1869
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_163
.LBB4_163:                              # %do.body.1870
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$5, %eax
	movl	-124(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	xorl	-116(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-56(%rbp), %ecx
	xorl	-112(%rbp), %ecx
	xorl	-88(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	addl	%ecx, %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -128(%rbp)
# BB#164:                               # %do.end.1894
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_165
.LBB4_165:                              # %do.body.1895
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$5, %eax
	movl	-120(%rbp), %ecx
	shrl	$27, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	xorl	-128(%rbp), %ecx
	xorl	-132(%rbp), %ecx
	addl	%ecx, %eax
	addl	$-899497514, %eax       # imm = 0xFFFFFFFFCA62C1D6
	movl	-52(%rbp), %ecx
	xorl	-108(%rbp), %ecx
	xorl	-84(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	shll	$1, %ecx
	movl	-140(%rbp), %edx
	shrl	$31, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	addl	%ecx, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -124(%rbp)
# BB#166:                               # %do.end.1919
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	movl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	8(%rcx), %eax
	movl	%eax, 8(%rcx)
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	12(%rcx), %eax
	movl	%eax, 12(%rcx)
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, 16(%rcx)
	movl	%eax, -132(%rbp)
	jmp	.LBB4_1
.LBB4_167:                              # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sha1_process_block, .Lfunc_end4-sha1_process_block
	.cfi_endproc

	.globl	sha1_stream
	.align	16, 0x90
	.type	sha1_stream,@function
sha1_stream:                            # @sha1_stream
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
	callq	sha1_init_ctx
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
	callq	sha1_process_block
	jmp	.LBB5_3
.LBB5_14:                               # %process_partial_block
	cmpq	$0, -192(%rbp)
	jbe	.LBB5_16
# BB#15:                                # %if.then.18
	leaq	-184(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	sha1_process_bytes
.LBB5_16:                               # %if.end.19
	leaq	-184(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sha1_finish_ctx
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
	.size	sha1_stream, .Lfunc_end5-sha1_stream
	.cfi_endproc

	.globl	sha1_process_bytes
	.align	16, 0x90
	.type	sha1_process_bytes,@function
sha1_process_bytes:                     # @sha1_process_bytes
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
	cmpl	$0, 28(%rdx)
	je	.LBB6_7
# BB#1:                                 # %if.then
	movl	$128, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	28(%rdx), %eax
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
	addq	$32, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	28(%rcx), %r8d
	movl	%r8d, %edx
	addq	%rax, %rdx
	movl	%edx, %r8d
	movl	%r8d, 28(%rcx)
	movq	-24(%rbp), %rax
	cmpl	$64, 28(%rax)
	jbe	.LBB6_6
# BB#5:                                 # %if.then.13
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rcx
	movl	28(%rcx), %edx
	andl	$-64, %edx
	movl	%edx, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	sha1_process_block
	movq	-24(%rbp), %rax
	movl	28(%rax), %r8d
	andl	$63, %r8d
	movl	%r8d, 28(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-32(%rbp), %rcx
	addq	-40(%rbp), %rcx
	andq	$-64, %rcx
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	addq	%rcx, %rdx
	movq	-24(%rbp), %rcx
	movl	28(%rcx), %r8d
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
	addq	$32, %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	sha1_process_block
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
	callq	sha1_process_block
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
	movl	28(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
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
	addq	$32, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	callq	sha1_process_block
	movq	-48(%rbp), %rcx
	subq	$64, %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	addq	$32, %rcx
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
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
	movl	%ecx, 28(%rax)
.LBB6_19:                               # %if.end.69
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sha1_process_bytes, .Lfunc_end6-sha1_process_bytes
	.cfi_endproc

	.globl	sha1_buffer
	.align	16, 0x90
	.type	sha1_buffer,@function
sha1_buffer:                            # @sha1_buffer
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
	callq	sha1_init_ctx
	leaq	-184(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sha1_process_bytes
	leaq	-184(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sha1_finish_ctx
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sha1_buffer, .Lfunc_end7-sha1_buffer
	.cfi_endproc

	.type	fillbuf,@object         # @fillbuf
	.section	.rodata,"a",@progbits
	.align	16
fillbuf:
	.asciz	"\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	fillbuf, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
