	.text
	.file	"dwt.bc"
	.globl	opj_dwt_encode
	.align	16, 0x90
	.type	opj_dwt_encode,@function
opj_dwt_encode:                         # @opj_dwt_encode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$opj_dwt_encode_1, %esi
	jmp	opj_dwt_encode_procedure # TAILCALL
.Lfunc_end0:
	.size	opj_dwt_encode, .Lfunc_end0-opj_dwt_encode
	.cfi_endproc

	.align	16, 0x90
	.type	opj_dwt_encode_procedure,@function
opj_dwt_encode_procedure:               # @opj_dwt_encode_procedure
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp6:
	.cfi_def_cfa_offset 336
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
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movl	(%rdi), %r14d
	movl	8(%rdi), %ebx
	movl	16(%rdi), %r13d
	xorl	%ecx, %ecx
	movl	%r13d, %r15d
	decl	%r15d
	movq	40(%rdi), %rax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movq	24(%rdi), %rbp
	je	.LBB1_8
# BB#1:                                 # %while.body.i.preheader
	testb	$1, %r13b
	jne	.LBB1_2
# BB#3:                                 # %while.body.i.prol
	leaq	176(%rbp), %rax
	movl	184(%rbp), %edx
	movl	188(%rbp), %ecx
	subl	176(%rbp), %edx
	subl	180(%rbp), %ecx
	cmpl	%ecx, %edx
	cmovael	%edx, %ecx
	leal	-2(%r13), %edx
	jmp	.LBB1_4
.LBB1_2:
	xorl	%ecx, %ecx
	movl	%r15d, %edx
	movq	%rbp, %rax
.LBB1_4:                                # %while.body.i.preheader.split
	cmpl	$2, %r13d
	je	.LBB1_7
# BB#5:                                 # %while.body.i.preheader.split.split
	addq	$364, %rax              # imm = 0x16C
	.align	16, 0x90
.LBB1_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-180(%rax), %esi
	movl	-176(%rax), %edi
	subl	-188(%rax), %esi
	cmpl	%esi, %ecx
	cmovael	%ecx, %esi
	subl	-184(%rax), %edi
	cmpl	%edi, %esi
	cmovael	%esi, %edi
	movl	-4(%rax), %esi
	subl	-12(%rax), %esi
	cmpl	%esi, %edi
	cmovael	%edi, %esi
	movl	(%rax), %ecx
	subl	-8(%rax), %ecx
	cmpl	%ecx, %esi
	cmovael	%esi, %ecx
	addq	$352, %rax              # imm = 0x160
	addl	$-2, %edx
	jne	.LBB1_6
.LBB1_7:                                # %opj_dwt_max_resolution.exit
	shll	$2, %ecx
	xorl	%eax, %eax
	cmpl	$-257, %ecx             # imm = 0xFFFFFFFFFFFFFEFF
	ja	.LBB1_68
.LBB1_8:                                # %cond.end
	movslq	%ecx, %rdi
	callq	malloc
	movq	%rax, %r12
	testq	%r12, %r12
	movl	$0, %eax
	je	.LBB1_68
# BB#9:                                 # %while.cond.preheader
	testl	%r15d, %r15d
	je	.LBB1_67
# BB#10:                                # %while.body.lr.ph
	subl	%r14d, %ebx
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movslq	%r15d, %rax
	imulq	$176, %rax, %rax
	addq	%rax, %rbp
	addl	$-2, %r13d
	leaq	4(%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	%ebx, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	(,%rax,4), %r14
	leaq	12(%r12), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rax, %r9
	shlq	$4, %r9
	movq	%r9, 232(%rsp)          # 8-byte Spill
	movq	264(%rsp), %rax         # 8-byte Reload
	leaq	48(%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	48(%r12), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB1_12:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_22 Depth 3
                                        #       Child Loop BB1_24 Depth 3
                                        #       Child Loop BB1_28 Depth 3
                                        #       Child Loop BB1_31 Depth 3
                                        #     Child Loop BB1_35 Depth 2
                                        #       Child Loop BB1_43 Depth 3
                                        #       Child Loop BB1_48 Depth 3
                                        #       Child Loop BB1_50 Depth 3
                                        #       Child Loop BB1_53 Depth 3
                                        #       Child Loop BB1_56 Depth 3
                                        #       Child Loop BB1_61 Depth 3
                                        #       Child Loop BB1_65 Depth 3
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	8(%rbp), %r8d
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movl	(%rbp), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	subl	%eax, %r8d
	movq	%r8, 248(%rsp)          # 8-byte Spill
	movl	12(%rbp), %ecx
	movl	4(%rbp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movq	%rdx, 272(%rsp)         # 8-byte Spill
	movl	-168(%rbp), %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	-176(%rbp), %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	testl	%r8d, %r8d
	jle	.LBB1_33
# BB#13:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	-172(%rdx), %edi
	movq	%rdi, 208(%rsp)         # 8-byte Spill
	movl	-164(%rdx), %ebp
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%ebp, %r10d
	subl	%edi, %r10d
	movl	%eax, %ebx
	andl	$1, %ebx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	272(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %r8
	movl	%r8d, %edx
	subl	%r10d, %edx
	movl	%edx, 224(%rsp)         # 4-byte Spill
	leaq	(,%rbx,4), %rdx
	movq	16(%rsp), %rsi          # 8-byte Reload
	subq	%rdx, %rsi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movl	%r10d, %edx
	imull	12(%rsp), %edx          # 4-byte Folded Reload
	movslq	%edx, %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leal	-1(%rcx), %esi
	subl	%eax, %esi
	movl	%esi, 184(%rsp)         # 4-byte Spill
	leal	-1(%rbp), %esi
	subl	%edi, %esi
	movl	%esi, 160(%rsp)         # 4-byte Spill
	leal	(%rdi,%rcx), %esi
	subl	%ebp, %esi
	subl	%eax, %esi
	leal	-1(%rdi,%rcx), %ecx
	subl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movl	%r8d, %ecx
	andl	$3, %ecx
	movl	%ecx, 176(%rsp)         # 4-byte Spill
	andl	$3, %esi
	movl	%esi, 156(%rsp)         # 4-byte Spill
	movl	%r10d, %ecx
	andl	$3, %ecx
	movl	%ecx, 148(%rsp)         # 4-byte Spill
	andl	$1, %eax
	shlq	$2, %rax
	movq	%r12, %rdi
	subq	%rax, %rdi
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movl	%r8d, %r15d
	andl	$3, %r15d
	negl	%ecx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	negl	%esi
	movl	%esi, 120(%rsp)         # 4-byte Spill
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	264(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx,4), %rbp
	movq	%rax, %r11
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB1_14:                               # %for.body
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_22 Depth 3
                                        #       Child Loop BB1_24 Depth 3
                                        #       Child Loop BB1_28 Depth 3
                                        #       Child Loop BB1_31 Depth 3
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movq	272(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB1_20
# BB#15:                                # %for.body.38.preheader
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$0, 176(%rsp)           # 4-byte Folded Reload
	movq	%r11, %rcx
	movl	$0, %eax
	je	.LBB1_17
	.align	16, 0x90
.LBB1_16:                               # %for.body.38.prol
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %edx
	movl	%edx, (%r12,%rax,4)
	incq	%rax
	addq	%r14, %rcx
	cmpl	%eax, %r15d
	jne	.LBB1_16
.LBB1_17:                               # %for.body.38.preheader.split
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$3, 184(%rsp)           # 4-byte Folded Reload
	jb	.LBB1_20
# BB#18:                                # %for.body.38.preheader.split.split
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	272(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rax,4), %rdx
	leaq	3(%rax), %r8
	imulq	%r14, %r8
	leaq	2(%rax), %rdi
	imulq	%r14, %rdi
	movq	%r14, %rbp
	imulq	%rax, %rbp
	incq	%rax
	imulq	%r14, %rax
	movq	%r11, %rbx
	.align	16, 0x90
.LBB1_19:                               # %for.body.38
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbp,%rbx), %esi
	movl	%esi, -12(%rdx)
	movl	(%rax,%rbx), %esi
	movl	%esi, -8(%rdx)
	movl	(%rdi,%rbx), %esi
	movl	%esi, -4(%rdx)
	movl	(%r8,%rbx), %esi
	movl	%esi, (%rdx)
	addq	$16, %rdx
	addq	%r9, %rbx
	addl	$-4, %ecx
	jne	.LBB1_19
.LBB1_20:                               # %for.end
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	264(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r13,4), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	movl	224(%rsp), %esi         # 4-byte Reload
	movl	%r10d, %edx
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	%r10d, %ebp
	movq	%r11, %rbx
	callq	*240(%rsp)              # 8-byte Folded Reload
	movq	%rbx, %r11
	movl	%ebp, %r10d
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, %ecx
	je	.LBB1_25
# BB#21:                                # %while.body.i.89.preheader
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	movl	128(%rsp), %esi         # 4-byte Reload
	movq	%r11, %rdi
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%r10d, %ecx
	movq	216(%rsp), %rdx         # 8-byte Reload
	je	.LBB1_23
	.align	16, 0x90
.LBB1_22:                               # %while.body.i.89.prol
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	decl	%ecx
	movl	(%rax), %edx
	movl	%edx, (%rdi)
	addq	$8, %rax
	addq	%r14, %rdi
	incl	%esi
	movq	%rdi, %rdx
	jne	.LBB1_22
.LBB1_23:                               # %while.body.i.89.preheader.split
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$3, 160(%rsp)           # 4-byte Folded Reload
	jb	.LBB1_25
	.align	16, 0x90
.LBB1_24:                               # %while.body.i.89
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %esi
	movl	%esi, (%rdx)
	movl	8(%rax), %esi
	movl	%esi, (%rdx,%r14)
	addq	%r14, %rdx
	movl	16(%rax), %esi
	movl	%esi, (%r14,%rdx)
	addq	%r14, %rdx
	movl	24(%rax), %esi
	movl	%esi, (%r14,%rdx)
	leaq	(%rdx,%r14), %rdx
	addq	%r14, %rdx
	addl	$-4, %ecx
	leaq	32(%rax), %rax
	jne	.LBB1_24
.LBB1_25:                               # %while.end.i
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	272(%rsp), %rax         # 8-byte Reload
	cmpl	%r10d, %eax
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	248(%rsp), %r8          # 8-byte Reload
	movq	256(%rsp), %rbp         # 8-byte Reload
	je	.LBB1_32
# BB#26:                                # %while.body.12.lr.ph.i
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$0, 156(%rsp)           # 4-byte Folded Reload
	movl	120(%rsp), %esi         # 4-byte Reload
	movq	%rbp, %rax
	movq	136(%rsp), %rdi         # 8-byte Reload
	movl	224(%rsp), %ecx         # 4-byte Reload
	je	.LBB1_27
	.align	16, 0x90
.LBB1_28:                               # %while.body.12.i.prol
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdi, %rdx
	decl	%ecx
	movl	4(%rdx), %edi
	movl	%edi, (%rax)
	leaq	8(%rdx), %rdi
	addq	%r14, %rax
	incl	%esi
	jne	.LBB1_28
# BB#29:                                #   in Loop: Header=BB1_14 Depth=2
	addq	$12, %rdx
	jmp	.LBB1_30
.LBB1_27:                               #   in Loop: Header=BB1_14 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %rax
	movq	104(%rsp), %rdx         # 8-byte Reload
	movl	224(%rsp), %ecx         # 4-byte Reload
.LBB1_30:                               # %while.body.12.lr.ph.i.split
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$3, 152(%rsp)           # 4-byte Folded Reload
	jb	.LBB1_32
	.align	16, 0x90
.LBB1_31:                               # %while.body.12.i
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rdx), %esi
	movl	%esi, (%rax)
	movl	8(%rdx), %esi
	movl	%esi, (%rax,%r14)
	addq	%r14, %rax
	movl	16(%rdx), %esi
	movl	%esi, (%r14,%rax)
	addq	%r14, %rax
	movl	24(%rdx), %esi
	movl	%esi, (%r14,%rax)
	leaq	(%rax,%r14), %rax
	addq	%r14, %rax
	addl	$-4, %ecx
	leaq	32(%rdx), %rdx
	jne	.LBB1_31
.LBB1_32:                               # %opj_dwt_deinterleave_v.exit
                                        #   in Loop: Header=BB1_14 Depth=2
	incq	%r13
	addq	$4, %r11
	addq	$4, %rbp
	cmpl	%r8d, %r13d
	jne	.LBB1_14
.LBB1_33:                               # %for.end.44
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	272(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB1_11
# BB#34:                                # %for.body.49.lr.ph
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	56(%rsp), %r13          # 8-byte Reload
	movl	%r13d, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %edx
	movq	88(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %r11d
	andl	$1, %r11d
	movq	%r11, 200(%rsp)         # 8-byte Spill
	movl	%r8d, %r10d
	subl	%edx, %r10d
	movl	%r10d, 192(%rsp)        # 4-byte Spill
	leaq	(,%r11,4), %rax
	movq	16(%rsp), %r9           # 8-byte Reload
	movq	%r9, %rdi
	subq	%rax, %rdi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movq	72(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rcx), %edi
	subl	%ebp, %edi
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	leaq	1(%rdi), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	%rax, %rbx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbx
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	leaq	-8(%rbx), %rax
	shrq	$3, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	1(%rcx), %ebx
	subl	%ebp, %ebx
	movl	%ebx, 104(%rsp)         # 4-byte Spill
	leal	-1(%r13), %ebx
	subl	%esi, %ebx
	movl	%ebx, 156(%rsp)         # 4-byte Spill
	leal	(%rsi,%rcx), %ebx
	subl	%r13d, %ebx
	subl	%ebp, %ebx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	leal	-1(%rsi,%rcx), %ecx
	subl	%r13d, %ecx
	subl	%ebp, %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	andl	$1, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	andl	$1, %ebp
	shlq	$2, %rbp
	subq	%rbp, %r9
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movl	%edx, %r15d
	andl	$7, %r15d
	movl	%ebx, %eax
	andl	$7, %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	andl	$7, %ebx
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	leaq	(%r12,%r11,4), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	leaq	(%r12,%rdi,4), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	(,%rax,4), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	264(%rsp), %r13         # 8-byte Reload
	movq	(%rsp), %rbp            # 8-byte Reload
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_35:                               # %for.body.49
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_43 Depth 3
                                        #       Child Loop BB1_48 Depth 3
                                        #       Child Loop BB1_50 Depth 3
                                        #       Child Loop BB1_53 Depth 3
                                        #       Child Loop BB1_56 Depth 3
                                        #       Child Loop BB1_61 Depth 3
                                        #       Child Loop BB1_65 Depth 3
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	168(%rsp), %rcx         # 8-byte Reload
	imulq	%rdx, %rcx
	movq	264(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	testl	%r8d, %r8d
	jle	.LBB1_51
# BB#36:                                # %overflow.checked
                                        #   in Loop: Header=BB1_35 Depth=2
	cmpq	$0, 208(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	je	.LBB1_45
# BB#37:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_35 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	movq	264(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %rax
	cmpq	%rax, %r12
	ja	.LBB1_39
# BB#38:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_35 Depth=2
	movq	256(%rsp), %rax         # 8-byte Reload
	cmpq	88(%rsp), %rax          # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB1_45
.LBB1_39:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_35 Depth=2
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB1_41
# BB#40:                                # %vector.body.prol
                                        #   in Loop: Header=BB1_35 Depth=2
	movq	256(%rsp), %rax         # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm0, (%r12)
	movups	%xmm1, 16(%r12)
	movl	$8, %edx
.LBB1_41:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB1_35 Depth=2
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	movq	208(%rsp), %rax         # 8-byte Reload
	je	.LBB1_45
# BB#42:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB1_35 Depth=2
	movq	208(%rsp), %rax         # 8-byte Reload
	subq	%rdx, %rax
	leaq	(%rbp,%rdx,4), %rcx
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rdx,4), %rdx
	.align	16, 0x90
.LBB1_43:                               # %vector.body
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rcx), %xmm0
	movups	-32(%rcx), %xmm1
	movups	%xmm0, -48(%rdx)
	movups	%xmm1, -32(%rdx)
	movups	-16(%rcx), %xmm0
	movups	(%rcx), %xmm1
	movups	%xmm0, -16(%rdx)
	movups	%xmm1, (%rdx)
	addq	$64, %rcx
	addq	$64, %rdx
	addq	$-16, %rax
	jne	.LBB1_43
# BB#44:                                #   in Loop: Header=BB1_35 Depth=2
	movq	208(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB1_45:                               # %middle.block
                                        #   in Loop: Header=BB1_35 Depth=2
	cmpq	%rax, 160(%rsp)         # 8-byte Folded Reload
	je	.LBB1_51
# BB#46:                                # %for.body.56.preheader
                                        #   in Loop: Header=BB1_35 Depth=2
	movl	%eax, %edx
	orl	$1, %edx
	movl	104(%rsp), %edi         # 4-byte Reload
	movl	%edi, %esi
	subl	%edx, %esi
	movl	%r8d, %ecx
	subl	%edx, %ecx
	testb	$3, %sil
	je	.LBB1_49
# BB#47:                                # %for.body.56.prol.preheader
                                        #   in Loop: Header=BB1_35 Depth=2
	leaq	(%r13,%rax,4), %rdx
	movl	%edi, %esi
	leal	1(%rax), %edi
	subl	%edi, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB1_48:                               # %for.body.56.prol
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rdx), %edi
	movl	%edi, (%r12,%rax,4)
	incq	%rax
	addq	$4, %rdx
	incl	%esi
	jne	.LBB1_48
.LBB1_49:                               # %for.body.56.preheader.split
                                        #   in Loop: Header=BB1_35 Depth=2
	cmpl	$3, %ecx
	jb	.LBB1_51
	.align	16, 0x90
.LBB1_50:                               # %for.body.56
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r13,%rax,4), %ecx
	movl	%ecx, (%r12,%rax,4)
	movl	4(%r13,%rax,4), %ecx
	movl	%ecx, 4(%r12,%rax,4)
	movl	8(%r13,%rax,4), %ecx
	movl	%ecx, 8(%r12,%rax,4)
	movl	12(%r13,%rax,4), %ecx
	movl	%ecx, 12(%r12,%rax,4)
	addq	$4, %rax
	cmpl	%eax, %r8d
	jne	.LBB1_50
	.align	16, 0x90
.LBB1_51:                               # %for.end.63
                                        #   in Loop: Header=BB1_35 Depth=2
	movq	%rbp, 224(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	movl	%r10d, %esi
	movl	%ebx, %edx
	movq	200(%rsp), %rcx         # 8-byte Reload
	callq	*240(%rsp)              # 8-byte Folded Reload
	testl	%ebx, %ebx
	jle	.LBB1_57
# BB#52:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB1_35 Depth=2
	xorl	%esi, %esi
	testl	%r15d, %r15d
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	256(%rsp), %rcx         # 8-byte Reload
	je	.LBB1_54
	.align	16, 0x90
.LBB1_53:                               # %for.body.i.prol
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	movl	%edx, (%rcx)
	addq	$4, %rcx
	addq	$8, %rax
	incl	%esi
	cmpl	%esi, %r15d
	jne	.LBB1_53
.LBB1_54:                               # %for.body.i.preheader.split
                                        #   in Loop: Header=BB1_35 Depth=2
	cmpl	$7, 156(%rsp)           # 4-byte Folded Reload
	jb	.LBB1_57
# BB#55:                                # %for.body.i.preheader.split.split
                                        #   in Loop: Header=BB1_35 Depth=2
	movl	%ebx, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB1_56:                               # %for.body.i
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %esi
	movl	%esi, (%rcx)
	movl	8(%rax), %esi
	movl	%esi, 4(%rcx)
	movl	16(%rax), %esi
	movl	%esi, 8(%rcx)
	movl	24(%rax), %esi
	movl	%esi, 12(%rcx)
	movl	32(%rax), %esi
	movl	%esi, 16(%rcx)
	movl	40(%rax), %esi
	movl	%esi, 20(%rcx)
	movl	48(%rax), %esi
	movl	%esi, 24(%rcx)
	movl	56(%rax), %esi
	movl	%esi, 28(%rcx)
	addq	$64, %rax
	addq	$32, %rcx
	addl	$-8, %edx
	jne	.LBB1_56
.LBB1_57:                               # %for.end.i
                                        #   in Loop: Header=BB1_35 Depth=2
	movl	192(%rsp), %r10d        # 4-byte Reload
	testl	%r10d, %r10d
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	248(%rsp), %r8          # 8-byte Reload
	movq	184(%rsp), %r11         # 8-byte Reload
	movq	176(%rsp), %rbp         # 8-byte Reload
	jle	.LBB1_66
# BB#58:                                # %for.body.9.lr.ph.i
                                        #   in Loop: Header=BB1_35 Depth=2
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	je	.LBB1_59
# BB#60:                                # %for.body.9.i.prol.preheader
                                        #   in Loop: Header=BB1_35 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	128(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB1_61:                               # %for.body.9.i.prol
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdi, %rsi
	movl	(%r11,%rdx,8), %edi
	movl	%edi, (%rcx,%rdx,4)
	addq	$8, %rax
	incq	%rdx
	leaq	4(%rsi), %rdi
	cmpl	%edx, %ebp
	jne	.LBB1_61
# BB#62:                                #   in Loop: Header=BB1_35 Depth=2
	leaq	4(%rcx,%rsi), %rcx
	jmp	.LBB1_63
	.align	16, 0x90
.LBB1_59:                               #   in Loop: Header=BB1_35 Depth=2
	xorl	%edx, %edx
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	256(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %rcx
	movq	128(%rsp), %rax         # 8-byte Reload
.LBB1_63:                               # %for.body.9.lr.ph.i.split
                                        #   in Loop: Header=BB1_35 Depth=2
	cmpl	$7, 152(%rsp)           # 4-byte Folded Reload
	jb	.LBB1_66
# BB#64:                                # %for.body.9.lr.ph.i.split.split
                                        #   in Loop: Header=BB1_35 Depth=2
	movq	96(%rsp), %rsi          # 8-byte Reload
	subl	%edx, %esi
	.align	16, 0x90
.LBB1_65:                               # %for.body.9.i
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %edx
	movl	%edx, (%rcx)
	movl	8(%rax), %edx
	movl	%edx, 4(%rcx)
	movl	16(%rax), %edx
	movl	%edx, 8(%rcx)
	movl	24(%rax), %edx
	movl	%edx, 12(%rcx)
	movl	32(%rax), %edx
	movl	%edx, 16(%rcx)
	movl	40(%rax), %edx
	movl	%edx, 20(%rcx)
	movl	48(%rax), %edx
	movl	%edx, 24(%rcx)
	movl	56(%rax), %edx
	movl	%edx, 28(%rcx)
	addq	$64, %rax
	addq	$32, %rcx
	addl	$-8, %esi
	jne	.LBB1_65
.LBB1_66:                               # %opj_dwt_deinterleave_h.exit
                                        #   in Loop: Header=BB1_35 Depth=2
	movq	216(%rsp), %rdx         # 8-byte Reload
	incq	%rdx
	movq	224(%rsp), %rbp         # 8-byte Reload
	addq	%r14, %rbp
	addq	%r14, %r13
	movq	272(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %edx
	jne	.LBB1_35
.LBB1_11:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	48(%rsp), %rbp          # 8-byte Reload
	addq	$-176, %rbp
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	leal	-1(%rax), %eax
	movl	%eax, %r13d
	jne	.LBB1_12
.LBB1_67:                               # %while.end
	movq	%r12, %rdi
	callq	free
	movl	$1, %eax
.LBB1_68:                               # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_dwt_encode_procedure, .Lfunc_end1-opj_dwt_encode_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	opj_dwt_encode_1,@function
opj_dwt_encode_1:                       # @opj_dwt_encode_1
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	testl	%ecx, %ecx
	je	.LBB2_1
# BB#15:                                # %if.else
	cmpl	$1, %esi
	jne	.LBB2_17
# BB#16:                                # %if.else
	testl	%edx, %edx
	jne	.LBB2_17
# BB#22:                                # %if.then.98
	shll	(%rdi)
	jmp	.LBB2_30
.LBB2_1:                                # %if.then
	testl	%esi, %esi
	jg	.LBB2_3
# BB#2:                                 # %if.then
	cmpl	$2, %edx
	jl	.LBB2_30
.LBB2_3:                                # %for.cond.preheader
	testl	%esi, %esi
	jle	.LBB2_10
# BB#4:                                 # %for.body.lr.ph
	leal	-2(%rdx,%rdx), %eax
	cltq
	leaq	(%rdi,%rax,4), %r9
	movslq	%edx, %r10
	movl	%esi, %r8d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_5:                                # %cond.false
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rax
	movq	%r9, %rcx
	jge	.LBB2_7
# BB#6:                                 # %cond.false.8
                                        #   in Loop: Header=BB2_5 Depth=1
	movslq	%ebx, %rcx
	leaq	(%rdi,%rcx,4), %rcx
.LBB2_7:                                # %cond.false.17
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	(%rcx), %ebp
	incq	%rax
	cmpq	%r10, %rax
	movq	%r9, %rcx
	jge	.LBB2_9
# BB#8:                                 # %cond.false.25
                                        #   in Loop: Header=BB2_5 Depth=1
	leal	2(%rbx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx,4), %rcx
.LBB2_9:                                # %cond.end.32
                                        #   in Loop: Header=BB2_5 Depth=1
	addl	(%rcx), %ebp
	sarl	%ebp
	leal	1(%rbx), %ecx
	movslq	%ecx, %rcx
	subl	%ebp, (%rdi,%rcx,4)
	addl	$2, %ebx
	cmpl	%eax, %r8d
	jne	.LBB2_5
.LBB2_10:                               # %for.cond.40.preheader
	testl	%edx, %edx
	jle	.LBB2_30
# BB#11:                                # %for.body.42.lr.ph
	leaq	4(%rdi), %r8
	leal	-1(%rsi,%rsi), %r9d
	movslq	%esi, %rax
	movl	%edx, %r10d
	movl	$1, %ebx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_12:                               # %for.body.42
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	movq	%r8, %rbp
	jle	.LBB2_14
# BB#13:                                # %cond.false.47
                                        #   in Loop: Header=BB2_12 Depth=1
	cmpq	%rax, %rdx
	movl	%edx, %ecx
	cmovgl	%esi, %ecx
	leal	-1(%rcx,%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx,4), %rbp
.LBB2_14:                               # %cond.false.69
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	(%rbp), %ecx
	cmpq	%rax, %rdx
	movl	%r9d, %ebp
	cmovll	%ebx, %ebp
	movslq	%ebp, %rbp
	movl	(%rdi,%rbp,4), %ebp
	leal	2(%rcx,%rbp), %ecx
	sarl	$2, %ecx
	leal	-1(%rbx), %ebp
	movslq	%ebp, %rbp
	addl	%ecx, (%rdi,%rbp,4)
	incq	%rdx
	addl	$2, %ebx
	cmpl	%edx, %r10d
	jne	.LBB2_12
	jmp	.LBB2_30
.LBB2_17:                               # %for.cond.102.preheader
	testl	%esi, %esi
	jle	.LBB2_23
# BB#18:                                # %for.body.104.lr.ph
	leaq	4(%rdi), %r9
	leal	-1(%rdx,%rdx), %r10d
	movslq	%r10d, %rax
	leaq	(%rdi,%rax,4), %r8
	movslq	%edx, %r14
	movl	%esi, %r11d
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_19:                               # %cond.false.108
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rcx), %eax
	cmpq	%r14, %rbx
	cmovgel	%r10d, %eax
	cltq
	movl	(%rdi,%rax,4), %ebp
	testq	%rbx, %rbx
	movl	%ecx, %r15d
	movq	%r9, %rax
	jle	.LBB2_32
# BB#20:                                # %cond.false.129
                                        #   in Loop: Header=BB2_19 Depth=1
	leal	(%rbx,%rbx), %r15d
	cmpq	%r14, %rbx
	jle	.LBB2_31
# BB#21:                                #   in Loop: Header=BB2_19 Depth=1
	movq	%r8, %rax
	jmp	.LBB2_32
	.align	16, 0x90
.LBB2_31:                               # %cond.false.138
                                        #   in Loop: Header=BB2_19 Depth=1
	leal	-1(%rcx), %eax
	cltq
	leaq	(%rdi,%rax,4), %rax
.LBB2_32:                               # %cond.end.146
                                        #   in Loop: Header=BB2_19 Depth=1
	addl	(%rax), %ebp
	sarl	%ebp
	movslq	%r15d, %rax
	subl	%ebp, (%rdi,%rax,4)
	incq	%rbx
	addl	$2, %ecx
	cmpl	%ebx, %r11d
	jne	.LBB2_19
.LBB2_23:                               # %for.cond.157.preheader
	testl	%edx, %edx
	jle	.LBB2_30
# BB#24:                                # %for.body.159.lr.ph
	leal	-2(%rsi,%rsi), %eax
	cltq
	leaq	(%rdi,%rax,4), %r8
	movslq	%esi, %rcx
	movl	%edx, %edx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_25:                               # %cond.false.163
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rbx
	movq	%r8, %rax
	jge	.LBB2_27
# BB#26:                                # %cond.false.170
                                        #   in Loop: Header=BB2_25 Depth=1
	movslq	%esi, %rax
	leaq	(%rdi,%rax,4), %rax
.LBB2_27:                               # %cond.false.182
                                        #   in Loop: Header=BB2_25 Depth=1
	movl	(%rax), %ebp
	incq	%rbx
	cmpq	%rcx, %rbx
	movq	%r8, %rax
	jge	.LBB2_29
# BB#28:                                # %cond.false.190
                                        #   in Loop: Header=BB2_25 Depth=1
	leal	2(%rsi), %eax
	cltq
	leaq	(%rdi,%rax,4), %rax
.LBB2_29:                               # %cond.end.197
                                        #   in Loop: Header=BB2_25 Depth=1
	movl	(%rax), %eax
	leal	2(%rbp,%rax), %eax
	sarl	$2, %eax
	leal	1(%rsi), %ebp
	movslq	%ebp, %rbp
	addl	%eax, (%rdi,%rbp,4)
	addl	$2, %esi
	cmpl	%ebx, %edx
	jne	.LBB2_25
.LBB2_30:                               # %if.end.211
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	opj_dwt_encode_1, .Lfunc_end2-opj_dwt_encode_1
	.cfi_endproc

	.globl	opj_dwt_decode
	.align	16, 0x90
	.type	opj_dwt_decode,@function
opj_dwt_decode:                         # @opj_dwt_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 208
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	24(%rdi), %rbp
	movl	8(%rbp), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	(%rbp), %r15d
	movl	4(%rbp), %r14d
	movl	12(%rbp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	(%rdi), %r13d
	movl	8(%rdi), %r12d
	xorl	%edi, %edi
	movl	%esi, %ebx
	decl	%ebx
	je	.LBB3_7
# BB#1:                                 # %while.body.i.i.preheader
	testb	$1, %sil
	movl	%ebx, %ecx
	movq	%rbp, %rax
	jne	.LBB3_3
# BB#2:                                 # %while.body.i.i.prol
	leaq	176(%rbp), %rax
	movl	184(%rbp), %ecx
	movl	188(%rbp), %edi
	subl	176(%rbp), %ecx
	subl	180(%rbp), %edi
	cmpl	%edi, %ecx
	cmovael	%ecx, %edi
	leal	-2(%rsi), %ecx
.LBB3_3:                                # %while.body.i.i.preheader.split
	cmpl	$2, %esi
	je	.LBB3_6
# BB#4:                                 # %while.body.i.i.preheader.split.split
	addq	$364, %rax              # imm = 0x16C
	.align	16, 0x90
.LBB3_5:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-180(%rax), %edx
	movl	-176(%rax), %esi
	subl	-188(%rax), %edx
	cmpl	%edx, %edi
	cmovael	%edi, %edx
	subl	-184(%rax), %esi
	cmpl	%esi, %edx
	cmovael	%edx, %esi
	movl	-4(%rax), %edx
	subl	-12(%rax), %edx
	cmpl	%edx, %esi
	cmovael	%esi, %edx
	movl	(%rax), %edi
	subl	-8(%rax), %edi
	cmpl	%edi, %edx
	cmovael	%edx, %edi
	addq	$352, %rax              # imm = 0x160
	addl	$-2, %ecx
	jne	.LBB3_5
.LBB3_6:                                # %opj_dwt_max_resolution.exit.loopexit.i
	movl	%edi, %edi
	shlq	$2, %rdi
.LBB3_7:                                # %opj_dwt_max_resolution.exit.i
	callq	malloc
	movq	%rax, %rcx
	movq	%rcx, 128(%rsp)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB3_56
# BB#8:                                 # %if.end.i
	testl	%ebx, %ebx
	movq	%rcx, 104(%rsp)
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	%r12d, %r8d
	je	.LBB3_55
# BB#9:                                 # %while.body.lr.ph.i
	movl	%r8d, %ecx
	subl	%r13d, %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	subl	%r15d, 76(%rsp)         # 4-byte Folded Spill
	subl	%r14d, 28(%rsp)         # 4-byte Folded Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	4(%rax), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movslq	%ecx, %r12
	shlq	$2, %r12
	addl	%r8d, %r8d
	addl	%r13d, %r13d
	subl	%r13d, %r8d
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB3_11:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
                                        #       Child Loop BB3_17 Depth 3
                                        #       Child Loop BB3_19 Depth 3
                                        #       Child Loop BB3_24 Depth 3
                                        #       Child Loop BB3_27 Depth 3
                                        #     Child Loop BB3_33 Depth 2
                                        #       Child Loop BB3_37 Depth 3
                                        #       Child Loop BB3_39 Depth 3
                                        #       Child Loop BB3_44 Depth 3
                                        #       Child Loop BB3_46 Depth 3
                                        #       Child Loop BB3_52 Depth 3
	movl	%ebx, 24(%rsp)          # 4-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	movl	28(%rsp), %eax          # 4-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	40(%rdx), %r13
	movl	%ecx, 140(%rsp)
	movl	%eax, 116(%rsp)
	movl	184(%rbp), %r9d
	movl	176(%rbp), %ebx
	movl	180(%rbp), %r10d
	movl	%r10d, 88(%rsp)         # 4-byte Spill
	movl	%r9d, %edx
	subl	%ebx, %edx
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movl	188(%rbp), %ebp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	subl	%ecx, %edx
	movl	%ebx, %esi
	shrl	$31, %esi
	leal	(%rsi,%rbx), %esi
	andl	$-2, %esi
	movl	%ebx, %edi
	subl	%esi, %edi
	movl	%ebp, %r15d
	subl	%r10d, %r15d
	movl	%edx, 136(%rsp)
	movl	%edi, 144(%rsp)
	movl	%ebp, %edx
	je	.LBB3_31
# BB#12:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	%r9d, 52(%rsp)          # 4-byte Spill
	movl	76(%rsp), %eax          # 4-byte Reload
	shlq	$2, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	movq	96(%rsp), %rbp          # 8-byte Reload
	movl	92(%rsp), %edx          # 4-byte Reload
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_29:                               # %opj_dwt_interleave_h.exit.for.body_crit_edge.i
                                        #   in Loop: Header=BB3_13 Depth=2
	movl	140(%rsp), %ecx
	movl	92(%rsp), %edx          # 4-byte Reload
	movq	%rbx, %r11
	addl	%edx, %r11d
.LBB3_13:                               # %for.body.i
                                        #   Parent Loop BB3_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_17 Depth 3
                                        #       Child Loop BB3_19 Depth 3
                                        #       Child Loop BB3_24 Depth 3
                                        #       Child Loop BB3_27 Depth 3
	movl	%r11d, %r11d
	movl	%r14d, %eax
	imull	%edx, %eax
	leaq	(%r13,%rax,4), %rbx
	testl	%ecx, %ecx
	je	.LBB3_20
# BB#14:                                # %while.body.lr.ph.i.i
                                        #   in Loop: Header=BB3_13 Depth=2
	movslq	144(%rsp), %rax
	leaq	(%rbp,%rax,4), %rax
	leal	-1(%rcx), %r8d
	movq	%rbp, %rsi
	testb	$7, %cl
	je	.LBB3_15
# BB#16:                                # %while.body.i.4.i.prol.preheader
                                        #   in Loop: Header=BB3_13 Depth=2
	movl	%ecx, %edi
	andl	$7, %edi
	negl	%edi
	movq	%rbx, %rdx
	.align	16, 0x90
.LBB3_17:                               # %while.body.i.4.i.prol
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	decl	%ecx
	movl	(%rdx), %ebp
	addq	$4, %rdx
	movl	%ebp, (%rax)
	addq	$8, %rax
	incl	%edi
	jne	.LBB3_17
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=2
	movq	%rbx, %rdx
.LBB3_18:                               # %while.body.lr.ph.i.i.split
                                        #   in Loop: Header=BB3_13 Depth=2
	cmpl	$7, %r8d
	movq	%rsi, %rbp
	jb	.LBB3_20
	.align	16, 0x90
.LBB3_19:                               # %while.body.i.4.i
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rdx), %esi
	movl	%esi, (%rax)
	movl	4(%rdx), %esi
	movl	%esi, 8(%rax)
	movl	8(%rdx), %esi
	movl	%esi, 16(%rax)
	movl	12(%rdx), %esi
	movl	%esi, 24(%rax)
	movl	16(%rdx), %esi
	movl	%esi, 32(%rax)
	movl	20(%rdx), %esi
	movl	%esi, 40(%rax)
	movl	24(%rdx), %esi
	movl	%esi, 48(%rax)
	addl	$-8, %ecx
	movl	28(%rdx), %esi
	leaq	32(%rdx), %rdx
	movl	%esi, 56(%rax)
	leaq	64(%rax), %rax
	jne	.LBB3_19
.LBB3_20:                               # %while.end.i.i
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax
	testl	%eax, %eax
	je	.LBB3_28
# BB#21:                                # %while.body.13.lr.ph.i.i
                                        #   in Loop: Header=BB3_13 Depth=2
	movslq	144(%rsp), %rdx
	shlq	$2, %rdx
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, %rcx
	subq	%rdx, %rcx
	movslq	140(%rsp), %rdi
	leal	-1(%rax), %r8d
	testb	$7, %al
	je	.LBB3_22
# BB#23:                                # %while.body.13.i.i.prol.preheader
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	%rbp, %r10
	subq	%rdx, %rsi
	addq	%r11, %rdi
	leaq	(%r13,%rdi,4), %rdi
	movl	%eax, %ebp
	andl	$7, %ebp
	negl	%ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_24:                               # %while.body.13.i.i.prol
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdx
	decl	%eax
	movl	(%rdi,%rdx), %ebx
	movl	%ebx, (%rsi,%rdx,2)
	addq	$8, %rcx
	leaq	4(%rdx), %rbx
	incl	%ebp
	jne	.LBB3_24
# BB#25:                                #   in Loop: Header=BB3_13 Depth=2
	leaq	4(%rdi,%rdx), %rsi
	movq	%r10, %rbp
	jmp	.LBB3_26
	.align	16, 0x90
.LBB3_22:                               #   in Loop: Header=BB3_13 Depth=2
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rdi,4), %rsi
.LBB3_26:                               # %while.body.13.lr.ph.i.i.split
                                        #   in Loop: Header=BB3_13 Depth=2
	cmpl	$7, %r8d
	jb	.LBB3_28
	.align	16, 0x90
.LBB3_27:                               # %while.body.13.i.i
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rsi), %edx
	movl	%edx, (%rcx)
	movl	4(%rsi), %edx
	movl	%edx, 8(%rcx)
	movl	8(%rsi), %edx
	movl	%edx, 16(%rcx)
	movl	12(%rsi), %edx
	movl	%edx, 24(%rcx)
	movl	16(%rsi), %edx
	movl	%edx, 32(%rcx)
	movl	20(%rsi), %edx
	movl	%edx, 40(%rcx)
	movl	24(%rsi), %edx
	movl	%edx, 48(%rcx)
	addl	$-8, %eax
	movl	28(%rsi), %edx
	leaq	32(%rsi), %rsi
	movl	%edx, 56(%rcx)
	leaq	64(%rcx), %rcx
	jne	.LBB3_27
.LBB3_28:                               # %opj_dwt_interleave_h.exit.i
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	%r11, %rbx
	leaq	128(%rsp), %rdi
	callq	opj_dwt_decode_1
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	incq	%r14
	cmpl	%r15d, %r14d
	jne	.LBB3_29
# BB#30:                                # %for.cond.for.end_crit_edge.i
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	116(%rsp), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	180(%rcx), %edx
	movl	12(%rsp), %r8d          # 4-byte Reload
	movl	52(%rsp), %r9d          # 4-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
.LBB3_31:                               # %for.end.i
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	%r15d, 28(%rsp)         # 4-byte Spill
	subl	%eax, %r15d
	movl	%r15d, 112(%rsp)
	movl	%edx, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rdx), %ecx
	andl	$-2, %ecx
	subl	%ecx, %edx
	movl	%edx, 120(%rsp)
	cmpl	%ebx, %r9d
	je	.LBB3_10
# BB#32:                                # %for.body.38.i.preheader
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	%r8d, %ebx
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %edx
	subl	88(%rsp), %edx          # 4-byte Folded Reload
	movl	%edx, 40(%rsp)          # 4-byte Spill
	leal	-1(%rcx), %ecx
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	andl	$1, %edx
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movq	%r13, %r14
	xorl	%r15d, %r15d
	jmp	.LBB3_33
	.align	16, 0x90
.LBB3_54:                               # %for.end.53.for.body.38_crit_edge.i
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	%r8d, %ebx
	movl	116(%rsp), %eax
	addq	$4, %r14
.LBB3_33:                               # %for.body.38.i
                                        #   Parent Loop BB3_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_37 Depth 3
                                        #       Child Loop BB3_39 Depth 3
                                        #       Child Loop BB3_44 Depth 3
                                        #       Child Loop BB3_46 Depth 3
                                        #       Child Loop BB3_52 Depth 3
	leaq	(%r13,%r15,4), %r8
	testl	%eax, %eax
	je	.LBB3_40
# BB#34:                                # %while.body.lr.ph.i.10.i
                                        #   in Loop: Header=BB3_33 Depth=2
	movslq	120(%rsp), %rdx
	movq	96(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdx,4), %rdx
	leal	-1(%rax), %edi
	testb	$3, %al
	je	.LBB3_35
# BB#36:                                # %while.body.i.14.i.prol.preheader
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	%eax, %ebp
	andl	$3, %ebp
	negl	%ebp
	movq	%r14, %rsi
	.align	16, 0x90
.LBB3_37:                               # %while.body.i.14.i.prol
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	decl	%eax
	movl	(%rsi), %ecx
	movl	%ecx, (%rdx)
	addq	$8, %rdx
	addq	%r12, %rsi
	incl	%ebp
	jne	.LBB3_37
	jmp	.LBB3_38
	.align	16, 0x90
.LBB3_35:                               #   in Loop: Header=BB3_33 Depth=2
	movq	%r8, %rsi
.LBB3_38:                               # %while.body.lr.ph.i.10.i.split
                                        #   in Loop: Header=BB3_33 Depth=2
	cmpl	$3, %edi
	jb	.LBB3_40
	.align	16, 0x90
.LBB3_39:                               # %while.body.i.14.i
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rsi), %ecx
	movl	%ecx, (%rdx)
	movl	(%rsi,%r12), %ecx
	addq	%r12, %rsi
	movl	%ecx, 8(%rdx)
	movl	(%r12,%rsi), %ecx
	addq	%r12, %rsi
	movl	%ecx, 16(%rdx)
	movl	(%r12,%rsi), %ecx
	leaq	(%rsi,%r12), %rsi
	addq	%r12, %rsi
	addl	$-4, %eax
	movl	%ecx, 24(%rdx)
	leaq	32(%rdx), %rdx
	jne	.LBB3_39
.LBB3_40:                               # %while.end.i.16.i
                                        #   in Loop: Header=BB3_33 Depth=2
	movq	112(%rsp), %rax
	testl	%eax, %eax
	je	.LBB3_47
# BB#41:                                # %while.body.15.lr.ph.i.i
                                        #   in Loop: Header=BB3_33 Depth=2
	movslq	120(%rsp), %rcx
	shlq	$2, %rcx
	movq	80(%rsp), %rdx          # 8-byte Reload
	subq	%rcx, %rdx
	movl	116(%rsp), %ecx
	movl	92(%rsp), %esi          # 4-byte Reload
	imull	%esi, %ecx
	movslq	%ecx, %rdi
	leal	-1(%rax), %esi
	testb	$3, %al
	je	.LBB3_42
# BB#43:                                # %while.body.15.i.i.prol.preheader
                                        #   in Loop: Header=BB3_33 Depth=2
	leaq	(%r14,%rdi,4), %rcx
	movl	%eax, %edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB3_44:                               # %while.body.15.i.i.prol
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	decl	%eax
	movl	(%rcx), %ebp
	movl	%ebp, (%rdx)
	addq	$8, %rdx
	addq	%r12, %rcx
	incl	%edi
	jne	.LBB3_44
	jmp	.LBB3_45
	.align	16, 0x90
.LBB3_42:                               #   in Loop: Header=BB3_33 Depth=2
	leaq	(%r8,%rdi,4), %rcx
.LBB3_45:                               # %while.body.15.lr.ph.i.i.split
                                        #   in Loop: Header=BB3_33 Depth=2
	cmpl	$3, %esi
	jb	.LBB3_47
	.align	16, 0x90
.LBB3_46:                               # %while.body.15.i.i
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %esi
	movl	%esi, (%rdx)
	movl	(%rcx,%r12), %esi
	addq	%r12, %rcx
	movl	%esi, 8(%rdx)
	movl	(%r12,%rcx), %esi
	addq	%r12, %rcx
	movl	%esi, 16(%rdx)
	movl	(%r12,%rcx), %esi
	leaq	(%rcx,%r12), %rcx
	addq	%r12, %rcx
	addl	$-4, %eax
	movl	%esi, 24(%rdx)
	leaq	32(%rdx), %rdx
	jne	.LBB3_46
.LBB3_47:                               # %opj_dwt_interleave_v.exit.i
                                        #   in Loop: Header=BB3_33 Depth=2
	leaq	104(%rsp), %rdi
	callq	opj_dwt_decode_1
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	88(%rsp), %eax          # 4-byte Folded Reload
	movl	%ebx, %r8d
	je	.LBB3_53
# BB#48:                                # %for.body.44.preheader.i
                                        #   in Loop: Header=BB3_33 Depth=2
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movl	$0, %esi
	je	.LBB3_50
# BB#49:                                # %for.body.44.i.prol
                                        #   in Loop: Header=BB3_33 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%r15d, %ecx
	movl	%eax, (%r13,%rcx,4)
	movl	$1, %esi
.LBB3_50:                               # %for.body.44.preheader.i.split
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	56(%rsp), %eax          # 4-byte Reload
	cmpl	88(%rsp), %eax          # 4-byte Folded Reload
	je	.LBB3_53
# BB#51:                                # %for.body.44.preheader.i.split.split
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	subl	%esi, %eax
	leal	1(%rsi), %ecx
	movl	92(%rsp), %edi          # 4-byte Reload
	imull	%edi, %ecx
	leal	(%rcx,%r15), %ecx
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rsi,4), %rdx
	imull	%esi, %edi
	leal	(%rdi,%r15), %esi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB3_52:                               # %for.body.44.i
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%rdx), %ebp
	leal	(%rsi,%rdi), %ebx
	movl	%ebp, (%r13,%rbx,4)
	movl	(%rdx), %ebp
	leal	(%rcx,%rdi), %ebx
	movl	%ebp, (%r13,%rbx,4)
	addl	%r8d, %edi
	addq	$8, %rdx
	addl	$-2, %eax
	jne	.LBB3_52
.LBB3_53:                               # %for.end.53.i
                                        #   in Loop: Header=BB3_33 Depth=2
	incq	%r15
	cmpl	76(%rsp), %r15d         # 4-byte Folded Reload
	jne	.LBB3_54
.LBB3_10:                               # %while.cond.loopexit.i
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
	addq	$176, %rbp
	movl	24(%rsp), %ebx          # 4-byte Reload
	decl	%ebx
	jne	.LBB3_11
.LBB3_55:                               # %while.end.i
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	free
	movl	$1, %eax
.LBB3_56:                               # %opj_dwt_decode_tile.exit
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	opj_dwt_decode, .Lfunc_end3-opj_dwt_decode
	.cfi_endproc

	.align	16, 0x90
	.type	opj_dwt_decode_1,@function
opj_dwt_decode_1:                       # @opj_dwt_decode_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	(%rdi), %rax
	movl	8(%rdi), %r8d
	movslq	%r8d, %r15
	movl	12(%rdi), %r14d
	movslq	%r14d, %r11
	cmpl	$0, 16(%rdi)
	je	.LBB4_1
# BB#16:                                # %if.else.i
	cmpl	$1, %r8d
	jne	.LBB4_18
# BB#17:                                # %if.else.i
	testl	%r14d, %r14d
	jne	.LBB4_18
# BB#32:                                # %if.then.98.i
	movl	(%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, (%rax)
	jmp	.LBB4_31
.LBB4_1:                                # %if.then.i
	testl	%r15d, %r15d
	jg	.LBB4_3
# BB#2:                                 # %if.then.i
	cmpl	$2, %r14d
	jl	.LBB4_31
.LBB4_3:                                # %for.cond.preheader.i
	testl	%r14d, %r14d
	jle	.LBB4_7
# BB#4:                                 # %for.body.lr.ph.i
	leaq	4(%rax), %r9
	leal	-1(%r8,%r8), %r10d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB4_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	jle	.LBB4_6
# BB#14:                                # %cond.false.i
                                        #   in Loop: Header=BB4_5 Depth=1
	cmpq	%r15, %rdi
	movl	%edi, %ecx
	cmovgl	%r8d, %ecx
	leal	-1(%rcx,%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rcx
	jmp	.LBB4_15
	.align	16, 0x90
.LBB4_6:                                # %for.body.i.cond.false.21.i_crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%r9, %rcx
.LBB4_15:                               # %cond.false.21.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	(%rcx), %ecx
	leal	(%rdi,%rdi), %edx
	cmpq	%r15, %rdi
	leal	1(%rdi,%rdi), %esi
	cmovgel	%r10d, %esi
	movslq	%esi, %rsi
	movl	(%rax,%rsi,4), %esi
	leal	2(%rcx,%rsi), %ecx
	sarl	$2, %ecx
	movslq	%edx, %rdx
	subl	%ecx, (%rax,%rdx,4)
	incq	%rdi
	cmpl	%edi, %r14d
	jne	.LBB4_5
.LBB4_7:                                # %for.cond.44.preheader.i
	testl	%r15d, %r15d
	jle	.LBB4_31
# BB#8:                                 # %for.body.46.lr.ph.i
	leal	-2(%r11,%r11), %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rbx
	xorl	%edx, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB4_9:                                # %cond.false.50.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r11, %rsi
	movq	%rbx, %rcx
	jge	.LBB4_11
# BB#10:                                # %cond.false.57.i
                                        #   in Loop: Header=BB4_9 Depth=1
	movslq	%edx, %rcx
	leaq	(%rax,%rcx,4), %rcx
.LBB4_11:                               # %cond.false.69.i
                                        #   in Loop: Header=BB4_9 Depth=1
	movl	(%rcx), %edi
	incq	%rsi
	cmpq	%r11, %rsi
	movq	%rbx, %rcx
	jge	.LBB4_13
# BB#12:                                # %cond.false.77.i
                                        #   in Loop: Header=BB4_9 Depth=1
	leal	2(%rdx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rcx
.LBB4_13:                               # %cond.end.84.i
                                        #   in Loop: Header=BB4_9 Depth=1
	addl	(%rcx), %edi
	sarl	%edi
	leal	1(%rdx), %ecx
	movslq	%ecx, %rcx
	addl	%edi, (%rax,%rcx,4)
	addl	$2, %edx
	cmpl	%esi, %r8d
	jne	.LBB4_9
	jmp	.LBB4_31
.LBB4_18:                               # %for.cond.101.preheader.i
	testl	%r14d, %r14d
	jle	.LBB4_25
# BB#19:                                # %for.body.103.lr.ph.i
	leal	-2(%r8,%r8), %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_20:                               # %cond.false.107.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r15, %rcx
	movq	%rsi, %rdi
	jge	.LBB4_22
# BB#21:                                # %cond.false.114.i
                                        #   in Loop: Header=BB4_20 Depth=1
	movslq	%edx, %rdi
	leaq	(%rax,%rdi,4), %rdi
.LBB4_22:                               # %cond.false.126.i
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	(%rdi), %ebx
	incq	%rcx
	cmpq	%r15, %rcx
	movq	%rsi, %rdi
	jge	.LBB4_24
# BB#23:                                # %cond.false.134.i
                                        #   in Loop: Header=BB4_20 Depth=1
	leal	2(%rdx), %edi
	movslq	%edi, %rdi
	leaq	(%rax,%rdi,4), %rdi
.LBB4_24:                               # %cond.end.141.i
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	(%rdi), %edi
	leal	2(%rbx,%rdi), %edi
	sarl	$2, %edi
	leal	1(%rdx), %ebx
	movslq	%ebx, %rbx
	subl	%edi, (%rax,%rbx,4)
	addl	$2, %edx
	cmpl	%ecx, %r14d
	jne	.LBB4_20
.LBB4_25:                               # %for.cond.154.preheader.i
	testl	%r8d, %r8d
	jle	.LBB4_31
# BB#26:                                # %for.body.156.lr.ph.i
	leaq	4(%rax), %r10
	leal	-1(%r11,%r11), %esi
	movslq	%esi, %rcx
	leaq	(%rax,%rcx,4), %r9
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_27:                               # %cond.false.160.i
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rdi), %ecx
	cmpq	%r11, %rbx
	cmovgel	%esi, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	testq	%rbx, %rbx
	movq	%r10, %rcx
	jle	.LBB4_30
# BB#28:                                # %cond.false.181.i
                                        #   in Loop: Header=BB4_27 Depth=1
	cmpq	%r11, %rbx
	movq	%r9, %rcx
	jg	.LBB4_30
# BB#29:                                # %cond.false.190.i
                                        #   in Loop: Header=BB4_27 Depth=1
	leal	-1(%rdi), %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rcx
.LBB4_30:                               # %cond.end.198.i
                                        #   in Loop: Header=BB4_27 Depth=1
	addl	(%rcx), %edx
	sarl	%edx
	movslq	%edi, %rcx
	addl	%edx, (%rax,%rcx,4)
	incq	%rbx
	addl	$2, %edi
	cmpl	%ebx, %r8d
	jne	.LBB4_27
.LBB4_31:                               # %opj_dwt_decode_1_.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	opj_dwt_decode_1, .Lfunc_end4-opj_dwt_decode_1
	.cfi_endproc

	.globl	opj_dwt_getgain
	.align	16, 0x90
	.type	opj_dwt_getgain,@function
opj_dwt_getgain:                        # @opj_dwt_getgain
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.LBB5_2
# BB#1:                                 # %if.end
	decl	%edi
	cmpl	$1, %edi
	seta	%al
	movzbl	%al, %eax
	incl	%eax
.LBB5_2:                                # %return
	retq
.Lfunc_end5:
	.size	opj_dwt_getgain, .Lfunc_end5-opj_dwt_getgain
	.cfi_endproc

	.globl	opj_dwt_getnorm
	.align	16, 0x90
	.type	opj_dwt_getnorm,@function
opj_dwt_getnorm:                        # @opj_dwt_getnorm
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$4, %rcx
	movsd	opj_dwt_norms(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	retq
.Lfunc_end6:
	.size	opj_dwt_getnorm, .Lfunc_end6-opj_dwt_getnorm
	.cfi_endproc

	.globl	opj_dwt_encode_real
	.align	16, 0x90
	.type	opj_dwt_encode_real,@function
opj_dwt_encode_real:                    # @opj_dwt_encode_real
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$opj_dwt_encode_1_real, %esi
	jmp	opj_dwt_encode_procedure # TAILCALL
.Lfunc_end7:
	.size	opj_dwt_encode_real, .Lfunc_end7-opj_dwt_encode_real
	.cfi_endproc

	.align	16, 0x90
	.type	opj_dwt_encode_1_real,@function
opj_dwt_encode_1_real:                  # @opj_dwt_encode_1_real
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
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 48
.Ltmp45:
	.cfi_offset %rbx, -48
.Ltmp46:
	.cfi_offset %r12, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	testl	%ecx, %ecx
	je	.LBB8_1
# BB#39:                                # %if.else
	cmpl	$1, %esi
	jg	.LBB8_41
# BB#40:                                # %if.else
	testl	%edx, %edx
	jle	.LBB8_79
.LBB8_41:                               # %for.cond.234.preheader
	testl	%esi, %esi
	jle	.LBB8_46
# BB#42:                                # %for.body.236.lr.ph
	leaq	4(%rdi), %r9
	leal	-1(%rdx,%rdx), %r10d
	movslq	%r10d, %rax
	leaq	(%rdi,%rax,4), %r8
	movslq	%edx, %r14
	movl	%esi, %r11d
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_43:                               # %cond.false.240
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rcx), %eax
	cmpq	%r14, %rbx
	cmovgel	%r10d, %eax
	cltq
	movslq	(%rdi,%rax,4), %r15
	testq	%rbx, %rbx
	movl	%ecx, %r12d
	movq	%r9, %rax
	jle	.LBB8_59
# BB#44:                                # %cond.false.261
                                        #   in Loop: Header=BB8_43 Depth=1
	leal	(%rbx,%rbx), %r12d
	cmpq	%r14, %rbx
	jle	.LBB8_58
# BB#45:                                #   in Loop: Header=BB8_43 Depth=1
	movq	%r8, %rax
	jmp	.LBB8_59
	.align	16, 0x90
.LBB8_58:                               # %cond.false.270
                                        #   in Loop: Header=BB8_43 Depth=1
	leal	-1(%rcx), %eax
	cltq
	leaq	(%rdi,%rax,4), %rax
.LBB8_59:                               # %cond.end.278
                                        #   in Loop: Header=BB8_43 Depth=1
	movslq	(%rax), %rax
	addq	%r15, %rax
	imulq	$12993, %rax, %rbp      # imm = 0x32C1
	movl	%ebp, %eax
	andl	$4096, %eax             # imm = 0x1000
	addq	%rbp, %rax
	shrq	$13, %rax
	movslq	%r12d, %rbp
	subl	%eax, (%rdi,%rbp,4)
	incq	%rbx
	addl	$2, %ecx
	cmpl	%ebx, %r11d
	jne	.LBB8_43
.LBB8_46:                               # %for.cond.289.preheader
	testl	%edx, %edx
	jle	.LBB8_53
# BB#47:                                # %for.body.291.lr.ph
	leal	-2(%rsi,%rsi), %eax
	cltq
	leaq	(%rdi,%rax,4), %r9
	movslq	%esi, %r10
	movl	%edx, %r8d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_48:                               # %cond.false.295
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rax
	movq	%r9, %rbp
	jge	.LBB8_50
# BB#49:                                # %cond.false.302
                                        #   in Loop: Header=BB8_48 Depth=1
	movslq	%ebx, %rcx
	leaq	(%rdi,%rcx,4), %rbp
.LBB8_50:                               # %cond.false.314
                                        #   in Loop: Header=BB8_48 Depth=1
	movslq	(%rbp), %rbp
	incq	%rax
	cmpq	%r10, %rax
	movq	%r9, %rcx
	jge	.LBB8_52
# BB#51:                                # %cond.false.322
                                        #   in Loop: Header=BB8_48 Depth=1
	leal	2(%rbx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx,4), %rcx
.LBB8_52:                               # %cond.end.329
                                        #   in Loop: Header=BB8_48 Depth=1
	movslq	(%rcx), %rcx
	addq	%rbp, %rcx
	imulq	$434, %rcx, %rbp        # imm = 0x1B2
	movl	%ebp, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addq	%rbp, %rcx
	shrq	$13, %rcx
	leal	1(%rbx), %ebp
	movslq	%ebp, %rbp
	subl	%ecx, (%rdi,%rbp,4)
	addl	$2, %ebx
	cmpl	%eax, %r8d
	jne	.LBB8_48
.LBB8_53:                               # %for.cond.341.preheader
	testl	%esi, %esi
	jle	.LBB8_60
# BB#54:                                # %for.body.343.lr.ph
	leaq	4(%rdi), %r9
	leal	-1(%rdx,%rdx), %r10d
	movslq	%r10d, %rax
	leaq	(%rdi,%rax,4), %r8
	movslq	%edx, %r14
	movl	%esi, %r11d
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_55:                               # %cond.false.347
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rcx), %eax
	cmpq	%r14, %rbx
	cmovgel	%r10d, %eax
	cltq
	movslq	(%rdi,%rax,4), %r15
	testq	%rbx, %rbx
	movl	%ecx, %r12d
	movq	%r9, %rax
	jle	.LBB8_81
# BB#56:                                # %cond.false.368
                                        #   in Loop: Header=BB8_55 Depth=1
	leal	(%rbx,%rbx), %r12d
	cmpq	%r14, %rbx
	jle	.LBB8_80
# BB#57:                                #   in Loop: Header=BB8_55 Depth=1
	movq	%r8, %rax
	jmp	.LBB8_81
	.align	16, 0x90
.LBB8_80:                               # %cond.false.377
                                        #   in Loop: Header=BB8_55 Depth=1
	leal	-1(%rcx), %eax
	cltq
	leaq	(%rdi,%rax,4), %rax
.LBB8_81:                               # %cond.end.385
                                        #   in Loop: Header=BB8_55 Depth=1
	movslq	(%rax), %rax
	addq	%r15, %rax
	imulq	$7233, %rax, %rbp       # imm = 0x1C41
	movl	%ebp, %eax
	andl	$4096, %eax             # imm = 0x1000
	addq	%rbp, %rax
	shrq	$13, %rax
	movslq	%r12d, %rbp
	addl	%eax, (%rdi,%rbp,4)
	incq	%rbx
	addl	$2, %ecx
	cmpl	%ebx, %r11d
	jne	.LBB8_55
.LBB8_60:                               # %for.cond.396.preheader
	testl	%edx, %edx
	jle	.LBB8_67
# BB#61:                                # %for.body.398.lr.ph
	leal	-2(%rsi,%rsi), %eax
	cltq
	leaq	(%rdi,%rax,4), %r9
	movslq	%esi, %r10
	movl	%edx, %r8d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_62:                               # %cond.false.402
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rax
	movq	%r9, %rbp
	jge	.LBB8_64
# BB#63:                                # %cond.false.409
                                        #   in Loop: Header=BB8_62 Depth=1
	movslq	%ebx, %rcx
	leaq	(%rdi,%rcx,4), %rbp
.LBB8_64:                               # %cond.false.421
                                        #   in Loop: Header=BB8_62 Depth=1
	movslq	(%rbp), %rbp
	incq	%rax
	cmpq	%r10, %rax
	movq	%r9, %rcx
	jge	.LBB8_66
# BB#65:                                # %cond.false.429
                                        #   in Loop: Header=BB8_62 Depth=1
	leal	2(%rbx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx,4), %rcx
.LBB8_66:                               # %cond.end.436
                                        #   in Loop: Header=BB8_62 Depth=1
	movslq	(%rcx), %rcx
	addq	%rbp, %rcx
	imulq	$3633, %rcx, %rbp       # imm = 0xE31
	movl	%ebp, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addq	%rbp, %rcx
	shrq	$13, %rcx
	leal	1(%rbx), %ebp
	movslq	%ebp, %rbp
	addl	%ecx, (%rdi,%rbp,4)
	addl	$2, %ebx
	cmpl	%eax, %r8d
	jne	.LBB8_62
.LBB8_67:                               # %for.cond.448.preheader
	testl	%esi, %esi
	jle	.LBB8_73
# BB#68:                                # %for.body.450.preheader
	xorl	%ecx, %ecx
	testb	$1, %sil
	je	.LBB8_70
# BB#69:                                # %for.body.450.prol
	movslq	(%rdi), %rax
	imulq	$5038, %rax, %rax       # imm = 0x13AE
	movl	%eax, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addq	%rax, %rcx
	shrq	$13, %rcx
	movl	%ecx, (%rdi)
	movl	$1, %ecx
.LBB8_70:                               # %for.body.450.preheader.split
	cmpl	$1, %esi
	je	.LBB8_73
# BB#71:                                # %for.body.450.preheader.split.split
	subl	%ecx, %esi
	leal	(%rcx,%rcx), %eax
	leal	2(%rcx,%rcx), %ecx
	.align	16, 0x90
.LBB8_72:                               # %for.body.450
                                        # =>This Inner Loop Header: Depth=1
	cltq
	movslq	(%rdi,%rax,4), %rbp
	imulq	$5038, %rbp, %rbx       # imm = 0x13AE
	movl	%ebx, %ebp
	andl	$4096, %ebp             # imm = 0x1000
	addq	%rbx, %rbp
	shrq	$13, %rbp
	movl	%ebp, (%rdi,%rax,4)
	movslq	%ecx, %rcx
	movslq	(%rdi,%rcx,4), %rbp
	imulq	$5038, %rbp, %rbx       # imm = 0x13AE
	movl	%ebx, %ebp
	andl	$4096, %ebp             # imm = 0x1000
	addq	%rbx, %rbp
	shrq	$13, %rbp
	movl	%ebp, (%rdi,%rcx,4)
	addl	$4, %eax
	addl	$4, %ecx
	addl	$-2, %esi
	jne	.LBB8_72
.LBB8_73:                               # %for.cond.461.preheader
	testl	%edx, %edx
	jle	.LBB8_79
# BB#74:                                # %for.body.463.preheader
	xorl	%ecx, %ecx
	testb	$1, %dl
	je	.LBB8_76
# BB#75:                                # %for.body.463.prol
	movslq	4(%rdi), %rax
	imulq	$6659, %rax, %rax       # imm = 0x1A03
	movl	%eax, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addq	%rax, %rcx
	shrq	$13, %rcx
	movl	%ecx, 4(%rdi)
	movl	$1, %ecx
.LBB8_76:                               # %for.body.463.preheader.split
	cmpl	$1, %edx
	je	.LBB8_79
# BB#77:                                # %for.body.463.preheader.split.split
	subl	%ecx, %edx
	leal	1(%rcx,%rcx), %eax
	leal	3(%rcx,%rcx), %ecx
	.align	16, 0x90
.LBB8_78:                               # %for.body.463
                                        # =>This Inner Loop Header: Depth=1
	cltq
	movslq	(%rdi,%rax,4), %rsi
	imulq	$6659, %rsi, %rbp       # imm = 0x1A03
	movl	%ebp, %esi
	andl	$4096, %esi             # imm = 0x1000
	addq	%rbp, %rsi
	shrq	$13, %rsi
	movl	%esi, (%rdi,%rax,4)
	movslq	%ecx, %rcx
	movslq	(%rdi,%rcx,4), %rsi
	imulq	$6659, %rsi, %rbp       # imm = 0x1A03
	movl	%ebp, %esi
	andl	$4096, %esi             # imm = 0x1000
	addq	%rbp, %rsi
	shrq	$13, %rsi
	movl	%esi, (%rdi,%rcx,4)
	addl	$4, %eax
	addl	$4, %ecx
	addl	$-2, %edx
	jne	.LBB8_78
	jmp	.LBB8_79
.LBB8_1:                                # %if.then
	testl	%esi, %esi
	jg	.LBB8_3
# BB#2:                                 # %if.then
	cmpl	$2, %edx
	jl	.LBB8_79
.LBB8_3:                                # %for.cond.preheader
	testl	%esi, %esi
	jle	.LBB8_10
# BB#4:                                 # %for.body.lr.ph
	leal	-2(%rdx,%rdx), %eax
	cltq
	leaq	(%rdi,%rax,4), %r9
	movslq	%edx, %r10
	movl	%esi, %r8d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_5:                                # %cond.false
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rax
	movq	%r9, %rbp
	jge	.LBB8_7
# BB#6:                                 # %cond.false.8
                                        #   in Loop: Header=BB8_5 Depth=1
	movslq	%ebx, %rcx
	leaq	(%rdi,%rcx,4), %rbp
.LBB8_7:                                # %cond.false.17
                                        #   in Loop: Header=BB8_5 Depth=1
	movslq	(%rbp), %rbp
	incq	%rax
	cmpq	%r10, %rax
	movq	%r9, %rcx
	jge	.LBB8_9
# BB#8:                                 # %cond.false.25
                                        #   in Loop: Header=BB8_5 Depth=1
	leal	2(%rbx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx,4), %rcx
.LBB8_9:                                # %cond.end.32
                                        #   in Loop: Header=BB8_5 Depth=1
	movslq	(%rcx), %rcx
	addq	%rbp, %rcx
	imulq	$12993, %rcx, %rbp      # imm = 0x32C1
	movl	%ebp, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addq	%rbp, %rcx
	shrq	$13, %rcx
	leal	1(%rbx), %ebp
	movslq	%ebp, %rbp
	subl	%ecx, (%rdi,%rbp,4)
	addl	$2, %ebx
	cmpl	%eax, %r8d
	jne	.LBB8_5
.LBB8_10:                               # %for.cond.40.preheader
	testl	%edx, %edx
	jle	.LBB8_15
# BB#11:                                # %for.body.42.lr.ph
	leaq	4(%rdi), %r8
	leal	-1(%rsi,%rsi), %r9d
	movslq	%esi, %r11
	movl	%edx, %r10d
	movl	$1, %ecx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_12:                               # %for.body.42
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	movq	%r8, %rbp
	jle	.LBB8_14
# BB#13:                                # %cond.false.47
                                        #   in Loop: Header=BB8_12 Depth=1
	cmpq	%r11, %rbx
	movl	%ebx, %eax
	cmovgl	%esi, %eax
	leal	-1(%rax,%rax), %eax
	cltq
	leaq	(%rdi,%rax,4), %rbp
.LBB8_14:                               # %cond.false.69
                                        #   in Loop: Header=BB8_12 Depth=1
	cmpq	%r11, %rbx
	movl	%r9d, %eax
	cmovll	%ecx, %eax
	cltq
	movslq	(%rdi,%rax,4), %rax
	movslq	(%rbp), %rbp
	addq	%rax, %rbp
	imulq	$434, %rbp, %rbp        # imm = 0x1B2
	movl	%ebp, %eax
	andl	$4096, %eax             # imm = 0x1000
	addq	%rbp, %rax
	shrq	$13, %rax
	leal	-1(%rcx), %ebp
	movslq	%ebp, %rbp
	subl	%eax, (%rdi,%rbp,4)
	incq	%rbx
	addl	$2, %ecx
	cmpl	%ebx, %r10d
	jne	.LBB8_12
.LBB8_15:                               # %for.cond.95.preheader
	testl	%esi, %esi
	jle	.LBB8_22
# BB#16:                                # %for.body.97.lr.ph
	leal	-2(%rdx,%rdx), %eax
	cltq
	leaq	(%rdi,%rax,4), %r9
	movslq	%edx, %r10
	movl	%esi, %r8d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_17:                               # %cond.false.101
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rax
	movq	%r9, %rbp
	jge	.LBB8_19
# BB#18:                                # %cond.false.108
                                        #   in Loop: Header=BB8_17 Depth=1
	movslq	%ebx, %rcx
	leaq	(%rdi,%rcx,4), %rbp
.LBB8_19:                               # %cond.false.120
                                        #   in Loop: Header=BB8_17 Depth=1
	movslq	(%rbp), %rbp
	incq	%rax
	cmpq	%r10, %rax
	movq	%r9, %rcx
	jge	.LBB8_21
# BB#20:                                # %cond.false.128
                                        #   in Loop: Header=BB8_17 Depth=1
	leal	2(%rbx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx,4), %rcx
.LBB8_21:                               # %cond.end.135
                                        #   in Loop: Header=BB8_17 Depth=1
	movslq	(%rcx), %rcx
	addq	%rbp, %rcx
	imulq	$7233, %rcx, %rbp       # imm = 0x1C41
	movl	%ebp, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addq	%rbp, %rcx
	shrq	$13, %rcx
	leal	1(%rbx), %ebp
	movslq	%ebp, %rbp
	addl	%ecx, (%rdi,%rbp,4)
	addl	$2, %ebx
	cmpl	%eax, %r8d
	jne	.LBB8_17
.LBB8_22:                               # %for.cond.147.preheader
	testl	%edx, %edx
	jle	.LBB8_27
# BB#23:                                # %for.body.149.lr.ph
	leaq	4(%rdi), %r8
	leal	-1(%rsi,%rsi), %r9d
	movslq	%esi, %r11
	movl	%edx, %r10d
	movl	$1, %ecx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_24:                               # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	movq	%r8, %rbp
	jle	.LBB8_26
# BB#25:                                # %cond.false.154
                                        #   in Loop: Header=BB8_24 Depth=1
	cmpq	%r11, %rbx
	movl	%ebx, %eax
	cmovgl	%esi, %eax
	leal	-1(%rax,%rax), %eax
	cltq
	leaq	(%rdi,%rax,4), %rbp
.LBB8_26:                               # %cond.false.176
                                        #   in Loop: Header=BB8_24 Depth=1
	cmpq	%r11, %rbx
	movl	%r9d, %eax
	cmovll	%ecx, %eax
	cltq
	movslq	(%rdi,%rax,4), %rax
	movslq	(%rbp), %rbp
	addq	%rax, %rbp
	imulq	$3633, %rbp, %rbp       # imm = 0xE31
	movl	%ebp, %eax
	andl	$4096, %eax             # imm = 0x1000
	addq	%rbp, %rax
	shrq	$13, %rax
	leal	-1(%rcx), %ebp
	movslq	%ebp, %rbp
	addl	%eax, (%rdi,%rbp,4)
	incq	%rbx
	addl	$2, %ecx
	cmpl	%ebx, %r10d
	jne	.LBB8_24
.LBB8_27:                               # %for.cond.202.preheader
	testl	%esi, %esi
	jle	.LBB8_33
# BB#28:                                # %for.body.204.preheader
	xorl	%ecx, %ecx
	testb	$1, %sil
	je	.LBB8_30
# BB#29:                                # %for.body.204.prol
	movslq	4(%rdi), %rax
	imulq	$5038, %rax, %rax       # imm = 0x13AE
	movl	%eax, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addq	%rax, %rcx
	shrq	$13, %rcx
	movl	%ecx, 4(%rdi)
	movl	$1, %ecx
.LBB8_30:                               # %for.body.204.preheader.split
	cmpl	$1, %esi
	je	.LBB8_33
# BB#31:                                # %for.body.204.preheader.split.split
	subl	%ecx, %esi
	leal	1(%rcx,%rcx), %eax
	leal	3(%rcx,%rcx), %ecx
	.align	16, 0x90
.LBB8_32:                               # %for.body.204
                                        # =>This Inner Loop Header: Depth=1
	cltq
	movslq	(%rdi,%rax,4), %rbp
	imulq	$5038, %rbp, %rbx       # imm = 0x13AE
	movl	%ebx, %ebp
	andl	$4096, %ebp             # imm = 0x1000
	addq	%rbx, %rbp
	shrq	$13, %rbp
	movl	%ebp, (%rdi,%rax,4)
	movslq	%ecx, %rcx
	movslq	(%rdi,%rcx,4), %rbp
	imulq	$5038, %rbp, %rbx       # imm = 0x13AE
	movl	%ebx, %ebp
	andl	$4096, %ebp             # imm = 0x1000
	addq	%rbx, %rbp
	shrq	$13, %rbp
	movl	%ebp, (%rdi,%rcx,4)
	addl	$4, %eax
	addl	$4, %ecx
	addl	$-2, %esi
	jne	.LBB8_32
.LBB8_33:                               # %for.cond.217.preheader
	testl	%edx, %edx
	jle	.LBB8_79
# BB#34:                                # %for.body.219.preheader
	xorl	%ecx, %ecx
	testb	$1, %dl
	je	.LBB8_36
# BB#35:                                # %for.body.219.prol
	movslq	(%rdi), %rax
	imulq	$6659, %rax, %rax       # imm = 0x1A03
	movl	%eax, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addq	%rax, %rcx
	shrq	$13, %rcx
	movl	%ecx, (%rdi)
	movl	$1, %ecx
.LBB8_36:                               # %for.body.219.preheader.split
	cmpl	$1, %edx
	je	.LBB8_79
# BB#37:                                # %for.body.219.preheader.split.split
	subl	%ecx, %edx
	leal	(%rcx,%rcx), %eax
	leal	2(%rcx,%rcx), %ecx
	.align	16, 0x90
.LBB8_38:                               # %for.body.219
                                        # =>This Inner Loop Header: Depth=1
	cltq
	movslq	(%rdi,%rax,4), %rsi
	imulq	$6659, %rsi, %rbp       # imm = 0x1A03
	movl	%ebp, %esi
	andl	$4096, %esi             # imm = 0x1000
	addq	%rbp, %rsi
	shrq	$13, %rsi
	movl	%esi, (%rdi,%rax,4)
	movslq	%ecx, %rcx
	movslq	(%rdi,%rcx,4), %rsi
	imulq	$6659, %rsi, %rbp       # imm = 0x1A03
	movl	%ebp, %esi
	andl	$4096, %esi             # imm = 0x1000
	addq	%rbp, %rsi
	shrq	$13, %rsi
	movl	%esi, (%rdi,%rcx,4)
	addl	$4, %eax
	addl	$4, %ecx
	addl	$-2, %edx
	jne	.LBB8_38
.LBB8_79:                               # %if.end.477
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	opj_dwt_encode_1_real, .Lfunc_end8-opj_dwt_encode_1_real
	.cfi_endproc

	.globl	opj_dwt_getgain_real
	.align	16, 0x90
	.type	opj_dwt_getgain_real,@function
opj_dwt_getgain_real:                   # @opj_dwt_getgain_real
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	opj_dwt_getgain_real, .Lfunc_end9-opj_dwt_getgain_real
	.cfi_endproc

	.globl	opj_dwt_getnorm_real
	.align	16, 0x90
	.type	opj_dwt_getnorm_real,@function
opj_dwt_getnorm_real:                   # @opj_dwt_getnorm_real
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$4, %rcx
	movsd	opj_dwt_norms_real(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	retq
.Lfunc_end10:
	.size	opj_dwt_getnorm_real, .Lfunc_end10-opj_dwt_getnorm_real
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4665729213955833856     # double 8192
	.text
	.globl	opj_dwt_calc_explicit_stepsizes
	.align	16, 0x90
	.type	opj_dwt_calc_explicit_stepsizes,@function
opj_dwt_calc_explicit_stepsizes:        # @opj_dwt_calc_explicit_stepsizes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 64
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r12
	imull	$3, 4(%r12), %r15d
	addl	$-2, %r15d
	je	.LBB11_16
# BB#1:                                 # %for.body.lr.ph
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_11 Depth 2
                                        #     Child Loop BB11_13 Depth 2
	testq	%r13, %r13
	movl	$0, %ecx
	movl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %cond.false.5
                                        #   in Loop: Header=BB11_2 Depth=1
	leal	-1(%r13), %eax
	movq	%rax, %rdx
	movl	$2863311531, %ecx       # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$33, %rdx
	leal	1(%rdx), %ecx
	leal	(%rdx,%rdx,2), %edx
	subl	%edx, %eax
	incl	%eax
.LBB11_4:                               # %cond.end.8
                                        #   in Loop: Header=BB11_2 Depth=1
	notl	%ecx
	addl	4(%r12), %ecx
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB11_7
# BB#5:                                 # %cond.end.8
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	20(%r12), %edx
	testl	%edx, %edx
	je	.LBB11_7
# BB#6:                                 # %cond.false.18
                                        #   in Loop: Header=BB11_2 Depth=1
	leal	-1(%rax), %edx
	cmpl	$1, %edx
	seta	%dl
	movzbl	%dl, %ebp
	incl	%ebp
.LBB11_7:                               # %cond.end.24
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	$0, 24(%r12)
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	je	.LBB11_9
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	%ecx, %edx
	movl	%eax, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$4, %rax
	movl	$1, %esi
	movb	%bpl, %cl
	shll	%cl, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	divsd	opj_dwt_norms_real(%rax,%rdx,8), %xmm0
.LBB11_9:                               # %if.end
                                        #   in Loop: Header=BB11_2 Depth=1
	mulsd	.LCPI11_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %edx
	addl	%r14d, %ebp
	movl	$-1, %esi
	cmpl	$2, %edx
	movl	%edx, %eax
	jl	.LBB11_10
	.align	16, 0x90
.LBB11_11:                              # %for.body.i.i
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sarl	%eax
	incl	%esi
	cmpl	$1, %eax
	jg	.LBB11_11
# BB#12:                                # %for.body.i.13.i.preheader
                                        #   in Loop: Header=BB11_2 Depth=1
	xorl	%edi, %edi
	movl	%edx, %eax
	.align	16, 0x90
.LBB11_13:                              # %for.body.i.13.i
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sarl	%eax
	incl	%edi
	cmpl	$1, %eax
	jg	.LBB11_13
# BB#14:                                # %opj_dwt_encode_stepsize.exit.loopexit
                                        #   in Loop: Header=BB11_2 Depth=1
	addl	$-12, %esi
	jmp	.LBB11_15
	.align	16, 0x90
.LBB11_10:                              #   in Loop: Header=BB11_2 Depth=1
	xorl	%edi, %edi
	movl	$-13, %esi
.LBB11_15:                              # %opj_dwt_encode_stepsize.exit
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$11, %eax
	subl	%edi, %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	%edx, %ebx
	sarl	%cl, %ebx
	movb	%al, %cl
	shll	%cl, %edx
	movl	$11, %eax
	cmpl	%edi, %eax
	cmovsl	%ebx, %edx
	andl	$2047, %edx             # imm = 0x7FF
	movl	%edx, 32(%r12,%r13,8)
	subl	%esi, %ebp
	movl	%ebp, 28(%r12,%r13,8)
	incq	%r13
	cmpl	%r15d, %r13d
	jne	.LBB11_2
.LBB11_16:                              # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	opj_dwt_calc_explicit_stepsizes, .Lfunc_end11-opj_dwt_calc_explicit_stepsizes
	.cfi_endproc

	.globl	opj_dwt_decode_real
	.align	16, 0x90
	.type	opj_dwt_decode_real,@function
opj_dwt_decode_real:                    # @opj_dwt_decode_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp69:
	.cfi_def_cfa_offset 368
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	%esi, %ebp
	decl	%ebp
	je	.LBB12_40
# BB#1:                                 # %while.body.i.preheader
	movq	24(%rbx), %r13
	movl	8(%r13), %r15d
	movl	12(%r13), %eax
	subl	(%r13), %r15d
	subl	4(%r13), %eax
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movl	(%rbx), %r12d
	movl	8(%rbx), %r14d
	testb	$1, %sil
	jne	.LBB12_2
# BB#3:                                 # %while.body.i.prol
	leaq	176(%r13), %rax
	movl	184(%r13), %ecx
	movl	188(%r13), %edi
	subl	176(%r13), %ecx
	subl	180(%r13), %edi
	cmpl	%edi, %ecx
	cmovael	%ecx, %edi
	leal	-2(%rsi), %ecx
	jmp	.LBB12_4
.LBB12_40:                              # %opj_dwt_max_resolution.exit.thread
	movl	$80, %edi
	callq	malloc
	movq	%rax, %rdi
	movq	%rdi, 288(%rsp)
	movq	%rdi, 264(%rsp)
	jmp	.LBB12_41
.LBB12_2:
	xorl	%edi, %edi
	movl	%ebp, %ecx
	movq	%r13, %rax
.LBB12_4:                               # %while.body.i.preheader.split
	cmpl	$2, %esi
	je	.LBB12_7
# BB#5:                                 # %while.body.i.preheader.split.split
	addq	$364, %rax              # imm = 0x16C
	.align	16, 0x90
.LBB12_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-180(%rax), %edx
	movl	-176(%rax), %esi
	subl	-188(%rax), %edx
	cmpl	%edx, %edi
	cmovael	%edi, %edx
	subl	-184(%rax), %esi
	cmpl	%esi, %edx
	cmovael	%edx, %esi
	movl	-4(%rax), %edx
	subl	-12(%rax), %edx
	cmpl	%edx, %esi
	cmovael	%esi, %edx
	movl	(%rax), %edi
	subl	-8(%rax), %edi
	cmpl	%edi, %edx
	cmovael	%edx, %edi
	addq	$352, %rax              # imm = 0x160
	addl	$-2, %ecx
	jne	.LBB12_6
.LBB12_7:                               # %opj_dwt_max_resolution.exit
	addl	$5, %edi
	shlq	$4, %rdi
	callq	malloc
	movq	%rax, %rdi
	testl	%ebp, %ebp
	movq	%rdi, 288(%rsp)
	movq	%rdi, 264(%rsp)
	je	.LBB12_41
# BB#8:                                 # %while.body.lr.ph
	movq	%r15, 240(%rsp)         # 8-byte Spill
	movl	%r14d, %r11d
	subl	%r12d, %r11d
	movq	%r11, 232(%rsp)         # 8-byte Spill
	movq	40(%rbx), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	12(%rbx), %edx
	subl	4(%rbx), %edx
	imull	%r11d, %edx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	leal	(,%r11,4), %eax
	movl	%eax, 228(%rsp)         # 4-byte Spill
	leal	(,%r12,4), %eax
	leal	(%rdx,%r12,4), %edx
	leal	(,%r14,4), %esi
	subl	%esi, %edx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	subl	%eax, %esi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	leaq	16(%rcx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	-1(%r14,%r14,2), %ecx
	leal	(%r12,%r12,2), %eax
	subl	%eax, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leal	(%r14,%r14), %ecx
	leal	-1(%r14,%r14), %edx
	leal	(%r12,%r12), %eax
	subl	%eax, %edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	decl	%r14d
	subl	%r12d, %r14d
	movq	%r14, 88(%rsp)          # 8-byte Spill
	leaq	(,%rsi,4), %rdx
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	subl	%eax, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	-4(%rdi), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %rax
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	addq	$-8, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB12_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_11 Depth 2
                                        #       Child Loop BB12_13 Depth 3
                                        #     Child Loop BB12_20 Depth 2
                                        #     Child Loop BB12_30 Depth 2
                                        #       Child Loop BB12_31 Depth 3
                                        #     Child Loop BB12_39 Depth 2
	movq	240(%rsp), %rax         # 8-byte Reload
	movl	172(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 124(%rsp)         # 4-byte Spill
	movl	%eax, 300(%rsp)
	movl	%ecx, 276(%rsp)
	movl	184(%r13), %r15d
	movq	%r15, 152(%rsp)         # 8-byte Spill
	movl	176(%r13), %edx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movl	180(%r13), %ecx
	movl	%ecx, 212(%rsp)         # 4-byte Spill
	subl	%edx, %r15d
	movl	188(%r13), %r12d
	movl	%r12d, %edi
	subl	%ecx, %edi
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 296(%rsp)
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rax,%rdx), %eax
	andl	$-2, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 304(%rsp)
	cmpl	$4, %edi
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movq	136(%rsp), %rax         # 8-byte Reload
	jl	.LBB12_16
# BB#10:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	%r15, 240(%rsp)         # 8-byte Spill
	movq	%r13, 160(%rsp)         # 8-byte Spill
	movl	%ebp, 148(%rsp)         # 4-byte Spill
	leal	-4(%r12), %eax
	movq	%r12, 200(%rsp)         # 8-byte Spill
	subl	212(%rsp), %eax         # 4-byte Folded Reload
	shrl	$2, %eax
	movl	68(%rsp), %ecx          # 4-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	shll	$2, %eax
	addq	$4, %rax
	imulq	72(%rsp), %rax          # 8-byte Folded Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %eax
	movq	128(%rsp), %rbp         # 8-byte Reload
	subl	%ebp, %eax
	cltq
	movq	56(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rsi), %ebx
	subl	%ebp, %ebx
	movq	48(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rsi), %r13d
	subl	%ebp, %r13d
	movq	88(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rsi), %r15d
	subl	%ebp, %r15d
	leaq	-4(,%rax,4), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leaq	1(%rax), %r12
	shlq	$4, %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%rdx, %rbp
	movl	%edi, %edx
	movl	%edi, 172(%rsp)         # 4-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	.align	16, 0x90
.LBB12_11:                              # %for.body
                                        #   Parent Loop BB12_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_13 Depth 3
	movl	%ecx, 252(%rsp)         # 4-byte Spill
	movl	%edx, 256(%rsp)         # 4-byte Spill
	leaq	288(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%r11d, %edx
	callq	opj_v4dwt_interleave_h
	movq	%r14, %rdi
	callq	opj_v4dwt_decode
	movq	240(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB12_14
# BB#12:                                # %for.body.30.preheader
                                        #   in Loop: Header=BB12_11 Depth=2
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	(%rbp,%rax), %rax
	movq	176(%rsp), %rcx         # 8-byte Reload
	xorl	%edx, %edx
	.align	16, 0x90
.LBB12_13:                              # %for.body.30
                                        #   Parent Loop BB12_9 Depth=1
                                        #     Parent Loop BB12_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-12(%rcx), %esi
	movl	%esi, (%rax,%rdx,4)
	movl	-8(%rcx), %esi
	leal	(%r15,%rdx), %edi
	movl	%esi, (%rbp,%rdi,4)
	movl	-4(%rcx), %esi
	leal	(%r13,%rdx), %edi
	movl	%esi, (%rbp,%rdi,4)
	movl	(%rcx), %esi
	leal	(%rbx,%rdx), %edi
	movl	%esi, (%rbp,%rdi,4)
	leaq	-1(%r12,%rdx), %rsi
	decq	%rdx
	addq	$-16, %rcx
	cmpq	$1, %rsi
	jg	.LBB12_13
.LBB12_14:                              # %for.end
                                        #   in Loop: Header=BB12_11 Depth=2
	addq	216(%rsp), %rbp         # 8-byte Folded Reload
	movl	252(%rsp), %ecx         # 4-byte Reload
	subl	228(%rsp), %ecx         # 4-byte Folded Reload
	movl	256(%rsp), %edx         # 4-byte Reload
	addl	$-4, %edx
	cmpl	$3, %edx
	movq	232(%rsp), %r11         # 8-byte Reload
	jg	.LBB12_11
# BB#15:                                # %for.cond.for.end.65_crit_edge
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %ecx
	movl	148(%rsp), %ebp         # 4-byte Reload
	movq	160(%rsp), %r13         # 8-byte Reload
	movq	240(%rsp), %r15         # 8-byte Reload
	movl	172(%rsp), %edi         # 4-byte Reload
	movq	200(%rsp), %r12         # 8-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
.LBB12_16:                              # %for.end.65
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	%edi, 172(%rsp)         # 4-byte Spill
	movl	%ebp, 148(%rsp)         # 4-byte Spill
	movl	%edi, %ebp
	andl	$3, %ebp
	je	.LBB12_28
# BB#17:                                # %if.then
                                        #   in Loop: Header=BB12_9 Depth=1
	leaq	288(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %r14
	movq	%r14, %rsi
	movl	%r11d, %edx
	callq	opj_v4dwt_interleave_h
	movq	%rbx, %rdi
	callq	opj_v4dwt_decode
	testl	%r15d, %r15d
	jle	.LBB12_18
# BB#19:                                # %for.body.73.lr.ph
                                        #   in Loop: Header=BB12_9 Depth=1
	movslq	%r15d, %rdx
	movslq	%r15d, %rax
	leaq	-1(%r15), %rcx
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	leal	(%rcx,%rsi), %r9d
	movq	128(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %r9d
	decq	%r9
	leaq	-4(%r14,%rax,4), %r10
	movq	%r14, %r8
	leaq	1(%rax), %r14
	shlq	$4, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rbx
	xorl	%ecx, %ecx
	movq	232(%rsp), %r11         # 8-byte Reload
	.align	16, 0x90
.LBB12_20:                              # %for.body.73
                                        #   Parent Loop BB12_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rdx
	cmpl	$1, %ebp
	je	.LBB12_26
# BB#21:                                # %for.body.73
                                        #   in Loop: Header=BB12_20 Depth=2
	cmpl	$3, %ebp
	jne	.LBB12_22
# BB#24:                                # %sw.bb
                                        #   in Loop: Header=BB12_20 Depth=2
	movl	(%rbx), %eax
	leal	(%r9,%rcx), %esi
	movl	%eax, (%r8,%rsi,4)
	movl	%edx, %eax
	jmp	.LBB12_25
	.align	16, 0x90
.LBB12_22:                              # %for.body.73
                                        #   in Loop: Header=BB12_20 Depth=2
	cmpl	$2, %ebp
	jne	.LBB12_27
# BB#23:                                # %for.body.73.sw.bb.83_crit_edge
                                        #   in Loop: Header=BB12_20 Depth=2
	movq	256(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx), %eax
.LBB12_25:                              # %sw.bb.83
                                        #   in Loop: Header=BB12_20 Depth=2
	movl	-4(%rbx), %esi
	addl	%r11d, %eax
	movl	%esi, (%r8,%rax,4)
.LBB12_26:                              # %sw.bb.92
                                        #   in Loop: Header=BB12_20 Depth=2
	movl	-8(%rbx), %eax
	movl	%eax, (%r10,%rcx,4)
.LBB12_27:                              # %for.cond.69.backedge
                                        #   in Loop: Header=BB12_20 Depth=2
	leaq	-1(%r14,%rcx), %rax
	decq	%rcx
	addq	$-16, %rbx
	cmpq	$1, %rax
	jg	.LBB12_20
.LBB12_28:                              # %if.end
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	172(%rsp), %eax         # 4-byte Reload
	subl	124(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 272(%rsp)
	movl	180(%r13), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	movl	%eax, 280(%rsp)
	cmpl	$4, %r15d
	movq	136(%rsp), %r14         # 8-byte Reload
	jl	.LBB12_34
# BB#29:                                # %for.body.111.lr.ph
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	%r13, 160(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	addl	$-4, %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	andl	$-4, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	movq	%r12, 200(%rsp)         # 8-byte Spill
	subl	212(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 256(%rsp)         # 4-byte Spill
	movq	%r15, 240(%rsp)         # 8-byte Spill
	movq	136(%rsp), %r12         # 8-byte Reload
	.align	16, 0x90
.LBB12_30:                              # %for.body.111
                                        #   Parent Loop BB12_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_31 Depth 3
	movl	$4, %ecx
	leaq	264(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r11d, %edx
	movq	%r11, %r14
	callq	opj_v4dwt_interleave_v
	movq	%rbx, %rdi
	callq	opj_v4dwt_decode
	xorl	%ebp, %ebp
	movq	200(%rsp), %rax         # 8-byte Reload
	cmpl	212(%rsp), %eax         # 4-byte Folded Reload
	movl	256(%rsp), %r13d        # 4-byte Reload
	movq	192(%rsp), %rbx         # 8-byte Reload
	je	.LBB12_32
	.align	16, 0x90
.LBB12_31:                              # %for.body.116
                                        #   Parent Loop BB12_9 Depth=1
                                        #     Parent Loop BB12_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebp, %eax
	leaq	(%r12,%rax,4), %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	memcpy
	addq	$16, %rbx
	addl	%r14d, %ebp
	decl	%r13d
	jne	.LBB12_31
.LBB12_32:                              # %for.end.125
                                        #   in Loop: Header=BB12_30 Depth=2
	addq	$16, %r12
	addl	$-4, %r15d
	cmpl	$3, %r15d
	movq	%r14, %r11
	jg	.LBB12_30
# BB#33:                                # %for.cond.108.for.end.129_crit_edge
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx,4), %r14
	movq	160(%rsp), %r13         # 8-byte Reload
	movq	240(%rsp), %r15         # 8-byte Reload
	movq	200(%rsp), %r12         # 8-byte Reload
	jmp	.LBB12_34
	.align	16, 0x90
.LBB12_18:                              # %if.end.thread
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	172(%rsp), %eax         # 4-byte Reload
	subl	124(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 272(%rsp)
	movl	180(%r13), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	movl	%eax, 280(%rsp)
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	232(%rsp), %r11         # 8-byte Reload
.LBB12_34:                              # %for.end.129
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	%r13, 160(%rsp)         # 8-byte Spill
	movq	%r15, 240(%rsp)         # 8-byte Spill
	movl	%r15d, %ebx
	andl	$3, %ebx
	je	.LBB12_35
# BB#37:                                # %if.then.132
                                        #   in Loop: Header=BB12_9 Depth=1
	leaq	264(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r11d, %edx
	movl	%ebx, %ecx
	movq	%r11, %r15
	callq	opj_v4dwt_interleave_v
	movq	%rbp, %rdi
	callq	opj_v4dwt_decode
	movq	%r15, %r11
	subl	212(%rsp), %r12d        # 4-byte Folded Reload
	je	.LBB12_35
# BB#38:                                # %for.body.138.lr.ph
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	%ebx, %r15d
	shlq	$2, %r15
	xorl	%ebp, %ebp
	movq	192(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB12_39:                              # %for.body.138
                                        #   Parent Loop BB12_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	leaq	(%r14,%rax,4), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r12, %r13
	movq	%r11, %r12
	callq	memcpy
	movq	%r12, %r11
	movq	%r13, %r12
	addq	$16, %rbx
	addl	%r11d, %ebp
	decl	%r12d
	jne	.LBB12_39
.LBB12_35:                              # %while.cond.backedge
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	160(%rsp), %r13         # 8-byte Reload
	addq	$176, %r13
	movl	148(%rsp), %ebp         # 4-byte Reload
	decl	%ebp
	jne	.LBB12_9
# BB#36:
	movq	192(%rsp), %rdi         # 8-byte Reload
.LBB12_41:                              # %while.end
	callq	free
	movl	$1, %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	opj_dwt_decode_real, .Lfunc_end12-opj_dwt_decode_real
	.cfi_endproc

	.align	16, 0x90
	.type	opj_v4dwt_interleave_h,@function
opj_v4dwt_interleave_h:                 # @opj_v4dwt_interleave_h
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	movq	(%rdi), %rbp
	movslq	16(%rdi), %rax
	shlq	$4, %rax
	leaq	(%rbp,%rax), %r12
	leal	(%rdx,%rdx,2), %ebx
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	subq	%rax, %rbp
	addq	$16, %rbp
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	movslq	12(%rdi), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movq	%rax, %rdi
	shlq	$2, %rdi
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	movslq	%edx, %r11
	andl	$15, %edx
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	leaq	(,%r11,4), %rdx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rdx,2), %rdx
	movq	%rdx, -72(%rsp)         # 8-byte Spill
	leaq	(%r11,%r11,2), %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	leaq	(,%r11,8), %rdx
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	leaq	(%r11,%r11), %r10
	xorl	%r14d, %r14d
	movl	%eax, %r9d
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_16:                              # %if.end.77.for.body_crit_edge
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-12(%rsp), %ecx         # 4-byte Reload
	movq	-48(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ecx
	addq	-56(%rsp), %rsi         # 8-byte Folded Reload
	movq	-32(%rsp), %rax         # 8-byte Reload
	movl	8(%rax), %r9d
	movq	-40(%rsp), %r12         # 8-byte Reload
.LBB13_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
                                        #     Child Loop BB13_14 Depth 2
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%r9,%rax), %eax
	cmpl	%ecx, %eax
	jge	.LBB13_2
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_1 Depth=1
	testb	$15, %sil
	jne	.LBB13_2
# BB#10:                                # %land.lhs.true.3
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	%r12d, %eax
	andl	$15, %eax
	movq	-88(%rsp), %rdx         # 8-byte Reload
	testl	%edx, %edx
	jne	.LBB13_2
# BB#11:                                # %land.lhs.true.3
                                        #   in Loop: Header=BB13_1 Depth=1
	testq	%rax, %rax
	jne	.LBB13_2
# BB#12:                                # %for.cond.9.preheader
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	%ecx, -12(%rsp)         # 4-byte Spill
	testl	%r9d, %r9d
	jle	.LBB13_15
# BB#13:                                # %for.body.11.preheader
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-72(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %r8
	movq	-80(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %r15
	movq	-64(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %r13
	movl	%r9d, %r9d
	movl	$3, %eax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB13_14:                              # %for.body.11
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%rdx,4), %edi
	leal	-3(%rax), %ebp
	movslq	%ebp, %rbp
	movl	%edi, (%r12,%rbp,4)
	movl	(%r13,%rdx,4), %edi
	leal	-2(%rax), %ebp
	movslq	%ebp, %rbp
	movl	%edi, (%r12,%rbp,4)
	movl	(%r15,%rdx,4), %edi
	leal	-1(%rax), %ebp
	movslq	%ebp, %rbp
	movl	%edi, (%r12,%rbp,4)
	movl	(%r8,%rdx,4), %edi
	cltq
	movl	%edi, (%r12,%rax,4)
	incq	%rdx
	addl	$8, %eax
	cmpl	%edx, %r9d
	jne	.LBB13_14
	jmp	.LBB13_15
	.align	16, 0x90
.LBB13_2:                               # %for.cond.36.preheader
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	%ecx, -12(%rsp)         # 4-byte Spill
	testl	%r9d, %r9d
	jle	.LBB13_15
# BB#3:                                 # %for.body.38.lr.ph
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-12(%rsp), %rdx         # 4-byte Folded Reload
	movq	-72(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %r13
	movq	-80(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %r8
	movq	-64(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %r15
	movl	%r9d, %edi
	movl	$3, %ebp
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_4:                               # %for.body.38
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%rax,4), %ebx
	leal	-3(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%ebx, (%r12,%rcx,4)
	leaq	(%r11,%rax), %rcx
	cmpq	%rdx, %rcx
	jge	.LBB13_8
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	(%r15,%rax,4), %ecx
	leal	-2(%rbp), %ebx
	movslq	%ebx, %rbx
	movl	%ecx, (%r12,%rbx,4)
	leaq	(%r10,%rax), %rcx
	cmpq	%rdx, %rcx
	jge	.LBB13_8
# BB#6:                                 # %if.end.57
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	(%r8,%rax,4), %ecx
	leal	-1(%rbp), %ebx
	movslq	%ebx, %rbx
	movl	%ecx, (%r12,%rbx,4)
	movq	-8(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %rcx
	cmpq	%rdx, %rcx
	jge	.LBB13_8
# BB#7:                                 # %if.end.67
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	(%r13,%rax,4), %ecx
	movslq	%ebp, %rbx
	movl	%ecx, (%r12,%rbx,4)
	.align	16, 0x90
.LBB13_8:                               # %cleanup
                                        #   in Loop: Header=BB13_4 Depth=2
	incq	%rax
	addl	$8, %ebp
	cmpl	%eax, %edi
	jne	.LBB13_4
.LBB13_15:                              # %if.end.77
                                        #   in Loop: Header=BB13_1 Depth=1
	incl	%r14d
	cmpl	$2, %r14d
	jne	.LBB13_16
# BB#17:                                # %for.end.89
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	opj_v4dwt_interleave_h, .Lfunc_end13-opj_v4dwt_interleave_h
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI14_0:
	.long	1067284056              # float 1.230174e+00
	.long	1067284056              # float 1.230174e+00
	.long	1067284056              # float 1.230174e+00
	.long	1067284056              # float 1.230174e+00
.LCPI14_1:
	.long	1070602240              # float 1.625732e+00
	.long	1070602240              # float 1.625732e+00
	.long	1070602240              # float 1.625732e+00
	.long	1070602240              # float 1.625732e+00
.LCPI14_2:
	.long	3202552661              # float -4.435069e-01
	.long	3202552661              # float -4.435069e-01
	.long	3202552661              # float -4.435069e-01
	.long	3202552661              # float -4.435069e-01
.LCPI14_3:
	.long	3210941269              # float -8.870137e-01
	.long	3210941269              # float -8.870137e-01
	.long	3210941269              # float -8.870137e-01
	.long	3210941269              # float -8.870137e-01
.LCPI14_4:
	.long	3210872438              # float -8.829111e-01
	.long	3210872438              # float -8.829111e-01
	.long	3210872438              # float -8.829111e-01
	.long	3210872438              # float -8.829111e-01
.LCPI14_5:
	.long	3219261046              # float -1.765822e+00
	.long	3219261046              # float -1.765822e+00
	.long	3219261046              # float -1.765822e+00
	.long	3219261046              # float -1.765822e+00
.LCPI14_6:
	.long	1029243310              # float 5.298012e-02
	.long	1029243310              # float 5.298012e-02
	.long	1029243310              # float 5.298012e-02
	.long	1029243310              # float 5.298012e-02
.LCPI14_7:
	.long	1037631918              # float 1.059602e-01
	.long	1037631918              # float 1.059602e-01
	.long	1037631918              # float 1.059602e-01
	.long	1037631918              # float 1.059602e-01
.LCPI14_8:
	.long	1070270067              # float 1.586134e+00
	.long	1070270067              # float 1.586134e+00
	.long	1070270067              # float 1.586134e+00
	.long	1070270067              # float 1.586134e+00
.LCPI14_9:
	.long	1078658675              # float 3.172269e+00
	.long	1078658675              # float 3.172269e+00
	.long	1078658675              # float 3.172269e+00
	.long	1078658675              # float 3.172269e+00
	.text
	.align	16, 0x90
	.type	opj_v4dwt_decode,@function
opj_v4dwt_decode:                       # @opj_v4dwt_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 40
.Ltmp92:
	.cfi_offset %rbx, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	cmpl	$0, 16(%rdi)
	je	.LBB14_1
# BB#3:                                 # %if.else
	leaq	12(%rdi), %r8
	movl	12(%rdi), %eax
	xorl	%r10d, %r10d
	movl	$1, %r11d
	testl	%eax, %eax
	jg	.LBB14_5
# BB#4:                                 # %lor.lhs.false.6
	cmpl	$2, 8(%rdi)
	jl	.LBB14_63
	jmp	.LBB14_5
.LBB14_1:                               # %if.then
	leaq	12(%rdi), %r8
	xorl	%r11d, %r11d
	cmpl	$0, 8(%rdi)
	movl	12(%rdi), %eax
	movl	$1, %r10d
	jg	.LBB14_5
# BB#2:                                 # %if.then
	cmpl	$1, %eax
	jle	.LBB14_63
.LBB14_5:                               # %if.end.11
	movq	%r11, %r9
	shlq	$4, %r9
	movq	(%rdi), %rsi
	addq	%r9, %rsi
	movl	%eax, %ecx
	sarl	$2, %ecx
	testl	%ecx, %ecx
	jle	.LBB14_13
# BB#6:                                 # %for.body.lr.ph.i.163
	leal	-1(%rcx), %r14d
	testb	$1, %cl
	jne	.LBB14_8
# BB#7:
	xorl	%ebp, %ebp
	movq	%rsi, %rdx
	jmp	.LBB14_9
.LBB14_8:                               # %for.body.i.176.prol
	movaps	.LCPI14_0(%rip), %xmm0  # xmm0 = [1.230174e+00,1.230174e+00,1.230174e+00,1.230174e+00]
	movaps	(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	movaps	32(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 32(%rsi)
	movaps	64(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 64(%rsi)
	mulps	96(%rsi), %xmm0
	movaps	%xmm0, 96(%rsi)
	movq	%rsi, %rdx
	subq	$-128, %rdx
	movl	$1, %ebp
.LBB14_9:                               # %for.body.lr.ph.i.163.split
	leaq	8(,%r14,8), %rbx
	testl	%r14d, %r14d
	je	.LBB14_12
# BB#10:                                # %for.body.lr.ph.i.163.split.split
	subl	%ebp, %ecx
	movaps	.LCPI14_0(%rip), %xmm0  # xmm0 = [1.230174e+00,1.230174e+00,1.230174e+00,1.230174e+00]
	.align	16, 0x90
.LBB14_11:                              # %for.body.i.176
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rdx)
	movaps	32(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 32(%rdx)
	movaps	64(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 64(%rdx)
	movaps	96(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 96(%rdx)
	movaps	128(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 128(%rdx)
	movaps	160(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 160(%rdx)
	movaps	192(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 192(%rdx)
	movaps	224(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 224(%rdx)
	addq	$256, %rdx              # imm = 0x100
	addl	$-2, %ecx
	jne	.LBB14_11
.LBB14_12:                              # %for.cond.for.end_crit_edge.i.178
	shlq	$4, %rbx
	addq	%rbx, %rsi
.LBB14_13:                              # %for.end.i.182
	testb	$3, %al
	je	.LBB14_20
# BB#14:                                # %for.body.9.i.190.preheader
	movl	%eax, %ecx
	andl	$3, %ecx
	decl	%ecx
	xorl	%edx, %edx
	andl	$3, %eax
	je	.LBB14_17
# BB#15:                                # %for.body.9.i.190.prol.preheader
	xorl	%edx, %edx
	movaps	.LCPI14_0(%rip), %xmm0  # xmm0 = [1.230174e+00,1.230174e+00,1.230174e+00,1.230174e+00]
	.align	16, 0x90
.LBB14_16:                              # %for.body.9.i.190.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	addq	$32, %rsi
	incl	%edx
	cmpl	%edx, %eax
	jne	.LBB14_16
.LBB14_17:                              # %for.body.9.i.190.preheader.split
	cmpl	$3, %ecx
	jb	.LBB14_20
# BB#18:                                # %for.body.9.i.190.preheader.split.split
	subl	%edx, %eax
	movaps	.LCPI14_0(%rip), %xmm0  # xmm0 = [1.230174e+00,1.230174e+00,1.230174e+00,1.230174e+00]
	.align	16, 0x90
.LBB14_19:                              # %for.body.9.i.190
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	movaps	32(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 32(%rsi)
	movaps	64(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 64(%rsi)
	movaps	96(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 96(%rsi)
	subq	$-128, %rsi
	addl	$-4, %eax
	jne	.LBB14_19
.LBB14_20:                              # %opj_v4dwt_decode_step1_sse.exit191
	movq	%r10, %r14
	shlq	$4, %r14
	movq	(%rdi), %rsi
	addq	%r14, %rsi
	movl	8(%rdi), %ecx
	movl	%ecx, %edx
	sarl	$2, %edx
	testl	%edx, %edx
	jle	.LBB14_28
# BB#21:                                # %for.body.lr.ph.i.147
	leal	-1(%rdx), %r15d
	testb	$1, %dl
	jne	.LBB14_23
# BB#22:
	xorl	%ebp, %ebp
	movq	%rsi, %rbx
	jmp	.LBB14_24
.LBB14_23:                              # %for.body.i.154.prol
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1.625732e+00,1.625732e+00,1.625732e+00,1.625732e+00]
	movaps	(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	movaps	32(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 32(%rsi)
	movaps	64(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 64(%rsi)
	mulps	96(%rsi), %xmm0
	movaps	%xmm0, 96(%rsi)
	movq	%rsi, %rbx
	subq	$-128, %rbx
	movl	$1, %ebp
.LBB14_24:                              # %for.body.lr.ph.i.147.split
	leaq	8(,%r15,8), %rax
	testl	%r15d, %r15d
	je	.LBB14_27
# BB#25:                                # %for.body.lr.ph.i.147.split.split
	subl	%ebp, %edx
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1.625732e+00,1.625732e+00,1.625732e+00,1.625732e+00]
	.align	16, 0x90
.LBB14_26:                              # %for.body.i.154
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rbx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rbx)
	movaps	32(%rbx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 32(%rbx)
	movaps	64(%rbx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 64(%rbx)
	movaps	96(%rbx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 96(%rbx)
	movaps	128(%rbx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 128(%rbx)
	movaps	160(%rbx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 160(%rbx)
	movaps	192(%rbx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 192(%rbx)
	movaps	224(%rbx), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 224(%rbx)
	addq	$256, %rbx              # imm = 0x100
	addl	$-2, %edx
	jne	.LBB14_26
.LBB14_27:                              # %for.cond.for.end_crit_edge.i.156
	shlq	$4, %rax
	addq	%rax, %rsi
.LBB14_28:                              # %for.end.i.158
	testb	$3, %cl
	je	.LBB14_35
# BB#29:                                # %for.body.9.i.preheader
	movl	%ecx, %eax
	andl	$3, %eax
	decl	%eax
	xorl	%edx, %edx
	andl	$3, %ecx
	je	.LBB14_32
# BB#30:                                # %for.body.9.i.prol.preheader
	xorl	%edx, %edx
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1.625732e+00,1.625732e+00,1.625732e+00,1.625732e+00]
	.align	16, 0x90
.LBB14_31:                              # %for.body.9.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	addq	$32, %rsi
	incl	%edx
	cmpl	%edx, %ecx
	jne	.LBB14_31
.LBB14_32:                              # %for.body.9.i.preheader.split
	cmpl	$3, %eax
	jb	.LBB14_35
# BB#33:                                # %for.body.9.i.preheader.split.split
	subl	%edx, %ecx
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1.625732e+00,1.625732e+00,1.625732e+00,1.625732e+00]
	.align	16, 0x90
.LBB14_34:                              # %for.body.9.i
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	movaps	32(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 32(%rsi)
	movaps	64(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 64(%rsi)
	movaps	96(%rsi), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 96(%rsi)
	subq	$-128, %rsi
	addl	$-4, %ecx
	jne	.LBB14_34
.LBB14_35:                              # %opj_v4dwt_decode_step1_sse.exit
	movq	(%rdi), %rax
	leaq	16(%rax,%r9), %rsi
	movl	(%r8), %edx
	movl	8(%rdi), %r15d
	movl	%r15d, %ebx
	subl	%r11d, %ebx
	cmpl	%ebx, %edx
	cmovlel	%edx, %ebx
	testl	%ebx, %ebx
	jle	.LBB14_39
# BB#36:                                # %for.body.lr.ph.i.114
	movaps	(%rax,%r14), %xmm0
	leal	-1(%rbx), %eax
	leaq	2(%rax,%rax), %rax
	leal	-1(%r11), %ecx
	subl	%r15d, %ecx
	movl	%edx, %ebp
	notl	%ebp
	cmpl	%ebp, %ecx
	cmovgel	%ecx, %ebp
	notl	%ebp
	movaps	.LCPI14_2(%rip), %xmm1  # xmm1 = [-4.435069e-01,-4.435069e-01,-4.435069e-01,-4.435069e-01]
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB14_37:                              # %for.body.i.125
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rcx), %xmm2
	addps	%xmm2, %xmm0
	mulps	%xmm1, %xmm0
	addps	-16(%rcx), %xmm0
	movaps	%xmm0, -16(%rcx)
	addq	$32, %rcx
	decl	%ebp
	movaps	%xmm2, %xmm0
	jne	.LBB14_37
# BB#38:                                # %for.cond.for.end_crit_edge.i.127
	shlq	$4, %rax
	addq	%rax, %rsi
.LBB14_39:                              # %for.end.i.130
	cmpl	%edx, %ebx
	jge	.LBB14_42
# BB#40:                                # %for.body.13.lr.ph.i.134
	movaps	-32(%rsi), %xmm0
	mulps	.LCPI14_3(%rip), %xmm0
	leal	-1(%r11), %eax
	subl	%r15d, %eax
	movl	%edx, %ecx
	notl	%ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	leal	1(%rdx,%rcx), %eax
	addq	$-16, %rsi
	.align	16, 0x90
.LBB14_41:                              # %for.body.13.i.142
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rsi), %xmm1
	addps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	addq	$32, %rsi
	decl	%eax
	jne	.LBB14_41
.LBB14_42:                              # %opj_v4dwt_decode_step2_sse.exit143
	movq	(%rdi), %rax
	leaq	16(%rax,%r14), %rsi
	movl	8(%rdi), %edx
	movl	(%r8), %r15d
	movl	%r15d, %ebx
	subl	%r10d, %ebx
	cmpl	%ebx, %edx
	cmovlel	%edx, %ebx
	testl	%ebx, %ebx
	jle	.LBB14_46
# BB#43:                                # %for.body.lr.ph.i.80
	movaps	(%rax,%r9), %xmm0
	leal	-1(%rbx), %eax
	leaq	2(%rax,%rax), %rax
	leal	-1(%r10), %ecx
	subl	%r15d, %ecx
	movl	%edx, %ebp
	notl	%ebp
	cmpl	%ebp, %ecx
	cmovgel	%ecx, %ebp
	notl	%ebp
	movaps	.LCPI14_4(%rip), %xmm1  # xmm1 = [-8.829111e-01,-8.829111e-01,-8.829111e-01,-8.829111e-01]
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB14_44:                              # %for.body.i.91
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rcx), %xmm2
	addps	%xmm2, %xmm0
	mulps	%xmm1, %xmm0
	addps	-16(%rcx), %xmm0
	movaps	%xmm0, -16(%rcx)
	addq	$32, %rcx
	decl	%ebp
	movaps	%xmm2, %xmm0
	jne	.LBB14_44
# BB#45:                                # %for.cond.for.end_crit_edge.i.93
	shlq	$4, %rax
	addq	%rax, %rsi
.LBB14_46:                              # %for.end.i.96
	cmpl	%edx, %ebx
	jge	.LBB14_49
# BB#47:                                # %for.body.13.lr.ph.i.100
	movaps	-32(%rsi), %xmm0
	mulps	.LCPI14_5(%rip), %xmm0
	leal	-1(%r10), %eax
	subl	%r15d, %eax
	movl	%edx, %ecx
	notl	%ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	leal	1(%rdx,%rcx), %eax
	addq	$-16, %rsi
	.align	16, 0x90
.LBB14_48:                              # %for.body.13.i.108
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rsi), %xmm1
	addps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	addq	$32, %rsi
	decl	%eax
	jne	.LBB14_48
.LBB14_49:                              # %opj_v4dwt_decode_step2_sse.exit109
	movq	(%rdi), %rax
	leaq	16(%rax,%r9), %rsi
	movl	(%r8), %edx
	movl	8(%rdi), %r15d
	movl	%r15d, %ebx
	subl	%r11d, %ebx
	cmpl	%ebx, %edx
	cmovlel	%edx, %ebx
	testl	%ebx, %ebx
	jle	.LBB14_53
# BB#50:                                # %for.body.lr.ph.i.46
	movaps	(%rax,%r14), %xmm0
	leal	-1(%rbx), %eax
	leaq	2(%rax,%rax), %rax
	leal	-1(%r11), %ecx
	subl	%r15d, %ecx
	movl	%edx, %ebp
	notl	%ebp
	cmpl	%ebp, %ecx
	cmovgel	%ecx, %ebp
	notl	%ebp
	movaps	.LCPI14_6(%rip), %xmm1  # xmm1 = [5.298012e-02,5.298012e-02,5.298012e-02,5.298012e-02]
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB14_51:                              # %for.body.i.57
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rcx), %xmm2
	addps	%xmm2, %xmm0
	mulps	%xmm1, %xmm0
	addps	-16(%rcx), %xmm0
	movaps	%xmm0, -16(%rcx)
	addq	$32, %rcx
	decl	%ebp
	movaps	%xmm2, %xmm0
	jne	.LBB14_51
# BB#52:                                # %for.cond.for.end_crit_edge.i.59
	shlq	$4, %rax
	addq	%rax, %rsi
.LBB14_53:                              # %for.end.i.62
	cmpl	%edx, %ebx
	jge	.LBB14_56
# BB#54:                                # %for.body.13.lr.ph.i.66
	movaps	-32(%rsi), %xmm0
	mulps	.LCPI14_7(%rip), %xmm0
	decl	%r11d
	subl	%r15d, %r11d
	movl	%edx, %eax
	notl	%eax
	cmpl	%eax, %r11d
	cmovgel	%r11d, %eax
	leal	1(%rdx,%rax), %eax
	addq	$-16, %rsi
	.align	16, 0x90
.LBB14_55:                              # %for.body.13.i.74
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rsi), %xmm1
	addps	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	addq	$32, %rsi
	decl	%eax
	jne	.LBB14_55
.LBB14_56:                              # %opj_v4dwt_decode_step2_sse.exit75
	movq	(%rdi), %rax
	leaq	16(%rax,%r14), %rbx
	movl	8(%rdi), %ecx
	movl	(%r8), %edx
	movl	%edx, %esi
	subl	%r10d, %esi
	cmpl	%esi, %ecx
	cmovlel	%ecx, %esi
	testl	%esi, %esi
	jle	.LBB14_60
# BB#57:                                # %for.body.lr.ph.i
	movaps	(%rax,%r9), %xmm0
	leal	-1(%rsi), %eax
	leaq	2(%rax,%rax), %rdi
	leal	-1(%r10), %eax
	subl	%edx, %eax
	movl	%ecx, %ebp
	notl	%ebp
	cmpl	%ebp, %eax
	cmovgel	%eax, %ebp
	notl	%ebp
	movaps	.LCPI14_8(%rip), %xmm1  # xmm1 = [1.586134e+00,1.586134e+00,1.586134e+00,1.586134e+00]
	movq	%rbx, %rax
	.align	16, 0x90
.LBB14_58:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rax), %xmm2
	addps	%xmm2, %xmm0
	mulps	%xmm1, %xmm0
	addps	-16(%rax), %xmm0
	movaps	%xmm0, -16(%rax)
	addq	$32, %rax
	decl	%ebp
	movaps	%xmm2, %xmm0
	jne	.LBB14_58
# BB#59:                                # %for.cond.for.end_crit_edge.i
	shlq	$4, %rdi
	addq	%rdi, %rbx
.LBB14_60:                              # %for.end.i
	cmpl	%ecx, %esi
	jge	.LBB14_63
# BB#61:                                # %for.body.13.lr.ph.i
	movaps	-32(%rbx), %xmm0
	mulps	.LCPI14_9(%rip), %xmm0
	decl	%r10d
	subl	%edx, %r10d
	movl	%ecx, %eax
	notl	%eax
	cmpl	%eax, %r10d
	cmovgel	%r10d, %eax
	leal	1(%rcx,%rax), %eax
	addq	$-16, %rbx
	.align	16, 0x90
.LBB14_62:                              # %for.body.13.i
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%rbx), %xmm1
	addps	%xmm0, %xmm1
	movaps	%xmm1, (%rbx)
	addq	$32, %rbx
	decl	%eax
	jne	.LBB14_62
.LBB14_63:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	opj_v4dwt_decode, .Lfunc_end14-opj_v4dwt_decode
	.cfi_endproc

	.align	16, 0x90
	.type	opj_v4dwt_interleave_v,@function
opj_v4dwt_interleave_v:                 # @opj_v4dwt_interleave_v
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 112
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%edx, 36(%rsp)          # 4-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	16(%rdi), %rax
	shlq	$4, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movslq	12(%rdi), %r12
	testq	%r12, %r12
	jle	.LBB15_3
# BB#1:                                 # %for.body.lr.ph
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movslq	20(%rsp), %rbx          # 4-byte Folded Reload
	shlq	$2, %rbx
	movslq	36(%rsp), %r13          # 4-byte Folded Reload
	shlq	$2, %r13
	xorl	%r14d, %r14d
	movq	24(%rsp), %rbp          # 8-byte Reload
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB15_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r14d, %r14
	movq	%r14, %rax
	shlq	$4, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	incq	%r15
	addl	$2, %r14d
	addq	%r13, %rbp
	cmpq	%r12, %r15
	jl	.LBB15_2
.LBB15_3:                               # %for.end
	movq	(%rsp), %rax            # 8-byte Reload
	movslq	8(%rax), %rdi
	testq	%rdi, %rdi
	movq	40(%rsp), %r13          # 8-byte Reload
	jle	.LBB15_6
# BB#4:                                 # %for.body.17.lr.ph
	subq	8(%rsp), %r13           # 8-byte Folded Reload
	addq	$16, %r13
	movslq	20(%rsp), %rax          # 4-byte Folded Reload
	shlq	$2, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	36(%rsp), %edx          # 4-byte Reload
	imull	%edx, %r12d
	movslq	%r12d, %rax
	movq	24(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rax,4), %r15
	movslq	%edx, %r14
	shlq	$2, %r14
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB15_5:                               # %for.body.17
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebp, %rbp
	movq	%rbp, %rax
	shlq	$4, %rax
	movq	%rdi, %r12
	leaq	(%rax,%r13), %rdi
	movq	%r15, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	%r12, %rdi
	incq	%rbx
	addl	$2, %ebp
	addq	%r14, %r15
	cmpq	%rdi, %rbx
	jl	.LBB15_5
.LBB15_6:                               # %for.end.29
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	opj_v4dwt_interleave_v, .Lfunc_end15-opj_v4dwt_interleave_v
	.cfi_endproc

	.type	opj_dwt_norms,@object   # @opj_dwt_norms
	.section	.rodata,"a",@progbits
	.align	16
opj_dwt_norms:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4609434218613702656     # double 1.500000e+00
	.quad	4613374868287651840     # double 2.750000e+00
	.quad	4617737730426667008     # double 5.375000e+00
	.quad	4622201923557298012     # double 1.068000e+01
	.quad	4626699893685134295     # double 2.134000e+01
	.quad	4631202085937621238     # double 4.267000e+01
	.quad	4635704981877549957     # double 8.533000e+01
	.quad	4640209988879804006     # double 1.707000e+02
	.quad	4644711829288570061     # double 3.413000e+02
	.quad	4607353555585857487     # double 1.038000e+00
	.quad	4609848549779420742     # double 1.592000e+00
	.quad	4613755422456164647     # double 2.919000e+00
	.quad	4618107025596111389     # double 5.703000e+00
	.quad	4622567841027021865     # double 1.133000e+01
	.quad	4627065811154858148     # double 2.264000e+01
	.quad	4631565188657577984     # double 4.525000e+01
	.quad	4636067380910064927     # double 9.048000e+01
	.quad	4640568869475110093     # double 1.809000e+02
	.quad	0                       # double 0.000000e+00
	.quad	4607353555585857487     # double 1.038000e+00
	.quad	4609848549779420742     # double 1.592000e+00
	.quad	4613755422456164647     # double 2.919000e+00
	.quad	4618107025596111389     # double 5.703000e+00
	.quad	4622567841027021865     # double 1.133000e+01
	.quad	4627065811154858148     # double 2.264000e+01
	.quad	4631565188657577984     # double 4.525000e+01
	.quad	4636067380910064927     # double 9.048000e+01
	.quad	4640568869475110093     # double 1.809000e+02
	.quad	0                       # double 0.000000e+00
	.quad	4604647792929733293     # double 7.186000e-01
	.quad	4606478055818296662     # double 9.218000e-01
	.quad	4609821528181656519     # double 1.586000e+00
	.quad	4614034645633061618     # double 3.043000e+00
	.quad	4618462809966673658     # double 6.019000e+00
	.quad	4622950646995348357     # double 1.201000e+01
	.quad	4627448617123184640     # double 2.400000e+01
	.quad	4631947994625904476     # double 4.797000e+01
	.quad	4636450890565833196     # double 9.593000e+01
	.quad	0                       # double 0.000000e+00
	.size	opj_dwt_norms, 320

	.type	opj_dwt_norms_real,@object # @opj_dwt_norms_real
	.align	16
opj_dwt_norms_real:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4611528392440429937     # double 1.965000e+00
	.quad	4616388902338269544     # double 4.177000e+00
	.quad	4620920086513357685     # double 8.403000e+00
	.quad	4625450144788538982     # double 1.690000e+01
	.quad	4629959373915443692     # double 3.384000e+01
	.quad	4634463677230255964     # double 6.769000e+01
	.quad	4638964462107859354     # double 1.353000e+02
	.quad	4643468061735229850     # double 2.706000e+02
	.quad	4647969022534693683     # double 5.409000e+02
	.quad	4611735558023288979     # double 2.022000e+00
	.quad	4616164848256807862     # double 3.989000e+00
	.quad	4620893064915593462     # double 8.355000e+00
	.quad	4625489551285278474     # double 1.704000e+01
	.quad	4630019891035436483     # double 3.427000e+01
	.quad	4634529823849782968     # double 6.863000e+01
	.quad	4639034830852037018     # double 1.373000e+02
	.quad	4643538430479407514     # double 2.746000e+02
	.quad	4648040270888173568     # double 5.490000e+02
	.quad	0                       # double 0.000000e+00
	.quad	4611735558023288979     # double 2.022000e+00
	.quad	4616164848256807862     # double 3.989000e+00
	.quad	4620893064915593462     # double 8.355000e+00
	.quad	4625489551285278474     # double 1.704000e+01
	.quad	4630019891035436483     # double 3.427000e+01
	.quad	4634529823849782968     # double 6.863000e+01
	.quad	4639034830852037018     # double 1.373000e+02
	.quad	4643538430479407514     # double 2.746000e+02
	.quad	4648040270888173568     # double 5.490000e+02
	.quad	0                       # double 0.000000e+00
	.quad	4611866162412482724     # double 2.080000e+00
	.quad	4615885625079910892     # double 3.865000e+00
	.quad	4620866043317829239     # double 8.307000e+00
	.quad	4625528957782017966     # double 1.718000e+01
	.quad	4630081815530312827     # double 3.471000e+01
	.quad	4634597377844193526     # double 6.959000e+01
	.quad	4639105199596214682     # double 1.393000e+02
	.quad	4643608799223585178     # double 2.786000e+02
	.quad	4648112398850955674     # double 5.572000e+02
	.quad	0                       # double 0.000000e+00
	.size	opj_dwt_norms_real, 320


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
