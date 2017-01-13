	.text
	.file	"gdev3852.bc"
	.align	16, 0x90
	.type	jetp3852_print_page,@function
jetp3852_print_page:                    # @jetp3852_print_page
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
	subq	$1192, %rsp             # imm = 0x4A8
.Ltmp6:
	.cfi_def_cfa_offset 1248
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
	movq	%rsi, %rbx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	$.L.str.2, %edi
	callq	fputs
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_device_raster
	movl	%eax, 100(%rsp)         # 4-byte Spill
	cmpl	$0, 836(%rbp)
	jle	.LBB0_8
# BB#1:                                 # %for.body.lr.ph
	movslq	100(%rsp), %rax         # 4-byte Folded Reload
	leaq	416(%rsp,%rax), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	$2863311531, %r15d      # imm = 0xAAAAAAAB
	imulq	%rcx, %r15
	shrq	$33, %r15
	leal	5(%r15,%r15,2), %eax
	movzbl	%al, %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movzbl	%ah, %eax  # NOREX
	movl	%eax, 64(%rsp)          # 4-byte Spill
	leaq	224(%rsp), %r13
	cmpl	$1, %r15d
	movl	$1, %eax
	cmoval	%r15d, %eax
	decl	%eax
	incq	%rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rax, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	-32(%rcx), %rax
	shrq	$5, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	320(%rsp,%rcx), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leaq	224(%rsp,%rcx), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	leaq	128(%rsp,%rcx), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	416(%rsp), %r12
	leaq	128(%rsp), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_46 Depth 2
	movl	%esi, 124(%rsp)         # 4-byte Spill
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movl	100(%rsp), %ecx         # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movq	88(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB0_3:                                # %while.cond
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rdi
	cmpq	%r12, %rdi
	jbe	.LBB0_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB0_3 Depth=2
	leaq	-1(%rdi), %rax
	cmpb	$0, -1(%rdi)
	je	.LBB0_3
.LBB0_5:                                # %while.end
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	%r12, %rdi
	je	.LBB0_6
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%esi, %esi
	movl	$7, %edx
	callq	memset
	movq	%r12, %rdi
	movq	112(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB0_10:                               # %for.body.16
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %rax
	movzbl	%al, %r8d
	movzbl	%ah, %edx  # NOREX
	movq	%rdx, %r10
	movq	%rax, %rsi
	shrq	$13, %rsi
	andl	$2040, %esi             # imm = 0x7F8
	movq	jetp3852_print_page.spr40(%rsi), %rsi
	shrq	%rsi
	movzbl	3(%rdi), %ebp
	movq	jetp3852_print_page.spr8(,%rbp,8), %r9
	movq	%rax, %rdx
	shrq	$29, %rdx
	andl	$2040, %edx             # imm = 0x7F8
	movq	%rax, %rbx
	shrq	$37, %rbx
	andl	$2040, %ebx             # imm = 0x7F8
	movq	jetp3852_print_page.spr8(%rbx), %rbx
	shrq	%rbx
	movq	%rax, %rbp
	shrq	$45, %rbp
	andl	$2040, %ebp             # imm = 0x7F8
	shrq	$56, %rax
	movq	jetp3852_print_page.spr2(,%rax,8), %rax
	shrq	%rax
	addq	jetp3852_print_page.spr40(,%r8,8), %r9
	addq	jetp3852_print_page.spr40(,%r10,8), %rsi
	addq	jetp3852_print_page.spr8(%rdx), %rsi
	addq	%rbx, %rsi
	addq	jetp3852_print_page.spr2(%rbp), %rsi
	addq	%rax, %rsi
	leaq	(%rsi,%r9,2), %rdx
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, (%rcx)
	movb	%dh, 96(%rcx)  # NOREX
	movb	%dl, 192(%rcx)
	addq	$8, %rdi
	incq	%rcx
	cmpq	%r13, %rcx
	jne	.LBB0_10
# BB#11:                                # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%r14d, %r14d
	jle	.LBB0_12
# BB#13:                                # %if.then.64
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	124(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_50
# BB#14:                                # %while.cond.74.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$255, %r14d
	movq	80(%rsp), %rbx          # 8-byte Reload
	jle	.LBB0_16
	.align	16, 0x90
.LBB0_15:                               # %while.body.77
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.6, %edi
	movq	%rbx, %rsi
	callq	fputs
	addl	$-255, %r14d
	cmpl	$255, %r14d
	jg	.LBB0_15
.LBB0_16:                               # %while.end.79
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%r14b, %edx
	xorl	%r14d, %r14d
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_6:                                # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%r14d
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	movq	80(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB0_17
.LBB0_50:                               # %if.then.67
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.3, %edi
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputs
	movl	%r14d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%r14d, %eax
	shrl	$3, %eax
	movzbl	%al, %edx
	xorl	%r14d, %r14d
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.5, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB0_17:                               # %if.end.83
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	72(%rsp), %rbp          # 8-byte Reload
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	68(%rsp), %edx          # 4-byte Reload
	movl	64(%rsp), %ecx          # 4-byte Reload
	callq	fprintf
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$.L.str.9, %edi
	movq	%rbx, %rsi
	callq	fputs
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	$3, %eax
	jb	.LBB0_47
# BB#18:                                # %overflow.checked256
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%edx, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movl	$0, %eax
	leaq	320(%rsp), %rcx
	pcmpeqd	%xmm2, %xmm2
	je	.LBB0_25
# BB#19:                                # %vector.body252.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB0_21
# BB#20:                                # %vector.body252.prol
                                        #   in Loop: Header=BB0_2 Depth=1
	movdqa	320(%rsp), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	336(%rsp), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, 320(%rsp)
	movdqa	%xmm1, 336(%rsp)
	movl	$32, %esi
.LBB0_21:                               # %vector.body252.preheader.split
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movq	%rdi, %rdx
	movl	%edi, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	je	.LBB0_25
# BB#22:                                # %vector.body252.preheader.split.split
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rax
	subq	%rsi, %rax
	leaq	368(%rsp), %rcx
	leaq	(%rsi,%rcx), %rcx
	.align	16, 0x90
.LBB0_23:                               # %vector.body252
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-48(%rcx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	-32(%rcx), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, -48(%rcx)
	movdqa	%xmm1, -32(%rcx)
	movdqa	-16(%rcx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	(%rcx), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, -16(%rcx)
	movdqa	%xmm1, (%rcx)
	addq	$64, %rcx
	addq	$-64, %rax
	jne	.LBB0_23
# BB#24:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rdx
	movl	%edi, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
.LBB0_25:                               # %middle.block253
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rdx, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB0_27
	.align	16, 0x90
.LBB0_26:                               # %for.body.105
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	notb	(%rcx)
	incq	%rcx
	incl	%eax
	cmpl	%r15d, %eax
	jl	.LBB0_26
.LBB0_27:                               # %for.end.111
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %esi
	leaq	320(%rsp), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	fwrite
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	$3, %eax
	jb	.LBB0_48
# BB#28:                                # %overflow.checked161
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%edx, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movl	$0, %eax
	movq	%r13, %rcx
	pcmpeqd	%xmm2, %xmm2
	je	.LBB0_35
# BB#29:                                # %vector.body157.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB0_31
# BB#30:                                # %vector.body157.prol
                                        #   in Loop: Header=BB0_2 Depth=1
	movdqa	224(%rsp), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	240(%rsp), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, 224(%rsp)
	movdqa	%xmm1, 240(%rsp)
	movl	$32, %esi
.LBB0_31:                               # %vector.body157.preheader.split
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movq	%rdi, %rdx
	movl	%edi, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	je	.LBB0_35
# BB#32:                                # %vector.body157.preheader.split.split
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rax
	subq	%rsi, %rax
	leaq	272(%rsp), %rcx
	leaq	(%rsi,%rcx), %rcx
	.align	16, 0x90
.LBB0_33:                               # %vector.body157
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-48(%rcx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	-32(%rcx), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, -48(%rcx)
	movdqa	%xmm1, -32(%rcx)
	movdqa	-16(%rcx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	(%rcx), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, -16(%rcx)
	movdqa	%xmm1, (%rcx)
	addq	$64, %rcx
	addq	$-64, %rax
	jne	.LBB0_33
# BB#34:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rdx
	movl	%edi, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB0_35:                               # %middle.block158
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rdx, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB0_37
	.align	16, 0x90
.LBB0_36:                               # %for.body.105.1
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	notb	(%rcx)
	incq	%rcx
	incl	%eax
	cmpl	%r15d, %eax
	jl	.LBB0_36
.LBB0_37:                               # %for.end.111.1
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	fwrite
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	$3, %eax
	jb	.LBB0_49
# BB#38:                                # %overflow.checked
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%edx, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movl	$0, %eax
	movq	112(%rsp), %rcx         # 8-byte Reload
	je	.LBB0_45
# BB#39:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB0_41
# BB#40:                                # %vector.body.prol
                                        #   in Loop: Header=BB0_2 Depth=1
	movdqa	128(%rsp), %xmm0
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm2, %xmm0
	movdqa	144(%rsp), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, 128(%rsp)
	movdqa	%xmm1, 144(%rsp)
	movl	$32, %esi
.LBB0_41:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movq	%rdi, %rdx
	movl	%edi, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	je	.LBB0_45
# BB#42:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rax
	subq	%rsi, %rax
	leaq	176(%rsp), %rcx
	leaq	(%rsi,%rcx), %rcx
	pcmpeqd	%xmm2, %xmm2
	.align	16, 0x90
.LBB0_43:                               # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-48(%rcx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	-32(%rcx), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, -48(%rcx)
	movdqa	%xmm1, -32(%rcx)
	movdqa	-16(%rcx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	(%rcx), %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, -16(%rcx)
	movdqa	%xmm1, (%rcx)
	addq	$64, %rcx
	addq	$-64, %rax
	jne	.LBB0_43
# BB#44:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rdx
	movl	%edi, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB0_45:                               # %middle.block
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rdx, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB0_49
	.align	16, 0x90
.LBB0_46:                               # %for.body.105.2
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	notb	(%rcx)
	incq	%rcx
	incl	%eax
	cmpl	%r15d, %eax
	jl	.LBB0_46
	jmp	.LBB0_49
	.align	16, 0x90
.LBB0_47:                               # %for.end.111.thread
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %esi
	leaq	320(%rsp), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	fwrite
.LBB0_48:                               # %for.end.111.1.thread
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	fwrite
.LBB0_49:                               # %for.end.111.2
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %esi
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	fwrite
.LBB0_7:                                # %if.end.118
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	124(%rsp), %esi         # 4-byte Reload
	incl	%esi
	cmpl	836(%rbp), %esi
	jl	.LBB0_2
.LBB0_8:                                # %for.end.121
	movl	$.L.str.10, %edi
	movq	%rbx, %rsi
	callq	fputs
	xorl	%eax, %eax
	addq	$1192, %rsp             # imm = 0x4A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jetp3852_print_page, .Lfunc_end0-jetp3852_print_page
	.cfi_endproc

	.type	jetp3852_procs,@object  # @jetp3852_procs
	.data
	.align	8
jetp3852_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_3bit_map_rgb_color
	.quad	gdev_pcl_3bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	jetp3852_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jetp3852"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_jetp3852_device,@object # @gs_jetp3852_device
	.section	.rodata,"a",@progbits
	.globl	gs_jetp3852_device
	.align	8
gs_jetp3852_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	jetp3852_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
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
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
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
	.long	722                     # 0x2d2
	.long	924                     # 0x39c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142601435              # float 6.188571e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1118306304              # float 8.400000e+01
	.long	1118306304              # float 8.400000e+01
	.long	1118306304              # float 8.400000e+01
	.long	1118306304              # float 8.400000e+01
	.long	2147483648              # float -0.000000e+00
	.long	0                       # float 0.000000e+00
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
	.zero	584
	.zero	11240
	.quad	jetp3852_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_jetp3852_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\033@"
	.size	.L.str.2, 3

	.type	jetp3852_print_page.spr40,@object # @jetp3852_print_page.spr40
	.section	.rodata,"a",@progbits
	.align	16
jetp3852_print_page.spr40:
	.quad	0                       # 0x0
	.quad	64                      # 0x40
	.quad	16384                   # 0x4000
	.quad	16448                   # 0x4040
	.quad	4194304                 # 0x400000
	.quad	4194368                 # 0x400040
	.quad	4210688                 # 0x404000
	.quad	4210752                 # 0x404040
	.size	jetp3852_print_page.spr40, 64

	.type	jetp3852_print_page.spr8,@object # @jetp3852_print_page.spr8
	.align	16
jetp3852_print_page.spr8:
	.quad	0                       # 0x0
	.quad	8                       # 0x8
	.quad	2048                    # 0x800
	.quad	2056                    # 0x808
	.quad	524288                  # 0x80000
	.quad	524296                  # 0x80008
	.quad	526336                  # 0x80800
	.quad	526344                  # 0x80808
	.size	jetp3852_print_page.spr8, 64

	.type	jetp3852_print_page.spr2,@object # @jetp3852_print_page.spr2
	.align	16
jetp3852_print_page.spr2:
	.quad	0                       # 0x0
	.quad	2                       # 0x2
	.quad	512                     # 0x200
	.quad	514                     # 0x202
	.quad	131072                  # 0x20000
	.quad	131074                  # 0x20002
	.quad	131584                  # 0x20200
	.quad	131586                  # 0x20202
	.size	jetp3852_print_page.spr2, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"\0330"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata,"a",@progbits
.L.str.4:
	.asciz	"\033B%c\000"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"\013"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033e\377"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033e%c"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033[O%c%c\200\037"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"TT"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\f"
	.size	.L.str.10, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
