	.text
	.file	"gximage2.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
.LCPI0_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_2:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	gx_begin_image2,@function
gx_begin_image2:                        # @gx_begin_image2
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
	subq	$1384, %rsp             # imm = 0x568
.Ltmp6:
	.cfi_def_cfa_offset 1440
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
	movq	%r9, 80(%rsp)           # 8-byte Spill
	movq	%rcx, %rbp
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	32(%rbp), %r12
	movq	%r12, %rdi
	callq	gs_currentdevice
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movzwl	108(%rax), %r15d
	movl	64(%rbp), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	je	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	96(%rax), %rsi
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	96(%rax), %rdi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcmp
	movl	$-20, %r14d
	testl	%eax, %eax
	jne	.LBB0_55
# BB#2:                                 # %if.end
	movl	$-28, %r14d
	cmpl	$9, %r15d
	jb	.LBB0_55
.LBB0_3:                                # %if.end.11
	leaq	784(%rsp), %r14
	movq	%r13, %rdi
	callq	gs_currentcolorspace
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	gs_image_t_init_adjust
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0.000000e+00,1.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, 852(%rsp)
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#5:                                 # %if.else
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	16(%rbx), %rax
	movq	%rax, 704(%rsp)
	movups	(%rbx), %xmm0
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movaps	%xmm0, 688(%rsp)
	jmp	.LBB0_6
.LBB0_4:                                # %if.then.25
	leaq	688(%rsp), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movq	%r13, 48(%rsp)          # 8-byte Spill
	callq	gs_currentmatrix
.LBB0_6:                                # %if.end.27
	movl	%r15d, %ebp
	movq	96(%rsp), %rbx          # 8-byte Reload
	leaq	720(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_currentmatrix
	leaq	752(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%rbx, %r15
	callq	image2_set_data
	movq	768(%rsp), %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	752(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movl	$-15, %r14d
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_55
	jp	.LBB0_55
# BB#7:                                 # %if.end.40
	shrq	$32, %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	760(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	floor
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_8
	jnp	.LBB0_9
.LBB0_8:                                # %lor.lhs.false
	movl	780(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_55
	jp	.LBB0_55
.LBB0_9:                                # %if.end.58
	movq	1448(%rsp), %r12
	movl	816(%rsp), %eax
	leal	(%rax,%rax,2), %esi
	movl	%eax, %ebx
	imull	%ebp, %ebx
	addl	$7, %ebx
	sarl	$3, %ebx
	cmpl	%ebx, %esi
	cmovbel	%ebx, %esi
	movl	%esi, 72(%rsp)          # 4-byte Spill
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB0_55
# BB#10:                                # %if.end.72
	movl	%ebp, %ecx
	movq	1440(%rsp), %rbp
	movl	92(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_23
# BB#11:                                # %if.then.74
	movl	%ecx, 824(%rsp)
	testq	%rbp, %rbp
	movq	104(%rsp), %r13         # 8-byte Reload
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false.78
	movq	768(%rsp), %rdx
	movq	776(%rsp), %r8
	movl	%edx, %esi
	shll	$8, %esi
	shrq	$24, %rdx
	andl	$-256, %edx
	movl	%r8d, %ecx
	shll	$8, %ecx
	shrq	$24, %r8
	andl	$-256, %r8d
	movq	%rbp, %rdi
	callq	gx_cpath_includes_rectangle
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
	testl	%eax, %eax
	movl	$0, %r14d
	je	.LBB0_27
.LBB0_13:                               # %if.then.96
	leaq	792(%rsp), %rdi
	leaq	720(%rsp), %rsi
	leaq	136(%rsp), %rdx
	callq	gs_matrix_multiply
	movss	692(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB0_16
	jp	.LBB0_16
# BB#14:                                # %land.lhs.true.102
	movss	696(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jne	.LBB0_16
	jp	.LBB0_16
# BB#15:                                # %land.lhs.true.102.land.lhs.true.114_crit_edge
	movss	688(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_18
.LBB0_23:                               # %if.else.134
	movl	$8, 824(%rsp)
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	104(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	callq	*1288(%r13)
	movq	%rax, %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$65535, %r8d            # imm = 0xFFFF
	movq	%r13, %rdi
	callq	*1288(%r13)
	cmpq	%rax, %rbp
	jne	.LBB0_25
# BB#24:
	xorl	%r14d, %r14d
	jmp	.LBB0_26
.LBB0_16:                               # %lor.lhs.false.106
	movss	688(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm2, %xmm1
	jne	.LBB0_22
	jp	.LBB0_22
# BB#17:                                # %land.lhs.true.110
	movss	700(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB0_22
	jp	.LBB0_22
.LBB0_18:                               # %land.lhs.true.114
	movss	136(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm2
	jne	.LBB0_22
	jp	.LBB0_22
# BB#19:                                # %land.lhs.true.119
	movss	140(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_22
	jp	.LBB0_22
# BB#20:                                # %land.lhs.true.124
	movss	144(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	696(%rsp), %xmm0
	jne	.LBB0_22
	jp	.LBB0_22
# BB#21:                                # %land.rhs
	movss	148(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cmpeqss	700(%rsp), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB0_22:                               # %land.end
	movzbl	%al, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB0_27
.LBB0_25:                               # %land.rhs.144
	movl	$65535, %esi            # imm = 0xFFFF
	movl	$65535, %edx            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	$65535, %r8d            # imm = 0xFFFF
	movq	%r13, %rdi
	callq	*1288(%r13)
	cmpq	%rax, %rbp
	setne	%r14b
.LBB0_26:                               # %if.end.152
	movq	1440(%rsp), %rbp
.LBB0_27:                               # %if.end.152
	movq	%rbp, %rcx
	movzbl	%r14b, %eax
	addl	%eax, %eax
	movl	%eax, 1376(%rsp)
	xorpd	%xmm0, %xmm0
	ucomiss	732(%rsp), %xmm0
	jbe	.LBB0_29
# BB#28:                                # %if.then.159
	xorps	%xmm0, %xmm0
	cvtsi2ssl	820(%rsp), %xmm0
	movss	804(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	addss	812(%rsp), %xmm0
	movss	%xmm0, 812(%rsp)
	movss	796(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI0_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm0
	movss	%xmm0, 796(%rsp)
	xorps	%xmm2, %xmm1
	movss	%xmm1, 804(%rsp)
.LBB0_29:                               # %if.end.182
	xorl	%ebp, %ebp
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	jne	.LBB0_31
# BB#30:                                # %if.end.189
	leaq	744(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movq	%rcx, (%rsp)
	xorl	%r8d, %r8d
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	784(%rsp), %rcx
	movq	80(%rsp), %r9           # 8-byte Reload
	callq	*1440(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_54
.LBB0_31:                               # %if.then.192
	leaq	768(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 672(%rsp)
	testl	%ebp, %ebp
	js	.LBB0_49
# BB#32:                                # %land.rhs.198.lr.ph
	movl	72(%rsp), %eax          # 4-byte Reload
	subl	%ebx, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	testb	%r14b, %r14b
	movl	$1370556484, %eax       # imm = 0x51B10844
	movl	$1370556436, %r14d      # imm = 0x51B10814
	cmovneq	%rax, %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	movl	92(%rsp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB0_33:                               # %land.rhs.198
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
	cmpl	820(%rsp), %r12d
	jge	.LBB0_49
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	$0, 120(%rsp)
	movl	676(%rsp), %eax
	incl	%eax
	movl	%eax, 684(%rsp)
	movq	$1370554368, 136(%rsp)  # imm = 0x51B10000
	testl	%ebx, %ebx
	je	.LBB0_38
# BB#35:                                # %if.then.211
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	$1370554369, 136(%rsp)  # imm = 0x51B10001
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 144(%rsp)
	movq	%r13, %rdi
	leaq	672(%rsp), %rsi
	leaq	136(%rsp), %rdx
	leaq	120(%rsp), %rcx
	callq	*1448(%r13)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_49
# BB#36:                                # %if.end.220
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	144(%rsp), %rsi
	movq	%rsi, 128(%rsp)
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	je	.LBB0_40
# BB#37:                                # %if.then.224
                                        #   in Loop: Header=BB0_33 Depth=1
	movss	704(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	708(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	808(%rsp), %xmm0
	cvttss2si	%xmm0, %r9d
	subss	812(%rsp), %xmm1
	xorps	%xmm0, %xmm0
	ucomiss	700(%rsp), %xmm0
	movl	$0, %eax
	movl	$-1, %ecx
	cmoval	%ecx, %eax
	xorl	%r12d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	816(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	72(%rsp), %ecx          # 4-byte Reload
	callq	*1224(%rdi)
	movl	%eax, %ebp
	jmp	.LBB0_48
	.align	16, 0x90
.LBB0_38:                               # %if.else.250
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	%r14, 136(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 144(%rsp)
	movq	%r13, %rdi
	leaq	672(%rsp), %rsi
	leaq	136(%rsp), %rdx
	leaq	120(%rsp), %rcx
	callq	*1448(%r13)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_49
# BB#39:                                # %if.end.264
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
.LBB0_40:                               # %if.end.267
                                        #   in Loop: Header=BB0_33 Depth=1
	testl	%ebp, %ebp
	jle	.LBB0_47
# BB#41:                                # %land.lhs.true.270
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	56(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB0_47
# BB#42:                                # %for.body.281.lr.ph
                                        #   in Loop: Header=BB0_33 Depth=1
	movslq	%ebp, %r14
	movl	$1, %ebx
	movl	$12, %ebp
	jmp	.LBB0_43
	.align	16, 0x90
.LBB0_45:                               # %for.body.281.for.body.281_crit_edge
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	56(%r15), %rdi
	addq	$16, %rbp
	incq	%rbx
.LBB0_43:                               # %for.body.281
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	120(%rsp), %rax
	movl	-12(%rax,%rbp), %esi
	movl	-8(%rax,%rbp), %edx
	shll	$8, %esi
	shll	$8, %edx
	movl	-4(%rax,%rbp), %ecx
	shll	$8, %ecx
	movl	(%rax,%rbp), %r8d
	shll	$8, %r8d
	callq	gx_path_add_rectangle
	testl	%eax, %eax
	js	.LBB0_46
# BB#44:                                # %for.body.281
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpq	%r14, %rbx
	jl	.LBB0_45
.LBB0_46:                               # %for.end
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
	movq	120(%rsp), %rsi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	movl	92(%rsp), %ebx          # 4-byte Reload
	movq	56(%rsp), %r14          # 8-byte Reload
.LBB0_47:                               # %if.end.305
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	744(%rsp), %rdi
	xorl	%edx, %edx
	movl	$1, %r8d
	leaq	128(%rsp), %rsi
	movl	72(%rsp), %ecx          # 4-byte Reload
	callq	gx_image_data
	movl	%eax, %ebp
	movl	684(%rsp), %eax
	movl	%eax, 676(%rsp)
.LBB0_48:                               # %for.inc.312
                                        #   in Loop: Header=BB0_33 Depth=1
	incl	%r12d
	testl	%ebp, %ebp
	jns	.LBB0_33
.LBB0_49:                               # %for.end.314
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	je	.LBB0_51
# BB#50:
	movq	1448(%rsp), %rbx
	movq	%rbx, %r12
	jmp	.LBB0_54
.LBB0_51:                               # %if.then.316
	movq	744(%rsp), %rdi
	testl	%ebp, %ebp
	movq	1448(%rsp), %rbx
	movq	%rbx, %r12
	js	.LBB0_53
# BB#52:                                # %if.then.319
	movl	$1, %esi
	callq	gx_image_end
	movl	%eax, %ebp
	jmp	.LBB0_54
.LBB0_53:                               # %if.else.321
	xorl	%esi, %esi
	callq	gx_image_end
.LBB0_54:                               # %if.end.325
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r12)
	testl	%ebp, %ebp
	movl	$1, %r14d
	cmovsl	%ebp, %r14d
.LBB0_55:                               # %cleanup.334
	movl	%r14d, %eax
	addq	$1384, %rsp             # imm = 0x568
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_begin_image2, .Lfunc_end0-gx_begin_image2
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image2_source_size,@function
gx_image2_source_size:                  # @gx_image2_source_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
	subq	$640, %rsp              # imm = 0x280
.Ltmp14:
	.cfi_def_cfa_offset 656
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	image2_set_data
	movq	72(%rsp), %rax
	movl	%eax, (%rbx)
	shrq	$32, %rax
	movl	%eax, 4(%rbx)
	xorl	%eax, %eax
	addq	$640, %rsp              # imm = 0x280
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gx_image2_source_size, .Lfunc_end1-gx_image2_source_size
	.cfi_endproc

	.globl	gs_image2_t_init
	.align	16, 0x90
	.type	gs_image2_t_init,@function
gs_image2_t_init:                       # @gs_image2_t_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gs_image_type_2, (%rdi)
	movq	$0, 56(%rdi)
	movl	$0, 64(%rdi)
	retq
.Lfunc_end2:
	.size	gs_image2_t_init, .Lfunc_end2-gs_image2_t_init
	.cfi_endproc

	.align	16, 0x90
	.type	image2_set_data,@function
image2_set_data:                        # @image2_set_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 144
.Ltmp22:
	.cfi_offset %rbx, -48
.Ltmp23:
	.cfi_offset %r12, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	32(%r14), %r15
	movss	40(%r14), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	44(%r14), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movq	%r15, %rdi
	callq	gs_transform
	cvtps2pd	40(%r14), %xmm0
	movapd	%xmm0, 32(%rsp)
	cvtps2pd	48(%r14), %xmm1
	addpd	%xmm0, %xmm1
	movapd	%xmm1, 48(%rsp)
	leaq	72(%rsp), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gs_currentmatrix
	leaq	32(%rsp), %rdi
	leaq	(%rsp), %rdx
	movq	%r12, %rsi
	callq	gs_bbox_transform
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r15d
	movl	%r15d, 16(%rbx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movl	%r12d, 20(%rbx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	movl	%ebp, 24(%rbx)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, 28(%rbx)
	subl	%r15d, %ebp
	movl	%ebp, 64(%rbx)
	subl	%r12d, %eax
	movl	%eax, 68(%rbx)
	movq	24(%r14), %rax
	movq	%rax, 56(%rbx)
	movups	8(%r14), %xmm0
	movups	%xmm0, 40(%rbx)
	movl	$1, 628(%rbx)
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image2_set_data, .Lfunc_end3-image2_set_data
	.cfi_endproc

	.type	st_gs_image2,@object    # @st_gs_image2
	.section	.rodata,"a",@progbits
	.align	8
st_gs_image2:
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	image2_reloc_ptrs
	.size	st_gs_image2, 64

	.type	gs_image_type_2,@object # @gs_image_type_2
	.globl	gs_image_type_2
	.align	8
gs_image_type_2:
	.quad	st_gs_image2
	.quad	gx_begin_image2
	.quad	gx_image2_source_size
	.quad	gx_image_no_sput
	.quad	gx_image_no_sget
	.quad	gx_image_default_release
	.long	2                       # 0x2
	.zero	4
	.size	gs_image_type_2, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_image2_t"
	.size	.L.str, 12

	.type	image2_reloc_ptrs,@object # @image2_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
image2_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_image_common
	.quad	image2_enum_ptrs
	.size	image2_reloc_ptrs, 24

	.type	image2_enum_ptrs,@object # @image2_enum_ptrs
	.align	2
image2_enum_ptrs:
	.short	0                       # 0x0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.short	56                      # 0x38
	.size	image2_enum_ptrs, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_begin_image2"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"UnpaintedPath unread"
	.size	.L.str.2, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
