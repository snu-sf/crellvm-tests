	.text
	.file	"gxblend.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI0_1:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI0_2:
	.quad	4592590756007337001     # double 0.11
.LCPI0_3:
	.quad	4535160216371617905     # double 1.5378700499807768E-5
.LCPI0_5:
	.quad	4643176031446892544     # double 255
.LCPI0_6:
	.quad	4571171282956062736     # double 0.0039215686274509803
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_4:
	.long	1065353216              # float 1
	.text
	.globl	smask_luminosity_mapping
	.align	16, 0x90
	.type	smask_luminosity_mapping,@function
smask_luminosity_mapping:               # @smask_luminosity_mapping
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
	movl	%esi, -8(%rsp)          # 4-byte Spill
	movl	%edi, -4(%rsp)          # 4-byte Spill
	movl	72(%rsp), %eax
	movq	56(%rsp), %rdi
	testl	%eax, %eax
	jne	.LBB0_1
# BB#4:                                 # %if.then.3
	decl	%edx
	imull	%r8d, %edx
	movslq	%edx, %rax
	addq	%rax, %r9
	movslq	%r8d, %rdx
	jmp	.LBB0_3
.LBB0_1:                                # %entry
	cmpl	$1, %eax
	jne	.LBB0_5
# BB#2:                                 # %if.then
	movslq	%r8d, %rdx
	addq	%rdx, %r9
.LBB0_3:                                # %if.then
	movq	%r9, %rsi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB0_5:                                # %if.end.8
	cmpl	$2, %edx
	je	.LBB0_7
# BB#6:                                 # %if.end.8
	movl	64(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB0_7
# BB#37:                                # %if.else.113
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_52
# BB#38:                                # %for.cond.122.preheader.lr.ph
	movslq	%ecx, %rsi
	decl	%edx
	imull	%r8d, %edx
	movslq	%edx, %rdx
	movslq	%r8d, %rax
	leaq	(%rax,%r9), %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	leal	(%r8,%r8), %eax
	cltq
	leaq	(%rax,%r9), %rax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	leal	(%r8,%r8,2), %eax
	cltq
	leaq	(%rax,%r9), %rax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movl	-8(%rsp), %ebx          # 4-byte Reload
	xorl	%r13d, %r13d
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movss	.LCPI0_4(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movsd	.LCPI0_5(%rip), %xmm8   # xmm8 = mem[0],zero
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_39:                               # %for.cond.122.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
	cmpl	$0, -8(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_51
# BB#40:                                # %for.body.125.preheader
                                        #   in Loop: Header=BB0_39 Depth=1
	leaq	(%r9,%r13), %r15
	movq	-16(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rbp
	movq	-24(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rax
	movq	-32(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %r10
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB0_41:                               # %for.body.125
                                        #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r9,%r11), %rcx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB0_50
# BB#42:                                # %if.then.132
                                        #   in Loop: Header=BB0_41 Depth=2
	movzbl	(%r15,%r11), %ecx
	xorl	$255, %ecx
	cvtsi2sdl	%ecx, %xmm7
	mulsd	%xmm0, %xmm7
	movzbl	(%rbp,%r11), %ecx
	xorl	$255, %ecx
	cvtsi2sdl	%ecx, %xmm6
	mulsd	%xmm1, %xmm6
	addsd	%xmm7, %xmm6
	movzbl	(%rax,%r11), %ecx
	xorl	$255, %ecx
	xorps	%xmm7, %xmm7
	cvtsi2sdl	%ecx, %xmm7
	mulsd	%xmm2, %xmm7
	addsd	%xmm6, %xmm7
	movzbl	(%r10,%r11), %ecx
	xorl	$255, %ecx
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%ecx, %xmm6
	mulsd	%xmm7, %xmm6
	cvtsd2ss	%xmm6, %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm3, %xmm6
	xorps	%xmm7, %xmm7
	cvtsd2ss	%xmm6, %xmm7
	ucomiss	%xmm7, %xmm4
	movb	$-1, %r14b
	jb	.LBB0_44
# BB#43:                                # %if.then.132
                                        #   in Loop: Header=BB0_41 Depth=2
	xorl	%r14d, %r14d
.LBB0_44:                               # %if.then.132
                                        #   in Loop: Header=BB0_41 Depth=2
	ucomiss	%xmm7, %xmm5
	ja	.LBB0_45
# BB#46:                                # %if.then.132
                                        #   in Loop: Header=BB0_41 Depth=2
	movb	%r14b, %r8b
	jmp	.LBB0_47
	.align	16, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_41 Depth=2
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm7, %xmm6
	mulsd	%xmm8, %xmm6
	cvttsd2si	%xmm6, %r8d
.LBB0_47:                               # %if.then.132
                                        #   in Loop: Header=BB0_41 Depth=2
	ucomiss	%xmm4, %xmm7
	ja	.LBB0_49
# BB#48:                                # %if.then.132
                                        #   in Loop: Header=BB0_41 Depth=2
	movb	%r14b, %r8b
.LBB0_49:                               # %if.then.132
                                        #   in Loop: Header=BB0_41 Depth=2
	movb	%r8b, (%rdi,%r11)
.LBB0_50:                               # %for.inc.191
                                        #   in Loop: Header=BB0_41 Depth=2
	incq	%r11
	cmpl	%r11d, %ebx
	jne	.LBB0_41
.LBB0_51:                               # %for.end.193
                                        #   in Loop: Header=BB0_39 Depth=1
	addq	%rsi, %rdi
	addq	%rsi, %r13
	incl	%r12d
	addq	%rsi, %rdx
	cmpl	-4(%rsp), %r12d         # 4-byte Folded Reload
	jne	.LBB0_39
	jmp	.LBB0_52
.LBB0_7:                                # %if.then.11
	cmpl	$2, %edx
	jne	.LBB0_22
# BB#8:                                 # %if.then.14
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_52
# BB#9:                                 # %for.cond.19.preheader.lr.ph
	movslq	%ecx, %r15
	movslq	%r8d, %r12
	movl	-8(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r11d
	andl	$1, %r11d
	movl	%eax, %ebp
	movl	%eax, %esi
	leaq	1(%r12,%r9), %r8
	leaq	1(%r9), %r10
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_10:                               # %for.cond.19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	testl	%esi, %esi
	jle	.LBB0_21
# BB#11:                                # %for.body.22.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	testl	%r11d, %r11d
	movl	$0, %eax
	je	.LBB0_14
# BB#12:                                # %for.body.22.prol
                                        #   in Loop: Header=BB0_10 Depth=1
	cmpb	$0, (%r9,%r12)
	movl	$1, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.28.prol
                                        #   in Loop: Header=BB0_10 Depth=1
	movb	(%r9,%r13), %al
	movb	%al, (%rdi)
	movl	$1, %eax
.LBB0_14:                               # %for.body.22.preheader.split
                                        #   in Loop: Header=BB0_10 Depth=1
	cmpl	$1, %esi
	je	.LBB0_21
# BB#15:                                # %for.body.22.preheader.split.split
                                        #   in Loop: Header=BB0_10 Depth=1
	leaq	(%r8,%r13), %rcx
	leaq	(%r10,%r13), %rbx
	.align	16, 0x90
.LBB0_16:                               # %for.body.22
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, -1(%rcx,%rax)
	je	.LBB0_18
# BB#17:                                # %if.then.28
                                        #   in Loop: Header=BB0_16 Depth=2
	movb	-1(%rbx,%rax), %dl
	movb	%dl, (%rdi,%rax)
.LBB0_18:                               # %for.inc
                                        #   in Loop: Header=BB0_16 Depth=2
	cmpb	$0, (%rcx,%rax)
	je	.LBB0_20
# BB#19:                                # %if.then.28.1
                                        #   in Loop: Header=BB0_16 Depth=2
	movb	(%rbx,%rax), %dl
	movb	%dl, 1(%rdi,%rax)
.LBB0_20:                               # %for.inc.1
                                        #   in Loop: Header=BB0_16 Depth=2
	addq	$2, %rax
	cmpl	%eax, %ebp
	jne	.LBB0_16
.LBB0_21:                               # %for.end
                                        #   in Loop: Header=BB0_10 Depth=1
	addq	%r15, %rdi
	addq	%r15, %r13
	incl	%r14d
	addq	%r15, %r12
	cmpl	-4(%rsp), %r14d         # 4-byte Folded Reload
	jne	.LBB0_10
	jmp	.LBB0_52
.LBB0_22:                               # %if.else
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_52
# BB#23:                                # %for.cond.47.preheader.lr.ph
	movslq	%ecx, %r11
	decl	%edx
	imull	%r8d, %edx
	movslq	%edx, %rax
	movslq	%r8d, %rcx
	leaq	(%rcx,%r9), %rsi
	addl	%r8d, %r8d
	movslq	%r8d, %rcx
	leaq	(%rcx,%r9), %r8
	movl	-8(%rsp), %edx          # 4-byte Reload
	xorl	%r12d, %r12d
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movss	.LCPI0_4(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movsd	.LCPI0_5(%rip), %xmm8   # xmm8 = mem[0],zero
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_24:                               # %for.cond.47.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
	cmpl	$0, -8(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_36
# BB#25:                                # %for.body.50.preheader
                                        #   in Loop: Header=BB0_24 Depth=1
	leaq	(%r9,%r12), %r13
	leaq	(%rsi,%r12), %r14
	leaq	(%r8,%r12), %rbx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_26:                               # %for.body.50
                                        #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r9,%rcx), %rbp
	cmpb	$0, (%rax,%rbp)
	je	.LBB0_35
# BB#27:                                # %if.then.57
                                        #   in Loop: Header=BB0_26 Depth=2
	movzbl	(%r13,%rcx), %ebp
	cvtsi2sdl	%ebp, %xmm7
	mulsd	%xmm0, %xmm7
	movzbl	(%r14,%rcx), %ebp
	cvtsi2sdl	%ebp, %xmm6
	mulsd	%xmm1, %xmm6
	addsd	%xmm7, %xmm6
	movzbl	(%rbx,%rcx), %ebp
	xorps	%xmm7, %xmm7
	cvtsi2sdl	%ebp, %xmm7
	mulsd	%xmm2, %xmm7
	addsd	%xmm6, %xmm7
	xorps	%xmm6, %xmm6
	cvtsd2ss	%xmm7, %xmm6
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm3, %xmm6
	xorps	%xmm7, %xmm7
	cvtsd2ss	%xmm6, %xmm7
	ucomiss	%xmm7, %xmm4
	movb	$-1, %r10b
	jb	.LBB0_29
# BB#28:                                # %if.then.57
                                        #   in Loop: Header=BB0_26 Depth=2
	xorl	%r10d, %r10d
.LBB0_29:                               # %if.then.57
                                        #   in Loop: Header=BB0_26 Depth=2
	ucomiss	%xmm7, %xmm5
	ja	.LBB0_30
# BB#31:                                # %if.then.57
                                        #   in Loop: Header=BB0_26 Depth=2
	movb	%r10b, %bpl
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_26 Depth=2
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm7, %xmm6
	mulsd	%xmm8, %xmm6
	cvttsd2si	%xmm6, %ebp
.LBB0_32:                               # %if.then.57
                                        #   in Loop: Header=BB0_26 Depth=2
	ucomiss	%xmm4, %xmm7
	ja	.LBB0_34
# BB#33:                                # %if.then.57
                                        #   in Loop: Header=BB0_26 Depth=2
	movb	%r10b, %bpl
.LBB0_34:                               # %if.then.57
                                        #   in Loop: Header=BB0_26 Depth=2
	movb	%bpl, (%rdi,%rcx)
.LBB0_35:                               # %for.inc.100
                                        #   in Loop: Header=BB0_26 Depth=2
	incq	%rcx
	cmpl	%ecx, %edx
	jne	.LBB0_26
.LBB0_36:                               # %for.end.102
                                        #   in Loop: Header=BB0_24 Depth=1
	addq	%r11, %rdi
	addq	%r11, %r12
	incl	%r15d
	addq	%r11, %rax
	cmpl	-4(%rsp), %r15d         # 4-byte Folded Reload
	jne	.LBB0_24
.LBB0_52:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	smask_luminosity_mapping, .Lfunc_end0-smask_luminosity_mapping
	.cfi_endproc

	.globl	smask_blend
	.align	16, 0x90
	.type	smask_blend,@function
smask_blend:                            # @smask_blend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	testl	%edx, %edx
	jle	.LBB1_10
# BB#1:                                 # %for.body.lr.ph
	movslq	%r8d, %r10
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	testl	%esi, %esi
	jle	.LBB1_9
# BB#3:                                 #   in Loop: Header=BB1_2 Depth=1
	movslq	%r8d, %rax
	leaq	(%rax,%rdi), %rax
	movl	%esi, %r11d
	.align	16, 0x90
.LBB1_4:                                # %for.body.4
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rax), %ebx
	movl	%ebx, %ebp
	incl	%ebp
	testb	$-2, %bpl
	je	.LBB1_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB1_4 Depth=2
	notb	%bl
	movzbl	(%rax), %r14d
	movzbl	%bl, %ebx
	imull	%r14d, %ebx
	movl	$128, %ebp
	subl	%ebx, %ebp
	movl	%ebp, %ebx
	shrl	$8, %ebx
	addl	%ebp, %ebx
	shrl	$8, %ebx
	addl	%r14d, %ebx
	movb	%bl, (%rax)
	jmp	.LBB1_8
	.align	16, 0x90
.LBB1_6:                                # %if.else
                                        #   in Loop: Header=BB1_4 Depth=2
	testb	%bl, %bl
	jne	.LBB1_8
# BB#7:                                 # %if.then.25
                                        #   in Loop: Header=BB1_4 Depth=2
	movb	$0, (%rax)
	.align	16, 0x90
.LBB1_8:                                # %if.end.28
                                        #   in Loop: Header=BB1_4 Depth=2
	incq	%rax
	decl	%r11d
	jne	.LBB1_4
.LBB1_9:                                # %for.inc.30
                                        #   in Loop: Header=BB1_2 Depth=1
	incl	%r9d
	addl	%ecx, %r8d
	cmpl	%edx, %r9d
	jne	.LBB1_2
.LBB1_10:                               # %for.end.32
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	smask_blend, .Lfunc_end1-smask_blend
	.cfi_endproc

	.globl	smask_copy
	.align	16, 0x90
	.type	smask_copy,@function
smask_copy:                             # @smask_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 64
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edi, %ebp
	testl	%ebp, %ebp
	jle	.LBB2_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%esi, %r12
	movslq	%edx, %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%rbx), %rsi
	leaq	(%r14,%rbx), %rdi
	movq	%r12, %rdx
	callq	memcpy
	addq	%r13, %rbx
	decl	%ebp
	jne	.LBB2_2
.LBB2_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	smask_copy, .Lfunc_end2-smask_copy
	.cfi_endproc

	.globl	smask_icc
	.align	16, 0x90
	.type	smask_icc,@function
smask_icc:                              # @smask_icc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 176
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movl	%r8d, %ebx
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %r13
	addl	$255, %ecx
	movl	%r14d, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%ebp, (%rsp)
	movzbl	%cl, %esi
	leaq	80(%rsp), %r12
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r12, %rdi
	callq	gsicc_init_buffer
	movl	%r14d, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%ebp, (%rsp)
	leaq	40(%rsp), %rbx
	movl	$1, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rbx, %rdi
	callq	gsicc_init_buffer
	movq	%r13, %rdi
	movq	192(%rsp), %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	176(%rsp), %r8
	movq	184(%rsp), %r9
	callq	*8(%rsi)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	smask_icc, .Lfunc_end3-smask_icc
	.cfi_endproc

	.globl	art_blend_luminosity_rgb_8
	.align	16, 0x90
	.type	art_blend_luminosity_rgb_8,@function
art_blend_luminosity_rgb_8:             # @art_blend_luminosity_rgb_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movzbl	(%rdx), %edi
	movzbl	1(%rdx), %r11d
	movzbl	2(%rdx), %ebp
	movzbl	(%rcx), %r10d
	movzbl	1(%rcx), %r14d
	movzbl	2(%rcx), %r9d
	movl	%r10d, %eax
	subl	%edi, %eax
	imull	$77, %eax, %eax
	movl	%r14d, %ecx
	subl	%r11d, %ecx
	imull	$151, %ecx, %ecx
	movl	%r9d, %edx
	subl	%ebp, %edx
	imull	$28, %edx, %edx
	addl	%eax, %ecx
	leal	128(%rdx,%rcx), %eax
	sarl	$8, %eax
	leal	(%rdi,%rax), %r8d
	leal	(%r11,%rax), %ebx
	leal	(%rbp,%rax), %ecx
	movl	%r8d, %edx
	orl	%ebx, %edx
	orl	%ecx, %edx
	testb	$1, %dh
	je	.LBB4_5
# BB#1:                                 # %if.then
	imull	$77, %r10d, %edx
	imull	$151, %r14d, %ebp
	imull	$28, %r9d, %edi
	addl	%edx, %ebp
	leal	128(%rdi,%rbp), %r9d
	shrl	$8, %r9d
	testl	%eax, %eax
	jle	.LBB4_3
# BB#2:                                 # %if.then.29
	cmpl	%ebx, %r8d
	movl	%ebx, %edi
	cmovgel	%r8d, %edi
	cmpl	%edi, %ecx
	cmovgel	%ecx, %edi
	movl	$255, %eax
	subl	%r9d, %eax
	shll	$16, %eax
	subl	%r9d, %edi
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	cmpl	%ebx, %r8d
	movl	%ebx, %edx
	cmovlel	%r8d, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	%r9d, %eax
	shll	$16, %eax
	movl	%r9d, %edi
	subl	%edx, %edi
.LBB4_4:                                # %if.end
	cltd
	idivl	%edi
	subl	%r9d, %r8d
	imull	%eax, %r8d
	addl	$32768, %r8d            # imm = 0x8000
	sarl	$16, %r8d
	addl	%r9d, %r8d
	subl	%r9d, %ebx
	imull	%eax, %ebx
	addl	$32768, %ebx            # imm = 0x8000
	sarl	$16, %ebx
	addl	%r9d, %ebx
	subl	%r9d, %ecx
	imull	%eax, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	addl	%r9d, %ecx
.LBB4_5:                                # %if.end.70
	movb	%r8b, (%rsi)
	movb	%bl, 1(%rsi)
	movb	%cl, 2(%rsi)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	art_blend_luminosity_rgb_8, .Lfunc_end4-art_blend_luminosity_rgb_8
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
.LCPI5_1:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	art_blend_luminosity_custom_8
	.align	16, 0x90
	.type	art_blend_luminosity_custom_8,@function
art_blend_luminosity_custom_8:          # @art_blend_luminosity_custom_8
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
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 48
	subq	$160, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 208
.Ltmp56:
	.cfi_offset %rbx, -48
.Ltmp57:
	.cfi_offset %r12, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rdx, %r9
	testl	%edi, %edi
	jle	.LBB5_33
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934584, %r11       # imm = 0x1FFFFFFF8
	leal	-1(%rdi), %r10d
	leaq	1(%r10), %r8
	xorl	%eax, %eax
	movq	%r8, %r14
	andq	%r11, %r14
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB5_5
# BB#2:                                 # %vector.body.preheader
	leaq	4(%rcx), %rbx
	leaq	4(%r9), %rax
	leaq	1(%r10), %rdx
	andq	%r11, %rdx
	pxor	%xmm2, %xmm2
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	.align	16, 0x90
.LBB5_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rbx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rbx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	punpcklwd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	movd	-4(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movd	(%rax), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3],xmm5[4],xmm2[4],xmm5[5],xmm2[5],xmm5[6],xmm2[6],xmm5[7],xmm2[7]
	punpcklwd	%xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	punpcklbw	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3],xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	punpcklwd	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	paddd	%xmm3, %xmm0
	paddd	%xmm4, %xmm1
	psubd	%xmm5, %xmm0
	psubd	%xmm6, %xmm1
	addq	$8, %rbx
	addq	$8, %rax
	addq	$-8, %rdx
	jne	.LBB5_3
# BB#4:
	movq	%r14, %rax
.LBB5_5:                                # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ebp
	cmpq	%rax, %r8
	jne	.LBB5_7
# BB#6:
	movl	%ebp, %eax
	jmp	.LBB5_9
.LBB5_7:                                # %for.body.preheader348
	leaq	(%rcx,%rax), %rdx
	leaq	(%r9,%rax), %rbx
	movl	%edi, %r8d
	subl	%eax, %r8d
	.align	16, 0x90
.LBB5_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %eax
	movzbl	(%rbx), %r14d
	addl	%ebp, %eax
	subl	%r14d, %eax
	incq	%rdx
	incq	%rbx
	decl	%r8d
	movl	%eax, %ebp
	jne	.LBB5_8
.LBB5_9:                                # %for.end
	movl	%edi, %edx
	shrl	$31, %edx
	leal	(%rdx,%rdi), %r15d
	sarl	%r15d
	leal	(%rax,%r15), %eax
	cltd
	idivl	%edi
	movl	%eax, %r8d
	testl	%edi, %edi
	jle	.LBB5_33
# BB#10:                                # %for.body.9.preheader
	leaq	1(%r10), %r14
	xorl	%edx, %edx
	movq	%r14, %r12
	andq	%r11, %r12
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	je	.LBB5_18
# BB#11:                                # %vector.ph146
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	leaq	1(%r10), %rbx
	andq	%r11, %rbx
	addq	$-8, %rbx
	movq	%rbx, %rax
	shrq	$3, %rax
	xorl	%edx, %edx
	btq	$3, %rbx
	jb	.LBB5_12
# BB#13:                                # %vector.body136.prol
	movd	(%r9), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movd	4(%r9), %xmm2           # xmm2 = mem[0],zero,zero,zero
	pxor	%xmm3, %xmm3
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	paddd	%xmm1, %xmm0
	paddd	%xmm1, %xmm2
	movdqa	%xmm0, -96(%rsp)
	movdqa	%xmm2, -80(%rsp)
	movl	$8, %edx
	jmp	.LBB5_14
.LBB5_12:
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
.LBB5_14:                               # %vector.ph146.split
	testq	%rax, %rax
	je	.LBB5_17
# BB#15:                                # %vector.ph146.split.split
	leaq	1(%r10), %rbx
	andq	%r11, %rbx
	subq	%rdx, %rbx
	leaq	12(%r9,%rdx), %rax
	leaq	-48(%rsp,%rdx,4), %rdx
	pxor	%xmm3, %xmm3
	.align	16, 0x90
.LBB5_16:                               # %vector.body136
                                        # =>This Inner Loop Header: Depth=1
	movd	-12(%rax), %xmm5        # xmm5 = mem[0],zero,zero,zero
	movd	-8(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3],xmm5[4],xmm3[4],xmm5[5],xmm3[5],xmm5[6],xmm3[6],xmm5[7],xmm3[7]
	punpcklwd	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	punpcklwd	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3]
	paddd	%xmm1, %xmm5
	paddd	%xmm1, %xmm4
	movdqa	%xmm5, -48(%rdx)
	movdqa	%xmm4, -32(%rdx)
	por	%xmm0, %xmm5
	por	%xmm2, %xmm4
	movd	-4(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	paddd	%xmm1, %xmm0
	paddd	%xmm1, %xmm2
	movdqa	%xmm0, -16(%rdx)
	movdqa	%xmm2, (%rdx)
	por	%xmm5, %xmm0
	por	%xmm4, %xmm2
	addq	$16, %rax
	addq	$64, %rdx
	addq	$-16, %rbx
	jne	.LBB5_16
.LBB5_17:
	movq	%r12, %rdx
.LBB5_18:                               # %middle.block137
	por	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpq	%rdx, %r14
	je	.LBB5_21
# BB#19:                                # %for.body.9.preheader347
	addq	%rdx, %r9
	leaq	-96(%rsp,%rdx,4), %rbx
	movl	%edi, %ebp
	subl	%edx, %ebp
	.align	16, 0x90
.LBB5_20:                               # %for.body.9
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9), %edx
	addl	%r8d, %edx
	movl	%edx, (%rbx)
	orl	%edx, %eax
	incq	%r9
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB5_20
.LBB5_21:                               # %for.end.20
	testb	$1, %ah
	je	.LBB5_22
# BB#34:                                # %if.then
	movzbl	(%rcx), %eax
	cmpl	$2, %edi
	jl	.LBB5_46
# BB#35:                                # %for.body.26.preheader
	leal	-2(%rdi), %edx
	leaq	1(%rdx), %r14
	leaq	2(%rdx), %r9
	andq	%r11, %r14
	orq	$1, %r14
	cmpq	$1, %r14
	movd	%eax, %xmm0
	pxor	%xmm1, %xmm1
	jne	.LBB5_37
# BB#36:
	movl	$1, %r14d
	jmp	.LBB5_43
.LBB5_37:                               # %vector.body174.preheader
	leaq	1(%rdx), %rax
	andq	%r11, %rax
	addq	$-8, %rax
	movq	%rax, %rbp
	shrq	$3, %rbp
	movl	$1, %ebx
	btq	$3, %rax
	jb	.LBB5_38
# BB#39:                                # %vector.body174.prol
	movd	1(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movd	5(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm3, %xmm3
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	paddd	%xmm2, %xmm0
	movl	$9, %ebx
	jmp	.LBB5_40
.LBB5_38:
	pxor	%xmm1, %xmm1
.LBB5_40:                               # %vector.body174.preheader.split
	testq	%rbp, %rbp
	je	.LBB5_43
# BB#41:                                # %vector.body174.preheader.split.split
	incq	%rdx
	andq	%r11, %rdx
	orq	$1, %rdx
	subq	%rbx, %rdx
	leaq	12(%rbx,%rcx), %rax
	pxor	%xmm2, %xmm2
	.align	16, 0x90
.LBB5_42:                               # %vector.body174
                                        # =>This Inner Loop Header: Depth=1
	movd	-12(%rax), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movd	-8(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	punpcklwd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm4
	movd	-4(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	paddd	%xmm3, %xmm0
	paddd	%xmm4, %xmm1
	addq	$16, %rax
	addq	$-16, %rdx
	jne	.LBB5_42
.LBB5_43:                               # %middle.block175
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpq	%r14, %r9
	je	.LBB5_46
# BB#44:                                # %for.body.26.preheader346
	addq	%r14, %rcx
	movl	%edi, %edx
	subl	%r14d, %edx
	.align	16, 0x90
.LBB5_45:                               # %for.body.26
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %ebp
	addl	%ebp, %eax
	incq	%rcx
	decl	%edx
	jne	.LBB5_45
.LBB5_46:                               # %for.end.33
	addl	%r15d, %eax
	cltd
	idivl	%edi
	movl	%eax, %r15d
	testl	%r8d, %r8d
	movl	-96(%rsp), %r8d
	jle	.LBB5_47
# BB#60:                                # %for.cond.41.preheader
	cmpl	$2, %edi
	movl	%r8d, %ebx
	jl	.LBB5_72
# BB#61:                                # %for.body.44.preheader
	leal	-2(%rdi), %ebx
	leaq	1(%rbx), %rax
	leaq	2(%rbx), %r9
	andq	%r11, %rax
	orq	$1, %rax
	cmpq	$1, %rax
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	jne	.LBB5_63
# BB#62:
	movl	$1, %eax
	movdqa	%xmm0, %xmm1
	jmp	.LBB5_69
.LBB5_47:                               # %for.cond.58.preheader
	cmpl	$2, %edi
	movl	%r8d, %edx
	jl	.LBB5_59
# BB#48:                                # %for.body.61.preheader
	leal	-2(%rdi), %ebx
	leaq	1(%rbx), %rax
	leaq	2(%rbx), %r9
	andq	%r11, %rax
	orq	$1, %rax
	cmpq	$1, %rax
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	jne	.LBB5_50
# BB#49:
	movl	$1, %eax
	movdqa	%xmm0, %xmm1
	jmp	.LBB5_56
.LBB5_63:                               # %vector.body247.preheader
	leaq	1(%rbx), %rdx
	andq	%r11, %rdx
	addq	$-8, %rdx
	movq	%rdx, %rbp
	shrq	$3, %rbp
	movl	$1, %r14d
	btq	$3, %rdx
	jb	.LBB5_64
# BB#65:                                # %vector.body247.prol
	movdqu	-92(%rsp), %xmm2
	movdqu	-76(%rsp), %xmm3
	movdqa	%xmm0, %xmm4
	pcmpgtd	%xmm2, %xmm4
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm5
	pand	%xmm4, %xmm5
	pandn	%xmm2, %xmm4
	por	%xmm5, %xmm4
	pand	%xmm1, %xmm0
	pandn	%xmm3, %xmm1
	por	%xmm0, %xmm1
	movl	$9, %r14d
	movdqa	%xmm4, %xmm0
	jmp	.LBB5_66
.LBB5_50:                               # %vector.body210.preheader
	leaq	1(%rbx), %rdx
	andq	%r11, %rdx
	addq	$-8, %rdx
	movq	%rdx, %rbp
	shrq	$3, %rbp
	movl	$1, %r14d
	btq	$3, %rdx
	jb	.LBB5_51
# BB#52:                                # %vector.body210.prol
	movdqu	-92(%rsp), %xmm2
	movdqu	-76(%rsp), %xmm3
	movdqa	%xmm2, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm0, %xmm5
	pand	%xmm4, %xmm5
	pandn	%xmm2, %xmm4
	por	%xmm5, %xmm4
	pand	%xmm1, %xmm0
	pandn	%xmm3, %xmm1
	por	%xmm0, %xmm1
	movl	$9, %r14d
	movdqa	%xmm4, %xmm0
	jmp	.LBB5_53
.LBB5_64:
	movdqa	%xmm0, %xmm1
.LBB5_66:                               # %vector.body247.preheader.split
	testq	%rbp, %rbp
	je	.LBB5_69
# BB#67:                                # %vector.body247.preheader.split.split
	incq	%rbx
	andq	%r11, %rbx
	orq	$1, %rbx
	subq	%r14, %rbx
	leaq	-48(%rsp,%r14,4), %rdx
	.align	16, 0x90
.LBB5_68:                               # %vector.body247
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdx), %xmm2
	movdqu	-32(%rdx), %xmm3
	movdqu	-16(%rdx), %xmm4
	movdqu	(%rdx), %xmm5
	movdqa	%xmm0, %xmm6
	pcmpgtd	%xmm2, %xmm6
	movdqa	%xmm1, %xmm7
	pcmpgtd	%xmm3, %xmm7
	pand	%xmm6, %xmm0
	pandn	%xmm2, %xmm6
	por	%xmm0, %xmm6
	pand	%xmm7, %xmm1
	pandn	%xmm3, %xmm7
	por	%xmm1, %xmm7
	movdqa	%xmm6, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm5, %xmm1
	pand	%xmm0, %xmm6
	pandn	%xmm4, %xmm0
	por	%xmm6, %xmm0
	pand	%xmm1, %xmm7
	pandn	%xmm5, %xmm1
	por	%xmm7, %xmm1
	addq	$64, %rdx
	addq	$-16, %rbx
	jne	.LBB5_68
.LBB5_69:                               # %middle.block248
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm1, %edx
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm1, -128(%rsp)
	movd	%xmm0, %ebx
	testb	$1, -128(%rsp)
	cmovnel	%edx, %ebx
	cmpq	%rax, %r9
	je	.LBB5_72
# BB#70:                                # %for.body.44.preheader344
	leaq	-96(%rsp,%rax,4), %rdx
	movl	%edi, %ebp
	subl	%eax, %ebp
	.align	16, 0x90
.LBB5_71:                               # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %eax
	cmpl	%eax, %ebx
	cmovll	%eax, %ebx
	addq	$4, %rdx
	decl	%ebp
	jne	.LBB5_71
.LBB5_72:                               # %for.end.53
	movl	$255, %eax
	subl	%r15d, %eax
	shll	$16, %eax
	subl	%r15d, %ebx
	cltd
	idivl	%ebx
	jmp	.LBB5_73
.LBB5_51:
	movdqa	%xmm0, %xmm1
.LBB5_53:                               # %vector.body210.preheader.split
	testq	%rbp, %rbp
	je	.LBB5_56
# BB#54:                                # %vector.body210.preheader.split.split
	incq	%rbx
	andq	%r11, %rbx
	orq	$1, %rbx
	subq	%r14, %rbx
	leaq	-48(%rsp,%r14,4), %rdx
	.align	16, 0x90
.LBB5_55:                               # %vector.body210
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdx), %xmm2
	movdqu	-32(%rdx), %xmm3
	movdqu	-16(%rdx), %xmm4
	movdqu	(%rdx), %xmm5
	movdqa	%xmm2, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm3, %xmm7
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm6, %xmm0
	pandn	%xmm2, %xmm6
	por	%xmm0, %xmm6
	pand	%xmm7, %xmm1
	pandn	%xmm3, %xmm7
	por	%xmm1, %xmm7
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm0, %xmm6
	pandn	%xmm4, %xmm0
	por	%xmm6, %xmm0
	pand	%xmm1, %xmm7
	pandn	%xmm5, %xmm1
	por	%xmm7, %xmm1
	addq	$64, %rdx
	addq	$-16, %rbx
	jne	.LBB5_55
.LBB5_56:                               # %middle.block211
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ebx
	pcmpgtd	%xmm1, %xmm0
	movdqa	%xmm0, -112(%rsp)
	movd	%xmm1, %edx
	testb	$1, -112(%rsp)
	cmovel	%ebx, %edx
	cmpq	%rax, %r9
	je	.LBB5_59
# BB#57:                                # %for.body.61.preheader345
	leaq	-96(%rsp,%rax,4), %rbp
	movl	%edi, %ebx
	subl	%eax, %ebx
	.align	16, 0x90
.LBB5_58:                               # %for.body.61
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %eax
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	addq	$4, %rbp
	decl	%ebx
	jne	.LBB5_58
.LBB5_59:                               # %for.end.74
	movl	%r15d, %eax
	shll	$16, %eax
	movl	%r15d, %ecx
	subl	%edx, %ecx
	cltd
	idivl	%ecx
.LBB5_73:                               # %if.end
	testl	%edi, %edi
	jle	.LBB5_33
# BB#74:                                # %for.body.81.preheader
	subl	%r15d, %r8d
	imull	%eax, %r8d
	addl	$32768, %r8d            # imm = 0x8000
	sarl	$16, %r8d
	addl	%r15d, %r8d
	movl	%r8d, -96(%rsp)
	cmpl	$1, %edi
	je	.LBB5_22
# BB#75:                                # %for.body.81.for.body.81_crit_edge.lr.ph
	leal	-2(%rdi), %ebx
	leaq	1(%rbx), %r9
	leaq	2(%rbx), %r8
	andq	%r11, %r9
	orq	$1, %r9
	movl	$1, %ebp
	cmpq	$1, %r9
	je	.LBB5_79
# BB#76:                                # %vector.ph298
	movd	%r15d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	leaq	-76(%rsp), %rdx
	incq	%rbx
	andq	%r11, %rbx
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	movdqa	.LCPI5_0(%rip), %xmm3   # xmm3 = [32768,32768,32768,32768]
	.align	16, 0x90
.LBB5_77:                               # %vector.body288
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rdx), %xmm4
	movdqu	(%rdx), %xmm5
	psubd	%xmm0, %xmm4
	psubd	%xmm0, %xmm5
	pshufd	$245, %xmm4, %xmm6      # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	pshufd	$245, %xmm5, %xmm6      # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	paddd	%xmm3, %xmm4
	paddd	%xmm3, %xmm5
	psrad	$16, %xmm4
	psrad	$16, %xmm5
	paddd	%xmm0, %xmm4
	paddd	%xmm0, %xmm5
	movdqu	%xmm4, -16(%rdx)
	movdqu	%xmm5, (%rdx)
	addq	$32, %rdx
	addq	$-8, %rbx
	jne	.LBB5_77
# BB#78:
	movq	%r9, %rbp
.LBB5_79:                               # %middle.block289
	cmpq	%rbp, %r8
	je	.LBB5_22
# BB#80:                                # %for.body.81.for.body.81_crit_edge.preheader
	movl	%edi, %edx
	subl	%ebp, %edx
	leaq	-96(%rsp,%rbp,4), %rbp
	.align	16, 0x90
.LBB5_81:                               # %for.body.81.for.body.81_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %ecx
	subl	%r15d, %ecx
	imull	%eax, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	addl	%r15d, %ecx
	movl	%ecx, (%rbp)
	addq	$4, %rbp
	decl	%edx
	jne	.LBB5_81
.LBB5_22:                               # %for.cond.93.preheader
	testl	%edi, %edi
	jle	.LBB5_33
# BB#23:                                # %for.body.96.preheader
	leaq	1(%r10), %rax
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	%r11, %rcx
	je	.LBB5_30
# BB#24:                                # %vector.body318.preheader
	leaq	1(%r10), %rdx
	andq	%r11, %rdx
	addq	$-8, %rdx
	movq	%rdx, %rbx
	shrq	$3, %rbx
	xorl	%ebp, %ebp
	btq	$3, %rdx
	jb	.LBB5_26
# BB#25:                                # %vector.body318.prol
	movdqa	.LCPI5_1(%rip), %xmm0   # xmm0 = [255,255,255,255]
	movdqa	-96(%rsp), %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	pand	-80(%rsp), %xmm0
	movd	%xmm1, (%rsi)
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, 4(%rsi)
	movl	$8, %ebp
.LBB5_26:                               # %vector.body318.preheader.split
	testq	%rbx, %rbx
	je	.LBB5_29
# BB#27:                                # %vector.body318.preheader.split.split
	incq	%r10
	andq	%r11, %r10
	subq	%rbp, %r10
	leaq	-48(%rsp,%rbp,4), %rdx
	leaq	12(%rsi,%rbp), %rbx
	movdqa	.LCPI5_1(%rip), %xmm0   # xmm0 = [255,255,255,255]
	.align	16, 0x90
.LBB5_28:                               # %vector.body318
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-48(%rdx), %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movdqa	-32(%rdx), %xmm2
	pand	%xmm0, %xmm2
	movd	%xmm1, -12(%rbx)
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -8(%rbx)
	movdqa	-16(%rdx), %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movdqa	(%rdx), %xmm2
	pand	%xmm0, %xmm2
	movd	%xmm1, -4(%rbx)
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rbx)
	addq	$64, %rdx
	addq	$16, %rbx
	addq	$-16, %r10
	jne	.LBB5_28
.LBB5_29:
	movq	%rcx, %rdx
.LBB5_30:                               # %middle.block319
	cmpq	%rdx, %rax
	je	.LBB5_33
# BB#31:                                # %for.body.96.preheader343
	leaq	-96(%rsp,%rdx,4), %rax
	addq	%rdx, %rsi
	subl	%edx, %edi
	.align	16, 0x90
.LBB5_32:                               # %for.body.96
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rax), %cl
	movb	%cl, (%rsi)
	addq	$4, %rax
	incq	%rsi
	decl	%edi
	jne	.LBB5_32
.LBB5_33:                               # %for.end.104
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	art_blend_luminosity_custom_8, .Lfunc_end5-art_blend_luminosity_custom_8
	.cfi_endproc

	.globl	art_blend_luminosity_cmyk_8
	.align	16, 0x90
	.type	art_blend_luminosity_cmyk_8,@function
art_blend_luminosity_cmyk_8:            # @art_blend_luminosity_cmyk_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
.Ltmp66:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebx
	callq	art_blend_luminosity_rgb_8
	cmpl	$4, %ebx
	jl	.LBB6_17
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934560, %r8        # imm = 0x1FFFFFFE0
	leal	-4(%rbx), %edx
	leaq	1(%rdx), %rcx
	leaq	4(%rdx), %r9
	andq	%r8, %rcx
	orq	$3, %rcx
	movl	$3, %esi
	cmpq	$3, %rcx
	je	.LBB6_10
# BB#2:                                 # %vector.memcheck
	leaq	3(%r15), %rdi
	leaq	3(%r14,%rdx), %rax
	movl	$3, %esi
	cmpq	%rax, %rdi
	ja	.LBB6_4
# BB#3:                                 # %vector.memcheck
	leaq	3(%r15,%rdx), %rax
	leaq	3(%r14), %rdi
	cmpq	%rax, %rdi
	jbe	.LBB6_10
.LBB6_4:                                # %vector.body.preheader
	leaq	1(%rdx), %rax
	andq	%r8, %rax
	addq	$-32, %rax
	movq	%rax, %rsi
	shrq	$5, %rsi
	movl	$3, %edi
	btq	$5, %rax
	jb	.LBB6_6
# BB#5:                                 # %vector.body.prol
	movups	3(%r14), %xmm0
	movups	19(%r14), %xmm1
	movups	%xmm0, 3(%r15)
	movups	%xmm1, 19(%r15)
	movl	$35, %edi
.LBB6_6:                                # %vector.body.preheader.split
	testq	%rsi, %rsi
	je	.LBB6_9
# BB#7:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	orq	$3, %rdx
	subq	%rdi, %rdx
	leaq	48(%r14,%rdi), %rsi
	leaq	48(%r15,%rdi), %rdi
	.align	16, 0x90
.LBB6_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movups	-16(%rsi), %xmm0
	movups	(%rsi), %xmm1
	movups	%xmm0, -16(%rdi)
	movups	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-64, %rdx
	jne	.LBB6_8
.LBB6_9:
	movq	%rcx, %rsi
.LBB6_10:                               # %middle.block
	cmpq	%rsi, %r9
	je	.LBB6_17
# BB#11:                                # %for.body.preheader16
	leal	1(%rbx), %eax
	leal	1(%rsi), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%ebx, %ecx
	subl	%edx, %ecx
	testb	$3, %dil
	je	.LBB6_14
# BB#12:                                # %for.body.prol.preheader
	leal	1(%rsi), %edx
	subl	%edx, %eax
	andl	$3, %eax
	negl	%eax
	.align	16, 0x90
.LBB6_13:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r14,%rsi), %dl
	movb	%dl, (%r15,%rsi)
	incq	%rsi
	incl	%eax
	jne	.LBB6_13
.LBB6_14:                               # %for.body.preheader16.split
	cmpl	$3, %ecx
	jb	.LBB6_17
# BB#15:                                # %for.body.preheader16.split.split
	subl	%esi, %ebx
	leaq	3(%r15,%rsi), %rax
	leaq	3(%r14,%rsi), %rcx
	.align	16, 0x90
.LBB6_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rcx), %dl
	movb	%dl, -3(%rax)
	movb	-2(%rcx), %dl
	movb	%dl, -2(%rax)
	movb	-1(%rcx), %dl
	movb	%dl, -1(%rax)
	movb	(%rcx), %dl
	movb	%dl, (%rax)
	addq	$4, %rax
	addq	$4, %rcx
	addl	$-4, %ebx
	jne	.LBB6_16
.LBB6_17:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	art_blend_luminosity_cmyk_8, .Lfunc_end6-art_blend_luminosity_cmyk_8
	.cfi_endproc

	.globl	art_blend_saturation_rgb_8
	.align	16, 0x90
	.type	art_blend_saturation_rgb_8,@function
art_blend_saturation_rgb_8:             # @art_blend_saturation_rgb_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 24
.Ltmp69:
	.cfi_offset %rbx, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movzbl	(%rdx), %r9d
	movb	1(%rdx), %al
	movzbl	%al, %edi
	movzbl	2(%rdx), %r10d
	cmpl	%edi, %r9d
	movl	%edi, %edx
	cmovbl	%r9d, %edx
	movl	%edi, %ebx
	cmoval	%r9d, %ebx
	cmpl	%r10d, %edx
	cmovgl	%r10d, %edx
	cmpl	%r10d, %ebx
	cmovll	%r10d, %ebx
	subl	%edx, %ebx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movb	%al, (%rsi)
	movb	%al, 1(%rsi)
	movb	%al, 2(%rsi)
	jmp	.LBB7_9
.LBB7_2:                                # %if.end
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %eax
	movzbl	2(%rcx), %ecx
	cmpl	%eax, %edx
	movl	%eax, %ebp
	cmovbl	%edx, %ebp
	cmoval	%edx, %eax
	cmpl	%ecx, %ebp
	cmovgl	%ecx, %ebp
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	subl	%ebp, %eax
	shll	$16, %eax
	cltd
	idivl	%ebx
	imull	$77, %r9d, %ecx
	imull	$151, %edi, %edx
	imull	$28, %r10d, %ebp
	addl	%ecx, %edx
	leal	128(%rbp,%rdx), %r11d
	shrl	$8, %r11d
	subl	%r11d, %r9d
	imull	%eax, %r9d
	addl	$32768, %r9d            # imm = 0x8000
	sarl	$16, %r9d
	leal	(%r9,%r11), %edx
	subl	%r11d, %edi
	imull	%eax, %edi
	addl	$32768, %edi            # imm = 0x8000
	sarl	$16, %edi
	leal	(%rdi,%r11), %ebx
	subl	%r11d, %r10d
	imull	%eax, %r10d
	addl	$32768, %r10d           # imm = 0x8000
	sarl	$16, %r10d
	leal	(%r10,%r11), %ecx
	movl	%edx, %eax
	orl	%ebx, %eax
	orl	%ecx, %eax
	testb	$1, %ah
	je	.LBB7_8
# BB#3:                                 # %if.then.83
	cmpl	%ebx, %edx
	movl	%ebx, %ebp
	cmovlel	%edx, %ebp
	cmovgel	%edx, %ebx
	cmpl	%ecx, %ebp
	cmovgl	%ecx, %ebp
	cmpl	%ecx, %ebx
	cmovll	%ecx, %ebx
	movl	$65536, %ecx            # imm = 0x10000
	testl	%ebp, %ebp
	movl	$65536, %r8d            # imm = 0x10000
	jns	.LBB7_5
# BB#4:                                 # %if.then.110
	movl	%r11d, %eax
	shll	$16, %eax
	movl	%r11d, %r8d
	subl	%ebp, %r8d
	cltd
	idivl	%r8d
	movl	%eax, %r8d
.LBB7_5:                                # %if.end.114
	cmpl	$256, %ebx              # imm = 0x100
	jl	.LBB7_7
# BB#6:                                 # %if.then.117
	movl	$255, %eax
	subl	%r11d, %eax
	shll	$16, %eax
	subl	%r11d, %ebx
	cltd
	idivl	%ebx
	movl	%eax, %ecx
.LBB7_7:                                # %if.end.123
	cmpl	%ecx, %r8d
	cmovlel	%r8d, %ecx
	imull	%ecx, %r9d
	addl	$32768, %r9d            # imm = 0x8000
	sarl	$16, %r9d
	addl	%r11d, %r9d
	imull	%ecx, %edi
	addl	$32768, %edi            # imm = 0x8000
	sarl	$16, %edi
	addl	%r11d, %edi
	imull	%r10d, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	addl	%r11d, %ecx
	movl	%r9d, %edx
	movl	%edi, %ebx
.LBB7_8:                                # %if.end.145
	movb	%dl, (%rsi)
	movb	%bl, 1(%rsi)
	movb	%cl, 2(%rsi)
.LBB7_9:                                # %cleanup
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	art_blend_saturation_rgb_8, .Lfunc_end7-art_blend_saturation_rgb_8
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
.LCPI8_1:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	art_blend_saturation_custom_8
	.align	16, 0x90
	.type	art_blend_saturation_custom_8,@function
art_blend_saturation_custom_8:          # @art_blend_saturation_custom_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 208
.Ltmp76:
	.cfi_offset %rbx, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r9
	movabsq	$8589934584, %r11       # imm = 0x1FFFFFFF8
	movb	(%r9), %r10b
	cmpl	$2, %edi
	jl	.LBB8_8
# BB#1:                                 # %for.body.preheader
	movzbl	%r10b, %eax
	movl	$1, %r8d
	testb	$1, %dil
	jne	.LBB8_2
# BB#3:                                 # %for.body.prol
	movzbl	1(%r9), %r10d
	cmpl	%r10d, %eax
	movl	%r10d, %edx
	cmovbl	%eax, %edx
	movl	%r10d, %ebx
	cmoval	%eax, %ebx
	movl	%eax, %r14d
	movl	$2, %r8d
	movl	%ebx, %ebp
	jmp	.LBB8_4
.LBB8_2:
                                        # implicit-def: EBX
                                        # implicit-def: R10B
	movl	%eax, %ebp
	movl	%eax, %edx
	movl	%eax, %r14d
.LBB8_4:                                # %for.body.preheader.split
	cmpl	$2, %edi
	je	.LBB8_7
# BB#5:                                 # %for.body.preheader.split.split
	movl	%edi, %ecx
	subl	%r8d, %ecx
	leaq	1(%r8,%r9), %rax
	.align	16, 0x90
.LBB8_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %ebx
	cmpl	%ebx, %edx
	cmovgl	%ebx, %edx
	cmpl	%ebx, %ebp
	cmovgel	%ebp, %ebx
	movzbl	(%rax), %r10d
	cmpl	%r10d, %edx
	cmovgl	%r10d, %edx
	cmpl	%r10d, %ebx
	cmovll	%r10d, %ebx
	addq	$2, %rax
	addl	$-2, %ecx
	movl	%ebx, %ebp
	jne	.LBB8_6
.LBB8_7:                                # %for.end
	subl	%edx, %ebx
	jne	.LBB8_20
.LBB8_8:                                # %for.cond.14.preheader
	testl	%edi, %edi
	jle	.LBB8_53
# BB#9:                                 # %for.body.17.preheader
	leal	-1(%rdi), %ebx
	leaq	1(%rbx), %r8
	addq	$-24, %r11
	xorl	%eax, %eax
	movq	%r8, %rdx
	andq	%r11, %rdx
	je	.LBB8_17
# BB#10:                                # %vector.ph355
	movzbl	%r10b, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	leaq	1(%rbx), %rbp
	andq	%r11, %rbp
	addq	$-32, %rbp
	movl	%ebp, %ecx
	shrl	$5, %ecx
	incl	%ecx
	xorl	%eax, %eax
	testb	$3, %cl
	je	.LBB8_13
# BB#11:                                # %vector.body345.prol.preheader
	movl	%edi, %ecx
	andl	$96, %ecx
	addl	$-32, %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_12:                               # %vector.body345.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rsi,%rax)
	movdqu	%xmm0, 16(%rsi,%rax)
	addq	$32, %rax
	incq	%rcx
	jne	.LBB8_12
.LBB8_13:                               # %vector.ph355.split
	cmpq	$96, %rbp
	jb	.LBB8_16
# BB#14:                                # %vector.ph355.split.split
	incq	%rbx
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rbx, %rcx
	subq	%rax, %rcx
	leaq	112(%rax,%rsi), %rax
	.align	16, 0x90
.LBB8_15:                               # %vector.body345
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rax)
	movdqu	%xmm0, -96(%rax)
	movdqu	%xmm0, -80(%rax)
	movdqu	%xmm0, -64(%rax)
	movdqu	%xmm0, -48(%rax)
	movdqu	%xmm0, -32(%rax)
	movdqu	%xmm0, -16(%rax)
	movdqu	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-128, %rcx
	jne	.LBB8_15
.LBB8_16:
	movq	%rdx, %rax
.LBB8_17:                               # %middle.block346
	cmpq	%rax, %r8
	je	.LBB8_53
# BB#18:                                # %for.body.17.preheader370
	addq	%rax, %rsi
	subl	%eax, %edi
	.align	16, 0x90
.LBB8_19:                               # %for.body.17
                                        # =>This Inner Loop Header: Depth=1
	movb	%r10b, (%rsi)
	incq	%rsi
	decl	%edi
	jne	.LBB8_19
	jmp	.LBB8_53
.LBB8_20:                               # %if.end
	xorl	%r10d, %r10d
	cmpl	$2, %edi
	movl	%r14d, %ebp
	jl	.LBB8_32
# BB#21:                                # %for.body.54.lr.ph
	leal	-1(%rdi), %eax
	cltq
	movzbl	(%r15,%rax), %eax
	cmpl	%eax, %edx
	movl	%eax, %ecx
	cmovlel	%edx, %ecx
	cmovgel	%edx, %eax
	subl	%ecx, %eax
	shll	$16, %eax
	cltd
	idivl	%ebx
	movl	%eax, %r10d
	leal	-2(%rdi), %edx
	leaq	1(%rdx), %rax
	leaq	2(%rdx), %r8
	andq	%r11, %rax
	orq	$1, %rax
	cmpq	$1, %rax
	movd	%r14d, %xmm0
	pxor	%xmm1, %xmm1
	jne	.LBB8_23
# BB#22:
	movl	$1, %eax
	jmp	.LBB8_29
.LBB8_23:                               # %vector.body.preheader
	leaq	1(%rdx), %rbx
	andq	%r11, %rbx
	addq	$-8, %rbx
	movq	%rbx, %rbp
	shrq	$3, %rbp
	movl	$1, %ecx
	btq	$3, %rbx
	jb	.LBB8_24
# BB#25:                                # %vector.body.prol
	movd	1(%r9), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movd	5(%r9), %xmm1           # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm3, %xmm3
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	paddd	%xmm2, %xmm0
	movl	$9, %ecx
	jmp	.LBB8_26
.LBB8_24:
	pxor	%xmm1, %xmm1
.LBB8_26:                               # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB8_29
# BB#27:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r11, %rdx
	orq	$1, %rdx
	subq	%rcx, %rdx
	leaq	12(%rcx,%r9), %rbx
	pxor	%xmm2, %xmm2
	.align	16, 0x90
.LBB8_28:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-12(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movd	-8(%rbx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	punpcklwd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm4
	movd	-4(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	paddd	%xmm3, %xmm0
	paddd	%xmm4, %xmm1
	addq	$16, %rbx
	addq	$-16, %rdx
	jne	.LBB8_28
.LBB8_29:                               # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ebp
	cmpq	%rax, %r8
	je	.LBB8_32
# BB#30:                                # %for.body.54.preheader
	leaq	(%r9,%rax), %rcx
	movl	%edi, %edx
	subl	%eax, %edx
	.align	16, 0x90
.LBB8_31:                               # %for.body.54
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %eax
	addl	%eax, %ebp
	incq	%rcx
	decl	%edx
	jne	.LBB8_31
.LBB8_32:                               # %for.end.60
	movl	%edi, %eax
	shrl	$31, %eax
	leal	(%rax,%rdi), %eax
	sarl	%eax
	addl	%ebp, %eax
	cltd
	idivl	%edi
	movl	%eax, %r8d
	testl	%edi, %edi
	jle	.LBB8_53
# BB#33:                                # %for.body.67.preheader
	movl	%r14d, %ebx
	subl	%r8d, %ebx
	imull	%r10d, %ebx
	addl	$32768, %ebx            # imm = 0x8000
	sarl	$16, %ebx
	addl	%r8d, %ebx
	movl	%ebx, -96(%rsp)
	cmpl	$1, %edi
	je	.LBB8_41
# BB#34:                                # %for.body.67.for.body.67_crit_edge.lr.ph
	leal	-2(%rdi), %edx
	leaq	1(%rdx), %rax
	leaq	2(%rdx), %r14
	andq	%r11, %rax
	orq	$1, %rax
	cmpq	$1, %rax
	movd	%ebx, %xmm0
	pxor	%xmm1, %xmm1
	jne	.LBB8_36
# BB#35:
	movl	$1, %eax
	jmp	.LBB8_38
.LBB8_36:                               # %vector.ph207
	movd	%r8d, %xmm1
	pshufd	$0, %xmm1, %xmm2        # xmm2 = xmm1[0,0,0,0]
	movd	%r10d, %xmm1
	pshufd	$0, %xmm1, %xmm9        # xmm9 = xmm1[0,0,0,0]
	leaq	5(%r9), %rcx
	leaq	-76(%rsp), %rbx
	incq	%rdx
	andq	%r11, %rdx
	pxor	%xmm4, %xmm4
	pshufd	$245, %xmm9, %xmm5      # xmm5 = xmm9[1,1,3,3]
	movdqa	.LCPI8_0(%rip), %xmm8   # xmm8 = [32768,32768,32768,32768]
	pxor	%xmm1, %xmm1
	.align	16, 0x90
.LBB8_37:                               # %vector.body197
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rcx), %xmm7         # xmm7 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3],xmm7[4],xmm4[4],xmm7[5],xmm4[5],xmm7[6],xmm4[6],xmm7[7],xmm4[7]
	punpcklwd	%xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
	punpcklbw	%xmm4, %xmm6    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3],xmm6[4],xmm4[4],xmm6[5],xmm4[5],xmm6[6],xmm4[6],xmm6[7],xmm4[7]
	punpcklwd	%xmm4, %xmm6    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
	psubd	%xmm2, %xmm7
	psubd	%xmm2, %xmm6
	pshufd	$245, %xmm7, %xmm3      # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm9, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pshufd	$245, %xmm6, %xmm3      # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm9, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	paddd	%xmm8, %xmm7
	paddd	%xmm8, %xmm6
	psrad	$16, %xmm7
	psrad	$16, %xmm6
	paddd	%xmm2, %xmm7
	paddd	%xmm2, %xmm6
	movdqu	%xmm7, -16(%rbx)
	movdqu	%xmm6, (%rbx)
	por	%xmm7, %xmm0
	por	%xmm6, %xmm1
	addq	$8, %rcx
	addq	$32, %rbx
	addq	$-8, %rdx
	jne	.LBB8_37
.LBB8_38:                               # %middle.block198
	por	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %ebx
	cmpq	%rax, %r14
	je	.LBB8_41
# BB#39:                                # %for.body.67.for.body.67_crit_edge.preheader
	movl	%edi, %edx
	subl	%eax, %edx
	leaq	-96(%rsp,%rax,4), %rcx
	addq	%rax, %r9
	.align	16, 0x90
.LBB8_40:                               # %for.body.67.for.body.67_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9), %eax
	subl	%r8d, %eax
	imull	%r10d, %eax
	addl	$32768, %eax            # imm = 0x8000
	sarl	$16, %eax
	addl	%r8d, %eax
	movl	%eax, (%rcx)
	orl	%eax, %ebx
	addq	$4, %rcx
	incq	%r9
	decl	%edx
	jne	.LBB8_40
.LBB8_41:                               # %for.end.80
	testb	$1, %bh
	je	.LBB8_42
# BB#54:                                # %if.then.81
	movl	-96(%rsp), %r10d
	cmpl	$2, %edi
	movl	%r10d, %ebp
	movl	%r10d, %ebx
	jl	.LBB8_62
# BB#55:                                # %for.body.86.preheader
	leal	-2(%rdi), %ecx
	leaq	1(%rcx), %rax
	leaq	2(%rcx), %rdx
	andq	%r11, %rax
	orq	$1, %rax
	cmpq	$1, %rax
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm9        # xmm9 = xmm0[0,0,0,0]
	jne	.LBB8_57
# BB#56:
	movl	$1, %eax
	movdqa	%xmm9, %xmm1
	movdqa	%xmm9, %xmm0
	movdqa	%xmm9, %xmm3
	jmp	.LBB8_59
.LBB8_57:                               # %vector.body237.preheader
	leaq	5(%r15), %rbp
	incq	%rcx
	andq	%r11, %rcx
	pxor	%xmm8, %xmm8
	movdqa	%xmm9, %xmm1
	movdqa	%xmm9, %xmm0
	movdqa	%xmm9, %xmm3
	.align	16, 0x90
.LBB8_58:                               # %vector.body237
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rbp), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movd	(%rbp), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm8, %xmm6    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1],xmm6[2],xmm8[2],xmm6[3],xmm8[3],xmm6[4],xmm8[4],xmm6[5],xmm8[5],xmm6[6],xmm8[6],xmm6[7],xmm8[7]
	punpcklwd	%xmm8, %xmm6    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1],xmm6[2],xmm8[2],xmm6[3],xmm8[3]
	punpcklbw	%xmm8, %xmm4    # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3],xmm4[4],xmm8[4],xmm4[5],xmm8[5],xmm4[6],xmm8[6],xmm4[7],xmm8[7]
	punpcklwd	%xmm8, %xmm4    # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm0, %xmm7
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm3, %xmm5
	movdqa	%xmm0, %xmm2
	pand	%xmm7, %xmm2
	pandn	%xmm6, %xmm7
	movdqa	%xmm7, %xmm0
	por	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm5, %xmm2
	pandn	%xmm4, %xmm5
	movdqa	%xmm5, %xmm3
	por	%xmm2, %xmm3
	movdqa	%xmm9, %xmm2
	pcmpgtd	%xmm6, %xmm9
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm9, %xmm2
	pandn	%xmm6, %xmm9
	por	%xmm2, %xmm9
	pand	%xmm1, %xmm5
	pandn	%xmm4, %xmm1
	por	%xmm5, %xmm1
	addq	$8, %rbp
	addq	$-8, %rcx
	jne	.LBB8_58
.LBB8_59:                               # %middle.block238
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm3, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm0, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm3, %xmm2
	pandn	%xmm0, %xmm3
	por	%xmm2, %xmm3
	pshufd	$229, %xmm3, %xmm0      # xmm0 = xmm3[1,1,2,3]
	movd	%xmm0, %ecx
	pcmpgtd	%xmm3, %xmm0
	movdqa	%xmm0, -128(%rsp)
	testb	$1, -128(%rsp)
	movd	%xmm3, %ebx
	cmovel	%ecx, %ebx
	movdqa	%xmm9, %xmm0
	pcmpgtd	%xmm1, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm1, %xmm0
	por	%xmm9, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm2, %ecx
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm2, -112(%rsp)
	movd	%xmm0, %ebp
	testb	$1, -112(%rsp)
	cmovnel	%ecx, %ebp
	cmpq	%rax, %rdx
	je	.LBB8_62
# BB#60:                                # %for.body.86.preheader373
	addq	%rax, %r15
	movl	%edi, %ecx
	subl	%eax, %ecx
	.align	16, 0x90
.LBB8_61:                               # %for.body.86
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	cmpl	%eax, %ebp
	cmovll	%eax, %ebp
	incq	%r15
	decl	%ecx
	jne	.LBB8_61
.LBB8_62:                               # %for.end.104
	movl	$65536, %r9d            # imm = 0x10000
	testl	%ebx, %ebx
	movl	$65536, %ecx            # imm = 0x10000
	jns	.LBB8_64
# BB#63:                                # %if.then.107
	movl	%r8d, %eax
	shll	$16, %eax
	movl	%r8d, %ecx
	subl	%ebx, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
.LBB8_64:                               # %if.end.111
	cmpl	$256, %ebp              # imm = 0x100
	jl	.LBB8_66
# BB#65:                                # %if.then.114
	movl	$255, %eax
	subl	%r8d, %eax
	shll	$16, %eax
	subl	%r8d, %ebp
	cltd
	idivl	%ebp
	movl	%eax, %r9d
.LBB8_66:                               # %if.end.120
	cmpl	%r9d, %ecx
	cmovlel	%ecx, %r9d
	testl	%edi, %edi
	jle	.LBB8_53
# BB#67:                                # %for.body.130.preheader
	subl	%r8d, %r10d
	imull	%r9d, %r10d
	addl	$32768, %r10d           # imm = 0x8000
	sarl	$16, %r10d
	addl	%r8d, %r10d
	movl	%r10d, -96(%rsp)
	cmpl	$1, %edi
	je	.LBB8_42
# BB#68:                                # %for.body.130.for.body.130_crit_edge.lr.ph
	leal	-2(%rdi), %ecx
	leaq	1(%rcx), %rbx
	leaq	2(%rcx), %rax
	andq	%r11, %rbx
	orq	$1, %rbx
	movl	$1, %edx
	cmpq	$1, %rbx
	je	.LBB8_72
# BB#69:                                # %vector.ph299
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movd	%r9d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	leaq	-76(%rsp), %rbp
	incq	%rcx
	andq	%r11, %rcx
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	movdqa	.LCPI8_0(%rip), %xmm3   # xmm3 = [32768,32768,32768,32768]
	.align	16, 0x90
.LBB8_70:                               # %vector.body289
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rbp), %xmm4
	movdqu	(%rbp), %xmm5
	psubd	%xmm0, %xmm4
	psubd	%xmm0, %xmm5
	pshufd	$245, %xmm4, %xmm6      # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	pshufd	$245, %xmm5, %xmm6      # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	paddd	%xmm3, %xmm4
	paddd	%xmm3, %xmm5
	psrad	$16, %xmm4
	psrad	$16, %xmm5
	paddd	%xmm0, %xmm4
	paddd	%xmm0, %xmm5
	movdqu	%xmm4, -16(%rbp)
	movdqu	%xmm5, (%rbp)
	addq	$32, %rbp
	addq	$-8, %rcx
	jne	.LBB8_70
# BB#71:
	movq	%rbx, %rdx
.LBB8_72:                               # %middle.block290
	cmpq	%rdx, %rax
	je	.LBB8_42
# BB#73:                                # %for.body.130.for.body.130_crit_edge.preheader
	movl	%edi, %eax
	subl	%edx, %eax
	leaq	-96(%rsp,%rdx,4), %rcx
	.align	16, 0x90
.LBB8_74:                               # %for.body.130.for.body.130_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edx
	subl	%r8d, %edx
	imull	%r9d, %edx
	addl	$32768, %edx            # imm = 0x8000
	sarl	$16, %edx
	addl	%r8d, %edx
	movl	%edx, (%rcx)
	addq	$4, %rcx
	decl	%eax
	jne	.LBB8_74
.LBB8_42:                               # %for.cond.144.preheader
	testl	%edi, %edi
	jle	.LBB8_53
# BB#43:                                # %for.body.147.preheader
	leal	-1(%rdi), %ecx
	leaq	1(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	andq	%r11, %rax
	je	.LBB8_50
# BB#44:                                # %vector.body319.preheader
	leaq	1(%rcx), %rdx
	andq	%r11, %rdx
	addq	$-8, %rdx
	movq	%rdx, %rbp
	shrq	$3, %rbp
	xorl	%ebx, %ebx
	btq	$3, %rdx
	jb	.LBB8_46
# BB#45:                                # %vector.body319.prol
	movdqa	.LCPI8_1(%rip), %xmm0   # xmm0 = [255,255,255,255]
	movdqa	-96(%rsp), %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	pand	-80(%rsp), %xmm0
	movd	%xmm1, (%rsi)
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, 4(%rsi)
	movl	$8, %ebx
.LBB8_46:                               # %vector.body319.preheader.split
	testq	%rbp, %rbp
	je	.LBB8_49
# BB#47:                                # %vector.body319.preheader.split.split
	incq	%rcx
	andq	%r11, %rcx
	subq	%rbx, %rcx
	leaq	-48(%rsp,%rbx,4), %rbp
	leaq	12(%rsi,%rbx), %rbx
	movdqa	.LCPI8_1(%rip), %xmm0   # xmm0 = [255,255,255,255]
	.align	16, 0x90
.LBB8_48:                               # %vector.body319
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-48(%rbp), %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movdqa	-32(%rbp), %xmm2
	pand	%xmm0, %xmm2
	movd	%xmm1, -12(%rbx)
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -8(%rbx)
	movdqa	-16(%rbp), %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movdqa	(%rbp), %xmm2
	pand	%xmm0, %xmm2
	movd	%xmm1, -4(%rbx)
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rbx)
	addq	$64, %rbp
	addq	$16, %rbx
	addq	$-16, %rcx
	jne	.LBB8_48
.LBB8_49:
	movq	%rax, %rdx
.LBB8_50:                               # %middle.block320
	cmpq	%rdx, %r8
	je	.LBB8_53
# BB#51:                                # %for.body.147.preheader371
	leaq	-96(%rsp,%rdx,4), %rax
	addq	%rdx, %rsi
	subl	%edx, %edi
	.align	16, 0x90
.LBB8_52:                               # %for.body.147
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rax), %cl
	movb	%cl, (%rsi)
	addq	$4, %rax
	incq	%rsi
	decl	%edi
	jne	.LBB8_52
.LBB8_53:                               # %cleanup
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	art_blend_saturation_custom_8, .Lfunc_end8-art_blend_saturation_custom_8
	.cfi_endproc

	.globl	art_blend_saturation_cmyk_8
	.align	16, 0x90
	.type	art_blend_saturation_cmyk_8,@function
art_blend_saturation_cmyk_8:            # @art_blend_saturation_cmyk_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 32
.Ltmp83:
	.cfi_offset %rbx, -32
.Ltmp84:
	.cfi_offset %r14, -24
.Ltmp85:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebx
	callq	art_blend_saturation_rgb_8
	cmpl	$4, %ebx
	jl	.LBB9_17
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934560, %r8        # imm = 0x1FFFFFFE0
	leal	-4(%rbx), %edx
	leaq	1(%rdx), %rcx
	leaq	4(%rdx), %r9
	andq	%r8, %rcx
	orq	$3, %rcx
	movl	$3, %esi
	cmpq	$3, %rcx
	je	.LBB9_10
# BB#2:                                 # %vector.memcheck
	leaq	3(%r15), %rdi
	leaq	3(%r14,%rdx), %rax
	movl	$3, %esi
	cmpq	%rax, %rdi
	ja	.LBB9_4
# BB#3:                                 # %vector.memcheck
	leaq	3(%r15,%rdx), %rax
	leaq	3(%r14), %rdi
	cmpq	%rax, %rdi
	jbe	.LBB9_10
.LBB9_4:                                # %vector.body.preheader
	leaq	1(%rdx), %rax
	andq	%r8, %rax
	addq	$-32, %rax
	movq	%rax, %rsi
	shrq	$5, %rsi
	movl	$3, %edi
	btq	$5, %rax
	jb	.LBB9_6
# BB#5:                                 # %vector.body.prol
	movups	3(%r14), %xmm0
	movups	19(%r14), %xmm1
	movups	%xmm0, 3(%r15)
	movups	%xmm1, 19(%r15)
	movl	$35, %edi
.LBB9_6:                                # %vector.body.preheader.split
	testq	%rsi, %rsi
	je	.LBB9_9
# BB#7:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	orq	$3, %rdx
	subq	%rdi, %rdx
	leaq	48(%r14,%rdi), %rsi
	leaq	48(%r15,%rdi), %rdi
	.align	16, 0x90
.LBB9_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movups	-16(%rsi), %xmm0
	movups	(%rsi), %xmm1
	movups	%xmm0, -16(%rdi)
	movups	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-64, %rdx
	jne	.LBB9_8
.LBB9_9:
	movq	%rcx, %rsi
.LBB9_10:                               # %middle.block
	cmpq	%rsi, %r9
	je	.LBB9_17
# BB#11:                                # %for.body.preheader16
	leal	1(%rbx), %eax
	leal	1(%rsi), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%ebx, %ecx
	subl	%edx, %ecx
	testb	$3, %dil
	je	.LBB9_14
# BB#12:                                # %for.body.prol.preheader
	leal	1(%rsi), %edx
	subl	%edx, %eax
	andl	$3, %eax
	negl	%eax
	.align	16, 0x90
.LBB9_13:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r14,%rsi), %dl
	movb	%dl, (%r15,%rsi)
	incq	%rsi
	incl	%eax
	jne	.LBB9_13
.LBB9_14:                               # %for.body.preheader16.split
	cmpl	$3, %ecx
	jb	.LBB9_17
# BB#15:                                # %for.body.preheader16.split.split
	subl	%esi, %ebx
	leaq	3(%r15,%rsi), %rax
	leaq	3(%r14,%rsi), %rcx
	.align	16, 0x90
.LBB9_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rcx), %dl
	movb	%dl, -3(%rax)
	movb	-2(%rcx), %dl
	movb	%dl, -2(%rax)
	movb	-1(%rcx), %dl
	movb	%dl, -1(%rax)
	movb	(%rcx), %dl
	movb	%dl, (%rax)
	addq	$4, %rax
	addq	$4, %rcx
	addl	$-4, %ebx
	jne	.LBB9_16
.LBB9_17:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	art_blend_saturation_cmyk_8, .Lfunc_end9-art_blend_saturation_cmyk_8
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
.LCPI10_1:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI10_2:
	.long	510                     # 0x1fe
	.long	510                     # 0x1fe
	.long	510                     # 0x1fe
	.long	510                     # 0x1fe
.LCPI10_3:
	.long	65025                   # 0xfe01
	.long	65025                   # 0xfe01
	.long	65025                   # 0xfe01
	.long	65025                   # 0xfe01
	.text
	.globl	art_blend_pixel_8
	.align	16, 0x90
	.type	art_blend_pixel_8,@function
art_blend_pixel_8:                      # @art_blend_pixel_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp92:
	.cfi_def_cfa_offset 64
.Ltmp93:
	.cfi_offset %rbx, -56
.Ltmp94:
	.cfi_offset %r12, -48
.Ltmp95:
	.cfi_offset %r13, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rsi
	movl	%ebp, %ecx
	cmpl	$16, %ebp
	jbe	.LBB10_1
# BB#137:                               # %sw.default
	movl	$.L.str, %edi
	movq	%rsi, %rbx
	movl	$732, %esi              # imm = 0x2DC
	callq	dprintf_file_and_line
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	errprintf_nomem
	movslq	%r14d, %rdx
	movq	%rbx, %rdi
.LBB10_117:                             # %sw.bb
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB10_1:                               # %entry
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_116:                             # %sw.bb
	movslq	%r14d, %rdx
	movq	%rsi, %rdi
	jmp	.LBB10_117
.LBB10_105:                             # %for.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
# BB#106:                               # %for.body.preheader
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %r8
	addq	$-4, %rax
	xorl	%edx, %edx
	andq	%r8, %rax
	je	.LBB10_113
# BB#107:                               # %vector.memcheck561
	leaq	(%rsi,%rbx), %rdx
	leaq	(%r12,%rbx), %rcx
	leaq	(%r15,%rbx), %rbp
	cmpq	%rsi, %rcx
	setae	%dil
	cmpq	%r12, %rdx
	setae	%r9b
	cmpq	%rsi, %rbp
	movq	%rsi, %rbp
	setae	%cl
	cmpq	%r15, %rdx
	setae	%sil
	xorl	%edx, %edx
	testb	%r9b, %dil
	jne	.LBB10_108
# BB#109:                               # %vector.memcheck561
	andb	%sil, %cl
	movq	%rbp, %rsi
	jne	.LBB10_113
# BB#110:                               # %vector.body539.preheader
	leaq	4(%r12), %rdx
	movq	%rsi, %rcx
	leaq	4(%r15), %rsi
	leaq	4(%rcx), %rdi
	incq	%rbx
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	andq	%rbx, %rbp
	pxor	%xmm0, %xmm0
	movdqa	.LCPI10_1(%rip), %xmm1  # xmm1 = [128,128,128,128]
	movdqa	.LCPI10_0(%rip), %xmm2  # xmm2 = [255,255,255,255]
.LBB10_111:                             # %vector.body539
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rdx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movd	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	-4(%rsi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	punpcklbw	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	pshufd	$245, %xmm5, %xmm7      # xmm7 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	pshufd	$245, %xmm6, %xmm4      # xmm4 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	paddd	%xmm1, %xmm5
	paddd	%xmm1, %xmm6
	movdqa	%xmm5, %xmm3
	psrld	$8, %xmm3
	movdqa	%xmm6, %xmm4
	psrld	$8, %xmm4
	paddd	%xmm5, %xmm3
	paddd	%xmm6, %xmm4
	psrld	$8, %xmm3
	psrld	$8, %xmm4
	pand	%xmm2, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, -4(%rdi)
	pand	%xmm2, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%rdi)
	addq	$8, %rdx
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$-8, %rbp
	jne	.LBB10_111
# BB#112:
	movq	%rax, %rdx
	movq	%rcx, %rsi
	jmp	.LBB10_113
.LBB10_95:                              # %for.cond.13.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
# BB#96:                                # %for.body.16.preheader
	leal	-1(%r14), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %r11
	andq	%rax, %r11
	je	.LBB10_102
# BB#97:                                # %vector.memcheck523
	leaq	(%rsi,%rdx), %rcx
	leaq	(%r12,%rdx), %rdi
	leaq	(%r15,%rdx), %rbp
	cmpq	%rsi, %rdi
	setae	%r9b
	cmpq	%r12, %rcx
	setae	%r10b
	cmpq	%rsi, %rbp
	setae	%bl
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edi, %edi
	testb	%r10b, %r9b
	jne	.LBB10_102
# BB#98:                                # %vector.memcheck523
	andb	%cl, %bl
	jne	.LBB10_102
# BB#99:                                # %vector.body501.preheader
	incq	%rdx
	andq	%rax, %rdx
	movdqa	.LCPI10_0(%rip), %xmm0  # xmm0 = [255,255,255,255]
	movdqa	.LCPI10_1(%rip), %xmm1  # xmm1 = [128,128,128,128]
	movq	%rsi, %rax
	movq	%r15, %rdi
	movq	%r12, %rbp
.LBB10_100:                             # %vector.body501
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rbp), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pandn	%xmm0, %xmm2
	movd	(%rdi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pandn	%xmm0, %xmm3
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm2
	psrld	$8, %xmm2
	paddd	%xmm3, %xmm2
	psrld	$8, %xmm2
	movdqa	%xmm0, %xmm3
	psubd	%xmm2, %xmm3
	pand	%xmm0, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, (%rax)
	addq	$4, %rbp
	addq	$4, %rdi
	addq	$4, %rax
	addq	$-4, %rdx
	jne	.LBB10_100
# BB#101:
	movq	%r11, %rdi
.LBB10_102:                             # %middle.block502
	cmpq	%rdi, %r8
	je	.LBB10_139
# BB#103:                               # %for.body.16.preheader580
	addq	%rdi, %r12
	addq	%rdi, %r15
	addq	%rdi, %rsi
	subl	%edi, %r14d
	.align	16, 0x90
.LBB10_104:                             # %for.body.16
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	xorl	$255, %eax
	movzbl	(%r15), %ecx
	xorl	$255, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%rsi)
	incq	%r12
	incq	%r15
	incq	%rsi
	decl	%r14d
	jne	.LBB10_104
	jmp	.LBB10_139
.LBB10_12:                              # %for.cond.282.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
# BB#13:                                # %for.body.285.preheader
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %r8
	addq	$-4, %rax
	xorl	%edx, %edx
	andq	%r8, %rax
	je	.LBB10_20
# BB#14:                                # %vector.memcheck323
	leaq	(%rsi,%rbx), %rdx
	leaq	(%r12,%rbx), %rcx
	leaq	(%r15,%rbx), %rbp
	cmpq	%rsi, %rcx
	setae	%dil
	cmpq	%r12, %rdx
	setae	%r9b
	cmpq	%rsi, %rbp
	movq	%rsi, %rbp
	setae	%cl
	cmpq	%r15, %rdx
	setae	%sil
	xorl	%edx, %edx
	testb	%r9b, %dil
	jne	.LBB10_15
# BB#16:                                # %vector.memcheck323
	andb	%sil, %cl
	movq	%rbp, %rsi
	jne	.LBB10_20
# BB#17:                                # %vector.body301.preheader
	leaq	4(%r12), %rdx
	movq	%rsi, %rcx
	leaq	4(%r15), %rsi
	leaq	4(%rcx), %rdi
	incq	%rbx
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	andq	%rbx, %rbp
	pxor	%xmm0, %xmm0
	movdqa	.LCPI10_0(%rip), %xmm1  # xmm1 = [255,255,255,255]
.LBB10_18:                              # %vector.body301
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movd	-4(%rsi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	punpcklbw	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	psubd	%xmm4, %xmm3
	psubd	%xmm5, %xmm2
	movdqa	%xmm3, %xmm4
	psrad	$31, %xmm4
	paddd	%xmm4, %xmm3
	pxor	%xmm4, %xmm3
	movdqa	%xmm2, %xmm4
	psrad	$31, %xmm4
	paddd	%xmm4, %xmm2
	pxor	%xmm4, %xmm2
	pand	%xmm1, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, -4(%rdi)
	pand	%xmm1, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rdi)
	addq	$8, %rdx
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$-8, %rbp
	jne	.LBB10_18
# BB#19:
	movq	%rax, %rdx
	movq	%rcx, %rsi
	jmp	.LBB10_20
.LBB10_45:                              # %for.cond.236.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
# BB#46:                                # %for.body.239.preheader
	movq	%rsi, %r11
	leal	-1(%r14), %esi
	leaq	1(%rsi), %r8
	addq	$-28, %rax
	xorl	%edx, %edx
	andq	%r8, %rax
	je	.LBB10_52
# BB#47:                                # %vector.memcheck405
	leaq	(%r11,%rsi), %rcx
	leaq	(%r12,%rsi), %rdx
	leaq	(%r15,%rsi), %rdi
	cmpq	%r11, %rdx
	setae	%r9b
	cmpq	%r12, %rcx
	setae	%r10b
	cmpq	%r11, %rdi
	setae	%bl
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edx, %edx
	testb	%r10b, %r9b
	jne	.LBB10_52
# BB#48:                                # %vector.memcheck405
	andb	%cl, %bl
	jne	.LBB10_52
# BB#49:                                # %vector.body383.preheader
	leaq	16(%r12), %rdx
	leaq	16(%r15), %rdi
	leaq	16(%r11), %rbp
	incq	%rsi
	movabsq	$8589934560, %rbx       # imm = 0x1FFFFFFE0
	andq	%rsi, %rbx
.LBB10_50:                              # %vector.body383
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rdx), %xmm0
	movdqu	(%rdx), %xmm1
	movdqu	-16(%rdi), %xmm2
	movdqu	(%rdi), %xmm3
	pminub	%xmm0, %xmm2
	pminub	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rbp)
	movdqu	%xmm3, (%rbp)
	addq	$32, %rdx
	addq	$32, %rdi
	addq	$32, %rbp
	addq	$-32, %rbx
	jne	.LBB10_50
# BB#51:
	movq	%rax, %rdx
.LBB10_52:                              # %middle.block384
	cmpq	%rdx, %r8
	je	.LBB10_139
# BB#53:                                # %for.body.239.preheader589
	leal	1(%r14), %ecx
	movl	%edx, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB10_57
# BB#54:                                # %for.body.239.prol
	movzbl	(%r12,%rdx), %ecx
	movzbl	(%r15,%rdx), %esi
	cmpl	%esi, %ecx
	jb	.LBB10_56
# BB#55:                                # %for.body.239.prol
	movb	%sil, %cl
.LBB10_56:                              # %for.body.239.prol
	movb	%cl, (%r11,%rdx)
	orq	$1, %rdx
.LBB10_57:                              # %for.body.239.preheader589.split
	cmpl	%r14d, %eax
	je	.LBB10_139
# BB#58:                                # %for.body.239.preheader589.split.split
	subl	%edx, %r14d
	leaq	1(%r12,%rdx), %rax
	leaq	1(%r15,%rdx), %rcx
	leaq	1(%r11,%rdx), %rdx
.LBB10_59:                              # %for.body.239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %esi
	movzbl	-1(%rcx), %edi
	cmpl	%edi, %esi
	jb	.LBB10_61
# BB#60:                                # %for.body.239
                                        #   in Loop: Header=BB10_59 Depth=1
	movb	%dil, %sil
.LBB10_61:                              # %for.body.239
                                        #   in Loop: Header=BB10_59 Depth=1
	movb	%sil, -1(%rdx)
	movzbl	(%rax), %esi
	movzbl	(%rcx), %edi
	cmpl	%edi, %esi
	jb	.LBB10_63
# BB#62:                                # %for.body.239
                                        #   in Loop: Header=BB10_59 Depth=1
	movb	%dil, %sil
.LBB10_63:                              # %for.body.239
                                        #   in Loop: Header=BB10_59 Depth=1
	movb	%sil, (%rdx)
	addq	$2, %rax
	addq	$2, %rcx
	addq	$2, %rdx
	addl	$-2, %r14d
	jne	.LBB10_59
	jmp	.LBB10_139
.LBB10_26:                              # %for.cond.257.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
# BB#27:                                # %for.body.260.preheader
	movq	%rsi, %r11
	leal	-1(%r14), %esi
	leaq	1(%rsi), %r8
	addq	$-28, %rax
	xorl	%edx, %edx
	andq	%r8, %rax
	je	.LBB10_33
# BB#28:                                # %vector.memcheck364
	leaq	(%r11,%rsi), %rcx
	leaq	(%r12,%rsi), %rdx
	leaq	(%r15,%rsi), %rdi
	cmpq	%r11, %rdx
	setae	%r9b
	cmpq	%r12, %rcx
	setae	%r10b
	cmpq	%r11, %rdi
	setae	%bl
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edx, %edx
	testb	%r10b, %r9b
	jne	.LBB10_33
# BB#29:                                # %vector.memcheck364
	andb	%cl, %bl
	jne	.LBB10_33
# BB#30:                                # %vector.body342.preheader
	leaq	16(%r12), %rdx
	leaq	16(%r15), %rdi
	leaq	16(%r11), %rbp
	incq	%rsi
	movabsq	$8589934560, %rbx       # imm = 0x1FFFFFFE0
	andq	%rsi, %rbx
.LBB10_31:                              # %vector.body342
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rdx), %xmm0
	movdqu	(%rdx), %xmm1
	movdqu	-16(%rdi), %xmm2
	movdqu	(%rdi), %xmm3
	pmaxub	%xmm0, %xmm2
	pmaxub	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rbp)
	movdqu	%xmm3, (%rbp)
	addq	$32, %rdx
	addq	$32, %rdi
	addq	$32, %rbp
	addq	$-32, %rbx
	jne	.LBB10_31
# BB#32:
	movq	%rax, %rdx
.LBB10_33:                              # %middle.block343
	cmpq	%rdx, %r8
	je	.LBB10_139
# BB#34:                                # %for.body.260.preheader591
	leal	1(%r14), %ecx
	movl	%edx, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB10_38
# BB#35:                                # %for.body.260.prol
	movzbl	(%r12,%rdx), %ecx
	movzbl	(%r15,%rdx), %esi
	cmpl	%esi, %ecx
	ja	.LBB10_37
# BB#36:                                # %for.body.260.prol
	movb	%sil, %cl
.LBB10_37:                              # %for.body.260.prol
	movb	%cl, (%r11,%rdx)
	orq	$1, %rdx
.LBB10_38:                              # %for.body.260.preheader591.split
	cmpl	%r14d, %eax
	je	.LBB10_139
# BB#39:                                # %for.body.260.preheader591.split.split
	subl	%edx, %r14d
	leaq	1(%r12,%rdx), %rax
	leaq	1(%r15,%rdx), %rcx
	leaq	1(%r11,%rdx), %rdx
.LBB10_40:                              # %for.body.260
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %esi
	movzbl	-1(%rcx), %edi
	cmpl	%edi, %esi
	ja	.LBB10_42
# BB#41:                                # %for.body.260
                                        #   in Loop: Header=BB10_40 Depth=1
	movb	%dil, %sil
.LBB10_42:                              # %for.body.260
                                        #   in Loop: Header=BB10_40 Depth=1
	movb	%sil, -1(%rdx)
	movzbl	(%rax), %esi
	movzbl	(%rcx), %edi
	cmpl	%edi, %esi
	ja	.LBB10_44
# BB#43:                                # %for.body.260
                                        #   in Loop: Header=BB10_40 Depth=1
	movb	%dil, %sil
.LBB10_44:                              # %for.body.260
                                        #   in Loop: Header=BB10_40 Depth=1
	movb	%sil, (%rdx)
	addq	$2, %rax
	addq	$2, %rcx
	addq	$2, %rdx
	addl	$-2, %r14d
	jne	.LBB10_40
	jmp	.LBB10_139
.LBB10_67:                              # %for.cond.152.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
	.align	16, 0x90
.LBB10_68:                              # %for.body.155
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	testl	%eax, %eax
	je	.LBB10_69
# BB#124:                               # %if.else.169
                                        #   in Loop: Header=BB10_68 Depth=1
	movzbl	(%r15), %ecx
	movb	%cl, %dl
	notb	%dl
	movzbl	%dl, %edx
	cmpl	%edx, %eax
	jae	.LBB10_125
# BB#126:                               # %if.else.177
                                        #   in Loop: Header=BB10_68 Depth=1
	xorl	$255, %ecx
	imull	$510, %eax, %eax        # imm = 0x1FE
	leal	(%rax,%rcx), %eax
	addl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movb	%al, (%rsi)
	jmp	.LBB10_127
	.align	16, 0x90
.LBB10_69:                              # %if.then.166
                                        #   in Loop: Header=BB10_68 Depth=1
	movb	$0, (%rsi)
	jmp	.LBB10_127
.LBB10_125:                             # %if.then.174
                                        #   in Loop: Header=BB10_68 Depth=1
	movb	$-1, (%rsi)
.LBB10_127:                             # %for.inc.189
                                        #   in Loop: Header=BB10_68 Depth=1
	incq	%r12
	incq	%r15
	incq	%rsi
	decl	%r14d
	jne	.LBB10_68
	jmp	.LBB10_139
.LBB10_64:                              # %for.cond.193.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
	.align	16, 0x90
.LBB10_65:                              # %for.body.196
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	cmpl	$255, %eax
	je	.LBB10_66
# BB#128:                               # %if.else.210
                                        #   in Loop: Header=BB10_65 Depth=1
	xorl	$255, %eax
	movzbl	(%r15), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB10_129
# BB#130:                               # %if.else.218
                                        #   in Loop: Header=BB10_65 Depth=1
	imull	$510, %eax, %eax        # imm = 0x1FE
	leal	(%rax,%rcx), %eax
	addl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%rsi)
	jmp	.LBB10_131
	.align	16, 0x90
.LBB10_66:                              # %if.then.207
                                        #   in Loop: Header=BB10_65 Depth=1
	movb	$-1, (%rsi)
	jmp	.LBB10_131
.LBB10_129:                             # %if.then.215
                                        #   in Loop: Header=BB10_65 Depth=1
	movb	$0, (%rsi)
.LBB10_131:                             # %for.inc.232
                                        #   in Loop: Header=BB10_65 Depth=1
	incq	%r12
	incq	%r15
	incq	%rsi
	decl	%r14d
	jne	.LBB10_65
	jmp	.LBB10_139
.LBB10_2:                               # %for.cond.307.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
# BB#3:                                 # %for.body.310.preheader
	leal	-1(%r14), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %r11
	andq	%rax, %r11
	je	.LBB10_9
# BB#4:                                 # %vector.memcheck
	leaq	(%rsi,%rdx), %rcx
	leaq	(%r12,%rdx), %rdi
	leaq	(%r15,%rdx), %rbp
	cmpq	%rsi, %rdi
	setae	%r9b
	cmpq	%r12, %rcx
	setae	%r10b
	cmpq	%rsi, %rbp
	setae	%bl
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edi, %edi
	testb	%r10b, %r9b
	jne	.LBB10_9
# BB#5:                                 # %vector.memcheck
	andb	%cl, %bl
	jne	.LBB10_9
# BB#6:                                 # %vector.body.preheader
	incq	%rdx
	andq	%rax, %rdx
	pxor	%xmm0, %xmm0
	movdqa	.LCPI10_0(%rip), %xmm1  # xmm1 = [255,255,255,255]
	movdqa	.LCPI10_1(%rip), %xmm2  # xmm2 = [128,128,128,128]
	movq	%rsi, %rax
	movq	%r15, %rdi
	movq	%r12, %rbp
.LBB10_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rbp), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movdqa	%xmm3, %xmm5
	pxor	%xmm1, %xmm5
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pshufd	$245, %xmm5, %xmm6      # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm7      # xmm7 = xmm4[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm6      # xmm6 = xmm7[0,2,2,3]
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	pxor	%xmm1, %xmm4
	pshufd	$245, %xmm4, %xmm6      # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm6, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	paddd	%xmm5, %xmm4
	paddd	%xmm2, %xmm4
	movdqa	%xmm4, %xmm3
	psrld	$8, %xmm3
	paddd	%xmm4, %xmm3
	psrld	$8, %xmm3
	pand	%xmm1, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, (%rax)
	addq	$4, %rbp
	addq	$4, %rdi
	addq	$4, %rax
	addq	$-4, %rdx
	jne	.LBB10_7
# BB#8:
	movq	%r11, %rdi
.LBB10_9:                               # %middle.block
	cmpq	%rdi, %r8
	je	.LBB10_139
# BB#10:                                # %for.body.310.preheader595
	addq	%rdi, %r12
	addq	%rdi, %r15
	addq	%rdi, %rsi
	subl	%edi, %r14d
	.align	16, 0x90
.LBB10_11:                              # %for.body.310
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	movl	%eax, %ecx
	xorl	$255, %ecx
	movzbl	(%r15), %edx
	imull	%edx, %ecx
	xorl	$255, %edx
	imull	%eax, %edx
	leal	(%rcx,%rdx), %eax
	leal	128(%rcx,%rdx), %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	movb	%ah, (%rsi)  # NOREX
	incq	%r12
	incq	%r15
	incq	%rsi
	decl	%r14d
	jne	.LBB10_11
	jmp	.LBB10_139
.LBB10_70:                              # %for.cond.116.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
# BB#71:                                # %for.body.119.preheader
	leal	-1(%r14), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %r11
	andq	%rax, %r11
	je	.LBB10_77
# BB#72:                                # %vector.memcheck446
	leaq	(%rsi,%rdx), %rcx
	leaq	(%r12,%rdx), %rdi
	leaq	(%r15,%rdx), %rbp
	cmpq	%rsi, %rdi
	setae	%r9b
	cmpq	%r12, %rcx
	setae	%r10b
	cmpq	%rsi, %rbp
	setae	%bl
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edi, %edi
	testb	%r10b, %r9b
	jne	.LBB10_77
# BB#73:                                # %vector.memcheck446
	andb	%cl, %bl
	jne	.LBB10_77
# BB#74:                                # %vector.body424.preheader
	incq	%rdx
	andq	%rax, %rdx
	movdqa	.LCPI10_0(%rip), %xmm0  # xmm0 = [255,255,255,255]
	pxor	%xmm11, %xmm11
	movdqa	.LCPI10_2(%rip), %xmm8  # xmm8 = [510,510,510,510]
	movdqa	.LCPI10_3(%rip), %xmm9  # xmm9 = [65025,65025,65025,65025]
	pcmpeqd	%xmm12, %xmm12
	movdqa	.LCPI10_1(%rip), %xmm10 # xmm10 = [128,128,128,128]
	movq	%rsi, %rax
	movq	%r15, %rdi
	movq	%r12, %rbp
.LBB10_75:                              # %vector.body424
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rbp), %xmm7           # xmm7 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm6, %xmm6    # xmm6 = xmm6[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm6, %xmm6    # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm6
	movdqa	%xmm6, %xmm2
	pand	%xmm0, %xmm2
	punpcklbw	%xmm11, %xmm7   # xmm7 = xmm7[0],xmm11[0],xmm7[1],xmm11[1],xmm7[2],xmm11[2],xmm7[3],xmm11[3],xmm7[4],xmm11[4],xmm7[5],xmm11[5],xmm7[6],xmm11[6],xmm7[7],xmm11[7]
	punpcklwd	%xmm11, %xmm7   # xmm7 = xmm7[0],xmm11[0],xmm7[1],xmm11[1],xmm7[2],xmm11[2],xmm7[3],xmm11[3]
	paddd	%xmm7, %xmm7
	movdqa	%xmm7, %xmm3
	pxor	%xmm8, %xmm3
	pshufd	$245, %xmm7, %xmm5      # xmm5 = xmm7[1,1,3,3]
	pmuludq	%xmm2, %xmm7
	pshufd	$245, %xmm2, %xmm1      # xmm1 = xmm2[1,1,3,3]
	pxor	%xmm0, %xmm2
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	movdqa	%xmm9, %xmm2
	psubd	%xmm3, %xmm2
	pshufd	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	pcmpgtd	%xmm12, %xmm6
	movdqa	%xmm6, %xmm1
	pxor	%xmm12, %xmm1
	pandn	%xmm3, %xmm1
	pandn	%xmm2, %xmm6
	por	%xmm1, %xmm6
	paddd	%xmm10, %xmm6
	movdqa	%xmm6, %xmm1
	psrld	$8, %xmm1
	paddd	%xmm6, %xmm1
	psrld	$8, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rax)
	addq	$4, %rbp
	addq	$4, %rdi
	addq	$4, %rax
	addq	$-4, %rdx
	jne	.LBB10_75
# BB#76:
	movq	%r11, %rdi
.LBB10_77:                              # %middle.block425
	cmpq	%rdi, %r8
	je	.LBB10_139
# BB#78:                                # %for.body.119.preheader585
	addq	%rdi, %r12
	addq	%rdi, %r15
	addq	%rdi, %rsi
	subl	%edi, %r14d
	.align	16, 0x90
.LBB10_79:                              # %for.body.119
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %ecx
	movzbl	(%r12), %eax
	addl	%eax, %eax
	testb	%cl, %cl
	js	.LBB10_122
# BB#80:                                # %if.then.127
                                        #   in Loop: Header=BB10_79 Depth=1
	imull	%ecx, %eax
	jmp	.LBB10_123
.LBB10_122:                             # %if.else.132
                                        #   in Loop: Header=BB10_79 Depth=1
	xorl	$510, %eax              # imm = 0x1FE
	xorl	$255, %ecx
	imull	%eax, %ecx
	movl	$65025, %eax            # imm = 0xFE01
	subl	%ecx, %eax
.LBB10_123:                             # %if.end.140
                                        #   in Loop: Header=BB10_79 Depth=1
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	movb	%ah, (%rsi)  # NOREX
	incq	%r12
	incq	%r15
	incq	%rsi
	decl	%r14d
	jne	.LBB10_79
	jmp	.LBB10_139
.LBB10_84:                              # %for.cond.37.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
# BB#85:                                # %for.body.40.preheader
	leal	-1(%r14), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %r11
	andq	%rax, %r11
	je	.LBB10_91
# BB#86:                                # %vector.memcheck484
	leaq	(%rsi,%rdx), %rcx
	leaq	(%r12,%rdx), %rdi
	leaq	(%r15,%rdx), %rbp
	cmpq	%rsi, %rdi
	setae	%r9b
	cmpq	%r12, %rcx
	setae	%r10b
	cmpq	%rsi, %rbp
	setae	%bl
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edi, %edi
	testb	%r10b, %r9b
	jne	.LBB10_91
# BB#87:                                # %vector.memcheck484
	andb	%cl, %bl
	jne	.LBB10_91
# BB#88:                                # %vector.body462.preheader
	incq	%rdx
	andq	%rax, %rdx
	movdqa	.LCPI10_0(%rip), %xmm0  # xmm0 = [255,255,255,255]
	movdqa	.LCPI10_2(%rip), %xmm8  # xmm8 = [510,510,510,510]
	pxor	%xmm11, %xmm11
	movdqa	.LCPI10_3(%rip), %xmm9  # xmm9 = [65025,65025,65025,65025]
	pcmpeqd	%xmm12, %xmm12
	movdqa	.LCPI10_1(%rip), %xmm10 # xmm10 = [128,128,128,128]
	movq	%rsi, %rax
	movq	%r15, %rdi
	movq	%r12, %rbp
.LBB10_89:                              # %vector.body462
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rbp), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm6, %xmm6    # xmm6 = xmm6[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm6, %xmm6    # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm6
	movd	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movdqa	%xmm6, %xmm7
	pand	%xmm0, %xmm7
	paddd	%xmm7, %xmm7
	movdqa	%xmm7, %xmm3
	pxor	%xmm8, %xmm3
	punpcklbw	%xmm11, %xmm1   # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1],xmm1[2],xmm11[2],xmm1[3],xmm11[3],xmm1[4],xmm11[4],xmm1[5],xmm11[5],xmm1[6],xmm11[6],xmm1[7],xmm11[7]
	punpcklwd	%xmm11, %xmm1   # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1],xmm1[2],xmm11[2],xmm1[3],xmm11[3]
	pshufd	$245, %xmm7, %xmm5      # xmm5 = xmm7[1,1,3,3]
	pmuludq	%xmm1, %xmm7
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pxor	%xmm0, %xmm1
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	movdqa	%xmm9, %xmm1
	psubd	%xmm3, %xmm1
	pshufd	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pcmpgtd	%xmm12, %xmm6
	movdqa	%xmm6, %xmm2
	pxor	%xmm12, %xmm2
	pandn	%xmm3, %xmm2
	pandn	%xmm1, %xmm6
	por	%xmm2, %xmm6
	paddd	%xmm10, %xmm6
	movdqa	%xmm6, %xmm1
	psrld	$8, %xmm1
	paddd	%xmm6, %xmm1
	psrld	$8, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rax)
	addq	$4, %rbp
	addq	$4, %rdi
	addq	$4, %rax
	addq	$-4, %rdx
	jne	.LBB10_89
# BB#90:
	movq	%r11, %rdi
.LBB10_91:                              # %middle.block463
	cmpq	%rdi, %r8
	je	.LBB10_139
# BB#92:                                # %for.body.40.preheader582
	addq	%rdi, %r12
	addq	%rdi, %r15
	addq	%rdi, %rsi
	subl	%edi, %r14d
	.align	16, 0x90
.LBB10_93:                              # %for.body.40
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %edx
	movzbl	(%r15), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	testb	%dl, %dl
	js	.LBB10_118
# BB#94:                                # %if.then
                                        #   in Loop: Header=BB10_93 Depth=1
	imull	%ecx, %eax
	jmp	.LBB10_119
.LBB10_118:                             # %if.else
                                        #   in Loop: Header=BB10_93 Depth=1
	xorl	$510, %eax              # imm = 0x1FE
	xorl	$255, %ecx
	imull	%eax, %ecx
	movl	$65025, %eax            # imm = 0xFE01
	subl	%ecx, %eax
.LBB10_119:                             # %if.end
                                        #   in Loop: Header=BB10_93 Depth=1
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	movb	%ah, (%rsi)  # NOREX
	incq	%r12
	incq	%r15
	incq	%rsi
	decl	%r14d
	jne	.LBB10_93
	jmp	.LBB10_139
.LBB10_81:                              # %for.cond.70.preheader
	testl	%r14d, %r14d
	jle	.LBB10_139
	.align	16, 0x90
.LBB10_82:                              # %for.body.73
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	movzbl	(%r15), %edx
	movl	%edx, %ecx
	addl	%ecx, %ecx
	testb	%dl, %dl
	js	.LBB10_120
# BB#83:                                # %if.then.81
                                        #   in Loop: Header=BB10_82 Depth=1
	movl	$255, %edx
	subl	%ecx, %edx
	imull	art_blend_sq_diff_8(,%rax,4), %edx
	addl	$32768, %edx            # imm = 0x8000
	shrl	$16, %edx
	subl	%edx, %eax
	jmp	.LBB10_121
	.align	16, 0x90
.LBB10_120:                             # %if.else.94
                                        #   in Loop: Header=BB10_82 Depth=1
	addl	$-255, %ecx
	movzbl	art_blend_soft_light_8(%rax), %edx
	imull	%ecx, %edx
	movl	%edx, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rdx), %ecx
	shrl	$8, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
.LBB10_121:                             # %for.inc.112
                                        #   in Loop: Header=BB10_82 Depth=1
	movb	%al, (%rsi)
	incq	%rsi
	incq	%r12
	incq	%r15
	decl	%r14d
	jne	.LBB10_82
	jmp	.LBB10_139
.LBB10_132:                             # %sw.bb.334
	movq	(%rbx), %rax
	jmp	.LBB10_133
.LBB10_138:                             # %sw.bb.338
	leaq	4(%rsp), %r13
	movl	%r14d, %edi
	movq	%rsi, %rbp
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	*(%rbx)
	movl	%r14d, %edi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	callq	*8(%rbx)
	jmp	.LBB10_139
.LBB10_136:                             # %sw.bb.337
	movq	8(%rbx), %rax
.LBB10_133:                             # %sw.bb.334
	movl	%r14d, %edi
	movq	%r12, %rdx
	movq	%r15, %rcx
	jmp	.LBB10_134
.LBB10_135:                             # %sw.bb.335
	movq	(%rbx), %rax
	movl	%r14d, %edi
	movq	%r15, %rdx
	movq	%r12, %rcx
.LBB10_134:                             # %sw.bb.334
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB10_108:
	movq	%rbp, %rsi
.LBB10_113:                             # %middle.block540
	cmpq	%rdx, %r8
	je	.LBB10_139
# BB#114:                               # %for.body.preheader579
	addq	%rdx, %r12
	addq	%rdx, %r15
	addq	%rdx, %rsi
	subl	%edx, %r14d
	.align	16, 0x90
.LBB10_115:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	movzbl	(%r15), %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %eax
	movb	%ah, (%rsi)  # NOREX
	incq	%r12
	incq	%r15
	incq	%rsi
	decl	%r14d
	jne	.LBB10_115
	jmp	.LBB10_139
.LBB10_15:
	movq	%rbp, %rsi
.LBB10_20:                              # %middle.block302
	cmpq	%rdx, %r8
	je	.LBB10_139
# BB#21:                                # %for.body.285.preheader593
	movq	%rsi, %rbp
	leal	1(%r14), %ecx
	movl	%edx, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB10_23
# BB#22:                                # %for.body.285.prol
	movzbl	(%r12,%rdx), %ecx
	movzbl	(%r15,%rdx), %esi
	movl	%ecx, %edi
	subl	%esi, %edi
	negl	%edi
	subl	%esi, %ecx
	cmovsl	%edi, %ecx
	movb	%cl, (%rbp,%rdx)
	orq	$1, %rdx
.LBB10_23:                              # %for.body.285.preheader593.split
	cmpl	%r14d, %eax
	je	.LBB10_139
# BB#24:                                # %for.body.285.preheader593.split.split
	subl	%edx, %r14d
	leaq	1(%r12,%rdx), %rax
	leaq	1(%r15,%rdx), %rcx
	leaq	1(%rbp,%rdx), %rdx
.LBB10_25:                              # %for.body.285
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %esi
	movzbl	-1(%rcx), %edi
	movl	%esi, %ebp
	subl	%edi, %ebp
	negl	%ebp
	subl	%edi, %esi
	cmovsl	%ebp, %esi
	movb	%sil, -1(%rdx)
	movzbl	(%rax), %esi
	movzbl	(%rcx), %edi
	movl	%esi, %ebp
	subl	%edi, %ebp
	negl	%ebp
	subl	%edi, %esi
	cmovsl	%ebp, %esi
	movb	%sil, (%rdx)
	addq	$2, %rax
	addq	$2, %rcx
	addq	$2, %rdx
	addl	$-2, %r14d
	jne	.LBB10_25
.LBB10_139:                             # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	art_blend_pixel_8, .Lfunc_end10-art_blend_pixel_8
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_116
	.quad	.LBB10_105
	.quad	.LBB10_95
	.quad	.LBB10_12
	.quad	.LBB10_45
	.quad	.LBB10_26
	.quad	.LBB10_67
	.quad	.LBB10_64
	.quad	.LBB10_2
	.quad	.LBB10_70
	.quad	.LBB10_84
	.quad	.LBB10_81
	.quad	.LBB10_132
	.quad	.LBB10_138
	.quad	.LBB10_136
	.quad	.LBB10_135
	.quad	.LBB10_116

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
.LCPI11_1:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
.LCPI11_2:
	.short	32768                   # 0x8000
	.short	32768                   # 0x8000
	.short	32768                   # 0x8000
	.short	32768                   # 0x8000
	.short	32768                   # 0x8000
	.short	32768                   # 0x8000
	.short	32768                   # 0x8000
	.short	32768                   # 0x8000
.LCPI11_3:
	.long	131070                  # 0x1fffe
	.long	131070                  # 0x1fffe
	.long	131070                  # 0x1fffe
	.long	131070                  # 0x1fffe
.LCPI11_4:
	.long	4294836225              # 0xfffe0001
	.long	4294836225              # 0xfffe0001
	.long	4294836225              # 0xfffe0001
	.long	4294836225              # 0xfffe0001
	.text
	.globl	art_blend_pixel
	.align	16, 0x90
	.type	art_blend_pixel,@function
art_blend_pixel:                        # @art_blend_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp100:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp103:
	.cfi_def_cfa_offset 48
.Ltmp104:
	.cfi_offset %rbx, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movq	%rdi, %r14
	movl	%ebp, %eax
	cmpl	$16, %ebp
	ja	.LBB11_114
# BB#1:                                 # %entry
	movabsq	$8589934588, %r9        # imm = 0x1FFFFFFFC
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_99:                              # %sw.bb
	movslq	%ebx, %rdx
	addq	%rdx, %rdx
	jmp	.LBB11_100
.LBB11_114:                             # %sw.default
	movl	$.L.str, %edi
	movl	$859, %esi              # imm = 0x35B
	callq	dprintf_file_and_line
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	errprintf_nomem
	movslq	%ebx, %rdx
.LBB11_100:                             # %sw.bb
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB11_89:                              # %for.cond.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
# BB#90:                                # %for.body.preheader
	leal	-1(%rbx), %eax
	leaq	1(%rax), %r8
	addq	$-4, %r9
	xorl	%edi, %edi
	andq	%r8, %r9
	je	.LBB11_96
# BB#91:                                # %vector.memcheck534
	leaq	(%r14,%rax,2), %rdx
	leaq	(%rsi,%rax,2), %rcx
	leaq	(%r15,%rax,2), %rdi
	cmpq	%r14, %rcx
	setae	%r10b
	cmpq	%rsi, %rdx
	setae	%r11b
	cmpq	%r14, %rdi
	setae	%cl
	cmpq	%r15, %rdx
	setae	%dl
	xorl	%edi, %edi
	testb	%r11b, %r10b
	jne	.LBB11_96
# BB#92:                                # %vector.memcheck534
	andb	%dl, %cl
	jne	.LBB11_96
# BB#93:                                # %vector.body509.preheader
	leaq	8(%rsi), %rdx
	leaq	8(%r15), %rdi
	leaq	8(%r14), %rbp
	incq	%rax
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	pxor	%xmm0, %xmm0
	movdqa	.LCPI11_1(%rip), %xmm1  # xmm1 = [32768,32768,32768,32768]
	.align	16, 0x90
.LBB11_94:                              # %vector.body509
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %xmm2         # xmm2 = mem[0],zero
	movq	(%rdx), %xmm3           # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movq	-8(%rdi), %xmm4         # xmm4 = mem[0],zero
	movq	(%rdi), %xmm5           # xmm5 = mem[0],zero
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	punpcklwd	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	pshufd	$245, %xmm4, %xmm6      # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm6, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	pshufd	$245, %xmm5, %xmm2      # xmm2 = xmm5[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	punpckldq	%xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1]
	paddd	%xmm1, %xmm4
	paddd	%xmm1, %xmm5
	movdqa	%xmm4, %xmm2
	psrld	$16, %xmm2
	movdqa	%xmm5, %xmm3
	psrld	$16, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm5, %xmm3
	psrld	$16, %xmm2
	psrld	$16, %xmm3
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	movq	%xmm2, -8(%rbp)
	pshuflw	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	movq	%xmm2, (%rbp)
	addq	$16, %rdx
	addq	$16, %rdi
	addq	$16, %rbp
	addq	$-8, %rcx
	jne	.LBB11_94
# BB#95:
	movq	%r9, %rdi
.LBB11_96:                              # %middle.block510
	cmpq	%rdi, %r8
	je	.LBB11_113
# BB#97:                                # %for.body.preheader552
	leaq	(%rsi,%rdi,2), %rax
	leaq	(%r15,%rdi,2), %rcx
	leaq	(%r14,%rdi,2), %rdx
	subl	%edi, %ebx
	.align	16, 0x90
.LBB11_98:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	movzwl	(%rcx), %edi
	imull	%esi, %edi
	leal	32768(%rdi), %esi
	shrl	$16, %esi
	leal	32768(%rsi,%rdi), %esi
	shrl	$16, %esi
	movw	%si, (%rdx)
	addq	$2, %rax
	addq	$2, %rcx
	addq	$2, %rdx
	decl	%ebx
	jne	.LBB11_98
	jmp	.LBB11_113
.LBB11_79:                              # %for.cond.14.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
# BB#80:                                # %for.body.17.preheader
	leal	-1(%rbx), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %r10
	andq	%r9, %r10
	je	.LBB11_86
# BB#81:                                # %vector.memcheck493
	leaq	(%r14,%rdx,2), %rcx
	leaq	(%rsi,%rdx,2), %rax
	leaq	(%r15,%rdx,2), %rdi
	cmpq	%r14, %rax
	setae	%r11b
	cmpq	%rsi, %rcx
	setae	%bpl
	cmpq	%r14, %rdi
	setae	%al
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edi, %edi
	testb	%bpl, %r11b
	jne	.LBB11_86
# BB#82:                                # %vector.memcheck493
	andb	%cl, %al
	jne	.LBB11_86
# BB#83:                                # %vector.body468.preheader
	incq	%rdx
	andq	%r9, %rdx
	movdqa	.LCPI11_0(%rip), %xmm0  # xmm0 = [65535,65535,65535,65535]
	movdqa	.LCPI11_1(%rip), %xmm1  # xmm1 = [32768,32768,32768,32768]
	movq	%r14, %rax
	movq	%r15, %rbp
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB11_84:                              # %vector.body468
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %xmm2           # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pandn	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pandn	%xmm0, %xmm3
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm2
	psrld	$16, %xmm2
	paddd	%xmm3, %xmm2
	psrld	$16, %xmm2
	pxor	%xmm0, %xmm2
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	movq	%xmm2, (%rax)
	addq	$8, %rcx
	addq	$8, %rbp
	addq	$8, %rax
	addq	$-4, %rdx
	jne	.LBB11_84
# BB#85:
	movq	%r10, %rdi
.LBB11_86:                              # %middle.block469
	cmpq	%rdi, %r8
	je	.LBB11_113
# BB#87:                                # %for.body.17.preheader553
	leaq	(%rsi,%rdi,2), %rax
	leaq	(%r15,%rdi,2), %rcx
	leaq	(%r14,%rdi,2), %rdx
	subl	%edi, %ebx
	.align	16, 0x90
.LBB11_88:                              # %for.body.17
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	xorl	$65535, %esi            # imm = 0xFFFF
	movzwl	(%rcx), %edi
	xorl	$65535, %edi            # imm = 0xFFFF
	imull	%esi, %edi
	leal	32768(%rdi), %esi
	shrl	$16, %esi
	leal	32768(%rsi,%rdi), %esi
	shrl	$16, %esi
	notl	%esi
	movw	%si, (%rdx)
	addq	$2, %rax
	addq	$2, %rcx
	addq	$2, %rdx
	decl	%ebx
	jne	.LBB11_88
	jmp	.LBB11_113
.LBB11_12:                              # %for.cond.233.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
# BB#13:                                # %for.body.236.preheader
	leal	-1(%rbx), %eax
	leaq	1(%rax), %r8
	addq	$-4, %r9
	xorl	%edx, %edx
	andq	%r8, %r9
	je	.LBB11_19
# BB#14:                                # %vector.memcheck278
	leaq	(%r14,%rax,2), %rdx
	leaq	(%rsi,%rax,2), %rcx
	leaq	(%r15,%rax,2), %rdi
	cmpq	%r14, %rcx
	setae	%r10b
	cmpq	%rsi, %rdx
	setae	%r11b
	cmpq	%r14, %rdi
	setae	%cl
	cmpq	%r15, %rdx
	setae	%dil
	xorl	%edx, %edx
	testb	%r11b, %r10b
	jne	.LBB11_19
# BB#15:                                # %vector.memcheck278
	andb	%dil, %cl
	jne	.LBB11_19
# BB#16:                                # %vector.body253.preheader
	leaq	8(%rsi), %rdx
	leaq	8(%r15), %rdi
	leaq	8(%r14), %rbp
	incq	%rax
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB11_17:                              # %vector.body253
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	(%rdx), %xmm2           # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movq	-8(%rdi), %xmm3         # xmm3 = mem[0],zero
	movq	(%rdi), %xmm4           # xmm4 = mem[0],zero
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	psubd	%xmm3, %xmm1
	psubd	%xmm4, %xmm2
	movdqa	%xmm1, %xmm3
	psrad	$31, %xmm3
	paddd	%xmm3, %xmm1
	pxor	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	psrad	$31, %xmm3
	paddd	%xmm3, %xmm2
	pxor	%xmm3, %xmm2
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -8(%rbp)
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%rbp)
	addq	$16, %rdx
	addq	$16, %rdi
	addq	$16, %rbp
	addq	$-8, %rcx
	jne	.LBB11_17
# BB#18:
	movq	%r9, %rdx
.LBB11_19:                              # %middle.block254
	cmpq	%rdx, %r8
	je	.LBB11_113
# BB#20:                                # %for.body.236.preheader565
	leal	1(%rbx), %ecx
	movl	%edx, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB11_22
# BB#21:                                # %for.body.236.prol
	movzwl	(%rsi,%rdx,2), %ebp
	movzwl	(%r15,%rdx,2), %edi
	movl	%ebp, %ecx
	subl	%edi, %ecx
	negl	%ecx
	subl	%edi, %ebp
	cmovnsw	%bp, %cx
	movw	%cx, (%r14,%rdx,2)
	orq	$1, %rdx
.LBB11_22:                              # %for.body.236.preheader565.split
	cmpl	%ebx, %eax
	je	.LBB11_113
# BB#23:                                # %for.body.236.preheader565.split.split
	subl	%edx, %ebx
	leaq	2(%rsi,%rdx,2), %rax
	leaq	2(%r15,%rdx,2), %rcx
	leaq	2(%r14,%rdx,2), %rdx
.LBB11_24:                              # %for.body.236
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rax), %ebp
	movzwl	-2(%rcx), %edi
	movl	%ebp, %esi
	subl	%edi, %esi
	negl	%esi
	subl	%edi, %ebp
	cmovnsw	%bp, %si
	movw	%si, -2(%rdx)
	movzwl	(%rax), %ebp
	movzwl	(%rcx), %edi
	movl	%ebp, %esi
	subl	%edi, %esi
	negl	%esi
	subl	%edi, %ebp
	cmovnsw	%bp, %si
	movw	%si, (%rdx)
	addq	$4, %rax
	addq	$4, %rcx
	addq	$4, %rdx
	addl	$-2, %ebx
	jne	.LBB11_24
	jmp	.LBB11_113
.LBB11_38:                              # %for.cond.187.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
# BB#39:                                # %for.body.190.preheader
	leal	-1(%rbx), %eax
	leaq	1(%rax), %r8
	addq	$-12, %r9
	xorl	%edx, %edx
	andq	%r8, %r9
	je	.LBB11_45
# BB#40:                                # %vector.memcheck366
	leaq	(%r14,%rax,2), %rdx
	leaq	(%rsi,%rax,2), %rcx
	leaq	(%r15,%rax,2), %rdi
	cmpq	%r14, %rcx
	setae	%r10b
	cmpq	%rsi, %rdx
	setae	%r11b
	cmpq	%r14, %rdi
	setae	%cl
	cmpq	%r15, %rdx
	setae	%dil
	xorl	%edx, %edx
	testb	%r11b, %r10b
	jne	.LBB11_45
# BB#41:                                # %vector.memcheck366
	andb	%dil, %cl
	jne	.LBB11_45
# BB#42:                                # %vector.body341.preheader
	leaq	16(%rsi), %rdx
	leaq	16(%r15), %rdi
	leaq	16(%r14), %rbp
	incq	%rax
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	andq	%rax, %rcx
	movdqa	.LCPI11_2(%rip), %xmm0  # xmm0 = [32768,32768,32768,32768,32768,32768,32768,32768]
	.align	16, 0x90
.LBB11_43:                              # %vector.body341
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rdx), %xmm1
	movdqu	(%rdx), %xmm2
	movdqu	-16(%rdi), %xmm3
	movdqu	(%rdi), %xmm4
	movdqa	%xmm1, %xmm5
	pxor	%xmm0, %xmm5
	movdqa	%xmm3, %xmm6
	pxor	%xmm0, %xmm6
	pcmpgtw	%xmm5, %xmm6
	movdqa	%xmm2, %xmm5
	pxor	%xmm0, %xmm5
	movdqa	%xmm4, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtw	%xmm5, %xmm7
	pand	%xmm6, %xmm1
	pandn	%xmm3, %xmm6
	por	%xmm1, %xmm6
	pand	%xmm7, %xmm2
	pandn	%xmm4, %xmm7
	por	%xmm2, %xmm7
	movdqu	%xmm6, -16(%rbp)
	movdqu	%xmm7, (%rbp)
	addq	$32, %rdx
	addq	$32, %rdi
	addq	$32, %rbp
	addq	$-16, %rcx
	jne	.LBB11_43
# BB#44:
	movq	%r9, %rdx
.LBB11_45:                              # %middle.block342
	cmpq	%rdx, %r8
	je	.LBB11_113
# BB#46:                                # %for.body.190.preheader561
	leal	1(%rbx), %ecx
	movl	%edx, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB11_48
# BB#47:                                # %for.body.190.prol
	movzwl	(%rsi,%rdx,2), %ecx
	movzwl	(%r15,%rdx,2), %edi
	cmpl	%edi, %ecx
	cmovbw	%cx, %di
	movw	%di, (%r14,%rdx,2)
	orq	$1, %rdx
.LBB11_48:                              # %for.body.190.preheader561.split
	cmpl	%ebx, %eax
	je	.LBB11_113
# BB#49:                                # %for.body.190.preheader561.split.split
	subl	%edx, %ebx
	leaq	2(%rsi,%rdx,2), %rax
	leaq	2(%r15,%rdx,2), %rcx
	leaq	2(%r14,%rdx,2), %rdx
.LBB11_50:                              # %for.body.190
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rax), %esi
	movzwl	-2(%rcx), %edi
	cmpl	%edi, %esi
	cmovbw	%si, %di
	movw	%di, -2(%rdx)
	movzwl	(%rax), %esi
	movzwl	(%rcx), %edi
	cmpl	%edi, %esi
	cmovbw	%si, %di
	movw	%di, (%rdx)
	addq	$4, %rax
	addq	$4, %rcx
	addq	$4, %rdx
	addl	$-2, %ebx
	jne	.LBB11_50
	jmp	.LBB11_113
.LBB11_25:                              # %for.cond.208.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
# BB#26:                                # %for.body.211.preheader
	leal	-1(%rbx), %eax
	leaq	1(%rax), %r8
	addq	$-12, %r9
	xorl	%edx, %edx
	andq	%r8, %r9
	je	.LBB11_32
# BB#27:                                # %vector.memcheck322
	leaq	(%r14,%rax,2), %rdx
	leaq	(%rsi,%rax,2), %rcx
	leaq	(%r15,%rax,2), %rdi
	cmpq	%r14, %rcx
	setae	%r10b
	cmpq	%rsi, %rdx
	setae	%r11b
	cmpq	%r14, %rdi
	setae	%cl
	cmpq	%r15, %rdx
	setae	%dil
	xorl	%edx, %edx
	testb	%r11b, %r10b
	jne	.LBB11_32
# BB#28:                                # %vector.memcheck322
	andb	%dil, %cl
	jne	.LBB11_32
# BB#29:                                # %vector.body297.preheader
	leaq	16(%rsi), %rdx
	leaq	16(%r15), %rdi
	leaq	16(%r14), %rbp
	incq	%rax
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	andq	%rax, %rcx
	movdqa	.LCPI11_2(%rip), %xmm0  # xmm0 = [32768,32768,32768,32768,32768,32768,32768,32768]
	.align	16, 0x90
.LBB11_30:                              # %vector.body297
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rdx), %xmm1
	movdqu	(%rdx), %xmm2
	movdqu	-16(%rdi), %xmm3
	movdqu	(%rdi), %xmm4
	movdqa	%xmm3, %xmm5
	pxor	%xmm0, %xmm5
	movdqa	%xmm1, %xmm6
	pxor	%xmm0, %xmm6
	pcmpgtw	%xmm5, %xmm6
	movdqa	%xmm4, %xmm5
	pxor	%xmm0, %xmm5
	movdqa	%xmm2, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtw	%xmm5, %xmm7
	pand	%xmm6, %xmm1
	pandn	%xmm3, %xmm6
	por	%xmm1, %xmm6
	pand	%xmm7, %xmm2
	pandn	%xmm4, %xmm7
	por	%xmm2, %xmm7
	movdqu	%xmm6, -16(%rbp)
	movdqu	%xmm7, (%rbp)
	addq	$32, %rdx
	addq	$32, %rdi
	addq	$32, %rbp
	addq	$-16, %rcx
	jne	.LBB11_30
# BB#31:
	movq	%r9, %rdx
.LBB11_32:                              # %middle.block298
	cmpq	%rdx, %r8
	je	.LBB11_113
# BB#33:                                # %for.body.211.preheader563
	leal	1(%rbx), %ecx
	movl	%edx, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB11_35
# BB#34:                                # %for.body.211.prol
	movzwl	(%rsi,%rdx,2), %ecx
	movzwl	(%r15,%rdx,2), %edi
	cmpl	%edi, %ecx
	cmovaw	%cx, %di
	movw	%di, (%r14,%rdx,2)
	orq	$1, %rdx
.LBB11_35:                              # %for.body.211.preheader563.split
	cmpl	%ebx, %eax
	je	.LBB11_113
# BB#36:                                # %for.body.211.preheader563.split.split
	subl	%edx, %ebx
	leaq	2(%rsi,%rdx,2), %rax
	leaq	2(%r15,%rdx,2), %rcx
	leaq	2(%r14,%rdx,2), %rdx
.LBB11_37:                              # %for.body.211
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rax), %esi
	movzwl	-2(%rcx), %edi
	cmpl	%edi, %esi
	cmovaw	%si, %di
	movw	%di, -2(%rdx)
	movzwl	(%rax), %esi
	movzwl	(%rcx), %edi
	cmpl	%edi, %esi
	cmovaw	%si, %di
	movw	%di, (%rdx)
	addq	$4, %rax
	addq	$4, %rcx
	addq	$4, %rdx
	addl	$-2, %ebx
	jne	.LBB11_37
	jmp	.LBB11_113
.LBB11_54:                              # %for.cond.107.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
	.align	16, 0x90
.LBB11_55:                              # %for.body.110
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ecx
	testl	%ecx, %ecx
	je	.LBB11_56
# BB#105:                               # %if.else.121
                                        #   in Loop: Header=BB11_55 Depth=1
	movzwl	(%r15), %eax
	cmpl	%ecx, %eax
	jae	.LBB11_106
# BB#107:                               # %if.else.129
                                        #   in Loop: Header=BB11_55 Depth=1
	imull	$131070, %eax, %eax     # imm = 0x1FFFE
	addl	%ecx, %eax
	addl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movw	%ax, (%r14)
	jmp	.LBB11_108
	.align	16, 0x90
.LBB11_56:                              # %if.then.118
                                        #   in Loop: Header=BB11_55 Depth=1
	movw	$0, (%r14)
	jmp	.LBB11_108
	.align	16, 0x90
.LBB11_106:                             # %if.then.126
                                        #   in Loop: Header=BB11_55 Depth=1
	movw	$-1, (%r14)
.LBB11_108:                             # %for.inc.140
                                        #   in Loop: Header=BB11_55 Depth=1
	addq	$2, %rsi
	addq	$2, %r15
	addq	$2, %r14
	decl	%ebx
	jne	.LBB11_55
	jmp	.LBB11_113
.LBB11_51:                              # %for.cond.144.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
	.align	16, 0x90
.LBB11_52:                              # %for.body.147
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB11_53
# BB#109:                               # %if.else.161
                                        #   in Loop: Header=BB11_52 Depth=1
	xorl	$65535, %eax            # imm = 0xFFFF
	movzwl	(%r15), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB11_110
# BB#111:                               # %if.else.169
                                        #   in Loop: Header=BB11_52 Depth=1
	imull	$131070, %eax, %eax     # imm = 0x1FFFE
	leal	(%rax,%rcx), %eax
	addl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	$65535, %ecx            # imm = 0xFFFF
	subl	%eax, %ecx
	movw	%cx, (%r14)
	jmp	.LBB11_112
	.align	16, 0x90
.LBB11_53:                              # %if.then.158
                                        #   in Loop: Header=BB11_52 Depth=1
	movw	$-1, (%r14)
	jmp	.LBB11_112
	.align	16, 0x90
.LBB11_110:                             # %if.then.166
                                        #   in Loop: Header=BB11_52 Depth=1
	movw	$0, (%r14)
.LBB11_112:                             # %for.inc.183
                                        #   in Loop: Header=BB11_52 Depth=1
	addq	$2, %rsi
	addq	$2, %r15
	addq	$2, %r14
	decl	%ebx
	jne	.LBB11_52
	jmp	.LBB11_113
.LBB11_2:                               # %for.cond.258.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
# BB#3:                                 # %for.body.261.preheader
	leal	-1(%rbx), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %r10
	andq	%r9, %r10
	je	.LBB11_9
# BB#4:                                 # %vector.memcheck
	leaq	(%r14,%rdx,2), %rcx
	leaq	(%rsi,%rdx,2), %rax
	leaq	(%r15,%rdx,2), %rdi
	cmpq	%r14, %rax
	setae	%r11b
	cmpq	%rsi, %rcx
	setae	%bpl
	cmpq	%r14, %rdi
	setae	%al
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edi, %edi
	testb	%bpl, %r11b
	jne	.LBB11_9
# BB#5:                                 # %vector.memcheck
	andb	%cl, %al
	jne	.LBB11_9
# BB#6:                                 # %vector.body.preheader
	incq	%rdx
	andq	%r9, %rdx
	pxor	%xmm0, %xmm0
	movdqa	.LCPI11_0(%rip), %xmm1  # xmm1 = [65535,65535,65535,65535]
	movdqa	.LCPI11_1(%rip), %xmm2  # xmm2 = [32768,32768,32768,32768]
	movq	%r14, %rax
	movq	%r15, %rbp
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB11_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %xmm3           # xmm3 = mem[0],zero
	movq	(%rbp), %xmm4           # xmm4 = mem[0],zero
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movdqa	%xmm3, %xmm5
	pxor	%xmm1, %xmm5
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	pshufd	$245, %xmm5, %xmm6      # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm7      # xmm7 = xmm4[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm6      # xmm6 = xmm7[0,2,2,3]
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	pxor	%xmm1, %xmm4
	pshufd	$245, %xmm4, %xmm6      # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm6, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	paddd	%xmm5, %xmm4
	paddd	%xmm2, %xmm4
	movdqa	%xmm4, %xmm3
	psrld	$16, %xmm3
	paddd	%xmm4, %xmm3
	psrld	$16, %xmm3
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rax)
	addq	$8, %rcx
	addq	$8, %rbp
	addq	$8, %rax
	addq	$-4, %rdx
	jne	.LBB11_7
# BB#8:
	movq	%r10, %rdi
.LBB11_9:                               # %middle.block
	cmpq	%rdi, %r8
	je	.LBB11_113
# BB#10:                                # %for.body.261.preheader567
	leaq	(%rsi,%rdi,2), %rax
	leaq	(%r15,%rdi,2), %rcx
	leaq	(%r14,%rdi,2), %rdx
	subl	%edi, %ebx
	.align	16, 0x90
.LBB11_11:                              # %for.body.261
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	movl	%esi, %edi
	xorl	$65535, %edi            # imm = 0xFFFF
	movzwl	(%rcx), %ebp
	imull	%ebp, %edi
	xorl	$65535, %ebp            # imm = 0xFFFF
	imull	%esi, %ebp
	leal	(%rdi,%rbp), %esi
	leal	32768(%rdi,%rbp), %edi
	shrl	$16, %edi
	leal	32768(%rdi,%rsi), %esi
	shrl	$16, %esi
	movw	%si, (%rdx)
	addq	$2, %rax
	addq	$2, %rcx
	addq	$2, %rdx
	decl	%ebx
	jne	.LBB11_11
	jmp	.LBB11_113
.LBB11_57:                              # %for.cond.71.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
# BB#58:                                # %for.body.74.preheader
	leal	-1(%rbx), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %r10
	andq	%r9, %r10
	je	.LBB11_64
# BB#59:                                # %vector.memcheck410
	leaq	(%r14,%rdx,2), %rcx
	leaq	(%rsi,%rdx,2), %rax
	leaq	(%r15,%rdx,2), %rdi
	cmpq	%r14, %rax
	setae	%r11b
	cmpq	%rsi, %rcx
	setae	%bpl
	cmpq	%r14, %rdi
	setae	%al
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edi, %edi
	testb	%bpl, %r11b
	jne	.LBB11_64
# BB#60:                                # %vector.memcheck410
	andb	%cl, %al
	jne	.LBB11_64
# BB#61:                                # %vector.body385.preheader
	incq	%rdx
	andq	%r9, %rdx
	movdqa	.LCPI11_0(%rip), %xmm12 # xmm12 = [65535,65535,65535,65535]
	pxor	%xmm8, %xmm8
	movdqa	.LCPI11_3(%rip), %xmm9  # xmm9 = [131070,131070,131070,131070]
	movdqa	.LCPI11_4(%rip), %xmm10 # xmm10 = [4294836225,4294836225,4294836225,4294836225]
	pcmpeqd	%xmm4, %xmm4
	movdqa	.LCPI11_1(%rip), %xmm11 # xmm11 = [32768,32768,32768,32768]
	movq	%r14, %rax
	movq	%r15, %rbp
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB11_62:                              # %vector.body385
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %xmm7           # xmm7 = mem[0],zero
	movq	(%rbp), %xmm6           # xmm6 = mem[0],zero
	punpcklwd	%xmm6, %xmm6    # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm6
	movdqa	%xmm6, %xmm1
	pand	%xmm12, %xmm1
	punpcklwd	%xmm8, %xmm7    # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	paddd	%xmm7, %xmm7
	movdqa	%xmm7, %xmm2
	pxor	%xmm9, %xmm2
	pshufd	$245, %xmm7, %xmm3      # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm1, %xmm7
	pshufd	$245, %xmm1, %xmm5      # xmm5 = xmm1[1,1,3,3]
	pxor	%xmm12, %xmm1
	pshufd	$245, %xmm2, %xmm0      # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm1, %xmm2
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm2, %xmm0      # xmm0 = xmm2[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	%xmm10, %xmm1
	psubd	%xmm0, %xmm1
	pshufd	$232, %xmm7, %xmm0      # xmm0 = xmm7[0,2,2,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm2      # xmm2 = xmm5[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pcmpgtd	%xmm4, %xmm6
	movdqa	%xmm6, %xmm2
	pxor	%xmm4, %xmm2
	pandn	%xmm0, %xmm2
	pandn	%xmm1, %xmm6
	por	%xmm2, %xmm6
	paddd	%xmm11, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$16, %xmm0
	paddd	%xmm6, %xmm0
	psrld	$16, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rax)
	addq	$8, %rcx
	addq	$8, %rbp
	addq	$8, %rax
	addq	$-4, %rdx
	jne	.LBB11_62
# BB#63:
	movq	%r10, %rdi
.LBB11_64:                              # %middle.block386
	cmpq	%rdi, %r8
	je	.LBB11_113
# BB#65:                                # %for.body.74.preheader557
	leaq	(%rsi,%rdi,2), %rax
	leaq	(%r15,%rdi,2), %rcx
	leaq	(%r14,%rdi,2), %rdx
	subl	%edi, %ebx
	.align	16, 0x90
.LBB11_66:                              # %for.body.74
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edi
	movzwl	(%rax), %esi
	addl	%esi, %esi
	testw	%di, %di
	js	.LBB11_103
# BB#67:                                # %if.then.82
                                        #   in Loop: Header=BB11_66 Depth=1
	imull	%edi, %esi
	jmp	.LBB11_104
.LBB11_103:                             # %if.else.87
                                        #   in Loop: Header=BB11_66 Depth=1
	xorl	$131070, %esi           # imm = 0x1FFFE
	xorl	$65535, %edi            # imm = 0xFFFF
	imull	%esi, %edi
	movl	$-131071, %esi          # imm = 0xFFFFFFFFFFFE0001
	subl	%edi, %esi
.LBB11_104:                             # %if.end.95
                                        #   in Loop: Header=BB11_66 Depth=1
	leal	32768(%rsi), %edi
	shrl	$16, %edi
	leal	32768(%rdi,%rsi), %esi
	shrl	$16, %esi
	movw	%si, (%rdx)
	addq	$2, %rax
	addq	$2, %rcx
	addq	$2, %rdx
	decl	%ebx
	jne	.LBB11_66
	jmp	.LBB11_113
.LBB11_68:                              # %for.cond.38.preheader
	testl	%ebx, %ebx
	jle	.LBB11_113
# BB#69:                                # %for.body.41.preheader
	leal	-1(%rbx), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %r10
	andq	%r9, %r10
	je	.LBB11_75
# BB#70:                                # %vector.memcheck451
	leaq	(%r14,%rdx,2), %rcx
	leaq	(%rsi,%rdx,2), %rax
	leaq	(%r15,%rdx,2), %rdi
	cmpq	%r14, %rax
	setae	%r11b
	cmpq	%rsi, %rcx
	setae	%bpl
	cmpq	%r14, %rdi
	setae	%al
	cmpq	%r15, %rcx
	setae	%cl
	xorl	%edi, %edi
	testb	%bpl, %r11b
	jne	.LBB11_75
# BB#71:                                # %vector.memcheck451
	andb	%cl, %al
	jne	.LBB11_75
# BB#72:                                # %vector.body426.preheader
	incq	%rdx
	andq	%r9, %rdx
	movdqa	.LCPI11_0(%rip), %xmm12 # xmm12 = [65535,65535,65535,65535]
	movdqa	.LCPI11_3(%rip), %xmm8  # xmm8 = [131070,131070,131070,131070]
	pxor	%xmm9, %xmm9
	movdqa	.LCPI11_4(%rip), %xmm10 # xmm10 = [4294836225,4294836225,4294836225,4294836225]
	pcmpeqd	%xmm4, %xmm4
	movdqa	.LCPI11_1(%rip), %xmm11 # xmm11 = [32768,32768,32768,32768]
	movq	%r14, %rax
	movq	%r15, %rbp
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB11_73:                              # %vector.body426
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %xmm6           # xmm6 = mem[0],zero
	punpcklwd	%xmm6, %xmm6    # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm6
	movq	(%rbp), %xmm7           # xmm7 = mem[0],zero
	movdqa	%xmm6, %xmm1
	pand	%xmm12, %xmm1
	paddd	%xmm1, %xmm1
	movdqa	%xmm1, %xmm2
	pxor	%xmm8, %xmm2
	punpcklwd	%xmm9, %xmm7    # xmm7 = xmm7[0],xmm9[0],xmm7[1],xmm9[1],xmm7[2],xmm9[2],xmm7[3],xmm9[3]
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$245, %xmm7, %xmm5      # xmm5 = xmm7[1,1,3,3]
	pxor	%xmm12, %xmm7
	pshufd	$245, %xmm2, %xmm0      # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$245, %xmm7, %xmm7      # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm2, %xmm0      # xmm0 = xmm2[0,2,2,3]
	pshufd	$232, %xmm7, %xmm2      # xmm2 = xmm7[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movdqa	%xmm10, %xmm2
	psubd	%xmm0, %xmm2
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm1      # xmm1 = xmm5[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pcmpgtd	%xmm4, %xmm6
	movdqa	%xmm6, %xmm1
	pxor	%xmm4, %xmm1
	pandn	%xmm0, %xmm1
	pandn	%xmm2, %xmm6
	por	%xmm1, %xmm6
	paddd	%xmm11, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$16, %xmm0
	paddd	%xmm6, %xmm0
	psrld	$16, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rax)
	addq	$8, %rcx
	addq	$8, %rbp
	addq	$8, %rax
	addq	$-4, %rdx
	jne	.LBB11_73
# BB#74:
	movq	%r10, %rdi
.LBB11_75:                              # %middle.block427
	cmpq	%rdi, %r8
	je	.LBB11_113
# BB#76:                                # %for.body.41.preheader555
	leaq	(%rsi,%rdi,2), %rax
	leaq	(%r15,%rdi,2), %rcx
	leaq	(%r14,%rdi,2), %rdx
	subl	%edi, %ebx
	.align	16, 0x90
.LBB11_77:                              # %for.body.41
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %ebp
	movzwl	(%rcx), %edi
	movl	%ebp, %esi
	addl	%esi, %esi
	testw	%bp, %bp
	js	.LBB11_101
# BB#78:                                # %if.then
                                        #   in Loop: Header=BB11_77 Depth=1
	imull	%edi, %esi
	jmp	.LBB11_102
.LBB11_101:                             # %if.else
                                        #   in Loop: Header=BB11_77 Depth=1
	xorl	$131070, %esi           # imm = 0x1FFFE
	xorl	$65535, %edi            # imm = 0xFFFF
	imull	%esi, %edi
	movl	$-131071, %esi          # imm = 0xFFFFFFFFFFFE0001
	subl	%edi, %esi
.LBB11_102:                             # %if.end
                                        #   in Loop: Header=BB11_77 Depth=1
	leal	32768(%rsi), %edi
	shrl	$16, %edi
	leal	32768(%rdi,%rsi), %esi
	shrl	$16, %esi
	movw	%si, (%rdx)
	addq	$2, %rax
	addq	$2, %rcx
	addq	$2, %rdx
	decl	%ebx
	jne	.LBB11_77
.LBB11_113:                             # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	art_blend_pixel, .Lfunc_end11-art_blend_pixel
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_99
	.quad	.LBB11_89
	.quad	.LBB11_79
	.quad	.LBB11_12
	.quad	.LBB11_38
	.quad	.LBB11_25
	.quad	.LBB11_54
	.quad	.LBB11_51
	.quad	.LBB11_2
	.quad	.LBB11_57
	.quad	.LBB11_68
	.quad	.LBB11_114
	.quad	.LBB11_114
	.quad	.LBB11_114
	.quad	.LBB11_114
	.quad	.LBB11_114
	.quad	.LBB11_99

	.text
	.globl	art_pdf_union_8
	.align	16, 0x90
	.type	art_pdf_union_8,@function
art_pdf_union_8:                        # @art_pdf_union_8
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	$255, %edi
	xorl	$255, %esi
	imull	%edi, %esi
	movl	%esi, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rsi), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movzbl	%cl, %eax
	retq
.Lfunc_end12:
	.size	art_pdf_union_8, .Lfunc_end12-art_pdf_union_8
	.cfi_endproc

	.globl	art_pdf_union_mul_8
	.align	16, 0x90
	.type	art_pdf_union_mul_8,@function
art_pdf_union_mul_8:                    # @art_pdf_union_mul_8
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$255, %edx
	je	.LBB13_1
# BB#2:                                 # %if.else
	movzbl	%dl, %eax
	movzbl	%sil, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %eax
	shrl	$8, %eax
	movzbl	%dil, %ecx
	xorl	$255, %ecx
	movl	$255, %edx
	subl	%eax, %edx
	imull	%ecx, %edx
	movl	%edx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rdx), %eax
	jmp	.LBB13_3
.LBB13_1:                               # %if.then
	movzbl	%dil, %eax
	xorl	$255, %eax
	movzbl	%sil, %ecx
	xorl	$255, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %eax
.LBB13_3:                               # %cleanup
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movzbl	%cl, %eax
	retq
.Lfunc_end13:
	.size	art_pdf_union_mul_8, .Lfunc_end13-art_pdf_union_mul_8
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI14_0:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI14_1:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
.LCPI14_2:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	art_pdf_composite_pixel_alpha_8
	.align	16, 0x90
	.type	art_pdf_composite_pixel_alpha_8,@function
art_pdf_composite_pixel_alpha_8:        # @art_pdf_composite_pixel_alpha_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp111:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp114:
	.cfi_def_cfa_offset 160
.Ltmp115:
	.cfi_offset %rbx, -56
.Ltmp116:
	.cfi_offset %r12, -48
.Ltmp117:
	.cfi_offset %r13, -40
.Ltmp118:
	.cfi_offset %r14, -32
.Ltmp119:
	.cfi_offset %r15, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%r8, %r9
	movl	%ecx, %r8d
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r10
	movslq	%r15d, %rbp
	movzbl	(%rbx,%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB14_25
# BB#1:                                 # %if.end
	movzbl	(%r10,%rbp), %r14d
	testl	%r14d, %r14d
	je	.LBB14_26
# BB#2:                                 # %if.end.13
	movabsq	$8589934584, %r13       # imm = 0x1FFFFFFF8
	movl	%r14d, %eax
	xorl	$255, %eax
	movl	%ecx, %edx
	xorl	$255, %edx
	imull	%eax, %edx
	movl	%edx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rdx), %eax
	shrl	$8, %eax
	movl	$255, %r11d
	subl	%eax, %r11d
	shll	$16, %ecx
	movl	%r11d, %eax
	shrl	%eax
	addl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r11d
	movl	%eax, %r12d
	testl	%r8d, %r8d
	je	.LBB14_3
# BB#13:                                # %if.else
	movl	%r11d, 12(%rsp)         # 4-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	32(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r10, %rsi
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	art_blend_pixel_8
	testl	%r15d, %r15d
	jle	.LBB14_23
# BB#14:                                # %for.body.48.preheader
	leal	-1(%r15), %edx
	leaq	1(%rdx), %rax
	addq	$4, %r13
	xorl	%esi, %esi
	andq	%rax, %r13
	movq	24(%rsp), %rdi          # 8-byte Reload
	je	.LBB14_20
# BB#15:                                # %vector.memcheck
	leaq	(%rbx,%rdx), %rcx
	xorl	%esi, %esi
	cmpq	%rdi, %rcx
	jb	.LBB14_17
# BB#16:                                # %vector.memcheck
	leaq	(%rdi,%rdx), %rcx
	cmpq	%rbx, %rcx
	jae	.LBB14_20
.LBB14_17:                              # %vector.ph
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm11       # xmm11 = xmm0[0,0,0,0]
	movd	%r12d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	incq	%rdx
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rdx, %rcx
	pxor	%xmm2, %xmm2
	pshufd	$245, %xmm11, %xmm3     # xmm3 = xmm11[1,1,3,3]
	movdqa	.LCPI14_0(%rip), %xmm8  # xmm8 = [128,128,128,128]
	pshufd	$245, %xmm1, %xmm5      # xmm5 = xmm1[1,1,3,3]
	movdqa	.LCPI14_1(%rip), %xmm9  # xmm9 = [32768,32768,32768,32768]
	movdqa	.LCPI14_2(%rip), %xmm10 # xmm10 = [255,255,255,255]
	movq	%rdi, %rdx
	movq	%rbx, %rsi
	.align	16, 0x90
.LBB14_18:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rsi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3],xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	punpcklwd	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	movd	(%rdx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	movd	(%rbp), %xmm7           # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3],xmm7[4],xmm2[4],xmm7[5],xmm2[5],xmm7[6],xmm2[6],xmm7[7],xmm2[7]
	punpcklwd	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	psubd	%xmm6, %xmm7
	pshufd	$245, %xmm7, %xmm0      # xmm0 = xmm7[1,1,3,3]
	pmuludq	%xmm11, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1]
	paddd	%xmm8, %xmm7
	movdqa	%xmm7, %xmm0
	psrad	$8, %xmm0
	paddd	%xmm7, %xmm0
	psrad	$8, %xmm0
	psubd	%xmm4, %xmm6
	pslld	$16, %xmm4
	paddd	%xmm0, %xmm6
	pshufd	$245, %xmm6, %xmm0      # xmm0 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1]
	por	%xmm9, %xmm4
	paddd	%xmm6, %xmm4
	psrld	$16, %xmm4
	pand	%xmm10, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%rdx)
	addq	$4, %rsi
	addq	$4, %rdx
	addq	$4, %rbp
	addq	$-4, %rcx
	jne	.LBB14_18
# BB#19:
	movq	%r13, %rsi
.LBB14_20:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB14_23
# BB#21:                                # %for.body.48.preheader116
	addq	%rsi, %rbx
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rsi), %rax
	leaq	32(%rsp,%rsi), %rcx
	subl	%esi, %r15d
	.align	16, 0x90
.LBB14_22:                              # %for.body.48
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movzbl	(%rax), %esi
	movzbl	(%rcx), %ebp
	subl	%edx, %ebp
	imull	%r14d, %ebp
	movl	%ebp, %edi
	subl	$-128, %edi
	sarl	$8, %edi
	leal	128(%rdi,%rbp), %edi
	shrl	$8, %edi
	subl	%esi, %edx
	shll	$16, %esi
	addl	%edi, %edx
	imull	%r12d, %edx
	leal	32768(%rsi,%rdx), %edx
	shrl	$16, %edx
	movb	%dl, (%rax)
	incq	%rbx
	incq	%rax
	incq	%rcx
	decl	%r15d
	jne	.LBB14_22
.LBB14_23:                              # %for.end.79
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	movl	12(%rsp), %r11d         # 4-byte Reload
	jmp	.LBB14_24
.LBB14_26:                              # %if.then.11
	incl	%r15d
	movslq	%r15d, %rdx
	movq	%r10, %rdi
	movq	%rbx, %rsi
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB14_3:                               # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB14_24
# BB#4:                                 # %for.body.preheader
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r13, %rdx
	je	.LBB14_10
# BB#5:                                 # %vector.memcheck95
	leaq	(%rbx,%rcx), %rdi
	xorl	%esi, %esi
	cmpq	%r10, %rdi
	jb	.LBB14_7
# BB#6:                                 # %vector.memcheck95
	leaq	(%r10,%rcx), %rdi
	cmpq	%rbx, %rdi
	jae	.LBB14_10
.LBB14_7:                               # %vector.ph96
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	4(%rbx), %rsi
	leaq	4(%r10), %rdi
	incq	%rcx
	andq	%r13, %rcx
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI14_1(%rip), %xmm8  # xmm8 = [32768,32768,32768,32768]
	movdqa	.LCPI14_2(%rip), %xmm9  # xmm9 = [255,255,255,255]
	.align	16, 0x90
.LBB14_8:                               # %vector.body78
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm7           # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklwd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpcklbw	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	-4(%rdi), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	punpcklbw	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3],xmm5[4],xmm1[4],xmm5[5],xmm1[5],xmm5[6],xmm1[6],xmm5[7],xmm1[7]
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	psubd	%xmm6, %xmm3
	pslld	$16, %xmm6
	psubd	%xmm5, %xmm7
	pslld	$16, %xmm5
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm7, %xmm4      # xmm4 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	por	%xmm8, %xmm6
	por	%xmm8, %xmm5
	paddd	%xmm3, %xmm6
	paddd	%xmm7, %xmm5
	psrld	$16, %xmm6
	psrld	$16, %xmm5
	pand	%xmm9, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, -4(%rdi)
	pand	%xmm9, %xmm5
	packuswb	%xmm5, %xmm5
	packuswb	%xmm5, %xmm5
	movd	%xmm5, (%rdi)
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$-8, %rcx
	jne	.LBB14_8
# BB#9:
	movq	%rdx, %rsi
.LBB14_10:                              # %middle.block79
	cmpq	%rsi, %rax
	je	.LBB14_24
# BB#11:                                # %for.body.preheader115
	addq	%rsi, %rbx
	leaq	(%r10,%rsi), %rax
	subl	%esi, %r15d
	.align	16, 0x90
.LBB14_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %ecx
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	shll	$16, %edx
	imull	%r12d, %ecx
	leal	32768(%rdx,%rcx), %ecx
	shrl	$16, %ecx
	movb	%cl, (%rax)
	incq	%rbx
	incq	%rax
	decl	%r15d
	jne	.LBB14_12
.LBB14_24:                              # %if.end.80
	movb	%r11b, (%r10,%rbp)
.LBB14_25:                              # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	art_pdf_composite_pixel_alpha_8, .Lfunc_end14-art_pdf_composite_pixel_alpha_8
	.cfi_endproc

	.globl	art_pdf_composite_pixel_alpha_8_fast
	.align	16, 0x90
	.type	art_pdf_composite_pixel_alpha_8_fast,@function
art_pdf_composite_pixel_alpha_8_fast:   # @art_pdf_composite_pixel_alpha_8_fast
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp123:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp124:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp125:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp127:
	.cfi_def_cfa_offset 240
.Ltmp128:
	.cfi_offset %rbx, -56
.Ltmp129:
	.cfi_offset %r12, -48
.Ltmp130:
	.cfi_offset %r13, -40
.Ltmp131:
	.cfi_offset %r14, -32
.Ltmp132:
	.cfi_offset %r15, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movl	%ecx, %r8d
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r10
	movslq	%r15d, %rax
	movl	%r9d, %ecx
	imull	%r15d, %ecx
	movslq	%ecx, %r11
	movzbl	(%r10,%r11), %r12d
	movl	%r12d, %ecx
	xorl	$255, %ecx
	movzbl	(%rbx,%rax), %edx
	movl	%edx, %eax
	xorl	$255, %eax
	imull	%ecx, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	shrl	$8, %eax
	movl	$255, %edi
	subl	%eax, %edi
	shll	$16, %edx
	movl	%edi, %eax
	shrl	%eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %r13d
	testl	%r8d, %r8d
	je	.LBB15_1
# BB#4:                                 # %if.else
	testl	%r15d, %r15d
	jle	.LBB15_5
# BB#6:                                 # %for.body.41.lr.ph
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	%edi, 44(%rsp)          # 4-byte Spill
	leal	-1(%r15), %ebp
	xorl	%eax, %eax
	testb	$3, %r15b
	je	.LBB15_9
# BB#7:                                 # %for.body.41.prol.preheader
	movslq	%r9d, %rdx
	movl	%r15d, %esi
	andl	$3, %esi
	xorl	%eax, %eax
	movq	%r10, %rdi
	.align	16, 0x90
.LBB15_8:                               # %for.body.41.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rdi), %cl
	movb	%cl, 48(%rsp,%rax)
	incq	%rax
	addq	%rdx, %rdi
	cmpl	%eax, %esi
	jne	.LBB15_8
.LBB15_9:                               # %for.body.41.lr.ph.split
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	movq	%r11, 16(%rsp)          # 8-byte Spill
	movq	%r10, 32(%rsp)          # 8-byte Spill
	cmpl	$3, %ebp
	jb	.LBB15_12
# BB#10:                                # %for.body.41.lr.ph.split.split
	movl	%r15d, %ecx
	subl	%eax, %ecx
	leaq	3(%rax), %r10
	leaq	51(%rsp,%rax), %rsi
	movslq	28(%rsp), %rdx          # 4-byte Folded Reload
	imulq	%rdx, %r10
	leaq	2(%rax), %r11
	imulq	%rdx, %r11
	movq	%rax, %r14
	imulq	%rdx, %r14
	incq	%rax
	imulq	%rdx, %rax
	leaq	(,%rdx,4), %rbp
	movq	32(%rsp), %rdi          # 8-byte Reload
	.align	16, 0x90
.LBB15_11:                              # %for.body.41
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r14,%rdi), %dl
	movb	%dl, -3(%rsi)
	movb	(%rax,%rdi), %dl
	movb	%dl, -2(%rsi)
	movb	(%r11,%rdi), %dl
	movb	%dl, -1(%rsi)
	movb	(%r10,%rdi), %dl
	movb	%dl, (%rsi)
	addq	$4, %rsi
	addq	%rbp, %rdi
	addl	$-4, %ecx
	jne	.LBB15_11
.LBB15_12:                              # %for.end.49
	leaq	112(%rsp), %rbp
	leaq	48(%rsp), %r14
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	art_blend_pixel_8
	testl	%r15d, %r15d
	movq	32(%rsp), %r10          # 8-byte Reload
	movq	16(%rsp), %r11          # 8-byte Reload
	jle	.LBB15_15
# BB#13:                                # %for.body.54.lr.ph
	movslq	28(%rsp), %r8           # 4-byte Folded Reload
	movq	%r10, %rcx
	.align	16, 0x90
.LBB15_14:                              # %for.body.54
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movzbl	(%r14), %esi
	movzbl	(%rbp), %eax
	subl	%edx, %eax
	imull	%r12d, %eax
	movl	%eax, %edi
	subl	$-128, %edi
	sarl	$8, %edi
	leal	128(%rdi,%rax), %eax
	shrl	$8, %eax
	subl	%esi, %edx
	shll	$16, %esi
	addl	%eax, %edx
	imull	%r13d, %edx
	leal	32768(%rsi,%rdx), %eax
	shrl	$16, %eax
	movb	%al, (%rcx)
	incq	%rbx
	incq	%r14
	incq	%rbp
	addq	%r8, %rcx
	decl	%r15d
	jne	.LBB15_14
	jmp	.LBB15_15
.LBB15_1:                               # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB15_16
# BB#2:                                 # %for.body.lr.ph
	movslq	%r9d, %rax
	movq	%r10, %rcx
	.align	16, 0x90
.LBB15_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movzbl	(%rcx), %esi
	subl	%esi, %edx
	shll	$16, %esi
	imull	%r13d, %edx
	leal	32768(%rsi,%rdx), %edx
	shrl	$16, %edx
	movb	%dl, (%rcx)
	incq	%rbx
	addq	%rax, %rcx
	decl	%r15d
	jne	.LBB15_3
	jmp	.LBB15_16
.LBB15_5:                               # %for.end.49.thread
	movl	%edi, 44(%rsp)          # 4-byte Spill
	leaq	112(%rsp), %rdi
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	movq	%rbp, %r9
	movq	%r10, %rbx
	movq	%r11, %rbp
	callq	art_blend_pixel_8
	movq	%rbp, %r11
	movq	%rbx, %r10
.LBB15_15:                              # %for.end.86
	movl	44(%rsp), %edi          # 4-byte Reload
.LBB15_16:                              # %if.end
	movb	%dil, (%r10,%r11)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	art_pdf_composite_pixel_alpha_8_fast, .Lfunc_end15-art_pdf_composite_pixel_alpha_8_fast
	.cfi_endproc

	.globl	art_pdf_composite_pixel_alpha_8_fast_mono
	.align	16, 0x90
	.type	art_pdf_composite_pixel_alpha_8_fast_mono,@function
art_pdf_composite_pixel_alpha_8_fast_mono: # @art_pdf_composite_pixel_alpha_8_fast_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp137:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp138:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp140:
	.cfi_def_cfa_offset 128
.Ltmp141:
	.cfi_offset %rbx, -56
.Ltmp142:
	.cfi_offset %r12, -48
.Ltmp143:
	.cfi_offset %r13, -40
.Ltmp144:
	.cfi_offset %r14, -32
.Ltmp145:
	.cfi_offset %r15, -24
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rcx, %r9
	movl	%edx, %r10d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movslq	%r8d, %r12
	movzbl	(%r14,%r12), %r13d
	movl	%r13d, %eax
	xorl	$255, %eax
	movzbl	1(%rbx), %ecx
	movl	%ecx, %edx
	xorl	$255, %edx
	imull	%eax, %edx
	movl	%edx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rdx), %eax
	shrl	$8, %eax
	movl	$255, %ebp
	subl	%eax, %ebp
	shll	$16, %ecx
	movl	%ebp, %eax
	shrl	%eax
	addl	%ecx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r15d
	testl	%r10d, %r10d
	je	.LBB16_1
# BB#2:                                 # %if.else
	leaq	(%rsp), %rdi
	movl	$1, %ecx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%r10d, %r8d
	callq	art_blend_pixel_8
	movzbl	(%rbx), %eax
	movzbl	(%r14), %ecx
	movzbl	(%rsp), %edx
	subl	%eax, %edx
	imull	%r13d, %edx
	movl	%edx, %esi
	subl	$-128, %esi
	sarl	$8, %esi
	leal	128(%rsi,%rdx), %edx
	shrl	$8, %edx
	subl	%ecx, %eax
	shll	$16, %ecx
	addl	%edx, %eax
	jmp	.LBB16_3
.LBB16_1:                               # %if.then
	movzbl	(%rbx), %eax
	movzbl	(%r14), %ecx
	subl	%ecx, %eax
	shll	$16, %ecx
.LBB16_3:                               # %if.end
	imull	%r15d, %eax
	leal	32768(%rcx,%rax), %eax
	shrl	$16, %eax
	movb	%al, (%r14)
	movb	%bpl, (%r14,%r12)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	art_pdf_composite_pixel_alpha_8_fast_mono, .Lfunc_end16-art_pdf_composite_pixel_alpha_8_fast_mono
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI17_1:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	art_pdf_uncomposite_group_8
	.align	16, 0x90
	.type	art_pdf_uncomposite_group_8,@function
art_pdf_uncomposite_group_8:            # @art_pdf_uncomposite_group_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp148:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp149:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 48
.Ltmp152:
	.cfi_offset %rbx, -48
.Ltmp153:
	.cfi_offset %r12, -40
.Ltmp154:
	.cfi_offset %r14, -32
.Ltmp155:
	.cfi_offset %r15, -24
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rdx, %r9
	movslq	%r8d, %rax
	movzbl	(%rsi,%rax), %ebx
	movb	%cl, (%rdi,%rax)
	testb	%cl, %cl
	je	.LBB17_15
# BB#1:                                 # %if.end
	imull	$510, %ebx, %eax        # imm = 0x1FE
	addl	%ecx, %eax
	addl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%ecx
	testl	%r8d, %r8d
	jle	.LBB17_15
# BB#2:                                 # %for.body.preheader
	subl	%ebx, %eax
	leal	-1(%r8), %r14d
	leaq	1(%r14), %r10
	xorl	%edx, %edx
	movabsq	$8589934588, %r15       # imm = 0x1FFFFFFFC
	movq	%r10, %r11
	andq	%r15, %r11
	je	.LBB17_8
# BB#3:                                 # %vector.memcheck
	leaq	(%rdi,%r14), %rcx
	leaq	(%r9,%r14), %rdx
	leaq	(%rsi,%r14), %rbx
	cmpq	%rdi, %rdx
	setae	%bpl
	cmpq	%r9, %rcx
	setae	%r12b
	cmpq	%rdi, %rbx
	setae	%bl
	cmpq	%rsi, %rcx
	setae	%cl
	xorl	%edx, %edx
	testb	%r12b, %bpl
	jne	.LBB17_8
# BB#4:                                 # %vector.memcheck
	andb	%cl, %bl
	jne	.LBB17_8
# BB#5:                                 # %vector.ph
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	incq	%r14
	andq	%r15, %r14
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI17_0(%rip), %xmm3  # xmm3 = [128,128,128,128]
	movdqa	.LCPI17_1(%rip), %xmm4  # xmm4 = [255,255,255,255]
	movq	%rdi, %rcx
	movq	%rsi, %rbx
	movq	%r9, %rdx
	.align	16, 0x90
.LBB17_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rdx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3],xmm5[4],xmm1[4],xmm5[5],xmm1[5],xmm5[6],xmm1[6],xmm5[7],xmm1[7]
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	movd	(%rbx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	movdqa	%xmm5, %xmm7
	psubd	%xmm6, %xmm7
	pshufd	$245, %xmm7, %xmm6      # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	paddd	%xmm3, %xmm7
	movdqa	%xmm7, %xmm6
	psrad	$8, %xmm6
	paddd	%xmm7, %xmm6
	psrad	$8, %xmm6
	paddd	%xmm5, %xmm6
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm6, %xmm5
	pandn	%xmm6, %xmm5
	movdqa	%xmm5, %xmm6
	pcmpgtd	%xmm4, %xmm6
	movdqa	%xmm4, %xmm7
	pand	%xmm6, %xmm7
	pandn	%xmm5, %xmm6
	por	%xmm7, %xmm6
	pand	%xmm4, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, (%rcx)
	addq	$4, %rdx
	addq	$4, %rbx
	addq	$4, %rcx
	addq	$-4, %r14
	jne	.LBB17_6
# BB#7:
	movq	%r11, %rdx
.LBB17_8:                               # %middle.block
	cmpq	%rdx, %r10
	je	.LBB17_15
# BB#9:                                 # %for.body.preheader35
	addq	%rdx, %r9
	addq	%rdx, %rsi
	addq	%rdx, %rdi
	subl	%edx, %r8d
	.align	16, 0x90
.LBB17_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9), %ebp
	movzbl	(%rsi), %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
	imull	%eax, %edx
	movl	%edx, %ecx
	subl	$-128, %ecx
	sarl	$8, %ecx
	leal	128(%rcx,%rdx), %edx
	sarl	$8, %edx
	xorl	%ecx, %ecx
	addl	%ebp, %edx
	movl	%edx, %ebx
	cmovsl	%ecx, %ebx
	js	.LBB17_12
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB17_10 Depth=1
	movb	%dl, %cl
.LBB17_12:                              # %for.body
                                        #   in Loop: Header=BB17_10 Depth=1
	cmpl	$255, %ebx
	movb	$-1, %dl
	jg	.LBB17_14
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB17_10 Depth=1
	movb	%cl, %dl
.LBB17_14:                              # %for.body
                                        #   in Loop: Header=BB17_10 Depth=1
	movb	%dl, (%rdi)
	incq	%r9
	incq	%rsi
	incq	%rdi
	decl	%r8d
	jne	.LBB17_10
.LBB17_15:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	art_pdf_uncomposite_group_8, .Lfunc_end17-art_pdf_uncomposite_group_8
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI18_0:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI18_1:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	art_pdf_recomposite_group_8
	.align	16, 0x90
	.type	art_pdf_recomposite_group_8,@function
art_pdf_recomposite_group_8:            # @art_pdf_recomposite_group_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp161:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp163:
	.cfi_def_cfa_offset 144
.Ltmp164:
	.cfi_offset %rbx, -56
.Ltmp165:
	.cfi_offset %r12, -48
.Ltmp166:
	.cfi_offset %r13, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movl	%r8d, %r13d
	movl	%ecx, %r15d
	movq	%rdx, %r10
	movq	%rsi, %r14
	movq	%rdi, %r11
	testb	%r15b, %r15b
	je	.LBB18_23
# BB#1:                                 # %if.end
	movzbl	%r9b, %r12d
	cmpl	$255, %r12d
	jne	.LBB18_5
# BB#2:                                 # %if.end
	cmpl	$0, 144(%rsp)
	jne	.LBB18_5
# BB#3:                                 # %if.then.8
	incl	%r13d
	movslq	%r13d, %rdx
	movq	%r11, %rdi
	movq	%r10, %rsi
	callq	memcpy
	testq	%r14, %r14
	je	.LBB18_23
# BB#4:                                 # %if.then.12
	movzbl	(%r14), %eax
	xorl	$255, %eax
	xorl	$255, %r15d
	imull	%eax, %r15d
	movl	%r15d, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%r15), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r14)
	jmp	.LBB18_23
.LBB18_5:                               # %if.else
	movslq	%r13d, %r9
	movzbl	%r15b, %eax
	cmpl	$255, %eax
	je	.LBB18_7
# BB#6:                                 # %lor.lhs.false
	movzbl	(%r11,%r9), %ecx
	testl	%ecx, %ecx
	je	.LBB18_7
# BB#8:                                 # %if.else.33
	imull	$510, %ecx, %eax        # imm = 0x1FE
	addl	%r15d, %eax
	leal	(%r15,%r15), %esi
	xorl	%edx, %edx
	divl	%esi
	testl	%r13d, %r13d
	jle	.LBB18_20
# BB#9:                                 # %for.body.preheader
	movq	%r9, %rbx
	subl	%ecx, %eax
	leal	-1(%r13), %esi
	leaq	1(%rsi), %r8
	xorl	%edi, %edi
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	movq	%r8, %r9
	andq	%rcx, %r9
	je	.LBB18_13
# BB#10:                                # %vector.ph
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	incq	%rsi
	andq	%rcx, %rsi
	leaq	16(%rsp), %rdx
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI18_0(%rip), %xmm3  # xmm3 = [128,128,128,128]
	movdqa	.LCPI18_1(%rip), %xmm4  # xmm4 = [255,255,255,255]
	movq	%r11, %rdi
	movq	%r10, %rcx
	.align	16, 0x90
.LBB18_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rcx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3],xmm5[4],xmm1[4],xmm5[5],xmm1[5],xmm5[6],xmm1[6],xmm5[7],xmm1[7]
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	movd	(%rdi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	movdqa	%xmm5, %xmm7
	psubd	%xmm6, %xmm7
	pshufd	$245, %xmm7, %xmm6      # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	paddd	%xmm3, %xmm7
	movdqa	%xmm7, %xmm6
	psrad	$8, %xmm6
	paddd	%xmm7, %xmm6
	psrad	$8, %xmm6
	paddd	%xmm5, %xmm6
	pxor	%xmm5, %xmm5
	pcmpgtd	%xmm6, %xmm5
	pandn	%xmm6, %xmm5
	movdqa	%xmm5, %xmm6
	pcmpgtd	%xmm4, %xmm6
	movdqa	%xmm4, %xmm7
	pand	%xmm6, %xmm7
	pandn	%xmm5, %xmm6
	por	%xmm7, %xmm6
	pand	%xmm4, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdi
	addq	$4, %rdx
	addq	$-4, %rsi
	jne	.LBB18_11
# BB#12:
	movq	%r9, %rdi
.LBB18_13:                              # %middle.block
	cmpq	%rdi, %r8
	movq	%rbx, %r9
	je	.LBB18_20
# BB#14:                                # %for.body.preheader60
	addq	%rdi, %r10
	leaq	(%r11,%rdi), %rcx
	leaq	16(%rsp,%rdi), %rdx
	movl	%r13d, %esi
	subl	%edi, %esi
	.align	16, 0x90
.LBB18_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r10), %ebx
	movzbl	(%rcx), %edi
	movl	%ebx, %ebp
	subl	%edi, %ebp
	imull	%eax, %ebp
	movl	%ebp, %edi
	subl	$-128, %edi
	sarl	$8, %edi
	leal	128(%rdi,%rbp), %ebp
	sarl	$8, %ebp
	xorl	%edi, %edi
	addl	%ebx, %ebp
	movl	%ebp, %ebx
	cmovsl	%edi, %ebx
	js	.LBB18_17
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB18_15 Depth=1
	movb	%bpl, %dil
.LBB18_17:                              # %for.body
                                        #   in Loop: Header=BB18_15 Depth=1
	cmpl	$255, %ebx
	movb	$-1, %bl
	jg	.LBB18_19
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB18_15 Depth=1
	movb	%dil, %bl
.LBB18_19:                              # %for.body
                                        #   in Loop: Header=BB18_15 Depth=1
	movb	%bl, (%rdx)
	incq	%r10
	incq	%rcx
	incq	%rdx
	decl	%esi
	jne	.LBB18_15
	jmp	.LBB18_20
.LBB18_7:                               # %if.then.29
	leal	3(%r13), %eax
	movslq	%eax, %rdx
	leaq	16(%rsp), %rdi
	movq	%r10, %rsi
	movq	%r11, %rbx
	movq	%r9, %rbp
	callq	memcpy
	movq	%rbp, %r9
	movq	%rbx, %r11
.LBB18_20:                              # %if.end.70
	movq	152(%rsp), %r8
	imull	%r15d, %r12d
	movl	%r12d, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%r12), %eax
	shrl	$8, %eax
	movb	%al, 16(%rsp,%r9)
	testq	%r14, %r14
	je	.LBB18_22
# BB#21:                                # %if.then.83
	movzbl	(%r14), %ecx
	xorl	$255, %ecx
	movl	$255, %edx
	movl	$255, %esi
	subl	%eax, %esi
	imull	%ecx, %esi
	movl	%esi, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rsi), %eax
	shrl	$8, %eax
	subl	%eax, %edx
	movb	%dl, (%r14)
.LBB18_22:                              # %if.end.94
	leaq	16(%rsp), %rsi
	movq	%r11, %rdi
	movl	%r13d, %edx
	movl	144(%rsp), %ecx
	callq	art_pdf_composite_pixel_alpha_8
.LBB18_23:                              # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	art_pdf_recomposite_group_8, .Lfunc_end18-art_pdf_recomposite_group_8
	.cfi_endproc

	.globl	art_pdf_composite_knockout_group_8
	.align	16, 0x90
	.type	art_pdf_composite_knockout_group_8,@function
art_pdf_composite_knockout_group_8:     # @art_pdf_composite_knockout_group_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp171:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp172:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp173:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp174:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp175:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp176:
	.cfi_def_cfa_offset 144
.Ltmp177:
	.cfi_offset %rbx, -56
.Ltmp178:
	.cfi_offset %r12, -48
.Ltmp179:
	.cfi_offset %r13, -40
.Ltmp180:
	.cfi_offset %r14, -32
.Ltmp181:
	.cfi_offset %r15, -24
.Ltmp182:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%r8, %rbp
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %r13
	movq	160(%rsp), %rax
	movl	152(%rsp), %r9d
	movzbl	144(%rsp), %r14d
	cmpl	$255, %r14d
	je	.LBB19_1
# BB#3:                                 # %if.else
	movzbl	%sil, %eax
	cmpl	$255, %eax
	jne	.LBB19_7
# BB#4:                                 # %if.end.16
	movslq	%ebx, %rcx
	movzbl	(%rbp,%rcx), %ebx
	testl	%ebx, %ebx
	je	.LBB19_7
# BB#5:                                 # %if.end.23
	leal	3(%rcx), %eax
	movslq	%eax, %rdx
	leaq	16(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rcx, %rbp
	callq	memcpy
	imull	%r14d, %ebx
	movl	%ebx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rbx), %eax
	movb	%ah, 16(%rsp,%rbp)  # NOREX
	movq	160(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$255, %ebx
	movl	$255, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	leaq	16(%rsp), %rcx
	movl	%ebp, %r8d
	movl	152(%rsp), %r9d
	callq	art_pdf_knockout_composite_pixel_alpha_8
	testq	%r15, %r15
	je	.LBB19_7
# BB#6:                                 # %if.then.39
	movzbl	(%r15), %eax
	xorl	$255, %eax
	movzbl	16(%rsp,%rbp), %ecx
	xorl	$255, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %eax
	shrl	$8, %eax
	subl	%eax, %ebx
	movb	%bl, (%r15)
	jmp	.LBB19_7
.LBB19_1:                               # %if.then
	movq	%rax, (%rsp)
	movzbl	%sil, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%rbp, %rcx
	movl	%ebx, %r8d
	callq	art_pdf_knockout_composite_pixel_alpha_8
	testq	%r15, %r15
	je	.LBB19_7
# BB#2:                                 # %if.then.4
	movzbl	(%r15), %eax
	xorl	$255, %eax
	movslq	%ebx, %rcx
	movzbl	(%rbp,%rcx), %ecx
	xorl	$255, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r15)
.LBB19_7:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	art_pdf_composite_knockout_group_8, .Lfunc_end19-art_pdf_composite_knockout_group_8
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI20_0:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI20_1:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
.LCPI20_2:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.align	16, 0x90
	.type	art_pdf_knockout_composite_pixel_alpha_8,@function
art_pdf_knockout_composite_pixel_alpha_8: # @art_pdf_knockout_composite_pixel_alpha_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp184:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp185:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp186:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp187:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp189:
	.cfi_def_cfa_offset 144
.Ltmp190:
	.cfi_offset %rbx, -56
.Ltmp191:
	.cfi_offset %r12, -48
.Ltmp192:
	.cfi_offset %r13, -40
.Ltmp193:
	.cfi_offset %r14, -32
.Ltmp194:
	.cfi_offset %r15, -24
.Ltmp195:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %rbx
	movq	%rdx, %r10
	movq	%rdi, %rcx
	movslq	%r15d, %r13
	movzbl	(%rbx,%r13), %edx
	testl	%edx, %edx
	je	.LBB20_1
# BB#4:                                 # %if.end.10
	movzbl	(%rcx,%r13), %r14d
	testl	%r14d, %r14d
	je	.LBB20_5
# BB#6:                                 # %if.end.18
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movl	%r14d, %eax
	xorl	$255, %eax
	movl	%edx, %esi
	xorl	$255, %esi
	imull	%eax, %esi
	movl	%esi, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rsi), %eax
	shrl	$8, %eax
	movl	$255, %r11d
	subl	%eax, %r11d
	shll	$16, %edx
	movl	%r11d, %eax
	shrl	%eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%r11d
	movl	%eax, %r12d
	testl	%r9d, %r9d
	je	.LBB20_7
# BB#18:                                # %if.else
	movl	%r11d, 4(%rsp)          # 4-byte Spill
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movq	144(%rsp), %rax
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	movl	%r9d, %r8d
	movq	%rax, %r9
	movq	%r10, %r13
	callq	art_blend_pixel_8
	movq	%r13, %r10
	testl	%r15d, %r15d
	jle	.LBB20_28
# BB#19:                                # %for.body.53.preheader
	leal	-1(%r15), %edx
	leaq	1(%rdx), %rax
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	addq	$4, %rcx
	xorl	%esi, %esi
	andq	%rax, %rcx
	movq	%rcx, %rdi
	je	.LBB20_25
# BB#20:                                # %vector.memcheck
	leaq	(%rbx,%rdx), %rcx
	xorl	%esi, %esi
	cmpq	%r10, %rcx
	jb	.LBB20_22
# BB#21:                                # %vector.memcheck
	leaq	(%r10,%rdx), %rcx
	cmpq	%rbx, %rcx
	jae	.LBB20_25
.LBB20_22:                              # %vector.ph
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm11       # xmm11 = xmm0[0,0,0,0]
	movd	%r12d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	incq	%rdx
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rdx, %rcx
	pxor	%xmm2, %xmm2
	pshufd	$245, %xmm11, %xmm3     # xmm3 = xmm11[1,1,3,3]
	movdqa	.LCPI20_0(%rip), %xmm8  # xmm8 = [128,128,128,128]
	pshufd	$245, %xmm1, %xmm5      # xmm5 = xmm1[1,1,3,3]
	movdqa	.LCPI20_1(%rip), %xmm9  # xmm9 = [32768,32768,32768,32768]
	movdqa	.LCPI20_2(%rip), %xmm10 # xmm10 = [255,255,255,255]
	movq	%r10, %rdx
	movq	%rbx, %rsi
	.align	16, 0x90
.LBB20_23:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	(%rsi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3],xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	punpcklwd	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	movd	(%rdx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	movd	(%rbp), %xmm7           # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3],xmm7[4],xmm2[4],xmm7[5],xmm2[5],xmm7[6],xmm2[6],xmm7[7],xmm2[7]
	punpcklwd	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	psubd	%xmm6, %xmm7
	pshufd	$245, %xmm7, %xmm0      # xmm0 = xmm7[1,1,3,3]
	pmuludq	%xmm11, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1]
	paddd	%xmm8, %xmm7
	movdqa	%xmm7, %xmm0
	psrad	$8, %xmm0
	paddd	%xmm7, %xmm0
	psrad	$8, %xmm0
	psubd	%xmm4, %xmm6
	pslld	$16, %xmm4
	paddd	%xmm0, %xmm6
	pshufd	$245, %xmm6, %xmm0      # xmm0 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1]
	por	%xmm9, %xmm4
	paddd	%xmm6, %xmm4
	psrld	$16, %xmm4
	pand	%xmm10, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%rdx)
	addq	$4, %rsi
	addq	$4, %rdx
	addq	$4, %rbp
	addq	$-4, %rcx
	jne	.LBB20_23
# BB#24:
	movq	%rdi, %rsi
.LBB20_25:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB20_28
# BB#26:                                # %for.body.53.preheader122
	addq	%rsi, %rbx
	leaq	(%r10,%rsi), %rax
	leaq	16(%rsp,%rsi), %rcx
	subl	%esi, %r15d
	.align	16, 0x90
.LBB20_27:                              # %for.body.53
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movzbl	(%rax), %esi
	movzbl	(%rcx), %ebp
	subl	%edx, %ebp
	imull	%r14d, %ebp
	movl	%ebp, %edi
	subl	$-128, %edi
	sarl	$8, %edi
	leal	128(%rdi,%rbp), %edi
	shrl	$8, %edi
	subl	%esi, %edx
	shll	$16, %esi
	addl	%edi, %edx
	imull	%r12d, %edx
	leal	32768(%rsi,%rdx), %edx
	shrl	$16, %edx
	movb	%dl, (%rax)
	incq	%rbx
	incq	%rax
	incq	%rcx
	decl	%r15d
	jne	.LBB20_27
.LBB20_28:                              # %for.end.84
	movq	8(%rsp), %r13           # 8-byte Reload
	movl	4(%rsp), %r11d          # 4-byte Reload
	jmp	.LBB20_29
.LBB20_1:                               # %if.then
	testb	%sil, %sil
	je	.LBB20_30
# BB#2:                                 # %if.then.8
	incl	%r15d
	movslq	%r15d, %rdx
	movq	%r10, %rdi
	movq	%rcx, %rsi
	jmp	.LBB20_3
.LBB20_5:                               # %if.then.14
	incl	%r15d
	movslq	%r15d, %rdx
	movq	%r10, %rdi
	movq	%rbx, %rsi
.LBB20_3:                               # %if.then.8
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB20_7:                               # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB20_29
# BB#8:                                 # %for.body.preheader
	leal	-1(%r15), %edx
	leaq	1(%rdx), %r14
	xorl	%edi, %edi
	movq	%r14, %r8
	andq	%rbp, %r8
	je	.LBB20_15
# BB#9:                                 # %vector.memcheck101
	movl	%r11d, %esi
	leaq	(%r10,%rdx), %rdi
	leaq	(%rbx,%rdx), %rax
	leaq	(%rcx,%rdx), %rbp
	cmpq	%r10, %rax
	movq	%r10, %rax
	setae	%r10b
	cmpq	%rbx, %rdi
	setae	%r11b
	cmpq	%rax, %rbp
	movq	%rax, %rbp
	setae	%al
	cmpq	%rcx, %rdi
	setae	%r9b
	xorl	%edi, %edi
	testb	%r11b, %r10b
	jne	.LBB20_10
# BB#11:                                # %vector.memcheck101
	andb	%r9b, %al
	movq	%rbp, %r10
	movl	%esi, %r11d
	jne	.LBB20_15
# BB#12:                                # %vector.ph102
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	4(%rbx), %rdi
	leaq	4(%rcx), %rbp
	leaq	4(%r10), %rax
	incq	%rdx
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	andq	%rsi, %rdx
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI20_1(%rip), %xmm8  # xmm8 = [32768,32768,32768,32768]
	movdqa	.LCPI20_2(%rip), %xmm9  # xmm9 = [255,255,255,255]
	.align	16, 0x90
.LBB20_13:                              # %vector.body80
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm7           # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklwd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpcklbw	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3],xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	punpcklwd	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movd	-4(%rbp), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movd	(%rbp), %xmm5           # xmm5 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	punpcklbw	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3],xmm5[4],xmm1[4],xmm5[5],xmm1[5],xmm5[6],xmm1[6],xmm5[7],xmm1[7]
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	psubd	%xmm6, %xmm3
	pslld	$16, %xmm6
	psubd	%xmm5, %xmm7
	pslld	$16, %xmm5
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm7, %xmm4      # xmm4 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	por	%xmm8, %xmm6
	por	%xmm8, %xmm5
	paddd	%xmm3, %xmm6
	paddd	%xmm7, %xmm5
	psrld	$16, %xmm6
	psrld	$16, %xmm5
	pand	%xmm9, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, -4(%rax)
	pand	%xmm9, %xmm5
	packuswb	%xmm5, %xmm5
	packuswb	%xmm5, %xmm5
	movd	%xmm5, (%rax)
	addq	$8, %rdi
	addq	$8, %rbp
	addq	$8, %rax
	addq	$-8, %rdx
	jne	.LBB20_13
# BB#14:
	movq	%r8, %rdi
	jmp	.LBB20_15
.LBB20_10:
	movq	%rbp, %r10
	movl	%esi, %r11d
.LBB20_15:                              # %middle.block81
	cmpq	%rdi, %r14
	je	.LBB20_29
# BB#16:                                # %for.body.preheader121
	addq	%rdi, %rbx
	addq	%rdi, %rcx
	leaq	(%r10,%rdi), %rax
	subl	%edi, %r15d
	.align	16, 0x90
.LBB20_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movzbl	(%rcx), %esi
	subl	%esi, %edx
	shll	$16, %esi
	imull	%r12d, %edx
	leal	32768(%rsi,%rdx), %edx
	shrl	$16, %edx
	movb	%dl, (%rax)
	incq	%rbx
	incq	%rcx
	incq	%rax
	decl	%r15d
	jne	.LBB20_17
.LBB20_29:                              # %if.end.85
	movb	%r11b, (%r10,%r13)
.LBB20_30:                              # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	art_pdf_knockout_composite_pixel_alpha_8, .Lfunc_end20-art_pdf_knockout_composite_pixel_alpha_8
	.cfi_endproc

	.globl	art_pdf_composite_group_8
	.align	16, 0x90
	.type	art_pdf_composite_group_8,@function
art_pdf_composite_group_8:              # @art_pdf_composite_group_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp198:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp199:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp200:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp201:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp202:
	.cfi_def_cfa_offset 144
.Ltmp203:
	.cfi_offset %rbx, -56
.Ltmp204:
	.cfi_offset %r12, -48
.Ltmp205:
	.cfi_offset %r13, -40
.Ltmp206:
	.cfi_offset %r14, -32
.Ltmp207:
	.cfi_offset %r15, -24
.Ltmp208:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, %r14d
	movl	%ecx, %ebx
	movq	%rdx, %rbp
	movq	%rdi, %r13
	movq	144(%rsp), %r8
	cmpl	$255, %r14d
	je	.LBB21_1
# BB#3:                                 # %if.else
	movslq	%ebx, %rbx
	movzbl	(%rbp,%rbx), %r15d
	testl	%r15d, %r15d
	je	.LBB21_7
# BB#4:                                 # %if.end.18
	leal	3(%rbx), %eax
	movslq	%eax, %rdx
	leaq	16(%rsp), %rdi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rbp, %rsi
	callq	memcpy
	imull	%r14d, %r15d
	movl	%r15d, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%r15), %eax
	movb	%ah, 16(%rsp,%rbx)  # NOREX
	movq	%r13, %rdi
	leaq	16(%rsp), %rsi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	movq	144(%rsp), %r8
	callq	art_pdf_composite_pixel_alpha_8
	movq	8(%rsp), %rdx           # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB21_7
# BB#5:                                 # %if.then.34
	movzbl	(%rdx), %eax
	xorl	$255, %eax
	movzbl	16(%rsp,%rbx), %ecx
	jmp	.LBB21_6
.LBB21_1:                               # %if.then
	movq	%r13, %rdi
	movq	%rsi, %r14
	movq	%rbp, %rsi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	callq	art_pdf_composite_pixel_alpha_8
	movq	%r14, %rdx
	testq	%rdx, %rdx
	je	.LBB21_7
# BB#2:                                 # %if.then.4
	movzbl	(%rdx), %eax
	xorl	$255, %eax
	movslq	%ebx, %rcx
	movzbl	(%rbp,%rcx), %ecx
.LBB21_6:                               # %cleanup
	xorl	$255, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%rdx)
.LBB21_7:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	art_pdf_composite_group_8, .Lfunc_end21-art_pdf_composite_group_8
	.cfi_endproc

	.globl	art_pdf_knockoutisolated_group_8
	.align	16, 0x90
	.type	art_pdf_knockoutisolated_group_8,@function
art_pdf_knockoutisolated_group_8:       # @art_pdf_knockoutisolated_group_8
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%edx, %rax
	cmpb	$0, (%rsi,%rax)
	je	.LBB22_1
# BB#2:                                 # %if.end
	incl	%edx
	movslq	%edx, %rdx
	jmp	memcpy                  # TAILCALL
.LBB22_1:                               # %cleanup
	retq
.Lfunc_end22:
	.size	art_pdf_knockoutisolated_group_8, .Lfunc_end22-art_pdf_knockoutisolated_group_8
	.cfi_endproc

	.globl	art_pdf_composite_knockout_simple_8
	.align	16, 0x90
	.type	art_pdf_composite_knockout_simple_8,@function
art_pdf_composite_knockout_simple_8:    # @art_pdf_composite_knockout_simple_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp210:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp211:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp212:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp213:
	.cfi_def_cfa_offset 48
.Ltmp214:
	.cfi_offset %rbx, -48
.Ltmp215:
	.cfi_offset %r12, -40
.Ltmp216:
	.cfi_offset %r14, -32
.Ltmp217:
	.cfi_offset %r15, -24
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movslq	%r9d, %r12
	movzbl	(%rcx,%r12), %r10d
	testl	%r10d, %r10d
	je	.LBB23_13
# BB#1:                                 # %entry
	movb	48(%rsp), %bl
	movzbl	%r10b, %eax
	cmpl	$255, %eax
	jne	.LBB23_4
# BB#2:                                 # %if.then.5
	leal	3(%r12), %eax
	movslq	%eax, %rdx
	movq	%r15, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movb	%bl, (%r15,%r12)
	testq	%r14, %r14
	je	.LBB23_13
# BB#3:                                 # %if.then.11
	movb	$-1, (%r14)
	jmp	.LBB23_13
.LBB23_4:                               # %if.else.12
	movzbl	(%r15,%r12), %ebp
	movzbl	%bl, %r11d
	movl	%r11d, %eax
	subl	%ebp, %eax
	imull	%r10d, %eax
	movl	%eax, %edx
	subl	$-128, %edx
	shrl	$8, %edx
	leal	128(%rdx,%rax), %r8d
	shrl	$8, %r8d
	addl	%ebp, %r8d
	movl	%r8d, %esi
	andl	$255, %esi
	je	.LBB23_11
# BB#5:                                 # %if.else.12
	testl	%r9d, %r9d
	jle	.LBB23_11
# BB#6:                                 # %for.body.lr.ph
	movl	%r10d, %eax
	xorl	$255, %eax
	imull	%eax, %ebp
	imull	%r10d, %r11d
	imull	$255, %esi, %ebx
	shll	$7, %esi
	xorl	%eax, %eax
	testb	$1, %r9b
	je	.LBB23_8
# BB#7:                                 # %for.body.prol
	movzbl	(%r15), %eax
	imull	%ebp, %eax
	movzbl	(%rcx), %edx
	imull	%r11d, %edx
	addl	%esi, %eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebx
	movb	%al, (%r15)
	movl	$1, %eax
.LBB23_8:                               # %for.body.lr.ph.split
	cmpl	$1, %r9d
	je	.LBB23_11
# BB#9:                                 # %for.body.lr.ph.split.split
	subl	%eax, %r9d
	leaq	1(%r15,%rax), %rdi
	leaq	1(%rcx,%rax), %rcx
	.align	16, 0x90
.LBB23_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdi), %eax
	imull	%ebp, %eax
	movzbl	-1(%rcx), %edx
	imull	%r11d, %edx
	addl	%esi, %eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebx
	movb	%al, -1(%rdi)
	movzbl	(%rdi), %eax
	imull	%ebp, %eax
	movzbl	(%rcx), %edx
	imull	%r11d, %edx
	addl	%esi, %eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebx
	movb	%al, (%rdi)
	addq	$2, %rdi
	addq	$2, %rcx
	addl	$-2, %r9d
	jne	.LBB23_10
.LBB23_11:                              # %if.end.51
	movb	%r8b, (%r15,%r12)
	testq	%r14, %r14
	je	.LBB23_13
# BB#12:                                # %if.then.56
	movzbl	(%r14), %eax
	xorl	$255, %eax
	xorl	$255, %r10d
	imull	%eax, %r10d
	movl	%r10d, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%r10), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r14)
.LBB23_13:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	art_pdf_composite_knockout_simple_8, .Lfunc_end23-art_pdf_composite_knockout_simple_8
	.cfi_endproc

	.globl	art_pdf_composite_knockout_isolated_8
	.align	16, 0x90
	.type	art_pdf_composite_knockout_isolated_8,@function
art_pdf_composite_knockout_isolated_8:  # @art_pdf_composite_knockout_isolated_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp220:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp221:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp222:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp223:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp224:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp225:
	.cfi_def_cfa_offset 64
.Ltmp226:
	.cfi_offset %rbx, -56
.Ltmp227:
	.cfi_offset %r12, -48
.Ltmp228:
	.cfi_offset %r13, -40
.Ltmp229:
	.cfi_offset %r14, -32
.Ltmp230:
	.cfi_offset %r15, -24
.Ltmp231:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %r15
	movb	72(%rsp), %r12b
	testb	%r9b, %r9b
	je	.LBB24_1
# BB#3:                                 # %if.else
	movb	80(%rsp), %al
	movb	%al, %cl
	andb	%r9b, %cl
	movzbl	%cl, %ecx
	cmpl	$255, %ecx
	je	.LBB24_4
# BB#8:                                 # %if.else.28
	movzbl	%al, %eax
	movslq	%ebx, %r8
	movzbl	(%rdi,%r8), %r10d
	movq	%rdi, %r11
	imull	%r9d, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	movzbl	(%r13,%r8), %ecx
	movzbl	%r12b, %edx
	imull	%ecx, %edx
	movl	%edx, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rdx), %ecx
	movzbl	%ch, %edx  # NOREX
	movl	%edx, %ecx
	subl	%r10d, %ecx
	movzbl	%ah, %eax  # NOREX
	movq	%rax, (%rsp)            # 8-byte Spill
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %r9d
	shrl	$8, %r9d
	addl	%r10d, %r9d
	movl	%r9d, %ebp
	andl	$255, %ebp
	je	.LBB24_15
# BB#9:                                 # %if.else.28
	testl	%ebx, %ebx
	jle	.LBB24_15
# BB#10:                                # %for.body.lr.ph
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	%ecx, %eax
	xorl	$255, %eax
	imull	%eax, %r10d
	imull	%ecx, %edx
	imull	$255, %ebp, %edi
	shll	$7, %ebp
	xorl	%eax, %eax
	testb	$1, %bl
	movl	%edx, %r12d
	je	.LBB24_12
# BB#11:                                # %for.body.prol
	movzbl	(%r11), %eax
	imull	%r10d, %eax
	movzbl	(%r13), %ecx
	imull	%r12d, %ecx
	addl	%ebp, %eax
	addl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	movb	%al, (%r11)
	movl	$1, %eax
.LBB24_12:                              # %for.body.lr.ph.split
	cmpl	$1, %ebx
	je	.LBB24_15
# BB#13:                                # %for.body.lr.ph.split.split
	subl	%eax, %ebx
	leaq	1(%r11,%rax), %rsi
	leaq	1(%r13,%rax), %rcx
	.align	16, 0x90
.LBB24_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi), %eax
	imull	%r10d, %eax
	movzbl	-1(%rcx), %edx
	imull	%r12d, %edx
	addl	%ebp, %eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%edi
	movb	%al, -1(%rsi)
	movzbl	(%rsi), %eax
	imull	%r10d, %eax
	movzbl	(%rcx), %edx
	imull	%r12d, %edx
	addl	%ebp, %eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%edi
	movb	%al, (%rsi)
	addq	$2, %rsi
	addq	$2, %rcx
	addl	$-2, %ebx
	jne	.LBB24_14
.LBB24_15:                              # %if.end.93
	movb	%r9b, (%r11,%r8)
	testq	%r15, %r15
	je	.LBB24_17
# BB#16:                                # %if.then.98
	movzbl	(%r15), %eax
	xorl	$255, %eax
	movq	(%rsp), %r12            # 8-byte Reload
	xorl	$255, %r12d
	imull	%eax, %r12d
	movl	%r12d, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%r12), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r15)
.LBB24_17:                              # %if.end.110
	testq	%r14, %r14
	je	.LBB24_20
# BB#18:                                # %if.then.113
	movb	64(%rsp), %al
	orb	(%r14), %al
	andb	$-9, %al
	jmp	.LBB24_19
.LBB24_1:                               # %if.then
	movl	88(%rsp), %eax
	testl	%eax, %eax
	je	.LBB24_20
# BB#2:                                 # %if.then.3
	movslq	%ebx, %rax
	movb	%r12b, (%rdi,%rax)
	jmp	.LBB24_20
.LBB24_4:                               # %if.then.8
	leal	3(%rbx), %eax
	movslq	%eax, %rdx
	movq	%rdi, %rbp
	movq	%r13, %rsi
	callq	memcpy
	movslq	%ebx, %rax
	movzbl	(%r13,%rax), %ecx
	movzbl	%r12b, %edx
	imull	%ecx, %edx
	movl	%edx, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rdx), %ecx
	movb	%ch, (%rbp,%rax)  # NOREX
	testq	%r15, %r15
	je	.LBB24_6
# BB#5:                                 # %if.then.22
	movb	$-1, (%r15)
.LBB24_6:                               # %if.end.23
	testq	%r14, %r14
	je	.LBB24_20
# BB#7:                                 # %if.then.26
	movb	64(%rsp), %al
.LBB24_19:                              # %cleanup
	movb	%al, (%r14)
.LBB24_20:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	art_pdf_composite_knockout_isolated_8, .Lfunc_end24-art_pdf_composite_knockout_isolated_8
	.cfi_endproc

	.type	art_blend_sq_diff_8,@object # @art_blend_sq_diff_8
	.section	.rodata,"a",@progbits
	.globl	art_blend_sq_diff_8
	.align	16
art_blend_sq_diff_8:
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	510                     # 0x1fe
	.long	762                     # 0x2fa
	.long	1012                    # 0x3f4
	.long	1260                    # 0x4ec
	.long	1506                    # 0x5e2
	.long	1750                    # 0x6d6
	.long	1992                    # 0x7c8
	.long	2231                    # 0x8b7
	.long	2469                    # 0x9a5
	.long	2705                    # 0xa91
	.long	2939                    # 0xb7b
	.long	3171                    # 0xc63
	.long	3401                    # 0xd49
	.long	3628                    # 0xe2c
	.long	3854                    # 0xf0e
	.long	4078                    # 0xfee
	.long	4300                    # 0x10cc
	.long	4519                    # 0x11a7
	.long	4737                    # 0x1281
	.long	4953                    # 0x1359
	.long	5166                    # 0x142e
	.long	5378                    # 0x1502
	.long	5588                    # 0x15d4
	.long	5795                    # 0x16a3
	.long	6001                    # 0x1771
	.long	6204                    # 0x183c
	.long	6406                    # 0x1906
	.long	6606                    # 0x19ce
	.long	6803                    # 0x1a93
	.long	6999                    # 0x1b57
	.long	7192                    # 0x1c18
	.long	7384                    # 0x1cd8
	.long	7573                    # 0x1d95
	.long	7761                    # 0x1e51
	.long	7946                    # 0x1f0a
	.long	8129                    # 0x1fc1
	.long	8311                    # 0x2077
	.long	8490                    # 0x212a
	.long	8668                    # 0x21dc
	.long	8843                    # 0x228b
	.long	9016                    # 0x2338
	.long	9188                    # 0x23e4
	.long	9357                    # 0x248d
	.long	9524                    # 0x2534
	.long	9690                    # 0x25da
	.long	9853                    # 0x267d
	.long	10014                   # 0x271e
	.long	10173                   # 0x27bd
	.long	10331                   # 0x285b
	.long	10486                   # 0x28f6
	.long	10639                   # 0x298f
	.long	10790                   # 0x2a26
	.long	10939                   # 0x2abb
	.long	11086                   # 0x2b4e
	.long	11232                   # 0x2be0
	.long	11375                   # 0x2c6f
	.long	11516                   # 0x2cfc
	.long	11655                   # 0x2d87
	.long	11792                   # 0x2e10
	.long	11927                   # 0x2e97
	.long	12060                   # 0x2f1c
	.long	12191                   # 0x2f9f
	.long	12320                   # 0x3020
	.long	12447                   # 0x309f
	.long	12572                   # 0x311c
	.long	12695                   # 0x3197
	.long	12816                   # 0x3210
	.long	12935                   # 0x3287
	.long	13052                   # 0x32fc
	.long	13167                   # 0x336f
	.long	13280                   # 0x33e0
	.long	13390                   # 0x344e
	.long	13499                   # 0x34bb
	.long	13606                   # 0x3526
	.long	13711                   # 0x358f
	.long	13814                   # 0x35f6
	.long	13914                   # 0x365a
	.long	14013                   # 0x36bd
	.long	14110                   # 0x371e
	.long	14205                   # 0x377d
	.long	14297                   # 0x37d9
	.long	14388                   # 0x3834
	.long	14477                   # 0x388d
	.long	14564                   # 0x38e4
	.long	14648                   # 0x3938
	.long	14731                   # 0x398b
	.long	14811                   # 0x39db
	.long	14890                   # 0x3a2a
	.long	14967                   # 0x3a77
	.long	15041                   # 0x3ac1
	.long	15114                   # 0x3b0a
	.long	15184                   # 0x3b50
	.long	15253                   # 0x3b95
	.long	15319                   # 0x3bd7
	.long	15384                   # 0x3c18
	.long	15446                   # 0x3c56
	.long	15507                   # 0x3c93
	.long	15565                   # 0x3ccd
	.long	15622                   # 0x3d06
	.long	15676                   # 0x3d3c
	.long	15729                   # 0x3d71
	.long	15779                   # 0x3da3
	.long	15827                   # 0x3dd3
	.long	15874                   # 0x3e02
	.long	15918                   # 0x3e2e
	.long	15960                   # 0x3e58
	.long	16001                   # 0x3e81
	.long	16039                   # 0x3ea7
	.long	16075                   # 0x3ecb
	.long	16110                   # 0x3eee
	.long	16142                   # 0x3f0e
	.long	16172                   # 0x3f2c
	.long	16200                   # 0x3f48
	.long	16227                   # 0x3f63
	.long	16251                   # 0x3f7b
	.long	16273                   # 0x3f91
	.long	16293                   # 0x3fa5
	.long	16311                   # 0x3fb7
	.long	16327                   # 0x3fc7
	.long	16341                   # 0x3fd5
	.long	16354                   # 0x3fe2
	.long	16364                   # 0x3fec
	.long	16372                   # 0x3ff4
	.long	16378                   # 0x3ffa
	.long	16382                   # 0x3ffe
	.long	16384                   # 0x4000
	.long	16384                   # 0x4000
	.long	16382                   # 0x3ffe
	.long	16378                   # 0x3ffa
	.long	16372                   # 0x3ff4
	.long	16364                   # 0x3fec
	.long	16354                   # 0x3fe2
	.long	16341                   # 0x3fd5
	.long	16327                   # 0x3fc7
	.long	16311                   # 0x3fb7
	.long	16293                   # 0x3fa5
	.long	16273                   # 0x3f91
	.long	16251                   # 0x3f7b
	.long	16227                   # 0x3f63
	.long	16200                   # 0x3f48
	.long	16172                   # 0x3f2c
	.long	16142                   # 0x3f0e
	.long	16110                   # 0x3eee
	.long	16075                   # 0x3ecb
	.long	16039                   # 0x3ea7
	.long	16001                   # 0x3e81
	.long	15960                   # 0x3e58
	.long	15918                   # 0x3e2e
	.long	15874                   # 0x3e02
	.long	15827                   # 0x3dd3
	.long	15779                   # 0x3da3
	.long	15729                   # 0x3d71
	.long	15676                   # 0x3d3c
	.long	15622                   # 0x3d06
	.long	15565                   # 0x3ccd
	.long	15507                   # 0x3c93
	.long	15446                   # 0x3c56
	.long	15384                   # 0x3c18
	.long	15319                   # 0x3bd7
	.long	15253                   # 0x3b95
	.long	15184                   # 0x3b50
	.long	15114                   # 0x3b0a
	.long	15041                   # 0x3ac1
	.long	14967                   # 0x3a77
	.long	14890                   # 0x3a2a
	.long	14811                   # 0x39db
	.long	14731                   # 0x398b
	.long	14648                   # 0x3938
	.long	14564                   # 0x38e4
	.long	14477                   # 0x388d
	.long	14388                   # 0x3834
	.long	14297                   # 0x37d9
	.long	14205                   # 0x377d
	.long	14110                   # 0x371e
	.long	14013                   # 0x36bd
	.long	13914                   # 0x365a
	.long	13814                   # 0x35f6
	.long	13711                   # 0x358f
	.long	13606                   # 0x3526
	.long	13499                   # 0x34bb
	.long	13390                   # 0x344e
	.long	13280                   # 0x33e0
	.long	13167                   # 0x336f
	.long	13052                   # 0x32fc
	.long	12935                   # 0x3287
	.long	12816                   # 0x3210
	.long	12695                   # 0x3197
	.long	12572                   # 0x311c
	.long	12447                   # 0x309f
	.long	12320                   # 0x3020
	.long	12191                   # 0x2f9f
	.long	12060                   # 0x2f1c
	.long	11927                   # 0x2e97
	.long	11792                   # 0x2e10
	.long	11655                   # 0x2d87
	.long	11516                   # 0x2cfc
	.long	11375                   # 0x2c6f
	.long	11232                   # 0x2be0
	.long	11086                   # 0x2b4e
	.long	10939                   # 0x2abb
	.long	10790                   # 0x2a26
	.long	10639                   # 0x298f
	.long	10486                   # 0x28f6
	.long	10331                   # 0x285b
	.long	10173                   # 0x27bd
	.long	10014                   # 0x271e
	.long	9853                    # 0x267d
	.long	9690                    # 0x25da
	.long	9524                    # 0x2534
	.long	9357                    # 0x248d
	.long	9188                    # 0x23e4
	.long	9016                    # 0x2338
	.long	8843                    # 0x228b
	.long	8668                    # 0x21dc
	.long	8490                    # 0x212a
	.long	8311                    # 0x2077
	.long	8129                    # 0x1fc1
	.long	7946                    # 0x1f0a
	.long	7761                    # 0x1e51
	.long	7573                    # 0x1d95
	.long	7384                    # 0x1cd8
	.long	7192                    # 0x1c18
	.long	6999                    # 0x1b57
	.long	6803                    # 0x1a93
	.long	6606                    # 0x19ce
	.long	6406                    # 0x1906
	.long	6204                    # 0x183c
	.long	6001                    # 0x1771
	.long	5795                    # 0x16a3
	.long	5588                    # 0x15d4
	.long	5378                    # 0x1502
	.long	5166                    # 0x142e
	.long	4953                    # 0x1359
	.long	4737                    # 0x1281
	.long	4519                    # 0x11a7
	.long	4300                    # 0x10cc
	.long	4078                    # 0xfee
	.long	3854                    # 0xf0e
	.long	3628                    # 0xe2c
	.long	3401                    # 0xd49
	.long	3171                    # 0xc63
	.long	2939                    # 0xb7b
	.long	2705                    # 0xa91
	.long	2469                    # 0x9a5
	.long	2231                    # 0x8b7
	.long	1992                    # 0x7c8
	.long	1750                    # 0x6d6
	.long	1506                    # 0x5e2
	.long	1260                    # 0x4ec
	.long	1012                    # 0x3f4
	.long	762                     # 0x2fa
	.long	510                     # 0x1fe
	.long	256                     # 0x100
	.long	0                       # 0x0
	.size	art_blend_sq_diff_8, 1024

	.type	art_blend_soft_light_8,@object # @art_blend_soft_light_8
	.globl	art_blend_soft_light_8
	.align	16
art_blend_soft_light_8:
	.asciz	"\000\003\006\t\013\016\020\023\025\027\032\034\036 !#%'(*+-./01345567899::;<<<==>>>>???????@@@@@@@@@@@@@@@@@@???????????>>>>>>>======<<<<<;;;;;::::99998888777766665554443333222111000///...---,,+++***))((('''&&%%%$$###\"\"!!!  \037\037\037\036\036\035\035\034\034\034\033\033\032\032\031\031\031\030\030\027\027\026\026\025\025\025\024\024\023\023\022\022\021\021\020\020\017\017\017\016\016\r\r\f\f\013\013\n\n\t\t\b\b\007\007\006\006\005\005\004\004\003\003\002\002\001\001\000"
	.size	art_blend_soft_light_8, 256

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./base/gxblend.c"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"art_blend_pixel_8: blend mode %d not implemented\n"
	.size	.L.str.1, 50

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"art_blend_pixel: blend mode %d not implemented\n"
	.size	.L.str.2, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
