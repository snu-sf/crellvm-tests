	.text
	.file	"gdevm64.bc"
	.align	16, 0x90
	.type	mem_true64_fill_rectangle,@function
mem_true64_fill_rectangle:              # @mem_true64_fill_rectangle
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
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB0_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	movl	%edx, %ebp
	sarl	$31, %ebp
	andl	%edx, %ebp
	addl	%ebp, %r8d
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB0_2:                                # %do.body.34
	movl	832(%rdi), %r13d
	movl	836(%rdi), %eax
	movl	%r13d, %r11d
	subl	%esi, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	movl	%eax, %ebx
	subl	%edx, %ebx
	cmpl	%ebx, %r8d
	cmovlel	%r8d, %ebx
	testl	%ebx, %ebx
	jle	.LBB0_27
# BB#3:                                 # %if.end.61
	movl	%eax, -4(%rsp)          # 4-byte Spill
	movq	%r9, %r14
	shrq	$24, %r14
	movq	%r9, %rbp
	shrq	$40, %rbp
	movq	%r9, %r10
	shrq	$8, %r10
	movq	%r9, %r12
	shrq	$56, %r12
	movq	%r9, %rax
	shlq	$24, %rax
	andl	$65280, %ebp            # imm = 0xFF00
	movl	%r10d, %r15d
	andl	$65280, %r15d           # imm = 0xFF00
	shlq	$8, %r9
	orl	%ebp, %r12d
	movzbl	%r14b, %ebp
	andl	$16711680, %r14d        # imm = 0xFF0000
	orl	%r15d, %eax
	orl	%r12d, %r14d
	andl	$-16777216, %r10d       # imm = 0xFFFFFFFFFF000000
	andl	$16711680, %r9d         # imm = 0xFF0000
	orl	%ebp, %eax
	orl	%r14d, %r10d
	orl	%r9d, %eax
	movl	1736(%rdi), %r9d
	movslq	%edx, %rbp
	movq	2576(%rdi), %rdi
	movq	(%rdi,%rbp,8), %r14
	leal	(,%rsi,8), %edi
	movslq	%edi, %r12
	cmpl	$5, %r11d
	jl	.LBB0_17
# BB#4:                                 # %while.body.lr.ph
	leaq	(%r14,%r12), %rdi
	decl	%esi
	subl	%r13d, %esi
	notl	%ecx
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	movl	$-5, %r15d
	subl	%ecx, %r15d
	shrl	$2, %r15d
	movq	%r15, %rcx
	shlq	$5, %rcx
	addq	%r12, %rcx
	leaq	32(%r14,%rcx), %rcx
	movl	%r15d, %r14d
	andl	$1, %r14d
	leal	-4(%r11), %r8d
	.align	16, 0x90
.LBB0_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	testl	%r14d, %r14d
	movl	%r11d, %esi
	movq	%rdi, %rdx
	jne	.LBB0_7
# BB#6:                                 # %while.body.77.prol
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, (%rdi)
	movl	%eax, 4(%rdi)
	movl	%r10d, 8(%rdi)
	movl	%eax, 12(%rdi)
	movl	%r10d, 16(%rdi)
	movl	%eax, 20(%rdi)
	movl	%r10d, 24(%rdi)
	movl	%eax, 28(%rdi)
	leaq	32(%rdi), %rdx
	movl	%r8d, %esi
.LBB0_7:                                # %while.body.split
                                        #   in Loop: Header=BB0_5 Depth=1
	testl	%r15d, %r15d
	movl	%r11d, %ebp
	je	.LBB0_10
	.align	16, 0x90
.LBB0_8:                                # %while.body.77
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %ebp
	movl	%r10d, (%rdx)
	movl	%eax, 4(%rdx)
	movl	%r10d, 8(%rdx)
	movl	%eax, 12(%rdx)
	movl	%r10d, 16(%rdx)
	movl	%eax, 20(%rdx)
	movl	%r10d, 24(%rdx)
	movl	%eax, 28(%rdx)
	movl	%r10d, 32(%rdx)
	movl	%eax, 36(%rdx)
	movl	%r10d, 40(%rdx)
	movl	%eax, 44(%rdx)
	movl	%r10d, 48(%rdx)
	movl	%eax, 52(%rdx)
	movl	%r10d, 56(%rdx)
	movl	%eax, 60(%rdx)
	leal	-8(%rbp), %esi
	addq	$64, %rdx
	cmpl	$3, %esi
	jg	.LBB0_8
# BB#9:                                 # %while.end.unr-lcssa
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-4, %ebp
.LBB0_10:                               # %while.end
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	$7, %ebp
	je	.LBB0_15
# BB#11:                                # %while.end
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	$6, %ebp
	jne	.LBB0_12
# BB#14:                                # %sw.bb.96
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, (%rcx)
	movl	%eax, 4(%rcx)
	movl	%r10d, 8(%rcx)
	movl	%eax, 12(%rcx)
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_15:                               # %sw.bb.103
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, (%rcx)
	movl	%eax, 4(%rcx)
	movl	%r10d, 8(%rcx)
	movl	%eax, 12(%rcx)
	movl	%r10d, 16(%rcx)
	movl	%eax, 20(%rcx)
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_12:                               # %while.end
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	$5, %ebp
	jne	.LBB0_16
# BB#13:                                # %sw.bb
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, (%rcx)
	movl	%eax, 4(%rcx)
	.align	16, 0x90
.LBB0_16:                               # %sw.epilog
                                        #   in Loop: Header=BB0_5 Depth=1
	addq	%r9, %rdi
	addq	%r9, %rcx
	cmpl	$1, %ebx
	leal	-1(%rbx), %edx
	movl	%edx, %ebx
	jg	.LBB0_5
	jmp	.LBB0_27
.LBB0_17:                               # %do.end.120
	decl	%r11d
	cmpl	$3, %r11d
	movl	-4(%rsp), %ecx          # 4-byte Reload
	ja	.LBB0_27
# BB#18:                                # %do.end.120
	jmpq	*.LJTI0_0(,%r11,8)
.LBB0_25:                               # %do.body.182.preheader
	decl	%edx
	subl	%ecx, %edx
	notl	%r8d
	cmpl	%r8d, %edx
	cmovgel	%edx, %r8d
	incl	%r8d
	leaq	4(%r12,%r14), %rcx
	.align	16, 0x90
.LBB0_26:                               # %do.body.182
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, -4(%rcx)
	movl	%eax, (%rcx)
	addq	%r9, %rcx
	incl	%r8d
	jne	.LBB0_26
	jmp	.LBB0_27
.LBB0_23:                               # %do.body.168.preheader
	decl	%edx
	subl	%ecx, %edx
	notl	%r8d
	cmpl	%r8d, %edx
	cmovgel	%edx, %r8d
	incl	%r8d
	leaq	12(%r12,%r14), %rcx
	.align	16, 0x90
.LBB0_24:                               # %do.body.168
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, -12(%rcx)
	movl	%eax, -8(%rcx)
	movl	%r10d, -4(%rcx)
	movl	%eax, (%rcx)
	addq	%r9, %rcx
	incl	%r8d
	jne	.LBB0_24
	jmp	.LBB0_27
.LBB0_21:                               # %do.body.150.preheader
	decl	%edx
	subl	%ecx, %edx
	notl	%r8d
	cmpl	%r8d, %edx
	cmovgel	%edx, %r8d
	incl	%r8d
	leaq	20(%r12,%r14), %rcx
	.align	16, 0x90
.LBB0_22:                               # %do.body.150
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, -20(%rcx)
	movl	%eax, -16(%rcx)
	movl	%r10d, -12(%rcx)
	movl	%eax, -8(%rcx)
	movl	%r10d, -4(%rcx)
	movl	%eax, (%rcx)
	addq	%r9, %rcx
	incl	%r8d
	jne	.LBB0_22
	jmp	.LBB0_27
.LBB0_19:                               # %do.body.129.preheader
	decl	%edx
	subl	%ecx, %edx
	notl	%r8d
	cmpl	%r8d, %edx
	cmovgel	%edx, %r8d
	incl	%r8d
	leaq	28(%r12,%r14), %rcx
	.align	16, 0x90
.LBB0_20:                               # %do.body.129
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, -28(%rcx)
	movl	%eax, -24(%rcx)
	movl	%r10d, -20(%rcx)
	movl	%eax, -16(%rcx)
	movl	%r10d, -12(%rcx)
	movl	%eax, -8(%rcx)
	movl	%r10d, -4(%rcx)
	movl	%eax, (%rcx)
	addq	%r9, %rcx
	incl	%r8d
	jne	.LBB0_20
.LBB0_27:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mem_true64_fill_rectangle, .Lfunc_end0-mem_true64_fill_rectangle
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_25
	.quad	.LBB0_23
	.quad	.LBB0_21
	.quad	.LBB0_19

	.text
	.align	16, 0x90
	.type	mem_true64_copy_mono,@function
mem_true64_copy_mono:                   # @mem_true64_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 56
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movl	72(%rsp), %r8d
	movl	64(%rsp), %r10d
	movl	56(%rsp), %ebp
	movl	%ebp, %eax
	orl	%r9d, %eax
	jns	.LBB1_1
# BB#2:                                 # %if.then
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	leal	(%r10,%rbx), %r10d
	xorl	%r14d, %r14d
	testl	%r9d, %r9d
	cmovsl	%r14d, %r9d
	subl	%ebx, %edx
	testl	%ebp, %ebp
	js	.LBB1_3
.LBB1_1:
	movl	%ecx, -28(%rsp)         # 4-byte Spill
	movl	%ebp, %r14d
.LBB1_4:                                # %if.end.8
	movq	%r10, -24(%rsp)         # 8-byte Spill
	movl	832(%rdi), %ebx
	movl	836(%rdi), %r11d
	movl	%ebx, %r12d
	subl	%r9d, %r12d
	cmpl	%r12d, %r10d
	cmovlel	%r10d, %r12d
	subl	%r14d, %r11d
	cmpl	%r11d, %r8d
	cmovlel	%r8d, %r11d
	testl	%r12d, %r12d
	jle	.LBB1_55
# BB#5:                                 # %if.end.8
	testl	%r11d, %r11d
	jle	.LBB1_55
# BB#6:                                 # %do.end.26
	movq	88(%rsp), %r10
	movq	80(%rsp), %r8
	movl	$4278190080, %r13d      # imm = 0xFF000000
	movl	1736(%rdi), %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movslq	%r14d, %rcx
	movq	2576(%rdi), %rax
	movq	(%rax,%rcx,8), %rdi
	leal	(,%r9,8), %ecx
	movslq	%ecx, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r14
	leaq	(%rsi,%r14), %r15
	andl	$7, %edx
	movl	$128, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	cmpq	$-1, %r8
	je	.LBB1_18
# BB#7:                                 # %if.then.33
	testl	%r11d, %r11d
	jle	.LBB1_55
# BB#8:                                 # %while.body.lr.ph
	movq	%r8, %rcx
	shrq	$56, %rcx
	movq	%r8, %rdx
	shrq	$24, %rdx
	movq	%r8, %rsi
	shrq	$40, %rsi
	andl	$65280, %esi            # imm = 0xFF00
	orl	%esi, %ecx
	movzbl	%dl, %esi
	andl	$16711680, %edx         # imm = 0xFF0000
	orl	%ecx, %edx
	movq	%r8, %rcx
	shrq	$8, %rcx
	movl	%ecx, %r12d
	andl	%r13d, %r12d
	orl	%edx, %r12d
	andl	$65280, %ecx            # imm = 0xFF00
	movq	%r8, %rdx
	shlq	$8, %rdx
	andl	$16711680, %edx         # imm = 0xFF0000
	shlq	$24, %r8
	orl	%ecx, %r8d
	orl	%esi, %r8d
	orl	%edx, %r8d
	movq	%r10, %rcx
	shrq	$56, %rcx
	movq	%r10, %rdx
	shrq	$24, %rdx
	movq	%r10, %rsi
	shrq	$40, %rsi
	andl	$65280, %esi            # imm = 0xFF00
	orl	%esi, %ecx
	movzbl	%dl, %esi
	andl	$16711680, %edx         # imm = 0xFF0000
	orl	%ecx, %edx
	movq	%r10, %rcx
	shrq	$8, %rcx
	andl	%ecx, %r13d
	orl	%edx, %r13d
	andl	$65280, %ecx            # imm = 0xFF00
	movq	%r10, %rbp
	shlq	$8, %rbp
	andl	$16711680, %ebp         # imm = 0xFF0000
	movq	%r10, %rdx
	shlq	$24, %rdx
	orl	%ecx, %edx
	orl	%esi, %edx
	orl	%ebp, %edx
	movslq	-28(%rsp), %rcx         # 4-byte Folded Reload
	movq	-40(%rsp), %rax         # 8-byte Reload
	leaq	4(%rax,%rdi), %r14
	decl	%r9d
	subl	%ebx, %r9d
	movq	-24(%rsp), %rax         # 8-byte Reload
	notl	%eax
	cmpl	%eax, %r9d
	cmovgel	%r9d, %eax
	movq	%rcx, %r9
	negl	%eax
	.align	16, 0x90
.LBB1_9:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	leaq	1(%r15), %rsi
	movzbl	(%r15), %ebp
	movl	%eax, %edi
	movq	%r14, %rbx
	movq	-8(%rsp), %rcx          # 8-byte Reload
	.align	16, 0x90
.LBB1_10:                               # %do.body.88
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebp, %ecx
	je	.LBB1_13
# BB#11:                                # %if.then.90
                                        #   in Loop: Header=BB1_10 Depth=2
	cmpq	$-1, %r10
	je	.LBB1_14
# BB#12:                                # %if.then.93
                                        #   in Loop: Header=BB1_10 Depth=2
	movl	%r13d, -4(%rbx)
	movl	%edx, (%rbx)
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_13:                               # %if.else
                                        #   in Loop: Header=BB1_10 Depth=2
	movl	%r12d, -4(%rbx)
	movl	%r8d, (%rbx)
.LBB1_14:                               # %if.end.99
                                        #   in Loop: Header=BB1_10 Depth=2
	sarl	%ecx
	jne	.LBB1_16
# BB#15:                                # %if.then.104
                                        #   in Loop: Header=BB1_10 Depth=2
	movzbl	(%rsi), %ebp
	incq	%rsi
	movl	$128, %ecx
.LBB1_16:                               # %do.cond.108
                                        #   in Loop: Header=BB1_10 Depth=2
	addq	$8, %rbx
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB1_10
# BB#17:                                # %do.end.112
                                        #   in Loop: Header=BB1_9 Depth=1
	addq	%r9, %r15
	addq	-16(%rsp), %r14         # 8-byte Folded Reload
	cmpl	$1, %r11d
	leal	-1(%r11), %ecx
	movl	%ecx, %r11d
	jg	.LBB1_9
	jmp	.LBB1_55
.LBB1_18:                               # %if.else.117
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	cmpq	$-1, %r10
	je	.LBB1_55
# BB#19:                                # %if.then.120
	movq	-8(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %ebp
	movl	%ebx, %eax
	leal	(%r12,%rdx), %ebx
	movl	$8, %esi
	subl	%edx, %esi
	movb	%r12b, %cl
	sarl	%cl, %ebp
	negl	%ebp
	cmpl	$8, %ebx
	movl	$-1, %ecx
	cmovlel	%ebp, %ecx
	cmovlel	%r12d, %esi
	testl	%r11d, %r11d
	jle	.LBB1_55
# BB#20:                                # %while.body.165.lr.ph
	addq	-40(%rsp), %rdi         # 8-byte Folded Reload
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movl	%esi, %ecx
	movl	%eax, %r8d
	movq	%r10, %rbx
	shrq	$56, %rbx
	movq	%r10, %rbp
	shrq	$24, %rbp
	movq	%r10, %rax
	shrq	$40, %rax
	andl	$65280, %eax            # imm = 0xFF00
	orl	%eax, %ebx
	movl	%ebp, %eax
	andl	$16711680, %eax         # imm = 0xFF0000
	orl	%ebx, %eax
	movq	%r10, %rbx
	shrq	$8, %rbx
	andl	%ebx, %r13d
	orl	%eax, %r13d
	andl	$65280, %ebx            # imm = 0xFF00
	movq	%r10, %rax
	shlq	$24, %r10
	orl	%ebx, %r10d
	movzbl	%bpl, %ebp
	orl	%ebp, %r10d
	shlq	$8, %rax
	andl	$16711680, %eax         # imm = 0xFF0000
	orl	%eax, %r10d
	subl	%ecx, %r12d
	addl	%ecx, %ecx
	decl	%r9d
	subl	%r8d, %r9d
	movq	-24(%rsp), %rbx         # 8-byte Reload
	notl	%ebx
	cmpl	%ebx, %r9d
	cmovgel	%r9d, %ebx
	movl	%ebx, %eax
	subl	%edx, %eax
	cmpl	$-10, %eax
	movl	$-9, %ebp
	cmovgl	%eax, %ebp
	leal	-8(%rbp,%rdx), %edx
	subl	%ebx, %edx
	shrl	$3, %edx
	addq	%rdx, %r14
	movq	-48(%rsp), %rax         # 8-byte Reload
	leaq	2(%rax,%r14), %r8
	movq	-8(%rsp), %rax          # 8-byte Reload
	movq	-40(%rsp), %rsi         # 8-byte Reload
	leal	(%rsi,%rax,2), %esi
	movslq	%ecx, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movslq	-28(%rsp), %rax         # 4-byte Folded Reload
	shlq	$4, %rdx
	addq	$16, %rdx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_21:                               # %while.body.165
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_51 Depth 2
	movzbl	(%r15), %edx
	andl	%esi, %edx
	movq	%rdi, %rcx
	movq	-8(%rsp), %rbp          # 8-byte Reload
	je	.LBB1_25
	.align	16, 0x90
.LBB1_22:                               # %do.body.177
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edx, %ebp
	je	.LBB1_24
# BB#23:                                # %if.then.180
                                        #   in Loop: Header=BB1_22 Depth=2
	movl	%r13d, (%rcx)
	movl	%r10d, 4(%rcx)
.LBB1_24:                               # %if.end.183
                                        #   in Loop: Header=BB1_22 Depth=2
	addq	$8, %rcx
	sarl	%ebp
	testl	%esi, %ebp
	jne	.LBB1_22
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_25:                               # %if.else.190
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-40(%rsp), %rcx         # 8-byte Reload
	leaq	(%rdi,%rcx,4), %rcx
.LBB1_26:                               # %while.cond.194.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	leaq	1(%r15), %rdx
	cmpl	$8, %r12d
	jl	.LBB1_27
# BB#28:                                # %while.body.197.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	leaq	60(%rcx), %r9
	movl	%r12d, %ebp
	.align	16, 0x90
.LBB1_29:                               # %while.body.197
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %r14d
	testb	$-16, %r14b
	je	.LBB1_38
# BB#30:                                # %if.then.202
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$-128, %r14b
	je	.LBB1_32
# BB#31:                                # %if.then.205
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	%r13d, -60(%r9)
	movl	%r10d, -56(%r9)
.LBB1_32:                               # %if.end.208
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$64, %r14b
	je	.LBB1_34
# BB#33:                                # %if.then.211
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	%r13d, -52(%r9)
	movl	%r10d, -48(%r9)
.LBB1_34:                               # %if.end.216
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$32, %r14b
	je	.LBB1_36
# BB#35:                                # %if.then.219
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	%r13d, -44(%r9)
	movl	%r10d, -40(%r9)
.LBB1_36:                               # %if.end.224
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$16, %r14b
	je	.LBB1_38
# BB#37:                                # %if.then.227
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	%r13d, -36(%r9)
	movl	%r10d, -32(%r9)
.LBB1_38:                               # %if.end.233
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$15, %r14b
	je	.LBB1_47
# BB#39:                                # %if.then.236
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$8, %r14b
	je	.LBB1_41
# BB#40:                                # %if.then.239
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	%r13d, -28(%r9)
	movl	%r10d, -24(%r9)
.LBB1_41:                               # %if.end.244
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$4, %r14b
	je	.LBB1_43
# BB#42:                                # %if.then.247
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	%r13d, -20(%r9)
	movl	%r10d, -16(%r9)
.LBB1_43:                               # %if.end.252
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$2, %r14b
	je	.LBB1_45
# BB#44:                                # %if.then.255
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	%r13d, -12(%r9)
	movl	%r10d, -8(%r9)
.LBB1_45:                               # %if.end.260
                                        #   in Loop: Header=BB1_29 Depth=2
	testb	$1, %r14b
	je	.LBB1_47
# BB#46:                                # %if.then.263
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	%r13d, -4(%r9)
	movl	%r10d, (%r9)
.LBB1_47:                               # %if.end.269
                                        #   in Loop: Header=BB1_29 Depth=2
	incq	%rdx
	addl	$-8, %ebp
	addq	$64, %r9
	cmpl	$7, %ebp
	jg	.LBB1_29
# BB#48:                                # %while.cond.194.while.end.272_crit_edge
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-24(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx,4), %rcx
	movq	%r8, %rdx
	jmp	.LBB1_49
	.align	16, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_21 Depth=1
	movl	%r12d, %ebp
.LBB1_49:                               # %while.end.272
                                        #   in Loop: Header=BB1_21 Depth=1
	testl	%ebp, %ebp
	jle	.LBB1_54
# BB#50:                                # %if.then.275
                                        #   in Loop: Header=BB1_21 Depth=1
	movzbl	(%rdx), %edx
	addq	$4, %rcx
	incl	%ebp
	movl	$128, %ebx
	.align	16, 0x90
.LBB1_51:                               # %do.body.279
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edx, %ebx
	je	.LBB1_53
# BB#52:                                # %if.then.282
                                        #   in Loop: Header=BB1_51 Depth=2
	movl	%r13d, -4(%rcx)
	movl	%r10d, (%rcx)
.LBB1_53:                               # %if.end.285
                                        #   in Loop: Header=BB1_51 Depth=2
	sarl	%ebx
	addq	$8, %rcx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB1_51
.LBB1_54:                               # %if.end.293
                                        #   in Loop: Header=BB1_21 Depth=1
	addq	%rax, %r15
	addq	-16(%rsp), %rdi         # 8-byte Folded Reload
	addq	%rax, %r8
	cmpl	$1, %r11d
	leal	-1(%r11), %ecx
	movl	%ecx, %r11d
	jg	.LBB1_21
.LBB1_55:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_3:                                # %if.then.5
	addl	%ebp, %r8d
	imull	%ecx, %ebp
	movl	%ecx, -28(%rsp)         # 4-byte Spill
	movslq	%ebp, %rax
	subq	%rax, %rsi
	jmp	.LBB1_4
.Lfunc_end1:
	.size	mem_true64_copy_mono, .Lfunc_end1-mem_true64_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true64_copy_color,@function
mem_true64_copy_color:                  # @mem_true64_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rsi, %r10
	movl	32(%rsp), %r11d
	movl	24(%rsp), %r8d
	movl	16(%rsp), %eax
	movl	%eax, %esi
	orl	%r9d, %esi
	js	.LBB2_2
# BB#1:
	movl	%eax, %esi
	movl	%r8d, %ebx
	jmp	.LBB2_5
.LBB2_2:                                # %if.then
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	subl	%ebx, %edx
	xorl	%esi, %esi
	testl	%r9d, %r9d
	cmovsl	%esi, %r9d
	addl	%r8d, %ebx
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:
	movl	%eax, %esi
	jmp	.LBB2_5
.LBB2_4:                                # %if.then.5
	addl	%eax, %r11d
	imull	%ecx, %eax
	cltq
	subq	%rax, %r10
.LBB2_5:                                # %if.end.8
	movl	832(%rdi), %r8d
	movl	836(%rdi), %eax
	subl	%r9d, %r8d
	cmpl	%r8d, %ebx
	cmovlel	%ebx, %r8d
	subl	%esi, %eax
	cmpl	%eax, %r11d
	cmovlel	%r11d, %eax
	testl	%r8d, %r8d
	jle	.LBB2_8
# BB#6:                                 # %if.end.8
	testl	%eax, %eax
	jle	.LBB2_8
# BB#7:                                 # %do.end.26
	movslq	%esi, %rsi
	movq	2576(%rdi), %rbx
	shll	$3, %r9d
	movslq	%r9d, %r9
	addq	(%rbx,%rsi,8), %r9
	movl	1736(%rdi), %esi
	shll	$3, %edx
	movslq	%edx, %rdx
	addq	%rdx, %r10
	shll	$3, %r8d
	movq	%r9, %rdi
	movq	%r10, %rdx
	movl	%eax, %r9d
	callq	bytes_copy_rectangle
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	mem_true64_copy_color, .Lfunc_end2-mem_true64_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem64_word_fill_rectangle,@function
mem64_word_fill_rectangle:              # @mem64_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 80
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %r15
	movl	%r12d, %eax
	orl	%r13d, %eax
	jns	.LBB3_2
# BB#1:                                 # %if.then
	movl	%r13d, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r13d, %r13d
	cmovsl	%eax, %r13d
	movl	%r12d, %edx
	sarl	$31, %edx
	andl	%r12d, %edx
	addl	%edx, %r8d
	testl	%r12d, %r12d
	cmovsl	%eax, %r12d
.LBB3_2:                                # %do.body.10
	movl	832(%r15), %ebx
	movl	836(%r15), %ebp
	subl	%r13d, %ebx
	cmpl	%ebx, %ecx
	cmovlel	%ecx, %ebx
	subl	%r12d, %ebp
	cmpl	%ebp, %r8d
	cmovlel	%r8d, %ebp
	testl	%ebx, %ebx
	jle	.LBB3_5
# BB#3:                                 # %do.body.10
	testl	%ebp, %ebp
	jle	.LBB3_5
# BB#4:                                 # %do.end.34
	movslq	%r12d, %rax
	movq	2576(%r15), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	1736(%r15), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movl	%r13d, %eax
	shll	$6, %eax
	movl	%eax, (%rsp)            # 4-byte Spill
	movl	%eax, %edx
	movl	%ebx, %r14d
	shll	$6, %r14d
	movl	$1, %r9d
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	movq	16(%rsp), %r9           # 8-byte Reload
	callq	mem_true64_fill_rectangle
	xorl	%r9d, %r9d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	4(%rsp), %esi           # 4-byte Reload
	movl	(%rsp), %edx            # 4-byte Reload
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
.LBB3_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mem64_word_fill_rectangle, .Lfunc_end3-mem64_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem64_word_copy_mono,@function
mem64_word_copy_mono:                   # @mem64_word_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 144
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	160(%rsp), %r10d
	movl	152(%rsp), %r9d
	movl	144(%rsp), %eax
	movl	%eax, %ebp
	orl	%ebx, %ebp
	jns	.LBB4_1
# BB#2:                                 # %if.then
	movl	%ebx, %ebp
	sarl	$31, %ebp
	andl	%ebx, %ebp
	leal	(%r9,%rbp), %r9d
	xorl	%r11d, %r11d
	testl	%ebx, %ebx
	cmovsl	%r11d, %ebx
	subl	%ebp, %edx
	testl	%eax, %eax
	js	.LBB4_3
.LBB4_1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, %r11d
.LBB4_4:                                # %if.end.8
	movl	832(%rdi), %r13d
	movl	836(%rdi), %r14d
	subl	%ebx, %r13d
	cmpl	%r13d, %r9d
	cmovlel	%r9d, %r13d
	subl	%r11d, %r14d
	cmpl	%r14d, %r10d
	cmovlel	%r10d, %r14d
	testl	%r13d, %r13d
	jle	.LBB4_7
# BB#5:                                 # %if.end.8
	testl	%r14d, %r14d
	jle	.LBB4_7
# BB#6:                                 # %do.end.26
	movslq	%r11d, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	1736(%rdi), %esi
	movl	%esi, 52(%rsp)          # 4-byte Spill
	cmpq	$-1, 168(%rsp)
	setne	%al
	cmpq	$-1, 176(%rsp)
	setne	%cl
	andb	%al, %cl
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movzbl	%cl, %r9d
	movl	%ebx, %r12d
	shll	$6, %r12d
	movl	%r13d, %r15d
	shll	$6, %r15d
	movq	%rdx, %rdi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movq	%r11, %rbp
	callq	mem_swap_byte_rect
	movq	176(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	72(%rsp), %rsi          # 8-byte Reload
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	mem_true64_copy_mono
	xorl	%r9d, %r9d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
.LBB4_7:                                # %cleanup
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_3:                                # %if.then.5
	movl	%edx, 80(%rsp)          # 4-byte Spill
	addl	%eax, %r10d
	imull	%ecx, %eax
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movslq	%eax, %rdx
	subq	%rdx, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB4_4
.Lfunc_end4:
	.size	mem64_word_copy_mono, .Lfunc_end4-mem64_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem64_word_copy_color,@function
mem64_word_copy_color:                  # @mem64_word_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 80
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	96(%rsp), %r10d
	movl	88(%rsp), %r11d
	movl	80(%rsp), %eax
	movl	%eax, %ebx
	orl	%r9d, %ebx
	js	.LBB5_2
# BB#1:
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%r9d, %r13d
	movl	%eax, %r8d
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %r13d
	cmovsl	%r8d, %r13d
	andl	%r9d, %ebp
	leal	(%r11,%rbp), %r11d
	subl	%ebp, %edx
	testl	%eax, %eax
	js	.LBB5_4
# BB#3:
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%eax, %r8d
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	movl	%edx, 4(%rsp)           # 4-byte Spill
	addl	%eax, %r10d
	imull	%ecx, %eax
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	cltq
	subq	%rax, %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
.LBB5_5:                                # %if.end.8
	movl	832(%rdi), %ebp
	movl	836(%rdi), %ebx
	subl	%r13d, %ebp
	cmpl	%ebp, %r11d
	cmovlel	%r11d, %ebp
	subl	%r8d, %ebx
	cmpl	%ebx, %r10d
	cmovlel	%r10d, %ebx
	testl	%ebp, %ebp
	jle	.LBB5_8
# BB#6:                                 # %if.end.8
	testl	%ebx, %ebx
	jle	.LBB5_8
# BB#7:                                 # %do.end.26
	movslq	%r8d, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r14
	movl	1736(%rdi), %esi
	movl	%esi, (%rsp)            # 4-byte Spill
	movl	%r13d, %r15d
	shll	$6, %r15d
	movl	%ebp, %r12d
	shll	$6, %r12d
	movl	$1, %r9d
	movq	%r14, %rdi
	movl	%r15d, %edx
	movl	%r12d, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
	addl	%r13d, %r13d
	movslq	%r13d, %rax
	leaq	(%rax,%r14), %rdi
	movl	4(%rsp), %eax           # 4-byte Reload
	addl	%eax, %eax
	cltq
	movq	8(%rsp), %rdx           # 8-byte Reload
	addq	%rax, %rdx
	addl	%ebp, %ebp
	movl	(%rsp), %r13d           # 4-byte Reload
	movl	%r13d, %esi
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	bytes_copy_rectangle
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%r12d, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
.LBB5_8:                                # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem64_word_copy_color, .Lfunc_end5-mem64_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image64"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	mem_true64_device,@object # @mem_true64_device
	.section	.rodata,"a",@progbits
	.globl	mem_true64_device
	.align	8
mem_true64_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	64                      # 0x40
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	mem_true64_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_true64_copy_mono
	.quad	mem_true64_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	mem_default_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_true64_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image64w"
	.size	.L.str.2, 9

	.type	mem_true64_word_device,@object # @mem_true64_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_true64_word_device
	.align	8
mem_true64_word_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str.2
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	64                      # 0x40
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	mem64_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem64_word_copy_mono
	.quad	mem64_word_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_no_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_word_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_true64_word_device, 2792


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
