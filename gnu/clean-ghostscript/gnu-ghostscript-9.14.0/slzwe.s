	.text
	.file	"slzwe.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.zero	16,1
	.text
	.align	16, 0x90
	.type	s_LZWE_init,@function
s_LZWE_init:                            # @s_LZWE_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$8, 128(%rbx)
	movl	$0, 124(%rbx)
	movq	8(%rbx), %rdi
	movl	$st_lzwe_table, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, 136(%rbx)
	movl	$-2, %ecx
	testq	%rax, %rax
	je	.LBB0_9
# BB#1:                                 # %if.end
	movl	$1, 172(%rbx)
	movabsq	$38654705922, %rcx      # imm = 0x900000102
	movq	%rcx, 144(%rbx)
	movl	$257, 152(%rbx)         # imm = 0x101
	xorl	%ecx, %ecx
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [257,257,257,257,257,257,257,257]
	.align	16, 0x90
.LBB0_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 16380(%rax,%rcx,2)
	movups	%xmm0, 16396(%rax,%rcx,2)
	addq	$16, %rcx
	cmpq	$5104, %rcx             # imm = 0x13F0
	jne	.LBB0_2
# BB#3:                                 # %for.body.i
	movabsq	$72340172838076673, %rcx # imm = 0x101010101010101
	movq	%rcx, 26588(%rax)
	movq	%rcx, 26596(%rax)
	movq	%rcx, 26604(%rax)
	movl	$16843009, 26612(%rax)  # imm = 0x1010101
	leaq	26616(%rax), %rcx
	leaq	16380(%rax), %rdx
	xorl	%esi, %esi
	movl	$3437316539, %r8d       # imm = 0xCCE149BB
	.align	16, 0x90
.LBB0_4:                                # %for.body.4.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	imulq	$19, %rsi, %rdi
	addq	$15163, %rdi            # imm = 0x3B3B
	movl	%edi, %ebx
	imulq	%r8, %rbx
	shrq	$44, %rbx
	imull	$5118, %ebx, %ebx       # imm = 0x13FE
	subl	%ebx, %edi
	leaq	16380(%rax,%rdi,2), %rbx
	movzwl	16380(%rax,%rdi,2), %edi
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_5:                                # %while.body.i
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$2, %rbx
	cmpq	%rcx, %rbx
	cmoveq	%rdx, %rbx
	movzwl	(%rbx), %edi
.LBB0_6:                                # %while.body.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$257, %edi              # imm = 0x101
	jne	.LBB0_5
# BB#7:                                 # %while.end.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movw	%si, (%rbx)
	movb	%sil, (%rax,%rsi,4)
	movw	$257, 2(%rax,%rsi,4)    # imm = 0x101
	incq	%rsi
	cmpq	$256, %rsi              # imm = 0x100
	jne	.LBB0_4
# BB#8:                                 # %lzw_reset_encode.exit
	movw	$256, 1030(%rax)        # imm = 0x100
	xorl	%ecx, %ecx
.LBB0_9:                                # %return
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	s_LZWE_init, .Lfunc_end0-s_LZWE_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.zero	16,1
	.text
	.align	16, 0x90
	.type	s_LZWE_process,@function
s_LZWE_process:                         # @s_LZWE_process
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
	movl	%ecx, %r11d
	movq	(%rsi), %r14
	movq	8(%rsi), %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movq	8(%rdx), %r12
	movq	16(%rdx), %r8
	movl	152(%rdi), %r15d
	movq	136(%rdi), %r13
	movl	148(%rdi), %r9d
	movl	$1, %eax
	movl	$1, %ebp
	movb	%r9b, %cl
	shll	%cl, %ebp
	subl	120(%rdi), %ebp
	cmpl	$4095, %ebp             # imm = 0xFFF
	movl	$4095, %ebx             # imm = 0xFFF
	cmovlel	%ebp, %ebx
	cmpl	$0, 172(%rdi)
	je	.LBB1_6
# BB#1:                                 # %if.then.4
	movq	%r8, %rcx
	subq	%r12, %rcx
	cmpq	$2, %rcx
	jl	.LBB1_56
# BB#2:                                 # %if.end.7
	movq	%r8, -24(%rsp)          # 8-byte Spill
	movl	124(%rdi), %r10d
	movl	128(%rdi), %ecx
	shll	%cl, %r10d
	movl	%r9d, %eax
	subl	%ecx, %eax
	movl	$256, %r8d              # imm = 0x100
	movl	$256, %ebp              # imm = 0x100
	movb	%al, %cl
	shrl	%cl, %ebp
	addl	%r10d, %ebp
	movb	%bpl, 1(%r12)
	movl	$8, %ecx
	subl	%r9d, %ecx
	addl	128(%rdi), %ecx
	movl	%ecx, 128(%rdi)
	testl	%ecx, %ecx
	jle	.LBB1_4
# BB#3:
	incq	%r12
	jmp	.LBB1_5
.LBB1_4:                                # %if.then.i
	negl	%ecx
	shrl	%cl, %r8d
	movb	%r8b, 2(%r12)
	addq	$2, %r12
	addl	$8, 128(%rdi)
.LBB1_5:                                # %lzw_put_code.exit
	movq	-24(%rsp), %r8          # 8-byte Reload
	movl	$256, 124(%rdi)         # imm = 0x100
	movl	$0, 172(%rdi)
.LBB1_6:                                # %while.cond.preheader
	movq	%r8, -24(%rsp)          # 8-byte Spill
	movl	%r11d, -44(%rsp)        # 4-byte Spill
	movq	%rsi, -32(%rsp)         # 8-byte Spill
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	cmpq	-16(%rsp), %r14         # 8-byte Folded Reload
	jae	.LBB1_7
# BB#8:                                 # %while.body.lr.ph.lr.ph
	leaq	26616(%r13), %r8
	leaq	16380(%r13), %r11
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [257,257,257,257,257,257,257,257]
	.align	16, 0x90
.LBB1_9:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #       Child Loop BB1_30 Depth 3
	leaq	1(%r14), %r10
	movzbl	1(%r14), %esi
	imull	$59, %r15d, %ecx
	imull	$19, %esi, %edx
	addl	%ecx, %edx
	movq	%rdx, %rcx
	movl	$3437316539, %eax       # imm = 0xCCE149BB
	imulq	%rax, %rcx
	shrq	$44, %rcx
	imull	$5118, %ecx, %ecx       # imm = 0x13FE
	subl	%ecx, %edx
	leaq	16380(%r13,%rdx,2), %rbp
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_57:                               # %cleanup
                                        #   in Loop: Header=BB1_10 Depth=2
	addq	$2, %rbp
	cmpq	%r8, %rbp
	cmoveq	%r11, %rbp
.LBB1_10:                               # %for.cond
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp), %ecx
	movzwl	2(%r13,%rcx,4), %edx
	cmpl	%r15d, %edx
	jne	.LBB1_14
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_10 Depth=2
	movzbl	(%r13,%rcx,4), %edx
	movzbl	%sil, %eax
	cmpl	%eax, %edx
	je	.LBB1_12
.LBB1_14:                               # %if.else
                                        #   in Loop: Header=BB1_10 Depth=2
	cmpl	$257, %ecx              # imm = 0x101
	jne	.LBB1_57
# BB#15:                                # %if.else.38
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-24(%rsp), %rcx         # 8-byte Reload
	subq	%r12, %rcx
	movl	$1, %eax
	cmpq	$5, %rcx
	jl	.LBB1_16
# BB#17:                                # %if.end.45
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%r14, -8(%rsp)          # 8-byte Spill
	movl	148(%rdi), %eax
	movl	124(%rdi), %r9d
	movl	128(%rdi), %ecx
	shll	%cl, %r9d
	movl	$8, %r10d
	subl	%eax, %r10d
	subl	%ecx, %eax
	movl	%r15d, %edx
	movb	%al, %cl
	shrl	%cl, %edx
	addl	%r9d, %edx
	movb	%dl, 1(%r12)
	addl	128(%rdi), %r10d
	movl	%r10d, 128(%rdi)
	testl	%r10d, %r10d
	jle	.LBB1_19
# BB#18:                                #   in Loop: Header=BB1_9 Depth=1
	leaq	1(%r12), %r9
	movl	$1, %r14d
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_12:                               # %if.then.25
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpq	-16(%rsp), %r10         # 8-byte Folded Reload
	movq	%r10, %r14
	movl	%ecx, %r15d
	jb	.LBB1_9
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_19:                               # %if.then.i.161
                                        #   in Loop: Header=BB1_9 Depth=1
	negl	%r10d
	movl	%r15d, %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	leaq	2(%r12), %r9
	movb	%al, 2(%r12)
	movl	128(%rdi), %r10d
	addl	$8, %r10d
	movl	%r10d, 128(%rdi)
	movl	$2, %r14d
.LBB1_20:                               # %lzw_put_code.exit163
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	%r15d, 124(%rdi)
	movl	144(%rdi), %eax
	cmpl	%ebx, %eax
	jne	.LBB1_34
# BB#21:                                # %if.then.49
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$4095, %ebx             # imm = 0xFFF
	jne	.LBB1_33
# BB#22:                                # %if.then.53
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	148(%rdi), %eax
	movb	%r10b, %cl
	shll	%cl, %r15d
	movl	$8, %r9d
	subl	%eax, %r9d
	subl	%r10d, %eax
	movl	$256, %edx              # imm = 0x100
	movb	%al, %cl
	shrl	%cl, %edx
	addl	%r15d, %edx
	movb	%dl, 1(%r12,%r14)
	addl	128(%rdi), %r9d
	movl	%r9d, 128(%rdi)
	testl	%r9d, %r9d
	jle	.LBB1_24
# BB#23:                                #   in Loop: Header=BB1_9 Depth=1
	leaq	1(%r12,%r14), %r9
	jmp	.LBB1_25
.LBB1_33:                               # %if.end.63
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	148(%rdi), %ecx
	incl	%ecx
	movl	%ecx, 148(%rdi)
	movl	$1, %ebx
	shll	%cl, %ebx
	subl	120(%rdi), %ebx
	cmpl	$4095, %ebx             # imm = 0xFFF
	movl	$4095, %ecx             # imm = 0xFFF
	cmovgl	%ecx, %ebx
.LBB1_34:                               # %do.end
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-8(%rsp), %r14          # 8-byte Reload
	leal	1(%rax), %ecx
	movl	%ecx, 144(%rdi)
	movw	%ax, (%rbp)
	movzwl	%ax, %eax
	movb	%sil, (%r13,%rax,4)
	movw	%r15w, 2(%r13,%rax,4)
	jmp	.LBB1_35
.LBB1_24:                               # %if.then.i.141
                                        #   in Loop: Header=BB1_9 Depth=1
	addq	%r14, %r12
	negl	%r9d
	movl	$256, %eax              # imm = 0x100
	movb	%r9b, %cl
	shrl	%cl, %eax
	movb	%al, 2(%r12)
	addq	$2, %r12
	addl	$8, 128(%rdi)
	movq	%r12, %r9
.LBB1_25:                               # %lzw_put_code.exit143
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-8(%rsp), %r14          # 8-byte Reload
	movl	$256, 124(%rdi)         # imm = 0x100
	movq	136(%rdi), %r10
	movl	$258, 144(%rdi)         # imm = 0x102
	movl	$9, 148(%rdi)
	movl	$257, 152(%rdi)         # imm = 0x101
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_26:                               # %vector.body
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, 16380(%r10,%rcx,2)
	movups	%xmm0, 16396(%r10,%rcx,2)
	addq	$16, %rcx
	cmpq	$5104, %rcx             # imm = 0x13F0
	jne	.LBB1_26
# BB#27:                                # %for.body.i
                                        #   in Loop: Header=BB1_9 Depth=1
	leaq	16380(%r10), %rcx
	movabsq	$72340172838076673, %rax # imm = 0x101010101010101
	movq	%rax, 26588(%r10)
	movq	%rax, 26596(%r10)
	movq	%rax, 26604(%r10)
	movl	$16843009, 26612(%r10)  # imm = 0x1010101
	leaq	26616(%r10), %rsi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_28:                               # %for.body.4.i
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_30 Depth 3
	imulq	$19, %rbp, %rbx
	addq	$15163, %rbx            # imm = 0x3B3B
	movl	%ebx, %edx
	movl	$3437316539, %eax       # imm = 0xCCE149BB
	imulq	%rdx, %rax
	shrq	$44, %rax
	imull	$5118, %eax, %eax       # imm = 0x13FE
	subl	%eax, %ebx
	leaq	16380(%r10,%rbx,2), %rdx
	movzwl	16380(%r10,%rbx,2), %eax
	jmp	.LBB1_30
	.align	16, 0x90
.LBB1_29:                               # %while.body.i
                                        #   in Loop: Header=BB1_30 Depth=3
	addq	$2, %rdx
	cmpq	%rsi, %rdx
	cmoveq	%rcx, %rdx
	movzwl	(%rdx), %eax
.LBB1_30:                               # %while.body.i
                                        #   Parent Loop BB1_9 Depth=1
                                        #     Parent Loop BB1_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$257, %eax              # imm = 0x101
	jne	.LBB1_29
# BB#31:                                # %while.end.i
                                        #   in Loop: Header=BB1_28 Depth=2
	movw	%bp, (%rdx)
	movb	%bpl, (%r10,%rbp,4)
	movw	$257, 2(%r10,%rbp,4)    # imm = 0x101
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB1_28
# BB#32:                                # %lzw_reset_encode.exit
                                        #   in Loop: Header=BB1_9 Depth=1
	movw	$256, 1030(%r10)        # imm = 0x100
	movl	$512, %ebx              # imm = 0x200
	subl	120(%rdi), %ebx
	cmpl	$4095, %ebx             # imm = 0xFFF
	movl	$4095, %eax             # imm = 0xFFF
	cmovgl	%eax, %ebx
.LBB1_35:                               # %while.cond.outer.backedge
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$257, %r15d             # imm = 0x101
	cmpq	-16(%rsp), %r14         # 8-byte Folded Reload
	movq	%r9, %r12
	jb	.LBB1_9
	jmp	.LBB1_36
.LBB1_7:
	movq	%r12, %r9
	jmp	.LBB1_36
.LBB1_13:
	movq	%r12, %r9
	movq	%r10, %r14
	movl	%ecx, %r15d
.LBB1_36:                               # %while.end
	xorl	%eax, %eax
	cmpl	$0, -44(%rsp)           # 4-byte Folded Reload
	je	.LBB1_37
# BB#38:                                # %if.then.93
	movq	-24(%rsp), %rcx         # 8-byte Reload
	subq	%r9, %rcx
	cmpq	$4, %rcx
	jge	.LBB1_40
# BB#39:
	movq	%r9, %r12
	movl	$1, %eax
	jmp	.LBB1_16
.LBB1_37:
	movq	%r9, %r12
.LBB1_16:
	movq	-40(%rsp), %rcx         # 8-byte Reload
	movq	-32(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB1_55
.LBB1_40:                               # %if.else.100
	cmpl	$257, %r15d             # imm = 0x101
	jne	.LBB1_42
# BB#41:                                # %if.else.100.if.end.116_crit_edge
	leaq	124(%rdi), %r10
	movl	124(%rdi), %ebx
	movq	%rdi, %r11
	subq	$-128, %r11
	jmp	.LBB1_49
.LBB1_42:                               # %if.then.103
	movl	148(%rdi), %esi
	movq	%rdi, %r11
	subq	$-128, %r11
	movl	124(%rdi), %ebp
	movl	128(%rdi), %ecx
	shll	%cl, %ebp
	movl	$8, %r8d
	subl	%esi, %r8d
	subl	%ecx, %esi
	movl	%r15d, %edx
	movb	%sil, %cl
	shrl	%cl, %edx
	addl	%ebp, %edx
	movb	%dl, 1(%r9)
	addl	128(%rdi), %r8d
	movl	%r8d, 128(%rdi)
	testl	%r8d, %r8d
	jle	.LBB1_44
# BB#43:
	incq	%r9
	jmp	.LBB1_45
.LBB1_44:                               # %if.then.i.119
	negl	%r8d
	movl	%r15d, %edx
	movb	%r8b, %cl
	shrl	%cl, %edx
	movb	%dl, 2(%r9)
	addq	$2, %r9
	addl	$8, (%r11)
.LBB1_45:                               # %lzw_put_code.exit121
	leaq	124(%rdi), %r10
	movl	%r15d, 124(%rdi)
	movl	144(%rdi), %ecx
	cmpl	%ebx, %ecx
	jne	.LBB1_48
# BB#46:                                # %lzw_put_code.exit121
	cmpl	$4095, %ecx             # imm = 0xFFF
	je	.LBB1_48
# BB#47:                                # %if.then.112
	incl	148(%rdi)
.LBB1_48:                               # %if.end.116
	movl	%r15d, %ebx
.LBB1_49:                               # %if.end.116
	movl	128(%rdi), %ecx
	movl	148(%rdi), %ebp
	shll	%cl, %ebx
	movl	$8, %r8d
	subl	%ebp, %r8d
	subl	%ecx, %ebp
	movl	$257, %esi              # imm = 0x101
	movl	$257, %edx              # imm = 0x101
	movb	%bpl, %cl
	shrl	%cl, %edx
	addl	%ebx, %edx
	movb	%dl, 1(%r9)
	addl	128(%rdi), %r8d
	movl	%r8d, 128(%rdi)
	movl	$1, %ebp
	testl	%r8d, %r8d
	jle	.LBB1_51
# BB#50:
	leaq	1(%r9), %r12
	jmp	.LBB1_52
.LBB1_51:                               # %if.then.i.99
	negl	%r8d
	movb	%r8b, %cl
	shrl	%cl, %esi
	leaq	2(%r9), %r12
	movb	%sil, 2(%r9)
	movl	(%r11), %r8d
	addl	$8, %r8d
	movl	%r8d, (%r11)
	movl	$2, %ebp
.LBB1_52:                               # %lzw_put_code.exit101
	movq	-32(%rsp), %rsi         # 8-byte Reload
	movl	$257, (%r10)            # imm = 0x101
	cmpl	$7, %r8d
	jg	.LBB1_54
# BB#53:                                # %if.then.120
	movl	$257, %edx              # imm = 0x101
	movb	%r8b, %cl
	shll	%cl, %edx
	leaq	1(%r9,%rbp), %r12
	movb	%dl, 1(%r9,%rbp)
.LBB1_54:                               # %out
	movq	-40(%rsp), %rcx         # 8-byte Reload
.LBB1_55:                               # %out
	movl	%r15d, 152(%rdi)
	movq	%r14, (%rsi)
	movq	%r12, 8(%rcx)
.LBB1_56:                               # %cleanup.131
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_LZWE_process, .Lfunc_end1-s_LZWE_process
	.cfi_endproc

	.type	s_LZWE_template,@object # @s_LZWE_template
	.section	.rodata,"a",@progbits
	.globl	s_LZWE_template
	.align	8
s_LZWE_template:
	.quad	st_LZW_state
	.quad	s_LZWE_init
	.quad	s_LZWE_process
	.long	1                       # 0x1
	.long	4                       # 0x4
	.quad	s_LZW_release
	.quad	s_LZW_set_defaults
	.quad	0
	.size	s_LZWE_template, 56

	.type	st_lzwe_table,@object   # @st_lzwe_table
	.align	8
st_lzwe_table:
	.long	26616                   # 0x67f8
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_lzwe_table, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LZWEncode init"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"lzw_encode_table"
	.size	.L.str.1, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
