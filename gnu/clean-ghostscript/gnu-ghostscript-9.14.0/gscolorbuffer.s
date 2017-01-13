	.text
	.file	"gscolorbuffer.bc"
	.globl	gs_transform_color_buffer_generic
	.align	16, 0x90
	.type	gs_transform_color_buffer_generic,@function
gs_transform_color_buffer_generic:      # @gs_transform_color_buffer_generic
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
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp6:
	.cfi_def_cfa_offset 496
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
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movl	%ecx, %r9d
	movl	%edx, %r12d
	movl	%esi, 64(%rsp)          # 4-byte Spill
	movq	%rdi, %r15
	movl	504(%rsp), %r14d
	cmpl	$5, %r14d
	jl	.LBB0_9
# BB#1:                                 # %if.then
	leal	-1(%r9), %eax
	xorl	%edx, %edx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	cmpl	$4, %eax
	jae	.LBB0_3
# BB#2:                                 # %switch.lookup
	cltq
	movq	.Lswitch.table(,%rax,8), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_9:                                # %if.else
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	cmpl	$4, %r9d
	je	.LBB0_15
# BB#10:                                # %if.else
	cmpl	$3, %r9d
	jne	.LBB0_11
# BB#14:                                # %sw.bb.14
	cmpl	$1, %r14d
	movl	$rgb_to_gray, %eax
	movl	$rgb_to_cmyk, %edx
	jmp	.LBB0_13
.LBB0_15:                               # %sw.bb.19
	cmpl	$1, %r14d
	movl	$cmyk_to_gray, %eax
	movl	$cmyk_to_rgb, %edx
	jmp	.LBB0_13
.LBB0_11:                               # %if.else
	cmpl	$1, %r9d
	jne	.LBB0_3
# BB#12:                                # %sw.bb.10
	cmpl	$3, %r14d
	movl	$gray_to_rgb, %eax
	movl	$gray_to_cmyk, %edx
.LBB0_13:                               # %if.end.26
	cmoveq	%rax, %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
.LBB0_3:                                # %if.end.26
	cmpl	%r14d, %r9d
	movl	%r14d, %eax
	cmovgel	%r9d, %eax
	addl	512(%rsp), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	jle	.LBB0_6
# BB#4:                                 # %for.body.lr.ph
	movslq	68(%rsp), %rax          # 4-byte Folded Reload
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, 160(%rsp,%rdx,4)
	incq	%rdx
	addl	%r12d, %ecx
	cmpq	%rax, %rdx
	jl	.LBB0_5
.LBB0_6:                                # %for.end
	movq	496(%rsp), %rbp
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	je	.LBB0_7
# BB#16:                                # %if.else.47
	movq	152(%rsp), %rcx         # 8-byte Reload
	shrq	$32, %rcx
	movq	%r8, %rax
	shrq	$32, %rax
	subl	%eax, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB0_49
# BB#17:                                # %for.cond.53.preheader.lr.ph
	movq	152(%rsp), %rax         # 8-byte Reload
	subl	%r8d, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movslq	68(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 48(%rsp)          # 8-byte Spill
	imull	%r9d, %r12d
	movslq	%r12d, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movslq	%esi, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	cmpl	%r9d, %r14d
	movl	%r9d, %ecx
	cmovgel	%r14d, %ecx
	addl	512(%rsp), %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	-8(%rcx), %rdx
	shrq	$3, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%r9d, %esi
	andl	$1, %esi
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movl	%r14d, %esi
	andl	$1, %esi
	movl	%esi, 96(%rsp)          # 4-byte Spill
	andq	$-8, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	movdqa	%xmm2, 112(%rsp)        # 16-byte Spill
	andl	$1, %edx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movslq	%r9d, %rax
	leaq	160(%rsp,%rax,4), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movslq	%r14d, %rax
	leaq	160(%rsp,%rax,4), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_18:                               # %for.cond.53.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_32 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_47 Depth 2
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_37
# BB#19:                                # %for.body.56.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	movslq	160(%rsp), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_20:                               # %for.body.56
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_32 Depth 3
                                        #       Child Loop BB0_35 Depth 3
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %rax
	cmpb	$0, (%r15,%rax)
	je	.LBB0_36
# BB#21:                                # %for.cond.64.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	testl	%r9d, %r9d
	jle	.LBB0_27
# BB#22:                                # %for.body.67.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	movl	$0, %edx
	je	.LBB0_24
# BB#23:                                # %for.body.67.prol
                                        #   in Loop: Header=BB0_20 Depth=2
	movslq	%r13d, %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movb	(%r15,%rax), %al
	movb	%al, 436(%rsp)
	movl	$1, %edx
.LBB0_24:                               # %for.body.67.preheader.split
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$1, %r9d
	je	.LBB0_27
# BB#25:                                # %for.body.67.preheader.split.split
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r9d, %eax
	subl	%edx, %eax
	leaq	164(%rsp), %rcx
	leaq	(%rcx,%rdx,4), %rcx
	leaq	437(%rsp), %rsi
	leaq	(%rdx,%rsi), %rdx
	.align	16, 0x90
.LBB0_26:                               # %for.body.67
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-4(%rcx), %rsi
	movslq	%r13d, %rdi
	addq	%rdi, %rsi
	movb	(%r15,%rsi), %bl
	movb	%bl, -1(%rdx)
	movslq	(%rcx), %rsi
	addq	%rdi, %rsi
	movb	(%r15,%rsi), %bl
	movb	%bl, (%rdx)
	addq	$8, %rcx
	addq	$2, %rdx
	addl	$-2, %eax
	jne	.LBB0_26
.LBB0_27:                               # %for.end.77
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r9, %r12
	leaq	436(%rsp), %rdi
	leaq	432(%rsp), %rsi
	callq	*136(%rsp)              # 8-byte Folded Reload
	testl	%r14d, %r14d
	jle	.LBB0_33
# BB#28:                                # %for.body.82.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movl	$0, %edx
	je	.LBB0_30
# BB#29:                                # %for.body.82.prol
                                        #   in Loop: Header=BB0_20 Depth=2
	movb	432(%rsp), %al
	movslq	%r13d, %rcx
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movb	%al, (%rbp,%rcx)
	movl	$1, %edx
.LBB0_30:                               # %for.body.82.preheader.split
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$1, %r14d
	je	.LBB0_33
# BB#31:                                # %for.body.82.preheader.split.split
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r14d, %eax
	subl	%edx, %eax
	leaq	433(%rsp), %rcx
	leaq	(%rcx,%rdx), %rcx
	leaq	164(%rsp), %rsi
	leaq	(%rsi,%rdx,4), %rdx
	.align	16, 0x90
.LBB0_32:                               # %for.body.82
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-1(%rcx), %bl
	movslq	-4(%rdx), %rsi
	movslq	%r13d, %rdi
	addq	%rdi, %rsi
	movb	%bl, (%rbp,%rsi)
	movb	(%rcx), %bl
	movslq	(%rdx), %rsi
	addq	%rdi, %rsi
	movb	%bl, (%rbp,%rsi)
	addq	$2, %rcx
	addq	$8, %rdx
	addl	$-2, %eax
	jne	.LBB0_32
.LBB0_33:                               # %for.cond.93.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$0, 512(%rsp)
	movq	%r12, %r9
	movdqa	112(%rsp), %xmm2        # 16-byte Reload
	jle	.LBB0_36
# BB#34:                                # %for.body.96.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	512(%rsp), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB0_35:                               # %for.body.96
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	(%rdx), %rsi
	movslq	%r13d, %rdi
	addq	%rdi, %rsi
	movb	(%r15,%rsi), %bl
	movslq	(%rcx), %rsi
	addq	%rdi, %rsi
	movb	%bl, (%rbp,%rsi)
	addq	$4, %rdx
	addq	$4, %rcx
	decl	%eax
	jne	.LBB0_35
.LBB0_36:                               # %for.inc.113
                                        #   in Loop: Header=BB0_20 Depth=2
	incq	%r13
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r13d
	jne	.LBB0_20
.LBB0_37:                               # %for.cond.116.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	movl	64(%rsp), %edx          # 4-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	jle	.LBB0_48
# BB#38:                                # %for.body.119.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	je	.LBB0_47
# BB#39:                                # %overflow.checked
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movl	$0, %eax
	je	.LBB0_46
# BB#40:                                # %vector.ph
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpq	$0, (%rsp)              # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB0_42
# BB#41:                                # %vector.body.prol
                                        #   in Loop: Header=BB0_18 Depth=1
	movdqa	160(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movdqa	176(%rsp), %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, 160(%rsp)
	movdqa	%xmm1, 176(%rsp)
	movl	$8, %ecx
.LBB0_42:                               # %vector.ph.split
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	movq	%rdi, %rax
	je	.LBB0_46
# BB#43:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	%rdi, %rax
	subq	%rcx, %rax
	leaq	208(%rsp), %rbx
	leaq	(%rbx,%rcx,4), %rcx
	.align	16, 0x90
.LBB0_44:                               # %vector.body
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-48(%rcx), %xmm0
	paddd	%xmm2, %xmm0
	movdqa	-32(%rcx), %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, -48(%rcx)
	movdqa	%xmm1, -32(%rcx)
	movdqa	-16(%rcx), %xmm0
	paddd	%xmm2, %xmm0
	movdqa	(%rcx), %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, -16(%rcx)
	movdqa	%xmm1, (%rcx)
	addq	$64, %rcx
	addq	$-16, %rax
	jne	.LBB0_44
# BB#45:                                #   in Loop: Header=BB0_18 Depth=1
	movq	%rdi, %rax
.LBB0_46:                               # %middle.block
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpq	%rax, 24(%rsp)          # 8-byte Folded Reload
	je	.LBB0_48
	.align	16, 0x90
.LBB0_47:                               # %for.body.119
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%edx, 160(%rsp,%rax,4)
	incq	%rax
	cmpq	%rsi, %rax
	jl	.LBB0_47
.LBB0_48:                               # %for.end.125
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	72(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, 144(%rsp)         # 8-byte Folded Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_18
	jmp	.LBB0_49
.LBB0_7:                                # %if.then.30
	leal	(,%r12,4), %eax
	movslq	%eax, %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r9, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	cmpl	$0, 512(%rsp)
	jle	.LBB0_49
# BB#8:                                 # %if.then.34
	movslq	%r14d, %rax
	movslq	160(%rsp,%rax,4), %rax
	addq	%rax, %rbp
	movslq	%ecx, %rax
	movslq	160(%rsp,%rax,4), %rax
	addq	%rax, %r15
	movl	512(%rsp), %eax
	imull	%r12d, %eax
	movslq	%eax, %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
.LBB0_49:                               # %if.end.130
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_transform_color_buffer_generic, .Lfunc_end0-gs_transform_color_buffer_generic
	.cfi_endproc

	.align	16, 0x90
	.type	gray_to_cmyk,@function
gray_to_cmyk:                           # @gray_to_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	movw	$0, (%rsi)
	movb	$0, 2(%rsi)
	movb	(%rdi), %al
	notb	%al
	movb	%al, 3(%rsi)
	retq
.Lfunc_end1:
	.size	gray_to_cmyk, .Lfunc_end1-gray_to_cmyk
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_to_cmyk,@function
rgb_to_cmyk:                            # @rgb_to_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %r8d
	movb	%r8b, %cl
	notb	%cl
	movb	%cl, (%rsi)
	movzbl	1(%rdi), %r9d
	movb	%r9b, %dl
	notb	%dl
	movb	%dl, 1(%rsi)
	movb	2(%rdi), %al
	notb	%al
	movb	%al, 2(%rsi)
	movzbl	%cl, %r10d
	movzbl	%al, %r11d
	cmpl	%r11d, %r10d
	jb	.LBB2_2
# BB#1:                                 # %entry
	movb	%al, %cl
.LBB2_2:                                # %entry
	movzbl	%dl, %edi
	cmpl	%r11d, %edi
	jb	.LBB2_4
# BB#3:                                 # %entry
	movb	%al, %dl
.LBB2_4:                                # %entry
	cmpl	%r8d, %r9d
	jb	.LBB2_6
# BB#5:                                 # %entry
	movb	%dl, %cl
.LBB2_6:                                # %entry
	movb	%cl, 3(%rsi)
	retq
.Lfunc_end2:
	.size	rgb_to_cmyk, .Lfunc_end2-rgb_to_cmyk
	.cfi_endproc

	.align	16, 0x90
	.type	gray_to_rgb,@function
gray_to_rgb:                            # @gray_to_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movb	(%rdi), %al
	movb	%al, (%rsi)
	movb	(%rdi), %al
	movb	%al, 1(%rsi)
	movb	(%rdi), %al
	movb	%al, 2(%rsi)
	retq
.Lfunc_end3:
	.size	gray_to_rgb, .Lfunc_end3-gray_to_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI4_1:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI4_2:
	.quad	4592590756007337001     # double 0.11
.LCPI4_3:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI4_5:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_4:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	rgb_to_gray,@function
rgb_to_gray:                            # @rgb_to_gray
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI4_0(%rip), %xmm0
	movzbl	1(%rdi), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	.LCPI4_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movzbl	2(%rdi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI4_2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI4_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movb	$-1, %al
	jb	.LBB4_2
# BB#1:                                 # %entry
	xorl	%eax, %eax
.LBB4_2:                                # %entry
	movss	.LCPI4_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	ja	.LBB4_3
# BB#4:                                 # %entry
	movb	%al, %cl
	jmp	.LBB4_5
.LBB4_3:
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	.LCPI4_5(%rip), %xmm2
	cvttsd2si	%xmm2, %ecx
.LBB4_5:                                # %entry
	ucomiss	%xmm1, %xmm0
	ja	.LBB4_7
# BB#6:                                 # %entry
	movb	%al, %cl
.LBB4_7:                                # %entry
	movb	%cl, (%rsi)
	retq
.Lfunc_end4:
	.size	rgb_to_gray, .Lfunc_end4-rgb_to_gray
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI5_1:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI5_2:
	.quad	4592590756007337001     # double 0.11
.LCPI5_3:
	.quad	4535160216371617905     # double 1.5378700499807768E-5
.LCPI5_5:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_4:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	cmyk_to_gray,@function
cmyk_to_gray:                           # @cmyk_to_gray
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	xorl	$255, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI5_0(%rip), %xmm0
	movzbl	1(%rdi), %eax
	xorl	$255, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	.LCPI5_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movzbl	2(%rdi), %eax
	xorl	$255, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI5_2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movzbl	3(%rdi), %eax
	xorl	$255, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI5_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movb	$-1, %al
	jb	.LBB5_2
# BB#1:                                 # %entry
	xorl	%eax, %eax
.LBB5_2:                                # %entry
	movss	.LCPI5_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	ja	.LBB5_3
# BB#4:                                 # %entry
	movb	%al, %cl
	jmp	.LBB5_5
.LBB5_3:
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	.LCPI5_5(%rip), %xmm2
	cvttsd2si	%xmm2, %ecx
.LBB5_5:                                # %entry
	ucomiss	%xmm1, %xmm0
	ja	.LBB5_7
# BB#6:                                 # %entry
	movb	%al, %cl
.LBB5_7:                                # %entry
	movb	%cl, (%rsi)
	retq
.Lfunc_end5:
	.size	cmyk_to_gray, .Lfunc_end5-cmyk_to_gray
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_to_rgb,@function
cmyk_to_rgb:                            # @cmyk_to_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	movzbl	3(%rdi), %ecx
	addl	%eax, %ecx
	cmpl	$255, %ecx
	movl	$255, %eax
	cmovael	%eax, %ecx
	movl	$255, %edx
	subl	%ecx, %edx
	movb	%dl, (%rsi)
	movzbl	1(%rdi), %ecx
	movzbl	3(%rdi), %edx
	addl	%ecx, %edx
	cmpl	$255, %edx
	cmovael	%eax, %edx
	movl	$255, %ecx
	subl	%edx, %ecx
	movb	%cl, 1(%rsi)
	movzbl	2(%rdi), %ecx
	movzbl	3(%rdi), %edx
	addl	%ecx, %edx
	cmpl	$255, %edx
	cmovael	%eax, %edx
	subl	%edx, %eax
	movb	%al, 2(%rsi)
	retq
.Lfunc_end6:
	.size	cmyk_to_rgb, .Lfunc_end6-cmyk_to_rgb
	.cfi_endproc

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	gray_to_cmyk
	.quad	0
	.quad	rgb_to_cmyk
	.quad	0
	.size	.Lswitch.table, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
