	.text
	.file	"ttcalc.bc"
	.globl	ttMulDiv
	.align	16, 0x90
	.type	ttMulDiv,@function
ttMulDiv:                               # @ttMulDiv
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	negl	%edx
	cmovll	%r8d, %edx
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	xorl	%edi, %esi
	movslq	%ecx, %rcx
	cltq
	imulq	%rcx, %rax
	movslq	%edx, %rcx
	cqto
	idivq	%rcx
	movl	%eax, %edx
	negl	%edx
	xorl	%r8d, %esi
	cmovnsl	%eax, %edx
	movl	%edx, %eax
	retq
.Lfunc_end0:
	.size	ttMulDiv, .Lfunc_end0-ttMulDiv
	.cfi_endproc

	.globl	MulDiv_Round
	.align	16, 0x90
	.type	MulDiv_Round,@function
MulDiv_Round:                           # @MulDiv_Round
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	negl	%edx
	cmovll	%r8d, %edx
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	xorl	%edi, %esi
	movslq	%ecx, %rcx
	movslq	%eax, %rdi
	imulq	%rcx, %rdi
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rax,%rdx), %eax
	sarl	%eax
	cltq
	addq	%rdi, %rax
	movslq	%edx, %rcx
	cqto
	idivq	%rcx
	movl	%eax, %edx
	negl	%edx
	xorl	%r8d, %esi
	cmovnsl	%eax, %edx
	movl	%edx, %eax
	retq
.Lfunc_end1:
	.size	MulDiv_Round, .Lfunc_end1-MulDiv_Round
	.cfi_endproc

	.globl	Sqrt64
	.align	16, 0x90
	.type	Sqrt64,@function
Sqrt64:                                 # @Sqrt64
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.LBB2_7
# BB#1:                                 # %if.end
	movl	$1, %eax
	cmpq	$1, %rcx
	je	.LBB2_7
# BB#2:
	movl	$-1, %eax
	movq	%rcx, %rdx
	.align	16, 0x90
.LBB2_3:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	shrq	%rdx
	incl	%eax
	testq	%rdx, %rdx
	jne	.LBB2_3
# BB#4:                                 # %Order64.exit
	cltq
	movq	Roots(,%rax,8), %rax
	.align	16, 0x90
.LBB2_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	addq	%rsi, %rax
	sarq	%rax
	movq	%rax, %rdx
	imulq	%rdx, %rdx
	cmpq	%rsi, %rax
	jg	.LBB2_5
# BB#6:                                 # %do.body
                                        #   in Loop: Header=BB2_5 Depth=1
	cmpq	%rcx, %rdx
	jg	.LBB2_5
.LBB2_7:                                # %cleanup
	retq
.Lfunc_end2:
	.size	Sqrt64, .Lfunc_end2-Sqrt64
	.cfi_endproc

	.type	Roots,@object           # @Roots
	.section	.rodata,"a",@progbits
	.align	16
Roots:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.quad	2                       # 0x2
	.quad	3                       # 0x3
	.quad	4                       # 0x4
	.quad	5                       # 0x5
	.quad	8                       # 0x8
	.quad	11                      # 0xb
	.quad	16                      # 0x10
	.quad	22                      # 0x16
	.quad	32                      # 0x20
	.quad	45                      # 0x2d
	.quad	64                      # 0x40
	.quad	90                      # 0x5a
	.quad	128                     # 0x80
	.quad	181                     # 0xb5
	.quad	256                     # 0x100
	.quad	362                     # 0x16a
	.quad	512                     # 0x200
	.quad	724                     # 0x2d4
	.quad	1024                    # 0x400
	.quad	1448                    # 0x5a8
	.quad	2048                    # 0x800
	.quad	2896                    # 0xb50
	.quad	4096                    # 0x1000
	.quad	5892                    # 0x1704
	.quad	8192                    # 0x2000
	.quad	11585                   # 0x2d41
	.quad	16384                   # 0x4000
	.quad	23170                   # 0x5a82
	.quad	32768                   # 0x8000
	.quad	46340                   # 0xb504
	.quad	65536                   # 0x10000
	.quad	92681                   # 0x16a09
	.quad	131072                  # 0x20000
	.quad	185363                  # 0x2d413
	.quad	262144                  # 0x40000
	.quad	370727                  # 0x5a827
	.quad	524288                  # 0x80000
	.quad	741455                  # 0xb504f
	.quad	1048576                 # 0x100000
	.quad	1482910                 # 0x16a09e
	.quad	2097152                 # 0x200000
	.quad	2965820                 # 0x2d413c
	.quad	4194304                 # 0x400000
	.quad	5931641                 # 0x5a8279
	.quad	8388608                 # 0x800000
	.quad	11863283                # 0xb504f3
	.quad	16777216                # 0x1000000
	.quad	23726566                # 0x16a09e6
	.quad	33554432                # 0x2000000
	.quad	47453132                # 0x2d413cc
	.quad	67108864                # 0x4000000
	.quad	94906265                # 0x5a82799
	.quad	134217728               # 0x8000000
	.quad	189812531               # 0xb504f33
	.quad	268435456               # 0x10000000
	.quad	379625062               # 0x16a09e66
	.quad	536870912               # 0x20000000
	.quad	759250125               # 0x2d413ccd
	.quad	1073741824              # 0x40000000
	.quad	1518500250              # 0x5a82799a
	.quad	2147483647              # 0x7fffffff
	.size	Roots, 504


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
