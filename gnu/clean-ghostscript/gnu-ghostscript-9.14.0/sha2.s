	.text
	.file	"sha2.bc"
	.globl	pSHA256_Init
	.align	16, 0x90
	.type	pSHA256_Init,@function
pSHA256_Init:                           # @pSHA256_Init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#1:                                 # %if.end
	movl	$sha256_initial_hash_value, %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	memcpy
	leaq	40(%rbx), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movq	$0, 32(%rbx)
.LBB0_2:                                # %return
	popq	%rbx
	retq
.Lfunc_end0:
	.size	pSHA256_Init, .Lfunc_end0-pSHA256_Init
	.cfi_endproc

	.globl	pSHA256_Transform
	.align	16, 0x90
	.type	pSHA256_Transform,@function
pSHA256_Transform:                      # @pSHA256_Transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsi, -8(%rsp)          # 8-byte Spill
	movq	%rdi, -16(%rsp)         # 8-byte Spill
	movl	(%rdi), %ebx
	movl	4(%rdi), %ecx
	movl	8(%rdi), %eax
	movl	12(%rdi), %esi
	movl	16(%rdi), %r12d
	movl	20(%rdi), %r8d
	movl	24(%rdi), %r10d
	movl	28(%rdi), %ebp
	xorl	%edx, %edx
	movl	$16, %r15d
	.align	16, 0x90
.LBB1_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r9d
	movl	%ecx, %r13d
	movl	%eax, %r14d
	movl	%ebp, %r11d
	movq	%rsi, %rdi
	movl	%r10d, %esi
	movl	%r8d, %r10d
	movl	%r12d, %r8d
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%rdx), %ecx
	roll	$16, %ecx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	andl	$16711935, %ebx         # imm = 0xFF00FF
	shll	$8, %ecx
	andl	$-16711936, %ecx        # imm = 0xFFFFFFFFFF00FF00
	orl	%ebx, %ecx
	movq	-16(%rsp), %rax         # 8-byte Reload
	movl	%ecx, 40(%rax,%rdx)
	movl	%r8d, %ebx
	roll	$26, %ebx
	movl	%r8d, %eax
	roll	$21, %eax
	xorl	%ebx, %eax
	movl	%r8d, %ebx
	roll	$7, %ebx
	xorl	%eax, %ebx
	addl	%r11d, %ebx
	movl	%r10d, %ebp
	andl	%r8d, %ebp
	movl	%r8d, %eax
	notl	%eax
	andl	%esi, %eax
	xorl	%ebp, %eax
	addl	%ebx, %eax
	addl	K256(%rdx), %eax
	addl	%ecx, %eax
	movl	%r9d, %ecx
	roll	$30, %ecx
	movl	%r9d, %ebp
	roll	$19, %ebp
	xorl	%ecx, %ebp
	movl	%r9d, %ecx
	roll	$10, %ecx
	xorl	%ebp, %ecx
	movl	%r13d, %ebp
	xorl	%r14d, %ebp
	andl	%r9d, %ebp
	movl	%r13d, %ebx
	andl	%r14d, %ebx
	xorl	%ebp, %ebx
	movl	%esi, %ebp
	addl	%ecx, %ebx
	leal	(%rdi,%rax), %r12d
	addl	%eax, %ebx
	addq	$4, %rdx
	cmpq	$64, %rdx
	movl	%r14d, %esi
	movl	%r13d, %eax
	movl	%r9d, %ecx
	jne	.LBB1_1
# BB#2:
	movq	-16(%rsp), %rsi         # 8-byte Reload
	.align	16, 0x90
.LBB1_3:                                # %do.body.62
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r11d
	movl	%ebp, %eax
	movl	%r10d, -8(%rsp)         # 4-byte Spill
	movl	%r8d, %r10d
	movl	%r12d, %r8d
	leal	1(%r15), %ecx
	andl	$15, %ecx
	movl	40(%rsi,%rcx,4), %edx
	movl	%edx, %ecx
	roll	$25, %ecx
	movl	%edx, %edi
	roll	$14, %edi
	shrl	$3, %edx
	xorl	%edi, %edx
	xorl	%ecx, %edx
	leal	14(%r15), %ecx
	andl	$15, %ecx
	movl	40(%rsi,%rcx,4), %ecx
	movl	%ecx, %edi
	roll	$15, %edi
	movl	%ecx, %ebx
	roll	$13, %ebx
	shrl	$10, %ecx
	xorl	%ebx, %ecx
	xorl	%edi, %ecx
	movl	%r8d, %edi
	roll	$26, %edi
	movl	%r8d, %ebx
	roll	$21, %ebx
	xorl	%edi, %ebx
	movl	%r8d, %edi
	roll	$7, %edi
	xorl	%ebx, %edi
	addl	%eax, %edi
	movl	%r10d, %eax
	movl	-8(%rsp), %ebp          # 4-byte Reload
	andl	%r8d, %eax
	movl	%r8d, %ebx
	notl	%ebx
	andl	%ebp, %ebx
	xorl	%eax, %ebx
	addl	%edi, %ebx
	addl	K256(,%r15,4), %ebx
	leal	9(%r15), %eax
	andl	$15, %eax
	movl	%r15d, %edi
	andl	$15, %edi
	addl	40(%rsi,%rax,4), %edx
	addl	40(%rsi,%rdi,4), %edx
	addl	%ecx, %edx
	movl	%edx, 40(%rsi,%rdi,4)
	addl	%ebx, %edx
	movl	%r11d, %eax
	roll	$30, %eax
	movl	%r11d, %ecx
	roll	$19, %ecx
	xorl	%eax, %ecx
	movl	%r11d, %eax
	roll	$10, %eax
	xorl	%ecx, %eax
	movl	%r9d, %ecx
	xorl	%r13d, %ecx
	andl	%r11d, %ecx
	movl	%r9d, %ebx
	andl	%r13d, %ebx
	xorl	%ecx, %ebx
	movl	%r13d, %ecx
	addl	%eax, %ebx
	movl	%r9d, %eax
	leal	(%r14,%rdx), %r12d
	addl	%edx, %ebx
	incq	%r15
	cmpl	$64, %r15d
	movl	%ecx, %r14d
	movl	%eax, %r13d
	movl	%r11d, %r9d
	jl	.LBB1_3
# BB#4:                                 # %do.end.143
	movdqu	(%rsi), %xmm0
	movd	%ecx, %xmm1
	movd	%r11d, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%eax, %xmm1
	movd	%ebx, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	paddd	%xmm0, %xmm3
	movdqu	%xmm3, (%rsi)
	movdqu	16(%rsi), %xmm0
	movd	%ebp, %xmm1
	movd	%r8d, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%r10d, %xmm1
	movd	%r12d, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	paddd	%xmm0, %xmm3
	movdqu	%xmm3, 16(%rsi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pSHA256_Transform, .Lfunc_end1-pSHA256_Transform
	.cfi_endproc

	.globl	pSHA256_Update
	.align	16, 0x90
	.type	pSHA256_Update,@function
pSHA256_Update:                         # @pSHA256_Update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 64
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r15, %r15
	je	.LBB2_13
# BB#1:                                 # %if.end
	movl	32(%r14), %eax
	shrl	$3, %eax
	andl	$63, %eax
	je	.LBB2_2
# BB#4:                                 # %if.then.3
	movl	$64, %r12d
	subl	%eax, %r12d
	cmpq	%r15, %r12
	movl	%eax, %eax
	leaq	40(%r14,%rax), %rdi
	jbe	.LBB2_5
# BB#6:                                 # %if.else
	movq	%rbx, %rsi
	jmp	.LBB2_12
.LBB2_5:                                # %if.then.7
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	memcpy
	leal	(,%r12,8), %eax
	addq	%rax, 32(%r14)
	subq	%r12, %r15
	addq	%r12, %rbx
	leaq	40(%r14), %rsi
	movq	%r14, %rdi
	callq	pSHA256_Transform
.LBB2_2:                                # %while.cond.preheader
	cmpq	$64, %r15
	jb	.LBB2_3
# BB#7:                                 # %while.body.lr.ph
	leaq	-64(%r15), %r13
	movq	%r13, %rbp
	andq	$-64, %rbp
	leaq	64(%rbp,%rbx), %r12
	.align	16, 0x90
.LBB2_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pSHA256_Transform
	addq	$512, 32(%r14)          # imm = 0x200
	addq	$-64, %r15
	addq	$64, %rbx
	cmpq	$63, %r15
	ja	.LBB2_8
# BB#9:                                 # %while.cond.while.end_crit_edge
	subq	%rbp, %r13
	movq	%r13, %r15
	jmp	.LBB2_10
.LBB2_3:
	movq	%rbx, %r12
.LBB2_10:                               # %while.end
	testq	%r15, %r15
	je	.LBB2_13
# BB#11:                                # %if.then.31
	leaq	40(%r14), %rdi
	movq	%r12, %rsi
.LBB2_12:                               # %cleanup
	movq	%r15, %rdx
	callq	memcpy
	shlq	$3, %r15
	addq	%r15, 32(%r14)
.LBB2_13:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pSHA256_Update, .Lfunc_end2-pSHA256_Update
	.cfi_endproc

	.globl	pSHA256_Final
	.align	16, 0x90
	.type	pSHA256_Final,@function
pSHA256_Final:                          # @pSHA256_Final
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 32
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB3_9
# BB#1:                                 # %if.then
	movq	32(%rbx), %rax
	movl	%eax, %edx
	shrl	$3, %edx
	rolq	$32, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	movabsq	$71777214294589695, %rsi # imm = 0xFF00FF00FF00FF
	andq	%rcx, %rsi
	shlq	$8, %rax
	movabsq	$-71777214294589696, %rcx # imm = 0xFF00FF00FF00FF00
	andq	%rax, %rcx
	orq	%rsi, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	movabsq	$281470681808895, %rsi  # imm = 0xFFFF0000FFFF
	andq	%rax, %rsi
	shlq	$16, %rcx
	movabsq	$-281470681808896, %rax # imm = 0xFFFF0000FFFF0000
	andq	%rcx, %rax
	orq	%rsi, %rax
	andl	$63, %edx
	movq	%rax, 32(%rbx)
	je	.LBB3_7
# BB#2:                                 # %if.then.15
	leal	1(%rdx), %eax
	movl	%edx, %ecx
	movb	$-128, 40(%rbx,%rcx)
	cmpl	$56, %eax
	ja	.LBB3_4
# BB#3:                                 # %if.then.18
	movl	%eax, %eax
	leaq	40(%rbx,%rax), %rdi
	movl	$55, %eax
	subl	%edx, %eax
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.37
	leaq	40(%rbx), %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset
	movb	$-128, 40(%rbx)
	jmp	.LBB3_8
.LBB3_4:                                # %if.else
	leaq	40(%rbx), %r15
	cmpl	$63, %eax
	ja	.LBB3_6
# BB#5:                                 # %if.then.25
	movl	%eax, %eax
	leaq	40(%rbx,%rax), %rdi
	xorl	$63, %edx
	xorl	%esi, %esi
	callq	memset
.LBB3_6:                                # %if.end
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pSHA256_Transform
	xorl	%esi, %esi
	movl	$56, %edx
	movq	%r15, %rdi
	callq	memset
.LBB3_8:                                # %if.end.43
	movq	32(%rbx), %rax
	leaq	40(%rbx), %rsi
	movq	%rax, 96(%rbx)
	movq	%rbx, %rdi
	callq	pSHA256_Transform
	movl	(%rbx), %eax
	roll	$16, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$16711935, %ecx         # imm = 0xFF00FF
	shll	$8, %eax
	andl	$-16711936, %eax        # imm = 0xFFFFFFFFFF00FF00
	orl	%ecx, %eax
	movl	%eax, (%rbx)
	movl	%eax, (%r14)
	movl	4(%rbx), %eax
	roll	$16, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$16711935, %ecx         # imm = 0xFF00FF
	shll	$8, %eax
	andl	$-16711936, %eax        # imm = 0xFFFFFFFFFF00FF00
	orl	%ecx, %eax
	movl	%eax, 4(%rbx)
	movl	%eax, 4(%r14)
	movl	8(%rbx), %eax
	roll	$16, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$16711935, %ecx         # imm = 0xFF00FF
	shll	$8, %eax
	andl	$-16711936, %eax        # imm = 0xFFFFFFFFFF00FF00
	orl	%ecx, %eax
	movl	%eax, 8(%rbx)
	movl	%eax, 8(%r14)
	movl	12(%rbx), %eax
	roll	$16, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$16711935, %ecx         # imm = 0xFF00FF
	shll	$8, %eax
	andl	$-16711936, %eax        # imm = 0xFFFFFFFFFF00FF00
	orl	%ecx, %eax
	movl	%eax, 12(%rbx)
	movl	%eax, 12(%r14)
	movl	16(%rbx), %eax
	roll	$16, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$16711935, %ecx         # imm = 0xFF00FF
	shll	$8, %eax
	andl	$-16711936, %eax        # imm = 0xFFFFFFFFFF00FF00
	orl	%ecx, %eax
	movl	%eax, 16(%rbx)
	movl	%eax, 16(%r14)
	movl	20(%rbx), %eax
	roll	$16, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$16711935, %ecx         # imm = 0xFF00FF
	shll	$8, %eax
	andl	$-16711936, %eax        # imm = 0xFFFFFFFFFF00FF00
	orl	%ecx, %eax
	movl	%eax, 20(%rbx)
	movl	%eax, 20(%r14)
	movl	24(%rbx), %eax
	roll	$16, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$16711935, %ecx         # imm = 0xFF00FF
	shll	$8, %eax
	andl	$-16711936, %eax        # imm = 0xFFFFFFFFFF00FF00
	orl	%ecx, %eax
	movl	%eax, 24(%rbx)
	movl	%eax, 24(%r14)
	movl	28(%rbx), %eax
	roll	$16, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	andl	$16711935, %ecx         # imm = 0xFF00FF
	shll	$8, %eax
	andl	$-16711936, %eax        # imm = 0xFFFFFFFFFF00FF00
	orl	%ecx, %eax
	movl	%eax, 28(%rbx)
	movl	%eax, 28(%r14)
.LBB3_9:                                # %if.end.74
	xorl	%esi, %esi
	movl	$104, %edx
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	memset                  # TAILCALL
.Lfunc_end3:
	.size	pSHA256_Final, .Lfunc_end3-pSHA256_Final
	.cfi_endproc

	.globl	pSHA256_End
	.align	16, 0x90
	.type	pSHA256_End,@function
pSHA256_End:                            # @pSHA256_End
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 64
.Ltmp36:
	.cfi_offset %rbx, -24
.Ltmp37:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rax
	testq	%r14, %r14
	je	.LBB4_4
# BB#1:                                 # %if.then
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	pSHA256_Final
	leaq	32(%rsp), %rdi
	movq	%r14, %rcx
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	movb	.L.str(%rsi), %al
	movb	%al, (%rcx)
	andl	$15, %edx
	movb	.L.str(%rdx), %al
	movb	%al, 1(%rcx)
	movzbl	1(%rbx), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	.L.str(%rdx), %dl
	movb	%dl, 2(%rcx)
	andl	$15, %eax
	movb	.L.str(%rax), %al
	movb	%al, 3(%rcx)
	addq	$2, %rbx
	addq	$4, %rcx
	cmpq	%rdi, %rbx
	jne	.LBB4_2
# BB#3:                                 # %for.end
	movb	$0, 64(%r14)
	addq	$64, %r14
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$104, %edx
	movq	%rax, %rdi
	callq	memset
.LBB4_5:                                # %if.end
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	pSHA256_End, .Lfunc_end4-pSHA256_End
	.cfi_endproc

	.globl	pSHA256_Data
	.align	16, 0x90
	.type	pSHA256_Data,@function
pSHA256_Data:                           # @pSHA256_Data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 40
	subq	$152, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 192
.Ltmp43:
	.cfi_offset %rbx, -40
.Ltmp44:
	.cfi_offset %r12, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	8(%rsp), %r12
	movl	$sha256_initial_hash_value, %esi
	movl	$32, %edx
	movq	%r12, %rdi
	callq	memcpy
	leaq	48(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movq	$0, 40(%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	pSHA256_Update
	testq	%r14, %r14
	je	.LBB5_4
# BB#1:                                 # %if.then.i
	leaq	112(%rsp), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pSHA256_Final
	leaq	144(%rsp), %rdi
	movq	%r14, %rcx
	.align	16, 0x90
.LBB5_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	movb	.L.str(%rsi), %al
	movb	%al, (%rcx)
	andl	$15, %edx
	movb	.L.str(%rdx), %al
	movb	%al, 1(%rcx)
	movzbl	1(%rbx), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	.L.str(%rdx), %dl
	movb	%dl, 2(%rcx)
	andl	$15, %eax
	movb	.L.str(%rax), %al
	movb	%al, 3(%rcx)
	addq	$2, %rbx
	addq	$4, %rcx
	cmpq	%rdi, %rbx
	jne	.LBB5_2
# BB#3:                                 # %for.end.i
	movb	$0, 64(%r14)
	addq	$64, %r14
	jmp	.LBB5_5
.LBB5_4:                                # %if.else.i
	leaq	8(%rsp), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$104, %edx
	callq	memset
.LBB5_5:                                # %pSHA256_End.exit
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	movq	%r14, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	pSHA256_Data, .Lfunc_end5-pSHA256_Data
	.cfi_endproc

	.globl	pSHA512_Init
	.align	16, 0x90
	.type	pSHA512_Init,@function
pSHA512_Init:                           # @pSHA512_Init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB6_2
# BB#1:                                 # %if.end
	movl	$sha512_initial_hash_value, %esi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	memcpy
	leaq	80(%rbx), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rbx)
.LBB6_2:                                # %return
	popq	%rbx
	retq
.Lfunc_end6:
	.size	pSHA512_Init, .Lfunc_end6-pSHA512_Init
	.cfi_endproc

	.globl	pSHA512_Transform
	.align	16, 0x90
	.type	pSHA512_Transform,@function
pSHA512_Transform:                      # @pSHA512_Transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	(%r12), %rbx
	movq	8(%r12), %rdi
	movq	16(%r12), %rbp
	movq	24(%r12), %r10
	movq	32(%r12), %rax
	movq	40(%r12), %r8
	movq	48(%r12), %r11
	movq	56(%r12), %r9
	xorl	%edx, %edx
	movl	$16, %r15d
	.align	16, 0x90
.LBB7_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rcx
	movq	%rdi, %r13
	movq	%rbp, %r14
	movq	%r9, %rbx
	movq	%r11, %r9
	movq	%r8, %r11
	movq	%rax, %r8
	movq	(%rsi,%rdx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	movabsq	$71777214294589695, %rbp # imm = 0xFF00FF00FF00FF
	andq	%rbp, %rdi
	shlq	$8, %rax
	movabsq	$-71777214294589696, %rbp # imm = 0xFF00FF00FF00FF00
	andq	%rbp, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	movabsq	$281470681808895, %rbp  # imm = 0xFFFF0000FFFF
	andq	%rbp, %rdi
	shlq	$16, %rax
	movabsq	$-281470681808896, %rbp # imm = 0xFFFF0000FFFF0000
	andq	%rbp, %rax
	orq	%rdi, %rax
	movq	%rax, 80(%r12,%rdx)
	movq	%r8, %rdi
	rolq	$50, %rdi
	movq	%r8, %rbp
	rolq	$46, %rbp
	xorq	%rdi, %rbp
	movq	%r8, %rdi
	rolq	$23, %rdi
	xorq	%rbp, %rdi
	addq	%rbx, %rdi
	movq	%r11, %rbx
	andq	%r8, %rbx
	movq	%r12, %rbp
	movq	%r8, %r12
	notq	%r12
	andq	%r9, %r12
	xorq	%rbx, %r12
	addq	%rdi, %r12
	addq	K512(%rdx), %r12
	addq	%rax, %r12
	movq	%rcx, %rax
	rolq	$36, %rax
	movq	%rcx, %rdi
	rolq	$30, %rdi
	xorq	%rax, %rdi
	movq	%rcx, %rax
	rolq	$25, %rax
	xorq	%rdi, %rax
	movq	%r13, %rdi
	xorq	%r14, %rdi
	andq	%rcx, %rdi
	movq	%r13, %rbx
	andq	%r14, %rbx
	xorq	%rdi, %rbx
	addq	%rax, %rbx
	addq	%r12, %rbx
	leaq	(%r10,%r12), %rax
	movq	%rbp, %r12
	addq	$8, %rdx
	cmpq	$128, %rdx
	movq	%r14, %r10
	movq	%r13, %rbp
	movq	%rcx, %rdi
	jne	.LBB7_1
# BB#2:
	movq	%r11, %rbp
	.align	16, 0x90
.LBB7_3:                                # %do.body.64
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rsi
	movq	%rcx, %r11
	movq	%r13, %r10
	movq	%r9, %rdx
	movq	%rbp, %r9
	movq	%r8, %rbp
	movq	%rax, %r8
	leal	1(%r15), %eax
	andl	$15, %eax
	movq	80(%r12,%rax,8), %rcx
	movq	%rcx, %rax
	rolq	$63, %rax
	movq	%rcx, %rdi
	rolq	$56, %rdi
	shrq	$7, %rcx
	xorq	%rdi, %rcx
	xorq	%rax, %rcx
	leal	14(%r15), %eax
	andl	$15, %eax
	movq	80(%r12,%rax,8), %rax
	movq	%rax, %rdi
	rolq	$45, %rdi
	movq	%rax, %rbx
	rolq	$3, %rbx
	shrq	$6, %rax
	xorq	%rbx, %rax
	xorq	%rdi, %rax
	movq	%r8, %rdi
	rolq	$50, %rdi
	movq	%r8, %rbx
	rolq	$46, %rbx
	xorq	%rdi, %rbx
	movq	%r8, %rdi
	rolq	$23, %rdi
	xorq	%rbx, %rdi
	addq	%rdx, %rdi
	movq	%rbp, %rdx
	andq	%r8, %rdx
	movq	%r8, %rbx
	notq	%rbx
	andq	%r9, %rbx
	xorq	%rdx, %rbx
	addq	%rdi, %rbx
	addq	K512(,%r15,8), %rbx
	leal	9(%r15), %edx
	andl	$15, %edx
	movl	%r15d, %edi
	andl	$15, %edi
	addq	80(%r12,%rdx,8), %rcx
	addq	80(%r12,%rdi,8), %rcx
	addq	%rax, %rcx
	movq	%rcx, 80(%r12,%rdi,8)
	addq	%rbx, %rcx
	movq	%rsi, %rax
	rolq	$36, %rax
	movq	%rsi, %rdx
	rolq	$30, %rdx
	xorq	%rax, %rdx
	movq	%rsi, %rax
	rolq	$25, %rax
	xorq	%rdx, %rax
	movq	%r11, %rdx
	xorq	%r10, %rdx
	andq	%rsi, %rdx
	movq	%r11, %rbx
	andq	%r10, %rbx
	xorq	%rdx, %rbx
	addq	%rax, %rbx
	addq	%rcx, %rbx
	leaq	(%r14,%rcx), %rax
	incq	%r15
	cmpl	$80, %r15d
	movq	%r10, %r14
	movq	%r11, %r13
	movq	%rsi, %rcx
	jl	.LBB7_3
# BB#4:                                 # %do.end.144
	movdqu	(%r12), %xmm0
	movd	%rsi, %xmm1
	movd	%rbx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, (%r12)
	addq	%r11, 16(%r12)
	movdqu	24(%r12), %xmm0
	movd	%rax, %xmm1
	movd	%r10, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, 24(%r12)
	addq	%r8, 40(%r12)
	addq	%rbp, 48(%r12)
	addq	%r9, 56(%r12)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pSHA512_Transform, .Lfunc_end7-pSHA512_Transform
	.cfi_endproc

	.globl	pSHA512_Update
	.align	16, 0x90
	.type	pSHA512_Update,@function
pSHA512_Update:                         # @pSHA512_Update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r15, %r15
	je	.LBB8_18
# BB#1:                                 # %if.end
	movl	64(%r14), %eax
	shrl	$3, %eax
	andl	$127, %eax
	je	.LBB8_2
# BB#4:                                 # %if.then.3
	movl	$128, %r12d
	subl	%eax, %r12d
	cmpq	%r15, %r12
	movl	%eax, %eax
	leaq	80(%r14,%rax), %rdi
	jbe	.LBB8_5
# BB#8:                                 # %if.else
	movq	%rbx, %rsi
	jmp	.LBB8_16
.LBB8_5:                                # %if.then.7
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	memcpy
	leal	(,%r12,8), %eax
	addq	64(%r14), %rax
	movq	%rax, 64(%r14)
	jae	.LBB8_7
# BB#6:                                 # %if.then.19
	incq	72(%r14)
.LBB8_7:                                # %if.end.22
	subq	%r12, %r15
	addq	%r12, %rbx
	leaq	80(%r14), %rsi
	movq	%r14, %rdi
	callq	pSHA512_Transform
.LBB8_2:                                # %while.cond.preheader
	cmpq	$128, %r15
	jb	.LBB8_3
# BB#9:                                 # %while.body.lr.ph
	leaq	-128(%r15), %r13
	movq	%r13, %rbp
	andq	$-128, %rbp
	leaq	128(%rbp,%rbx), %r12
	.align	16, 0x90
.LBB8_10:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pSHA512_Transform
	movq	64(%r14), %rax
	leaq	1024(%rax), %rcx
	movq	%rcx, 64(%r14)
	cmpq	$-1024, %rax            # imm = 0xFFFFFFFFFFFFFC00
	jb	.LBB8_12
# BB#11:                                # %if.then.55
                                        #   in Loop: Header=BB8_10 Depth=1
	incq	72(%r14)
.LBB8_12:                               # %if.end.59
                                        #   in Loop: Header=BB8_10 Depth=1
	addq	$-128, %r15
	subq	$-128, %rbx
	cmpq	$127, %r15
	ja	.LBB8_10
# BB#13:                                # %while.cond.while.end_crit_edge
	subq	%rbp, %r13
	movq	%r13, %r15
	jmp	.LBB8_14
.LBB8_3:
	movq	%rbx, %r12
.LBB8_14:                               # %while.end
	testq	%r15, %r15
	je	.LBB8_18
# BB#15:                                # %if.then.64
	leaq	80(%r14), %rdi
	movq	%r12, %rsi
.LBB8_16:                               # %if.then.64
	movq	%r15, %rdx
	callq	memcpy
	shlq	$3, %r15
	addq	64(%r14), %r15
	movq	%r15, 64(%r14)
	jae	.LBB8_18
# BB#17:                                # %if.then.77
	incq	72(%r14)
.LBB8_18:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pSHA512_Update, .Lfunc_end8-pSHA512_Update
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.quad	71777214294589695       # 0xff00ff00ff00ff
	.quad	71777214294589695       # 0xff00ff00ff00ff
.LCPI9_1:
	.quad	-71777214294589696      # 0xff00ff00ff00ff00
	.quad	-71777214294589696      # 0xff00ff00ff00ff00
.LCPI9_2:
	.quad	281470681808895         # 0xffff0000ffff
	.quad	281470681808895         # 0xffff0000ffff
.LCPI9_3:
	.quad	-281470681808896        # 0xffff0000ffff0000
	.quad	-281470681808896        # 0xffff0000ffff0000
	.text
	.globl	pSHA512_Last
	.align	16, 0x90
	.type	pSHA512_Last,@function
pSHA512_Last:                           # @pSHA512_Last
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 32
.Ltmp77:
	.cfi_offset %rbx, -24
.Ltmp78:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movdqu	64(%rbx), %xmm0
	movd	%xmm0, %edx
	shrl	$3, %edx
	andl	$127, %edx
	movdqa	%xmm0, %xmm1
	psrlq	$32, %xmm1
	psllq	$32, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrlq	$8, %xmm1
	pand	.LCPI9_0(%rip), %xmm1
	psllq	$8, %xmm0
	pand	.LCPI9_1(%rip), %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrlq	$16, %xmm1
	pand	.LCPI9_2(%rip), %xmm1
	psllq	$16, %xmm0
	pand	.LCPI9_3(%rip), %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 64(%rbx)
	je	.LBB9_6
# BB#1:                                 # %if.then
	leal	1(%rdx), %eax
	movl	%edx, %ecx
	movb	$-128, 80(%rbx,%rcx)
	cmpl	$112, %eax
	ja	.LBB9_3
# BB#2:                                 # %if.then.38
	movl	%eax, %eax
	leaq	80(%rbx,%rax), %rdi
	movl	$111, %eax
	subl	%edx, %eax
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.57
	leaq	80(%rbx), %rdi
	xorl	%esi, %esi
	movl	$112, %edx
	callq	memset
	movb	$-128, 80(%rbx)
	jmp	.LBB9_7
.LBB9_3:                                # %if.else
	leaq	80(%rbx), %r14
	cmpl	$127, %eax
	ja	.LBB9_5
# BB#4:                                 # %if.then.45
	movl	%eax, %eax
	leaq	80(%rbx,%rax), %rdi
	xorl	$127, %edx
	xorl	%esi, %esi
	callq	memset
.LBB9_5:                                # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pSHA512_Transform
	xorl	%esi, %esi
	movl	$126, %edx
	movq	%r14, %rdi
	callq	memset
.LBB9_7:                                # %if.end.63
	movq	72(%rbx), %rax
	movq	%rax, 192(%rbx)
	movq	64(%rbx), %rax
	movq	%rax, 200(%rbx)
	leaq	80(%rbx), %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pSHA512_Transform       # TAILCALL
.Lfunc_end9:
	.size	pSHA512_Last, .Lfunc_end9-pSHA512_Last
	.cfi_endproc

	.globl	pSHA512_Final
	.align	16, 0x90
	.type	pSHA512_Final,@function
pSHA512_Final:                          # @pSHA512_Final
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 32
.Ltmp82:
	.cfi_offset %rbx, -24
.Ltmp83:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	pSHA512_Last
	movq	(%rbx), %rdi
	rolq	$32, %rdi
	movq	%rdi, %rdx
	shrq	$8, %rdx
	movabsq	$71777214294589695, %r8 # imm = 0xFF00FF00FF00FF
	andq	%r8, %rdx
	shlq	$8, %rdi
	movabsq	$-71777214294589696, %rcx # imm = 0xFF00FF00FF00FF00
	andq	%rcx, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	shrq	$16, %rax
	movabsq	$281470681808895, %rdx  # imm = 0xFFFF0000FFFF
	andq	%rdx, %rax
	shlq	$16, %rdi
	movabsq	$-281470681808896, %rsi # imm = 0xFFFF0000FFFF0000
	andq	%rsi, %rdi
	orq	%rax, %rdi
	movq	%rdi, (%rbx)
	movq	%rdi, (%r14)
	movq	8(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 8(%rbx)
	movq	%rax, 8(%r14)
	movq	16(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 16(%rbx)
	movq	%rax, 16(%r14)
	movq	24(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 24(%rbx)
	movq	%rax, 24(%r14)
	movq	32(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 32(%rbx)
	movq	%rax, 32(%r14)
	movq	40(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 40(%rbx)
	movq	%rax, 40(%r14)
	movq	48(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 48(%rbx)
	movq	%rax, 48(%r14)
	movq	56(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	andq	%rdx, %rcx
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rcx, %rax
	movq	%rax, 56(%rbx)
	movq	%rax, 56(%r14)
.LBB10_2:                               # %if.end
	xorl	%esi, %esi
	movl	$208, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	memset                  # TAILCALL
.Lfunc_end10:
	.size	pSHA512_Final, .Lfunc_end10-pSHA512_Final
	.cfi_endproc

	.globl	pSHA512_End
	.align	16, 0x90
	.type	pSHA512_End,@function
pSHA512_End:                            # @pSHA512_End
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 96
.Ltmp87:
	.cfi_offset %rbx, -24
.Ltmp88:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rax
	testq	%r14, %r14
	je	.LBB11_4
# BB#1:                                 # %if.then
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	pSHA512_Final
	leaq	64(%rsp), %rdi
	movq	%r14, %rcx
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	movb	.L.str(%rsi), %al
	movb	%al, (%rcx)
	andl	$15, %edx
	movb	.L.str(%rdx), %al
	movb	%al, 1(%rcx)
	movzbl	1(%rbx), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	.L.str(%rdx), %dl
	movb	%dl, 2(%rcx)
	andl	$15, %eax
	movb	.L.str(%rax), %al
	movb	%al, 3(%rcx)
	addq	$2, %rbx
	addq	$4, %rcx
	cmpq	%rdi, %rbx
	jne	.LBB11_2
# BB#3:                                 # %for.end
	movb	$0, 128(%r14)
	subq	$-128, %r14
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$208, %edx
	movq	%rax, %rdi
	callq	memset
.LBB11_5:                               # %if.end
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movq	%r14, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	pSHA512_End, .Lfunc_end11-pSHA512_End
	.cfi_endproc

	.globl	pSHA512_Data
	.align	16, 0x90
	.type	pSHA512_Data,@function
pSHA512_Data:                           # @pSHA512_Data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 40
	subq	$280, %rsp              # imm = 0x118
.Ltmp93:
	.cfi_def_cfa_offset 320
.Ltmp94:
	.cfi_offset %rbx, -40
.Ltmp95:
	.cfi_offset %r12, -32
.Ltmp96:
	.cfi_offset %r14, -24
.Ltmp97:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	(%rsp), %r12
	movl	$sha512_initial_hash_value, %esi
	movl	$64, %edx
	movq	%r12, %rdi
	callq	memcpy
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	pSHA512_Update
	testq	%r14, %r14
	je	.LBB12_4
# BB#1:                                 # %if.then.i
	leaq	208(%rsp), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pSHA512_Final
	leaq	272(%rsp), %rdi
	movq	%r14, %rcx
	.align	16, 0x90
.LBB12_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	movb	.L.str(%rsi), %al
	movb	%al, (%rcx)
	andl	$15, %edx
	movb	.L.str(%rdx), %al
	movb	%al, 1(%rcx)
	movzbl	1(%rbx), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	.L.str(%rdx), %dl
	movb	%dl, 2(%rcx)
	andl	$15, %eax
	movb	.L.str(%rax), %al
	movb	%al, 3(%rcx)
	addq	$2, %rbx
	addq	$4, %rcx
	cmpq	%rdi, %rbx
	jne	.LBB12_2
# BB#3:                                 # %for.end.i
	movb	$0, 128(%r14)
	subq	$-128, %r14
	jmp	.LBB12_5
.LBB12_4:                               # %if.else.i
	leaq	(%rsp), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$208, %edx
	callq	memset
.LBB12_5:                               # %pSHA512_End.exit
	leaq	208(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movq	%r14, %rax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	pSHA512_Data, .Lfunc_end12-pSHA512_Data
	.cfi_endproc

	.globl	pSHA384_Init
	.align	16, 0x90
	.type	pSHA384_Init,@function
pSHA384_Init:                           # @pSHA384_Init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB13_2
# BB#1:                                 # %if.end
	movl	$sha384_initial_hash_value, %esi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	memcpy
	leaq	80(%rbx), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rbx)
.LBB13_2:                               # %return
	popq	%rbx
	retq
.Lfunc_end13:
	.size	pSHA384_Init, .Lfunc_end13-pSHA384_Init
	.cfi_endproc

	.globl	pSHA384_Update
	.align	16, 0x90
	.type	pSHA384_Update,@function
pSHA384_Update:                         # @pSHA384_Update
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	pSHA512_Update          # TAILCALL
.Lfunc_end14:
	.size	pSHA384_Update, .Lfunc_end14-pSHA384_Update
	.cfi_endproc

	.globl	pSHA384_Final
	.align	16, 0x90
	.type	pSHA384_Final,@function
pSHA384_Final:                          # @pSHA384_Final
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp102:
	.cfi_def_cfa_offset 32
.Ltmp103:
	.cfi_offset %rbx, -24
.Ltmp104:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	pSHA512_Last
	movq	(%rbx), %rdi
	rolq	$32, %rdi
	movq	%rdi, %rdx
	shrq	$8, %rdx
	movabsq	$71777214294589695, %r8 # imm = 0xFF00FF00FF00FF
	andq	%r8, %rdx
	shlq	$8, %rdi
	movabsq	$-71777214294589696, %rcx # imm = 0xFF00FF00FF00FF00
	andq	%rcx, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	shrq	$16, %rax
	movabsq	$281470681808895, %rdx  # imm = 0xFFFF0000FFFF
	andq	%rdx, %rax
	shlq	$16, %rdi
	movabsq	$-281470681808896, %rsi # imm = 0xFFFF0000FFFF0000
	andq	%rsi, %rdi
	orq	%rax, %rdi
	movq	%rdi, (%rbx)
	movq	%rdi, (%r14)
	movq	8(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 8(%rbx)
	movq	%rax, 8(%r14)
	movq	16(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 16(%rbx)
	movq	%rax, 16(%r14)
	movq	24(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 24(%rbx)
	movq	%rax, 24(%r14)
	movq	32(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	%rdx, %rdi
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	movq	%rax, 32(%rbx)
	movq	%rax, 32(%r14)
	movq	40(%rbx), %rax
	rolq	$32, %rax
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	%r8, %rdi
	shlq	$8, %rax
	andq	%rcx, %rax
	orq	%rdi, %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	andq	%rdx, %rcx
	shlq	$16, %rax
	andq	%rsi, %rax
	orq	%rcx, %rax
	movq	%rax, 40(%rbx)
	movq	%rax, 40(%r14)
.LBB15_2:                               # %if.end
	xorl	%esi, %esi
	movl	$208, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	memset                  # TAILCALL
.Lfunc_end15:
	.size	pSHA384_Final, .Lfunc_end15-pSHA384_Final
	.cfi_endproc

	.globl	pSHA384_End
	.align	16, 0x90
	.type	pSHA384_End,@function
pSHA384_End:                            # @pSHA384_End
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp107:
	.cfi_def_cfa_offset 80
.Ltmp108:
	.cfi_offset %rbx, -24
.Ltmp109:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rax
	testq	%r14, %r14
	je	.LBB16_4
# BB#1:                                 # %if.then
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	pSHA384_Final
	leaq	48(%rsp), %rdi
	movq	%r14, %rcx
	.align	16, 0x90
.LBB16_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	movb	.L.str(%rsi), %al
	movb	%al, (%rcx)
	andl	$15, %edx
	movb	.L.str(%rdx), %al
	movb	%al, 1(%rcx)
	movzbl	1(%rbx), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	.L.str(%rdx), %dl
	movb	%dl, 2(%rcx)
	andl	$15, %eax
	movb	.L.str(%rax), %al
	movb	%al, 3(%rcx)
	addq	$2, %rbx
	addq	$4, %rcx
	cmpq	%rdi, %rbx
	jne	.LBB16_2
# BB#3:                                 # %for.end
	movb	$0, 96(%r14)
	addq	$96, %r14
	jmp	.LBB16_5
.LBB16_4:                               # %if.else
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$208, %edx
	movq	%rax, %rdi
	callq	memset
.LBB16_5:                               # %if.end
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset
	movq	%r14, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	pSHA384_End, .Lfunc_end16-pSHA384_End
	.cfi_endproc

	.globl	pSHA384_Data
	.align	16, 0x90
	.type	pSHA384_Data,@function
pSHA384_Data:                           # @pSHA384_Data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp114:
	.cfi_def_cfa_offset 304
.Ltmp115:
	.cfi_offset %rbx, -40
.Ltmp116:
	.cfi_offset %r12, -32
.Ltmp117:
	.cfi_offset %r14, -24
.Ltmp118:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	(%rsp), %r12
	movl	$sha384_initial_hash_value, %esi
	movl	$64, %edx
	movq	%r12, %rdi
	callq	memcpy
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	pSHA512_Update
	testq	%r14, %r14
	je	.LBB17_4
# BB#1:                                 # %if.then.i
	leaq	208(%rsp), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pSHA384_Final
	leaq	256(%rsp), %rdi
	movq	%r14, %rcx
	.align	16, 0x90
.LBB17_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	movb	.L.str(%rsi), %al
	movb	%al, (%rcx)
	andl	$15, %edx
	movb	.L.str(%rdx), %al
	movb	%al, 1(%rcx)
	movzbl	1(%rbx), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	.L.str(%rdx), %dl
	movb	%dl, 2(%rcx)
	andl	$15, %eax
	movb	.L.str(%rax), %al
	movb	%al, 3(%rcx)
	addq	$2, %rbx
	addq	$4, %rcx
	cmpq	%rdi, %rbx
	jne	.LBB17_2
# BB#3:                                 # %for.end.i
	movb	$0, 96(%r14)
	addq	$96, %r14
	jmp	.LBB17_5
.LBB17_4:                               # %if.else.i
	leaq	(%rsp), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$208, %edx
	callq	memset
.LBB17_5:                               # %pSHA384_End.exit
	leaq	208(%rsp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset
	movq	%r14, %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	pSHA384_Data, .Lfunc_end17-pSHA384_Data
	.cfi_endproc

	.type	sha256_initial_hash_value,@object # @sha256_initial_hash_value
	.section	.rodata,"a",@progbits
	.align	16
sha256_initial_hash_value:
	.long	1779033703              # 0x6a09e667
	.long	3144134277              # 0xbb67ae85
	.long	1013904242              # 0x3c6ef372
	.long	2773480762              # 0xa54ff53a
	.long	1359893119              # 0x510e527f
	.long	2600822924              # 0x9b05688c
	.long	528734635               # 0x1f83d9ab
	.long	1541459225              # 0x5be0cd19
	.size	sha256_initial_hash_value, 32

	.type	K256,@object            # @K256
	.align	16
K256:
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
	.size	K256, 256

	.type	sha512_initial_hash_value,@object # @sha512_initial_hash_value
	.align	16
sha512_initial_hash_value:
	.quad	7640891576956012808     # 0x6a09e667f3bcc908
	.quad	-4942790177534073029    # 0xbb67ae8584caa73b
	.quad	4354685564936845355     # 0x3c6ef372fe94f82b
	.quad	-6534734903238641935    # 0xa54ff53a5f1d36f1
	.quad	5840696475078001361     # 0x510e527fade682d1
	.quad	-7276294671716946913    # 0x9b05688c2b3e6c1f
	.quad	2270897969802886507     # 0x1f83d9abfb41bd6b
	.quad	6620516959819538809     # 0x5be0cd19137e2179
	.size	sha512_initial_hash_value, 64

	.type	K512,@object            # @K512
	.align	16
K512:
	.quad	4794697086780616226     # 0x428a2f98d728ae22
	.quad	8158064640168781261     # 0x7137449123ef65cd
	.quad	-5349999486874862801    # 0xb5c0fbcfec4d3b2f
	.quad	-1606136188198331460    # 0xe9b5dba58189dbbc
	.quad	4131703408338449720     # 0x3956c25bf348b538
	.quad	6480981068601479193     # 0x59f111f1b605d019
	.quad	-7908458776815382629    # 0x923f82a4af194f9b
	.quad	-6116909921290321640    # 0xab1c5ed5da6d8118
	.quad	-2880145864133508542    # 0xd807aa98a3030242
	.quad	1334009975649890238     # 0x12835b0145706fbe
	.quad	2608012711638119052     # 0x243185be4ee4b28c
	.quad	6128411473006802146     # 0x550c7dc3d5ffb4e2
	.quad	8268148722764581231     # 0x72be5d74f27b896f
	.quad	-9160688886553864527    # 0x80deb1fe3b1696b1
	.quad	-7215885187991268811    # 0x9bdc06a725c71235
	.quad	-4495734319001033068    # 0xc19bf174cf692694
	.quad	-1973867731355612462    # 0xe49b69c19ef14ad2
	.quad	-1171420211273849373    # 0xefbe4786384f25e3
	.quad	1135362057144423861     # 0xfc19dc68b8cd5b5
	.quad	2597628984639134821     # 0x240ca1cc77ac9c65
	.quad	3308224258029322869     # 0x2de92c6f592b0275
	.quad	5365058923640841347     # 0x4a7484aa6ea6e483
	.quad	6679025012923562964     # 0x5cb0a9dcbd41fbd4
	.quad	8573033837759648693     # 0x76f988da831153b5
	.quad	-7476448914759557205    # 0x983e5152ee66dfab
	.quad	-6327057829258317296    # 0xa831c66d2db43210
	.quad	-5763719355590565569    # 0xb00327c898fb213f
	.quad	-4658551843659510044    # 0xbf597fc7beef0ee4
	.quad	-4116276920077217854    # 0xc6e00bf33da88fc2
	.quad	-3051310485924567259    # 0xd5a79147930aa725
	.quad	489312712824947311      # 0x6ca6351e003826f
	.quad	1452737877330783856     # 0x142929670a0e6e70
	.quad	2861767655752347644     # 0x27b70a8546d22ffc
	.quad	3322285676063803686     # 0x2e1b21385c26c926
	.quad	5560940570517711597     # 0x4d2c6dfc5ac42aed
	.quad	5996557281743188959     # 0x53380d139d95b3df
	.quad	7280758554555802590     # 0x650a73548baf63de
	.quad	8532644243296465576     # 0x766a0abb3c77b2a8
	.quad	-9096487096722542874    # 0x81c2c92e47edaee6
	.quad	-7894198246740708037    # 0x92722c851482353b
	.quad	-6719396339535248540    # 0xa2bfe8a14cf10364
	.quad	-6333637450476146687    # 0xa81a664bbc423001
	.quad	-4446306890439682159    # 0xc24b8b70d0f89791
	.quad	-4076793802049405392    # 0xc76c51a30654be30
	.quad	-3345356375505022440    # 0xd192e819d6ef5218
	.quad	-2983346525034927856    # 0xd69906245565a910
	.quad	-860691631967231958     # 0xf40e35855771202a
	.quad	1182934255886127544     # 0x106aa07032bbd1b8
	.quad	1847814050463011016     # 0x19a4c116b8d2d0c8
	.quad	2177327727835720531     # 0x1e376c085141ab53
	.quad	2830643537854262169     # 0x2748774cdf8eeb99
	.quad	3796741975233480872     # 0x34b0bcb5e19b48a8
	.quad	4115178125766777443     # 0x391c0cb3c5c95a63
	.quad	5681478168544905931     # 0x4ed8aa4ae3418acb
	.quad	6601373596472566643     # 0x5b9cca4f7763e373
	.quad	7507060721942968483     # 0x682e6ff3d6b2b8a3
	.quad	8399075790359081724     # 0x748f82ee5defb2fc
	.quad	8693463985226723168     # 0x78a5636f43172f60
	.quad	-8878714635349349518    # 0x84c87814a1f0ab72
	.quad	-8302665154208450068    # 0x8cc702081a6439ec
	.quad	-8016688836872298968    # 0x90befffa23631e28
	.quad	-6606660893046293015    # 0xa4506cebde82bde9
	.quad	-4685533653050689259    # 0xbef9a3f7b2c67915
	.quad	-4147400797238176981    # 0xc67178f2e372532b
	.quad	-3880063495543823972    # 0xca273eceea26619c
	.quad	-3348786107499101689    # 0xd186b8c721c0c207
	.quad	-1523767162380948706    # 0xeada7dd6cde0eb1e
	.quad	-757361751448694408     # 0xf57d4f7fee6ed178
	.quad	500013540394364858      # 0x6f067aa72176fba
	.quad	748580250866718886      # 0xa637dc5a2c898a6
	.quad	1242879168328830382     # 0x113f9804bef90dae
	.quad	1977374033974150939     # 0x1b710b35131c471b
	.quad	2944078676154940804     # 0x28db77f523047d84
	.quad	3659926193048069267     # 0x32caab7b40c72493
	.quad	4368137639120453308     # 0x3c9ebe0a15c9bebc
	.quad	4836135668995329356     # 0x431d67c49c100d4c
	.quad	5532061633213252278     # 0x4cc5d4becb3e42b6
	.quad	6448918945643986474     # 0x597f299cfc657e2a
	.quad	6902733635092675308     # 0x5fcb6fab3ad6faec
	.quad	7801388544844847127     # 0x6c44198c4a475817
	.size	K512, 640

	.type	sha384_initial_hash_value,@object # @sha384_initial_hash_value
	.align	16
sha384_initial_hash_value:
	.quad	-3766243637369397544    # 0xcbbb9d5dc1059ed8
	.quad	7105036623409894663     # 0x629a292a367cd507
	.quad	-7973340178411365097    # 0x9159015a3070dd17
	.quad	1526699215303891257     # 0x152fecd8f70e5939
	.quad	7436329637833083697     # 0x67332667ffc00b31
	.quad	-8163818279084223215    # 0x8eb44a8768581511
	.quad	-2662702644619276377    # 0xdb0c2e0d64f98fa7
	.quad	5167115440072839076     # 0x47b5481dbefa4fa4
	.size	sha384_initial_hash_value, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
