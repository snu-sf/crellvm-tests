	.text
	.file	"gdevokii.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1116733440              # float 72
.LCPI0_1:
	.long	1114636288              # float 60
	.text
	.align	16, 0x90
	.type	okiibm_print_page,@function
okiibm_print_page:                      # @okiibm_print_page
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
	subq	$232, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 288
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
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movl	$1, %r14d
	leaq	208(%rsp), %rdi
	movl	$okiibm_init_string, %esi
	movl	$1, %edx
	callq	memcpy
	leaq	192(%rsp), %rdi
	movl	$okiibm_end_string, %esi
	movl	$1, %edx
	callq	memcpy
	movss	888(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movss	884(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$1, %r14d
	ucomiss	.LCPI0_1(%rip), %xmm0
	jbe	.LBB0_3
# BB#2:                                 # %if.then
	leaq	209(%rsp), %rdi
	movl	$okiibm_one_direct, %esi
	movl	$3, %edx
	callq	memcpy
	leaq	193(%rsp), %rdi
	movl	$okiibm_two_direct, %esi
	movl	$3, %edx
	callq	memcpy
	movss	888(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	movl	$4, %r14d
.LBB0_3:                                # %if.end
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movss	44(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	seta	%al
	movzbl	%al, %r14d
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	gx_device_raster
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leal	8(,%r14,8), %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%ecx, %ebx
	imull	%eax, %ebx
	movl	%ebx, 48(%rsp)          # 4-byte Spill
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	24(%r13), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%r15, %rsi
	cvttss2si	884(%r13), %r12d
	leal	-240(%r12), %ecx
	cmpl	$60, %ecx
	sbbl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB0_5
# BB#4:                                 # %if.end
	testq	%rax, %rax
	je	.LBB0_5
# BB#9:                                 # %if.end.39.i
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leaq	208(%rsp), %rdi
	movl	$1, %esi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	movq	%r13, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 836(%rax)
	jle	.LBB0_48
# BB#10:                                # %while.body.lr.ph.i
	incl	%r14d
	movq	%rax, %rdx
	movslq	%r12d, %rax
	imulq	$-2004318071, %rax, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	addl	%r12d, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	sarl	$5, %eax
	addl	%ecx, %eax
	cltq
	movsbq	okiibm_print_page1.graphics_modes_9(%rax), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	andl	$1, %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	andl	$2, %ebx
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	movq	152(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx), %eax
	cltq
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movss	44(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	setbe	%al
	movzbl	%al, %eax
	incl	%eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leal	-1(%r14), %eax
	movslq	%ecx, %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	$17, %esi
	subl	%r14d, %esi
	movl	%esi, 40(%rsp)          # 4-byte Spill
	movl	%r14d, %esi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	leal	(,%rcx,8), %ecx
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
                                        # implicit-def: R13
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	jmp	.LBB0_11
.LBB0_13:                               # %if.then.52.i
                                        #   in Loop: Header=BB0_11 Depth=1
	addl	20(%rsp), %r15d         # 4-byte Folded Reload
	movl	$1, %eax
	jmp	.LBB0_47
	.align	16, 0x90
.LBB0_11:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_27 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_33 Depth 4
                                        #         Child Loop BB0_39 Depth 4
	movq	%rax, %rdi
	movl	%ebx, %esi
	movq	144(%rsp), %rdx         # 8-byte Reload
	leaq	224(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	224(%rsp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB0_14
# BB#12:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_11 Depth=1
	leaq	1(%rdi), %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_13
.LBB0_14:                               # %if.end.54.i
                                        #   in Loop: Header=BB0_11 Depth=1
	testb	$1, %r15b
	je	.LBB0_16
# BB#15:                                # %if.then.56.i
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	104(%rsp), %r12         # 8-byte Reload
	cmpl	$1, %r12d
	movl	$1, %r14d
	adcl	$0, %r14d
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	fprintf
	addl	%r12d, %r14d
	movslq	%r14d, %rdx
	imulq	$1431655766, %rdx, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	leal	(%rax,%rax,2), %eax
	subl	%eax, %edx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	decl	%r15d
.LBB0_16:                               # %if.end.64.i
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	%r15d, %eax
	shrl	$31, %eax
	addl	%r15d, %eax
	sarl	%eax
	leal	(%rax,%rax,2), %r14d
	cmpl	$256, %r14d             # imm = 0x100
	jl	.LBB0_18
	.align	16, 0x90
.LBB0_17:                               # %while.body.70.i
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.5, %edi
	movq	%rbp, %rsi
	callq	fputs
	addl	$-255, %r14d
	cmpl	$255, %r14d
	jg	.LBB0_17
.LBB0_18:                               # %while.end.i
                                        #   in Loop: Header=BB0_11 Depth=1
	testl	%r14d, %r14d
	movq	144(%rsp), %r15         # 8-byte Reload
	je	.LBB0_20
# BB#19:                                # %if.then.74.i
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	fprintf
.LBB0_20:                               # %if.end.76.i
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %esi
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	movq	%r15, %rdx
	movl	48(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	cmpl	68(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB0_22
# BB#21:                                # %if.then.81.i
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	152(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %eax
	cltq
	leaq	(%r15,%rax), %rdi
	movl	48(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_22:                               # %if.end.88.i
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	$-16, %rbx
	movss	44(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	movq	184(%rsp), %r14         # 8-byte Reload
	movq	56(%rsp), %r12          # 8-byte Reload
	jbe	.LBB0_23
	.align	16, 0x90
.LBB0_24:                               # %for.body.i
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	okiibm_print_page1.index+16(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r15), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	memcpy
	addq	%r12, %r14
	incq	%rbx
	jne	.LBB0_24
# BB#25:                                #   in Loop: Header=BB0_11 Depth=1
	movq	%r15, %rcx
	movq	184(%rsp), %r15         # 8-byte Reload
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_11 Depth=1
	movq	184(%rsp), %rcx         # 8-byte Reload
.LBB0_26:                               # %if.end.105.i
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	%r15, 144(%rsp)         # 8-byte Spill
	movq	%r12, 56(%rsp)          # 8-byte Spill
	leaq	(%r15,%r12), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	negq	%rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	movl	160(%rsp), %ebx         # 4-byte Reload
	.align	16, 0x90
.LBB0_27:                               # %for.cond.110.preheader.i
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_33 Depth 4
                                        #         Child Loop BB0_39 Depth 4
	movq	%r12, 120(%rsp)         # 8-byte Spill
	cmpl	164(%rsp), %ebx         # 4-byte Folded Reload
	jbe	.LBB0_29
# BB#28:                                #   in Loop: Header=BB0_27 Depth=2
	movq	%rax, 112(%rsp)         # 8-byte Spill
	jmp	.LBB0_43
	.align	16, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_27 Depth=2
	movslq	%eax, %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%ebx, %r12d
	.align	16, 0x90
.LBB0_30:                               # %for.body.113.i
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_33 Depth 4
                                        #         Child Loop BB0_39 Depth 4
	movq	%rbp, %r14
	cmpl	%ebx, %r12d
	movq	152(%rsp), %rbp         # 8-byte Reload
	jne	.LBB0_35
# BB#31:                                # %if.then.116.i
                                        #   in Loop: Header=BB0_30 Depth=3
	testl	%ebp, %ebp
	movq	176(%rsp), %r15         # 8-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	jle	.LBB0_33
	.align	16, 0x90
.LBB0_32:                               # %for.body.122.i
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rdi
	movl	$1, %ecx
	movl	%ebp, %esi
	movq	%r15, %rdx
	callq	memflip8x8
	incq	%rbx
	addq	$8, %r15
	cmpq	168(%rsp), %rbx         # 8-byte Folded Reload
	jb	.LBB0_32
	.align	16, 0x90
.LBB0_33:                               # %while.cond.130.i
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r15, %r13
	cmpq	176(%rsp), %r13         # 8-byte Folded Reload
	jbe	.LBB0_35
# BB#34:                                # %land.rhs.i
                                        #   in Loop: Header=BB0_33 Depth=4
	leaq	-1(%r13), %r15
	cmpb	$0, -1(%r13)
	je	.LBB0_33
.LBB0_35:                               # %if.end.140.i
                                        #   in Loop: Header=BB0_30 Depth=3
	movq	%r13, %rbx
	subq	176(%rsp), %rbx         # 8-byte Folded Reload
	jbe	.LBB0_42
# BB#36:                                # %if.then.143.i
                                        #   in Loop: Header=BB0_30 Depth=3
	movl	$27, %edi
	movq	%r14, %rsi
	callq	fputc
	movq	136(%rsp), %rax         # 8-byte Reload
	movsbl	.L.str.6(%rax), %edi
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	%ebx, %edi
	sarl	$8, %edi
	movq	%r14, %rsi
	callq	fputc
	testl	%r12d, %r12d
	je	.LBB0_50
# BB#37:                                # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB0_30 Depth=3
	testl	%ebx, %ebx
	jle	.LBB0_42
# BB#38:                                # %for.cond.8.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_30 Depth=3
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r13), %r15d
	xorl	%ebp, %ebp
	movq	176(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB0_39:                               # %for.cond.8.preheader.i.i
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        #       Parent Loop BB0_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	(%r12,%rbp), %eax
	testb	$1, %al
	movl	$0, %edi
	je	.LBB0_41
# BB#40:                                # %cond.true.i.i
                                        #   in Loop: Header=BB0_39 Depth=4
	movzbl	(%rbx), %edi
.LBB0_41:                               # %cond.end.i.i
                                        #   in Loop: Header=BB0_39 Depth=4
	movq	%r14, %rsi
	callq	_IO_putc
	incq	%rbx
	incl	%ebp
	cmpl	%ebp, %r15d
	jne	.LBB0_39
	jmp	.LBB0_42
.LBB0_50:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_30 Depth=3
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rcx
	callq	fwrite
	.align	16, 0x90
.LBB0_42:                               # %if.end.145.i
                                        #   in Loop: Header=BB0_30 Depth=3
	movl	$13, %edi
	movq	%r14, %rbp
	movq	%rbp, %rsi
	callq	fputc
	cmpl	164(%rsp), %r12d        # 4-byte Folded Reload
	leal	1(%r12), %eax
	movl	%eax, %r12d
	movl	160(%rsp), %ebx         # 4-byte Reload
	jl	.LBB0_30
.LBB0_43:                               # %for.end.149.i
                                        #   in Loop: Header=BB0_27 Depth=2
	movq	120(%rsp), %r12         # 8-byte Reload
	cmpq	88(%rsp), %r12          # 8-byte Folded Reload
	jge	.LBB0_45
# BB#44:                                # %if.then.153.i
                                        #   in Loop: Header=BB0_27 Depth=2
	movq	104(%rsp), %r14         # 8-byte Reload
	cmpl	$1, %r14d
	movl	$1, %r15d
	adcl	$0, %r15d
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r15d, %edx
	callq	fprintf
	addl	%r14d, %r15d
	movslq	%r15d, %rdx
	imulq	$1431655766, %rdx, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	leal	(%rax,%rax,2), %eax
	subl	%eax, %edx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
.LBB0_45:                               # %for.inc.163.i
                                        #   in Loop: Header=BB0_27 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	incq	%r12
	addl	84(%rsp), %eax          # 4-byte Folded Reload
	cmpq	96(%rsp), %r12          # 8-byte Folded Reload
	jl	.LBB0_27
# BB#46:                                #   in Loop: Header=BB0_11 Depth=1
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	40(%rsp), %r15d         # 4-byte Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movl	52(%rsp), %ebx          # 4-byte Reload
.LBB0_47:                               # %cleanup.i
                                        #   in Loop: Header=BB0_11 Depth=1
	addl	%eax, %ebx
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpl	836(%rax), %ebx
	jl	.LBB0_11
.LBB0_48:                               # %while.end.174.i
	leaq	192(%rsp), %rdi
	movl	$1, %esi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	movq	%rax, %rbx
	callq	fwrite
	movq	%rbp, %rdi
	callq	fflush
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	xorl	%ebx, %ebx
	jmp	.LBB0_49
.LBB0_5:                                # %if.then.i
	testq	%rsi, %rsi
	je	.LBB0_7
# BB#6:                                 # %if.then.24.i
	movq	24(%r13), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.2, %edx
	movq	%rax, %rbx
	callq	*24(%rdi)
	movq	%rbx, %rax
.LBB0_7:                                # %if.end.i
	movl	$-25, %ebx
	testq	%rax, %rax
	je	.LBB0_49
# BB#8:                                 # %if.then.31.i
	movq	24(%r13), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
.LBB0_49:                               # %okiibm_print_page1.exit
	movl	%ebx, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	okiibm_print_page, .Lfunc_end0-okiibm_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"okiibm"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_okiibm_device,@object # @gs_okiibm_device
	.section	.rodata,"a",@progbits
	.globl	gs_okiibm_device
	.align	8
gs_okiibm_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	1020                    # 0x3fc
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1123024896              # float 1.200000e+02
	.long	1116733440              # float 7.200000e+01
	.long	1123024896              # float 1.200000e+02
	.long	1116733440              # float 7.200000e+01
	.long	3253731328              # float -3.000000e+01
	.long	2147483648              # float -0.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	0                       # float 0.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	okiibm_print_page
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
	.size	gs_okiibm_device, 18472

	.type	okiibm_init_string,@object # @okiibm_init_string
okiibm_init_string:
	.byte	24
	.size	okiibm_init_string, 1

	.type	okiibm_end_string,@object # @okiibm_end_string
okiibm_end_string:
	.byte	12
	.size	okiibm_end_string, 1

	.type	okiibm_one_direct,@object # @okiibm_one_direct
okiibm_one_direct:
	.ascii	"\033U\001"
	.size	okiibm_one_direct, 3

	.type	okiibm_two_direct,@object # @okiibm_two_direct
okiibm_two_direct:
	.asciz	"\033U"
	.size	okiibm_two_direct, 3

	.type	okiibm_print_page1.graphics_modes_9,@object # @okiibm_print_page1.graphics_modes_9
okiibm_print_page1.graphics_modes_9:
	.ascii	"\377\000\001\377\003"
	.size	okiibm_print_page1.graphics_modes_9, 5

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"okiibm_print_page(buf1)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"okiibm_print_page(buf2)"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033J%c"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033J\377"
	.size	.L.str.5, 4

	.type	okiibm_print_page1.index,@object # @okiibm_print_page1.index
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
okiibm_print_page1.index:
	.ascii	"\000\002\004\006\b\n\f\016\001\003\005\007\t\013\r\017"
	.size	okiibm_print_page1.index, 16

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"KLYZ"
	.size	.L.str.6, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
