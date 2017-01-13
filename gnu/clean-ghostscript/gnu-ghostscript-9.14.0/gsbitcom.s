	.text
	.file	"gsbitcom.bc"
	.globl	bits_compress_scaled
	.align	16, 0x90
	.type	bits_compress_scaled,@function
bits_compress_scaled:                   # @bits_compress_scaled
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
	subq	$112, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 168
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
	movl	%ecx, %r11d
	movl	%r11d, 44(%rsp)         # 4-byte Spill
	movl	%edx, 48(%rsp)          # 4-byte Spill
	movq	176(%rsp), %rcx
	movl	(%rcx), %r13d
	movl	4(%rcx), %r14d
	movl	$1, %ebx
	movb	%r13b, %cl
	shll	%cl, %ebx
	movl	$1, %ebp
	movb	%r14b, %cl
	shll	%cl, %ebp
	movl	%ebp, 80(%rsp)          # 4-byte Spill
	movslq	184(%rsp), %r15
	movl	$1, %r12d
	movb	%r15b, %cl
	shll	%cl, %r12d
	movl	%r12d, 104(%rsp)        # 4-byte Spill
	movl	$3, %ecx
	subl	%r13d, %ecx
	movl	%r12d, %eax
	shll	%cl, %eax
	movl	%eax, -12(%rsp)         # 4-byte Spill
	movl	%r8d, %ebp
	movb	%r14b, %cl
	shll	%cl, %ebp
	movb	%r13b, %cl
	shrl	%cl, %edx
	movb	%r15b, %cl
	shll	%cl, %edx
	movl	$1, %r10d
	movb	%bl, %cl
	shll	%cl, %r10d
	leal	(%r14,%r13), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	$8, %eax
	subl	%ebx, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cmpl	%ebx, %r12d
	movl	$-1, %ecx
	cmovlel	%eax, %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	testl	%r11d, %r11d
	movl	$1, %r11d
	movl	$8, -52(%rsp)           # 4-byte Folded Spill
	je	.LBB0_76
# BB#1:                                 # %for.body.lr.ph
	movl	168(%rsp), %r12d
	leal	-1(%r14,%r13), %eax
	cltq
	shlq	$5, %r15
	movq	compress_tables(%r15,%rax,8), %r13
	movq	%r13, 64(%rsp)          # 8-byte Spill
	addl	$7, %edx
	shrl	$3, %edx
	movl	%edx, -36(%rsp)         # 4-byte Spill
	movl	%r12d, %r14d
	subl	%edx, %r14d
	movl	%r14d, -60(%rsp)        # 4-byte Spill
	decl	%r10d
	movl	%esi, %eax
	andl	$7, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -56(%rsp)         # 4-byte Spill
	sarl	$3, %esi
	movslq	%esi, %rcx
	addq	%rcx, %rdi
	movl	-12(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %r11d
	addl	$255, %r11d
	movl	$8, %ecx
	subl	104(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, -20(%rsp)         # 4-byte Spill
	subl	%eax, -52(%rsp)         # 4-byte Folded Spill
	movzbl	%r11b, %eax
	movl	%eax, -16(%rsp)         # 4-byte Spill
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	%ebp, %eax
	subl	%r8d, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$4, %eax
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	subl	%ebx, %eax
	movl	%eax, (%rsp)            # 4-byte Spill
	leal	-1(%r12), %eax
	subl	%edx, %eax
	leaq	1(%rax), %rcx
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	incq	%rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rax, %rcx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	leaq	-32(%rcx), %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	shrl	$5, %eax
	incl	%eax
	subl	%ecx, %r14d
	movl	%r14d, -108(%rsp)       # 4-byte Spill
	andl	$3, %eax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	leal	-32(%rcx), %eax
	shrl	$5, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	xorps	%xmm0, %xmm0
	movl	%ebp, %eax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	leal	(%rbp,%rbp), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	leal	1(%r10,%r10), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	leal	-1(%rbx), %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	%rbx, %rsi
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_9 Depth 4
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_46 Depth 4
                                        #         Child Loop BB0_51 Depth 4
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #     Child Loop BB0_73 Depth 2
	movl	48(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	jle	.LBB0_3
# BB#4:                                 # %for.body.29.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	movq	%rdi, %r15
	movq	%r15, -32(%rsp)         # 8-byte Spill
	movl	-20(%rsp), %edi         # 4-byte Reload
	movl	-56(%rsp), %eax         # 4-byte Reload
	movl	-52(%rsp), %r12d        # 4-byte Reload
	movq	%rsi, %r14
	movq	%r13, %r11
	jmp	.LBB0_5
.LBB0_24:                               # %if.then.56
                                        #   in Loop: Header=BB0_5 Depth=2
	movb	%bl, (%r9)
	incq	%r9
	andl	$7, %edi
	xorl	%ebx, %ebx
	movl	28(%rsp), %eax          # 4-byte Reload
	jmp	.LBB0_58
.LBB0_27:                               # %if.else
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	%eax, %ecx
	negl	%ecx
	movl	-16(%rsp), %esi         # 4-byte Reload
	movl	%esi, %edx
	shrl	%cl, %edx
	movzbl	%bl, %ecx
	orl	%edx, %ecx
	movb	%cl, (%r9)
	incq	%r9
	addl	$8, %edi
	addl	$8, %eax
	movl	%esi, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	movl	28(%rsp), %eax          # 4-byte Reload
	jmp	.LBB0_58
	.align	16, 0x90
.LBB0_5:                                # %for.body.29
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_9 Depth 4
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_46 Depth 4
                                        #         Child Loop BB0_51 Depth 4
	movl	%r12d, %edx
	subl	%ecx, %edx
	movl	$0, %esi
	cmovlel	%esi, %edx
	movl	%edx, 108(%rsp)         # 4-byte Spill
	cmpl	28(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB0_6
# BB#13:                                # %for.body.29
                                        #   in Loop: Header=BB0_5 Depth=2
	testl	%edx, %edx
	jne	.LBB0_6
# BB#14:                                # %if.then
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movzbl	(%r15), %ecx
	testl	%ecx, %ecx
	jne	.LBB0_15
# BB#21:                                # %for.cond.42.preheader
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	%r12d, 52(%rsp)         # 4-byte Spill
	cmpl	%r8d, %ebp
	movl	%r8d, %ecx
	je	.LBB0_22
	.align	16, 0x90
.LBB0_20:                               # %for.body.45
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ecx, %rdx
	cmpb	$0, (%r15,%rdx)
	jne	.LBB0_8
# BB#19:                                # %for.cond.42
                                        #   in Loop: Header=BB0_20 Depth=3
	addl	%r8d, %ecx
	cmpl	%ecx, %ebp
	jne	.LBB0_20
.LBB0_22:                               # %for.end
                                        #   in Loop: Header=BB0_5 Depth=2
	subl	-12(%rsp), %edi         # 4-byte Folded Reload
	js	.LBB0_24
# BB#23:                                #   in Loop: Header=BB0_5 Depth=2
	movl	28(%rsp), %eax          # 4-byte Reload
	jmp	.LBB0_58
	.align	16, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=2
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_15:                               # %if.then
                                        #   in Loop: Header=BB0_5 Depth=2
	cmpl	$255, %ecx
	jne	.LBB0_7
# BB#16:                                # %for.cond.61.preheader
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	%r12d, 52(%rsp)         # 4-byte Spill
	cmpl	%r8d, %ebp
	movl	%r8d, %ecx
	je	.LBB0_17
	.align	16, 0x90
.LBB0_26:                               # %for.body.64
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ecx, %rdx
	movzbl	(%r15,%rdx), %edx
	cmpl	$255, %edx
	jne	.LBB0_8
# BB#25:                                # %for.cond.61
                                        #   in Loop: Header=BB0_26 Depth=3
	addl	%r8d, %ecx
	cmpl	%ecx, %ebp
	jne	.LBB0_26
.LBB0_17:                               # %for.end.74
                                        #   in Loop: Header=BB0_5 Depth=2
	subl	-12(%rsp), %edi         # 4-byte Folded Reload
	movl	%edi, %eax
	addl	104(%rsp), %eax         # 4-byte Folded Reload
	jle	.LBB0_27
# BB#18:                                # %if.then.79
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-16(%rsp), %edx         # 4-byte Reload
	movb	%al, %cl
	shll	%cl, %edx
	movzbl	%bl, %ebx
	orl	%edx, %ebx
	movl	28(%rsp), %eax          # 4-byte Reload
	jmp	.LBB0_58
	.align	16, 0x90
.LBB0_7:                                # %do.body
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	%r12d, 52(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB0_8:                                # %do.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_9 Depth 4
                                        #         Child Loop BB0_32 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #         Child Loop BB0_46 Depth 4
                                        #         Child Loop BB0_51 Depth 4
	xorl	%r13d, %r13d
	testl	%ebp, %ebp
	movl	$0, %r12d
	movl	$0, %edx
	je	.LBB0_54
	.align	16, 0x90
.LBB0_9:                                # %for.body.102
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%edx, %rdx
	movzbl	(%r15,%rdx), %esi
	movb	%al, %cl
	shrl	%cl, %esi
	andl	%r10d, %esi
	movzbl	half_byte_1s(%rsi), %ecx
	addl	%ecx, %r12d
	addl	%r8d, %edx
	cmpl	%edx, %ebp
	jne	.LBB0_9
# BB#10:                                # %for.end.114
                                        #   in Loop: Header=BB0_8 Depth=3
	testl	%r12d, %r12d
	je	.LBB0_54
# BB#11:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	%r12d, %ecx
	cmpb	$0, (%r11,%rcx)
	je	.LBB0_28
# BB#12:                                #   in Loop: Header=BB0_8 Depth=3
	movl	%r12d, %r13d
	jmp	.LBB0_54
.LBB0_28:                               # %if.then.123
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	%ebx, 88(%rsp)          # 4-byte Spill
	movl	%edi, 92(%rsp)          # 4-byte Spill
	movq	%r9, 96(%rsp)           # 8-byte Spill
	movl	%r10d, %r9d
	movb	%al, %cl
	shll	%cl, %r9d
	cmpl	$2, 80(%rsp)            # 4-byte Folded Reload
	movl	%r12d, %r13d
	jl	.LBB0_41
# BB#29:                                # %if.then.128
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	44(%rsp), %ecx          # 4-byte Folded Reload
	movl	%r12d, %r13d
	jae	.LBB0_35
# BB#30:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB0_8 Depth=3
	movzbl	(%r15), %edi
	andl	%r9d, %edi
	movl	%r12d, %r13d
	je	.LBB0_35
# BB#31:                                # %for.cond.140.preheader
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$0, %ebx
	xorl	%r13d, %r13d
	cmpl	%r8d, %ebp
	movl	%r8d, %edx
	movl	4(%rsp), %esi           # 4-byte Reload
	jb	.LBB0_34
	.align	16, 0x90
.LBB0_32:                               # %land.rhs
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edi, %ecx
	movslq	%esi, %rdi
	movzbl	(%r15,%rdi), %edi
	andl	%ecx, %edi
	je	.LBB0_34
# BB#33:                                # %for.body.154
                                        #   in Loop: Header=BB0_32 Depth=4
	movl	%edi, %r14d
	movb	%al, %cl
	shrl	%cl, %r14d
	movslq	%r14d, %rcx
	movzbl	half_byte_1s(%rcx), %ecx
	addl	%ecx, %r13d
	subl	%r8d, %esi
	addl	%r8d, %edx
	cmpl	%edx, %ebp
	jae	.LBB0_32
.LBB0_34:                               # %do.end.164
                                        #   in Loop: Header=BB0_8 Depth=3
	cmpl	%r12d, %r13d
	cmoval	%ebx, %r13d
	addl	%r12d, %r13d
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB0_35:                               # %if.end.170
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	80(%rsp), %ecx          # 4-byte Folded Reload
	jbe	.LBB0_41
# BB#36:                                # %land.lhs.true.173
                                        #   in Loop: Header=BB0_8 Depth=3
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%r15,%rcx), %edx
	andl	%r9d, %edx
	je	.LBB0_41
# BB#37:                                # %for.cond.184.preheader
                                        #   in Loop: Header=BB0_8 Depth=3
	xorl	%esi, %esi
	cmpl	76(%rsp), %ebp          # 4-byte Folded Reload
	movl	%ebp, %edi
	jae	.LBB0_40
	.align	16, 0x90
.LBB0_38:                               # %land.rhs.188
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edx, %ecx
	movslq	%edi, %rdx
	movzbl	(%r15,%rdx), %edx
	andl	%ecx, %edx
	je	.LBB0_40
# BB#39:                                # %for.body.199
                                        #   in Loop: Header=BB0_38 Depth=4
	movl	%edx, %ebx
	movb	%al, %cl
	shrl	%cl, %ebx
	movslq	%ebx, %rcx
	movzbl	half_byte_1s(%rcx), %ecx
	addl	%ecx, %esi
	addl	%r8d, %edi
	cmpl	76(%rsp), %edi          # 4-byte Folded Reload
	jb	.LBB0_38
.LBB0_40:                               # %do.end.211
                                        #   in Loop: Header=BB0_8 Depth=3
	cmpl	%r12d, %esi
	movl	$0, %ecx
	cmovael	%ecx, %esi
	addl	%esi, %r13d
.LBB0_41:                               # %if.end.218
                                        #   in Loop: Header=BB0_8 Depth=3
	cmpl	$2, %r14d
	movq	64(%rsp), %r11          # 8-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	jl	.LBB0_42
# BB#43:                                # %if.then.221
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	84(%rsp), %ecx          # 4-byte Reload
	cmpl	48(%rsp), %ecx          # 4-byte Folded Reload
	jae	.LBB0_48
# BB#44:                                # %if.then.226
                                        #   in Loop: Header=BB0_8 Depth=3
	xorl	%esi, %esi
	testl	%ebp, %ebp
	je	.LBB0_47
# BB#45:                                #   in Loop: Header=BB0_8 Depth=3
	movq	-8(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %ecx
	xorl	%edx, %edx
	movl	24(%rsp), %r11d         # 4-byte Reload
	.align	16, 0x90
.LBB0_46:                               # %for.body.232
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%edx, %rdx
	movzbl	-1(%r15,%rdx), %edi
	shll	$8, %edi
	movzbl	(%r15,%rdx), %ebx
	orl	%edi, %ebx
	shrl	%cl, %ebx
	andl	%r11d, %ebx
	movzbl	bits5_trailing_1s(%rbx), %edi
	addl	%edi, %esi
	addl	%r8d, %edx
	cmpl	%ebp, %edx
	jb	.LBB0_46
.LBB0_47:                               # %do.end.253
                                        #   in Loop: Header=BB0_8 Depth=3
	cmpl	%r12d, %esi
	movl	$0, %ecx
	cmovael	%ecx, %esi
	addl	%esi, %r13d
	movq	64(%rsp), %r11          # 8-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
.LBB0_48:                               # %if.end.259
                                        #   in Loop: Header=BB0_8 Depth=3
	cmpl	%r14d, 84(%rsp)         # 4-byte Folded Reload
	movl	92(%rsp), %edi          # 4-byte Reload
	movl	88(%rsp), %ebx          # 4-byte Reload
	jle	.LBB0_53
# BB#49:                                # %if.then.262
                                        #   in Loop: Header=BB0_8 Depth=3
	movq	%r9, 96(%rsp)           # 8-byte Spill
	movq	%r11, %rbx
	xorl	%r9d, %r9d
	testl	%ebp, %ebp
	je	.LBB0_52
# BB#50:                                #   in Loop: Header=BB0_8 Depth=3
	movq	8(%rsp), %rcx           # 8-byte Reload
	leal	(%rcx,%rax), %r14d
	xorl	%edx, %edx
	movl	(%rsp), %esi            # 4-byte Reload
	movl	24(%rsp), %r11d         # 4-byte Reload
	.align	16, 0x90
.LBB0_51:                               # %for.body.268
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	%edx, %rdx
	movzbl	(%r15,%rdx), %ecx
	shll	$8, %ecx
	movzbl	1(%r15,%rdx), %edi
	orl	%ecx, %edi
	movb	%r14b, %cl
	shrl	%cl, %edi
	andl	%r11d, %edi
	movb	%sil, %cl
	shll	%cl, %edi
	movzbl	bits5_leading_1s(%rdi), %ecx
	addl	%ecx, %r9d
	addl	%r8d, %edx
	cmpl	%ebp, %edx
	jb	.LBB0_51
.LBB0_52:                               # %do.end.292
                                        #   in Loop: Header=BB0_8 Depth=3
	cmpl	%r12d, %r9d
	movl	$0, %ecx
	cmoval	%ecx, %r9d
	addl	%r9d, %r13d
	movq	%rbx, %r11
	movq	96(%rsp), %r9           # 8-byte Reload
	movl	92(%rsp), %edi          # 4-byte Reload
	movl	88(%rsp), %ebx          # 4-byte Reload
	movq	32(%rsp), %r14          # 8-byte Reload
	jmp	.LBB0_53
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=3
	movl	92(%rsp), %edi          # 4-byte Reload
	movl	88(%rsp), %ebx          # 4-byte Reload
.LBB0_53:                               # %if.end.299
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	56(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %r13d
	cmoval	%ecx, %r13d
	.align	16, 0x90
.LBB0_54:                               # %if.end.304
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	%r13d, %ecx
	movzbl	(%r11,%rcx), %edx
	movb	%dil, %cl
	shll	%cl, %edx
	movzbl	%bl, %ebx
	addl	%edx, %ebx
	subl	104(%rsp), %edi         # 4-byte Folded Reload
	jns	.LBB0_56
# BB#55:                                # %if.then.315
                                        #   in Loop: Header=BB0_8 Depth=3
	movb	%bl, (%r9)
	incq	%r9
	andl	$7, %edi
	xorl	%ebx, %ebx
.LBB0_56:                               # %if.end.318
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	108(%rsp), %ecx         # 4-byte Reload
	subl	%r14d, %eax
	cmpl	%ecx, %eax
	jge	.LBB0_8
# BB#57:                                # %do.end.323
                                        #   in Loop: Header=BB0_5 Depth=2
	addl	$8, %eax
.LBB0_58:                               # %cleanup
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	52(%rsp), %ecx          # 4-byte Reload
	incq	%r15
	movl	84(%rsp), %edx          # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, %ecx
	movl	$8, %r12d
	jg	.LBB0_5
# BB#59:                                # %for.end.329
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	-20(%rsp), %edi         # 4-byte Folded Reload
	je	.LBB0_61
# BB#60:                                # %if.then.333
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	%bl, (%r9)
	incq	%r9
.LBB0_61:                               # %for.cond.336.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-32(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	jmp	.LBB0_62
	.align	16, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %r11
.LBB0_62:                               # %for.cond.336.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	168(%rsp), %eax
	cmpl	%eax, -36(%rsp)         # 4-byte Folded Reload
	jne	.LBB0_64
# BB#63:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r11, %r13
	jmp	.LBB0_75
	.align	16, 0x90
.LBB0_64:                               # %overflow.checked
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, %rbx
	movq	-88(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	movq	%r9, %rax
	movl	-60(%rsp), %ecx         # 4-byte Reload
	movl	$0, %edx
	je	.LBB0_72
# BB#65:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, -104(%rsp)          # 8-byte Folded Reload
	movl	$0, %ecx
	je	.LBB0_68
# BB#66:                                # %vector.body.prol.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rsp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_67:                               # %vector.body.prol
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, (%r9,%rcx)
	movups	%xmm0, 16(%r9,%rcx)
	addq	$32, %rcx
	incq	%rax
	jne	.LBB0_67
.LBB0_68:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	(%r9,%rsi), %rax
	cmpq	$96, -96(%rsp)          # 8-byte Folded Reload
	jb	.LBB0_71
# BB#69:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, %rdx
	subq	%rcx, %rdx
	leaq	112(%r9,%rcx), %rcx
	.align	16, 0x90
.LBB0_70:                               # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, -112(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-128, %rdx
	jne	.LBB0_70
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	movl	-108(%rsp), %ecx        # 4-byte Reload
	movq	%rsi, %rdx
.LBB0_72:                               # %middle.block
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r11, %r13
	movq	%rbx, %rsi
	cmpq	%rdx, -72(%rsp)         # 8-byte Folded Reload
	je	.LBB0_74
	.align	16, 0x90
.LBB0_73:                               # %for.body.339
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rax)
	incq	%rax
	decl	%ecx
	jne	.LBB0_73
.LBB0_74:                               # %for.cond.336.for.end.342_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	addq	-80(%rsp), %r9          # 8-byte Folded Reload
.LBB0_75:                               # %for.end.342
                                        #   in Loop: Header=BB0_2 Depth=1
	addq	-48(%rsp), %rdi         # 8-byte Folded Reload
	movl	60(%rsp), %eax          # 4-byte Reload
	subl	80(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
	jne	.LBB0_2
.LBB0_76:                               # %for.end.347
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bits_compress_scaled, .Lfunc_end0-bits_compress_scaled
	.cfi_endproc

	.type	compress_tables,@object # @compress_tables
	.section	.rodata,"a",@progbits
	.align	16
compress_tables:
	.quad	compress_1_1
	.quad	compress_2_1
	.quad	compress_3_1
	.quad	compress_4_1
	.quad	0
	.quad	compress_2_2
	.quad	compress_3_2
	.quad	compress_4_2
	.quad	0
	.quad	0
	.quad	0
	.quad	compress_4_4
	.zero	32
	.size	compress_tables, 128

	.type	half_byte_1s,@object    # @half_byte_1s
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
half_byte_1s:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004"
	.size	half_byte_1s, 16

	.type	bits5_trailing_1s,@object # @bits5_trailing_1s
	.section	.rodata,"a",@progbits
	.align	16
bits5_trailing_1s:
	.ascii	"\000\000\000\001\000\000\000\002\000\000\000\001\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000\001\000\000\000\004"
	.size	bits5_trailing_1s, 32

	.type	bits5_leading_1s,@object # @bits5_leading_1s
	.align	16
bits5_leading_1s:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\002\002\003\004"
	.size	bits5_leading_1s, 32

	.type	compress_1_1,@object    # @compress_1_1
compress_1_1:
	.ascii	"\000\001\001"
	.size	compress_1_1, 3

	.type	compress_2_1,@object    # @compress_2_1
compress_2_1:
	.ascii	"\000\000\001\001\001"
	.size	compress_2_1, 5

	.type	compress_3_1,@object    # @compress_3_1
compress_3_1:
	.ascii	"\000\000\000\000\001\001\001\001\001"
	.size	compress_3_1, 9

	.type	compress_4_1,@object    # @compress_4_1
	.align	16
compress_4_1:
	.ascii	"\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001"
	.size	compress_4_1, 17

	.type	compress_2_2,@object    # @compress_2_2
compress_2_2:
	.ascii	"\000\001\002\002\003"
	.size	compress_2_2, 5

	.type	compress_3_2,@object    # @compress_3_2
compress_3_2:
	.ascii	"\000\000\001\001\002\002\002\003\003"
	.size	compress_3_2, 9

	.type	compress_4_2,@object    # @compress_4_2
	.align	16
compress_4_2:
	.ascii	"\000\000\000\000\001\001\001\001\002\002\002\002\002\003\003\003\003"
	.size	compress_4_2, 17

	.type	compress_4_4,@object    # @compress_4_4
	.align	16
compress_4_4:
	.ascii	"\000\001\002\003\004\005\006\007\b\b\t\n\013\f\r\016\017"
	.size	compress_4_4, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
