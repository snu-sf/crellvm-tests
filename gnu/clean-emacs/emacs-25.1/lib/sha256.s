	.text
	.file	"sha256.bc"
	.globl	sha256_init_ctx
	.align	16, 0x90
	.type	sha256_init_ctx,@function
sha256_init_ctx:                        # @sha256_init_ctx
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
	movl	$1779033703, (%rdi)     # imm = 0x6A09E667
	movq	-8(%rbp), %rdi
	movl	$-1150833019, 4(%rdi)   # imm = 0xFFFFFFFFBB67AE85
	movq	-8(%rbp), %rdi
	movl	$1013904242, 8(%rdi)    # imm = 0x3C6EF372
	movq	-8(%rbp), %rdi
	movl	$-1521486534, 12(%rdi)  # imm = 0xFFFFFFFFA54FF53A
	movq	-8(%rbp), %rdi
	movl	$1359893119, 16(%rdi)   # imm = 0x510E527F
	movq	-8(%rbp), %rdi
	movl	$-1694144372, 20(%rdi)  # imm = 0xFFFFFFFF9B05688C
	movq	-8(%rbp), %rdi
	movl	$528734635, 24(%rdi)    # imm = 0x1F83D9AB
	movq	-8(%rbp), %rdi
	movl	$1541459225, 28(%rdi)   # imm = 0x5BE0CD19
	movq	-8(%rbp), %rdi
	movl	$0, 36(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sha256_init_ctx, .Lfunc_end0-sha256_init_ctx
	.cfi_endproc

	.globl	sha224_init_ctx
	.align	16, 0x90
	.type	sha224_init_ctx,@function
sha224_init_ctx:                        # @sha224_init_ctx
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
	movq	-8(%rbp), %rdi
	movl	$-1056596264, (%rdi)    # imm = 0xFFFFFFFFC1059ED8
	movq	-8(%rbp), %rdi
	movl	$914150663, 4(%rdi)     # imm = 0x367CD507
	movq	-8(%rbp), %rdi
	movl	$812702999, 8(%rdi)     # imm = 0x3070DD17
	movq	-8(%rbp), %rdi
	movl	$-150054599, 12(%rdi)   # imm = 0xFFFFFFFFF70E5939
	movq	-8(%rbp), %rdi
	movl	$-4191439, 16(%rdi)     # imm = 0xFFFFFFFFFFC00B31
	movq	-8(%rbp), %rdi
	movl	$1750603025, 20(%rdi)   # imm = 0x68581511
	movq	-8(%rbp), %rdi
	movl	$1694076839, 24(%rdi)   # imm = 0x64F98FA7
	movq	-8(%rbp), %rdi
	movl	$-1090891868, 28(%rdi)  # imm = 0xFFFFFFFFBEFA4FA4
	movq	-8(%rbp), %rdi
	movl	$0, 36(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sha224_init_ctx, .Lfunc_end1-sha224_init_ctx
	.cfi_endproc

	.globl	sha256_read_ctx
	.align	16, 0x90
	.type	sha256_read_ctx,@function
sha256_read_ctx:                        # @sha256_read_ctx
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -20(%rbp)
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	shll	$24, %esi
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	andl	$65280, %edi            # imm = 0xFF00
	shll	$8, %edi
	orl	%edi, %esi
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	shrl	$8, %edi
	andl	$65280, %edi            # imm = 0xFF00
	orl	%edi, %esi
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	shrl	$24, %edi
	orl	%edi, %esi
	movq	%rax, %rdi
	callq	set_uint32
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sha256_read_ctx, .Lfunc_end2-sha256_read_ctx
	.cfi_endproc

	.align	16, 0x90
	.type	set_uint32,@function
set_uint32:                             # @set_uint32
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	%esi, (%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	set_uint32, .Lfunc_end3-set_uint32
	.cfi_endproc

	.globl	sha224_read_ctx
	.align	16, 0x90
	.type	sha224_read_ctx,@function
sha224_read_ctx:                        # @sha224_read_ctx
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -20(%rbp)
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	shll	$24, %esi
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	andl	$65280, %edi            # imm = 0xFF00
	shll	$8, %edi
	orl	%edi, %esi
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	shrl	$8, %edi
	andl	$65280, %edi            # imm = 0xFF00
	orl	%edi, %esi
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	shrl	$24, %edi
	orl	%edi, %esi
	movq	%rax, %rdi
	callq	set_uint32
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sha224_read_ctx, .Lfunc_end4-sha224_read_ctx
	.cfi_endproc

	.globl	sha256_finish_ctx
	.align	16, 0x90
	.type	sha256_finish_ctx,@function
sha256_finish_ctx:                      # @sha256_finish_ctx
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	sha256_conclude_ctx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sha256_read_ctx
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sha256_finish_ctx, .Lfunc_end5-sha256_finish_ctx
	.cfi_endproc

	.align	16, 0x90
	.type	sha256_conclude_ctx,@function
sha256_conclude_ctx:                    # @sha256_conclude_ctx
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
	movl	$32, %eax
	movl	$16, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$56, -16(%rbp)
	cmovbl	%ecx, %eax
	movslq	%eax, %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %eax
	movl	%eax, %esi
	addq	%rdi, %rsi
	movl	%esi, %eax
	movl	%eax, 32(%rdx)
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %eax
	movl	%eax, %edx
	cmpq	-16(%rbp), %rdx
	jae	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 36(%rax)
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rax
	subq	$2, %rax
	movq	-8(%rbp), %rcx
	addq	$48, %rcx
	shlq	$2, %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	36(%rax), %edx
	shll	$3, %edx
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	shrl	$29, %esi
	orl	%esi, %edx
	shll	$24, %edx
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	shll	$3, %esi
	movq	-8(%rbp), %rax
	movl	32(%rax), %edi
	shrl	$29, %edi
	orl	%edi, %esi
	andl	$65280, %esi            # imm = 0xFF00
	shll	$8, %esi
	orl	%esi, %edx
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	shll	$3, %esi
	movq	-8(%rbp), %rax
	movl	32(%rax), %edi
	shrl	$29, %edi
	orl	%edi, %esi
	shrl	$8, %esi
	andl	$65280, %esi            # imm = 0xFF00
	orl	%esi, %edx
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	shll	$3, %esi
	movq	-8(%rbp), %rax
	movl	32(%rax), %edi
	shrl	$29, %edi
	orl	%edi, %esi
	shrl	$24, %esi
	orl	%esi, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	callq	set_uint32
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	addq	$48, %rcx
	shlq	$2, %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	shll	$3, %edx
	shll	$24, %edx
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	shll	$3, %esi
	andl	$65280, %esi            # imm = 0xFF00
	shll	$8, %esi
	orl	%esi, %edx
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	shll	$3, %esi
	shrl	$8, %esi
	andl	$65280, %esi            # imm = 0xFF00
	orl	%esi, %edx
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	shll	$3, %esi
	shrl	$24, %esi
	orl	%esi, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	callq	set_uint32
	movabsq	$fillbuf, %rsi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$48, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	subq	$2, %rax
	shlq	$2, %rax
	subq	-16(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	memcpy
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	sha256_process_block
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sha256_conclude_ctx, .Lfunc_end6-sha256_conclude_ctx
	.cfi_endproc

	.globl	sha224_finish_ctx
	.align	16, 0x90
	.type	sha224_finish_ctx,@function
sha224_finish_ctx:                      # @sha224_finish_ctx
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	sha256_conclude_ctx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sha224_read_ctx
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sha224_finish_ctx, .Lfunc_end7-sha224_finish_ctx
	.cfi_endproc

	.globl	sha256_stream
	.align	16, 0x90
	.type	sha256_stream,@function
sha256_stream:                          # @sha256_stream
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
	subq	$240, %rsp
	movl	$32840, %eax            # imm = 0x8048
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB8_17
.LBB8_2:                                # %if.end
	leaq	-200(%rbp), %rdi
	callq	sha256_init_ctx
.LBB8_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	movq	$0, -208(%rbp)
.LBB8_4:                                # %while.body.2
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	$32768, %eax            # imm = 0x8000
	movl	%eax, %ecx
	movq	-216(%rbp), %rdx
	addq	-208(%rbp), %rdx
	subq	-208(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	fread
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	-208(%rbp), %rax
	movq	%rax, -208(%rbp)
	cmpq	$32768, -208(%rbp)      # imm = 0x8000
	jne	.LBB8_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_13
.LBB8_6:                                # %if.end.5
                                        #   in Loop: Header=BB8_4 Depth=2
	cmpq	$0, -224(%rbp)
	jne	.LBB8_10
# BB#7:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB8_9
# BB#8:                                 # %if.then.10
	movq	-216(%rbp), %rdi
	callq	free
	movl	$1, -4(%rbp)
	jmp	.LBB8_17
.LBB8_9:                                # %if.end.11
	jmp	.LBB8_14
.LBB8_10:                               # %if.end.12
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	-16(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB8_12
# BB#11:                                # %if.then.15
	jmp	.LBB8_14
.LBB8_12:                               # %if.end.16
                                        #   in Loop: Header=BB8_4 Depth=2
	jmp	.LBB8_4
.LBB8_13:                               # %while.end
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$32768, %eax            # imm = 0x8000
	movl	%eax, %esi
	leaq	-200(%rbp), %rdx
	movq	-216(%rbp), %rdi
	callq	sha256_process_block
	jmp	.LBB8_3
.LBB8_14:                               # %process_partial_block
	cmpq	$0, -208(%rbp)
	jbe	.LBB8_16
# BB#15:                                # %if.then.18
	leaq	-200(%rbp), %rdx
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	sha256_process_bytes
.LBB8_16:                               # %if.end.19
	leaq	-200(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sha256_finish_ctx
	movq	-216(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	free
	movl	$0, -4(%rbp)
.LBB8_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sha256_stream, .Lfunc_end8-sha256_stream
	.cfi_endproc

	.globl	sha256_process_block
	.align	16, 0x90
	.type	sha256_process_block,@function
sha256_process_block:                   # @sha256_process_block
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
	movq	-24(%rbp), %rdx
	movl	20(%rdx), %eax
	movl	%eax, -136(%rbp)
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %eax
	movl	%eax, -140(%rbp)
	movq	-24(%rbp), %rdx
	movl	28(%rdx), %eax
	movl	%eax, -144(%rbp)
	movq	-16(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movq	-24(%rbp), %rdx
	addl	32(%rdx), %eax
	movl	%eax, 32(%rdx)
	movq	-16(%rbp), %rdx
	shrq	$31, %rdx
	shrq	$1, %rdx
	movq	-24(%rbp), %rsi
	movl	32(%rsi), %eax
	cmpl	-148(%rbp), %eax
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-24(%rbp), %rsi
	movl	36(%rsi), %eax
	movl	%eax, %edi
	addq	%rdx, %rdi
	movl	%edi, %eax
	movl	%eax, 36(%rsi)
.LBB9_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB9_135
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -164(%rbp)
.LBB9_3:                                # %for.cond
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -164(%rbp)
	jge	.LBB9_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=2
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
	movslq	-164(%rbp), %rax
	movl	%ecx, -112(%rbp,%rax,4)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %do.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$19, %ecx
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$10, %ecx
	movl	-116(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-144(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$26, %ecx
	movl	-132(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$21, %edx
	movl	-132(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$7, %edx
	movl	-132(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	xorl	-140(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants, %eax
	addl	-112(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#8:                                 # %do.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_9
.LBB9_9:                                # %do.body.74
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-144(%rbp), %eax
	shll	$30, %eax
	movl	-144(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$19, %ecx
	movl	-144(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$10, %ecx
	movl	-144(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-144(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-140(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$26, %ecx
	movl	-128(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$21, %edx
	movl	-128(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$7, %edx
	movl	-128(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-136(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+4, %eax
	addl	-108(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -140(%rbp)
# BB#10:                                # %do.end.112
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_11
.LBB9_11:                               # %do.body.113
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-140(%rbp), %eax
	shll	$30, %eax
	movl	-140(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$19, %ecx
	movl	-140(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$10, %ecx
	movl	-140(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	andl	-144(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-140(%rbp), %esi
	orl	-144(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$26, %ecx
	movl	-124(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$21, %edx
	movl	-124(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$7, %edx
	movl	-124(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+8, %eax
	addl	-104(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#12:                                # %do.end.151
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.152
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-136(%rbp), %eax
	shll	$30, %eax
	movl	-136(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$19, %ecx
	movl	-136(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$10, %ecx
	movl	-136(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-136(%rbp), %esi
	orl	-140(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	-120(%rbp), %ecx
	shll	$26, %ecx
	movl	-120(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$21, %edx
	movl	-120(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$7, %edx
	movl	-120(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+12, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#14:                                # %do.end.190
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_15
.LBB9_15:                               # %do.body.191
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$19, %ecx
	movl	-132(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$10, %ecx
	movl	-132(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-136(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-136(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$26, %ecx
	movl	-116(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$21, %edx
	movl	-116(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$7, %edx
	movl	-116(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+16, %eax
	addl	-96(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#16:                                # %do.end.229
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_17
.LBB9_17:                               # %do.body.230
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$19, %ecx
	movl	-128(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$10, %ecx
	movl	-128(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	shll	$26, %ecx
	movl	-144(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$21, %edx
	movl	-144(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$7, %edx
	movl	-144(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+20, %eax
	addl	-92(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#18:                                # %do.end.268
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_19
.LBB9_19:                               # %do.body.269
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$19, %ecx
	movl	-124(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$10, %ecx
	movl	-124(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$26, %ecx
	movl	-140(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$21, %edx
	movl	-140(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$7, %edx
	movl	-140(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+24, %eax
	addl	-88(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#20:                                # %do.end.307
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_21
.LBB9_21:                               # %do.body.308
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$19, %ecx
	movl	-120(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$10, %ecx
	movl	-120(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-116(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$26, %ecx
	movl	-136(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$21, %edx
	movl	-136(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$7, %edx
	movl	-136(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %esi
	xorl	-144(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+28, %eax
	addl	-84(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#22:                                # %do.end.346
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_23
.LBB9_23:                               # %do.body.347
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$19, %ecx
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$10, %ecx
	movl	-116(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-144(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$26, %ecx
	movl	-132(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$21, %edx
	movl	-132(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$7, %edx
	movl	-132(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	xorl	-140(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+32, %eax
	addl	-80(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#24:                                # %do.end.385
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.386
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-144(%rbp), %eax
	shll	$30, %eax
	movl	-144(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$19, %ecx
	movl	-144(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$10, %ecx
	movl	-144(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-144(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-140(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$26, %ecx
	movl	-128(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$21, %edx
	movl	-128(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$7, %edx
	movl	-128(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-136(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+36, %eax
	addl	-76(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -140(%rbp)
# BB#26:                                # %do.end.424
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_27
.LBB9_27:                               # %do.body.425
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-140(%rbp), %eax
	shll	$30, %eax
	movl	-140(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$19, %ecx
	movl	-140(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$10, %ecx
	movl	-140(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	andl	-144(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-140(%rbp), %esi
	orl	-144(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$26, %ecx
	movl	-124(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$21, %edx
	movl	-124(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$7, %edx
	movl	-124(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+40, %eax
	addl	-72(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#28:                                # %do.end.463
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_29
.LBB9_29:                               # %do.body.464
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-136(%rbp), %eax
	shll	$30, %eax
	movl	-136(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$19, %ecx
	movl	-136(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$10, %ecx
	movl	-136(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-136(%rbp), %esi
	orl	-140(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	-120(%rbp), %ecx
	shll	$26, %ecx
	movl	-120(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$21, %edx
	movl	-120(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$7, %edx
	movl	-120(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+44, %eax
	addl	-68(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#30:                                # %do.end.502
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_31
.LBB9_31:                               # %do.body.503
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$19, %ecx
	movl	-132(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$10, %ecx
	movl	-132(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-136(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-136(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$26, %ecx
	movl	-116(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$21, %edx
	movl	-116(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$7, %edx
	movl	-116(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+48, %eax
	addl	-64(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#32:                                # %do.end.541
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_33
.LBB9_33:                               # %do.body.542
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$19, %ecx
	movl	-128(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$10, %ecx
	movl	-128(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	shll	$26, %ecx
	movl	-144(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$21, %edx
	movl	-144(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$7, %edx
	movl	-144(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+52, %eax
	addl	-60(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#34:                                # %do.end.580
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_35
.LBB9_35:                               # %do.body.581
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$19, %ecx
	movl	-124(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$10, %ecx
	movl	-124(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$26, %ecx
	movl	-140(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$21, %edx
	movl	-140(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$7, %edx
	movl	-140(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+56, %eax
	addl	-56(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#36:                                # %do.end.619
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_37
.LBB9_37:                               # %do.body.620
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$19, %ecx
	movl	-120(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$10, %ecx
	movl	-120(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-116(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$26, %ecx
	movl	-136(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$21, %edx
	movl	-136(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$7, %edx
	movl	-136(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %esi
	xorl	-144(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+60, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#38:                                # %do.end.658
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_39
.LBB9_39:                               # %do.body.659
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$19, %ecx
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$10, %ecx
	movl	-116(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-144(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$26, %ecx
	movl	-132(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$21, %edx
	movl	-132(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$7, %edx
	movl	-132(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	xorl	-140(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+64, %eax
	movl	-56(%rbp), %ecx
	shll	$15, %ecx
	movl	-56(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-56(%rbp), %edx
	shll	$13, %edx
	movl	-56(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-56(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-76(%rbp), %ecx
	movl	-108(%rbp), %edx
	shll	$25, %edx
	movl	-108(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-108(%rbp), %esi
	shll	$14, %esi
	movl	-108(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-108(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#40:                                # %do.end.730
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_41
.LBB9_41:                               # %do.body.731
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-144(%rbp), %eax
	shll	$30, %eax
	movl	-144(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$19, %ecx
	movl	-144(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$10, %ecx
	movl	-144(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-144(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-140(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$26, %ecx
	movl	-128(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$21, %edx
	movl	-128(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$7, %edx
	movl	-128(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-136(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+68, %eax
	movl	-52(%rbp), %ecx
	shll	$15, %ecx
	movl	-52(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-52(%rbp), %edx
	shll	$13, %edx
	movl	-52(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-52(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-72(%rbp), %ecx
	movl	-104(%rbp), %edx
	shll	$25, %edx
	movl	-104(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-104(%rbp), %esi
	shll	$14, %esi
	movl	-104(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-104(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -140(%rbp)
# BB#42:                                # %do.end.802
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_43
.LBB9_43:                               # %do.body.803
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-140(%rbp), %eax
	shll	$30, %eax
	movl	-140(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$19, %ecx
	movl	-140(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$10, %ecx
	movl	-140(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	andl	-144(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-140(%rbp), %esi
	orl	-144(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$26, %ecx
	movl	-124(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$21, %edx
	movl	-124(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$7, %edx
	movl	-124(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+72, %eax
	movl	-112(%rbp), %ecx
	shll	$15, %ecx
	movl	-112(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-112(%rbp), %edx
	shll	$13, %edx
	movl	-112(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-112(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-68(%rbp), %ecx
	movl	-100(%rbp), %edx
	shll	$25, %edx
	movl	-100(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-100(%rbp), %esi
	shll	$14, %esi
	movl	-100(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-100(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#44:                                # %do.end.874
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_45
.LBB9_45:                               # %do.body.875
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-136(%rbp), %eax
	shll	$30, %eax
	movl	-136(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$19, %ecx
	movl	-136(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$10, %ecx
	movl	-136(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-136(%rbp), %esi
	orl	-140(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	-120(%rbp), %ecx
	shll	$26, %ecx
	movl	-120(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$21, %edx
	movl	-120(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$7, %edx
	movl	-120(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+76, %eax
	movl	-108(%rbp), %ecx
	shll	$15, %ecx
	movl	-108(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-108(%rbp), %edx
	shll	$13, %edx
	movl	-108(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-108(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-64(%rbp), %ecx
	movl	-96(%rbp), %edx
	shll	$25, %edx
	movl	-96(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-96(%rbp), %esi
	shll	$14, %esi
	movl	-96(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-96(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-100(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#46:                                # %do.end.946
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_47
.LBB9_47:                               # %do.body.947
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$19, %ecx
	movl	-132(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$10, %ecx
	movl	-132(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-136(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-136(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$26, %ecx
	movl	-116(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$21, %edx
	movl	-116(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$7, %edx
	movl	-116(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+80, %eax
	movl	-104(%rbp), %ecx
	shll	$15, %ecx
	movl	-104(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-104(%rbp), %edx
	shll	$13, %edx
	movl	-104(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-104(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-60(%rbp), %ecx
	movl	-92(%rbp), %edx
	shll	$25, %edx
	movl	-92(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-92(%rbp), %esi
	shll	$14, %esi
	movl	-92(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-92(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#48:                                # %do.end.1018
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_49
.LBB9_49:                               # %do.body.1019
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$19, %ecx
	movl	-128(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$10, %ecx
	movl	-128(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	shll	$26, %ecx
	movl	-144(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$21, %edx
	movl	-144(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$7, %edx
	movl	-144(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+84, %eax
	movl	-100(%rbp), %ecx
	shll	$15, %ecx
	movl	-100(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-100(%rbp), %edx
	shll	$13, %edx
	movl	-100(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-100(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-56(%rbp), %ecx
	movl	-88(%rbp), %edx
	shll	$25, %edx
	movl	-88(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-88(%rbp), %esi
	shll	$14, %esi
	movl	-88(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-88(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#50:                                # %do.end.1090
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_51
.LBB9_51:                               # %do.body.1091
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$19, %ecx
	movl	-124(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$10, %ecx
	movl	-124(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$26, %ecx
	movl	-140(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$21, %edx
	movl	-140(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$7, %edx
	movl	-140(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+88, %eax
	movl	-96(%rbp), %ecx
	shll	$15, %ecx
	movl	-96(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-96(%rbp), %edx
	shll	$13, %edx
	movl	-96(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-96(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-52(%rbp), %ecx
	movl	-84(%rbp), %edx
	shll	$25, %edx
	movl	-84(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-84(%rbp), %esi
	shll	$14, %esi
	movl	-84(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-84(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#52:                                # %do.end.1162
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_53
.LBB9_53:                               # %do.body.1163
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$19, %ecx
	movl	-120(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$10, %ecx
	movl	-120(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-116(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$26, %ecx
	movl	-136(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$21, %edx
	movl	-136(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$7, %edx
	movl	-136(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %esi
	xorl	-144(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+92, %eax
	movl	-92(%rbp), %ecx
	shll	$15, %ecx
	movl	-92(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-92(%rbp), %edx
	shll	$13, %edx
	movl	-92(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-92(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-112(%rbp), %ecx
	movl	-80(%rbp), %edx
	shll	$25, %edx
	movl	-80(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-80(%rbp), %esi
	shll	$14, %esi
	movl	-80(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-80(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#54:                                # %do.end.1234
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_55
.LBB9_55:                               # %do.body.1235
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$19, %ecx
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$10, %ecx
	movl	-116(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-144(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$26, %ecx
	movl	-132(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$21, %edx
	movl	-132(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$7, %edx
	movl	-132(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	xorl	-140(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+96, %eax
	movl	-88(%rbp), %ecx
	shll	$15, %ecx
	movl	-88(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-88(%rbp), %edx
	shll	$13, %edx
	movl	-88(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-88(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-108(%rbp), %ecx
	movl	-76(%rbp), %edx
	shll	$25, %edx
	movl	-76(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-76(%rbp), %esi
	shll	$14, %esi
	movl	-76(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-76(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#56:                                # %do.end.1306
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_57
.LBB9_57:                               # %do.body.1307
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-144(%rbp), %eax
	shll	$30, %eax
	movl	-144(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$19, %ecx
	movl	-144(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$10, %ecx
	movl	-144(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-144(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-140(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$26, %ecx
	movl	-128(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$21, %edx
	movl	-128(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$7, %edx
	movl	-128(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-136(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+100, %eax
	movl	-84(%rbp), %ecx
	shll	$15, %ecx
	movl	-84(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-84(%rbp), %edx
	shll	$13, %edx
	movl	-84(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-84(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-104(%rbp), %ecx
	movl	-72(%rbp), %edx
	shll	$25, %edx
	movl	-72(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-72(%rbp), %esi
	shll	$14, %esi
	movl	-72(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-72(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-76(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -140(%rbp)
# BB#58:                                # %do.end.1378
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_59
.LBB9_59:                               # %do.body.1379
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-140(%rbp), %eax
	shll	$30, %eax
	movl	-140(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$19, %ecx
	movl	-140(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$10, %ecx
	movl	-140(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	andl	-144(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-140(%rbp), %esi
	orl	-144(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$26, %ecx
	movl	-124(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$21, %edx
	movl	-124(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$7, %edx
	movl	-124(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+104, %eax
	movl	-80(%rbp), %ecx
	shll	$15, %ecx
	movl	-80(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-80(%rbp), %edx
	shll	$13, %edx
	movl	-80(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-80(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-100(%rbp), %ecx
	movl	-68(%rbp), %edx
	shll	$25, %edx
	movl	-68(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-68(%rbp), %esi
	shll	$14, %esi
	movl	-68(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-68(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#60:                                # %do.end.1450
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_61
.LBB9_61:                               # %do.body.1451
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-136(%rbp), %eax
	shll	$30, %eax
	movl	-136(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$19, %ecx
	movl	-136(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$10, %ecx
	movl	-136(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-136(%rbp), %esi
	orl	-140(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	-120(%rbp), %ecx
	shll	$26, %ecx
	movl	-120(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$21, %edx
	movl	-120(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$7, %edx
	movl	-120(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+108, %eax
	movl	-76(%rbp), %ecx
	shll	$15, %ecx
	movl	-76(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-76(%rbp), %edx
	shll	$13, %edx
	movl	-76(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-76(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-96(%rbp), %ecx
	movl	-64(%rbp), %edx
	shll	$25, %edx
	movl	-64(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-64(%rbp), %esi
	shll	$14, %esi
	movl	-64(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-64(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#62:                                # %do.end.1522
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_63
.LBB9_63:                               # %do.body.1523
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$19, %ecx
	movl	-132(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$10, %ecx
	movl	-132(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-136(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-136(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$26, %ecx
	movl	-116(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$21, %edx
	movl	-116(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$7, %edx
	movl	-116(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+112, %eax
	movl	-72(%rbp), %ecx
	shll	$15, %ecx
	movl	-72(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-72(%rbp), %edx
	shll	$13, %edx
	movl	-72(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-72(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-92(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$25, %edx
	movl	-60(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-60(%rbp), %esi
	shll	$14, %esi
	movl	-60(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-60(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#64:                                # %do.end.1594
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_65
.LBB9_65:                               # %do.body.1595
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$19, %ecx
	movl	-128(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$10, %ecx
	movl	-128(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	shll	$26, %ecx
	movl	-144(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$21, %edx
	movl	-144(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$7, %edx
	movl	-144(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+116, %eax
	movl	-68(%rbp), %ecx
	shll	$15, %ecx
	movl	-68(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-68(%rbp), %edx
	shll	$13, %edx
	movl	-68(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-68(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-88(%rbp), %ecx
	movl	-56(%rbp), %edx
	shll	$25, %edx
	movl	-56(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-56(%rbp), %esi
	shll	$14, %esi
	movl	-56(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-56(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#66:                                # %do.end.1666
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_67
.LBB9_67:                               # %do.body.1667
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$19, %ecx
	movl	-124(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$10, %ecx
	movl	-124(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$26, %ecx
	movl	-140(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$21, %edx
	movl	-140(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$7, %edx
	movl	-140(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+120, %eax
	movl	-64(%rbp), %ecx
	shll	$15, %ecx
	movl	-64(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-64(%rbp), %edx
	shll	$13, %edx
	movl	-64(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-64(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-84(%rbp), %ecx
	movl	-52(%rbp), %edx
	shll	$25, %edx
	movl	-52(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-52(%rbp), %esi
	shll	$14, %esi
	movl	-52(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-52(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#68:                                # %do.end.1738
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_69
.LBB9_69:                               # %do.body.1739
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$19, %ecx
	movl	-120(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$10, %ecx
	movl	-120(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-116(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$26, %ecx
	movl	-136(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$21, %edx
	movl	-136(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$7, %edx
	movl	-136(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %esi
	xorl	-144(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+124, %eax
	movl	-60(%rbp), %ecx
	shll	$15, %ecx
	movl	-60(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-60(%rbp), %edx
	shll	$13, %edx
	movl	-60(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-60(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-80(%rbp), %ecx
	movl	-112(%rbp), %edx
	shll	$25, %edx
	movl	-112(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-112(%rbp), %esi
	shll	$14, %esi
	movl	-112(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-112(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#70:                                # %do.end.1810
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_71
.LBB9_71:                               # %do.body.1811
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$19, %ecx
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$10, %ecx
	movl	-116(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-144(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$26, %ecx
	movl	-132(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$21, %edx
	movl	-132(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$7, %edx
	movl	-132(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	xorl	-140(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+128, %eax
	movl	-56(%rbp), %ecx
	shll	$15, %ecx
	movl	-56(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-56(%rbp), %edx
	shll	$13, %edx
	movl	-56(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-56(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-76(%rbp), %ecx
	movl	-108(%rbp), %edx
	shll	$25, %edx
	movl	-108(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-108(%rbp), %esi
	shll	$14, %esi
	movl	-108(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-108(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#72:                                # %do.end.1882
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_73
.LBB9_73:                               # %do.body.1883
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-144(%rbp), %eax
	shll	$30, %eax
	movl	-144(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$19, %ecx
	movl	-144(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$10, %ecx
	movl	-144(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-144(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-140(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$26, %ecx
	movl	-128(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$21, %edx
	movl	-128(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$7, %edx
	movl	-128(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-136(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+132, %eax
	movl	-52(%rbp), %ecx
	shll	$15, %ecx
	movl	-52(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-52(%rbp), %edx
	shll	$13, %edx
	movl	-52(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-52(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-72(%rbp), %ecx
	movl	-104(%rbp), %edx
	shll	$25, %edx
	movl	-104(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-104(%rbp), %esi
	shll	$14, %esi
	movl	-104(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-104(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -140(%rbp)
# BB#74:                                # %do.end.1954
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_75
.LBB9_75:                               # %do.body.1955
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-140(%rbp), %eax
	shll	$30, %eax
	movl	-140(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$19, %ecx
	movl	-140(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$10, %ecx
	movl	-140(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	andl	-144(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-140(%rbp), %esi
	orl	-144(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$26, %ecx
	movl	-124(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$21, %edx
	movl	-124(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$7, %edx
	movl	-124(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+136, %eax
	movl	-112(%rbp), %ecx
	shll	$15, %ecx
	movl	-112(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-112(%rbp), %edx
	shll	$13, %edx
	movl	-112(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-112(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-68(%rbp), %ecx
	movl	-100(%rbp), %edx
	shll	$25, %edx
	movl	-100(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-100(%rbp), %esi
	shll	$14, %esi
	movl	-100(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-100(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#76:                                # %do.end.2026
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_77
.LBB9_77:                               # %do.body.2027
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-136(%rbp), %eax
	shll	$30, %eax
	movl	-136(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$19, %ecx
	movl	-136(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$10, %ecx
	movl	-136(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-136(%rbp), %esi
	orl	-140(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	-120(%rbp), %ecx
	shll	$26, %ecx
	movl	-120(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$21, %edx
	movl	-120(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$7, %edx
	movl	-120(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+140, %eax
	movl	-108(%rbp), %ecx
	shll	$15, %ecx
	movl	-108(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-108(%rbp), %edx
	shll	$13, %edx
	movl	-108(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-108(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-64(%rbp), %ecx
	movl	-96(%rbp), %edx
	shll	$25, %edx
	movl	-96(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-96(%rbp), %esi
	shll	$14, %esi
	movl	-96(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-96(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-100(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#78:                                # %do.end.2098
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_79
.LBB9_79:                               # %do.body.2099
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$19, %ecx
	movl	-132(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$10, %ecx
	movl	-132(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-136(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-136(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$26, %ecx
	movl	-116(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$21, %edx
	movl	-116(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$7, %edx
	movl	-116(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+144, %eax
	movl	-104(%rbp), %ecx
	shll	$15, %ecx
	movl	-104(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-104(%rbp), %edx
	shll	$13, %edx
	movl	-104(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-104(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-60(%rbp), %ecx
	movl	-92(%rbp), %edx
	shll	$25, %edx
	movl	-92(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-92(%rbp), %esi
	shll	$14, %esi
	movl	-92(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-92(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#80:                                # %do.end.2170
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_81
.LBB9_81:                               # %do.body.2171
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$19, %ecx
	movl	-128(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$10, %ecx
	movl	-128(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	shll	$26, %ecx
	movl	-144(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$21, %edx
	movl	-144(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$7, %edx
	movl	-144(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+148, %eax
	movl	-100(%rbp), %ecx
	shll	$15, %ecx
	movl	-100(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-100(%rbp), %edx
	shll	$13, %edx
	movl	-100(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-100(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-56(%rbp), %ecx
	movl	-88(%rbp), %edx
	shll	$25, %edx
	movl	-88(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-88(%rbp), %esi
	shll	$14, %esi
	movl	-88(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-88(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#82:                                # %do.end.2242
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_83
.LBB9_83:                               # %do.body.2243
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$19, %ecx
	movl	-124(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$10, %ecx
	movl	-124(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$26, %ecx
	movl	-140(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$21, %edx
	movl	-140(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$7, %edx
	movl	-140(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+152, %eax
	movl	-96(%rbp), %ecx
	shll	$15, %ecx
	movl	-96(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-96(%rbp), %edx
	shll	$13, %edx
	movl	-96(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-96(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-52(%rbp), %ecx
	movl	-84(%rbp), %edx
	shll	$25, %edx
	movl	-84(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-84(%rbp), %esi
	shll	$14, %esi
	movl	-84(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-84(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#84:                                # %do.end.2314
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_85
.LBB9_85:                               # %do.body.2315
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$19, %ecx
	movl	-120(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$10, %ecx
	movl	-120(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-116(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$26, %ecx
	movl	-136(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$21, %edx
	movl	-136(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$7, %edx
	movl	-136(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %esi
	xorl	-144(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+156, %eax
	movl	-92(%rbp), %ecx
	shll	$15, %ecx
	movl	-92(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-92(%rbp), %edx
	shll	$13, %edx
	movl	-92(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-92(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-112(%rbp), %ecx
	movl	-80(%rbp), %edx
	shll	$25, %edx
	movl	-80(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-80(%rbp), %esi
	shll	$14, %esi
	movl	-80(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-80(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#86:                                # %do.end.2386
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_87
.LBB9_87:                               # %do.body.2387
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$19, %ecx
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$10, %ecx
	movl	-116(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-144(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$26, %ecx
	movl	-132(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$21, %edx
	movl	-132(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$7, %edx
	movl	-132(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	xorl	-140(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+160, %eax
	movl	-88(%rbp), %ecx
	shll	$15, %ecx
	movl	-88(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-88(%rbp), %edx
	shll	$13, %edx
	movl	-88(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-88(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-108(%rbp), %ecx
	movl	-76(%rbp), %edx
	shll	$25, %edx
	movl	-76(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-76(%rbp), %esi
	shll	$14, %esi
	movl	-76(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-76(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#88:                                # %do.end.2458
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_89
.LBB9_89:                               # %do.body.2459
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-144(%rbp), %eax
	shll	$30, %eax
	movl	-144(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$19, %ecx
	movl	-144(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$10, %ecx
	movl	-144(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-144(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-140(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$26, %ecx
	movl	-128(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$21, %edx
	movl	-128(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$7, %edx
	movl	-128(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-136(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+164, %eax
	movl	-84(%rbp), %ecx
	shll	$15, %ecx
	movl	-84(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-84(%rbp), %edx
	shll	$13, %edx
	movl	-84(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-84(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-104(%rbp), %ecx
	movl	-72(%rbp), %edx
	shll	$25, %edx
	movl	-72(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-72(%rbp), %esi
	shll	$14, %esi
	movl	-72(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-72(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-76(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -140(%rbp)
# BB#90:                                # %do.end.2530
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_91
.LBB9_91:                               # %do.body.2531
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-140(%rbp), %eax
	shll	$30, %eax
	movl	-140(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$19, %ecx
	movl	-140(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$10, %ecx
	movl	-140(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	andl	-144(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-140(%rbp), %esi
	orl	-144(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$26, %ecx
	movl	-124(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$21, %edx
	movl	-124(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$7, %edx
	movl	-124(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+168, %eax
	movl	-80(%rbp), %ecx
	shll	$15, %ecx
	movl	-80(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-80(%rbp), %edx
	shll	$13, %edx
	movl	-80(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-80(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-100(%rbp), %ecx
	movl	-68(%rbp), %edx
	shll	$25, %edx
	movl	-68(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-68(%rbp), %esi
	shll	$14, %esi
	movl	-68(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-68(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#92:                                # %do.end.2602
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_93
.LBB9_93:                               # %do.body.2603
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-136(%rbp), %eax
	shll	$30, %eax
	movl	-136(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$19, %ecx
	movl	-136(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$10, %ecx
	movl	-136(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-136(%rbp), %esi
	orl	-140(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	-120(%rbp), %ecx
	shll	$26, %ecx
	movl	-120(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$21, %edx
	movl	-120(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$7, %edx
	movl	-120(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+172, %eax
	movl	-76(%rbp), %ecx
	shll	$15, %ecx
	movl	-76(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-76(%rbp), %edx
	shll	$13, %edx
	movl	-76(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-76(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-96(%rbp), %ecx
	movl	-64(%rbp), %edx
	shll	$25, %edx
	movl	-64(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-64(%rbp), %esi
	shll	$14, %esi
	movl	-64(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-64(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#94:                                # %do.end.2674
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_95
.LBB9_95:                               # %do.body.2675
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$19, %ecx
	movl	-132(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$10, %ecx
	movl	-132(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-136(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-136(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$26, %ecx
	movl	-116(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$21, %edx
	movl	-116(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$7, %edx
	movl	-116(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+176, %eax
	movl	-72(%rbp), %ecx
	shll	$15, %ecx
	movl	-72(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-72(%rbp), %edx
	shll	$13, %edx
	movl	-72(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-72(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-92(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$25, %edx
	movl	-60(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-60(%rbp), %esi
	shll	$14, %esi
	movl	-60(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-60(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#96:                                # %do.end.2746
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_97
.LBB9_97:                               # %do.body.2747
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$19, %ecx
	movl	-128(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$10, %ecx
	movl	-128(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	shll	$26, %ecx
	movl	-144(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$21, %edx
	movl	-144(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$7, %edx
	movl	-144(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+180, %eax
	movl	-68(%rbp), %ecx
	shll	$15, %ecx
	movl	-68(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-68(%rbp), %edx
	shll	$13, %edx
	movl	-68(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-68(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-88(%rbp), %ecx
	movl	-56(%rbp), %edx
	shll	$25, %edx
	movl	-56(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-56(%rbp), %esi
	shll	$14, %esi
	movl	-56(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-56(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#98:                                # %do.end.2818
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_99
.LBB9_99:                               # %do.body.2819
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$19, %ecx
	movl	-124(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$10, %ecx
	movl	-124(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$26, %ecx
	movl	-140(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$21, %edx
	movl	-140(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$7, %edx
	movl	-140(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+184, %eax
	movl	-64(%rbp), %ecx
	shll	$15, %ecx
	movl	-64(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-64(%rbp), %edx
	shll	$13, %edx
	movl	-64(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-64(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-84(%rbp), %ecx
	movl	-52(%rbp), %edx
	shll	$25, %edx
	movl	-52(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-52(%rbp), %esi
	shll	$14, %esi
	movl	-52(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-52(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#100:                               # %do.end.2890
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_101
.LBB9_101:                              # %do.body.2891
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$19, %ecx
	movl	-120(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$10, %ecx
	movl	-120(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-116(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$26, %ecx
	movl	-136(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$21, %edx
	movl	-136(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$7, %edx
	movl	-136(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %esi
	xorl	-144(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+188, %eax
	movl	-60(%rbp), %ecx
	shll	$15, %ecx
	movl	-60(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-60(%rbp), %edx
	shll	$13, %edx
	movl	-60(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-60(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-80(%rbp), %ecx
	movl	-112(%rbp), %edx
	shll	$25, %edx
	movl	-112(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-112(%rbp), %esi
	shll	$14, %esi
	movl	-112(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-112(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#102:                               # %do.end.2962
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_103
.LBB9_103:                              # %do.body.2963
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$19, %ecx
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$10, %ecx
	movl	-116(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-144(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$26, %ecx
	movl	-132(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$21, %edx
	movl	-132(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$7, %edx
	movl	-132(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	xorl	-140(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+192, %eax
	movl	-56(%rbp), %ecx
	shll	$15, %ecx
	movl	-56(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-56(%rbp), %edx
	shll	$13, %edx
	movl	-56(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-56(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-76(%rbp), %ecx
	movl	-108(%rbp), %edx
	shll	$25, %edx
	movl	-108(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-108(%rbp), %esi
	shll	$14, %esi
	movl	-108(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-108(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#104:                               # %do.end.3034
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_105
.LBB9_105:                              # %do.body.3035
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-144(%rbp), %eax
	shll	$30, %eax
	movl	-144(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$19, %ecx
	movl	-144(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$10, %ecx
	movl	-144(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-144(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-140(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$26, %ecx
	movl	-128(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$21, %edx
	movl	-128(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$7, %edx
	movl	-128(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-136(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+196, %eax
	movl	-52(%rbp), %ecx
	shll	$15, %ecx
	movl	-52(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-52(%rbp), %edx
	shll	$13, %edx
	movl	-52(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-52(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-72(%rbp), %ecx
	movl	-104(%rbp), %edx
	shll	$25, %edx
	movl	-104(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-104(%rbp), %esi
	shll	$14, %esi
	movl	-104(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-104(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -140(%rbp)
# BB#106:                               # %do.end.3106
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_107
.LBB9_107:                              # %do.body.3107
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-140(%rbp), %eax
	shll	$30, %eax
	movl	-140(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$19, %ecx
	movl	-140(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$10, %ecx
	movl	-140(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	andl	-144(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-140(%rbp), %esi
	orl	-144(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$26, %ecx
	movl	-124(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$21, %edx
	movl	-124(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$7, %edx
	movl	-124(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+200, %eax
	movl	-112(%rbp), %ecx
	shll	$15, %ecx
	movl	-112(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-112(%rbp), %edx
	shll	$13, %edx
	movl	-112(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-112(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-68(%rbp), %ecx
	movl	-100(%rbp), %edx
	shll	$25, %edx
	movl	-100(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-100(%rbp), %esi
	shll	$14, %esi
	movl	-100(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-100(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#108:                               # %do.end.3178
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_109
.LBB9_109:                              # %do.body.3179
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-136(%rbp), %eax
	shll	$30, %eax
	movl	-136(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$19, %ecx
	movl	-136(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$10, %ecx
	movl	-136(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-136(%rbp), %esi
	orl	-140(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	-120(%rbp), %ecx
	shll	$26, %ecx
	movl	-120(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$21, %edx
	movl	-120(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$7, %edx
	movl	-120(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+204, %eax
	movl	-108(%rbp), %ecx
	shll	$15, %ecx
	movl	-108(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-108(%rbp), %edx
	shll	$13, %edx
	movl	-108(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-108(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-64(%rbp), %ecx
	movl	-96(%rbp), %edx
	shll	$25, %edx
	movl	-96(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-96(%rbp), %esi
	shll	$14, %esi
	movl	-96(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-96(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-100(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#110:                               # %do.end.3250
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_111
.LBB9_111:                              # %do.body.3251
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$19, %ecx
	movl	-132(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$10, %ecx
	movl	-132(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-136(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-136(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$26, %ecx
	movl	-116(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$21, %edx
	movl	-116(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$7, %edx
	movl	-116(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+208, %eax
	movl	-104(%rbp), %ecx
	shll	$15, %ecx
	movl	-104(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-104(%rbp), %edx
	shll	$13, %edx
	movl	-104(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-104(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-60(%rbp), %ecx
	movl	-92(%rbp), %edx
	shll	$25, %edx
	movl	-92(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-92(%rbp), %esi
	shll	$14, %esi
	movl	-92(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-92(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#112:                               # %do.end.3322
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_113
.LBB9_113:                              # %do.body.3323
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$19, %ecx
	movl	-128(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$10, %ecx
	movl	-128(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	shll	$26, %ecx
	movl	-144(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$21, %edx
	movl	-144(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$7, %edx
	movl	-144(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+212, %eax
	movl	-100(%rbp), %ecx
	shll	$15, %ecx
	movl	-100(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-100(%rbp), %edx
	shll	$13, %edx
	movl	-100(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-100(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-56(%rbp), %ecx
	movl	-88(%rbp), %edx
	shll	$25, %edx
	movl	-88(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-88(%rbp), %esi
	shll	$14, %esi
	movl	-88(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-88(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#114:                               # %do.end.3394
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_115
.LBB9_115:                              # %do.body.3395
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$19, %ecx
	movl	-124(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$10, %ecx
	movl	-124(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$26, %ecx
	movl	-140(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$21, %edx
	movl	-140(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$7, %edx
	movl	-140(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+216, %eax
	movl	-96(%rbp), %ecx
	shll	$15, %ecx
	movl	-96(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-96(%rbp), %edx
	shll	$13, %edx
	movl	-96(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-96(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-52(%rbp), %ecx
	movl	-84(%rbp), %edx
	shll	$25, %edx
	movl	-84(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-84(%rbp), %esi
	shll	$14, %esi
	movl	-84(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-84(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#116:                               # %do.end.3466
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_117
.LBB9_117:                              # %do.body.3467
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$19, %ecx
	movl	-120(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$10, %ecx
	movl	-120(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-116(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$26, %ecx
	movl	-136(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$21, %edx
	movl	-136(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$7, %edx
	movl	-136(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %esi
	xorl	-144(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+220, %eax
	movl	-92(%rbp), %ecx
	shll	$15, %ecx
	movl	-92(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-92(%rbp), %edx
	shll	$13, %edx
	movl	-92(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-92(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-112(%rbp), %ecx
	movl	-80(%rbp), %edx
	shll	$25, %edx
	movl	-80(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-80(%rbp), %esi
	shll	$14, %esi
	movl	-80(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-80(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#118:                               # %do.end.3538
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_119
.LBB9_119:                              # %do.body.3539
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-116(%rbp), %eax
	shll	$30, %eax
	movl	-116(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$19, %ecx
	movl	-116(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	shll	$10, %ecx
	movl	-116(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-116(%rbp), %ecx
	andl	-120(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %esi
	orl	-120(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-144(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$26, %ecx
	movl	-132(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$21, %edx
	movl	-132(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-132(%rbp), %edx
	shll	$7, %edx
	movl	-132(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	xorl	-140(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+224, %eax
	movl	-88(%rbp), %ecx
	shll	$15, %ecx
	movl	-88(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-88(%rbp), %edx
	shll	$13, %edx
	movl	-88(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-88(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-108(%rbp), %ecx
	movl	-76(%rbp), %edx
	shll	$25, %edx
	movl	-76(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-76(%rbp), %esi
	shll	$14, %esi
	movl	-76(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-76(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -144(%rbp)
# BB#120:                               # %do.end.3610
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_121
.LBB9_121:                              # %do.body.3611
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-144(%rbp), %eax
	shll	$30, %eax
	movl	-144(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$19, %ecx
	movl	-144(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	shll	$10, %ecx
	movl	-144(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-144(%rbp), %ecx
	andl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-144(%rbp), %esi
	orl	-116(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-140(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$26, %ecx
	movl	-128(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$21, %edx
	movl	-128(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-128(%rbp), %edx
	shll	$7, %edx
	movl	-128(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %esi
	xorl	-136(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+228, %eax
	movl	-84(%rbp), %ecx
	shll	$15, %ecx
	movl	-84(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-84(%rbp), %edx
	shll	$13, %edx
	movl	-84(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-84(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-104(%rbp), %ecx
	movl	-72(%rbp), %edx
	shll	$25, %edx
	movl	-72(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-72(%rbp), %esi
	shll	$14, %esi
	movl	-72(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-72(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-76(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -140(%rbp)
# BB#122:                               # %do.end.3682
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_123
.LBB9_123:                              # %do.body.3683
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-140(%rbp), %eax
	shll	$30, %eax
	movl	-140(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$19, %ecx
	movl	-140(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	shll	$10, %ecx
	movl	-140(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-140(%rbp), %ecx
	andl	-144(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-140(%rbp), %esi
	orl	-144(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %eax
	movl	-124(%rbp), %ecx
	shll	$26, %ecx
	movl	-124(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$21, %edx
	movl	-124(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-124(%rbp), %edx
	shll	$7, %edx
	movl	-124(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	xorl	-132(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+232, %eax
	movl	-80(%rbp), %ecx
	shll	$15, %ecx
	movl	-80(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-80(%rbp), %edx
	shll	$13, %edx
	movl	-80(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-80(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-100(%rbp), %ecx
	movl	-68(%rbp), %edx
	shll	$25, %edx
	movl	-68(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-68(%rbp), %esi
	shll	$14, %esi
	movl	-68(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-68(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -136(%rbp)
# BB#124:                               # %do.end.3754
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_125
.LBB9_125:                              # %do.body.3755
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-136(%rbp), %eax
	shll	$30, %eax
	movl	-136(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$19, %ecx
	movl	-136(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	shll	$10, %ecx
	movl	-136(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-136(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-136(%rbp), %esi
	orl	-140(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-132(%rbp), %eax
	movl	-120(%rbp), %ecx
	shll	$26, %ecx
	movl	-120(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$21, %edx
	movl	-120(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-120(%rbp), %edx
	shll	$7, %edx
	movl	-120(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %esi
	xorl	-128(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+236, %eax
	movl	-76(%rbp), %ecx
	shll	$15, %ecx
	movl	-76(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-76(%rbp), %edx
	shll	$13, %edx
	movl	-76(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-76(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-96(%rbp), %ecx
	movl	-64(%rbp), %edx
	shll	$25, %edx
	movl	-64(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-64(%rbp), %esi
	shll	$14, %esi
	movl	-64(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-64(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -132(%rbp)
# BB#126:                               # %do.end.3826
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_127
.LBB9_127:                              # %do.body.3827
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	shll	$30, %eax
	movl	-132(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$19, %ecx
	movl	-132(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	shll	$10, %ecx
	movl	-132(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-132(%rbp), %ecx
	andl	-136(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %esi
	orl	-136(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-128(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$26, %ecx
	movl	-116(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$21, %edx
	movl	-116(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-116(%rbp), %edx
	shll	$7, %edx
	movl	-116(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-124(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %esi
	xorl	-124(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+240, %eax
	movl	-72(%rbp), %ecx
	shll	$15, %ecx
	movl	-72(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-72(%rbp), %edx
	shll	$13, %edx
	movl	-72(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-72(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-92(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$25, %edx
	movl	-60(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-60(%rbp), %esi
	shll	$14, %esi
	movl	-60(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-60(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#128:                               # %do.end.3898
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_129
.LBB9_129:                              # %do.body.3899
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-128(%rbp), %eax
	shll	$30, %eax
	movl	-128(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$19, %ecx
	movl	-128(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	shll	$10, %ecx
	movl	-128(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-128(%rbp), %ecx
	andl	-132(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %esi
	orl	-132(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	shll	$26, %ecx
	movl	-144(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$21, %edx
	movl	-144(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-144(%rbp), %edx
	shll	$7, %edx
	movl	-144(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-116(%rbp), %esi
	xorl	-120(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+244, %eax
	movl	-68(%rbp), %ecx
	shll	$15, %ecx
	movl	-68(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-68(%rbp), %edx
	shll	$13, %edx
	movl	-68(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-68(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-88(%rbp), %ecx
	movl	-56(%rbp), %edx
	shll	$25, %edx
	movl	-56(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-56(%rbp), %esi
	shll	$14, %esi
	movl	-56(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-56(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -124(%rbp)
# BB#130:                               # %do.end.3970
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_131
.LBB9_131:                              # %do.body.3971
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-124(%rbp), %eax
	shll	$30, %eax
	movl	-124(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$19, %ecx
	movl	-124(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	shll	$10, %ecx
	movl	-124(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-124(%rbp), %ecx
	andl	-128(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %esi
	orl	-128(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$26, %ecx
	movl	-140(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$21, %edx
	movl	-140(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-140(%rbp), %edx
	shll	$7, %edx
	movl	-140(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-116(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %esi
	xorl	-116(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+248, %eax
	movl	-64(%rbp), %ecx
	shll	$15, %ecx
	movl	-64(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-64(%rbp), %edx
	shll	$13, %edx
	movl	-64(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-64(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-84(%rbp), %ecx
	movl	-52(%rbp), %edx
	shll	$25, %edx
	movl	-52(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-52(%rbp), %esi
	shll	$14, %esi
	movl	-52(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-52(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -120(%rbp)
# BB#132:                               # %do.end.4042
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_133
.LBB9_133:                              # %do.body.4043
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-120(%rbp), %eax
	shll	$30, %eax
	movl	-120(%rbp), %ecx
	shrl	$2, %ecx
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$19, %ecx
	movl	-120(%rbp), %edx
	shrl	$13, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	shll	$10, %ecx
	movl	-120(%rbp), %edx
	shrl	$22, %edx
	orl	%edx, %ecx
	xorl	%ecx, %eax
	movl	-120(%rbp), %ecx
	andl	-124(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	orl	-124(%rbp), %esi
	andl	%esi, %edx
	orl	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-116(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$26, %ecx
	movl	-136(%rbp), %edx
	shrl	$6, %edx
	orl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$21, %edx
	movl	-136(%rbp), %esi
	shrl	$11, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-136(%rbp), %edx
	shll	$7, %edx
	movl	-136(%rbp), %esi
	shrl	$25, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	movl	-144(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %esi
	xorl	-144(%rbp), %esi
	andl	%esi, %edx
	xorl	%edx, %ecx
	addl	%ecx, %eax
	addl	sha256_round_constants+252, %eax
	movl	-60(%rbp), %ecx
	shll	$15, %ecx
	movl	-60(%rbp), %edx
	shrl	$17, %edx
	orl	%edx, %ecx
	movl	-60(%rbp), %edx
	shll	$13, %edx
	movl	-60(%rbp), %esi
	shrl	$19, %esi
	orl	%esi, %edx
	xorl	%edx, %ecx
	movl	-60(%rbp), %edx
	shrl	$10, %edx
	xorl	%edx, %ecx
	addl	-80(%rbp), %ecx
	movl	-112(%rbp), %edx
	shll	$25, %edx
	movl	-112(%rbp), %esi
	shrl	$7, %esi
	orl	%esi, %edx
	movl	-112(%rbp), %esi
	shll	$14, %esi
	movl	-112(%rbp), %edi
	shrl	$18, %edi
	orl	%edi, %esi
	xorl	%esi, %edx
	movl	-112(%rbp), %esi
	shrl	$3, %esi
	xorl	%esi, %edx
	addl	%edx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	addl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-156(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#134:                               # %do.end.4114
                                        #   in Loop: Header=BB9_1 Depth=1
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
	movl	-136(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, 20(%rcx)
	movl	%eax, -136(%rbp)
	movl	-140(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	movl	%eax, -140(%rbp)
	movl	-144(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	28(%rcx), %eax
	movl	%eax, 28(%rcx)
	movl	%eax, -144(%rbp)
	jmp	.LBB9_1
.LBB9_135:                              # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	sha256_process_block, .Lfunc_end9-sha256_process_block
	.cfi_endproc

	.globl	sha256_process_bytes
	.align	16, 0x90
	.type	sha256_process_bytes,@function
sha256_process_bytes:                   # @sha256_process_bytes
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 40(%rdx)
	je	.LBB10_7
# BB#1:                                 # %if.then
	movl	$128, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	subq	-32(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	jbe	.LBB10_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB10_4
.LBB10_3:                               # %cond.false
	movl	$128, %eax
	movl	%eax, %ecx
	subq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB10_4:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$64, 40(%rax)
	jbe	.LBB10_6
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	andq	$-64, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	sha256_process_block
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	andq	$63, %rcx
	movq	%rcx, 40(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	-32(%rbp), %rcx
	addq	-40(%rbp), %rcx
	andq	$-64, %rcx
	movq	-24(%rbp), %rdx
	addq	$48, %rdx
	addq	%rcx, %rdx
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	memcpy
.LBB10_6:                               # %if.end
	movq	-8(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -16(%rbp)
.LBB10_7:                               # %if.end.23
	cmpq	$64, -16(%rbp)
	jb	.LBB10_15
# BB#8:                                 # %if.then.25
	movq	-8(%rbp), %rax
	andq	$3, %rax
	cmpq	$0, %rax
	je	.LBB10_13
# BB#9:                                 # %if.then.27
	jmp	.LBB10_10
.LBB10_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$64, -16(%rbp)
	jbe	.LBB10_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	$48, %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	sha256_process_block
	movq	-8(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, -8(%rbp)
	movq	-16(%rbp), %rcx
	subq	$64, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB10_10
.LBB10_12:                              # %while.end
	jmp	.LBB10_14
.LBB10_13:                              # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	andq	$-64, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	sha256_process_block
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	andq	$-64, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	andq	$63, %rax
	movq	%rax, -16(%rbp)
.LBB10_14:                              # %if.end.36
	jmp	.LBB10_15
.LBB10_15:                              # %if.end.37
	cmpq	$0, -16(%rbp)
	jbe	.LBB10_19
# BB#16:                                # %if.then.39
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	callq	memcpy
	movq	-16(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$64, -48(%rbp)
	jb	.LBB10_18
# BB#17:                                # %if.then.47
	movl	$64, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	callq	sha256_process_block
	movq	-48(%rbp), %rcx
	subq	$64, %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movq	-24(%rbp), %rdx
	addq	$48, %rdx
	addq	$64, %rdx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
.LBB10_18:                              # %if.end.54
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB10_19:                              # %if.end.56
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sha256_process_bytes, .Lfunc_end10-sha256_process_bytes
	.cfi_endproc

	.globl	sha224_stream
	.align	16, 0x90
	.type	sha224_stream,@function
sha224_stream:                          # @sha224_stream
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
	subq	$240, %rsp
	movl	$32840, %eax            # imm = 0x8048
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB11_17
.LBB11_2:                               # %if.end
	leaq	-200(%rbp), %rdi
	callq	sha224_init_ctx
.LBB11_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_4 Depth 2
	movq	$0, -208(%rbp)
.LBB11_4:                               # %while.body.2
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	$32768, %eax            # imm = 0x8000
	movl	%eax, %ecx
	movq	-216(%rbp), %rdx
	addq	-208(%rbp), %rdx
	subq	-208(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	fread
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	-208(%rbp), %rax
	movq	%rax, -208(%rbp)
	cmpq	$32768, -208(%rbp)      # imm = 0x8000
	jne	.LBB11_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_13
.LBB11_6:                               # %if.end.5
                                        #   in Loop: Header=BB11_4 Depth=2
	cmpq	$0, -224(%rbp)
	jne	.LBB11_10
# BB#7:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB11_9
# BB#8:                                 # %if.then.10
	movq	-216(%rbp), %rdi
	callq	free
	movl	$1, -4(%rbp)
	jmp	.LBB11_17
.LBB11_9:                               # %if.end.11
	jmp	.LBB11_14
.LBB11_10:                              # %if.end.12
                                        #   in Loop: Header=BB11_4 Depth=2
	movq	-16(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB11_12
# BB#11:                                # %if.then.15
	jmp	.LBB11_14
.LBB11_12:                              # %if.end.16
                                        #   in Loop: Header=BB11_4 Depth=2
	jmp	.LBB11_4
.LBB11_13:                              # %while.end
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$32768, %eax            # imm = 0x8000
	movl	%eax, %esi
	leaq	-200(%rbp), %rdx
	movq	-216(%rbp), %rdi
	callq	sha256_process_block
	jmp	.LBB11_3
.LBB11_14:                              # %process_partial_block
	cmpq	$0, -208(%rbp)
	jbe	.LBB11_16
# BB#15:                                # %if.then.18
	leaq	-200(%rbp), %rdx
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	sha256_process_bytes
.LBB11_16:                              # %if.end.19
	leaq	-200(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sha224_finish_ctx
	movq	-216(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	free
	movl	$0, -4(%rbp)
.LBB11_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	sha224_stream, .Lfunc_end11-sha224_stream
	.cfi_endproc

	.globl	sha256_buffer
	.align	16, 0x90
	.type	sha256_buffer,@function
sha256_buffer:                          # @sha256_buffer
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
	subq	$208, %rsp
	leaq	-200(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdi
	callq	sha256_init_ctx
	leaq	-200(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sha256_process_bytes
	leaq	-200(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sha256_finish_ctx
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	sha256_buffer, .Lfunc_end12-sha256_buffer
	.cfi_endproc

	.globl	sha224_buffer
	.align	16, 0x90
	.type	sha224_buffer,@function
sha224_buffer:                          # @sha224_buffer
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
	subq	$208, %rsp
	leaq	-200(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdi
	callq	sha224_init_ctx
	leaq	-200(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sha256_process_bytes
	leaq	-200(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sha224_finish_ctx
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	sha224_buffer, .Lfunc_end13-sha224_buffer
	.cfi_endproc

	.type	sha256_round_constants,@object # @sha256_round_constants
	.section	.rodata,"a",@progbits
	.align	16
sha256_round_constants:
	.long	1116352408              # 0x428a2f98
	.long	1899447441              # 0x71374491
	.long	3049323471              # 0xb5c0fbcf
	.long	3921009573              # 0xe9b5dba5
	.long	961987163               # 0x3956c25b
	.long	1508970993              # 0x59f111f1
	.long	2453635748              # 0x923f82a4
	.long	2870763221              # 0xab1c5ed5
	.long	3624381080              # 0xd807aa98
	.long	310598401               # 0x12835b01
	.long	607225278               # 0x243185be
	.long	1426881987              # 0x550c7dc3
	.long	1925078388              # 0x72be5d74
	.long	2162078206              # 0x80deb1fe
	.long	2614888103              # 0x9bdc06a7
	.long	3248222580              # 0xc19bf174
	.long	3835390401              # 0xe49b69c1
	.long	4022224774              # 0xefbe4786
	.long	264347078               # 0xfc19dc6
	.long	604807628               # 0x240ca1cc
	.long	770255983               # 0x2de92c6f
	.long	1249150122              # 0x4a7484aa
	.long	1555081692              # 0x5cb0a9dc
	.long	1996064986              # 0x76f988da
	.long	2554220882              # 0x983e5152
	.long	2821834349              # 0xa831c66d
	.long	2952996808              # 0xb00327c8
	.long	3210313671              # 0xbf597fc7
	.long	3336571891              # 0xc6e00bf3
	.long	3584528711              # 0xd5a79147
	.long	113926993               # 0x6ca6351
	.long	338241895               # 0x14292967
	.long	666307205               # 0x27b70a85
	.long	773529912               # 0x2e1b2138
	.long	1294757372              # 0x4d2c6dfc
	.long	1396182291              # 0x53380d13
	.long	1695183700              # 0x650a7354
	.long	1986661051              # 0x766a0abb
	.long	2177026350              # 0x81c2c92e
	.long	2456956037              # 0x92722c85
	.long	2730485921              # 0xa2bfe8a1
	.long	2820302411              # 0xa81a664b
	.long	3259730800              # 0xc24b8b70
	.long	3345764771              # 0xc76c51a3
	.long	3516065817              # 0xd192e819
	.long	3600352804              # 0xd6990624
	.long	4094571909              # 0xf40e3585
	.long	275423344               # 0x106aa070
	.long	430227734               # 0x19a4c116
	.long	506948616               # 0x1e376c08
	.long	659060556               # 0x2748774c
	.long	883997877               # 0x34b0bcb5
	.long	958139571               # 0x391c0cb3
	.long	1322822218              # 0x4ed8aa4a
	.long	1537002063              # 0x5b9cca4f
	.long	1747873779              # 0x682e6ff3
	.long	1955562222              # 0x748f82ee
	.long	2024104815              # 0x78a5636f
	.long	2227730452              # 0x84c87814
	.long	2361852424              # 0x8cc70208
	.long	2428436474              # 0x90befffa
	.long	2756734187              # 0xa4506ceb
	.long	3204031479              # 0xbef9a3f7
	.long	3329325298              # 0xc67178f2
	.size	sha256_round_constants, 256

	.type	fillbuf,@object         # @fillbuf
	.align	16
fillbuf:
	.asciz	"\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	fillbuf, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
