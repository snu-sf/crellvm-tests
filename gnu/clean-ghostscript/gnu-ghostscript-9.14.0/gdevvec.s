	.text
	.file	"gdevvec.bc"
	.globl	gdev_vector_setflat
	.align	16, 0x90
	.type	gdev_vector_setflat,@function
gdev_vector_setflat:                    # @gdev_vector_setflat
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gdev_vector_setflat, .Lfunc_end0-gdev_vector_setflat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_2:
	.quad	4571153621781053440     # double 0.00390625
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_1:
	.long	1065353216              # float 1
	.text
	.globl	gdev_vector_dopath
	.align	16, 0x90
	.type	gdev_vector_dopath,@function
gdev_vector_dopath:                     # @gdev_vector_dopath
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp6:
	.cfi_def_cfa_offset 352
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
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %r15
	leaq	224(%rsp), %rsi
	movq	%r12, %rdi
	callq	gx_path_is_rectangular
	movl	%eax, %ebp
	movq	%r15, 88(%rsp)
	movl	%r14d, 96(%rsp)
	testq	%rbx, %rbx
	movsd	8800(%r15), %xmm0       # xmm0 = mem[0],zero
	movsd	8808(%r15), %xmm1       # xmm1 = mem[0],zero
	leaq	104(%rsp), %rdi
	je	.LBB1_2
# BB#1:                                 # %if.then.i
	movq	16(%rbx), %rax
	movq	%rax, 16(%rdi)
	movups	(%rbx), %xmm2
	movups	%xmm2, (%rdi)
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm3
	divsd	%xmm0, %xmm3
	divsd	%xmm1, %xmm2
	movapd	%xmm3, %xmm0
	movapd	%xmm2, %xmm1
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	jmp	.LBB1_3
.LBB1_2:                                # %if.else.i
	callq	gs_make_scaling
.LBB1_3:                                # %gdev_vector_dopath_init.exit
	movl	$1, 100(%rsp)
	testl	%ebp, %ebp
	je	.LBB1_18
# BB#4:                                 # %land.lhs.true
	testb	$2, %r14b
	je	.LBB1_6
# BB#5:                                 # %land.lhs.true
	cmpl	$3, %ebp
	jne	.LBB1_18
.LBB1_6:                                # %land.lhs.true.6
	testq	%rbx, %rbx
	je	.LBB1_11
# BB#7:                                 # %lor.lhs.false.9
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_9
	jp	.LBB1_9
# BB#8:                                 # %land.lhs.true.13
	movss	8(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_9
	jnp	.LBB1_11
.LBB1_9:                                # %lor.lhs.false.17
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_18
	jp	.LBB1_18
# BB#10:                                # %land.lhs.true.21
	movss	12(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_18
	jp	.LBB1_18
.LBB1_11:                               # %land.lhs.true.25
	movss	104(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_1(%rip), %xmm0
	jne	.LBB1_18
	jp	.LBB1_18
# BB#12:                                # %land.lhs.true.30
	movss	116(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_1(%rip), %xmm0
	jne	.LBB1_18
	jp	.LBB1_18
# BB#13:                                # %land.lhs.true.36
	movss	108(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_18
	jp	.LBB1_18
# BB#14:                                # %land.lhs.true.42
	movss	112(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_18
	jp	.LBB1_18
# BB#15:                                # %land.lhs.true.48
	movss	120(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_18
	jp	.LBB1_18
# BB#16:                                # %land.lhs.true.53
	movss	124(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_18
	jp	.LBB1_18
# BB#17:                                # %if.then
	leaq	104(%rsp), %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	224(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	228(%rsp), %xmm1
	leaq	240(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_point_transform_inverse
	xorps	%xmm0, %xmm0
	cvtsi2sdl	232(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	236(%rsp), %xmm1
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_point_transform_inverse
	movq	1736(%r15), %rax
	cvttsd2si	240(%rsp), %esi
	cvttsd2si	248(%rsp), %edx
	cvttsd2si	64(%rsp), %ecx
	cvttsd2si	72(%rsp), %r8d
	movq	%r15, %rdi
	movl	%r14d, %r9d
	callq	*96(%rax)
	testl	%eax, %eax
	jns	.LBB1_76
.LBB1_18:                               # %if.end.85
	movq	1736(%r15), %rax
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	*104(%rax)
	testl	%eax, %eax
	js	.LBB1_76
# BB#19:                                # %if.end.91
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	%r14d, %eax
	andl	$34, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	leaq	160(%rsp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gx_path_enum_init
	movl	%r14d, %eax
	andl	$16, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	%r14d, %eax
	movl	%r14d, 24(%rsp)         # 4-byte Spill
	andl	$3, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	leaq	64(%rsp), %rsi
                                        # implicit-def: R14D
                                        # implicit-def: EBP
                                        # implicit-def: R15D
                                        # implicit-def: R12D
	xorl	%ebx, %ebx
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_25:                               # %cleanup.227.thread192
                                        #   in Loop: Header=BB1_20 Depth=1
	leaq	160(%rsp), %r13
	leaq	64(%rsp), %rsi
	movq	%r15, %r12
	movq	56(%rsp), %r15          # 8-byte Reload
.LBB1_20:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_22 Depth 3
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	callq	gx_path_enum_next
	cvtsi2sdl	%r12d, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r15d, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movl	32(%rsp), %r13d         # 4-byte Reload
	movq	%r12, %r15
	movl	%eax, %r12d
.LBB1_21:                               # %sw
                                        #   Parent Loop BB1_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_22 Depth 3
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB1_51
	.align	16, 0x90
.LBB1_22:                               # %opt
                                        #   Parent Loop BB1_20 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$2, %r12d
	jne	.LBB1_49
# BB#23:                                # %if.then.99
                                        #   in Loop: Header=BB1_22 Depth=3
	testl	%r13d, %r13d
	je	.LBB1_24
# BB#26:                                # %if.end.102
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	cmpl	%r15d, %eax
	jne	.LBB1_34
# BB#27:                                # %if.then.108
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	%ebp, %r15d
	jne	.LBB1_42
# BB#28:                                # %land.lhs.true.114
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	%ecx, %r14d
	jle	.LBB1_29
# BB#32:                                # %coord_between.exit
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	jl	.LBB1_42
# BB#33:                                # %coord_between.exit
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB1_42
	jmp	.LBB1_31
	.align	16, 0x90
.LBB1_49:                               # %if.end.151
                                        #   in Loop: Header=BB1_22 Depth=3
	testl	%r13d, %r13d
	je	.LBB1_50
.LBB1_42:                               # %if.then.153
                                        #   in Loop: Header=BB1_22 Depth=3
	testl	%ebx, %ebx
	je	.LBB1_47
# BB#43:                                # %if.then.155
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	88(%rsp), %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	mulsd	%xmm2, %xmm1
	leaq	104(%rsp), %rdi
	leaq	240(%rsp), %rsi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB1_76
# BB#44:                                # %if.end.i
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	$0, 100(%rsp)
	je	.LBB1_46
# BB#45:                                # %if.then.7.i
                                        #   in Loop: Header=BB1_22 Depth=3
	movapd	240(%rsp), %xmm0
	leaq	128(%rsp), %rax
	movupd	%xmm0, (%rax)
	movl	$0, 100(%rsp)
.LBB1_46:                               # %gdev_vector_dopath_segment.exit
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	1736(%rbx), %rax
	movsd	240(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	248(%rsp), %xmm3        # xmm3 = mem[0],zero
	movl	96(%rsp), %esi
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movq	%rbx, %rdi
	callq	*112(%rax)
	movapd	240(%rsp), %xmm0
	leaq	144(%rsp), %rcx
	movupd	%xmm0, (%rcx)
	testl	%eax, %eax
	js	.LBB1_76
.LBB1_47:                               # %if.end.161
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	88(%rsp), %rbx
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	leaq	104(%rsp), %rdi
	leaq	240(%rsp), %rsi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB1_76
# BB#48:                                # %gdev_vector_dopath_segment.exit80
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	1736(%rbx), %rax
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	240(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	248(%rsp), %xmm3        # xmm3 = mem[0],zero
	movl	96(%rsp), %esi
	movq	%rbx, %rdi
	callq	*120(%rax)
	movapd	240(%rsp), %xmm0
	leaq	144(%rsp), %rcx
	movupd	%xmm0, (%rcx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	movq	56(%rsp), %r14          # 8-byte Reload
	movl	%r15d, %ebp
	movl	$0, %ebx
	jns	.LBB1_22
	jmp	.LBB1_76
	.align	16, 0x90
.LBB1_34:                               # %if.else
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	56(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, %ecx
	jne	.LBB1_42
# BB#35:                                # %if.else
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	%r14d, %ecx
	jne	.LBB1_42
# BB#36:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	%eax, %ebp
	jle	.LBB1_37
# BB#40:                                # %coord_between.exit67
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	%r15d, %ebp
	jl	.LBB1_42
# BB#41:                                # %coord_between.exit67
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	%eax, %r15d
	jl	.LBB1_42
	jmp	.LBB1_39
.LBB1_29:                               # %cond.true.i
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	jg	.LBB1_42
# BB#30:                                # %cond.true.i
                                        #   in Loop: Header=BB1_22 Depth=3
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%ecx, %eax
	jg	.LBB1_42
	jmp	.LBB1_31
.LBB1_37:                               # %cond.true.i.60
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	%r15d, %ebp
	jg	.LBB1_42
# BB#38:                                # %cond.true.i.60
                                        #   in Loop: Header=BB1_22 Depth=3
	cmpl	%eax, %r15d
	jg	.LBB1_42
	jmp	.LBB1_39
.LBB1_50:                               #   in Loop: Header=BB1_21 Depth=2
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB1_51:                               # %if.end.168
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	%r12d, %eax
	cmpl	$5, %r12d
	ja	.LBB1_52
# BB#53:                                # %if.end.168
                                        #   in Loop: Header=BB1_21 Depth=2
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_70:                               # %sw.bb.202
                                        #   in Loop: Header=BB1_21 Depth=2
	testl	%ebx, %ebx
	jne	.LBB1_71
# BB#72:                                # %if.end.205
                                        #   in Loop: Header=BB1_21 Depth=2
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_73
# BB#74:                                # %if.then.207
                                        #   in Loop: Header=BB1_21 Depth=2
	leaq	160(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	gx_path_enum_next
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB1_54
# BB#75:                                # %if.end.213
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	88(%rsp), %rdi
	movq	1736(%rdi), %rax
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	128(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	136(%rsp), %xmm3        # xmm3 = mem[0],zero
	movl	96(%rsp), %esi
	callq	*136(%rax)
	leaq	128(%rsp), %rcx
	movupd	(%rcx), %xmm0
	leaq	144(%rsp), %rcx
	movupd	%xmm0, (%rcx)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jns	.LBB1_21
	jmp	.LBB1_76
.LBB1_24:                               # %if.then.101
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	64(%rsp), %r15
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$1, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_25
.LBB1_52:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_25
.LBB1_71:                               #   in Loop: Header=BB1_20 Depth=1
	movl	%r13d, 32(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB1_25
.LBB1_73:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	xorl	%ebx, %ebx
	movl	$4, %r12d
	jmp	.LBB1_69
.LBB1_31:                               #   in Loop: Header=BB1_20 Depth=1
	movl	%r15d, %ebp
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	%r13d, 32(%rsp)         # 4-byte Spill
	jmp	.LBB1_25
.LBB1_39:                               #   in Loop: Header=BB1_20 Depth=1
	movl	%eax, %r15d
	movl	%r13d, 32(%rsp)         # 4-byte Spill
	jmp	.LBB1_25
.LBB1_63:                               # %sw.bb.192
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	testl	%ebx, %ebx
	je	.LBB1_68
# BB#64:                                # %if.then.194
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	88(%rsp), %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	mulsd	%xmm2, %xmm1
	leaq	104(%rsp), %rdi
	leaq	240(%rsp), %rsi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB1_76
# BB#65:                                # %if.end.i.122
                                        #   in Loop: Header=BB1_20 Depth=1
	cmpl	$0, 100(%rsp)
	je	.LBB1_67
# BB#66:                                # %if.then.7.i.124
                                        #   in Loop: Header=BB1_20 Depth=1
	movapd	240(%rsp), %xmm0
	leaq	128(%rsp), %rax
	movupd	%xmm0, (%rax)
	movl	$0, 100(%rsp)
.LBB1_67:                               # %gdev_vector_dopath_segment.exit134
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	1736(%rbx), %rax
	movsd	240(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	248(%rsp), %xmm3        # xmm3 = mem[0],zero
	movl	96(%rsp), %esi
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movq	%rbx, %rdi
	callq	*112(%rax)
	movapd	240(%rsp), %xmm0
	leaq	144(%rsp), %rcx
	movupd	%xmm0, (%rcx)
	testl	%eax, %eax
	js	.LBB1_76
.LBB1_68:                               # %if.end.200
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	64(%rsp), %rbp
	movq	%rbp, %r14
	shrq	$32, %r14
	xorl	%ebx, %ebx
	jmp	.LBB1_69
.LBB1_61:                               # %sw.bb.183
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	movq	64(%rsp), %rbp
	movq	%rbp, %r14
	shrq	$32, %r14
	cmpl	$1, 12(%rsp)            # 4-byte Folded Reload
	movl	$1, %r12d
	jne	.LBB1_69
# BB#62:                                #   in Loop: Header=BB1_20 Depth=1
	movl	%r13d, 32(%rsp)         # 4-byte Spill
	movl	$1, %ebx
	jmp	.LBB1_25
.LBB1_55:                               # %sw.bb.173
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	testl	%ebx, %ebx
	je	.LBB1_60
# BB#56:                                # %if.then.175
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	88(%rsp), %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	mulsd	%xmm2, %xmm1
	leaq	104(%rsp), %rdi
	leaq	240(%rsp), %rsi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB1_76
# BB#57:                                # %if.end.i.95
                                        #   in Loop: Header=BB1_20 Depth=1
	cmpl	$0, 100(%rsp)
	je	.LBB1_59
# BB#58:                                # %if.then.7.i.97
                                        #   in Loop: Header=BB1_20 Depth=1
	movapd	240(%rsp), %xmm0
	leaq	128(%rsp), %rax
	movupd	%xmm0, (%rax)
	movl	$0, 100(%rsp)
.LBB1_59:                               # %gdev_vector_dopath_segment.exit107
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	1736(%rbx), %rax
	movsd	240(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	248(%rsp), %xmm3        # xmm3 = mem[0],zero
	movl	96(%rsp), %esi
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movq	%rbx, %rdi
	callq	*112(%rax)
	movapd	240(%rsp), %xmm0
	leaq	144(%rsp), %rcx
	movupd	%xmm0, (%rcx)
	testl	%eax, %eax
	js	.LBB1_76
.LBB1_60:                               # %if.end.181
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	80(%rsp), %rbp
	movq	%rbp, %r14
	shrq	$32, %r14
	xorl	%ebx, %ebx
	movl	$3, %r12d
.LBB1_69:                               # %draw
                                        #   in Loop: Header=BB1_20 Depth=1
	leaq	88(%rsp), %rdi
	movl	%r12d, %esi
	leaq	64(%rsp), %rdx
	callq	gdev_vector_dopath_segment
	testl	%eax, %eax
	jns	.LBB1_25
	jmp	.LBB1_76
.LBB1_54:                               # %done
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	1736(%rdi), %rax
	movl	24(%rsp), %esi          # 4-byte Reload
	callq	*144(%rax)
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB1_76:                               # %cleanup.231
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gdev_vector_dopath, .Lfunc_end1-gdev_vector_dopath
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_54
	.quad	.LBB1_61
	.quad	.LBB1_63
	.quad	.LBB1_55
	.quad	.LBB1_70
	.quad	.LBB1_63

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gdev_vector_dopath_init
	.align	16, 0x90
	.type	gdev_vector_dopath_init,@function
gdev_vector_dopath_init:                # @gdev_vector_dopath_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rsi, (%rbx)
	movl	%edx, 8(%rbx)
	testq	%rcx, %rcx
	je	.LBB2_2
# BB#1:                                 # %if.then
	leaq	16(%rbx), %rdi
	movq	16(%rcx), %rax
	movq	%rax, 32(%rbx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 16(%rbx)
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	8800(%rsi), %xmm0
	divsd	8808(%rsi), %xmm1
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movsd	8800(%rsi), %xmm0       # xmm0 = mem[0],zero
	movsd	8808(%rsi), %xmm1       # xmm1 = mem[0],zero
	leaq	16(%rbx), %rdi
	callq	gs_make_scaling
.LBB2_3:                                # %if.end
	movl	$1, 12(%rbx)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gdev_vector_dopath_init, .Lfunc_end2-gdev_vector_dopath_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gdev_vector_dopath_segment
	.align	16, 0x90
	.type	gdev_vector_dopath_segment,@function
gdev_vector_dopath_segment:             # @gdev_vector_dopath_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r12, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rdi, %r12
	movl	$-1, %eax
	decl	%esi
	cmpl	$4, %esi
	ja	.LBB3_14
# BB#1:                                 # %entry
	movq	(%r12), %r14
	leaq	16(%r12), %r15
	jmpq	*.LJTI3_0(,%rsi,8)
.LBB3_7:                                # %sw.bb.17
	cvtsi2sdl	(%rbx), %xmm0
	movsd	.LCPI3_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvtsi2sdl	4(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB3_14
# BB#8:                                 # %if.end.31
	movq	1736(%r14), %rax
	movsd	56(%r12), %xmm0         # xmm0 = mem[0],zero
	movsd	64(%r12), %xmm1         # xmm1 = mem[0],zero
	movsd	(%rsp), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rsp), %xmm3          # xmm3 = mem[0],zero
	movl	8(%r12), %esi
	movq	%r14, %rdi
	callq	*120(%rax)
	movapd	(%rsp), %xmm0
	jmp	.LBB3_13
.LBB3_2:                                # %sw.bb
	cvtsi2sdl	(%rbx), %xmm0
	movsd	.LCPI3_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvtsi2sdl	4(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB3_14
# BB#3:                                 # %if.end
	cmpl	$0, 12(%r12)
	je	.LBB3_5
# BB#4:                                 # %if.then.7
	movapd	(%rsp), %xmm0
	movupd	%xmm0, 40(%r12)
	movl	$0, 12(%r12)
.LBB3_5:                                # %if.end.10
	movq	1736(%r14), %rax
	movsd	(%rsp), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rsp), %xmm3          # xmm3 = mem[0],zero
	movl	8(%r12), %esi
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movq	%r14, %rdi
	callq	*112(%rax)
	movapd	(%rsp), %xmm0
	jmp	.LBB3_13
.LBB3_9:                                # %sw.bb.45
	cvtsi2sdl	(%rbx), %xmm0
	movsd	.LCPI3_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvtsi2sdl	4(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB3_14
# BB#10:                                # %if.end.59
	xorps	%xmm0, %xmm0
	cvtsi2sdl	8(%rbx), %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	12(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB3_14
# BB#11:                                # %if.end.73
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16(%rbx), %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	20(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	movq	1736(%r14), %rax
	movsd	56(%r12), %xmm0         # xmm0 = mem[0],zero
	movsd	64(%r12), %xmm1         # xmm1 = mem[0],zero
	movsd	(%rsp), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rsp), %xmm3          # xmm3 = mem[0],zero
	movsd	16(%rsp), %xmm4         # xmm4 = mem[0],zero
	movsd	24(%rsp), %xmm5         # xmm5 = mem[0],zero
	movsd	32(%rsp), %xmm6         # xmm6 = mem[0],zero
	movsd	40(%rsp), %xmm7         # xmm7 = mem[0],zero
	movl	8(%r12), %esi
	movq	%r14, %rdi
	callq	*128(%rax)
	movapd	32(%rsp), %xmm0
	jmp	.LBB3_13
.LBB3_12:                               # %sw.bb.105
	movq	1736(%r14), %rax
	movsd	56(%r12), %xmm0         # xmm0 = mem[0],zero
	movsd	64(%r12), %xmm1         # xmm1 = mem[0],zero
	movsd	40(%r12), %xmm2         # xmm2 = mem[0],zero
	movsd	48(%r12), %xmm3         # xmm3 = mem[0],zero
	movl	8(%r12), %esi
	movq	%r14, %rdi
	callq	*136(%rax)
	movupd	40(%r12), %xmm0
.LBB3_13:                               # %cleanup
	movupd	%xmm0, 56(%r12)
.LBB3_14:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gdev_vector_dopath_segment, .Lfunc_end3-gdev_vector_dopath_segment
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_2
	.quad	.LBB3_7
	.quad	.LBB3_9
	.quad	.LBB3_12
	.quad	.LBB3_7

	.text
	.globl	gdev_vector_dorect
	.align	16, 0x90
	.type	gdev_vector_dorect,@function
gdev_vector_dorect:                     # @gdev_vector_dorect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 96
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	1736(%rbx), %rax
	movl	%r14d, %esi
	callq	*104(%rax)
	testl	%eax, %eax
	js	.LBB4_2
# BB#1:                                 # %if.end
	movl	%r14d, %ecx
	shrl	%ecx
	andl	$1, %ecx
	movl	%ebp, (%rsp)
	movl	%r12d, 4(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%r15d, 20(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%r12d, 12(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r15d, 28(%rsp)
	leaq	(%rsp), %rsi
	movl	$4, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	gdev_vector_write_polygon
	testl	%eax, %eax
	js	.LBB4_2
# BB#3:                                 # %if.end.6
	movq	1736(%rbx), %rax
	movq	144(%rax), %rax
	movq	%rbx, %rdi
	movl	%r14d, %esi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB4_2:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gdev_vector_dorect, .Lfunc_end4-gdev_vector_dorect
	.cfi_endproc

	.globl	gdev_vector_write_rectangle
	.align	16, 0x90
	.type	gdev_vector_write_rectangle,@function
gdev_vector_write_rectangle:            # @gdev_vector_write_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 48
	movl	%esi, (%rsp)
	movl	%edx, 4(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%r8d, 20(%rsp)
	cmpl	$0, 48(%rsp)
	movl	%esi, %r10d
	cmovel	%ecx, %r10d
	movl	%r8d, %eax
	cmovel	%edx, %eax
	cmovel	%esi, %ecx
	cmovel	%r8d, %edx
	movl	%r10d, 8(%rsp)
	movl	%eax, 12(%rsp)
	movl	%ecx, 24(%rsp)
	movl	%edx, 28(%rsp)
	leaq	(%rsp), %rsi
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	callq	gdev_vector_write_polygon
	addq	$40, %rsp
	retq
.Lfunc_end5:
	.size	gdev_vector_write_rectangle, .Lfunc_end5-gdev_vector_write_rectangle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.globl	gdev_vector_init
	.align	16, 0x90
	.type	gdev_vector_init,@function
gdev_vector_init:                       # @gdev_vector_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	5872(%rbx), %rdi
	movl	$gdev_vector_reset.state_initial, %esi
	movl	$1616, %edx             # imm = 0x650
	callq	memcpy
	leaq	7512(%rbx), %rdi
	callq	gx_hld_saved_color_init
	leaq	8144(%rbx), %rdi
	callq	gx_hld_saved_color_init
	movq	24(%rbx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 8776(%rbx)
	movq	%rax, 8784(%rbx)
	movaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00]
	movups	%xmm0, 8800(%rbx)
	movl	$0, 8816(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_black
	movq	%rax, 8832(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_white
	movq	%rax, 8840(%rbx)
	popq	%rbx
	retq
.Lfunc_end6:
	.size	gdev_vector_init, .Lfunc_end6-gdev_vector_init
	.cfi_endproc

	.globl	gdev_vector_reset
	.align	16, 0x90
	.type	gdev_vector_reset,@function
gdev_vector_reset:                      # @gdev_vector_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	5872(%rbx), %rdi
	movl	$gdev_vector_reset.state_initial, %esi
	movl	$1616, %edx             # imm = 0x650
	callq	memcpy
	leaq	7512(%rbx), %rdi
	callq	gx_hld_saved_color_init
	leaq	8144(%rbx), %rdi
	callq	gx_hld_saved_color_init
	movq	24(%rbx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 8776(%rbx)
	movq	%rax, 8784(%rbx)
	popq	%rbx
	retq
.Lfunc_end7:
	.size	gdev_vector_reset, .Lfunc_end7-gdev_vector_reset
	.cfi_endproc

	.globl	gdev_vector_open_file_options
	.align	16, 0x90
	.type	gdev_vector_open_file_options,@function
gdev_vector_open_file_options:          # @gdev_vector_open_file_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 48
.Ltmp47:
	.cfi_offset %rbx, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	%r15d, %ebp
	notl	%ebp
	andl	$1, %ebp
	movl	$-1, %eax
	testb	$2, %r15b
	jne	.LBB8_2
# BB#1:                                 # %if.then
	leaq	1744(%rbx), %rsi
	leaq	5840(%rbx), %r8
	movl	$1, %ecx
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	gx_device_open_output_file
.LBB8_2:                                # %if.end
	testb	$6, %r15b
	je	.LBB8_5
# BB#3:                                 # %if.end
	testl	%eax, %eax
	jns	.LBB8_5
# BB#4:                                 # %if.then.5
	leaq	1744(%rbx), %rsi
	leaq	5840(%rbx), %r8
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	gx_device_open_output_file
.LBB8_5:                                # %if.end.10
	testl	%eax, %eax
	js	.LBB8_26
# BB#6:                                 # %land.lhs.true.12
	movq	1680(%rbx), %rax
	testq	%rax, %rax
	je	.LBB8_8
# BB#7:                                 # %if.end.18
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB8_26
.LBB8_8:                                # %if.end.21
	movq	1728(%rbx), %rdi
	movl	$.L.str.2, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, 5856(%rbx)
	testq	%rax, %rax
	je	.LBB8_19
# BB#9:                                 # %lor.lhs.false
	movq	1728(%rbx), %rdi
	movl	$.L.str.3, %esi
	callq	s_alloc
	movq	%rax, 5848(%rbx)
	testq	%rax, %rax
	je	.LBB8_19
# BB#10:                                # %lor.lhs.false.29
	testb	$8, %r15b
	je	.LBB8_13
# BB#11:                                # %land.lhs.true.32
	movq	1728(%rbx), %rdi
	movl	$st_device_bbox, %esi
	movl	$.L.str.4, %edx
	callq	*80(%rdi)
	movq	%rax, 8824(%rbx)
	testq	%rax, %rax
	je	.LBB8_19
# BB#12:                                # %land.lhs.true.32.if.end.73_crit_edge
	movq	5848(%rbx), %rax
.LBB8_13:                               # %if.end.73
	movl	%r14d, 5864(%rbx)
	movq	5840(%rbx), %rsi
	movq	5856(%rbx), %rdx
	movq	%rax, %rdi
	movl	%r14d, %ecx
	callq	swrite_file
	movl	%r15d, 5868(%rbx)
	movq	5848(%rbx), %rax
	movq	208(%rax), %rcx
	movq	%rcx, 216(%rax)
	movq	8824(%rbx), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB8_26
# BB#14:                                # %if.then.85
	movq	1728(%rbx), %rdx
	xorl	%esi, %esi
	callq	gx_device_bbox_init
	movq	8824(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_16
# BB#15:                                # %do.body.91
	incq	56(%rdi)
.LBB8_16:                               # %do.end.98
	movq	(%rsp), %rax
	movq	%rax, 1104(%rdi)
	testq	%rax, %rax
	je	.LBB8_18
# BB#17:                                # %do.body.106
	incq	200(%rax)
.LBB8_18:                               # %do.end.119
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	callq	gx_device_set_resolution
	movq	1152(%rbx), %rax
	movq	8824(%rbx), %rdi
	movq	%rax, 1152(%rdi)
	callq	*1144(%rdi)
	xorl	%eax, %eax
	jmp	.LBB8_26
.LBB8_19:                               # %if.then.38
	movq	8824(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_21
# BB#20:                                # %if.then.41
	movq	1728(%rbx), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB8_21:                               # %if.end.46
	movq	$0, 8824(%rbx)
	movq	5848(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_23
# BB#22:                                # %if.then.50
	movq	1728(%rbx), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB8_23:                               # %if.end.56
	movq	$0, 5848(%rbx)
	movq	5856(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_25
# BB#24:                                # %if.then.60
	movq	1728(%rbx), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
.LBB8_25:                               # %if.end.66
	movq	$0, 5856(%rbx)
	leaq	1744(%rbx), %rsi
	movq	5840(%rbx), %rdx
	movq	%rbx, %rdi
	callq	gx_device_close_output_file
	movq	$0, 5840(%rbx)
	movl	$-25, %eax
.LBB8_26:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gdev_vector_open_file_options, .Lfunc_end8-gdev_vector_open_file_options
	.cfi_endproc

	.globl	gdev_vector_stream
	.align	16, 0x90
	.type	gdev_vector_stream,@function
gdev_vector_stream:                     # @gdev_vector_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 8816(%rbx)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	$1, 8816(%rbx)
.LBB9_2:                                # %if.end
	movq	5848(%rbx), %rax
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gdev_vector_stream, .Lfunc_end9-gdev_vector_stream
	.cfi_endproc

	.globl	gdev_vector_update_log_op
	.align	16, 0x90
	.type	gdev_vector_update_log_op,@function
gdev_vector_update_log_op:              # @gdev_vector_update_log_op
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	6084(%rbx), %edx
	xorl	%eax, %eax
	cmpl	%ebp, %edx
	je	.LBB10_3
# BB#1:                                 # %if.then
	xorl	%ebp, %edx
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*56(%rax)
	testl	%eax, %eax
	js	.LBB10_3
# BB#2:                                 # %if.end
	movl	%ebp, 6084(%rbx)
	xorl	%eax, %eax
.LBB10_3:                               # %cleanup.6
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gdev_vector_update_log_op, .Lfunc_end10-gdev_vector_update_log_op
	.cfi_endproc

	.globl	gdev_vector_update_fill_color
	.align	16, 0x90
	.type	gdev_vector_update_fill_color,@function
gdev_vector_update_fill_color:          # @gdev_vector_update_fill_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp64:
	.cfi_def_cfa_offset 704
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	leaq	7512(%r12), %r14
	movq	1736(%r12), %rax
	movq	72(%rax), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	callq	*64(%rax)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	cmoveq	%r13, %rbx
	leaq	16(%rsp), %rbp
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	gx_hld_save_color
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB11_3
# BB#1:                                 # %if.end.i
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*8(%rsp)                # 8-byte Folded Reload
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB11_3
# BB#2:                                 # %if.end.6.i
	leaq	16(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r14, %rdi
	callq	memcpy
	xorl	%r13d, %r13d
.LBB11_3:                               # %gdev_vector_update_color.exit
	movl	%r13d, %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gdev_vector_update_fill_color, .Lfunc_end11-gdev_vector_update_fill_color
	.cfi_endproc

	.globl	gdev_vector_prepare_fill
	.align	16, 0x90
	.type	gdev_vector_prepare_fill,@function
gdev_vector_prepare_fill:               # @gdev_vector_prepare_fill
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
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp77:
	.cfi_def_cfa_offset 704
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movss	12(%r14), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	6168(%rbx), %xmm0
	jne	.LBB12_1
	jnp	.LBB12_3
.LBB12_1:                               # %if.then
	movq	1736(%rbx), %rax
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	*48(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB12_10
# BB#2:                                 # %if.end
	movl	12(%r14), %eax
	movl	%eax, 6168(%rbx)
.LBB12_3:                               # %if.end.10
	movl	212(%rbp), %r14d
	leaq	7512(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	1736(%rbx), %rax
	movq	72(%rax), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	*64(%rax)
	xorl	%r12d, %r12d
	testl	%eax, %eax
	cmoveq	%r12, %rbp
	leaq	16(%rsp), %r13
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	gx_hld_save_color
	movq	%r13, %rdi
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB12_7
# BB#4:                                 # %if.end.i.i.i
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	*(%rsp)                 # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB12_5
# BB#6:                                 # %if.end.6.i.i.i
	leaq	16(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r13, %rdi
	callq	memcpy
.LBB12_7:                               # %if.end.i
	movl	6084(%rbx), %edx
	cmpl	%r14d, %edx
	je	.LBB12_10
# BB#8:                                 # %if.then.i
	xorl	%r14d, %edx
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*56(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB12_10
# BB#9:                                 # %if.end.i.10
	movl	%r14d, 6084(%rbx)
	xorl	%r12d, %r12d
	jmp	.LBB12_10
.LBB12_5:                               # %gdev_vector_update_fill_color.exit.thread5.i
	movl	%eax, %r12d
.LBB12_10:                              # %return
	movl	%r12d, %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gdev_vector_prepare_fill, .Lfunc_end12-gdev_vector_prepare_fill
	.cfi_endproc

	.globl	gdev_vector_prepare_stroke
	.align	16, 0x90
	.type	gdev_vector_prepare_stroke,@function
gdev_vector_prepare_stroke:             # @gdev_vector_prepare_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp90:
	.cfi_def_cfa_offset 736
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%r15, %r15
	je	.LBB13_42
# BB#1:                                 # %if.then
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	96(%r15), %r13d
	movss	100(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 40(%rsp)         # 4-byte Spill
	movss	24(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	ucomiss	5972(%rbx), %xmm1
	jne	.LBB13_7
	jp	.LBB13_7
# BB#2:                                 # %lor.lhs.false
	cmpl	5968(%rbx), %r13d
	jne	.LBB13_7
# BB#3:                                 # %lor.lhs.false.20
	testl	%r13d, %r13d
	je	.LBB13_27
# BB#4:                                 # %for.body.lr.ph.i
	movq	7488(%rbx), %rax
	movq	88(%r15), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB13_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rax,%rdx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movss	(%rcx,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm2
	jne	.LBB13_7
	jnp	.LBB13_5
.LBB13_7:                               # %if.then.26
	movss	%xmm3, 12(%rsp)         # 4-byte Spill
	movq	24(%rbx), %rax
	movq	(%rax), %rdi
	leal	(,%r13,4), %esi
	movl	$.L.str.5, %edx
	movapd	%xmm0, 16(%rsp)         # 16-byte Spill
	callq	*64(%rdi)
	movaps	16(%rsp), %xmm3         # 16-byte Reload
	movq	%rax, %rbp
	testl	%r13d, %r13d
	jg	.LBB13_8
	jmp	.LBB13_23
	.align	16, 0x90
.LBB13_5:                               # %for.cond.i
                                        #   in Loop: Header=BB13_6 Depth=1
	incq	%rdx
	cmpl	%r13d, %edx
	jb	.LBB13_6
	jmp	.LBB13_27
.LBB13_8:                               # %for.body.lr.ph
	movabsq	$8589934588, %r8        # imm = 0x1FFFFFFFC
	movq	88(%r15), %r9
	leal	-1(%r13), %edx
	leaq	1(%rdx), %rdi
	xorl	%esi, %esi
	movq	%rdi, %rcx
	andq	%r8, %rcx
	je	.LBB13_17
# BB#9:                                 # %vector.memcheck
	leaq	(%r9,%rdx,4), %rax
	xorl	%esi, %esi
	cmpq	%rax, %rbp
	ja	.LBB13_11
# BB#10:                                # %vector.memcheck
	leaq	(%rbp,%rdx,4), %rax
	cmpq	%rax, %r9
	jbe	.LBB13_17
.LBB13_11:                              # %vector.ph
	movaps	%xmm3, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	leaq	1(%rdx), %rsi
	andq	%r8, %rsi
	addq	$-4, %rsi
	movq	%rsi, %rax
	shrq	$2, %rax
	xorl	%r10d, %r10d
	btq	$2, %rsi
	jb	.LBB13_13
# BB#12:                                # %vector.body.prol
	cvtps2pd	(%r9), %xmm1
	cvtps2pd	8(%r9), %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm2, %xmm2
	movlpd	%xmm1, (%rbp)
	movlpd	%xmm2, 8(%rbp)
	movl	$4, %r10d
.LBB13_13:                              # %vector.ph.split
	testq	%rax, %rax
	je	.LBB13_16
# BB#14:                                # %vector.ph.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%r10, %rdx
	leaq	24(%r9,%r10,4), %rsi
	leaq	24(%rbp,%r10,4), %rax
	.align	16, 0x90
.LBB13_15:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-24(%rsi), %xmm1
	cvtps2pd	-16(%rsi), %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm2, %xmm2
	movlpd	%xmm1, -24(%rax)
	movlpd	%xmm2, -16(%rax)
	cvtps2pd	-8(%rsi), %xmm1
	cvtps2pd	(%rsi), %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	cvtpd2ps	%xmm1, %xmm1
	cvtpd2ps	%xmm2, %xmm2
	movlpd	%xmm1, -8(%rax)
	movlpd	%xmm2, (%rax)
	addq	$32, %rsi
	addq	$32, %rax
	addq	$-8, %rdx
	jne	.LBB13_15
.LBB13_16:
	movq	%rcx, %rsi
.LBB13_17:                              # %middle.block
	cmpq	%rsi, %rdi
	je	.LBB13_23
# BB#18:                                # %for.body.preheader
	leal	1(%r13), %ecx
	movl	%esi, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB13_20
# BB#19:                                # %for.body.prol
	movss	(%r9,%rsi,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbp,%rsi,4)
	orq	$1, %rsi
.LBB13_20:                              # %for.body.preheader.split
	cmpl	%eax, %r13d
	je	.LBB13_23
# BB#21:                                # %for.body.preheader.split.split
	movl	%r13d, %eax
	subl	%esi, %eax
	leaq	4(%r9,%rsi,4), %rcx
	leaq	4(%rbp,%rsi,4), %rdx
	.align	16, 0x90
.LBB13_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rdx)
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdx)
	addq	$8, %rcx
	addq	$8, %rdx
	addl	$-2, %eax
	jne	.LBB13_22
.LBB13_23:                              # %for.end
	movq	1736(%rbx), %rax
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	*40(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_51
# BB#24:                                # %if.end
	movq	7488(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB13_26
# BB#25:                                # %if.then.50
	movq	24(%rbx), %rax
	movq	(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
.LBB13_26:                              # %cleanup.thread
	movq	%rbp, 7488(%rbx)
	movl	%r13d, 7496(%rbx)
	movl	%r13d, 5968(%rbx)
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 5972(%rbx)
	movapd	16(%rsp), %xmm0         # 16-byte Reload
	movss	12(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
.LBB13_27:                              # %if.end.69
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	leaq	5896(%rbx), %rbp
	ucomiss	(%rbp), %xmm0
	jne	.LBB13_28
	jnp	.LBB13_30
.LBB13_28:                              # %if.then.75
	movq	1736(%rbx), %rax
	movss	%xmm0, 40(%rsp)         # 4-byte Spill
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	*8(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_51
# BB#29:                                # %cleanup.89.thread
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rbp)
.LBB13_30:                              # %if.end.92
	movss	48(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	5920(%rbx), %xmm0
	jne	.LBB13_31
	jnp	.LBB13_33
.LBB13_31:                              # %if.then.99
	movq	1736(%rbx), %rax
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	*32(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_51
# BB#32:                                # %cleanup.117.thread
	movss	48(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbp, %rdi
	callq	gx_set_miter_limit
.LBB13_33:                              # %if.end.120
	movl	28(%r15), %esi
	cmpl	5900(%rbx), %esi
	je	.LBB13_36
# BB#34:                                # %if.then.127
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_51
# BB#35:                                # %cleanup.142.thread
	movl	28(%r15), %eax
	movl	%eax, 5900(%rbx)
.LBB13_36:                              # %if.end.145
	movl	40(%r15), %esi
	cmpl	5912(%rbx), %esi
	je	.LBB13_39
# BB#37:                                # %if.then.152
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_51
# BB#38:                                # %cleanup.167.thread
	movl	40(%r15), %eax
	movl	%eax, 5912(%rbx)
.LBB13_39:                              # %if.end.170
	movl	212(%r15), %ebp
	movl	6084(%rbx), %edx
	cmpl	%ebp, %edx
	movq	(%rsp), %rcx            # 8-byte Reload
	je	.LBB13_42
# BB#40:                                # %if.then.i
	movq	%rcx, %r13
	xorl	%ebp, %edx
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*56(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_51
# BB#41:                                # %if.end.i.119
	movl	%ebp, 6084(%rbx)
	movq	%r13, %rcx
.LBB13_42:                              # %if.end.185
	testq	%r12, %r12
	je	.LBB13_46
# BB#43:                                # %if.then.187
	movss	(%r12), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	6168(%rbx), %xmm0
	jne	.LBB13_44
	jnp	.LBB13_46
.LBB13_44:                              # %if.then.192
	movq	%rcx, %rbp
	movq	1736(%rbx), %rax
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	*48(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_51
# BB#45:                                # %cleanup.206.thread
	movl	(%r12), %eax
	movl	%eax, 6168(%rbx)
	movq	%rbp, %rcx
.LBB13_46:                              # %if.end.210
	xorl	%r14d, %r14d
	testq	%rcx, %rcx
	je	.LBB13_51
# BB#47:                                # %if.then.212
	leaq	8144(%rbx), %r12
	movq	1736(%rbx), %rax
	movq	80(%rax), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rcx, %r13
	movq	%r13, %rdx
	callq	*64(%rax)
	xorl	%r14d, %r14d
	testl	%eax, %eax
	cmoveq	%r14, %r15
	leaq	48(%rsp), %rbp
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	gx_hld_save_color
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB13_51
# BB#48:                                # %if.end.i
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	*40(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB13_49
# BB#50:                                # %if.end.6.i
	leaq	48(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r12, %rdi
	callq	memcpy
	jmp	.LBB13_51
.LBB13_49:                              # %gdev_vector_update_color.exit.thread155
	movl	%eax, %r14d
.LBB13_51:                              # %return
	movl	%r14d, %eax
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gdev_vector_prepare_stroke, .Lfunc_end13-gdev_vector_prepare_stroke
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI14_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI14_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gdev_vector_stroke_scaling
	.align	16, 0x90
	.type	gdev_vector_stroke_scaling,@function
gdev_vector_stroke_scaling:             # @gdev_vector_stroke_scaling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp100:
	.cfi_def_cfa_offset 80
.Ltmp101:
	.cfi_offset %rbx, -32
.Ltmp102:
	.cfi_offset %r14, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movss	136(%rsi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB14_3
	jp	.LBB14_3
# BB#1:                                 # %land.lhs.true
	movss	140(%rsi), %xmm4        # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm4
	jne	.LBB14_3
	jp	.LBB14_3
# BB#2:                                 # %if.then
	movss	132(%rsi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	144(%rsi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm0
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	cvtps2pd	%xmm0, %xmm5
	andpd	.LCPI14_1(%rip), %xmm5
	movapd	%xmm5, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	xorl	%ebp, %ebp
	ucomisd	%xmm0, %xmm5
	jne	.LBB14_13
	jnp	.LBB14_14
	jmp	.LBB14_13
.LBB14_3:                               # %if.else
	movss	132(%rsi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	144(%rsi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm3
	jne	.LBB14_5
	jp	.LBB14_5
# BB#4:                                 # %if.else
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm2
	jne	.LBB14_5
	jnp	.LBB14_11
.LBB14_5:                               # %if.else.35
	ucomiss	%xmm2, %xmm3
	jne	.LBB14_7
	jp	.LBB14_7
# BB#6:                                 # %land.lhs.true.42
	movss	140(%rsi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI14_0(%rip), %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB14_7
	jnp	.LBB14_9
.LBB14_7:                               # %lor.lhs.false
	movaps	.LCPI14_0(%rip), %xmm0  # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm0
	movss	140(%rsi), %xmm4        # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm3
	jne	.LBB14_13
	jp	.LBB14_13
# BB#8:                                 # %lor.lhs.false
	ucomiss	%xmm4, %xmm1
	jne	.LBB14_13
	jp	.LBB14_13
.LBB14_9:                               # %if.end.79.thread52
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	callq	sqrt
	xorl	%ebp, %ebp
	ucomisd	%xmm0, %xmm0
	jnp	.LBB14_14
# BB#10:                                # %call.sqrt
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
	jmp	.LBB14_14
.LBB14_11:                              # %if.end.79
	movss	140(%rsi), %xmm4        # xmm4 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm0
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	cvtps2pd	%xmm0, %xmm5
	andpd	.LCPI14_1(%rip), %xmm5
	movapd	%xmm5, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	ucomisd	%xmm0, %xmm5
	jne	.LBB14_13
	jp	.LBB14_13
	jmp	.LBB14_12
.LBB14_13:                              # %if.then.80
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm3, %xmm5
	movsd	8800(%rdi), %xmm6       # xmm6 = mem[0],zero
	movsd	8808(%rdi), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm6, %xmm5
	movsd	%xmm5, 16(%rsp)         # 8-byte Spill
	movapd	%xmm5, %xmm0
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	divsd	%xmm6, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	callq	fabs
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	mulsd	.LCPI14_2(%rip), %xmm0
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rbx)
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rbx)
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 8(%rbx)
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 12(%rbx)
	movq	$0, 16(%rbx)
	movl	$1, %ebp
	jmp	.LBB14_14
.LBB14_12:
	xorl	%ebp, %ebp
.LBB14_14:                              # %if.end.122
	movsd	%xmm0, (%r14)
	movl	%ebp, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gdev_vector_stroke_scaling, .Lfunc_end14-gdev_vector_stroke_scaling
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gdev_vector_write_polygon
	.align	16, 0x90
	.type	gdev_vector_write_polygon,@function
gdev_vector_write_polygon:              # @gdev_vector_write_polygon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp107:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 96
.Ltmp111:
	.cfi_offset %rbx, -56
.Ltmp112:
	.cfi_offset %r12, -48
.Ltmp113:
	.cfi_offset %r13, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, %r14d
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB15_2
# BB#1:                                 # %land.lhs.true
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*104(%rax)
	testl	%eax, %eax
	js	.LBB15_14
.LBB15_2:                               # %if.end
	testl	%r12d, %r12d
	je	.LBB15_12
# BB#3:                                 # %if.then.3
	cvtsi2sdl	(%r13), %xmm2
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	divsd	8800(%rbx), %xmm2
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	cvtsi2sdl	4(%r13), %xmm3
	mulsd	%xmm0, %xmm3
	divsd	8808(%rbx), %xmm3
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movq	1736(%rbx), %rax
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB15_14
# BB#4:                                 # %for.cond.preheader
	cmpl	$2, %r12d
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jb	.LBB15_9
# BB#5:                                 # %for.body.lr.ph
	movl	%r12d, %r12d
	movl	$2, %ebp
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB15_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	1736(%rbx), %rax
	cvtsi2sdl	-8(%r13,%rbp,8), %xmm4
	movsd	.LCPI15_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm4
	divsd	8800(%rbx), %xmm4
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	cvtsi2sdl	-4(%r13,%rbp,8), %xmm3
	mulsd	%xmm2, %xmm3
	divsd	8808(%rbx), %xmm3
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	movapd	%xmm4, %xmm2
	movl	%r15d, %esi
	callq	*120(%rax)
	testl	%eax, %eax
	js	.LBB15_7
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB15_6 Depth=1
	cmpq	%r12, %rbp
	leaq	1(%rbp), %rbp
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jb	.LBB15_6
	jmp	.LBB15_9
.LBB15_7:
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB15_9:                               # %if.end.39
	testl	%r14d, %r14d
	je	.LBB15_12
# BB#10:                                # %if.end.39
	testl	%eax, %eax
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	js	.LBB15_12
# BB#11:                                # %if.then.43
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*136(%rax)
.LBB15_12:                              # %if.end.47
	testl	%r15d, %r15d
	je	.LBB15_14
# BB#13:                                # %if.end.47
	testl	%eax, %eax
	js	.LBB15_14
# BB#15:                                # %cond.true
	movq	1736(%rbx), %rax
	movq	144(%rax), %rax
	movq	%rbx, %rdi
	movl	%r15d, %esi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB15_14:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gdev_vector_write_polygon, .Lfunc_end15-gdev_vector_write_polygon
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gdev_vector_write_clip_path
	.align	16, 0x90
	.type	gdev_vector_write_clip_path,@function
gdev_vector_write_clip_path:            # @gdev_vector_write_clip_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 144
.Ltmp123:
	.cfi_offset %rbx, -48
.Ltmp124:
	.cfi_offset %r12, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB16_1
# BB#2:                                 # %if.else
	cmpl	$0, 280(%rsi)
	je	.LBB16_6
# BB#3:                                 # %if.then.1
	movq	1736(%r15), %rax
	movq	88(%rax), %rax
	movl	$4, %edx
	cmpl	$0, 232(%rsi)
	jle	.LBB16_5
# BB#4:                                 # %select.mid
	movl	$12, %edx
.LBB16_5:                               # %select.end
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	*%rax
	jmp	.LBB16_19
.LBB16_1:                               # %if.then
	movl	$0, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	832(%r15), %eax
	movl	%eax, 52(%rsp)
	movl	836(%r15), %eax
	movl	%eax, 44(%rsp)
	movq	$0, 24(%rsp)
	leaq	24(%rsp), %r14
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.3
	movq	%rsi, %rdi
	callq	gx_cpath_list
	movq	40(%rax), %r14
	testq	%r14, %r14
	cmoveq	%rax, %r14
.LBB16_7:                               # %if.end.8
	movq	1736(%r15), %rax
	movl	$4, %esi
	movq	%r15, %rdi
	callq	*104(%rax)
	jmp	.LBB16_8
	.align	16, 0x90
.LBB16_16:                              # %for.inc
                                        #   in Loop: Header=BB16_8 Depth=1
	movq	(%r14), %r14
.LBB16_8:                               # %if.end.8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_13 Depth 2
	testl	%eax, %eax
	setns	%cl
	testq	%r14, %r14
	je	.LBB16_17
# BB#9:                                 # %if.end.8
                                        #   in Loop: Header=BB16_8 Depth=1
	testl	%eax, %eax
	js	.LBB16_17
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	24(%r14), %ecx
	movl	28(%r14), %ebx
	cmpl	%ecx, %ebx
	jle	.LBB16_16
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	16(%r14), %r12d
	movl	20(%r14), %edx
	cmpl	%r12d, %edx
	jle	.LBB16_16
# BB#12:                                # %if.then.19
                                        #   in Loop: Header=BB16_8 Depth=1
	shll	$8, %ecx
	shll	$8, %r12d
	shll	$8, %ebx
	shll	$8, %edx
	movl	%ecx, 64(%rsp)
	movl	%r12d, 68(%rsp)
	movl	%ebx, 80(%rsp)
	movl	%edx, 84(%rsp)
	movl	%ebx, 72(%rsp)
	movl	%r12d, 76(%rsp)
	movl	%ecx, 88(%rsp)
	movl	%edx, 92(%rsp)
	cvtsi2sdl	%ecx, %xmm2
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	divsd	8800(%r15), %xmm2
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	cvtsi2sdl	%r12d, %xmm3
	mulsd	%xmm0, %xmm3
	divsd	8808(%r15), %xmm3
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movq	1736(%r15), %rax
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	*112(%rax)
	testl	%eax, %eax
	movl	$2, %ebp
	jns	.LBB16_13
	jmp	.LBB16_16
	.align	16, 0x90
.LBB16_15:                              # %for.body.i.for.body.i_crit_edge
                                        #   in Loop: Header=BB16_13 Depth=2
	movl	64(%rsp,%rbp,8), %ebx
	movl	68(%rsp,%rbp,8), %r12d
	incq	%rbp
.LBB16_13:                              # %for.body.i
                                        #   Parent Loop BB16_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	1736(%r15), %rax
	cvtsi2sdl	%ebx, %xmm4
	movsd	.LCPI16_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm4
	divsd	8800(%r15), %xmm4
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	cvtsi2sdl	%r12d, %xmm3
	mulsd	%xmm2, %xmm3
	divsd	8808(%r15), %xmm3
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rdi
	movapd	%xmm4, %xmm2
	callq	*120(%rax)
	cmpq	$3, %rbp
	ja	.LBB16_16
# BB#14:                                # %for.body.i
                                        #   in Loop: Header=BB16_13 Depth=2
	testl	%eax, %eax
	jns	.LBB16_15
	jmp	.LBB16_16
.LBB16_17:                              # %for.end
	testb	%cl, %cl
	je	.LBB16_19
# BB#18:                                # %if.then.31
	movq	1736(%r15), %rax
	movl	$4, %esi
	movq	%r15, %rdi
	callq	*144(%rax)
.LBB16_19:                              # %cleanup
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gdev_vector_write_clip_path, .Lfunc_end16-gdev_vector_write_clip_path
	.cfi_endproc

	.globl	gdev_vector_update_clip_path
	.align	16, 0x90
	.type	gdev_vector_update_clip_path,@function
gdev_vector_update_clip_path:           # @gdev_vector_update_clip_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp130:
	.cfi_def_cfa_offset 32
.Ltmp131:
	.cfi_offset %rbx, -24
.Ltmp132:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB17_4
# BB#1:                                 # %if.then
	movq	296(%rbx), %rcx
	xorl	%eax, %eax
	cmpq	8784(%r14), %rcx
	je	.LBB17_8
# BB#2:                                 # %if.then.1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB17_8
# BB#3:                                 # %if.end
	movq	296(%rbx), %rax
	jmp	.LBB17_7
.LBB17_4:                               # %if.else
	movq	8784(%r14), %rcx
	xorl	%eax, %eax
	cmpq	8776(%r14), %rcx
	je	.LBB17_8
# BB#5:                                 # %if.then.9
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB17_8
# BB#6:                                 # %if.end.14
	movq	8776(%r14), %rax
.LBB17_7:                               # %return
	movq	%rax, 8784(%r14)
	xorl	%eax, %eax
.LBB17_8:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	gdev_vector_update_clip_path, .Lfunc_end17-gdev_vector_update_clip_path
	.cfi_endproc

	.globl	gdev_vector_close_file
	.align	16, 0x90
	.type	gdev_vector_close_file,@function
gdev_vector_close_file:                 # @gdev_vector_close_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp135:
	.cfi_def_cfa_offset 32
.Ltmp136:
	.cfi_offset %rbx, -32
.Ltmp137:
	.cfi_offset %r14, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	5840(%rbx), %r14
	movq	7488(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	24(%rbx), %rax
	movq	(%rax), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	movq	$0, 7488(%rbx)
.LBB18_2:                               # %if.end
	movq	8824(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB18_7
# BB#3:                                 # %do.body
	movq	1104(%rsi), %rax
	testq	%rax, %rax
	je	.LBB18_6
# BB#4:                                 # %do.end
	decq	200(%rax)
	jne	.LBB18_6
# BB#5:                                 # %do.end.25
	movq	208(%rax), %rdi
	movl	$.L.str.8, %edx
	movq	%rax, %rsi
	callq	*216(%rax)
	movq	8824(%rbx), %rsi
	movq	$0, 1104(%rsi)
.LBB18_6:                               # %do.end.45
	movq	$0, 1104(%rsi)
	movq	1728(%rbx), %rdi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	movq	$0, 8824(%rbx)
.LBB18_7:                               # %if.end.53
	movq	5848(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB18_9
# BB#8:                                 # %if.then.55
	callq	sclose
	movq	1728(%rbx), %rdi
	movq	5848(%rbx), %rsi
	movl	$.L.str.10, %edx
	callq	*24(%rdi)
	movq	$0, 5848(%rbx)
	movq	1728(%rbx), %rdi
	movq	5856(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	$0, 5856(%rbx)
.LBB18_9:                               # %if.end.68
	movq	$0, 5840(%rbx)
	testq	%r14, %r14
	je	.LBB18_11
# BB#10:                                # %if.then.71
	movq	%r14, %rdi
	callq	ferror
	movl	%eax, %ebp
	leaq	1744(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gx_device_close_output_file
	movl	%eax, %ecx
	movl	$-12, %eax
	orl	%ebp, %ecx
	jne	.LBB18_12
.LBB18_11:                              # %if.end.77
	xorl	%eax, %eax
.LBB18_12:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gdev_vector_close_file, .Lfunc_end18-gdev_vector_close_file
	.cfi_endproc

	.globl	gdev_vector_begin_image
	.align	16, 0x90
	.type	gdev_vector_begin_image,@function
gdev_vector_begin_image:                # @gdev_vector_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp142:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp143:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp144:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp145:
	.cfi_def_cfa_offset 768
.Ltmp146:
	.cfi_offset %rbx, -56
.Ltmp147:
	.cfi_offset %r12, -48
.Ltmp148:
	.cfi_offset %r13, -40
.Ltmp149:
	.cfi_offset %r14, -32
.Ltmp150:
	.cfi_offset %r15, -24
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movl	%ecx, %eax
	movq	%rdx, %rbx
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	792(%rsp), %rcx
	movq	784(%rsp), %r15
	movl	$1, %ebp
	cmpl	$0, 584(%rbx)
	movl	$1, %r13d
	jne	.LBB19_2
# BB#1:                                 # %if.else
	movq	576(%rbx), %rdi
	movq	%rcx, %rbp
	movl	%eax, %r12d
	callq	gs_color_space_num_components
	movq	%rbp, %rcx
	movl	%eax, %ebp
	movl	%r12d, %eax
	movl	40(%rbx), %r13d
.LBB19_2:                               # %if.end
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rcx, %r12
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movl	%ebp, %r8d
	movl	%eax, %r9d
	callq	gx_image_enum_common_init
	testl	%eax, %eax
	js	.LBB19_27
# BB#3:                                 # %if.end.3
	imull	%ebp, %r13d
	movl	%r13d, %eax
	cltd
	idivl	44(%r12)
	movl	%eax, 592(%r12)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 568(%r12)
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	212(%rax), %ebp
	movl	6084(%r14), %edx
	cmpl	%ebp, %edx
	je	.LBB19_6
# BB#4:                                 # %if.then.i
	xorl	%ebp, %edx
	movq	1736(%r14), %rax
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	*56(%rax)
	testl	%eax, %eax
	js	.LBB19_27
# BB#5:                                 # %if.end.i
	movl	%ebp, 6084(%r14)
.LBB19_6:                               # %lor.lhs.false
	movq	768(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB19_10
# BB#7:                                 # %if.then.i.50
	movq	296(%rbp), %rax
	cmpq	8784(%r14), %rax
	je	.LBB19_14
# BB#8:                                 # %if.then.1.i
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB19_27
# BB#9:                                 # %if.end.i.52
	movq	296(%rbp), %rax
	jmp	.LBB19_13
.LBB19_10:                              # %if.else.i
	movq	8784(%r14), %rax
	cmpq	8776(%r14), %rax
	je	.LBB19_14
# BB#11:                                # %if.then.9.i
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB19_27
# BB#12:                                # %if.end.14.i
	movq	8776(%r14), %rax
.LBB19_13:                              # %lor.lhs.false.9
	movq	%rax, 8784(%r14)
.LBB19_14:                              # %lor.lhs.false.9
	cmpl	$0, 584(%rbx)
	jne	.LBB19_17
# BB#15:                                # %lor.lhs.false.12
	cmpl	$0, 572(%rbx)
	je	.LBB19_21
# BB#16:                                # %land.lhs.true
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	212(%rax), %eax
	movl	%eax, %ecx
	shll	$4, %ecx
	xorl	%eax, %ecx
	testb	$-16, %cl
	je	.LBB19_21
.LBB19_17:                              # %land.lhs.true.17
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	leaq	7512(%r14), %r13
	movq	1736(%r14), %rax
	movq	72(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	callq	*64(%rax)
	xorl	%r12d, %r12d
	testl	%eax, %eax
	cmovneq	%rbp, %r12
	leaq	80(%rsp), %r15
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	gx_hld_save_color
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB19_20
# BB#18:                                # %if.end.i.i
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	*32(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB19_27
# BB#19:                                # %if.end.6.i.i
	leaq	80(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r13, %rdi
	callq	memcpy
.LBB19_20:                              # %gdev_vector_update_fill_color.exit.thread
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	768(%rsp), %rbp
.LBB19_21:                              # %lor.lhs.false.20
	movq	776(%rsp), %r15
	movq	8824(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB19_23
# BB#22:                                # %land.lhs.true.22
	movq	792(%rsp), %rax
	leaq	576(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%rbp, (%rsp)
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	callq	*1392(%rdi)
	testl	%eax, %eax
	js	.LBB19_27
.LBB19_23:                              # %if.end.29
	movq	792(%rsp), %rcx
	movq	%r15, 24(%rcx)
	movq	56(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB19_25
# BB#24:                                # %if.then.31
	movq	8(%rax), %xmm0          # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	(%rax), %xmm1           # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	jmp	.LBB19_26
.LBB19_25:                              # %if.else.37
	movq	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
.LBB19_26:                              # %if.end.40
	movd	%xmm0, %eax
	movd	%xmm0, 584(%rcx)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, 588(%rcx)
	imull	592(%rcx), %eax
	movl	%eax, 596(%rcx)
	movl	$0, 600(%rcx)
	xorl	%eax, %eax
.LBB19_27:                              # %cleanup
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gdev_vector_begin_image, .Lfunc_end19-gdev_vector_begin_image
	.cfi_endproc

	.globl	gdev_vector_end_image
	.align	16, 0x90
	.type	gdev_vector_end_image,@function
gdev_vector_end_image:                  # @gdev_vector_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp153:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp154:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp155:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp156:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp157:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp158:
	.cfi_def_cfa_offset 80
.Ltmp159:
	.cfi_offset %rbx, -56
.Ltmp160:
	.cfi_offset %r12, -48
.Ltmp161:
	.cfi_offset %r13, -40
.Ltmp162:
	.cfi_offset %r14, -32
.Ltmp163:
	.cfi_offset %r15, -24
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	%rbp, 16(%rsp)
	movq	568(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	gx_default_end_image
	movl	%eax, %r12d
	sarl	$31, %r12d
	andl	%eax, %r12d
.LBB20_11:                              # %if.end.25
	cmpq	$0, 8824(%r15)
	je	.LBB20_13
# BB#12:                                # %if.then.27
	movq	16(%rsp), %rax
	movq	576(%rax), %rdi
	movl	%r14d, %esi
	callq	gx_image_end
	testl	%eax, %eax
	cmovsl	%eax, %r12d
.LBB20_13:                              # %if.end.33
	leaq	16(%rsp), %rdi
	callq	gx_image_free_enum
.LBB20_14:                              # %cleanup.34
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_2:                               # %if.else
	movl	$1, %r12d
	cmpq	$-1, %r13
	je	.LBB20_11
# BB#3:                                 # %if.else
	movl	588(%rbp), %eax
	cmpl	%eax, 600(%rbp)
	jge	.LBB20_11
# BB#4:                                 # %if.then.5
	movl	596(%rbp), %ebx
	addl	$7, %ebx
	shrl	$3, %ebx
	movq	24(%rbp), %rdi
	movl	$.L.str.12, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB20_15
# BB#5:                                 # %if.end.10
	movzbl	%r13b, %esi
	movl	%ebx, %edx
	movq	%rax, %rdi
	movq	%rax, %r13
	callq	memset
	movl	600(%rbp), %eax
	cmpl	588(%rbp), %eax
	jge	.LBB20_6
# BB#7:
	leaq	8(%rsp), %r13
	.align	16, 0x90
.LBB20_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%ebx, %ecx
	callq	gx_image_data
	movq	16(%rsp), %rbp
	movl	600(%rbp), %eax
	incl	%eax
	movl	%eax, 600(%rbp)
	cmpl	588(%rbp), %eax
	jl	.LBB20_8
# BB#9:                                 # %for.cond.for.end_crit_edge
	movq	8(%rsp), %rsi
	jmp	.LBB20_10
.LBB20_15:                              # %cleanup
	movl	$-25, %r12d
	jmp	.LBB20_14
.LBB20_6:
	movq	%r13, %rsi
.LBB20_10:                              # %for.end
	movq	24(%rbp), %rdi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	jmp	.LBB20_11
.Lfunc_end20:
	.size	gdev_vector_end_image, .Lfunc_end20-gdev_vector_end_image
	.cfi_endproc

	.globl	gdev_vector_get_params
	.align	16, 0x90
	.type	gdev_vector_get_params,@function
gdev_vector_get_params:                 # @gdev_vector_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp166:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp168:
	.cfi_def_cfa_offset 64
.Ltmp169:
	.cfi_offset %rbx, -32
.Ltmp170:
	.cfi_offset %r14, -24
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_default_get_params
	movl	%eax, %ebp
	movl	$1, 12(%rsp)
	testl	%ebp, %ebp
	js	.LBB21_3
# BB#1:                                 # %if.end
	addq	$1744, %rbx             # imm = 0x6D0
	movq	%rbx, 16(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB21_3
# BB#2:                                 # %if.end.8
	leaq	12(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	%ebp, %eax
.LBB21_3:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gdev_vector_get_params, .Lfunc_end21-gdev_vector_get_params
	.cfi_endproc

	.globl	gdev_vector_put_params
	.align	16, 0x90
	.type	gdev_vector_put_params,@function
gdev_vector_put_params:                 # @gdev_vector_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp173:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp174:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp175:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp176:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp178:
	.cfi_def_cfa_offset 80
.Ltmp179:
	.cfi_offset %rbx, -56
.Ltmp180:
	.cfi_offset %r12, -48
.Ltmp181:
	.cfi_offset %r13, -40
.Ltmp182:
	.cfi_offset %r14, -32
.Ltmp183:
	.cfi_offset %r15, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	84(%rbx), %r13d
	leaq	4(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_23
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB22_2
# BB#4:                                 # %sw.bb
	movl	16(%rsp), %ebp
	cmpl	$4096, %ebp             # imm = 0x1000
	jb	.LBB22_6
# BB#5:                                 # %sw.epilog.thread53
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.15, %edi
	movl	$4095, %esi             # imm = 0xFFF
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-13, %ebp
	jmp	.LBB22_23
.LBB22_2:                               # %if.end
	cmpl	$1, %ebp
	jne	.LBB22_9
# BB#3:                                 # %sw.epilog.thread55
	movq	$0, 8(%rsp)
	jmp	.LBB22_10
.LBB22_6:                               # %if.else
	movq	8(%rsp), %r15
	leaq	1744(%rbx), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%r15, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	movl	%eax, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB22_7
# BB#8:                                 # %if.else.14
	movl	$-7, %ebp
	cmpl	$0, 960(%rbx)
	je	.LBB22_10
.LBB22_9:                               # %sw.epilog
	movq	(%r14), %rax
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movq	$0, 8(%rsp)
	testl	%ebp, %ebp
	jns	.LBB22_10
	jmp	.LBB22_23
.LBB22_7:                               # %if.then.12
	movq	$0, 8(%rsp)
.LBB22_10:                              # %if.end.26
	movl	$0, 84(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_default_put_params
	movl	%eax, %ebp
	movl	%r13d, 84(%rbx)
	testl	%ebp, %ebp
	js	.LBB22_23
# BB#11:                                # %if.end.33
	movq	8(%rsp), %rsi
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	.LBB22_23
# BB#12:                                # %if.then.37
	leaq	1744(%rbx), %rdi
	movl	16(%rsp), %edx
	callq	memcpy
	movl	16(%rsp), %eax
	movb	$0, 1744(%rbx,%rax)
	cmpl	$0, 84(%rbx)
	je	.LBB22_23
# BB#13:                                # %land.lhs.true
	movq	5848(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB22_22
# BB#14:                                # %land.lhs.true.50
	callq	stell
	testq	%rax, %rax
	je	.LBB22_21
# BB#15:                                # %if.then.55
	movq	%rbx, %rdi
	callq	gs_closedevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_16
# BB#17:                                # %if.end.63
	cmpq	$0, 5840(%rbx)
	je	.LBB22_19
# BB#18:                                # %if.then.66
	movq	8824(%rbx), %r15
	movq	$0, 8824(%rbx)
	movq	%rbx, %rdi
	callq	gdev_vector_close_file
	movl	%eax, %ebp
	movq	%r15, 8824(%rbx)
	testl	%ebp, %ebp
	js	.LBB22_23
.LBB22_19:                              # %if.end.74
	movq	%rbx, %rdi
	callq	gs_opendevice
	movl	%eax, %ebx
	testl	%ebx, %ebx
	movl	$0, %ebp
	jns	.LBB22_23
# BB#20:                                # %if.then.78
	movq	(%r14), %rax
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
	jmp	.LBB22_23
.LBB22_21:                              # %if.else.83
	cmpl	$0, 84(%rbx)
	je	.LBB22_23
.LBB22_22:                              # %if.then.86
	movl	5864(%rbx), %esi
	movl	5868(%rbx), %edx
	movq	%rbx, %rdi
	callq	gdev_vector_open_file_options
	movl	%eax, %ebp
	jmp	.LBB22_23
.LBB22_16:                              # %if.then.59
	movq	(%r14), %rax
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB22_23:                              # %cleanup.91
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gdev_vector_put_params, .Lfunc_end22-gdev_vector_put_params
	.cfi_endproc

	.globl	gdev_vector_fill_rectangle
	.align	16, 0x90
	.type	gdev_vector_fill_rectangle,@function
gdev_vector_fill_rectangle:             # @gdev_vector_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp186:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp187:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp188:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp189:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 56
	subq	$1320, %rsp             # imm = 0x528
.Ltmp191:
	.cfi_def_cfa_offset 1376
.Ltmp192:
	.cfi_offset %rbx, -56
.Ltmp193:
	.cfi_offset %r12, -48
.Ltmp194:
	.cfi_offset %r13, -40
.Ltmp195:
	.cfi_offset %r14, -32
.Ltmp196:
	.cfi_offset %r15, -24
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movl	%r8d, %r14d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %r13d
	movq	%rdi, %rbx
	cmpl	$0, 8816(%rbx)
	jne	.LBB23_2
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	cmpq	%rbp, 8840(%rbx)
	je	.LBB23_14
.LBB23_2:                               # %if.end
	movq	%rbp, 40(%rsp)
	movq	$gx_dc_type_data_pure, 32(%rsp)
	movl	$0, 392(%rsp)
	movq	8784(%rbx), %rax
	cmpq	8776(%rbx), %rax
	je	.LBB23_5
# BB#3:                                 # %if.then.9.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB23_14
# BB#4:                                 # %if.end.14.i
	movq	8776(%rbx), %rax
	movq	%rax, 8784(%rbx)
.LBB23_5:                               # %if.end.3
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	%r13d, 24(%rsp)         # 4-byte Spill
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movl	%r15d, %ebp
	leaq	7512(%rbx), %r14
	movq	1736(%rbx), %rax
	movq	72(%rax), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	32(%rsp), %r15
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	*64(%rax)
	leaq	688(%rsp), %r13
	xorl	%edi, %edi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	gx_hld_save_color
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB23_8
# BB#6:                                 # %if.end.i.i.i
	leaq	32(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*8(%rsp)                # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB23_14
# BB#7:                                 # %if.end.6.i.i.i
	leaq	688(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r14, %rdi
	callq	memcpy
.LBB23_8:                               # %if.end.i
	movl	6084(%rbx), %edx
	cmpl	$240, %edx
	movl	%ebp, %r14d
	movl	28(%rsp), %ebp          # 4-byte Reload
	movl	24(%rsp), %r15d         # 4-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
	je	.LBB23_11
# BB#9:                                 # %if.then.i
	xorl	$240, %edx
	movq	1736(%rbx), %rax
	movl	$240, %esi
	movq	%rbx, %rdi
	callq	*56(%rax)
	testl	%eax, %eax
	js	.LBB23_14
# BB#10:                                # %if.end.i.25
	movl	$240, 6084(%rbx)
.LBB23_11:                              # %cleanup.cont
	movq	8824(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB23_13
# BB#12:                                # %if.then.9
	movl	%r15d, %esi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	movl	%ebp, %r8d
	movq	%r13, %r9
	callq	*1200(%rdi)
	testl	%eax, %eax
	js	.LBB23_14
.LBB23_13:                              # %if.end.20
	movq	1736(%rbx), %rax
	addl	%r15d, %r12d
	shll	$8, %r15d
	shll	$8, %r12d
	addl	%r14d, %ebp
	shll	$8, %r14d
	shll	$8, %ebp
	movl	$1, %r9d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	movl	%ebp, %r8d
	callq	*96(%rax)
.LBB23_14:                              # %cleanup.26
	addq	$1320, %rsp             # imm = 0x528
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gdev_vector_fill_rectangle, .Lfunc_end23-gdev_vector_fill_rectangle
	.cfi_endproc

	.globl	gdev_vector_fill_path
	.align	16, 0x90
	.type	gdev_vector_fill_path,@function
gdev_vector_fill_path:                  # @gdev_vector_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp199:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp200:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp201:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp202:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp203:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp204:
	.cfi_def_cfa_offset 64
.Ltmp205:
	.cfi_offset %rbx, -56
.Ltmp206:
	.cfi_offset %r12, -48
.Ltmp207:
	.cfi_offset %r13, -40
.Ltmp208:
	.cfi_offset %r14, -32
.Ltmp209:
	.cfi_offset %r15, -24
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbp
	testq	%rbx, %rbx
	je	.LBB24_4
# BB#1:                                 # %if.then.i
	movq	296(%rbx), %rax
	cmpq	8784(%rbp), %rax
	je	.LBB24_8
# BB#2:                                 # %if.then.1.i
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB24_15
# BB#3:                                 # %if.end.i
	movq	296(%rbx), %rax
	jmp	.LBB24_7
.LBB24_4:                               # %if.else.i
	movq	8784(%rbp), %rax
	cmpq	8776(%rbp), %rax
	je	.LBB24_8
# BB#5:                                 # %if.then.9.i
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB24_15
# BB#6:                                 # %if.end.14.i
	movq	8776(%rbp), %rax
.LBB24_7:                               # %lor.lhs.false
	movq	%rax, 8784(%rbp)
.LBB24_8:                               # %lor.lhs.false
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	gdev_vector_prepare_fill
	testl	%eax, %eax
	js	.LBB24_15
# BB#9:                                 # %lor.lhs.false.3
	movq	8824(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB24_11
# BB#10:                                # %land.lhs.true
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	*1336(%rdi)
	testl	%eax, %eax
	js	.LBB24_15
.LBB24_11:                              # %lor.lhs.false.8
	movq	1736(%rbp), %rax
	movq	88(%rax), %rax
	movl	$9, %edx
	cmpl	$0, (%r15)
	jg	.LBB24_13
# BB#12:                                # %select.mid
	movl	$1, %edx
.LBB24_13:                              # %select.end
	orl	8792(%rbp), %edx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB24_15
# BB#14:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_15:                              # %if.then
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	%rbx, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_fill_path    # TAILCALL
.Lfunc_end24:
	.size	gdev_vector_fill_path, .Lfunc_end24-gdev_vector_fill_path
	.cfi_endproc

	.globl	gdev_vector_stroke_path
	.align	16, 0x90
	.type	gdev_vector_stroke_path,@function
gdev_vector_stroke_path:                # @gdev_vector_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp212:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp213:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp214:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp215:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp216:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp217:
	.cfi_def_cfa_offset 96
.Ltmp218:
	.cfi_offset %rbx, -56
.Ltmp219:
	.cfi_offset %r12, -48
.Ltmp220:
	.cfi_offset %r13, -40
.Ltmp221:
	.cfi_offset %r14, -32
.Ltmp222:
	.cfi_offset %r15, -24
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbp
	testq	%rbx, %rbx
	je	.LBB25_4
# BB#1:                                 # %if.then.i
	movq	296(%rbx), %rax
	cmpq	8784(%rbp), %rax
	je	.LBB25_8
# BB#2:                                 # %if.then.1.i
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB25_13
# BB#3:                                 # %if.end.i
	movq	296(%rbx), %rax
	jmp	.LBB25_7
.LBB25_4:                               # %if.else.i
	movq	8784(%rbp), %rax
	cmpq	8776(%rbp), %rax
	je	.LBB25_8
# BB#5:                                 # %if.then.9.i
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB25_13
# BB#6:                                 # %if.end.14.i
	movq	8776(%rbp), %rax
.LBB25_7:                               # %lor.lhs.false
	movq	%rax, 8784(%rbp)
.LBB25_8:                               # %lor.lhs.false
	leaq	32(%rsp), %rdx
	leaq	8(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gdev_vector_stroke_scaling
	testl	%eax, %eax
	jne	.LBB25_13
# BB#9:                                 # %lor.lhs.false.3
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	gdev_vector_prepare_stroke
	testl	%eax, %eax
	js	.LBB25_13
# BB#10:                                # %lor.lhs.false.6
	movq	8824(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB25_12
# BB#11:                                # %land.lhs.true
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	*1344(%rdi)
	testl	%eax, %eax
	js	.LBB25_13
.LBB25_12:                              # %lor.lhs.false.11
	movq	1736(%rbp), %rax
	movl	8796(%rbp), %edx
	orl	$2, %edx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*88(%rax)
	testl	%eax, %eax
	jns	.LBB25_14
.LBB25_13:                              # %if.then
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	gx_default_stroke_path
.LBB25_14:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gdev_vector_stroke_path, .Lfunc_end25-gdev_vector_stroke_path
	.cfi_endproc

	.globl	gdev_vector_fill_trapezoid
	.align	16, 0x90
	.type	gdev_vector_fill_trapezoid,@function
gdev_vector_fill_trapezoid:             # @gdev_vector_fill_trapezoid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp225:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp226:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp227:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp228:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp229:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp230:
	.cfi_def_cfa_offset 768
.Ltmp231:
	.cfi_offset %rbx, -56
.Ltmp232:
	.cfi_offset %r12, -48
.Ltmp233:
	.cfi_offset %r13, -40
.Ltmp234:
	.cfi_offset %r14, -32
.Ltmp235:
	.cfi_offset %r15, -24
.Ltmp236:
	.cfi_offset %rbp, -16
	movl	%r9d, 68(%rsp)          # 4-byte Spill
	movl	%r8d, 76(%rsp)          # 4-byte Spill
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	8(%rsi), %ebp
	movl	(%rsi), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	4(%rsi), %r12d
	subl	%eax, %ebp
	movl	12(%rsi), %ebx
	subl	%r12d, %ebx
	movl	8(%rdx), %r14d
	movl	(%rdx), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	4(%rdx), %r13d
	subl	%eax, %r14d
	movl	12(%rdx), %r15d
	subl	%r13d, %r15d
	movl	%ecx, %esi
	subl	%r12d, %esi
	movl	%ebp, %edi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	76(%rsp), %esi          # 4-byte Reload
	subl	%r12d, %esi
	movq	56(%rsp), %r12          # 8-byte Reload
	movl	%ebp, %edi
	movl	%ebx, %edx
	callq	fixed_mult_quo
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	72(%rsp), %esi          # 4-byte Reload
	subl	%r13d, %esi
	movl	%r14d, %edi
	movl	%r15d, %edx
	callq	fixed_mult_quo
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	76(%rsp), %esi          # 4-byte Reload
	subl	%r13d, %esi
	movl	%r14d, %edi
	movl	%r15d, %edx
	callq	fixed_mult_quo
	movl	%eax, %r13d
	leaq	7512(%r12), %r15
	movq	1736(%r12), %rax
	movq	72(%rax), %r14
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	768(%rsp), %rbp
	movq	%rbp, %rdx
	callq	*64(%rax)
	leaq	80(%rsp), %rbx
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	gx_hld_save_color
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	movl	776(%rsp), %eax
	jne	.LBB26_5
# BB#1:                                 # %if.end.i.i.i
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	768(%rsp), %rdx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB26_2
# BB#4:                                 # %if.end.6.i.i.i
	leaq	80(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r15, %rdi
	callq	memcpy
	movl	776(%rsp), %eax
.LBB26_5:                               # %if.end.i
	movl	6084(%r12), %edx
	cmpl	%eax, %edx
	movl	68(%rsp), %r9d          # 4-byte Reload
	movl	76(%rsp), %r15d         # 4-byte Reload
	movl	72(%rsp), %r14d         # 4-byte Reload
	movl	%eax, %ebp
	je	.LBB26_8
# BB#6:                                 # %if.then.i
	xorl	%ebp, %edx
	movq	1736(%r12), %rax
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r9d, %ebx
	callq	*56(%rax)
	movl	%ebx, %r9d
	testl	%eax, %eax
	js	.LBB26_3
# BB#7:                                 # %if.end.i.64
	movl	%ebp, 6084(%r12)
.LBB26_8:                               # %if.end
	movq	8784(%r12), %rax
	cmpq	8776(%r12), %rax
	je	.LBB26_11
# BB#9:                                 # %if.then.9.i
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%r9d, %ebx
	callq	gdev_vector_write_clip_path
	movl	%ebx, %r9d
	testl	%eax, %eax
	js	.LBB26_14
# BB#10:                                # %if.end.14.i
	movq	8776(%r12), %rax
	movq	%rax, 8784(%r12)
.LBB26_11:                              # %if.end.31
	movl	36(%rsp), %edi          # 4-byte Reload
	movl	32(%rsp), %eax          # 4-byte Reload
	addl	%eax, %edi
	movl	24(%rsp), %ebx          # 4-byte Reload
	addl	%eax, %ebx
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	20(%rsp), %ebp          # 4-byte Reload
	addl	%eax, %ebp
	addl	%eax, %r13d
	testl	%r9d, %r9d
	movl	%r14d, %eax
	cmovel	%edi, %eax
	movl	%r14d, %ecx
	cmovel	%ebp, %ecx
	cmovel	%r14d, %ebp
	cmovel	%r14d, %edi
	movl	%r15d, %edx
	cmovel	%r13d, %edx
	movl	%r15d, %esi
	cmovel	%ebx, %esi
	cmovel	%r15d, %ebx
	cmovel	%r15d, %r13d
	movl	%eax, 80(%rsp)
	movl	%ecx, 88(%rsp)
	movl	%ebp, 92(%rsp)
	movl	%edi, 84(%rsp)
	movl	%edx, 96(%rsp)
	movl	%esi, 104(%rsp)
	movl	%ebx, 108(%rsp)
	movl	%r13d, 100(%rsp)
	movq	8824(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB26_13
# BB#12:                                # %if.then.66
	movl	776(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	768(%rsp), %rax
	movq	%rax, (%rsp)
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	movl	%r15d, %r8d
	callq	*1360(%rdi)
	testl	%eax, %eax
	js	.LBB26_14
.LBB26_13:                              # %if.end.74
	leaq	80(%rsp), %rsi
	movl	$4, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r12, %rdi
	callq	gdev_vector_write_polygon
	jmp	.LBB26_14
.LBB26_2:                               # %gdev_vector_update_fill_color.exit.thread5.i
	movl	68(%rsp), %r9d          # 4-byte Reload
	movl	76(%rsp), %r15d         # 4-byte Reload
	movl	72(%rsp), %r14d         # 4-byte Reload
	movl	776(%rsp), %r13d
	movl	%r13d, %ebp
.LBB26_3:                               # %if.then
	movl	%ebp, 8(%rsp)
	movq	768(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r12, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	movl	%r15d, %r8d
	callq	gx_default_fill_trapezoid
.LBB26_14:                              # %cleanup.76
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gdev_vector_fill_trapezoid, .Lfunc_end26-gdev_vector_fill_trapezoid
	.cfi_endproc

	.globl	gdev_vector_fill_parallelogram
	.align	16, 0x90
	.type	gdev_vector_fill_parallelogram,@function
gdev_vector_fill_parallelogram:         # @gdev_vector_fill_parallelogram
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp238:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp239:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp240:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp241:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp242:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp243:
	.cfi_def_cfa_offset 768
.Ltmp244:
	.cfi_offset %rbx, -56
.Ltmp245:
	.cfi_offset %r12, -48
.Ltmp246:
	.cfi_offset %r13, -40
.Ltmp247:
	.cfi_offset %r14, -32
.Ltmp248:
	.cfi_offset %r15, -24
.Ltmp249:
	.cfi_offset %rbp, -16
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	%r8d, 40(%rsp)          # 4-byte Spill
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	%rdi, %rbx
	movl	784(%rsp), %ebp
	movq	776(%rsp), %r14
	leaq	7512(%rbx), %r13
	movq	1736(%rbx), %rax
	movq	72(%rax), %r15
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	*64(%rax)
	leaq	80(%rsp), %r12
	xorl	%edi, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	gx_hld_save_color
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB27_5
# BB#1:                                 # %if.end.i.i.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	776(%rsp), %rdx
	callq	*%r15
	testl	%eax, %eax
	js	.LBB27_2
# BB#4:                                 # %if.end.6.i.i.i
	leaq	80(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r13, %rdi
	callq	memcpy
.LBB27_5:                               # %if.end.i
	movl	6084(%rbx), %edx
	cmpl	%ebp, %edx
	movl	40(%rsp), %r15d         # 4-byte Reload
	je	.LBB27_8
# BB#6:                                 # %if.then.i
	xorl	%ebp, %edx
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*56(%rax)
	testl	%eax, %eax
	js	.LBB27_3
# BB#7:                                 # %if.end.i.64
	movl	%ebp, 6084(%rbx)
.LBB27_8:                               # %if.end
	movq	8784(%rbx), %rax
	cmpq	8776(%rbx), %rax
	je	.LBB27_16
# BB#9:                                 # %if.then.9.i
	movq	%r13, %r14
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB27_19
# BB#10:                                # %if.then.10
	movl	%r15d, %r13d
	movq	8776(%rbx), %rax
	movq	%rax, 8784(%rbx)
	movq	1736(%rbx), %rax
	movq	72(%rax), %r15
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	776(%rsp), %rbp
	movq	%rbp, %rdx
	callq	*64(%rax)
	leaq	80(%rsp), %r12
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	gx_hld_save_color
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB27_13
# BB#11:                                # %if.end.i.i.i.57
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	776(%rsp), %rdx
	callq	*%r15
	testl	%eax, %eax
	js	.LBB27_19
# BB#12:                                # %if.end.6.i.i.i.59
	leaq	80(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r14, %rdi
	callq	memcpy
.LBB27_13:                              # %if.end.i.61
	movl	6084(%rbx), %edx
	movl	784(%rsp), %ebp
	cmpl	%ebp, %edx
	movl	%r13d, %r15d
	je	.LBB27_16
# BB#14:                                # %if.then.i.72
	xorl	%ebp, %edx
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*56(%rax)
	testl	%eax, %eax
	js	.LBB27_19
# BB#15:                                # %if.end.i.73
	movl	%ebp, 6084(%rbx)
.LBB27_16:                              # %if.end.15
	movq	8824(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB27_18
# BB#17:                                # %if.then.17
	movl	%ebp, 16(%rsp)
	movq	776(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	768(%rsp), %eax
	movl	%eax, (%rsp)
	movl	28(%rsp), %esi          # 4-byte Reload
	movl	32(%rsp), %edx          # 4-byte Reload
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	%r15d, %r8d
	movl	36(%rsp), %r9d          # 4-byte Reload
	callq	*1368(%rdi)
	testl	%eax, %eax
	js	.LBB27_19
.LBB27_18:                              # %if.end.24
	movl	28(%rsp), %edx          # 4-byte Reload
	movl	24(%rsp), %edi          # 4-byte Reload
	addl	%edx, %edi
	movl	32(%rsp), %ecx          # 4-byte Reload
	addl	%ecx, %r15d
	leaq	48(%rsp), %rsi
	movl	%edx, 48(%rsp)
	movl	%ecx, 52(%rsp)
	movl	%edi, 56(%rsp)
	movl	%r15d, 60(%rsp)
	movl	36(%rsp), %eax          # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, 64(%rsp)
	movl	768(%rsp), %edi
	addl	%edi, %r15d
	movl	%r15d, 68(%rsp)
	addl	%edx, %eax
	movl	%eax, 72(%rsp)
	addl	%ecx, %edi
	movl	%edi, 76(%rsp)
	movl	$4, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	gdev_vector_write_polygon
	jmp	.LBB27_19
.LBB27_2:                               # %gdev_vector_update_fill_color.exit.thread5.i
	movl	40(%rsp), %r15d         # 4-byte Reload
.LBB27_3:                               # %if.then
	movl	%ebp, 16(%rsp)
	movq	776(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	768(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movl	28(%rsp), %esi          # 4-byte Reload
	movl	32(%rsp), %edx          # 4-byte Reload
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	%r15d, %r8d
	movl	36(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_fill_parallelogram
.LBB27_19:                              # %cleanup
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gdev_vector_fill_parallelogram, .Lfunc_end27-gdev_vector_fill_parallelogram
	.cfi_endproc

	.globl	gdev_vector_fill_triangle
	.align	16, 0x90
	.type	gdev_vector_fill_triangle,@function
gdev_vector_fill_triangle:              # @gdev_vector_fill_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp251:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp252:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp253:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp254:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp255:
	.cfi_def_cfa_offset 56
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp256:
	.cfi_def_cfa_offset 736
.Ltmp257:
	.cfi_offset %rbx, -56
.Ltmp258:
	.cfi_offset %r12, -48
.Ltmp259:
	.cfi_offset %r13, -40
.Ltmp260:
	.cfi_offset %r14, -32
.Ltmp261:
	.cfi_offset %r15, -24
.Ltmp262:
	.cfi_offset %rbp, -16
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movl	%r8d, 44(%rsp)          # 4-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movl	%esi, 32(%rsp)          # 4-byte Spill
	movq	%rdi, %rbx
	movl	752(%rsp), %r12d
	movq	744(%rsp), %rbp
	leaq	7512(%rbx), %r14
	movq	1736(%rbx), %rax
	movq	72(%rax), %r13
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	*64(%rax)
	leaq	48(%rsp), %r15
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	gx_hld_save_color
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB28_5
# BB#1:                                 # %if.end.i.i.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	744(%rsp), %rdx
	callq	*%r13
	testl	%eax, %eax
	js	.LBB28_2
# BB#4:                                 # %if.end.6.i.i.i
	leaq	48(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%r14, %rdi
	callq	memcpy
.LBB28_5:                               # %if.end.i
	movl	6084(%rbx), %edx
	cmpl	%r12d, %edx
	movl	28(%rsp), %r13d         # 4-byte Reload
	movl	32(%rsp), %r14d         # 4-byte Reload
	movl	36(%rsp), %r15d         # 4-byte Reload
	je	.LBB28_8
# BB#6:                                 # %if.then.i
	xorl	%r12d, %edx
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*56(%rax)
	testl	%eax, %eax
	js	.LBB28_3
# BB#7:                                 # %if.end.i.31
	movl	%r12d, 6084(%rbx)
.LBB28_8:                               # %if.end
	movq	8784(%rbx), %rax
	cmpq	8776(%rbx), %rax
	movl	40(%rsp), %r12d         # 4-byte Reload
	movl	%r13d, %ebp
	movl	44(%rsp), %r13d         # 4-byte Reload
	je	.LBB28_11
# BB#9:                                 # %if.then.9.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gdev_vector_write_clip_path
	testl	%eax, %eax
	js	.LBB28_14
# BB#10:                                # %if.end.14.i
	movq	8776(%rbx), %rax
	movq	%rax, 8784(%rbx)
.LBB28_11:                              # %if.end.5
	movq	8824(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB28_13
# BB#12:                                # %if.then.6
	movl	752(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	744(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	736(%rsp), %eax
	movl	%eax, (%rsp)
	movl	%r14d, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	movl	%r12d, %r9d
	callq	*1376(%rdi)
	testl	%eax, %eax
	js	.LBB28_14
.LBB28_13:                              # %if.end.13
	leaq	48(%rsp), %rsi
	movl	%r14d, 48(%rsp)
	movl	%ebp, 52(%rsp)
	addl	%r14d, %r15d
	movl	%r15d, 56(%rsp)
	addl	%ebp, %r13d
	movl	%r13d, 60(%rsp)
	addl	%r14d, %r12d
	movl	%r12d, 64(%rsp)
	movl	736(%rsp), %eax
	addl	%ebp, %eax
	movl	%eax, 68(%rsp)
	movl	$3, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	gdev_vector_write_polygon
	jmp	.LBB28_14
.LBB28_2:                               # %gdev_vector_update_fill_color.exit.thread5.i
	movl	28(%rsp), %r13d         # 4-byte Reload
	movl	32(%rsp), %r14d         # 4-byte Reload
	movl	36(%rsp), %r15d         # 4-byte Reload
.LBB28_3:                               # %if.then
	movl	%r12d, 16(%rsp)
	movq	744(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	736(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movl	%r15d, %ecx
	movl	44(%rsp), %r8d          # 4-byte Reload
	movl	40(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_fill_triangle
.LBB28_14:                              # %cleanup
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gdev_vector_fill_triangle, .Lfunc_end28-gdev_vector_fill_triangle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_vector"
	.size	.L.str, 17

	.type	device_vector_reloc_ptrs,@object # @device_vector_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
device_vector_reloc_ptrs:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	st_device
	.quad	device_vector_enum_ptrs
	.size	device_vector_reloc_ptrs, 24

	.type	st_device_vector,@object # @st_device_vector
	.globl	st_device_vector
	.align	8
st_device_vector:
	.long	8848                    # 0x2290
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	device_vector_reloc_ptrs
	.size	st_device_vector, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gdev_vector_image_enum_t"
	.size	.L.str.1, 25

	.type	vector_image_enum_reloc_ptrs,@object # @vector_image_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
vector_image_enum_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	vector_image_enum_enum_ptrs
	.size	vector_image_enum_reloc_ptrs, 24

	.type	st_vector_image_enum,@object # @st_vector_image_enum
	.globl	st_vector_image_enum
	.align	8
st_vector_image_enum:
	.long	608                     # 0x260
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	vector_image_enum_reloc_ptrs
	.size	st_vector_image_enum, 64

	.type	gdev_vector_reset.state_initial,@object # @gdev_vector_reset.state_initial
	.align	8
gdev_vector_reset.state_initial:
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1092616192              # float 10
	.long	1045425820              # float 0.20305866
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # float 0
	.zero	4
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	3212836864              # float -1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	252                     # 0xfc
	.short	65535                   # 0xffff
	.zero	2
	.long	16                      # 0x10
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	8
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_cmap_procs
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	64
	.zero	512
	.quad	0
	.quad	0
	.zero	280
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	280
	.size	gdev_vector_reset.state_initial, 1616

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"vector_open(strmbuf)"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"vector_open(strm)"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"vector_open(bbox_device)"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"vector allocate dash pattern"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"vector free old dash pattern"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"vector free dash pattern"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"vector_close(bbox_device->icc_struct"
	.size	.L.str.8, 37

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vector_close(bbox_device)"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"vector_close(strm)"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"vector_close(strmbuf)"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gdev_vector_end_image(fill)"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"OutputFile"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"HighLevelDevice"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\nERROR: Output filename too long (maximum %d bytes).\n"
	.size	.L.str.15, 54

	.type	device_vector_enum_ptrs,@object # @device_vector_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	16
device_vector_enum_ptrs:
	.short	0                       # 0x0
	.short	5848                    # 0x16d8
	.short	0                       # 0x0
	.short	5856                    # 0x16e0
	.short	0                       # 0x0
	.short	7488                    # 0x1d40
	.short	0                       # 0x0
	.short	8824                    # 0x2278
	.size	device_vector_enum_ptrs, 16

	.type	vector_image_enum_enum_ptrs,@object # @vector_image_enum_enum_ptrs
	.align	2
vector_image_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	568                     # 0x238
	.short	0                       # 0x0
	.short	576                     # 0x240
	.size	vector_image_enum_enum_ptrs, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
