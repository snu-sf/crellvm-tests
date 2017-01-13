	.text
	.file	"md5.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1732584193              # 0x67452301
	.long	4023233417              # 0xefcdab89
	.text
	.globl	gs_md5_init
	.align	16, 0x90
	.type	gs_md5_init,@function
gs_md5_init:                            # @gs_md5_init
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,0,1732584193,4023233417]
	movups	%xmm0, (%rdi)
	movabsq	$1167088121787636990, %rax # imm = 0x1032547698BADCFE
	movq	%rax, 16(%rdi)
	retq
.Lfunc_end0:
	.size	gs_md5_init, .Lfunc_end0-gs_md5_init
	.cfi_endproc

	.globl	gs_md5_append
	.align	16, 0x90
	.type	gs_md5_append,@function
gs_md5_append:                          # @gs_md5_append
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %r15
	testl	%r13d, %r13d
	jle	.LBB1_11
# BB#1:                                 # %if.end
	movl	(%r15), %ecx
	movl	%ecx, %ebx
	shrl	$3, %ebx
	andl	$63, %ebx
	leal	(,%r13,8), %edx
	movl	%r13d, %eax
	sarl	$29, %eax
	addl	4(%r15), %eax
	movl	%eax, 4(%r15)
	addl	%ecx, %edx
	movl	%edx, (%r15)
	jae	.LBB1_3
# BB#2:                                 # %if.then.10
	incl	%eax
	movl	%eax, 4(%r15)
.LBB1_3:                                # %if.end.13
	testl	%ebx, %ebx
	je	.LBB1_6
# BB#4:                                 # %if.then.14
	leal	(%rbx,%r13), %eax
	movl	$64, %ecx
	subl	%ebx, %ecx
	cmpl	$64, %eax
	cmovlel	%r13d, %ecx
	movl	%ebx, %eax
	leaq	24(%r15,%rax), %rdi
	movslq	%ecx, %r12
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	leal	(%rbx,%r12), %eax
	cmpl	$64, %eax
	jl	.LBB1_11
# BB#5:                                 # %cleanup.thread
	leaq	24(%r15), %rsi
	addq	%r12, %r14
	subl	%r12d, %r13d
	movq	%r15, %rdi
	callq	gs_md5_process
.LBB1_6:                                # %for.cond.preheader
	cmpl	$64, %r13d
	jl	.LBB1_10
# BB#7:                                 # %for.body.lr.ph
	leal	-64(%r13), %r12d
	movl	%r12d, %ebp
	shrl	$6, %ebp
	shll	$6, %ebp
	leaq	64(%rbp), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%r14, %rbx
	.align	16, 0x90
.LBB1_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gs_md5_process
	addq	$64, %rbx
	addl	$-64, %r13d
	cmpl	$63, %r13d
	jg	.LBB1_8
# BB#9:                                 # %for.cond.for.end_crit_edge
	subl	%ebp, %r12d
	addq	(%rsp), %r14            # 8-byte Folded Reload
	movl	%r12d, %r13d
.LBB1_10:                               # %for.end
	testl	%r13d, %r13d
	je	.LBB1_11
# BB#12:                                # %if.then.33
	addq	$24, %r15
	movslq	%r13d, %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB1_11:                               # %cleanup.39
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_md5_append, .Lfunc_end1-gs_md5_append
	.cfi_endproc

	.align	16, 0x90
	.type	gs_md5_process,@function
gs_md5_process:                         # @gs_md5_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 256
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	8(%rdi), %r12d
	movl	12(%rdi), %ebx
	movl	16(%rdi), %r15d
	movl	20(%rdi), %ebp
	testb	$3, %sil
	je	.LBB2_2
# BB#1:                                 # %if.else
	leaq	128(%rsp), %r14
	movl	$64, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	%r14, %rsi
.LBB2_2:                                # %if.end
	movl	%r15d, %eax
	andl	%ebx, %eax
	movl	%ebx, %ecx
	notl	%ecx
	andl	%ebp, %ecx
	orl	%eax, %ecx
	addl	%ecx, %r12d
	movl	(%rsi), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	4(%rsi), %edi
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	leal	-680876936(%rax,%r12), %ecx
	roll	$7, %ecx
	addl	%ebx, %ecx
	movl	%ecx, %eax
	andl	%ebx, %eax
	movl	%ecx, %edx
	notl	%edx
	andl	%r15d, %edx
	orl	%eax, %edx
	addl	%edi, %ebp
	leal	-389564586(%rdx,%rbp), %edx
	roll	$12, %edx
	addl	%ecx, %edx
	movl	%edx, %eax
	andl	%ecx, %eax
	movl	%edx, %edi
	notl	%edi
	andl	%ebx, %edi
	orl	%eax, %edi
	movl	8(%rsi), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addl	%eax, %r15d
	leal	606105819(%rdi,%r15), %ebp
	roll	$17, %ebp
	addl	%edx, %ebp
	movl	%ebp, %eax
	andl	%edx, %eax
	movl	%ebp, %edi
	notl	%edi
	andl	%ecx, %edi
	orl	%eax, %edi
	movl	12(%rsi), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	addl	%eax, %ebx
	leal	-1044525330(%rdi,%rbx), %r8d
	roll	$22, %r8d
	addl	%ebp, %r8d
	movl	%r8d, %edi
	andl	%ebp, %edi
	movl	%r8d, %eax
	notl	%eax
	andl	%edx, %eax
	orl	%edi, %eax
	movl	16(%rsi), %edi
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	leal	(%rcx,%rdi), %ecx
	leal	-176418897(%rax,%rcx), %ecx
	roll	$7, %ecx
	addl	%r8d, %ecx
	movl	%ecx, %eax
	andl	%r8d, %eax
	movl	%ecx, %edi
	notl	%edi
	andl	%ebp, %edi
	orl	%eax, %edi
	movl	20(%rsi), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	(%rdx,%rax), %eax
	leal	1200080426(%rdi,%rax), %edx
	roll	$12, %edx
	addl	%ecx, %edx
	movl	%edx, %eax
	andl	%ecx, %eax
	movl	%edx, %edi
	notl	%edi
	andl	%r8d, %edi
	orl	%eax, %edi
	movl	24(%rsi), %r11d
	movq	%r11, 32(%rsp)          # 8-byte Spill
	leal	(%rbp,%r11), %eax
	leal	-1473231341(%rdi,%rax), %r10d
	roll	$17, %r10d
	addl	%edx, %r10d
	movl	%r10d, %eax
	andl	%edx, %eax
	movl	%r10d, %edi
	notl	%edi
	andl	%ecx, %edi
	orl	%eax, %edi
	movl	28(%rsi), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	(%r8,%rax), %eax
	leal	-45705983(%rdi,%rax), %r8d
	roll	$22, %r8d
	addl	%r10d, %r8d
	movl	%r8d, %edi
	andl	%r10d, %edi
	movl	%r8d, %eax
	notl	%eax
	andl	%edx, %eax
	orl	%edi, %eax
	movl	32(%rsi), %edi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	leal	(%rcx,%rdi), %ecx
	leal	1770035416(%rax,%rcx), %ecx
	roll	$7, %ecx
	addl	%r8d, %ecx
	movl	%ecx, %eax
	andl	%r8d, %eax
	movl	%ecx, %edi
	notl	%edi
	andl	%r10d, %edi
	orl	%eax, %edi
	movl	36(%rsi), %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leal	(%rdx,%rax), %eax
	leal	-1958414417(%rdi,%rax), %r12d
	roll	$12, %r12d
	addl	%ecx, %r12d
	movl	%r12d, %eax
	andl	%ecx, %eax
	movl	%r12d, %edx
	notl	%edx
	andl	%r8d, %edx
	orl	%eax, %edx
	movl	40(%rsi), %r9d
	movq	%r9, 8(%rsp)            # 8-byte Spill
	leal	(%r10,%r9), %eax
	leal	-42063(%rdx,%rax), %ebx
	roll	$17, %ebx
	addl	%r12d, %ebx
	movl	%ebx, %eax
	andl	%r12d, %eax
	movl	%ebx, %edx
	notl	%edx
	andl	%ecx, %edx
	orl	%eax, %edx
	movl	44(%rsi), %edi
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	leal	(%r8,%rdi), %eax
	movq	%rdi, %rbp
	leal	-1990404162(%rdx,%rax), %r15d
	roll	$22, %r15d
	addl	%ebx, %r15d
	movl	%r15d, %eax
	andl	%ebx, %eax
	movl	%r15d, %edx
	notl	%edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	48(%rsi), %r10d
	leal	(%rcx,%r10), %eax
	leal	1804603682(%rdx,%rax), %r14d
	roll	$7, %r14d
	addl	%r15d, %r14d
	movl	%r14d, %eax
	andl	%r15d, %eax
	movl	%r14d, %ecx
	notl	%ecx
	andl	%ebx, %ecx
	orl	%eax, %ecx
	movl	52(%rsi), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	(%r12,%rax), %eax
	leal	-40341101(%rcx,%rax), %r12d
	roll	$12, %r12d
	addl	%r14d, %r12d
	movl	%r12d, %edi
	andl	%r14d, %edi
	movl	%r12d, %ecx
	notl	%ecx
	movl	%r15d, %eax
	andl	%ecx, %eax
	orl	%edi, %eax
	movl	56(%rsi), %edx
	movq	%rdx, (%rsp)            # 8-byte Spill
	leal	(%rbx,%rdx), %ebx
	movq	%rdx, %r8
	leal	-1502002290(%rax,%rbx), %eax
	roll	$17, %eax
	addl	%r12d, %eax
	movl	%eax, %ebx
	andl	%r12d, %ebx
	movl	%eax, %r13d
	notl	%r13d
	movl	%r14d, %edx
	andl	%r13d, %edx
	orl	%ebx, %edx
	movl	60(%rsi), %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	leal	(%r15,%rdi), %esi
	leal	1236535329(%rdx,%rsi), %r15d
	roll	$22, %r15d
	addl	%eax, %r15d
	movl	%r15d, %edx
	andl	%r12d, %edx
	andl	%eax, %ecx
	orl	%edx, %ecx
	movq	120(%rsp), %rdx         # 8-byte Reload
	leal	(%r14,%rdx), %edx
	leal	-165796510(%rcx,%rdx), %ecx
	roll	$5, %ecx
	addl	%r15d, %ecx
	movl	%ecx, %edx
	andl	%eax, %edx
	andl	%r15d, %r13d
	orl	%edx, %r13d
	leal	(%r12,%r11), %edx
	leal	-1069501632(%r13,%rdx), %r12d
	roll	$9, %r12d
	addl	%ecx, %r12d
	movl	%r12d, %edx
	andl	%r15d, %edx
	movl	%r15d, %esi
	notl	%esi
	andl	%ecx, %esi
	orl	%edx, %esi
	leal	(%rax,%rbp), %eax
	leal	643717713(%rsi,%rax), %esi
	roll	$14, %esi
	addl	%r12d, %esi
	movl	%esi, %eax
	andl	%ecx, %eax
	movl	%ecx, %edx
	notl	%edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	(%r15,%rax), %eax
	leal	-373897302(%rdx,%rax), %r15d
	roll	$20, %r15d
	addl	%esi, %r15d
	movl	%r15d, %eax
	andl	%r12d, %eax
	movl	%r12d, %edx
	notl	%edx
	andl	%esi, %edx
	orl	%eax, %edx
	movq	72(%rsp), %rbp          # 8-byte Reload
	leal	(%rcx,%rbp), %eax
	leal	-701558691(%rdx,%rax), %ecx
	roll	$5, %ecx
	addl	%r15d, %ecx
	movl	%ecx, %eax
	andl	%esi, %eax
	movl	%esi, %edx
	notl	%edx
	andl	%r15d, %edx
	orl	%eax, %edx
	leal	(%r12,%r9), %eax
	leal	38016083(%rdx,%rax), %r14d
	roll	$9, %r14d
	addl	%ecx, %r14d
	movl	%r14d, %edx
	andl	%r15d, %edx
	movl	%r15d, %eax
	notl	%eax
	andl	%ecx, %eax
	orl	%edx, %eax
	leal	(%rsi,%rdi), %edx
	leal	-660478335(%rax,%rdx), %esi
	roll	$14, %esi
	addl	%r14d, %esi
	movl	%esi, %eax
	andl	%ecx, %eax
	movl	%ecx, %edx
	notl	%edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movq	88(%rsp), %r13          # 8-byte Reload
	leal	(%r15,%r13), %eax
	leal	-405537848(%rdx,%rax), %r15d
	roll	$20, %r15d
	addl	%esi, %r15d
	movl	%r15d, %eax
	andl	%r14d, %eax
	movl	%r14d, %edx
	notl	%edx
	andl	%esi, %edx
	orl	%eax, %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax), %eax
	leal	568446438(%rdx,%rax), %ecx
	roll	$5, %ecx
	addl	%r15d, %ecx
	movl	%ecx, %eax
	andl	%esi, %eax
	movl	%esi, %edx
	notl	%edx
	andl	%r15d, %edx
	orl	%eax, %edx
	leal	(%r14,%r8), %eax
	movq	%r8, %r11
	leal	-1019803690(%rdx,%rax), %r12d
	roll	$9, %r12d
	addl	%ecx, %r12d
	movl	%r12d, %eax
	andl	%r15d, %eax
	movl	%r15d, %edx
	notl	%edx
	andl	%ecx, %edx
	orl	%eax, %edx
	movq	40(%rsp), %r8           # 8-byte Reload
	leal	(%rsi,%r8), %eax
	leal	-187363961(%rdx,%rax), %esi
	roll	$14, %esi
	addl	%r12d, %esi
	movl	%esi, %eax
	andl	%ecx, %eax
	movl	%ecx, %edx
	notl	%edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movq	80(%rsp), %rdi          # 8-byte Reload
	leal	(%r15,%rdi), %eax
	leal	1163531501(%rdx,%rax), %r15d
	roll	$20, %r15d
	addl	%esi, %r15d
	movl	%r15d, %eax
	andl	%r12d, %eax
	movl	%r12d, %edx
	notl	%edx
	andl	%esi, %edx
	orl	%eax, %edx
	movq	64(%rsp), %r9           # 8-byte Reload
	leal	(%rcx,%r9), %eax
	leal	-1444681467(%rdx,%rax), %eax
	roll	$5, %eax
	addl	%r15d, %eax
	movl	%eax, %ecx
	andl	%esi, %ecx
	movl	%esi, %edx
	notl	%edx
	andl	%r15d, %edx
	orl	%ecx, %edx
	movq	48(%rsp), %r14          # 8-byte Reload
	leal	(%r12,%r14), %ecx
	leal	-51403784(%rdx,%rcx), %r12d
	roll	$9, %r12d
	addl	%eax, %r12d
	movl	%r12d, %ecx
	andl	%r15d, %ecx
	movl	%r15d, %edx
	notl	%edx
	andl	%eax, %edx
	orl	%ecx, %edx
	movq	24(%rsp), %rbx          # 8-byte Reload
	leal	(%rsi,%rbx), %ecx
	leal	1735328473(%rdx,%rcx), %esi
	roll	$14, %esi
	addl	%r12d, %esi
	movl	%esi, %ecx
	andl	%eax, %ecx
	leal	(%rbp,%rax), %edx
	notl	%eax
	andl	%r12d, %eax
	orl	%ecx, %eax
	leal	(%r15,%r10), %ecx
	leal	-1926607734(%rax,%rcx), %ecx
	roll	$20, %ecx
	addl	%esi, %ecx
	movl	%esi, %eax
	xorl	%r12d, %eax
	xorl	%ecx, %eax
	leal	-378558(%rax,%rdx), %r15d
	movl	%ecx, %eax
	xorl	%esi, %eax
	roll	$4, %r15d
	addl	%ecx, %r15d
	xorl	%r15d, %eax
	leal	(%r12,%rdi), %edx
	leal	-2022574463(%rax,%rdx), %r12d
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	(%rsi,%rax), %eax
	roll	$11, %r12d
	addl	%r15d, %r12d
	movl	%r15d, %edx
	xorl	%ecx, %edx
	xorl	%r12d, %edx
	leal	1839030562(%rdx,%rax), %eax
	movl	%r12d, %edx
	xorl	%r15d, %edx
	roll	$16, %eax
	addl	%r12d, %eax
	xorl	%eax, %edx
	leal	(%rcx,%r11), %ecx
	leal	-35309556(%rdx,%rcx), %esi
	movq	120(%rsp), %rcx         # 8-byte Reload
	leal	(%r15,%rcx), %ecx
	roll	$23, %esi
	addl	%eax, %esi
	movl	%eax, %edx
	xorl	%r12d, %edx
	xorl	%esi, %edx
	leal	-1530992060(%rdx,%rcx), %ecx
	movl	%esi, %edx
	xorl	%eax, %edx
	roll	$4, %ecx
	addl	%esi, %ecx
	xorl	%ecx, %edx
	leal	(%r12,%r13), %ebp
	leal	1272893353(%rdx,%rbp), %r15d
	leal	(%rax,%rbx), %eax
	roll	$11, %r15d
	addl	%ecx, %r15d
	movl	%ecx, %edx
	xorl	%esi, %edx
	xorl	%r15d, %edx
	leal	-155497632(%rdx,%rax), %eax
	movl	%r15d, %edx
	xorl	%ecx, %edx
	roll	$16, %eax
	addl	%r15d, %eax
	xorl	%eax, %edx
	movq	8(%rsp), %r11           # 8-byte Reload
	leal	(%rsi,%r11), %esi
	leal	-1094730640(%rdx,%rsi), %esi
	leal	(%rcx,%r9), %ecx
	roll	$23, %esi
	addl	%eax, %esi
	movl	%eax, %edx
	xorl	%r15d, %edx
	xorl	%esi, %edx
	leal	681279174(%rdx,%rcx), %ecx
	movl	%esi, %edx
	xorl	%eax, %edx
	roll	$4, %ecx
	addl	%esi, %ecx
	xorl	%ecx, %edx
	movq	96(%rsp), %r9           # 8-byte Reload
	leal	(%r15,%r9), %ebp
	leal	-358537222(%rdx,%rbp), %r12d
	leal	(%rax,%r8), %eax
	movq	%r8, %r13
	roll	$11, %r12d
	addl	%ecx, %r12d
	movl	%ecx, %edx
	xorl	%esi, %edx
	xorl	%r12d, %edx
	leal	-722521979(%rdx,%rax), %eax
	movl	%r12d, %edx
	xorl	%ecx, %edx
	roll	$16, %eax
	addl	%r12d, %eax
	xorl	%eax, %edx
	movq	32(%rsp), %r8           # 8-byte Reload
	leal	(%rsi,%r8), %esi
	leal	76029189(%rdx,%rsi), %r15d
	movq	112(%rsp), %rdx         # 8-byte Reload
	leal	(%rcx,%rdx), %ecx
	roll	$23, %r15d
	addl	%eax, %r15d
	movl	%eax, %edx
	xorl	%r12d, %edx
	xorl	%r15d, %edx
	leal	-640364487(%rdx,%rcx), %ecx
	movl	%r15d, %edx
	xorl	%eax, %edx
	roll	$4, %ecx
	addl	%r15d, %ecx
	xorl	%ecx, %edx
	movq	%r10, %rdi
	leal	(%r12,%rdi), %esi
	leal	-421815835(%rdx,%rsi), %esi
	movq	16(%rsp), %r10          # 8-byte Reload
	leal	(%rax,%r10), %eax
	roll	$11, %esi
	addl	%ecx, %esi
	movl	%ecx, %edx
	xorl	%r15d, %edx
	xorl	%esi, %edx
	leal	530742520(%rdx,%rax), %eax
	roll	$16, %eax
	addl	%esi, %eax
	movl	%esi, %edx
	xorl	%ecx, %edx
	xorl	%eax, %edx
	leal	(%r15,%r14), %ebp
	leal	-995338651(%rdx,%rbp), %r15d
	addl	%r9d, %ecx
	roll	$23, %r15d
	addl	%eax, %r15d
	movl	%esi, %edx
	notl	%edx
	orl	%r15d, %edx
	xorl	%eax, %edx
	leal	-198630844(%rdx,%rcx), %ecx
	addl	%ebx, %esi
	roll	$6, %ecx
	addl	%r15d, %ecx
	movl	%eax, %edx
	notl	%edx
	orl	%ecx, %edx
	xorl	%r15d, %edx
	leal	1126891415(%rdx,%rsi), %esi
	movq	(%rsp), %rdx            # 8-byte Reload
	addl	%edx, %eax
	roll	$10, %esi
	addl	%ecx, %esi
	movl	%r15d, %edx
	notl	%edx
	orl	%esi, %edx
	xorl	%ecx, %edx
	leal	-1416354905(%rdx,%rax), %eax
	movq	72(%rsp), %rdx          # 8-byte Reload
	addl	%edx, %r15d
	roll	$15, %eax
	addl	%esi, %eax
	movl	%ecx, %edx
	notl	%edx
	orl	%eax, %edx
	xorl	%esi, %edx
	leal	-57434055(%rdx,%r15), %edx
	addl	%edi, %ecx
	roll	$21, %edx
	addl	%eax, %edx
	movl	%esi, %edi
	notl	%edi
	orl	%edx, %edi
	xorl	%eax, %edi
	leal	1700485571(%rdi,%rcx), %edi
	addl	%r13d, %esi
	roll	$6, %edi
	addl	%edx, %edi
	movl	%eax, %ecx
	notl	%ecx
	orl	%edi, %ecx
	xorl	%edx, %ecx
	leal	-1894986606(%rcx,%rsi), %esi
	roll	$10, %esi
	addl	%edi, %esi
	addl	%r11d, %eax
	movl	%edx, %ecx
	notl	%ecx
	orl	%esi, %ecx
	xorl	%edi, %ecx
	leal	-1051523(%rcx,%rax), %eax
	roll	$15, %eax
	addl	%esi, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %edx
	movl	%edi, %ecx
	notl	%ecx
	orl	%eax, %ecx
	xorl	%esi, %ecx
	leal	-2054922799(%rcx,%rdx), %ecx
	roll	$21, %ecx
	addl	%eax, %ecx
	movq	80(%rsp), %rdx          # 8-byte Reload
	addl	%edx, %edi
	movl	%esi, %edx
	notl	%edx
	orl	%ecx, %edx
	xorl	%eax, %edx
	leal	1873313359(%rdx,%rdi), %edx
	roll	$6, %edx
	addl	%ecx, %edx
	addl	%r10d, %esi
	movl	%eax, %edi
	notl	%edi
	orl	%edx, %edi
	xorl	%ecx, %edi
	leal	-30611744(%rdi,%rsi), %esi
	roll	$10, %esi
	addl	%edx, %esi
	addl	%r8d, %eax
	movl	%ecx, %edi
	notl	%edi
	orl	%esi, %edi
	xorl	%edx, %edi
	leal	-1560198380(%rdi,%rax), %edi
	roll	$15, %edi
	addl	%esi, %edi
	movq	64(%rsp), %rax          # 8-byte Reload
	addl	%eax, %ecx
	movl	%edx, %eax
	notl	%eax
	orl	%edi, %eax
	xorl	%esi, %eax
	leal	1309151649(%rax,%rcx), %eax
	roll	$21, %eax
	addl	%edi, %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %edx
	movl	%esi, %ecx
	notl	%ecx
	orl	%eax, %ecx
	xorl	%edi, %ecx
	leal	-145523070(%rcx,%rdx), %ecx
	roll	$6, %ecx
	addl	%eax, %ecx
	movq	104(%rsp), %rdx         # 8-byte Reload
	addl	%edx, %esi
	movl	%edi, %edx
	notl	%edx
	orl	%ecx, %edx
	xorl	%eax, %edx
	leal	-1120210379(%rdx,%rsi), %edx
	roll	$10, %edx
	addl	%ecx, %edx
	addl	%r14d, %edi
	movl	%eax, %esi
	notl	%esi
	orl	%edx, %esi
	xorl	%ecx, %esi
	leal	718787259(%rsi,%rdi), %esi
	movq	112(%rsp), %rdi         # 8-byte Reload
	addl	%edi, %eax
	roll	$15, %esi
	addl	%edx, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	addl	%ecx, 8(%rdi)
	notl	%ecx
	orl	%esi, %ecx
	xorl	%edx, %ecx
	leal	-343485551(%rcx,%rax), %eax
	roll	$21, %eax
	movl	12(%rdi), %ecx
	addl	%esi, %ecx
	addl	%eax, %ecx
	movl	%ecx, 12(%rdi)
	addl	%esi, 16(%rdi)
	addl	%edx, 20(%rdi)
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_md5_process, .Lfunc_end2-gs_md5_process
	.cfi_endproc

	.globl	gs_md5_finish
	.align	16, 0x90
	.type	gs_md5_finish,@function
gs_md5_finish:                          # @gs_md5_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 48
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	(%r15), %eax
	movb	%al, 8(%rsp)
	movb	%ah, 9(%rsp)  # NOREX
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 10(%rsp)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 11(%rsp)
	movl	4(%r15), %ecx
	movb	%cl, 12(%rsp)
	movb	%ch, 13(%rsp)  # NOREX
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 14(%rsp)
	shrl	$24, %ecx
	movb	%cl, 15(%rsp)
	shrl	$3, %eax
	movl	$55, %edx
	subl	%eax, %edx
	andl	$63, %edx
	incl	%edx
	movl	$gs_md5_finish.pad, %esi
	callq	gs_md5_append
	leaq	8(%rsp), %rsi
	movl	$8, %ebx
	movl	$8, %edx
	movq	%r15, %rdi
	callq	gs_md5_append
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_1:                                # %for.body.11
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rdx
	movl	8(%r15,%rdx,4), %esi
	leal	-8(%rbx), %ecx
	andb	$16, %cl
	shrl	%cl, %esi
	movb	%sil, (%r14,%rax)
	movl	8(%r15,%rdx,4), %edx
	movb	%bl, %cl
	andb	$24, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%r14,%rax)
	addq	$2, %rax
	addl	$16, %ebx
	cmpq	$16, %rax
	jne	.LBB3_1
# BB#2:                                 # %for.end.23
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gs_md5_finish, .Lfunc_end3-gs_md5_finish
	.cfi_endproc

	.type	gs_md5_finish.pad,@object # @gs_md5_finish.pad
	.section	.rodata,"a",@progbits
	.align	16
gs_md5_finish.pad:
	.asciz	"\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	gs_md5_finish.pad, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
