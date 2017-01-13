	.text
	.file	"gdevm56.bc"
	.align	16, 0x90
	.type	mem_true56_fill_rectangle,@function
mem_true56_fill_rectangle:              # @mem_true56_fill_rectangle
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movq	%r9, %r11
	movq	%r11, 40(%rsp)          # 8-byte Spill
	movl	%r8d, %r14d
	movl	%esi, %r15d
	movq	%r11, %r12
	shrq	$40, %r12
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	%r11, %rax
	shrq	$48, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%r11, %rax
	shrq	$32, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%r11d, %eax
	shrl	$16, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	%r11d, %eax
	shrl	$8, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	orl	%r15d, %eax
	jns	.LBB0_2
# BB#1:                                 # %if.then
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%r15d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r15d, %r15d
	cmovsl	%eax, %r15d
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%esi, %r14d
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB0_2:                                # %do.body.29
	movl	%r11d, %r9d
	shrl	$24, %r9d
	movl	832(%rdi), %eax
	movl	836(%rdi), %r10d
	movl	%eax, %esi
	subl	%r15d, %esi
	cmpl	%esi, %ecx
	cmovlel	%ecx, %esi
	movl	%r10d, %ebx
	subl	%edx, %ebx
	cmpl	%ebx, %r14d
	cmovlel	%r14d, %ebx
	cmpl	$5, %esi
	jl	.LBB0_36
# BB#3:                                 # %if.then.55
	testl	%ebx, %ebx
	jle	.LBB0_47
# BB#4:                                 # %do.end.62
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	movl	1736(%rdi), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rdi, %r8
	movq	2576(%r8), %rdi
	imull	$7, %r15d, %ebp
	movslq	%ebp, %r13
	addq	(%rdi,%rcx,8), %r13
	movq	96(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %ebp
	movzbl	%r12b, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	cmpl	%eax, %ebp
	jne	.LBB0_12
# BB#5:                                 # %land.lhs.true
	movq	64(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %ecx
	cmpl	%ecx, %ebp
	jne	.LBB0_12
# BB#6:                                 # %land.lhs.true
	cmpl	%r9d, %ecx
	jne	.LBB0_12
# BB#7:                                 # %land.lhs.true
	movl	60(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %ecx
	cmpl	%ecx, %r9d
	jne	.LBB0_12
# BB#8:                                 # %land.lhs.true.81
	movl	92(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %ecx
	cmpl	%ecx, %r9d
	jne	.LBB0_12
# BB#9:                                 # %land.lhs.true.81
	movzbl	%r11b, %edi
	cmpl	%edi, %ecx
	jne	.LBB0_12
# BB#10:                                # %while.body.lr.ph
	imull	$7, %esi, %eax
	movslq	%eax, %r15
	decl	%edx
	subl	%r10d, %edx
	notl	%r14d
	cmpl	%r14d, %edx
	cmovgel	%edx, %r14d
	negl	%r14d
	.align	16, 0x90
.LBB0_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	callq	memset
	addq	80(%rsp), %r13          # 8-byte Folded Reload
	decl	%r14d
	cmpl	$1, %r14d
	jg	.LBB0_11
	jmp	.LBB0_47
.LBB0_36:                               # %if.else.233
	testl	%ebx, %ebx
	jle	.LBB0_47
# BB#37:                                # %do.end.239
	movl	1736(%rdi), %ecx
	decl	%esi
	cmpl	$3, %esi
	ja	.LBB0_47
# BB#38:                                # %do.end.239
	movslq	%edx, %rax
	movq	2576(%rdi), %rdi
	movq	(%rdi,%rax,8), %rdi
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_45:                               # %do.body.334.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%r14d
	cmpl	%r14d, %edx
	cmovgel	%edx, %r14d
	incl	%r14d
	imull	$7, %r15d, %eax
	cltq
	leaq	6(%rax,%rdi), %rax
	.align	16, 0x90
.LBB0_46:                               # %do.body.334
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -6(%rax)
	movb	%r12b, -5(%rax)
	movq	64(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -4(%rax)
	movb	%r9b, -3(%rax)
	movl	60(%rsp), %edx          # 4-byte Reload
	movb	%dl, -2(%rax)
	movl	92(%rsp), %edx          # 4-byte Reload
	movb	%dl, -1(%rax)
	movb	%r11b, (%rax)
	addq	%rcx, %rax
	incl	%r14d
	jne	.LBB0_46
	jmp	.LBB0_47
.LBB0_12:                               # %if.else
	movl	%r15d, %eax
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	negl	%eax
	andl	$3, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	%rsi, %r14
	subl	%eax, %r14d
	cmpq	%r11, 2680(%r8)
	jne	.LBB0_14
# BB#13:                                # %if.then.106
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	2688(%r8), %ebp
	movl	2692(%r8), %edi
	movl	2696(%r8), %edx
	movl	2700(%r8), %r10d
	movl	2704(%r8), %r15d
	movl	2708(%r8), %esi
	movl	2712(%r8), %ecx
	jmp	.LBB0_15
.LBB0_14:                               # %do.end.124
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	%r9d, %ecx
	shll	$24, %ecx
	movq	64(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %edi
	movl	%edi, %edx
	shll	$16, %edx
	movq	%r12, %rsi
	shlq	$8, %rsi
	movzwl	%si, %esi
	orl	%ecx, %ebp
	orl	%edx, %ebp
	orl	%esi, %ebp
	movl	%ebp, 2688(%r8)
	movl	%ebp, %edx
	shll	$8, %edx
	movzbl	%r11b, %ecx
	orl	%edx, %ecx
	movl	%ecx, 2712(%r8)
	movl	%ecx, %edx
	shll	$8, %edx
	movl	92(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %esi
	orl	%edx, %esi
	movl	%esi, 2708(%r8)
	movl	%esi, %edx
	shll	$8, %edx
	movl	60(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %r15d
	orl	%edx, %r15d
	movl	%r15d, 2704(%r8)
	movl	%r15d, %r10d
	shll	$8, %r10d
	orl	%r9d, %r10d
	movl	%r10d, 2700(%r8)
	movl	%r10d, %edx
	shll	$8, %edx
	orl	%edi, %edx
	movl	%edx, 2696(%r8)
	movl	%edx, %edi
	shll	$8, %edi
	addl	20(%rsp), %edi          # 4-byte Folded Reload
	movl	%edi, 2692(%r8)
	movq	%r11, 2680(%r8)
.LBB0_15:                               # %while.body.177.lr.ph
	movl	56(%rsp), %r8d          # 4-byte Reload
	movl	24(%rsp), %eax          # 4-byte Reload
	decl	%eax
	subl	32(%rsp), %eax          # 4-byte Folded Reload
	notl	%r8d
	cmpl	%r8d, %eax
	cmovgel	%eax, %r8d
	movl	$-5, %r9d
	subl	%r8d, %r9d
	movl	76(%rsp), %eax          # 4-byte Reload
	subl	%eax, %r9d
	shrl	$2, %r9d
	movq	%r9, 32(%rsp)           # 8-byte Spill
	imulq	$28, %r9, %rbx
	addq	$28, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	%r9d, %ebx
	andl	$1, %ebx
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	leal	-4(%r14), %ebx
	movl	%ebx, 56(%rsp)          # 4-byte Spill
	movq	%r14, %r9
	movq	8(%rsp), %rbx           # 8-byte Reload
	.align	16, 0x90
.LBB0_16:                               # %while.body.177
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
	cmpl	$3, %eax
	je	.LBB0_21
# BB#17:                                # %while.body.177
                                        #   in Loop: Header=BB0_16 Depth=1
	cmpl	$2, %eax
	jne	.LBB0_18
# BB#20:                                # %sw.bb.183
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movb	%al, (%r13)
	movb	%r12b, 1(%r13)
	movl	%edx, 2(%r13)
	movl	%ecx, 6(%r13)
	movl	%r10d, 10(%r13)
	leaq	14(%r13), %r8
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_21:                               # %sw.bb.190
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movb	%al, (%r13)
	movl	%edi, 1(%r13)
	movl	%esi, 5(%r13)
	movl	%edx, 9(%r13)
	movl	%ecx, 13(%r13)
	movl	%r10d, 17(%r13)
	leaq	21(%r13), %r8
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_18:                               # %while.body.177
                                        #   in Loop: Header=BB0_16 Depth=1
	cmpl	$1, %eax
	movq	%r13, %r8
	jne	.LBB0_22
# BB#19:                                # %sw.bb
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movb	%al, (%r13)
	movb	%r12b, 1(%r13)
	movq	64(%rsp), %rax          # 8-byte Reload
	movb	%al, 2(%r13)
	movl	%r10d, 3(%r13)
	leaq	7(%r13), %r8
	.align	16, 0x90
.LBB0_22:                               # %while.cond.199.preheader
                                        #   in Loop: Header=BB0_16 Depth=1
	cmpl	$4, %r9d
	jl	.LBB0_23
# BB#24:                                # %while.body.202.preheader
                                        #   in Loop: Header=BB0_16 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movl	%r9d, %r12d
	movq	%r8, %r11
	jne	.LBB0_26
# BB#25:                                # %while.body.202.prol
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%ebp, (%r8)
	movl	%r15d, 4(%r8)
	movl	%edi, 8(%r8)
	movl	%esi, 12(%r8)
	movl	%edx, 16(%r8)
	movl	%ecx, 20(%r8)
	movl	%r10d, 24(%r8)
	leaq	28(%r8), %r11
	movl	56(%rsp), %r12d         # 4-byte Reload
.LBB0_26:                               # %while.body.202.preheader.split
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	56(%rsp), %r14d         # 4-byte Reload
	je	.LBB0_28
	.align	16, 0x90
.LBB0_27:                               # %while.body.202
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, (%r11)
	movl	%r15d, 4(%r11)
	movl	%edi, 8(%r11)
	movl	%esi, 12(%r11)
	movl	%edx, 16(%r11)
	movl	%ecx, 20(%r11)
	movl	%r10d, 24(%r11)
	movl	%ebp, 28(%r11)
	movl	%r15d, 32(%r11)
	movl	%edi, 36(%r11)
	movl	%esi, 40(%r11)
	movl	%edx, 44(%r11)
	movl	%ecx, 48(%r11)
	movl	%r10d, 52(%r11)
	addl	$-8, %r12d
	addq	$56, %r11
	cmpl	$3, %r12d
	movl	%r12d, %r14d
	jg	.LBB0_27
.LBB0_28:                               # %while.cond.199.while.end.211_crit_edge
                                        #   in Loop: Header=BB0_16 Depth=1
	addq	24(%rsp), %r8           # 8-byte Folded Reload
	movq	40(%rsp), %r11          # 8-byte Reload
	movq	48(%rsp), %r12          # 8-byte Reload
	jmp	.LBB0_29
	.align	16, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=1
	movl	%r9d, %r14d
.LBB0_29:                               # %while.end.211
                                        #   in Loop: Header=BB0_16 Depth=1
	cmpl	$3, %r14d
	je	.LBB0_34
# BB#30:                                # %while.end.211
                                        #   in Loop: Header=BB0_16 Depth=1
	cmpl	$2, %r14d
	jne	.LBB0_31
# BB#33:                                # %sw.bb.216
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%ebp, (%r8)
	movl	%r15d, 4(%r8)
	movl	%edi, 8(%r8)
	movl	92(%rsp), %eax          # 4-byte Reload
	movb	%al, 12(%r8)
	movb	%r11b, 13(%r8)
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_34:                               # %sw.bb.221
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%ebp, (%r8)
	movl	%r15d, 4(%r8)
	movl	%edi, 8(%r8)
	movl	%esi, 12(%r8)
	movl	%edx, 16(%r8)
	movb	%r11b, 20(%r8)
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_31:                               # %while.end.211
                                        #   in Loop: Header=BB0_16 Depth=1
	cmpl	$1, %r14d
	jne	.LBB0_35
# BB#32:                                # %sw.bb.212
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%ebp, (%r8)
	movl	60(%rsp), %eax          # 4-byte Reload
	movb	%al, 4(%r8)
	movl	92(%rsp), %eax          # 4-byte Reload
	movb	%al, 5(%r8)
	movb	%r11b, 6(%r8)
	.align	16, 0x90
.LBB0_35:                               # %sw.epilog.228
                                        #   in Loop: Header=BB0_16 Depth=1
	addq	80(%rsp), %r13          # 8-byte Folded Reload
	cmpl	$1, %ebx
	leal	-1(%rbx), %eax
	movl	%eax, %ebx
	movl	76(%rsp), %eax          # 4-byte Reload
	jg	.LBB0_16
	jmp	.LBB0_47
.LBB0_43:                               # %do.body.312.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%r14d
	cmpl	%r14d, %edx
	cmovgel	%edx, %r14d
	incl	%r14d
	imull	$7, %r15d, %eax
	cltq
	leaq	13(%rax,%rdi), %rax
	.align	16, 0x90
.LBB0_44:                               # %do.body.312
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -13(%rax)
	movb	%dl, -6(%rax)
	movb	%r12b, -12(%rax)
	movb	%r12b, -5(%rax)
	movq	64(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -11(%rax)
	movb	%dl, -4(%rax)
	movb	%r9b, -10(%rax)
	movb	%r9b, -3(%rax)
	movl	60(%rsp), %edx          # 4-byte Reload
	movb	%dl, -9(%rax)
	movb	%dl, -2(%rax)
	movl	92(%rsp), %edx          # 4-byte Reload
	movb	%dl, -8(%rax)
	movb	%dl, -1(%rax)
	movb	%r11b, -7(%rax)
	movb	%r11b, (%rax)
	addq	%rcx, %rax
	incl	%r14d
	jne	.LBB0_44
	jmp	.LBB0_47
.LBB0_41:                               # %do.body.283.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%r14d
	cmpl	%r14d, %edx
	cmovgel	%edx, %r14d
	incl	%r14d
	imull	$7, %r15d, %eax
	cltq
	leaq	20(%rax,%rdi), %rax
	.align	16, 0x90
.LBB0_42:                               # %do.body.283
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -20(%rax)
	movb	%dl, -13(%rax)
	movb	%dl, -6(%rax)
	movb	%r12b, -19(%rax)
	movb	%r12b, -12(%rax)
	movb	%r12b, -5(%rax)
	movq	64(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -18(%rax)
	movb	%dl, -11(%rax)
	movb	%dl, -4(%rax)
	movb	%r9b, -17(%rax)
	movb	%r9b, -10(%rax)
	movb	%r9b, -3(%rax)
	movl	60(%rsp), %edx          # 4-byte Reload
	movb	%dl, -16(%rax)
	movb	%dl, -9(%rax)
	movb	%dl, -2(%rax)
	movl	92(%rsp), %edx          # 4-byte Reload
	movb	%dl, -15(%rax)
	movb	%dl, -8(%rax)
	movb	%dl, -1(%rax)
	movb	%r11b, -14(%rax)
	movb	%r11b, -7(%rax)
	movb	%r11b, (%rax)
	addq	%rcx, %rax
	incl	%r14d
	jne	.LBB0_42
	jmp	.LBB0_47
.LBB0_39:                               # %do.body.248.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%r14d
	cmpl	%r14d, %edx
	cmovgel	%edx, %r14d
	incl	%r14d
	imull	$7, %r15d, %eax
	cltq
	leaq	27(%rax,%rdi), %rax
	.align	16, 0x90
.LBB0_40:                               # %do.body.248
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -27(%rax)
	movb	%dl, -20(%rax)
	movb	%dl, -13(%rax)
	movb	%dl, -6(%rax)
	movb	%r12b, -26(%rax)
	movb	%r12b, -19(%rax)
	movb	%r12b, -12(%rax)
	movb	%r12b, -5(%rax)
	movq	64(%rsp), %rdx          # 8-byte Reload
	movb	%dl, -25(%rax)
	movb	%dl, -18(%rax)
	movb	%dl, -11(%rax)
	movb	%dl, -4(%rax)
	movb	%r9b, -24(%rax)
	movb	%r9b, -17(%rax)
	movb	%r9b, -10(%rax)
	movb	%r9b, -3(%rax)
	movl	60(%rsp), %edx          # 4-byte Reload
	movb	%dl, -23(%rax)
	movb	%dl, -16(%rax)
	movb	%dl, -9(%rax)
	movb	%dl, -2(%rax)
	movl	92(%rsp), %edx          # 4-byte Reload
	movb	%dl, -22(%rax)
	movb	%dl, -15(%rax)
	movb	%dl, -8(%rax)
	movb	%dl, -1(%rax)
	movb	%r11b, -21(%rax)
	movb	%r11b, -14(%rax)
	movb	%r11b, -7(%rax)
	movb	%r11b, (%rax)
	addq	%rcx, %rax
	incl	%r14d
	jne	.LBB0_40
.LBB0_47:                               # %cleanup
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mem_true56_fill_rectangle, .Lfunc_end0-mem_true56_fill_rectangle
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_45
	.quad	.LBB0_43
	.quad	.LBB0_41
	.quad	.LBB0_39

	.text
	.align	16, 0x90
	.type	mem_true56_copy_mono,@function
mem_true56_copy_mono:                   # @mem_true56_copy_mono
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
	movl	%r9d, %r10d
	movl	%ecx, -64(%rsp)         # 4-byte Spill
	movq	%rsi, %r12
	movl	72(%rsp), %eax
	movl	64(%rsp), %r14d
	movl	56(%rsp), %esi
	movl	%esi, %ecx
	orl	%r10d, %ecx
	js	.LBB1_2
# BB#1:
	movl	%esi, %ecx
	jmp	.LBB1_5
.LBB1_2:                                # %if.then
	movl	%r10d, %ebp
	sarl	$31, %ebp
	andl	%r10d, %ebp
	leal	(%r14,%rbp), %r14d
	xorl	%ecx, %ecx
	testl	%r10d, %r10d
	cmovsl	%ecx, %r10d
	subl	%ebp, %edx
	testl	%esi, %esi
	js	.LBB1_4
# BB#3:
	movl	%esi, %ecx
	jmp	.LBB1_5
.LBB1_4:                                # %if.then.5
	addl	%esi, %eax
	imull	-64(%rsp), %esi         # 4-byte Folded Reload
	movslq	%esi, %rsi
	subq	%rsi, %r12
.LBB1_5:                                # %if.end.8
	movl	832(%rdi), %r9d
	movl	836(%rdi), %r15d
	movl	%r9d, %ebp
	subl	%r10d, %ebp
	cmpl	%ebp, %r14d
	cmovlel	%r14d, %ebp
	subl	%ecx, %r15d
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	testl	%ebp, %ebp
	jle	.LBB1_56
# BB#6:                                 # %if.end.8
	testl	%r15d, %r15d
	jle	.LBB1_56
# BB#7:                                 # %do.end.26
	movq	88(%rsp), %rsi
	movq	80(%rsp), %r11
	movl	1736(%rdi), %eax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r8
	imull	$7, %r10d, %eax
	cltq
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rbx
	leaq	(%r12,%rbx), %rax
	andl	$7, %edx
	movl	$128, %edi
	movb	%dl, %cl
	shrl	%cl, %edi
	movq	%rdi, -80(%rsp)         # 8-byte Spill
	cmpq	$-1, %r11
	movq	%r11, %rcx
	je	.LBB1_19
# BB#8:                                 # %if.then.34
	testl	%r15d, %r15d
	movq	%rax, %rdi
	jle	.LBB1_56
# BB#9:                                 # %while.body.lr.ph
	movq	%rcx, %rbx
	movq	%rbx, %rax
	shrq	$40, %rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movq	%rbx, %rax
	shrq	$48, %rax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movq	%rbx, %rax
	shrq	$32, %rax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	shrl	$24, %eax
	movl	%eax, -40(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	shrl	$16, %eax
	movl	%eax, -48(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	movl	%r9d, %r11d
	shrl	$8, %eax
	movl	%eax, -56(%rsp)         # 4-byte Spill
	movq	%rsi, %rax
	shrq	$40, %rax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	%rsi, %rax
	shrq	$48, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movl	%esi, %r13d
	shrl	$24, %r13d
	movq	-72(%rsp), %rax         # 8-byte Reload
	leaq	6(%rax,%r8), %rcx
	movl	%esi, %eax
	shrl	$16, %eax
	decl	%r10d
	subl	%r11d, %r10d
	movl	%r10d, %r8d
	movl	%esi, %r10d
	movq	%rsi, %rbp
	shrl	$8, %r10d
	notl	%r14d
	cmpl	%r14d, %r8d
	cmovgel	%r8d, %r14d
	movslq	-64(%rsp), %rsi         # 4-byte Folded Reload
	movq	%rsi, -112(%rsp)        # 8-byte Spill
	negl	%r14d
	movq	%r14, -96(%rsp)         # 8-byte Spill
	movq	-24(%rsp), %r9          # 8-byte Reload
	.align	16, 0x90
.LBB1_10:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	movq	%r15, -64(%rsp)         # 8-byte Spill
	leaq	1(%rdi), %r8
	movzbl	(%rdi), %r12d
	movl	%r14d, %r11d
	movq	%rcx, %r14
	movq	-80(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %r15d
	movq	%rbx, %rsi
	movq	-104(%rsp), %rbx        # 8-byte Reload
	.align	16, 0x90
.LBB1_11:                               # %do.body.75
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r12d, %r15d
	je	.LBB1_14
# BB#12:                                # %if.then.77
                                        #   in Loop: Header=BB1_11 Depth=2
	cmpq	$-1, %rbp
	je	.LBB1_15
# BB#13:                                # %if.then.80
                                        #   in Loop: Header=BB1_11 Depth=2
	movq	-16(%rsp), %rcx         # 8-byte Reload
	movb	%cl, -6(%r14)
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movb	%cl, -5(%r14)
	movb	%dl, -4(%r14)
	movb	%r13b, -3(%r14)
	movb	%al, -2(%r14)
	movb	%r10b, -1(%r14)
	movb	%bpl, (%r14)
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_14:                               # %if.else
                                        #   in Loop: Header=BB1_11 Depth=2
	movb	%r9b, -6(%r14)
	movb	%bl, -5(%r14)
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movb	%cl, -4(%r14)
	movl	-40(%rsp), %ecx         # 4-byte Reload
	movb	%cl, -3(%r14)
	movl	-48(%rsp), %ecx         # 4-byte Reload
	movb	%cl, -2(%r14)
	movl	-56(%rsp), %ecx         # 4-byte Reload
	movb	%cl, -1(%r14)
	movb	%sil, (%r14)
.LBB1_15:                               # %if.end.96
                                        #   in Loop: Header=BB1_11 Depth=2
	sarl	%r15d
	jne	.LBB1_17
# BB#16:                                # %if.then.101
                                        #   in Loop: Header=BB1_11 Depth=2
	movzbl	(%r8), %r12d
	incq	%r8
	movl	$128, %r15d
.LBB1_17:                               # %do.cond.105
                                        #   in Loop: Header=BB1_11 Depth=2
	addq	$7, %r14
	decl	%r11d
	cmpl	$1, %r11d
	jg	.LBB1_11
# BB#18:                                # %do.end.109
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	%rsi, %rbx
	addq	-112(%rsp), %rdi        # 8-byte Folded Reload
	movq	-72(%rsp), %rcx         # 8-byte Reload
	addq	-88(%rsp), %rcx         # 8-byte Folded Reload
	movq	-64(%rsp), %rsi         # 8-byte Reload
	cmpl	$1, %esi
	leal	-1(%rsi), %esi
	movl	%esi, %r15d
	movq	-96(%rsp), %r14         # 8-byte Reload
	jg	.LBB1_10
	jmp	.LBB1_56
.LBB1_19:                               # %if.else.114
	movq	%rbx, -16(%rsp)         # 8-byte Spill
	cmpq	$-1, %rsi
	movq	%rsi, %rdi
	movq	%rax, %r11
	je	.LBB1_56
# BB#20:                                # %if.then.117
	movq	-80(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rax), %eax
	movq	%rbp, %rcx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	leal	(%rcx,%rdx), %esi
	movl	$8, %r13d
	subl	%edx, %r13d
	sarl	%cl, %eax
	negl	%eax
	cmpl	$8, %esi
	movl	$-1, %esi
	cmovlel	%eax, %esi
	cmovlel	%ecx, %r13d
	testl	%r15d, %r15d
	jle	.LBB1_56
# BB#21:                                # %while.body.159.lr.ph
	addq	-72(%rsp), %r8          # 8-byte Folded Reload
	movq	%r8, -8(%rsp)           # 8-byte Spill
	movq	%rdi, %rcx
	shrq	$40, %rcx
	movq	%rdi, %rax
	shrq	$48, %rax
	movq	%rdi, %rbp
	shrq	$32, %rbp
	movl	%edi, %r8d
	shrl	$24, %r8d
	movl	%r9d, %ebx
	movl	%r10d, %r9d
	movq	%r12, -24(%rsp)         # 8-byte Spill
	movq	%r14, %r10
	movl	%edi, %r14d
	shrl	$16, %r14d
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	movl	%edi, %esi
	movq	%rdi, %r12
	shrl	$8, %esi
	movq	-32(%rsp), %rdi         # 8-byte Reload
	subl	%r13d, %edi
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	imull	$7, %r13d, %r13d
	decl	%r9d
	subl	%ebx, %r9d
	notl	%r10d
	cmpl	%r10d, %r9d
	cmovgel	%r9d, %r10d
	movl	%r10d, %ebx
	subl	%edx, %ebx
	cmpl	$-10, %ebx
	movl	$-9, %edi
	cmovgl	%ebx, %edi
	leal	-8(%rdi,%rdx), %edi
	subl	%r10d, %edi
	shrl	$3, %edi
	movq	-16(%rsp), %rdx         # 8-byte Reload
	addq	%rdi, %rdx
	movq	-24(%rsp), %rbx         # 8-byte Reload
	leaq	2(%rbx,%rdx), %rdx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movq	-80(%rsp), %rdx         # 8-byte Reload
	movq	-40(%rsp), %rbx         # 8-byte Reload
	leal	(%rbx,%rdx,2), %r10d
	movslq	%r13d, %rdx
	movq	%rdx, -56(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %r13          # 8-byte Reload
	movslq	-64(%rsp), %rbx         # 4-byte Folded Reload
	movq	%rbx, -40(%rsp)         # 8-byte Spill
	imulq	$56, %rdi, %rdi
	addq	$56, %rdi
	movq	%rdi, -48(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_22:                               # %while.body.159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_52 Depth 2
	movq	%r13, -8(%rsp)          # 8-byte Spill
	movzbl	(%r11), %ebx
	andl	%r10d, %ebx
	movq	-80(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %edi
	movq	%r12, %rdx
	je	.LBB1_26
	.align	16, 0x90
.LBB1_23:                               # %do.body.171
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebx, %edi
	je	.LBB1_25
# BB#24:                                # %if.then.174
                                        #   in Loop: Header=BB1_23 Depth=2
	movb	%al, (%r13)
	movb	%cl, 1(%r13)
	movb	%bpl, 2(%r13)
	movb	%r8b, 3(%r13)
	movb	%r14b, 4(%r13)
	movb	%sil, 5(%r13)
	movb	%dl, 6(%r13)
.LBB1_25:                               # %if.end.182
                                        #   in Loop: Header=BB1_23 Depth=2
	addq	$7, %r13
	sarl	%edi
	testl	%r10d, %edi
	jne	.LBB1_23
	jmp	.LBB1_27
	.align	16, 0x90
.LBB1_26:                               # %if.else.189
                                        #   in Loop: Header=BB1_22 Depth=1
	movq	-8(%rsp), %rdi          # 8-byte Reload
	movq	-56(%rsp), %rbx         # 8-byte Reload
	leaq	(%rdi,%rbx), %r13
.LBB1_27:                               # %while.cond.193.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	movq	%r11, -16(%rsp)         # 8-byte Spill
	leaq	1(%r11), %r9
	movq	-32(%rsp), %rbx         # 8-byte Reload
	cmpl	$8, %ebx
	jl	.LBB1_28
# BB#29:                                # %while.body.196.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	movq	%r15, %rdi
	leaq	55(%r13), %r15
	movl	%ebx, %r12d
	.align	16, 0x90
.LBB1_30:                               # %while.body.196
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r9), %ebx
	testb	$-16, %bl
	je	.LBB1_39
# BB#31:                                # %if.then.201
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$-128, %bl
	je	.LBB1_33
# BB#32:                                # %if.then.204
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	%al, -55(%r15)
	movb	%cl, -54(%r15)
	movb	%bpl, -53(%r15)
	movb	%r8b, -52(%r15)
	movb	%r14b, -51(%r15)
	movb	%sil, -50(%r15)
	movb	%dl, -49(%r15)
.LBB1_33:                               # %if.end.212
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$64, %bl
	je	.LBB1_35
# BB#34:                                # %if.then.215
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	%al, -48(%r15)
	movb	%cl, -47(%r15)
	movb	%bpl, -46(%r15)
	movb	%r8b, -45(%r15)
	movb	%r14b, -44(%r15)
	movb	%sil, -43(%r15)
	movb	%dl, -42(%r15)
.LBB1_35:                               # %if.end.230
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$32, %bl
	je	.LBB1_37
# BB#36:                                # %if.then.233
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	%al, -41(%r15)
	movb	%cl, -40(%r15)
	movb	%bpl, -39(%r15)
	movb	%r8b, -38(%r15)
	movb	%r14b, -37(%r15)
	movb	%sil, -36(%r15)
	movb	%dl, -35(%r15)
.LBB1_37:                               # %if.end.248
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$16, %bl
	je	.LBB1_39
# BB#38:                                # %if.then.251
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	%al, -34(%r15)
	movb	%cl, -33(%r15)
	movb	%bpl, -32(%r15)
	movb	%r8b, -31(%r15)
	movb	%r14b, -30(%r15)
	movb	%sil, -29(%r15)
	movb	%dl, -28(%r15)
.LBB1_39:                               # %if.end.267
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$15, %bl
	je	.LBB1_48
# BB#40:                                # %if.then.270
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$8, %bl
	je	.LBB1_42
# BB#41:                                # %if.then.273
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	%al, -27(%r15)
	movb	%cl, -26(%r15)
	movb	%bpl, -25(%r15)
	movb	%r8b, -24(%r15)
	movb	%r14b, -23(%r15)
	movb	%sil, -22(%r15)
	movb	%dl, -21(%r15)
.LBB1_42:                               # %if.end.288
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$4, %bl
	je	.LBB1_44
# BB#43:                                # %if.then.291
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	%al, -20(%r15)
	movb	%cl, -19(%r15)
	movb	%bpl, -18(%r15)
	movb	%r8b, -17(%r15)
	movb	%r14b, -16(%r15)
	movb	%sil, -15(%r15)
	movb	%dl, -14(%r15)
.LBB1_44:                               # %if.end.306
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$2, %bl
	je	.LBB1_46
# BB#45:                                # %if.then.309
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	%al, -13(%r15)
	movb	%cl, -12(%r15)
	movb	%bpl, -11(%r15)
	movb	%r8b, -10(%r15)
	movb	%r14b, -9(%r15)
	movb	%sil, -8(%r15)
	movb	%dl, -7(%r15)
.LBB1_46:                               # %if.end.324
                                        #   in Loop: Header=BB1_30 Depth=2
	testb	$1, %bl
	je	.LBB1_48
# BB#47:                                # %if.then.327
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	%al, -6(%r15)
	movb	%cl, -5(%r15)
	movb	%bpl, -4(%r15)
	movb	%r8b, -3(%r15)
	movb	%r14b, -2(%r15)
	movb	%sil, -1(%r15)
	movb	%dl, (%r15)
.LBB1_48:                               # %if.end.343
                                        #   in Loop: Header=BB1_30 Depth=2
	incq	%r9
	addl	$-8, %r12d
	addq	$56, %r15
	cmpl	$7, %r12d
	jg	.LBB1_30
# BB#49:                                # %while.cond.193.while.end.346_crit_edge
                                        #   in Loop: Header=BB1_22 Depth=1
	addq	-48(%rsp), %r13         # 8-byte Folded Reload
	movq	-24(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %r15
	jmp	.LBB1_50
	.align	16, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_22 Depth=1
	movl	%ebx, %r12d
.LBB1_50:                               # %while.end.346
                                        #   in Loop: Header=BB1_22 Depth=1
	testl	%r12d, %r12d
	jle	.LBB1_55
# BB#51:                                # %if.then.349
                                        #   in Loop: Header=BB1_22 Depth=1
	movzbl	(%r9), %ebx
	addq	$6, %r13
	incl	%r12d
	movl	$128, %edi
	.align	16, 0x90
.LBB1_52:                               # %do.body.353
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebx, %edi
	je	.LBB1_54
# BB#53:                                # %if.then.356
                                        #   in Loop: Header=BB1_52 Depth=2
	movb	%al, -6(%r13)
	movb	%cl, -5(%r13)
	movb	%bpl, -4(%r13)
	movb	%r8b, -3(%r13)
	movb	%r14b, -2(%r13)
	movb	%sil, -1(%r13)
	movb	%dl, (%r13)
.LBB1_54:                               # %if.end.364
                                        #   in Loop: Header=BB1_52 Depth=2
	sarl	%edi
	addq	$7, %r13
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB1_52
.LBB1_55:                               # %if.end.372
                                        #   in Loop: Header=BB1_22 Depth=1
	movq	%rdx, %r12
	movq	-16(%rsp), %r11         # 8-byte Reload
	movq	-40(%rsp), %rdi         # 8-byte Reload
	addq	%rdi, %r11
	movq	-8(%rsp), %r13          # 8-byte Reload
	addq	-88(%rsp), %r13         # 8-byte Folded Reload
	addq	%rdi, -24(%rsp)         # 8-byte Folded Spill
	cmpl	$1, %r15d
	leal	-1(%r15), %edi
	movl	%edi, %r15d
	jg	.LBB1_22
.LBB1_56:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mem_true56_copy_mono, .Lfunc_end1-mem_true56_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true56_copy_color,@function
mem_true56_copy_color:                  # @mem_true56_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rsi, %r10
	movl	32(%rsp), %r8d
	movl	24(%rsp), %ebx
	movl	16(%rsp), %eax
	movl	%eax, %esi
	orl	%r9d, %esi
	js	.LBB2_2
# BB#1:
	movl	%eax, %r11d
	movl	%ebx, %esi
	jmp	.LBB2_5
.LBB2_2:                                # %if.then
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	subl	%esi, %edx
	xorl	%r11d, %r11d
	testl	%r9d, %r9d
	cmovsl	%r11d, %r9d
	addl	%ebx, %esi
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:
	movl	%eax, %r11d
	jmp	.LBB2_5
.LBB2_4:                                # %if.then.5
	addl	%eax, %r8d
	imull	%ecx, %eax
	cltq
	subq	%rax, %r10
.LBB2_5:                                # %if.end.8
	movl	832(%rdi), %ebx
	movl	836(%rdi), %eax
	subl	%r9d, %ebx
	cmpl	%ebx, %esi
	cmovlel	%esi, %ebx
	subl	%r11d, %eax
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%ebx, %ebx
	jle	.LBB2_8
# BB#6:                                 # %if.end.8
	testl	%eax, %eax
	jle	.LBB2_8
# BB#7:                                 # %do.end.26
	movslq	%r11d, %r8
	movq	2576(%rdi), %r11
	imull	$7, %r9d, %esi
	movslq	%esi, %r9
	addq	(%r11,%r8,8), %r9
	movl	1736(%rdi), %esi
	imull	$7, %edx, %edx
	movslq	%edx, %rdx
	addq	%rdx, %r10
	imull	$7, %ebx, %r8d
	movq	%r9, %rdi
	movq	%r10, %rdx
	movl	%eax, %r9d
	callq	bytes_copy_rectangle
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	mem_true56_copy_color, .Lfunc_end2-mem_true56_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem56_word_fill_rectangle,@function
mem56_word_fill_rectangle:              # @mem56_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 80
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
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
	imull	$56, %r13d, %edx
	movl	%edx, (%rsp)            # 4-byte Spill
	imull	$56, %ebx, %r14d
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
	callq	mem_true56_fill_rectangle
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
	.size	mem56_word_fill_rectangle, .Lfunc_end3-mem56_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem56_word_copy_mono,@function
mem56_word_copy_mono:                   # @mem56_word_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 144
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%rdi, %r13
	movl	160(%rsp), %r9d
	movl	152(%rsp), %edi
	movl	144(%rsp), %eax
	movl	%eax, %ebp
	orl	%ebx, %ebp
	jns	.LBB4_1
# BB#2:                                 # %if.then
	movl	%ebx, %ebp
	sarl	$31, %ebp
	andl	%ebx, %ebp
	leal	(%rdi,%rbp), %edi
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	cmovsl	%r15d, %ebx
	subl	%ebp, %edx
	testl	%eax, %eax
	js	.LBB4_3
.LBB4_1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, %r15d
.LBB4_4:                                # %if.end.8
	movl	832(%r13), %r12d
	movl	836(%r13), %r14d
	subl	%ebx, %r12d
	cmpl	%r12d, %edi
	cmovlel	%edi, %r12d
	subl	%r15d, %r14d
	cmpl	%r14d, %r9d
	cmovlel	%r9d, %r14d
	testl	%r12d, %r12d
	jle	.LBB4_7
# BB#5:                                 # %if.end.8
	testl	%r14d, %r14d
	jle	.LBB4_7
# BB#6:                                 # %do.end.26
	movslq	%r15d, %rax
	movq	2576(%r13), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	1736(%r13), %esi
	movl	%esi, 52(%rsp)          # 4-byte Spill
	cmpq	$-1, 168(%rsp)
	setne	%al
	cmpq	$-1, 176(%rsp)
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r9d
	imull	$56, %ebx, %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	imull	$56, %r12d, %ebp
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
	movq	176(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	%r13, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	mem_true56_copy_mono
	xorl	%r9d, %r9d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	48(%rsp), %edx          # 4-byte Reload
	movl	%ebp, %ecx
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
	addl	%eax, %r9d
	imull	%ecx, %eax
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movslq	%eax, %rdx
	subq	%rdx, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB4_4
.Lfunc_end4:
	.size	mem56_word_copy_mono, .Lfunc_end4-mem56_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem56_word_copy_color,@function
mem56_word_copy_color:                  # @mem56_word_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 80
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movl	96(%rsp), %r8d
	movl	88(%rsp), %r10d
	movl	80(%rsp), %ebx
	movl	%ebx, %eax
	orl	%r9d, %eax
	js	.LBB5_2
# BB#1:
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%r9d, %r12d
	movl	%ebx, %eax
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	xorl	%eax, %eax
	testl	%r9d, %r9d
	movl	%r9d, %r12d
	cmovsl	%eax, %r12d
	andl	%r9d, %ebp
	leal	(%r10,%rbp), %r10d
	subl	%ebp, %edx
	testl	%ebx, %ebx
	js	.LBB5_4
# BB#3:
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	movl	%edx, 4(%rsp)           # 4-byte Spill
	addl	%ebx, %r8d
	imull	%ecx, %ebx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movslq	%ebx, %rcx
	subq	%rcx, %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
.LBB5_5:                                # %if.end.8
	movl	832(%rdi), %r14d
	movl	836(%rdi), %ebp
	subl	%r12d, %r14d
	cmpl	%r14d, %r10d
	cmovlel	%r10d, %r14d
	subl	%eax, %ebp
	cmpl	%ebp, %r8d
	cmovlel	%r8d, %ebp
	testl	%r14d, %r14d
	jle	.LBB5_8
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB5_8
# BB#7:                                 # %do.end.26
	cltq
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r13
	movl	1736(%rdi), %ebx
	imull	$56, %r12d, %edx
	movl	%edx, (%rsp)            # 4-byte Spill
	imull	$56, %r14d, %r15d
	movl	$1, %r9d
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
	imull	$7, %r12d, %eax
	cltq
	leaq	(%rax,%r13), %rdi
	imull	$7, 4(%rsp), %eax       # 4-byte Folded Reload
	cltq
	movq	8(%rsp), %rdx           # 8-byte Reload
	addq	%rax, %rdx
	imull	$7, %r14d, %r8d
	movl	%ebx, %esi
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r9d
	callq	bytes_copy_rectangle
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	(%rsp), %edx            # 4-byte Reload
	movl	%r15d, %ecx
	movl	%ebp, %r8d
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
	.size	mem56_word_copy_color, .Lfunc_end5-mem56_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image56"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	mem_true56_device,@object # @mem_true56_device
	.section	.rodata,"a",@progbits
	.globl	mem_true56_device
	.align	8
mem_true56_device:
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
	.short	56                      # 0x38
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
	.quad	mem_true56_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_true56_copy_mono
	.quad	mem_true56_copy_color
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
	.size	mem_true56_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image56w"
	.size	.L.str.2, 9

	.type	mem_true56_word_device,@object # @mem_true56_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_true56_word_device
	.align	8
mem_true56_word_device:
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
	.short	56                      # 0x38
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
	.quad	mem56_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem56_word_copy_mono
	.quad	mem56_word_copy_color
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
	.size	mem_true56_word_device, 2792


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
