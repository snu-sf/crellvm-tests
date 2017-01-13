	.text
	.file	"gxoprect.bc"
	.globl	gx_overprint_generic_fill_rectangle
	.align	16, 0x90
	.type	gx_overprint_generic_fill_rectangle,@function
gx_overprint_generic_fill_rectangle:    # @gx_overprint_generic_fill_rectangle
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
	subq	$968, %rsp              # imm = 0x3C8
.Ltmp6:
	.cfi_def_cfa_offset 1024
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
	movl	%r8d, %ebx
	movl	%ecx, 140(%rsp)         # 4-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movq	%rdi, %r13
	movl	1032(%rsp), %eax
	movl	1024(%rsp), %ecx
	movzwl	108(%r13), %ebp
	movl	%r9d, %edx
	orl	%ebx, %edx
	jns	.LBB0_2
# BB#1:                                 # %if.then
	movl	%ebx, %edx
	sarl	$31, %edx
	andl	%ebx, %edx
	addl	%edx, %ecx
	xorl	%edx, %edx
	testl	%ebx, %ebx
	cmovsl	%edx, %ebx
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	addl	%esi, %eax
	testl	%r9d, %r9d
	cmovsl	%edx, %r9d
.LBB0_2:                                # %do.body.14
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movl	832(%r13), %r15d
	movl	836(%r13), %edx
	subl	%ebx, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%r9d, %edx
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	jle	.LBB0_33
# BB#3:                                 # %do.body.14
	testl	%edx, %edx
	jle	.LBB0_33
# BB#4:                                 # %do.end.42
	movl	%edx, 96(%rsp)          # 4-byte Spill
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	1040(%rsp), %rsi
	cmpl	$7, %ebp
	movl	$unpack_scanline_ge8, %eax
	movl	$unpack_scanline_lt8, %ecx
	cmovaq	%rax, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	$pack_scanline_ge8, %eax
	movl	$pack_scanline_lt8, %ecx
	cmovaq	%rax, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	832(%rsp), %rdx
	movq	%r13, %rdi
	callq	*1560(%r13)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_32
# BB#5:                                 # %if.end.52
	movq	1048(%rsp), %r14
	leal	(,%r15,8), %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%r14, %rsi
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB0_33
# BB#6:                                 # %if.end.61
	movl	%ebx, %edx
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	imull	%ebp, %edx
	movl	%edx, %eax
	andl	$-64, %eax
	movl	%r15d, %ecx
	imull	%ebp, %ecx
	movl	%edx, %ebp
	addl	$63, %ebp
	subl	%eax, %ebp
	addl	%ecx, %ebp
	sarl	$6, %ebp
	shll	$3, %ebp
	movl	$.L.str, %edx
	movq	%rsi, %rdi
	movl	%ebp, %esi
	movq	1048(%rsp), %rax
	callq	*64(%rax)
	testq	%rax, %rax
	movq	1048(%rsp), %rdi
	je	.LBB0_7
# BB#8:                                 # %if.end.71
	movq	$290537233, 296(%rsp)   # imm = 0x11513F11
	movl	$0, 816(%rsp)
	movq	%rax, 304(%rsp)
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%ebp, 824(%rsp)
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movl	%ebx, 280(%rsp)
	leal	(%r15,%rbx), %eax
	movl	%eax, 288(%rsp)
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
	jle	.LBB0_31
# BB#9:                                 # %while.body.lr.ph
	movl	140(%rsp), %eax         # 4-byte Reload
	movzwl	%ax, %eax
	movl	$256, %ecx              # imm = 0x100
	subl	%eax, %ecx
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movq	104(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %eax
	andl	$1, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	%ebp, %eax
	andl	$2, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	andl	$4, %ebp
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	leaq	144(%rsp), %r14
	.align	16, 0x90
.LBB0_10:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	leal	1(%rbx), %ebp
	movl	%ebx, 284(%rsp)
	movl	%ebp, 292(%rsp)
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	leaq	280(%rsp), %rsi
	leaq	296(%rsp), %rdx
	callq	*1448(%r13)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_31
# BB#11:                                # %if.end.89
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	%ebp, 64(%rsp)          # 4-byte Spill
	movq	%rbx, %r12
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movl	%r15d, %ecx
	movl	76(%rsp), %r8d          # 4-byte Reload
	callq	*48(%rsp)               # 8-byte Folded Reload
	testl	%r15d, %r15d
	jle	.LBB0_29
	.align	16, 0x90
.LBB0_12:                               # %for.body
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	movq	(%rbx), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	*1560(%r13)
	testl	%eax, %eax
	js	.LBB0_29
# BB#13:                                # %if.end.99
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	140(%rsp), %eax         # 4-byte Reload
	testw	%ax, %ax
	je	.LBB0_19
# BB#14:                                # %for.cond.104.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	jne	.LBB0_15
# BB#16:                                # %if.else.115
                                        #   in Loop: Header=BB0_12 Depth=2
	movzwl	144(%rsp), %eax
	imull	136(%rsp), %eax         # 4-byte Folded Reload
	shrl	$8, %eax
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_19:                               # %if.else.129
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	je	.LBB0_24
# BB#20:                                # %for.cond.131.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	104(%rsp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	movq	%r14, %rax
	leaq	832(%rsp), %rcx
	je	.LBB0_28
	.align	16, 0x90
.LBB0_21:                               # %for.body.134
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %dl
	je	.LBB0_23
# BB#22:                                # %if.then.138
                                        #   in Loop: Header=BB0_21 Depth=3
	movw	(%rcx), %si
	movw	%si, (%rax)
.LBB0_23:                               # %for.inc.144
                                        #   in Loop: Header=BB0_21 Depth=3
	shrq	%rdx
	addq	$2, %rcx
	addq	$2, %rax
	testq	%rdx, %rdx
	jne	.LBB0_21
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_15:                               # %if.then.111
                                        #   in Loop: Header=BB0_12 Depth=2
	movzwl	832(%rsp), %eax
.LBB0_17:                               # %for.inc
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	movw	%ax, 144(%rsp)
	jne	.LBB0_18
# BB#34:                                # %if.else.115.1
                                        #   in Loop: Header=BB0_12 Depth=2
	movzwl	146(%rsp), %eax
	imull	136(%rsp), %eax         # 4-byte Folded Reload
	shrl	$8, %eax
	movw	%ax, 146(%rsp)
	jmp	.LBB0_35
	.align	16, 0x90
.LBB0_18:                               # %if.then.111.1
                                        #   in Loop: Header=BB0_12 Depth=2
	movw	834(%rsp), %ax
	movw	%ax, 146(%rsp)
.LBB0_35:                               # %for.inc.1
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpq	$0, 112(%rsp)           # 8-byte Folded Reload
	jne	.LBB0_36
# BB#37:                                # %if.else.115.2
                                        #   in Loop: Header=BB0_12 Depth=2
	movzwl	148(%rsp), %eax
	imull	136(%rsp), %eax         # 4-byte Folded Reload
	shrl	$8, %eax
	movw	%ax, 148(%rsp)
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_36:                               # %if.then.111.2
                                        #   in Loop: Header=BB0_12 Depth=2
	movw	836(%rsp), %ax
	movw	%ax, 148(%rsp)
	jmp	.LBB0_28
.LBB0_24:                               # %for.cond.149.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	104(%rsp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	movq	%r14, %rax
	leaq	832(%rsp), %rcx
	je	.LBB0_28
	.align	16, 0x90
.LBB0_25:                               # %for.body.152
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %dl
	je	.LBB0_27
# BB#26:                                # %if.then.156
                                        #   in Loop: Header=BB0_25 Depth=3
	movw	(%rcx), %si
	movw	%si, (%rax)
.LBB0_27:                               # %for.inc.162
                                        #   in Loop: Header=BB0_25 Depth=3
	shrq	%rdx
	addq	$2, %rcx
	addq	$2, %rax
	testq	%rdx, %rdx
	jne	.LBB0_25
	.align	16, 0x90
.LBB0_28:                               # %if.end.167
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*1552(%r13)
	movq	%rax, (%rbx)
	incl	%ebp
	addq	$8, %rbx
	cmpl	%r15d, %ebp
	jl	.LBB0_12
.LBB0_29:                               # %cleanup.179.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	xorl	%edx, %edx
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	movl	%r15d, %ecx
	movl	76(%rsp), %r8d          # 4-byte Reload
	callq	*40(%rsp)               # 8-byte Folded Reload
	movl	%r15d, 8(%rsp)
	movl	%r12d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	36(%rsp), %ecx          # 4-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	*1224(%r13)
	movl	%eax, %r12d
	movl	96(%rsp), %eax          # 4-byte Reload
	cmpl	$2, %eax
	movl	64(%rsp), %ecx          # 4-byte Reload
	jl	.LBB0_31
# BB#30:                                # %cleanup.179.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	decl	%eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	testl	%r12d, %r12d
	movl	%ecx, %ebx
	jns	.LBB0_10
.LBB0_31:                               # %while.end
	movl	$.L.str, %edx
	movq	1048(%rsp), %rbx
	movq	%rbx, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
.LBB0_32:                               # %cleanup.187
	movl	%r12d, %r14d
	jmp	.LBB0_33
.LBB0_7:                                # %if.then.69
	movl	$.L.str, %edx
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
.LBB0_33:                               # %cleanup.187
	movl	%r14d, %eax
	addq	$968, %rsp              # imm = 0x3C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_overprint_generic_fill_rectangle, .Lfunc_end0-gx_overprint_generic_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	unpack_scanline_ge8,@function
unpack_scanline_ge8:                    # @unpack_scanline_ge8
	.cfi_startproc
# BB#0:                                 # %entry
	sarl	$3, %r8d
	imull	%r8d, %ecx
	testl	%ecx, %ecx
	jle	.LBB1_14
# BB#1:                                 # %for.body.lr.ph
	imull	%r8d, %edx
	movslq	%edx, %rax
	addq	%rax, %rsi
	xorl	%r10d, %r10d
	testb	$1, %cl
	jne	.LBB1_3
# BB#2:
	xorl	%r9d, %r9d
	jmp	.LBB1_6
.LBB1_3:                                # %for.body.prol
	movzbl	(%rsi), %edx
	incq	%rsi
	movl	$1, %r9d
	cmpl	$1, %r8d
	jne	.LBB1_4
# BB#5:                                 # %if.then.prol
	movq	%rdx, (%rdi)
	addq	$8, %rdi
	xorl	%r10d, %r10d
.LBB1_6:                                # %for.body.lr.ph.split
	xorl	%edx, %edx
	jmp	.LBB1_7
.LBB1_4:
	movl	$1, %r10d
.LBB1_7:                                # %for.body.lr.ph.split
	cmpl	$1, %ecx
	je	.LBB1_14
# BB#8:                                 # %for.body.lr.ph.split.split
	subl	%r9d, %ecx
	.align	16, 0x90
.LBB1_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rdx
	movzbl	(%rsi), %eax
	orq	%rdx, %rax
	incl	%r10d
	cmpl	%r8d, %r10d
	jne	.LBB1_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%rax, (%rdi)
	addq	$8, %rdi
	xorl	%eax, %eax
	xorl	%r10d, %r10d
.LBB1_11:                               # %for.inc
                                        #   in Loop: Header=BB1_9 Depth=1
	shlq	$8, %rax
	movzbl	1(%rsi), %edx
	orq	%rax, %rdx
	incl	%r10d
	cmpl	%r8d, %r10d
	jne	.LBB1_13
# BB#12:                                # %if.then.1
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%rdx, (%rdi)
	addq	$8, %rdi
	xorl	%edx, %edx
	xorl	%r10d, %r10d
.LBB1_13:                               # %for.inc.1
                                        #   in Loop: Header=BB1_9 Depth=1
	addq	$2, %rsi
	addl	$-2, %ecx
	jne	.LBB1_9
.LBB1_14:                               # %for.end
	retq
.Lfunc_end1:
	.size	unpack_scanline_ge8, .Lfunc_end1-unpack_scanline_ge8
	.cfi_endproc

	.align	16, 0x90
	.type	pack_scanline_ge8,@function
pack_scanline_ge8:                      # @pack_scanline_ge8
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %r10d
	movl	%r8d, %r9d
	sarl	$3, %r9d
	imull	%r9d, %r10d
	testl	%r10d, %r10d
	jle	.LBB2_12
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %rax
	addq	%rax, %rsi
	addl	$-8, %r8d
	xorl	%ecx, %ecx
	testb	$1, %r10b
	jne	.LBB2_3
# BB#2:
	leal	-1(%r9), %r11d
	xorl	%eax, %eax
	jmp	.LBB2_4
.LBB2_3:                                # %if.end.prol
	movq	(%rdi), %rax
	addq	$8, %rdi
	movq	%rax, %rdx
	movb	%r8b, %cl
	shrq	%cl, %rdx
	movb	%dl, (%rsi)
	incq	%rsi
	shlq	$8, %rax
	movl	$1, %ecx
	xorl	%r11d, %r11d
.LBB2_4:                                # %for.body.lr.ph.split
	cmpl	$1, %r10d
	je	.LBB2_12
# BB#5:                                 # %for.body.lr.ph.split.split
	subl	%ecx, %r10d
	.align	16, 0x90
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%r11d
	cmpl	%r9d, %r11d
	jne	.LBB2_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	(%rdi), %rax
	addq	$8, %rdi
	xorl	%r11d, %r11d
.LBB2_8:                                # %if.end
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rax, %rdx
	movb	%r8b, %cl
	shrq	%cl, %rdx
	movb	%dl, (%rsi)
	incl	%r11d
	cmpl	%r9d, %r11d
	jne	.LBB2_9
# BB#10:                                # %if.then.1
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	(%rdi), %rax
	addq	$8, %rdi
	xorl	%r11d, %r11d
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_6 Depth=1
	shlq	$8, %rax
.LBB2_11:                               # %if.end.1
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rax, %rdx
	movb	%r8b, %cl
	shrq	%cl, %rdx
	movb	%dl, 1(%rsi)
	shlq	$8, %rax
	addq	$2, %rsi
	addl	$-2, %r10d
	jne	.LBB2_6
.LBB2_12:                               # %for.end
	retq
.Lfunc_end2:
	.size	pack_scanline_ge8, .Lfunc_end2-pack_scanline_ge8
	.cfi_endproc

	.align	16, 0x90
	.type	unpack_scanline_lt8,@function
unpack_scanline_lt8:                    # @unpack_scanline_lt8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movl	%ecx, %r9d
	movl	%edx, %ebx
	movl	$8, %r10d
	movl	$8, %eax
	xorl	%edx, %edx
	idivl	%r8d
	movl	%eax, %r11d
	testl	%r9d, %r9d
	je	.LBB3_18
# BB#1:                                 # %if.end
	cmpl	%ebx, %r11d
	jg	.LBB3_3
# BB#2:                                 # %if.then.2
	movl	%ebx, %eax
	cltd
	idivl	%r11d
	cltq
	addq	%rax, %rsi
	leal	-1(%r11), %eax
	andl	%ebx, %eax
	movl	%eax, %ebx
.LBB3_3:                                # %if.end.5
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB3_4
# BB#5:                                 # %if.then.7
	movzbl	(%rsi), %eax
	incq	%rsi
	movl	%ebx, %ecx
	imull	%r8d, %ecx
	shll	%cl, %eax
	leal	(%r9,%rbx), %r9d
	jmp	.LBB3_6
.LBB3_4:
	xorl	%ebx, %ebx
.LBB3_6:                                # %for.cond.preheader
	movl	%r9d, %ecx
	subl	%ebx, %ecx
	jle	.LBB3_18
# BB#7:                                 # %for.body.lr.ph
	subl	%r8d, %r10d
	decl	%r11d
	leal	-1(%r9), %ebp
	testb	$1, %cl
	jne	.LBB3_9
# BB#8:
	movl	%ebx, %edx
	jmp	.LBB3_12
.LBB3_9:                                # %for.body.prol
	testl	%r11d, %ebx
	jne	.LBB3_11
# BB#10:                                # %if.then.16.prol
	movb	(%rsi), %al
	incq	%rsi
.LBB3_11:                               # %if.end.18.prol
	movzbl	%al, %eax
	movl	%eax, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	movslq	%edx, %rcx
	movq	%rcx, (%rdi)
	addq	$8, %rdi
	leal	1(%rbx), %edx
	movb	%r8b, %cl
	shll	%cl, %eax
.LBB3_12:                               # %for.body.lr.ph.split
	cmpl	%ebx, %ebp
	je	.LBB3_18
	.align	16, 0x90
.LBB3_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %edx
	jne	.LBB3_15
# BB#14:                                # %if.then.16
                                        #   in Loop: Header=BB3_13 Depth=1
	movb	(%rsi), %al
	incq	%rsi
.LBB3_15:                               # %if.end.18
                                        #   in Loop: Header=BB3_13 Depth=1
	movzbl	%al, %eax
	movl	%eax, %ebx
	movb	%r10b, %cl
	shrl	%cl, %ebx
	movslq	%ebx, %rcx
	movq	%rcx, (%rdi)
	incl	%edx
	movb	%r8b, %cl
	shll	%cl, %eax
	testl	%r11d, %edx
	jne	.LBB3_17
# BB#16:                                # %if.then.16.1
                                        #   in Loop: Header=BB3_13 Depth=1
	movb	(%rsi), %al
	incq	%rsi
.LBB3_17:                               # %if.end.18.1
                                        #   in Loop: Header=BB3_13 Depth=1
	movzbl	%al, %eax
	movl	%eax, %ebx
	movb	%r10b, %cl
	shrl	%cl, %ebx
	movslq	%ebx, %rcx
	movq	%rcx, 8(%rdi)
	movb	%r8b, %cl
	shll	%cl, %eax
	incl	%edx
	addq	$16, %rdi
	cmpl	%r9d, %edx
	jne	.LBB3_13
.LBB3_18:                               # %cleanup
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	unpack_scanline_lt8, .Lfunc_end3-unpack_scanline_lt8
	.cfi_endproc

	.align	16, 0x90
	.type	pack_scanline_lt8,@function
pack_scanline_lt8:                      # @pack_scanline_lt8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 24
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%ecx, %r9d
	movl	%edx, %r11d
	movl	$8, %eax
	xorl	%edx, %edx
	idivl	%r8d
	movl	%eax, %r10d
	testl	%r9d, %r9d
	je	.LBB4_16
# BB#1:                                 # %if.end
	cmpl	%r11d, %r10d
	jg	.LBB4_3
# BB#2:                                 # %if.then.2
	movl	%r11d, %eax
	cltd
	idivl	%r10d
	cltq
	addq	%rax, %rsi
	leal	-1(%r10), %eax
	andl	%r11d, %eax
	movl	%eax, %r11d
.LBB4_3:                                # %if.end.4
	xorl	%eax, %eax
	testl	%r11d, %r11d
	jle	.LBB4_4
# BB#5:                                 # %if.then.6
	movzbl	(%rsi), %eax
	incq	%rsi
	movl	%r11d, %edx
	imull	%r8d, %edx
	movl	$8, %ecx
	subl	%edx, %ecx
	shrl	%cl, %eax
	leal	(%r9,%r11), %r9d
	jmp	.LBB4_6
.LBB4_4:
	xorl	%r11d, %r11d
.LBB4_6:                                # %for.cond.preheader
	leal	-1(%r10), %edx
	movl	%r9d, %ecx
	subl	%r11d, %ecx
	jle	.LBB4_14
# BB#7:                                 # %for.body.preheader
	leal	-1(%r9), %ebp
	testb	$1, %cl
	jne	.LBB4_9
# BB#8:
	movl	%r11d, %ebx
	jmp	.LBB4_12
.LBB4_9:                                # %for.body.prol
	movzbl	%al, %eax
	movb	%r8b, %cl
	shll	%cl, %eax
	orl	(%rdi), %eax
	movl	%r11d, %ecx
	andl	%edx, %ecx
	cmpl	%edx, %ecx
	jne	.LBB4_11
# BB#10:                                # %if.then.21.prol
	movb	%al, (%rsi)
	incq	%rsi
.LBB4_11:                               # %for.inc.prol
	addq	$8, %rdi
	leal	1(%r11), %ebx
.LBB4_12:                               # %for.body.preheader.split
	cmpl	%r11d, %ebp
	je	.LBB4_13
	.align	16, 0x90
.LBB4_17:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movb	%r8b, %cl
	shll	%cl, %eax
	orq	(%rdi), %rax
	movl	%ebx, %ecx
	andl	%edx, %ecx
	cmpl	%edx, %ecx
	jne	.LBB4_19
# BB#18:                                # %if.then.21
                                        #   in Loop: Header=BB4_17 Depth=1
	movb	%al, (%rsi)
	incq	%rsi
.LBB4_19:                               # %for.inc
                                        #   in Loop: Header=BB4_17 Depth=1
	movzbl	%al, %eax
	movb	%r8b, %cl
	shll	%cl, %eax
	orl	8(%rdi), %eax
	incl	%ebx
	movl	%ebx, %ecx
	andl	%edx, %ecx
	cmpl	%edx, %ecx
	jne	.LBB4_21
# BB#20:                                # %if.then.21.1
                                        #   in Loop: Header=BB4_17 Depth=1
	movb	%al, (%rsi)
	incq	%rsi
.LBB4_21:                               # %for.inc.1
                                        #   in Loop: Header=BB4_17 Depth=1
	incl	%ebx
	addq	$16, %rdi
	cmpl	%r9d, %ebx
	jne	.LBB4_17
.LBB4_13:
	movl	%r9d, %r11d
.LBB4_14:                               # %for.end
	andl	%edx, %r11d
	je	.LBB4_16
# BB#15:                                # %if.then.28
	subl	%r11d, %r10d
	imull	%r8d, %r10d
	movl	$1, %edx
	movb	%r10b, %cl
	shll	%cl, %edx
	addl	$255, %edx
	movzbl	(%rsi), %edi
	andl	%edx, %edi
	movzbl	%al, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	orl	%edi, %eax
	movb	%al, (%rsi)
.LBB4_16:                               # %cleanup
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pack_scanline_lt8, .Lfunc_end4-pack_scanline_lt8
	.cfi_endproc

	.globl	gx_overprint_sep_fill_rectangle_1
	.align	16, 0x90
	.type	gx_overprint_sep_fill_rectangle_1,@function
gx_overprint_sep_fill_rectangle_1:      # @gx_overprint_sep_fill_rectangle_1
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
	subq	$616, %rsp              # imm = 0x268
.Ltmp27:
	.cfi_def_cfa_offset 672
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
	movl	%ecx, %ebx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movzwl	108(%r15), %eax
	orl	%edx, %ecx
	jns	.LBB5_2
# BB#1:                                 # %if.then
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%edx, %ecx
	addl	%ecx, %r8d
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovsl	%ecx, %edx
	movl	%ebx, %esi
	sarl	$31, %esi
	andl	%ebx, %esi
	addl	%esi, %r9d
	testl	%ebx, %ebx
	cmovsl	%ecx, %ebx
.LBB5_2:                                # %do.body.14
	movl	832(%r15), %ecx
	movl	836(%r15), %r14d
	subl	%edx, %ecx
	cmpl	%ecx, %r8d
	cmovlel	%r8d, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	subl	%ebx, %r14d
	cmpl	%r14d, %r9d
	cmovlel	%r9d, %r14d
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	jle	.LBB5_20
# BB#3:                                 # %do.body.14
	testl	%r14d, %r14d
	jle	.LBB5_20
# BB#4:                                 # %do.end.42
	movq	680(%rsp), %rdi
	movq	672(%rsp), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rcx          # 8-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	cmpl	$31, %eax
	ja	.LBB5_13
# BB#5:                                 # %if.then.46
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leal	-1(%rax), %esi
	cmpl	$7, %esi
	jbe	.LBB5_8
# BB#6:                                 # %if.then.46
	cmpl	$16, %eax
	jne	.LBB5_13
# BB#7:                                 # %replicate_color.exit.thread88
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	672(%rsp), %rax
	movq	%rax, %rcx
	shll	$16, %eax
	orl	%ecx, %eax
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ecx
	shll	$16, %ecx
	orl	%edx, %ecx
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_14
.LBB5_8:                                # %if.then.46
	jmpq	*.LJTI5_0(,%rsi,8)
.LBB5_9:                                # %replicate_color.exit.thread
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	negl	%eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	negl	%eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_14
.LBB5_13:                               # %if.else
	movq	%rdx, 32(%rsp)          # 8-byte Spill
.LBB5_14:                               # %if.end.52
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	63(%rax), %r12d
	sarl	$6, %r12d
	shll	$3, %r12d
	movl	$.L.str.1, %edx
	movl	%r12d, %esi
	movq	%rdi, %rax
	callq	*64(%rax)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	movq	32(%rsp), %rax          # 8-byte Reload
	je	.LBB5_20
# BB#15:                                # %if.end.59
	movq	$290537233, 80(%rsp)    # imm = 0x11513F11
	movl	$0, 600(%rsp)
	movq	%r13, 88(%rsp)
	movl	%r12d, 608(%rsp)
	movl	%eax, 64(%rsp)
	movq	56(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 72(%rsp)
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jle	.LBB5_19
	.align	16, 0x90
.LBB5_16:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, 68(%rsp)
	incl	%ebx
	movl	%ebx, 76(%rsp)
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	leaq	64(%rsp), %rsi
	leaq	80(%rsp), %rdx
	callq	*1448(%r15)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_19
# BB#17:                                # %if.end.77
                                        #   in Loop: Header=BB5_16 Depth=1
	movl	$1, (%rsp)
	xorl	%esi, %esi
	movq	%r13, %rdi
	movl	%r12d, %edx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	bits_fill_rectangle_masked
	leal	-1(%rbx), %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%r12d, %ecx
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	*1224(%r15)
	movl	%eax, %ebp
	cmpl	$2, %r14d
	jl	.LBB5_19
# BB#18:                                # %if.end.77
                                        #   in Loop: Header=BB5_16 Depth=1
	decl	%r14d
	testl	%ebp, %ebp
	jns	.LBB5_16
.LBB5_19:                               # %while.end
	movl	$.L.str, %edx
	movq	680(%rsp), %rdi
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB5_20:                               # %cleanup
	movl	%ebp, %eax
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_10:                               # %replicate_color.exit.thread76
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	672(%rsp), %rax
	andq	%rcx, %rax
	movl	fill_pat_2(,%rax,4), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	andq	%rcx, %rax
	movl	fill_pat_2(,%rax,4), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_14
.LBB5_11:                               # %replicate_color.exit.thread80
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	672(%rsp), %rax
	andq	%rcx, %rax
	movl	fill_pat_4(,%rax,4), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	andq	%rcx, %rax
	movl	fill_pat_4(,%rax,4), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_14
.LBB5_12:                               # %replicate_color.exit.thread84
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	imull	$16843009, %eax, %eax   # imm = 0x1010101
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	imull	$16843009, %eax, %eax   # imm = 0x1010101
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_14
.Lfunc_end5:
	.size	gx_overprint_sep_fill_rectangle_1, .Lfunc_end5-gx_overprint_sep_fill_rectangle_1
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_9
	.quad	.LBB5_10
	.quad	.LBB5_13
	.quad	.LBB5_11
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_12

	.text
	.globl	gx_overprint_sep_fill_rectangle_2
	.align	16, 0x90
	.type	gx_overprint_sep_fill_rectangle_2,@function
gx_overprint_sep_fill_rectangle_2:      # @gx_overprint_sep_fill_rectangle_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 56
	subq	$632, %rsp              # imm = 0x278
.Ltmp40:
	.cfi_def_cfa_offset 688
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movq	%rdi, %rbx
	movl	688(%rsp), %eax
	movq	696(%rsp), %rsi
	movq	%rdx, 624(%rsp)
	movq	%rsi, 616(%rsp)
	movzwl	108(%rbx), %r15d
	movl	%r8d, %edx
	orl	%r12d, %edx
	jns	.LBB6_2
# BB#1:                                 # %if.then
	movl	%r12d, %edx
	sarl	$31, %edx
	andl	%r12d, %edx
	addl	%edx, %r9d
	xorl	%esi, %esi
	testl	%r12d, %r12d
	cmovsl	%esi, %r12d
	movl	%r8d, %edx
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%edx, %eax
	testl	%r8d, %r8d
	cmovsl	%esi, %r8d
.LBB6_2:                                # %do.body.13
	movl	832(%rbx), %esi
	movl	836(%rbx), %edx
	subl	%r12d, %esi
	cmpl	%esi, %r9d
	cmovlel	%r9d, %esi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	subl	%r8d, %edx
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	xorl	%r14d, %r14d
	testl	%esi, %esi
	jle	.LBB6_16
# BB#3:                                 # %do.body.13
	testl	%edx, %edx
	jle	.LBB6_16
# BB#4:                                 # %do.end.41
	movq	704(%rsp), %rdi
	shrl	$3, %r15d
	movq	40(%rsp), %rbp          # 8-byte Reload
	imull	%r15d, %ebp
	leal	63(,%rbp,8), %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.2, %edx
	movl	%r13d, %esi
	movq	%r8, %r14
	callq	*64(%rdi)
	movq	%r12, %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%r14, %r8
	movq	%rax, %r12
	movl	$-25, %r14d
	testq	%r12, %r12
	je	.LBB6_16
# BB#5:                                 # %if.end.49
	movq	$290537233, 80(%rsp)    # imm = 0x11513F11
	movl	$0, 600(%rsp)
	movq	%r12, 88(%rsp)
	movl	%r13d, 608(%rsp)
	movl	%r13d, 52(%rsp)         # 4-byte Spill
	movl	%edx, 64(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rdx), %eax
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	%eax, 72(%rsp)
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	jle	.LBB6_15
# BB#6:                                 # %while.body.lr.ph
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB6_7:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #     Child Loop BB6_12 Depth 2
	leal	1(%r8), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	%r8d, 68(%rsp)
	movl	%eax, 76(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	leaq	64(%rsp), %rsi
	leaq	80(%rsp), %rdx
	movq	%r8, %r14
	callq	*1448(%rbx)
	movq	%r14, %r8
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB6_15
# BB#8:                                 # %if.end.67
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB6_11
# BB#9:                                 # %for.cond.preheader
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%eax, %eax
	testl	%ebp, %ebp
	movl	$0, %edi
	movl	52(%rsp), %ecx          # 4-byte Reload
	jle	.LBB6_13
	.align	16, 0x90
.LBB6_10:                               # %for.body
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12,%rax), %edx
	xorl	$255, %edx
	movslq	%edi, %rdi
	movzbl	616(%rsp,%rdi), %esi
	xorl	$255, %esi
	imull	%edx, %esi
	shrl	$8, %esi
	notl	%esi
	movb	%sil, (%r12,%rax)
	incl	%edi
	cmpl	%r15d, %edi
	cmovel	%r13d, %edi
	incq	%rax
	cmpl	%ebp, %eax
	jl	.LBB6_10
	jmp	.LBB6_13
	.align	16, 0x90
.LBB6_11:                               # %for.cond.86.preheader
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%eax, %eax
	testl	%ebp, %ebp
	movl	$0, %esi
	movl	52(%rsp), %ecx          # 4-byte Reload
	jle	.LBB6_13
	.align	16, 0x90
.LBB6_12:                               # %for.body.89
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%esi, %rsi
	movb	624(%rsp,%rsi), %dl
	andb	(%r12,%rax), %dl
	orb	616(%rsp,%rsi), %dl
	movb	%dl, (%r12,%rax)
	incl	%esi
	cmpl	%r15d, %esi
	cmovel	%r13d, %esi
	incq	%rax
	cmpl	%ebp, %eax
	jl	.LBB6_12
.LBB6_13:                               # %cleanup.thread
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	24(%rsp), %r9           # 8-byte Reload
	callq	*1224(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB6_15
# BB#14:                                # %cleanup.thread
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r8d
	jg	.LBB6_7
.LBB6_15:                               # %while.end
	movl	$.L.str, %edx
	movq	704(%rsp), %rdi
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB6_16:                               # %cleanup.115
	movl	%r14d, %eax
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_overprint_sep_fill_rectangle_2, .Lfunc_end6-gx_overprint_sep_fill_rectangle_2
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"overprint generic fill rectangle"
	.size	.L.str, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"overprint sep fill rectangle 1"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"overprint sep fill rectangle 2"
	.size	.L.str.2, 31

	.type	fill_pat_2,@object      # @fill_pat_2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
fill_pat_2:
	.long	0                       # 0x0
	.long	1431655765              # 0x55555555
	.long	2863311530              # 0xaaaaaaaa
	.long	4294967295              # 0xffffffff
	.size	fill_pat_2, 16

	.type	fill_pat_4,@object      # @fill_pat_4
	.section	.rodata,"a",@progbits
	.align	16
fill_pat_4:
	.long	0                       # 0x0
	.long	286331153               # 0x11111111
	.long	572662306               # 0x22222222
	.long	858993459               # 0x33333333
	.long	1145324612              # 0x44444444
	.long	1431655765              # 0x55555555
	.long	1717986918              # 0x66666666
	.long	2004318071              # 0x77777777
	.long	2290649224              # 0x88888888
	.long	2576980377              # 0x99999999
	.long	2863311530              # 0xaaaaaaaa
	.long	3149642683              # 0xbbbbbbbb
	.long	3435973836              # 0xcccccccc
	.long	3722304989              # 0xdddddddd
	.long	4008636142              # 0xeeeeeeee
	.long	4294967295              # 0xffffffff
	.size	fill_pat_4, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
