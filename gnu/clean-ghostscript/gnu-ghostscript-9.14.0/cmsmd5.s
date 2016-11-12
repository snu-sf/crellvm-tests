	.text
	.file	"cmsmd5.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1732584193              # 0x67452301
	.long	4023233417              # 0xefcdab89
	.long	2562383102              # 0x98badcfe
	.long	271733878               # 0x10325476
	.text
	.globl	cmsMD5computeID
	.align	16, 0x90
	.type	cmsMD5computeID,@function
cmsMD5computeID:                        # @cmsMD5computeID
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
	subq	$3800, %rsp             # imm = 0xED8
.Ltmp6:
	.cfi_def_cfa_offset 3856
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
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#1:                                 # %cond.end
	movq	%rbx, %rdi
	callq	cmsGetProfileContextID
	movq	%rax, %r13
	leaq	40(%rsp), %rdi
	movl	$3752, %edx             # imm = 0xEA8
	movq	%rbx, %rsi
	callq	memmove
	leaq	104(%rbx), %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset
	movl	$0, 88(%rbx)
	leaq	116(%rbx), %rbp
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%rbp, %rdi
	callq	memset
	leaq	3796(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmsSaveProfileToMem
	testl	%eax, %eax
	je	.LBB0_15
# BB#2:                                 # %if.end
	movl	3796(%rsp), %esi
	movq	%r13, %rdi
	callq	_cmsMalloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB0_15
# BB#3:                                 # %if.end.8
	leaq	3796(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cmsSaveProfileToMem
	testl	%eax, %eax
	je	.LBB0_14
# BB#4:                                 # %if.end.12
	movl	$96, %esi
	movq	%r13, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_14
# BB#5:                                 # %while.cond.preheader.i
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r13, 88(%r15)
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	movl	3796(%rsp), %r12d
	leal	(,%r12,8), %eax
	movl	%eax, 16(%r15)
	movl	%r12d, %eax
	shrl	$29, %eax
	movl	%eax, 20(%r15)
	movq	%r15, %r13
	addq	$24, %r13
	cmpl	$64, %r12d
	jb	.LBB0_6
# BB#7:                                 # %while.body.lr.ph.i
	leal	-64(%r12), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	shrl	$6, %eax
	shll	$6, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r14, %rbp
	.align	16, 0x90
.LBB0_8:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	memmove
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	MD5_Transform
	addq	$64, %rbp
	addl	$-64, %r12d
	cmpl	$63, %r12d
	ja	.LBB0_8
# BB#9:                                 # %while.cond.while.end_crit_edge.i
	movl	20(%rsp), %eax          # 4-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	subl	%ecx, %eax
	leaq	64(%rcx,%r14), %rsi
	movl	%eax, %r12d
	jmp	.LBB0_10
.LBB0_14:                               # %if.then.20
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_cmsFree
.LBB0_15:                               # %if.end.21
	leaq	40(%rsp), %rsi
	movl	$3752, %edx             # imm = 0xEA8
	movq	%rbx, %rdi
	callq	memmove
.LBB0_16:                               # %cleanup
	movl	%r12d, %eax
	addq	$3800, %rsp             # imm = 0xED8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_6:
	movq	%r14, %rsi
.LBB0_10:                               # %MD5add.exit
	movl	%r12d, %edx
	movq	%r13, %rdi
	callq	memmove
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	_cmsFree
	leaq	40(%rsp), %rsi
	movl	$3752, %edx             # imm = 0xEA8
	movq	%rbx, %rdi
	callq	memmove
	movl	16(%r15), %edx
	shrl	$3, %edx
	andl	$63, %edx
	leaq	1(%r13,%rdx), %rdi
	movb	$-128, 24(%r15,%rdx)
	xorl	$63, %edx
	cmpl	$7, %edx
	ja	.LBB0_12
# BB#11:                                # %if.then.i.40
	movl	%edx, %edx
	xorl	%esi, %esi
	callq	memset
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	MD5_Transform
	xorl	%esi, %esi
	movl	$56, %edx
	movq	%r13, %rdi
	jmp	.LBB0_13
.LBB0_12:                               # %if.else.i
	addl	$-8, %edx
	xorl	%esi, %esi
.LBB0_13:                               # %MD5finish.exit
	callq	memset
	movq	32(%rsp), %rbx          # 8-byte Reload
	movl	16(%r15), %eax
	movl	%eax, 80(%r15)
	movl	20(%r15), %eax
	movl	%eax, 84(%r15)
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	MD5_Transform
	movl	$16, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memmove
	movq	88(%r15), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	movl	$1, %r12d
	jmp	.LBB0_16
.LBB0_17:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$270, %edx              # imm = 0x10E
	movl	$.L__PRETTY_FUNCTION__.cmsMD5computeID, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	cmsMD5computeID, .Lfunc_end0-cmsMD5computeID
	.cfi_endproc

	.align	16, 0x90
	.type	MD5_Transform,@function
MD5_Transform:                          # @MD5_Transform
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
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsi, %r8
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	movl	(%rdi), %ebp
	movq	%rbp, -64(%rsp)         # 8-byte Spill
	movl	4(%rdi), %eax
	movl	8(%rdi), %edx
	movl	12(%rdi), %esi
	movl	%esi, %ecx
	xorl	%edx, %ecx
	andl	%eax, %ecx
	xorl	%esi, %ecx
	movl	(%r8), %ebx
	movq	%rbx, -8(%rsp)          # 8-byte Spill
	movl	4(%r8), %r10d
	movq	%r10, -24(%rsp)         # 8-byte Spill
	leal	(%rbp,%rbx), %edi
	leal	-680876936(%rcx,%rdi), %ecx
	roll	$7, %ecx
	addl	%eax, %ecx
	movl	%edx, %edi
	xorl	%eax, %edi
	andl	%ecx, %edi
	xorl	%edx, %edi
	addl	%r10d, %esi
	leal	-389564586(%rdi,%rsi), %esi
	roll	$12, %esi
	addl	%ecx, %esi
	movl	%ecx, %edi
	xorl	%eax, %edi
	andl	%esi, %edi
	xorl	%eax, %edi
	movl	8(%r8), %ebp
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	addl	%ebp, %edx
	leal	606105819(%rdi,%rdx), %edx
	roll	$17, %edx
	addl	%esi, %edx
	movl	%esi, %edi
	xorl	%ecx, %edi
	andl	%edx, %edi
	xorl	%ecx, %edi
	movl	12(%r8), %ebp
	movq	%rbp, -88(%rsp)         # 8-byte Spill
	addl	%ebp, %eax
	leal	-1044525330(%rdi,%rax), %eax
	roll	$22, %eax
	addl	%edx, %eax
	movl	%edx, %edi
	xorl	%esi, %edi
	andl	%eax, %edi
	xorl	%esi, %edi
	movl	16(%r8), %ebp
	movq	%rbp, -112(%rsp)        # 8-byte Spill
	leal	(%rcx,%rbp), %ecx
	movq	%rbp, %r12
	leal	-176418897(%rdi,%rcx), %ecx
	roll	$7, %ecx
	addl	%eax, %ecx
	movl	%eax, %edi
	xorl	%edx, %edi
	andl	%ecx, %edi
	xorl	%edx, %edi
	movl	20(%r8), %ebp
	movq	%rbp, -56(%rsp)         # 8-byte Spill
	leal	(%rsi,%rbp), %esi
	leal	1200080426(%rdi,%rsi), %ebx
	roll	$12, %ebx
	addl	%ecx, %ebx
	movl	%ecx, %esi
	xorl	%eax, %esi
	andl	%ebx, %esi
	xorl	%eax, %esi
	movl	24(%r8), %r9d
	movq	%r9, -80(%rsp)          # 8-byte Spill
	leal	(%rdx,%r9), %edx
	leal	-1473231341(%rsi,%rdx), %r13d
	roll	$17, %r13d
	addl	%ebx, %r13d
	movl	%ebx, %edx
	xorl	%ecx, %edx
	andl	%r13d, %edx
	xorl	%ecx, %edx
	movl	28(%r8), %esi
	movq	%rsi, -96(%rsp)         # 8-byte Spill
	leal	(%rax,%rsi), %eax
	leal	-45705983(%rdx,%rax), %eax
	roll	$22, %eax
	addl	%r13d, %eax
	movl	%r13d, %edx
	xorl	%ebx, %edx
	andl	%eax, %edx
	xorl	%ebx, %edx
	movl	32(%r8), %esi
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	leal	(%rcx,%rsi), %ecx
	leal	1770035416(%rdx,%rcx), %ecx
	roll	$7, %ecx
	addl	%eax, %ecx
	movl	%eax, %edx
	xorl	%r13d, %edx
	andl	%ecx, %edx
	xorl	%r13d, %edx
	movl	36(%r8), %r15d
	movq	%r15, -48(%rsp)         # 8-byte Spill
	leal	(%rbx,%r15), %esi
	leal	-1958414417(%rdx,%rsi), %edx
	roll	$12, %edx
	addl	%ecx, %edx
	movl	%ecx, %esi
	xorl	%eax, %esi
	andl	%edx, %esi
	xorl	%eax, %esi
	movl	40(%r8), %ebp
	movq	%rbp, -120(%rsp)        # 8-byte Spill
	leal	(%r13,%rbp), %edi
	movq	%rbp, %r11
	leal	-42063(%rsi,%rdi), %esi
	roll	$17, %esi
	addl	%edx, %esi
	movl	%edx, %edi
	xorl	%ecx, %edi
	andl	%esi, %edi
	xorl	%ecx, %edi
	movl	44(%r8), %ebx
	movq	%rbx, -32(%rsp)         # 8-byte Spill
	leal	(%rax,%rbx), %eax
	leal	-1990404162(%rdi,%rax), %edi
	roll	$22, %edi
	addl	%esi, %edi
	movl	%esi, %eax
	xorl	%edx, %eax
	andl	%edi, %eax
	xorl	%edx, %eax
	movl	48(%r8), %r13d
	leal	(%rcx,%r13), %ecx
	leal	1804603682(%rax,%rcx), %eax
	roll	$7, %eax
	addl	%edi, %eax
	movl	%edi, %ecx
	xorl	%esi, %ecx
	andl	%eax, %ecx
	xorl	%esi, %ecx
	movl	52(%r8), %ebp
	leal	(%rdx,%rbp), %edx
	leal	-40341101(%rcx,%rdx), %ecx
	roll	$12, %ecx
	addl	%eax, %ecx
	movl	%eax, %edx
	xorl	%edi, %edx
	andl	%ecx, %edx
	xorl	%edi, %edx
	movl	56(%r8), %r14d
	movq	%r14, -128(%rsp)        # 8-byte Spill
	leal	(%rsi,%r14), %esi
	leal	-1502002290(%rdx,%rsi), %esi
	roll	$17, %esi
	addl	%ecx, %esi
	movl	%ecx, %edx
	xorl	%eax, %edx
	andl	%esi, %edx
	xorl	%eax, %edx
	movl	60(%r8), %r8d
	movq	%r8, -104(%rsp)         # 8-byte Spill
	leal	(%rdi,%r8), %edi
	leal	1236535329(%rdx,%rdi), %edi
	roll	$22, %edi
	addl	%esi, %edi
	movl	%edi, %edx
	xorl	%esi, %edx
	andl	%ecx, %edx
	xorl	%esi, %edx
	leal	(%rax,%r10), %eax
	leal	-165796510(%rdx,%rax), %eax
	roll	$5, %eax
	addl	%edi, %eax
	movl	%eax, %edx
	xorl	%edi, %edx
	andl	%esi, %edx
	xorl	%edi, %edx
	leal	(%rcx,%r9), %ecx
	leal	-1069501632(%rdx,%rcx), %ecx
	roll	$9, %ecx
	addl	%eax, %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	andl	%edi, %edx
	xorl	%eax, %edx
	leal	(%rsi,%rbx), %esi
	leal	643717713(%rdx,%rsi), %esi
	roll	$14, %esi
	addl	%ecx, %esi
	movl	%esi, %edx
	xorl	%ecx, %edx
	andl	%eax, %edx
	xorl	%ecx, %edx
	movq	-8(%rsp), %rbx          # 8-byte Reload
	leal	(%rdi,%rbx), %edi
	leal	-373897302(%rdx,%rdi), %edi
	roll	$20, %edi
	addl	%esi, %edi
	movl	%edi, %edx
	xorl	%esi, %edx
	andl	%ecx, %edx
	xorl	%esi, %edx
	movq	-56(%rsp), %r10         # 8-byte Reload
	leal	(%rax,%r10), %eax
	leal	-701558691(%rdx,%rax), %eax
	roll	$5, %eax
	addl	%edi, %eax
	movl	%eax, %edx
	xorl	%edi, %edx
	andl	%esi, %edx
	xorl	%edi, %edx
	leal	(%rcx,%r11), %ecx
	leal	38016083(%rdx,%rcx), %ecx
	roll	$9, %ecx
	addl	%eax, %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	andl	%edi, %edx
	xorl	%eax, %edx
	leal	(%rsi,%r8), %esi
	leal	-660478335(%rdx,%rsi), %esi
	roll	$14, %esi
	addl	%ecx, %esi
	movl	%esi, %edx
	xorl	%ecx, %edx
	andl	%eax, %edx
	xorl	%ecx, %edx
	movq	%r12, %r11
	leal	(%rdi,%r11), %edi
	leal	-405537848(%rdx,%rdi), %edi
	roll	$20, %edi
	addl	%esi, %edi
	movl	%edi, %edx
	xorl	%esi, %edx
	andl	%ecx, %edx
	xorl	%esi, %edx
	leal	(%rax,%r15), %eax
	leal	568446438(%rdx,%rax), %eax
	roll	$5, %eax
	addl	%edi, %eax
	movl	%eax, %edx
	xorl	%edi, %edx
	andl	%esi, %edx
	xorl	%edi, %edx
	leal	(%rcx,%r14), %ecx
	leal	-1019803690(%rdx,%rcx), %ecx
	roll	$9, %ecx
	addl	%eax, %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	andl	%edi, %edx
	xorl	%eax, %edx
	movq	-88(%rsp), %r12         # 8-byte Reload
	leal	(%rsi,%r12), %esi
	leal	-187363961(%rdx,%rsi), %esi
	roll	$14, %esi
	addl	%ecx, %esi
	movl	%esi, %edx
	xorl	%ecx, %edx
	andl	%eax, %edx
	xorl	%ecx, %edx
	movq	-40(%rsp), %r15         # 8-byte Reload
	leal	(%rdi,%r15), %edi
	leal	1163531501(%rdx,%rdi), %edi
	roll	$20, %edi
	addl	%esi, %edi
	movl	%edi, %edx
	xorl	%esi, %edx
	andl	%ecx, %edx
	xorl	%esi, %edx
	leal	(%rax,%rbp), %eax
	leal	-1444681467(%rdx,%rax), %eax
	roll	$5, %eax
	addl	%edi, %eax
	movl	%eax, %edx
	xorl	%edi, %edx
	andl	%esi, %edx
	xorl	%edi, %edx
	movq	-16(%rsp), %rbx         # 8-byte Reload
	leal	(%rcx,%rbx), %ecx
	leal	-51403784(%rdx,%rcx), %ecx
	roll	$9, %ecx
	addl	%eax, %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	andl	%edi, %edx
	xorl	%eax, %edx
	movq	-96(%rsp), %r9          # 8-byte Reload
	leal	(%rsi,%r9), %esi
	leal	1735328473(%rdx,%rsi), %r8d
	roll	$14, %r8d
	addl	%ecx, %r8d
	movl	%r8d, %esi
	xorl	%ecx, %esi
	movl	%esi, %edx
	andl	%eax, %edx
	xorl	%ecx, %edx
	leal	(%rdi,%r13), %edi
	leal	-1926607734(%rdx,%rdi), %edx
	roll	$20, %edx
	addl	%r8d, %edx
	xorl	%edx, %esi
	leal	(%rax,%r10), %eax
	leal	-378558(%rsi,%rax), %eax
	roll	$4, %eax
	addl	%edx, %eax
	movl	%edx, %esi
	xorl	%r8d, %esi
	xorl	%eax, %esi
	leal	(%rcx,%r15), %ecx
	leal	-2022574463(%rsi,%rcx), %ecx
	movl	%eax, %esi
	xorl	%edx, %esi
	roll	$11, %ecx
	addl	%eax, %ecx
	xorl	%ecx, %esi
	movq	-32(%rsp), %rdi         # 8-byte Reload
	leal	(%r8,%rdi), %edi
	leal	1839030562(%rsi,%rdi), %esi
	leal	(%rdx,%r14), %edx
	roll	$16, %esi
	addl	%ecx, %esi
	movl	%ecx, %edi
	xorl	%eax, %edi
	xorl	%esi, %edi
	leal	-35309556(%rdi,%rdx), %edi
	movl	%esi, %edx
	xorl	%ecx, %edx
	roll	$23, %edi
	addl	%esi, %edi
	xorl	%edi, %edx
	movq	-24(%rsp), %rbx         # 8-byte Reload
	leal	(%rax,%rbx), %eax
	leal	-1530992060(%rdx,%rax), %edx
	leal	(%rcx,%r11), %eax
	roll	$4, %edx
	addl	%edi, %edx
	movl	%edi, %ecx
	xorl	%esi, %ecx
	xorl	%edx, %ecx
	leal	1272893353(%rcx,%rax), %eax
	movl	%edx, %ecx
	xorl	%edi, %ecx
	roll	$11, %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	leal	(%rsi,%r9), %esi
	movq	%r9, %r15
	leal	-155497632(%rcx,%rsi), %ecx
	movq	-120(%rsp), %r11        # 8-byte Reload
	leal	(%rdi,%r11), %esi
	roll	$16, %ecx
	addl	%eax, %ecx
	movl	%eax, %edi
	xorl	%edx, %edi
	xorl	%ecx, %edi
	leal	-1094730640(%rdi,%rsi), %esi
	movl	%ecx, %edi
	xorl	%eax, %edi
	roll	$23, %esi
	addl	%ecx, %esi
	xorl	%esi, %edi
	leal	(%rdx,%rbp), %edx
	leal	681279174(%rdi,%rdx), %edx
	movq	-8(%rsp), %r9           # 8-byte Reload
	leal	(%rax,%r9), %eax
	roll	$4, %edx
	addl	%esi, %edx
	movl	%esi, %edi
	xorl	%ecx, %edi
	xorl	%edx, %edi
	leal	-358537222(%rdi,%rax), %eax
	movl	%edx, %edi
	xorl	%esi, %edi
	roll	$11, %eax
	addl	%edx, %eax
	xorl	%eax, %edi
	leal	(%rcx,%r12), %ecx
	leal	-722521979(%rdi,%rcx), %r8d
	movq	-80(%rsp), %r14         # 8-byte Reload
	leal	(%rsi,%r14), %ecx
	roll	$16, %r8d
	addl	%eax, %r8d
	movl	%eax, %esi
	xorl	%edx, %esi
	xorl	%r8d, %esi
	leal	76029189(%rsi,%rcx), %ecx
	movl	%r8d, %esi
	xorl	%eax, %esi
	roll	$23, %ecx
	addl	%r8d, %ecx
	xorl	%ecx, %esi
	movq	-48(%rsp), %rdi         # 8-byte Reload
	leal	(%rdx,%rdi), %edx
	leal	-640364487(%rsi,%rdx), %esi
	leal	(%rax,%r13), %eax
	roll	$4, %esi
	addl	%ecx, %esi
	movl	%ecx, %edx
	xorl	%r8d, %edx
	xorl	%esi, %edx
	leal	-421815835(%rdx,%rax), %edi
	movl	%esi, %eax
	xorl	%ecx, %eax
	roll	$11, %edi
	addl	%esi, %edi
	xorl	%edi, %eax
	movq	-104(%rsp), %rbx        # 8-byte Reload
	leal	(%r8,%rbx), %edx
	leal	530742520(%rax,%rdx), %eax
	movq	-16(%rsp), %r8          # 8-byte Reload
	leal	(%rcx,%r8), %ecx
	roll	$16, %eax
	addl	%edi, %eax
	movl	%edi, %edx
	xorl	%esi, %edx
	xorl	%eax, %edx
	leal	-995338651(%rdx,%rcx), %ecx
	addl	%r9d, %esi
	roll	$23, %ecx
	addl	%eax, %ecx
	movl	%edi, %edx
	notl	%edx
	orl	%ecx, %edx
	xorl	%eax, %edx
	leal	-198630844(%rdx,%rsi), %esi
	addl	%r15d, %edi
	roll	$6, %esi
	addl	%ecx, %esi
	movl	%eax, %edx
	notl	%edx
	orl	%esi, %edx
	xorl	%ecx, %edx
	leal	1126891415(%rdx,%rdi), %edi
	movq	-128(%rsp), %rdx        # 8-byte Reload
	addl	%edx, %eax
	roll	$10, %edi
	addl	%esi, %edi
	movl	%ecx, %edx
	notl	%edx
	orl	%edi, %edx
	xorl	%esi, %edx
	leal	-1416354905(%rdx,%rax), %eax
	movq	-56(%rsp), %rdx         # 8-byte Reload
	addl	%edx, %ecx
	roll	$15, %eax
	addl	%edi, %eax
	movl	%esi, %edx
	notl	%edx
	orl	%eax, %edx
	xorl	%edi, %edx
	leal	-57434055(%rdx,%rcx), %ecx
	addl	%r13d, %esi
	roll	$21, %ecx
	addl	%eax, %ecx
	movl	%edi, %edx
	notl	%edx
	orl	%ecx, %edx
	xorl	%eax, %edx
	leal	1700485571(%rdx,%rsi), %edx
	addl	%r12d, %edi
	roll	$6, %edx
	addl	%ecx, %edx
	movl	%eax, %esi
	notl	%esi
	orl	%edx, %esi
	xorl	%ecx, %esi
	leal	-1894986606(%rsi,%rdi), %esi
	addl	%r11d, %eax
	roll	$10, %esi
	addl	%edx, %esi
	movl	%ecx, %edi
	notl	%edi
	orl	%esi, %edi
	xorl	%edx, %edi
	leal	-1051523(%rdi,%rax), %edi
	roll	$15, %edi
	addl	%esi, %edi
	movq	-24(%rsp), %rax         # 8-byte Reload
	addl	%eax, %ecx
	movl	%edx, %eax
	notl	%eax
	orl	%edi, %eax
	xorl	%esi, %eax
	leal	-2054922799(%rax,%rcx), %eax
	roll	$21, %eax
	addl	%edi, %eax
	movq	-40(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %edx
	movl	%esi, %ecx
	notl	%ecx
	orl	%eax, %ecx
	xorl	%edi, %ecx
	leal	1873313359(%rcx,%rdx), %ecx
	roll	$6, %ecx
	addl	%eax, %ecx
	addl	%ebx, %esi
	movl	%edi, %edx
	notl	%edx
	orl	%ecx, %edx
	xorl	%eax, %edx
	leal	-30611744(%rdx,%rsi), %edx
	roll	$10, %edx
	addl	%ecx, %edx
	addl	%r14d, %edi
	movl	%eax, %esi
	notl	%esi
	orl	%edx, %esi
	xorl	%ecx, %esi
	leal	-1560198380(%rsi,%rdi), %esi
	roll	$15, %esi
	addl	%edx, %esi
	addl	%ebp, %eax
	movl	%ecx, %edi
	notl	%edi
	orl	%esi, %edi
	xorl	%edx, %edi
	leal	1309151649(%rdi,%rax), %eax
	roll	$21, %eax
	addl	%esi, %eax
	movq	-112(%rsp), %rdi        # 8-byte Reload
	addl	%edi, %ecx
	movl	%edx, %edi
	notl	%edi
	orl	%eax, %edi
	xorl	%esi, %edi
	leal	-145523070(%rdi,%rcx), %ecx
	roll	$6, %ecx
	addl	%eax, %ecx
	movq	-32(%rsp), %rdi         # 8-byte Reload
	addl	%edi, %edx
	movl	%esi, %edi
	notl	%edi
	orl	%ecx, %edi
	xorl	%eax, %edi
	leal	-1120210379(%rdi,%rdx), %edx
	roll	$10, %edx
	addl	%ecx, %edx
	addl	%r8d, %esi
	movl	%eax, %edi
	notl	%edi
	orl	%edx, %edi
	xorl	%ecx, %edi
	leal	718787259(%rdi,%rsi), %esi
	roll	$15, %esi
	addl	%edx, %esi
	movq	-48(%rsp), %rdi         # 8-byte Reload
	addl	%edi, %eax
	movl	%ecx, %edi
	notl	%edi
	orl	%esi, %edi
	xorl	%edx, %edi
	leal	-343485551(%rdi,%rax), %eax
	movq	-64(%rsp), %rdi         # 8-byte Reload
	addl	%edi, %ecx
	roll	$21, %eax
	movq	-72(%rsp), %rdi         # 8-byte Reload
	movl	%ecx, (%rdi)
	movl	4(%rdi), %ecx
	addl	%esi, %ecx
	addl	%eax, %ecx
	movl	%ecx, 4(%rdi)
	addl	%esi, 8(%rdi)
	addl	%edx, 12(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	MD5_Transform, .Lfunc_end1-MD5_Transform
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(hProfile != ((void*)0))"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsmd5.c"
	.size	.L.str.1, 21

	.type	.L__PRETTY_FUNCTION__.cmsMD5computeID,@object # @__PRETTY_FUNCTION__.cmsMD5computeID
.L__PRETTY_FUNCTION__.cmsMD5computeID:
	.asciz	"cmsBool cmsMD5computeID(cmsHPROFILE)"
	.size	.L__PRETTY_FUNCTION__.cmsMD5computeID, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
