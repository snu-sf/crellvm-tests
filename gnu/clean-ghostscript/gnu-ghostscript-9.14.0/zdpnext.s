	.text
	.file	"zdpnext.bc"
	.align	16, 0x90
	.type	zcurrentalpha,@function
zcurrentalpha:                          # @zcurrentalpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB0_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentalpha
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zcurrentalpha, .Lfunc_end0-zcurrentalpha
	.cfi_endproc

	.align	16, 0x90
	.type	zsetalpha,@function
zsetalpha:                              # @zsetalpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -24
.Ltmp6:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB1_1
# BB#2:                                 # %if.end
	movq	(%r14), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	callq	gs_setalpha
	testl	%eax, %eax
	js	.LBB1_4
# BB#3:                                 # %if.end.5
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB1_4
.LBB1_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB1_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	zsetalpha, .Lfunc_end1-zsetalpha
	.cfi_endproc

	.align	16, 0x90
	.type	zalphaimage,@function
zalphaimage:                            # @zalphaimage
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	image1_setup            # TAILCALL
.Lfunc_end2:
	.size	zalphaimage, .Lfunc_end2-zalphaimage
	.cfi_endproc

	.align	16, 0x90
	.type	zcomposite,@function
zcomposite:                             # @zcomposite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 16
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB3_1
# BB#2:                                 # %if.end
	movq	8(%rax), %rcx
	movl	$-15, %eax
	cmpq	$12, %rcx
	ja	.LBB3_4
# BB#3:                                 # %do.end
	movl	%ecx, (%rsp)
	leaq	(%rsp), %rsi
	callq	composite_image
.LBB3_4:                                # %cleanup
	popq	%rdx
	retq
.LBB3_1:                                # %if.then
	movq	%rax, %rdi
	callq	check_type_failed
	popq	%rdx
	retq
.Lfunc_end3:
	.size	zcomposite, .Lfunc_end3-zcomposite
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	zcompositerect,@function
zcompositerect:                         # @zcompositerect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 128
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	leaq	64(%rsp), %rdx
	movl	$4, %esi
	callq	num_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_13
# BB#1:                                 # %if.end.i
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_3
# BB#2:                                 # %if.then.2.i
	movsd	64(%rsp), %xmm2         # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 64(%rsp)
	xorpd	.LCPI4_0(%rip), %xmm1
	movlpd	%xmm1, 80(%rsp)
.LBB4_3:                                # %if.end.7.i
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_5
# BB#4:                                 # %if.then.10.i
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)
	xorpd	.LCPI4_0(%rip), %xmm1
	movlpd	%xmm1, 88(%rsp)
.LBB4_5:                                # %do.body
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB4_6
# BB#7:                                 # %if.end.5
	movq	8(%rbx), %rax
	movl	$-15, %ebp
	cmpq	$13, %rax
	ja	.LBB4_13
# BB#8:                                 # %do.end
	movl	%eax, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r14, %rdi
	callq	begin_composite
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_13
# BB#9:                                 # %if.end.18
	movapd	64(%rsp), %xmm0
	movapd	%xmm0, (%rsp)
	addpd	80(%rsp), %xmm0
	movapd	%xmm0, 16(%rsp)
	movq	(%r14), %rdi
	leaq	(%rsp), %rsi
	movl	$1, %edx
	callq	gs_rectfill
	movl	%eax, %ebp
	movq	48(%rsp), %rdi
	cmpq	56(%rsp), %rdi
	je	.LBB4_11
# BB#10:                                # %if.then.i
	callq	gs_closedevice
	movq	(%r14), %rdi
	movq	56(%rsp), %rsi
	callq	gs_setdevice_no_init
.LBB4_11:                               # %end_composite.exit
	movq	8(%r14), %rdi
	movq	40(%rsp), %rsi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	testl	%ebp, %ebp
	js	.LBB4_13
# BB#12:                                # %if.then.32
	addq	$-80, 624(%r14)
	jmp	.LBB4_13
.LBB4_6:                                # %if.then.3
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB4_13:                               # %cleanup
	movl	%ebp, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zcompositerect, .Lfunc_end4-zcompositerect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	zdissolve,@function
zdissolve:                              # @zdissolve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 32
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB5_4
# BB#1:                                 # %if.end
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$-15, %eax
	ja	.LBB5_4
# BB#2:                                 # %if.end
	ucomisd	.LCPI5_0(%rip), %xmm0
	ja	.LBB5_4
# BB#3:                                 # %if.end.4
	movl	$14, 8(%rsp)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rsp)
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	composite_image
.LBB5_4:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zdissolve, .Lfunc_end5-zdissolve
	.cfi_endproc

	.align	16, 0x90
	.type	zsizeimagebox,@function
zsizeimagebox:                          # @zsizeimagebox
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
	subq	$104, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 160
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	(%r14), %rdi
	callq	gs_currentdevice
	movq	%rax, %r15
	movzbl	-63(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_1
# BB#3:                                 # %if.end
	movzbl	-47(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_4
# BB#5:                                 # %if.end.15
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_6
# BB#7:                                 # %if.end.26
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_8
# BB#9:                                 # %if.end.37
	cvtsi2sdq	-56(%rbx), %xmm0
	movsd	%xmm0, 72(%rsp)
	cvtsi2sdq	-40(%rbx), %xmm1
	movsd	%xmm1, 80(%rsp)
	cvtsi2sdq	-24(%rbx), %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 88(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rsp)
	movq	(%r14), %rdi
	leaq	16(%rsp), %r12
	movq	%r12, %rsi
	callq	gs_currentmatrix
	leaq	72(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movq	%r12, %rsi
	callq	gs_bbox_transform
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	xorl	%edx, %edx
	testl	%ebp, %ebp
	movl	$0, %r13d
	movl	$0, %esi
	jle	.LBB6_13
# BB#10:                                # %if.else.i
	cvttsd2si	(%rsp), %ecx    # 8-byte Folded Reload
	movl	832(%r15), %r13d
	cmpl	%r13d, %ecx
	jge	.LBB6_11
# BB#12:                                # %if.else.3.i
	xorl	%esi, %esi
	testl	%ecx, %ecx
	cmovnsl	%ecx, %esi
	cmpl	%r13d, %ebp
	cmovlel	%ebp, %r13d
	jmp	.LBB6_13
.LBB6_1:                                # %if.then
	addq	$-64, %rbx
	jmp	.LBB6_2
.LBB6_4:                                # %if.then.12
	addq	$-48, %rbx
	jmp	.LBB6_2
.LBB6_6:                                # %if.then.23
	addq	$-32, %rbx
	jmp	.LBB6_2
.LBB6_8:                                # %if.then.34
	addq	$-16, %rbx
.LBB6_2:                                # %cleanup
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB6_19:                               # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_11:
	movl	%r13d, %esi
.LBB6_13:                               # %box_confine.exit
	testl	%eax, %eax
	movl	$0, %r12d
	jle	.LBB6_17
# BB#14:                                # %if.else.i.30
	cvttsd2si	8(%rsp), %ecx   # 8-byte Folded Reload
	movl	836(%r15), %edx
	cmpl	%edx, %ecx
	jge	.LBB6_15
# BB#16:                                # %if.else.3.i.33
	xorl	%r12d, %r12d
	testl	%ecx, %ecx
	cmovnsl	%ecx, %r12d
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	jmp	.LBB6_17
.LBB6_15:
	movl	%edx, %r12d
.LBB6_17:                               # %box_confine.exit39
	movl	%edx, %ebp
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	movss	32(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 32(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r12d, %xmm0
	movss	36(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 36(%rsp)
	addq	$8, %r14
	movl	%esi, %r15d
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	write_matrix_in
	testl	%eax, %eax
	js	.LBB6_19
# BB#18:                                # %if.end.118
	subl	%r12d, %ebp
	subl	%r15d, %r13d
	movslq	%r15d, %rax
	movq	%rax, -56(%rbx)
	movw	$2816, -64(%rbx)        # imm = 0xB00
	movslq	%r12d, %rax
	movq	%rax, -40(%rbx)
	movw	$2816, -48(%rbx)        # imm = 0xB00
	movslq	%r13d, %rax
	movq	%rax, -24(%rbx)
	movw	$2816, -32(%rbx)        # imm = 0xB00
	movslq	%ebp, %rax
	movq	%rax, -8(%rbx)
	movw	$2816, -16(%rbx)        # imm = 0xB00
	xorl	%eax, %eax
	jmp	.LBB6_19
.Lfunc_end6:
	.size	zsizeimagebox, .Lfunc_end6-zsizeimagebox
	.cfi_endproc

	.align	16, 0x90
	.type	zsizeimageparams,@function
zsizeimageparams:                       # @zsizeimageparams
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
	subq	$72, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 128
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
	movq	%rdi, %rbp
	movq	624(%rbp), %r13
	movq	(%rbp), %rdi
	callq	gs_currentdevice
	movq	%rax, %r12
	leaq	48(%r13), %rax
	cmpq	640(%rbp), %rax
	jbe	.LBB7_2
# BB#1:                                 # %if.then
	movl	$3, 688(%rbp)
	movl	$-16, %eax
	jmp	.LBB7_35
.LBB7_2:                                # %if.else
	movl	100(%r12), %edx
	movslq	%edx, %rcx
	movq	%rax, 624(%rbp)
	movzwl	108(%r12), %r14d
	cmpl	$4, %ecx
	je	.LBB7_19
# BB#3:                                 # %if.else
	cmpl	$3, %edx
	jne	.LBB7_4
# BB#10:                                # %sw.bb.17.i
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	imull	$43691, %r14d, %eax     # imm = 0xAAAB
	shrl	$17, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	(%rax,%rax,2), %eax
	cmpw	%ax, %r14w
	jne	.LBB7_29
# BB#11:                                # %lor.lhs.false.i
	movslq	116(%r12), %r15
	movl	$1, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	shll	%cl, %eax
	decl	%eax
	cmpl	%eax, %r15d
	jne	.LBB7_29
# BB#12:                                # %if.end.27.i
	testl	%r15d, %r15d
	js	.LBB7_36
# BB#13:                                # %for.body.33.lr.ph.i
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB7_15:                               # %for.body.33.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbp, %rax
	divq	%r15
	movw	%ax, 64(%rsp)
	movw	$0, 66(%rsp)
	movw	$0, 68(%rsp)
	movw	$0, 56(%rsp)
	movw	%ax, 58(%rsp)
	movw	$0, 60(%rsp)
	movw	$0, 48(%rsp)
	movw	$0, 50(%rsp)
	movw	%ax, 52(%rsp)
	movq	%r12, %rdi
	leaq	64(%rsp), %rsi
	callq	*1184(%r12)
	movl	%r14d, %edx
	movl	12(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rcx
	movl	$1, %ebx
	cmpq	%rcx, %rax
	jne	.LBB7_18
# BB#16:                                # %lor.lhs.false.66.i
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	%r12, %rdi
	leaq	56(%rsp), %rsi
	callq	*1184(%r12)
	movl	%r14d, %edx
	movq	16(%rsp), %rcx          # 8-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB7_18
# BB#17:                                # %lor.lhs.false.75.i
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	%r12, %rdi
	leaq	48(%rsp), %rsi
	callq	*1184(%r12)
	cmpq	%rax, %r14
	setne	%al
	movzbl	%al, %ebx
.LBB7_18:                               # %cleanup.85.i
                                        #   in Loop: Header=BB7_15 Depth=1
	testl	%ebx, %ebx
	jne	.LBB7_29
# BB#14:                                # %for.cond.30.i
                                        #   in Loop: Header=BB7_15 Depth=1
	addq	$65535, %rbp            # imm = 0xFFFF
	cmpq	%r15, %r14
	leaq	1(%r14), %r14
	jl	.LBB7_15
	jmp	.LBB7_36
.LBB7_19:                               # %sw.bb.97.i
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	testb	$3, %r14b
	jne	.LBB7_29
# BB#20:                                # %lor.lhs.false.102.i
	movslq	116(%r12), %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	shrl	$2, %r14d
	movl	$1, %eax
	movb	%r14b, %cl
	shll	%cl, %eax
	decl	%eax
	cmpl	%eax, %esi
	jne	.LBB7_29
# BB#21:                                # %if.end.109.i
	testl	%esi, %esi
	js	.LBB7_36
# BB#22:                                # %for.body.116.lr.ph.i
	leal	(%r14,%r14), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	leal	(%r14,%r14,2), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB7_24:                               # %for.body.116.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbp, %rax
	divq	%rsi
	movw	%ax, 64(%rsp)
	movw	$0, 70(%rsp)
	movw	$0, 68(%rsp)
	movw	$0, 66(%rsp)
	movw	%ax, 58(%rsp)
	movw	$0, 62(%rsp)
	movw	$0, 60(%rsp)
	movw	$0, 56(%rsp)
	movw	%ax, 52(%rsp)
	movw	$0, 54(%rsp)
	movw	$0, 50(%rsp)
	movw	$0, 48(%rsp)
	movw	%ax, 46(%rsp)
	movw	$0, 44(%rsp)
	movl	$0, 40(%rsp)
	movq	%r12, %rdi
	leaq	64(%rsp), %rsi
	callq	*1264(%r12)
	movl	%r15d, %edx
	movl	12(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rcx
	movl	$1, %ebx
	cmpq	%rcx, %rax
	jne	.LBB7_28
# BB#25:                                # %lor.lhs.false.160.i
                                        #   in Loop: Header=BB7_24 Depth=1
	movq	%r12, %rdi
	leaq	56(%rsp), %rsi
	callq	*1264(%r12)
	movl	%r15d, %edx
	movl	8(%rsp), %ecx           # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB7_28
# BB#26:                                # %lor.lhs.false.169.i
                                        #   in Loop: Header=BB7_24 Depth=1
	movq	%r12, %rdi
	leaq	48(%rsp), %rsi
	callq	*1264(%r12)
	movl	%r15d, %edx
	movb	%r14b, %cl
	shll	%cl, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB7_28
# BB#27:                                # %lor.lhs.false.178.i
                                        #   in Loop: Header=BB7_24 Depth=1
	movq	%r12, %rdi
	leaq	40(%rsp), %rsi
	callq	*1264(%r12)
	cmpq	%rax, %r15
	setne	%al
	movzbl	%al, %ebx
	.align	16, 0x90
.LBB7_28:                               # %cleanup.188.i
                                        #   in Loop: Header=BB7_24 Depth=1
	testl	%ebx, %ebx
	movq	16(%rsp), %rsi          # 8-byte Reload
	jne	.LBB7_29
# BB#23:                                # %for.cond.113.i
                                        #   in Loop: Header=BB7_24 Depth=1
	addq	$65535, %rbp            # imm = 0xFFFF
	cmpq	%rsi, %r15
	leaq	1(%r15), %r15
	jl	.LBB7_24
	jmp	.LBB7_36
.LBB7_4:                                # %if.else
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	cmpl	$1, %edx
	jne	.LBB7_30
# BB#5:                                 # %sw.bb.i
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movslq	112(%r12), %r15
	movl	$1, %eax
	movb	%r14b, %cl
	shll	%cl, %eax
	decl	%eax
	cmpl	%eax, %r15d
	jne	.LBB7_29
# BB#6:                                 # %for.cond.preheader.i
	testl	%r15d, %r15d
	js	.LBB7_36
# BB#7:                                 # %for.body.lr.ph.i
	movq	$-1, %rbx
	xorl	%ebp, %ebp
	leaq	64(%rsp), %r14
	.align	16, 0x90
.LBB7_9:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbp, %rax
	divq	%r15
	movw	%ax, 68(%rsp)
	movw	%ax, 66(%rsp)
	movw	%ax, 64(%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*1184(%r12)
	incq	%rbx
	cmpq	%rax, %rbx
	jne	.LBB7_29
# BB#8:                                 # %for.cond.i
                                        #   in Loop: Header=BB7_9 Depth=1
	addq	$65535, %rbp            # imm = 0xFFFF
	cmpq	%r15, %rbx
	jl	.LBB7_9
.LBB7_36:                               # %if.then.9
	movzwl	108(%r12), %eax
	xorl	%edx, %edx
	idivl	28(%rsp)                # 4-byte Folded Reload
	movl	%eax, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB7_34
.LBB7_29:                               # %if.else.11thread-pre-split
	movl	100(%r12), %edx
.LBB7_30:                               # %if.else.11
	cmpl	$1, %edx
	movl	112(%r12), %ecx
	je	.LBB7_32
# BB#31:                                # %cond.false
	movl	116(%r12), %eax
	cmpl	%eax, %ecx
	cmoval	%ecx, %eax
	movl	%eax, %ecx
.LBB7_32:                               # %cond.end.28
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	$zsizeimageparams.sizes, %eax
	movzwl	%cx, %edx
	.align	16, 0x90
.LBB7_33:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %ecx
	movl	$1, %esi
	shlq	%cl, %rsi
	decq	%rsi
	addq	$2, %rax
	cmpq	%rsi, %rdx
	ja	.LBB7_33
.LBB7_34:                               # %if.end.40
	movslq	%ecx, %rax
	movq	%rax, 24(%r13)
	movw	$2816, 16(%r13)         # imm = 0xB00
	movw	$0, 40(%r13)
	movw	$256, 32(%r13)          # imm = 0x100
	movq	%rdi, 56(%r13)
	movw	$2816, 48(%r13)         # imm = 0xB00
	xorl	%eax, %eax
.LBB7_35:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zsizeimageparams, .Lfunc_end7-zsizeimageparams
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	composite_image,@function
composite_image:                        # @composite_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 40
	subq	$184, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 224
.Ltmp49:
	.cfi_offset %rbx, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	624(%r14), %r15
	leaq	-64(%r15), %rdi
	leaq	48(%rsp), %rdx
	movl	$4, %esi
	callq	num_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_22
# BB#1:                                 # %if.end.i
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_3
# BB#2:                                 # %if.then.2.i
	movsd	48(%rsp), %xmm2         # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 48(%rsp)
	xorpd	.LCPI8_0(%rip), %xmm1
	movlpd	%xmm1, 64(%rsp)
.LBB8_3:                                # %if.end.7.i
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_5
# BB#4:                                 # %if.then.10.i
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)
	xorpd	.LCPI8_0(%rip), %xmm1
	movlpd	%xmm1, 72(%rsp)
.LBB8_5:                                # %lor.lhs.false
	movq	(%rbx), %rax
	movq	%rax, 152(%rsp)
	leaq	80(%rsp), %rdi
	callq	gs_image2_t_init
	leaq	-16(%r15), %rdi
	leaq	32(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_21
# BB#6:                                 # %if.end
	movzbl	-47(%r15), %eax
	cmpl	$14, %eax
	jne	.LBB8_8
# BB#7:                                 # %if.then.9
	movq	(%r14), %rdi
	movq	%rdi, 112(%rsp)
.LBB8_13:                               # %if.end.39
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 120(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 124(%rsp)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 128(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 132(%rsp)
	movl	$1, 144(%rsp)
	leaq	8(%rsp), %rsi
	callq	gs_currentmatrix
	movq	(%r14), %rdi
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	callq	gs_translate
	leaq	88(%rsp), %rdi
	callq	gs_make_identity
	movq	112(%rsp), %rax
	cmpq	(%r14), %rax
	jne	.LBB8_15
# BB#14:                                # %if.then.58
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	32(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 120(%rsp)
	movss	124(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	40(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 124(%rsp)
.LBB8_15:                               # %if.end.68
	leaq	152(%rsp), %rsi
	movq	%r14, %rdi
	callq	begin_composite
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_20
# BB#16:                                # %if.then.72
	leaq	80(%rsp), %rsi
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	callq	process_non_source_image
	movl	%eax, %ebp
	movq	168(%rsp), %rdi
	cmpq	176(%rsp), %rdi
	je	.LBB8_18
# BB#17:                                # %if.then.i
	callq	gs_closedevice
	movq	(%r14), %rdi
	movq	176(%rsp), %rsi
	callq	gs_setdevice_no_init
.LBB8_18:                               # %end_composite.exit
	movq	8(%r14), %rdi
	movq	160(%rsp), %rsi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	testl	%ebp, %ebp
	js	.LBB8_20
# BB#19:                                # %if.then.76
	addq	$-128, 624(%r14)
.LBB8_20:                               # %if.end.82
	movq	(%r14), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setmatrix
	jmp	.LBB8_21
.LBB8_22:                               # %xywh_param.exit
	movq	(%rbx), %rax
	movq	%rax, 152(%rsp)
	leaq	80(%rsp), %rdi
	callq	gs_image2_t_init
	jmp	.LBB8_21
.LBB8_8:                                # %if.else
	leaq	-48(%r15), %rbx
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB8_10
# BB#9:                                 # %land.lhs.true
	movq	8(%r14), %rdi
	movq	-40(%r15), %rsi
	callq	*128(%rdi)
	movl	$st_igstate_obj, %ecx
	cmpq	%rcx, %rax
	je	.LBB8_11
.LBB8_10:                               # %if.then.22
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB8_21:                               # %cleanup
	movl	%ebp, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_11:                               # %do.body
	movl	$-7, %ebp
	testb	$32, (%rbx)
	je	.LBB8_21
# BB#12:                                # %do.end
	movq	-40(%r15), %rax
	movq	8(%rax), %rax
	movq	%rax, 112(%rsp)
	movq	(%r14), %rdi
	jmp	.LBB8_13
.Lfunc_end8:
	.size	composite_image, .Lfunc_end8-composite_image
	.cfi_endproc

	.align	16, 0x90
	.type	begin_composite,@function
begin_composite:                        # @begin_composite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp59:
	.cfi_def_cfa_offset 64
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%r15), %rdi
	callq	gs_currentdevice
	movq	%rax, %r12
	leaq	8(%rbx), %r14
	movq	8(%r15), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_create_composite_alpha
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB9_6
# BB#1:                                 # %if.end
	leaq	16(%rbx), %rbp
	movq	%r12, 16(%rbx)
	movq	%r12, 24(%rbx)
	movq	8(%rbx), %rdx
	movq	(%r15), %rcx
	movq	8(%r15), %r8
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*1464(%r12)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB9_2
# BB#5:                                 # %if.end.10
	movq	(%r15), %rdi
	movq	(%rbp), %rsi
	callq	gs_setdevice_no_init
	jmp	.LBB9_6
.LBB9_2:                                # %if.then.9
	movq	16(%rbx), %rdi
	cmpq	24(%rbx), %rdi
	je	.LBB9_4
# BB#3:                                 # %if.then.i
	callq	gs_closedevice
	movq	(%r15), %rdi
	movq	24(%rbx), %rsi
	callq	gs_setdevice_no_init
.LBB9_4:                                # %end_composite.exit
	movq	8(%r15), %rdi
	movq	(%r14), %rsi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	movl	%r12d, %r13d
.LBB9_6:                                # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	begin_composite, .Lfunc_end9-begin_composite
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0currentalpha"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1setalpha"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.alphaimage"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"8composite"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"5compositerect"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"8dissolve"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"5.sizeimagebox"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0.sizeimageparams"
	.size	.L.str.7, 18

	.type	zdpnext_op_defs,@object # @zdpnext_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdpnext_op_defs
	.align	16
zdpnext_op_defs:
	.quad	.L.str
	.quad	zcurrentalpha
	.quad	.L.str.1
	.quad	zsetalpha
	.quad	.L.str.2
	.quad	zalphaimage
	.quad	.L.str.3
	.quad	zcomposite
	.quad	.L.str.4
	.quad	zcompositerect
	.quad	.L.str.5
	.quad	zdissolve
	.quad	.L.str.6
	.quad	zsizeimagebox
	.quad	.L.str.7
	.quad	zsizeimageparams
	.zero	16
	.size	zdpnext_op_defs, 144

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"composite_image"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"end_composite(gs_composite_t)"
	.size	.L.str.9, 30

	.type	zsizeimageparams.sizes,@object # @zsizeimageparams.sizes
	.section	.rodata,"a",@progbits
	.align	2
zsizeimageparams.sizes:
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	8                       # 0x8
	.short	12                      # 0xc
	.short	16                      # 0x10
	.size	zsizeimageparams.sizes, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
