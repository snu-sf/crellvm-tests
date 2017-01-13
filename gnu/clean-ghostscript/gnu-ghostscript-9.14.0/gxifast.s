	.text
	.file	"gxifast.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4566650022153682944     # double 0.001953125
.LCPI0_1:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_image_class_1_simple
	.align	16, 0x90
	.type	gs_image_class_1_simple,@function
gs_image_class_1_simple:                # @gs_image_class_1_simple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	cmpb	$0, 1268(%r14)
	jne	.LBB0_25
# BB#1:                                 # %lor.lhs.false
	xorl	%ebx, %ebx
	movzbl	579(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB0_25
# BB#2:                                 # %lor.lhs.false.7
	xorl	%ebx, %ebx
	movzbl	576(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB0_25
# BB#3:                                 # %if.end
	movslq	1452(%r14), %r15
	movl	1264(%r14), %eax
	xorl	%ebx, %ebx
	cmpl	$1, %eax
	jne	.LBB0_4
# BB#9:                                 # %sw.bb.57
	movslq	1472(%r14), %rax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movslq	1188(%r14), %rdx
	leaq	127(%rdx,%rax), %rdx
	sarq	$8, %rdx
	addq	$127, %rax
	sarq	$8, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	negq	%rax
	cmovlq	%rdx, %rax
	leaq	63(%rax), %rdx
	leaq	-63(%rcx), %rsi
	andq	%rsi, %rdx
	leaq	56(,%rax,8), %rsi
	andq	$-64, %rsi
	addq	%rdx, %rsi
	movslq	1152(%r14), %rdx
	xorl	%ebx, %ebx
	cmpq	%rdx, %rax
	jne	.LBB0_10
# BB#12:                                # %lor.lhs.false.93
	cmpq	%rcx, %rsi
	jg	.LBB0_25
	jmp	.LBB0_13
.LBB0_4:                                # %if.end
	testl	%eax, %eax
	jne	.LBB0_25
# BB#5:                                 # %sw.bb
	movslq	1184(%r14), %rax
	leaq	127(%rax,%r15), %rax
	sarq	$8, %rax
	addq	$127, %r15
	sarq	$8, %r15
	subq	%r15, %rax
	movslq	1152(%r14), %rcx
	movl	$image_render_simple, %ebx
	cmpq	%rcx, %rax
	je	.LBB0_15
# BB#6:                                 # %if.then.20
	movq	%rax, %rcx
	negq	%rcx
	cmovlq	%rax, %rcx
	xorl	%ebx, %ebx
	cmpl	$0, 1308(%r14)
	jne	.LBB0_25
# BB#7:                                 # %if.end.35
	leaq	63(%rcx), %rsi
	shrq	$3, %rsi
	andl	$-8, %esi
	addl	$8, %esi
	movl	%ecx, 1260(%r14)
	movl	%esi, 1256(%r14)
	movq	24(%r14), %rdi
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movq	%rax, 1248(%r14)
	movl	$image_render_simple, %ebx
	testq	%rax, %rax
	jne	.LBB0_15
	jmp	.LBB0_8
.LBB0_10:                               # %land.lhs.true
	cmpq	%rcx, %rsi
	jg	.LBB0_25
# BB#11:                                # %land.lhs.true
	movl	1308(%r14), %ecx
	testl	%ecx, %ecx
	jne	.LBB0_25
.LBB0_13:                               # %if.end.97
	movl	%eax, 1260(%r14)
	movl	%esi, 1256(%r14)
	movq	24(%r14), %rdi
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movq	%rax, 1248(%r14)
	testq	%rax, %rax
	je	.LBB0_8
# BB#14:                                # %if.end.115
	subl	$-128, %r15d
	sarl	$8, %r15d
	movl	%r15d, 1492(%r14)
	movl	%r15d, 1496(%r14)
	movss	1124(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1316(%r14)
	movl	$image_render_landscape, %ebx
.LBB0_15:                               # %sw.epilog
	movss	1120(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1312(%r14)
	movq	$sample_unpack_copy, 1200(%r14)
	movb	$8, 577(%r14)
	cmpb	$0, 1116(%r14)
	je	.LBB0_25
# BB#16:                                # %if.then.134
	movb	$1, 1118(%r14)
	cmpl	$1, 584(%r14)
	jne	.LBB0_19
# BB#17:                                # %if.then.137
	cmpl	$0, 1856(%r14)
	je	.LBB0_22
# BB#18:                                # %select.mid
	leaq	24432(%r14), %rax
	jmp	.LBB0_23
.LBB0_8:                                # %if.then.51
	movq	16(%r14), %rdi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movq	%r14, %rsi
	callq	gx_default_end_image
	jmp	.LBB0_25
.LBB0_19:                               # %if.else
	movl	$image_render_skip, %eax
	cmpl	$0, 588(%r14)
	jne	.LBB0_24
# BB#20:                                # %if.then.169
	cmpl	$0, 1856(%r14)
	je	.LBB0_21
.LBB0_22:                               # %select.mid91
	leaq	24440(%r14), %rax
	jmp	.LBB0_23
.LBB0_21:
	leaq	24432(%r14), %rax
.LBB0_23:                               # %select.end90
	movq	(%rax), %rcx
	movq	$-1, 8(%rcx)
	movq	(%rax), %rcx
	movq	$gx_dc_type_data_pure, (%rcx)
	movq	(%rax), %rax
	movl	$0, 360(%rax)
	movq	%rbx, %rax
.LBB0_24:                               # %if.end.206
	movl	$0, 1852(%r14)
	movq	%rax, %rbx
.LBB0_25:                               # %cleanup.210
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gs_image_class_1_simple, .Lfunc_end0-gs_image_class_1_simple
	.cfi_endproc

	.align	16, 0x90
	.type	image_render_simple,@function
image_render_simple:                    # @image_render_simple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 176
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%r9, 112(%rsp)          # 8-byte Spill
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movq	%rdi, %r14
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.LBB1_35
# BB#1:                                 # %if.end
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	1216(%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	1312(%r14), %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movl	1516(%r14), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movslq	1452(%r14), %r15
	movslq	1512(%r14), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	24432(%r14), %r13
	movq	24440(%r14), %rbx
	movq	(%r13), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	jne	.LBB1_3
# BB#2:                                 # %land.lhs.true
	cmpq	$-1, 8(%r13)
	je	.LBB1_4
.LBB1_3:                                # %land.lhs.true.9
	movq	1216(%r14), %rsi
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	*32(%rax)
	testl	%eax, %eax
	js	.LBB1_35
.LBB1_4:                                # %lor.lhs.false
	movq	(%rbx), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	jne	.LBB1_6
# BB#5:                                 # %land.lhs.true.16
	cmpq	$-1, 8(%rbx)
	je	.LBB1_7
.LBB1_6:                                # %land.lhs.true.21
	movq	1216(%r14), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	*32(%rax)
	testl	%eax, %eax
	js	.LBB1_35
.LBB1_7:                                # %if.end.29
	movl	%r12d, %r9d
	movq	%rbp, %r8
	movq	%r15, %r10
	leaq	127(%r10), %r12
	shrq	$8, %r12
	movq	1248(%r14), %r15
	testq	%r15, %r15
	je	.LBB1_8
# BB#9:                                 # %if.else
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_28
# BB#10:                                # %if.else
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpq	mem_mono_device+1216(%rip), %rax
	jne	.LBB1_28
# BB#11:                                # %land.lhs.true.41
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%rbx)
	jne	.LBB1_28
# BB#12:                                # %land.lhs.true.45
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r13)
	jne	.LBB1_28
# BB#13:                                # %land.lhs.true.49
	movq	8(%r13), %rax
	movq	8(%rbx), %rcx
	xorq	%rax, %rcx
	cmpq	$1, %rcx
	jne	.LBB1_28
# BB#14:                                # %land.lhs.true.56
	testl	%r12d, %r12d
	js	.LBB1_28
# BB#15:                                # %land.lhs.true.56
	movb	1269(%r14), %cl
	testb	%cl, %cl
	jne	.LBB1_28
# BB#16:                                # %land.lhs.true.60
	movq	88(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	js	.LBB1_28
# BB#17:                                # %land.lhs.true.60
	movl	1184(%r14), %ecx
	leal	(%rcx,%r10), %edx
	movslq	%edx, %r13
	addq	$127, %r13
	shrq	$8, %r13
	movq	112(%rsp), %rdx         # 8-byte Reload
	cmpl	832(%rdx), %r13d
	jg	.LBB1_28
# BB#18:                                # %land.lhs.true.72
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	leal	(%rdx,%rsi), %edx
	movq	112(%rsp), %rsi         # 8-byte Reload
	cmpl	836(%rsi), %edx
	jle	.LBB1_19
.LBB1_28:                               # %if.else.168
	movl	1184(%r14), %eax
	movl	1256(%r14), %r13d
	movl	1260(%r14), %ebp
	movl	%r12d, %ebx
	andl	$63, %ebx
	movl	%eax, 8(%rsp)
	movl	%r10d, (%rsp)
	movl	$0, 16(%rsp)
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movq	104(%rsp), %r9          # 8-byte Reload
	callq	image_simple_expand
	movl	%ebp, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jmp	.LBB1_29
.LBB1_8:                                # %if.then.33
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	7(%rax), %r13d
	shrl	$3, %r13d
	xorl	%ebx, %ebx
	movq	%r8, %r15
.LBB1_29:                               # %if.end.177
	movq	96(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB1_30
# BB#33:
	movl	80(%rsp), %ecx          # 4-byte Reload
	sarl	$31, %ecx
	movq	104(%rsp), %rax         # 8-byte Reload
	andl	%eax, %ecx
	subl	%ecx, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_34:                               # %for.body.186
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbp), %r9d
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	movl	%r13d, %ecx
	movl	%r12d, %r8d
	callq	copy_portrait
	testl	%eax, %eax
	js	.LBB1_35
# BB#31:                                # %for.cond.183
                                        #   in Loop: Header=BB1_34 Depth=1
	incl	%ebp
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebp
	jl	.LBB1_34
# BB#32:
	movl	$1, %eax
	jmp	.LBB1_35
.LBB1_30:
	movl	$1, %eax
.LBB1_35:                               # %cleanup.200
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_19:                               # %if.then.76
	leal	-1(%r13), %edx
	movl	%r12d, %ebp
	sarl	$3, %ebp
	sarl	$3, %edx
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	2576(%rdi), %rdi
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	(%rdi,%rbx,8), %rbx
	movl	%r12d, %esi
	andl	$63, %esi
	movl	%r12d, %edi
	subl	%esi, %edi
	sarl	$3, %edi
	movl	$1, %r15d
	subl	%edi, %r15d
	addl	%edx, %r15d
	movslq	%ebp, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movzbl	(%rbx,%rbp), %ebp
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movslq	%edx, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movzbl	(%rbx,%rdx), %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movslq	%edi, %rdx
	leaq	(%rdx,%rbx), %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	sete	%al
	cmpl	$0, 1528(%r14)
	sete	%dl
	xorb	%al, %dl
	shlb	$7, %dl
	sarb	$7, %dl
	movl	%ecx, 8(%rsp)
	movl	%r10d, (%rsp)
	movzbl	%dl, %eax
	movl	%eax, 16(%rsp)
	movl	%esi, %ebp
	movl	%r15d, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movq	104(%rsp), %r9          # 8-byte Reload
	callq	image_simple_expand
	movl	%r12d, %ecx
	movq	%r12, %r14
	andl	$7, %ecx
	je	.LBB1_21
# BB#20:                                # %if.then.106
	movl	$65280, %eax            # imm = 0xFF00
	shrl	%cl, %eax
	movl	44(%rsp), %esi          # 4-byte Reload
	andl	%eax, %esi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movzbl	(%rbx,%rdx), %ecx
	notl	%eax
	andl	%ecx, %eax
	addl	%esi, %eax
	movb	%al, (%rbx,%rdx)
.LBB1_21:                               # %if.end.122
	movl	%r13d, %ecx
	andl	$7, %ecx
	movq	72(%rsp), %r12          # 8-byte Reload
	je	.LBB1_23
# BB#22:                                # %if.then.126
	movl	$65280, %eax            # imm = 0xFF00
	shrl	%cl, %eax
	movq	64(%rsp), %rdx          # 8-byte Reload
	movzbl	(%rbx,%rdx), %ecx
	andl	%eax, %ecx
	notl	%eax
	movl	60(%rsp), %esi          # 4-byte Reload
	andl	%eax, %esi
	addl	%ecx, %esi
	movb	%sil, (%rbx,%rdx)
.LBB1_23:                               # %if.end.144
	movl	$1, %ebx
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	jge	.LBB1_25
# BB#24:
	movl	$1, %eax
	jmp	.LBB1_35
.LBB1_25:
	subl	%r14d, %r13d
.LBB1_27:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbx), %eax
	movl	%r13d, 8(%rsp)
	movl	%eax, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	movl	%ebp, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r9d
	callq	*%r12
	testl	%eax, %eax
	js	.LBB1_35
# BB#26:                                # %for.cond
                                        #   in Loop: Header=BB1_27 Depth=1
	incl	%ebx
	xorl	%eax, %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %ebx
	jge	.LBB1_35
	jmp	.LBB1_27
.Lfunc_end1:
	.size	image_render_simple, .Lfunc_end1-image_render_simple
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	image_render_landscape,@function
image_render_landscape:                 # @image_render_landscape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 160
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movl	%r8d, %r14d
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	1248(%rbx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	1260(%rbx), %r15d
	movl	1524(%rbx), %eax
	movl	1316(%rbx), %ecx
	shrl	$31, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movss	1128(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 100(%rsp)        # 4-byte Spill
	movl	%eax, %r13d
	negl	%r13d
	xorl	%ebp, %ebp
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	movl	$-1, %ecx
	movl	$1, %edx
	cmoval	%ecx, %edx
	movl	%edx, 84(%rsp)          # 4-byte Spill
	cmovbel	%eax, %r13d
	cmoval	%eax, %ebp
	addl	1520(%rbx), %ebp
	movl	1496(%rbx), %edx
	testl	%r14d, %r14d
	je	.LBB2_2
# BB#1:                                 # %entry
	cmpl	%edx, %ebp
	je	.LBB2_7
.LBB2_2:                                # %if.then.10
	ucomiss	100(%rsp), %xmm0        # 4-byte Folded Reload
	movl	1492(%rbx), %eax
	movq	%rbx, %rdi
	jbe	.LBB2_3
# BB#4:                                 # %cond.false
	movl	%edx, %esi
	movl	%eax, %edx
	jmp	.LBB2_5
.LBB2_3:                                # %cond.true
	movl	%eax, %esi
.LBB2_5:                                # %cond.end
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	copy_landscape
	testl	%eax, %eax
	js	.LBB2_21
# BB#6:                                 # %if.end.19
	testl	%r14d, %r14d
	movl	%ebp, 1496(%rbx)
	movl	%ebp, 1492(%rbx)
	je	.LBB2_21
.LBB2_7:                                # %for.cond.preheader
	testl	%r13d, %r13d
	je	.LBB2_20
# BB#8:                                 # %for.body.lr.ph
	movl	%r15d, %edx
	addl	$63, %edx
	shrl	$3, %edx
	andl	$536870904, %edx        # imm = 0x1FFFFFF8
	movl	%edx, 76(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	xorps	%xmm0, %xmm0
	ucomiss	100(%rsp), %xmm0        # 4-byte Folded Reload
	movl	$-1, %eax
	cmovbel	%r15d, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	negl	%r13d
	.align	16, 0x90
.LBB2_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	80(%rsp), %ebp          # 4-byte Folded Reload
	movl	%ebp, %r12d
	andl	$7, %r12d
	movl	%r12d, %eax
	imull	%edx, %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	testq	%r15, %r15
	je	.LBB2_10
# BB#11:                                # %if.else.38
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	%r15, %r14
	jmp	.LBB2_12
	.align	16, 0x90
.LBB2_10:                               # %if.then.36
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	1188(%rbx), %eax
	movl	1472(%rbx), %ecx
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	$0, 16(%rsp)
	movl	$0, %esi
	movq	%r14, %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	44(%rsp), %r8d          # 4-byte Reload
	movl	48(%rsp), %r9d          # 4-byte Reload
	callq	image_simple_expand
.LBB2_12:                               # %if.end.41
                                        #   in Loop: Header=BB2_9 Depth=1
	xorps	%xmm0, %xmm0
	ucomiss	100(%rsp), %xmm0        # 4-byte Folded Reload
	jbe	.LBB2_13
# BB#15:                                # %if.else.60
                                        #   in Loop: Header=BB2_9 Depth=1
	testl	%r12d, %r12d
	jne	.LBB2_19
# BB#16:                                # %if.then.63
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	1492(%rbx), %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_13:                               # %if.then.44
                                        #   in Loop: Header=BB2_9 Depth=1
	incl	%ebp
	cmpl	$7, %r12d
	jne	.LBB2_19
# BB#14:                                # %if.then.47
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	1492(%rbx), %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
.LBB2_17:                               # %if.then.63
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	copy_landscape
	testl	%eax, %eax
	js	.LBB2_21
# BB#18:                                # %cleanup.72.thread
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	%ebp, 1492(%rbx)
	xorl	%r14d, %r14d
.LBB2_19:                               # %for.inc
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	76(%rsp), %edx          # 4-byte Reload
	addl	84(%rsp), %r13d         # 4-byte Folded Reload
	movq	%r14, %r15
	jne	.LBB2_9
.LBB2_20:                               # %for.end
	movl	%ebp, 1496(%rbx)
	xorl	%eax, %eax
.LBB2_21:                               # %cleanup.79
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_render_landscape, .Lfunc_end2-image_render_landscape
	.cfi_endproc

	.align	16, 0x90
	.type	image_render_skip,@function
image_render_skip:                      # @image_render_skip
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%r8d, %eax
	retq
.Lfunc_end3:
	.size	image_render_skip, .Lfunc_end3-image_render_skip
	.cfi_endproc

	.align	16, 0x90
	.type	image_simple_expand,@function
image_simple_expand:                    # @image_simple_expand
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 240
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movl	%esi, %ebx
	movq	%rdi, %r11
	movl	%r8d, %ecx
	andl	$7, %ecx
	movl	$128, %r12d
	shrl	%cl, %r12d
	movl	$255, %r13d
	shrl	%cl, %r13d
	addl	%r9d, %ecx
	shrl	$3, %ecx
	testl	%r9d, %r9d
	je	.LBB4_83
# BB#1:                                 # %do.end
	movzbl	256(%rsp), %esi
	movb	%sil, %al
	movb	%al, 103(%rsp)          # 1-byte Spill
	movl	248(%rsp), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	240(%rsp), %r15d
	leal	(%r9,%r8), %eax
	movq	%r9, 168(%rsp)          # 8-byte Spill
	sarl	$3, %r8d
	movslq	%r8d, %rdi
	addq	%rdi, %rbp
	movq	%rbp, 176(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rbp), %rbp
	notl	%eax
	andb	$7, %al
	movl	$1, %edi
	movb	%al, %cl
	shll	%cl, %edi
	movzbl	%dil, %eax
	leaq	-1(%rbp), %rdi
	cmpl	$128, %eax
	cmovneq	%rbp, %rdi
	movb	$1, %cl
	je	.LBB4_3
# BB#2:                                 # %do.end
	addl	%eax, %eax
	movb	%al, %cl
.LBB4_3:                                # %do.end
	notb	103(%rsp)               # 1-byte Folded Spill
	movzbl	%cl, %eax
	negl	%eax
	leal	(%rax,%rax), %r10d
	movzbl	(%rdi), %r8d
	cmpq	176(%rsp), %rdi         # 8-byte Folded Reload
	movl	$-1, %ebp
	cmovel	%r13d, %ebp
	andl	%r10d, %ebp
	testb	%cl, %r8b
	je	.LBB4_15
# BB#4:                                 # %if.then.35
	movl	%r8d, %eax
	notl	%eax
	andl	%eax, %ebp
	testb	$-2, %bpl
	je	.LBB4_5
# BB#84:                                # %if.then.41
	decb	%cl
	orb	%r8b, %cl
	movzbl	%cl, %eax
	jmp	.LBB4_24
.LBB4_15:                               # %if.else.76
	andb	%r8b, %bpl
	je	.LBB4_16
# BB#85:                                # %if.then.81
	andl	%eax, %r8d
	jmp	.LBB4_23
.LBB4_5:
	movq	176(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB4_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	cmpq	%rbp, %rax
	jbe	.LBB4_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB4_6 Depth=1
	leaq	-1(%rax), %rdi
	movzbl	-1(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB4_6
.LBB4_8:                                # %while.end
	cmpq	%rbp, %rax
	je	.LBB4_11
# BB#9:                                 # %lor.lhs.false
	leaq	1(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_13
# BB#10:                                # %land.lhs.true
	movzbl	(%rbp), %ecx
	notl	%ecx
	andb	%r13b, %cl
	je	.LBB4_11
.LBB4_13:                               # %if.end.68
	movb	-1(%rax), %cl
	decq	%rax
	movq	%rax, %rdi
	movzbl	%cl, %eax
	jmp	.LBB4_24
.LBB4_16:
	movq	176(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB4_17:                               # %while.cond.88
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	cmpq	%rbp, %rax
	jbe	.LBB4_19
# BB#18:                                # %land.rhs.91
                                        #   in Loop: Header=BB4_17 Depth=1
	leaq	-1(%rax), %rdi
	cmpb	$0, -1(%rax)
	je	.LBB4_17
.LBB4_19:                               # %while.end.99
	cmpq	%rbp, %rax
	je	.LBB4_12
# BB#20:                                # %lor.lhs.false.102
	leaq	1(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_22
# BB#21:                                # %land.lhs.true.106
	movzbl	(%rbp), %ecx
	testl	%ecx, %r13d
	je	.LBB4_12
.LBB4_22:                               # %if.end.116
	movb	-1(%rax), %r8b
	decq	%rax
	movq	%rax, %rdi
.LBB4_23:                               # %if.end.118
	movzbl	%r8b, %eax
	xorq	$255, %rax
.LBB4_24:                               # %cleanup.cont
	movzbl	byte_reverse_bits(%rax), %eax
	movzbl	byte_bit_run_length_0(%rax), %r8d
	movl	%r8d, %ecx
	decl	%ecx
	leaq	1(%rdi), %rbp
	movl	$1, %eax
	shll	%cl, %eax
	testb	%r8b, %r8b
	cmovneq	%rdi, %rbp
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movb	$-128, %r14b
	je	.LBB4_26
# BB#25:                                # %cleanup.cont
	movb	%al, %r14b
.LBB4_26:                               # %cleanup.cont
	movl	%ebx, %eax
	sarl	$3, %eax
	cltq
	leaq	(%r11,%rax), %rdi
	movq	%r11, %r13
	subl	%eax, %edx
	callq	memset
	addl	$127, %r15d
	movl	144(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	js	.LBB4_27
# BB#30:                                # %if.else.180
	movzbl	%r15b, %ecx
	shll	$8, %ebx
	orl	%ecx, %ebx
	movq	168(%rsp), %rdi         # 8-byte Reload
	leal	-1(%rdi), %r15d
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %esi
	movl	%eax, %ebp
	movq	176(%rsp), %r10         # 8-byte Reload
	movb	%r14b, %r9b
	jmp	.LBB4_31
.LBB4_27:                               # %if.then.161
	addl	%eax, %r15d
	movzbl	%r15b, %ecx
	subl	%eax, %ecx
	shll	$8, %ebx
	addl	%ecx, %ebx
	movq	168(%rsp), %rdi         # 8-byte Reload
	leal	-1(%rdi), %r15d
	negl	%eax
	xorl	%esi, %esi
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %ebp
	testl	%edx, %edx
	movq	176(%rsp), %r10         # 8-byte Reload
	movb	%r14b, %r9b
	je	.LBB4_28
# BB#29:                                # %if.then.171
	notl	%ebp
	movl	%edi, %esi
	subl	%edx, %esi
	jmp	.LBB4_31
.LBB4_28:
	negl	%ebp
.LBB4_31:                               # %if.end.188
	movq	%r13, 104(%rsp)         # 8-byte Spill
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	leal	(%rsi,%rsi), %eax
	cmpl	%edi, %eax
	sbbl	%r8d, %r8d
	xorl	%r14d, %r14d
	cmpl	%edi, %eax
	movl	%edi, %ecx
	cmovbl	%r14d, %ecx
	subl	%ecx, %eax
	addl	%eax, %eax
	cmpl	%edi, %eax
	sbbl	%ecx, %ecx
	cmpl	%edi, %eax
	movl	%edi, %edx
	cmovbl	%r14d, %edx
	subl	%edx, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leal	(%rax,%rax), %edx
	cmpl	%edi, %edx
	sbbl	%r13d, %r13d
	cmpl	%edi, %edx
	movl	%edi, %eax
	cmovbl	%r14d, %eax
	andl	$1, %r8d
	leal	(%rbp,%rbp), %r11d
	orl	%r8d, %r11d
	andl	$1, %ecx
	addl	%r11d, %r11d
	orl	%ecx, %r11d
	xorl	$3, %r11d
	movq	%r11, 112(%rsp)         # 8-byte Spill
	andl	$1, %r13d
	subl	%eax, %edx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	leal	(%r11,%r11), %r8d
	orl	%r13d, %r8d
	xorl	$1, %r8d
	movq	%r8, 80(%rsp)           # 8-byte Spill
	leal	(%rdx,%rdx), %ecx
	cmpl	%edi, %ecx
	movl	%edi, %eax
	cmovbl	%r14d, %eax
	sbbl	%r11d, %r11d
	subl	%eax, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	andl	$1, %r11d
	leal	(%r8,%r8), %eax
	orl	%r11d, %eax
	xorl	$1, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	(%rcx,%rdx), %ecx
	cmpl	%edi, %ecx
	movl	%edi, %r13d
	cmovbl	%r14d, %r13d
	setae	%r11b
	subl	%r13d, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movzbl	%r11b, %r13d
	leal	(%rax,%r8), %r11d
	addl	%r13d, %r11d
	movq	%r11, 8(%rsp)           # 8-byte Spill
	leal	(%rcx,%rdx), %eax
	cmpl	%edi, %eax
	cmovael	%edi, %r14d
	setae	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 168(%rsp)         # 4-byte Spill
	movb	(%r10), %r13b
	movslq	%ebx, %rdx
	movslq	144(%rsp), %rcx         # 4-byte Folded Reload
	addq	%rdx, %rcx
	shrq	$8, %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movzbl	103(%rsp), %ecx         # 1-byte Folded Reload
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	subl	%eax, %r14d
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	leal	(%r11,%r8), %eax
	addl	168(%rsp), %eax         # 4-byte Folded Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	2(%rdx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	152(%rsp), %r8          # 8-byte Reload
	.align	16, 0x90
.LBB4_32:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_33 Depth 2
                                        #     Child Loop BB4_38 Depth 2
                                        #     Child Loop BB4_52 Depth 2
                                        #     Child Loop BB4_57 Depth 2
                                        #     Child Loop BB4_60 Depth 2
                                        #     Child Loop BB4_64 Depth 2
                                        #     Child Loop BB4_76 Depth 2
                                        #     Child Loop BB4_78 Depth 2
	notb	%r13b
	testb	%r13b, %r12b
	je	.LBB4_34
	.align	16, 0x90
.LBB4_33:                               # %do.body.328
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subl	%esi, %r15d
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%r15d, %eax
	shrl	$31, %r15d
	addl	%ebp, %ebx
	addl	%r15d, %ebx
	shrb	%r12b
	testb	%r13b, %r12b
	movl	%eax, %r15d
	jne	.LBB4_33
.LBB4_34:                               # %while.end.361
                                        #   in Loop: Header=BB4_32 Depth=1
	testb	%r12b, %r12b
	jne	.LBB4_53
# BB#35:                                # %sw.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	movb	1(%r10), %r13b
	testb	%r13b, %r13b
	je	.LBB4_37
# BB#36:                                #   in Loop: Header=BB4_32 Depth=1
	incq	%r10
	jmp	.LBB4_48
.LBB4_37:                               # %if.else.373.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	%rdx, %r11
	addq	$2, %r10
	movq	%r10, %rax
	movl	68(%rsp), %ecx          # 4-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB4_38:                               # %if.else.373
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r10
	movb	(%r10), %r13b
	testb	%r13b, %r13b
	jne	.LBB4_39
# BB#41:                                # %if.else.407
                                        #   in Loop: Header=BB4_38 Depth=2
	movb	1(%r10), %r13b
	testb	%r13b, %r13b
	jne	.LBB4_42
# BB#43:                                # %if.else.441
                                        #   in Loop: Header=BB4_38 Depth=2
	movb	2(%r10), %r13b
	testb	%r13b, %r13b
	jne	.LBB4_44
# BB#45:                                # %do.body.476
                                        #   in Loop: Header=BB4_38 Depth=2
	movl	%r15d, %eax
	addl	%ecx, %eax
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	%edi, %r15d
	addl	%eax, %r15d
	shrl	$31, %eax
	leal	(%rbx,%rdx), %ebx
	addl	%eax, %ebx
	movb	3(%r10), %r13b
	leaq	4(%r10), %rax
	testb	%r13b, %r13b
	je	.LBB4_38
# BB#46:                                #   in Loop: Header=BB4_32 Depth=1
	addq	$3, %r10
	jmp	.LBB4_47
.LBB4_39:                               # %do.body.379
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	subl	%eax, %r15d
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%r15d, %eax
	shrl	$31, %r15d
	movq	80(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB4_40
.LBB4_42:                               # %do.body.413
                                        #   in Loop: Header=BB4_32 Depth=1
	incq	%r10
	movq	32(%rsp), %rax          # 8-byte Reload
	subl	%eax, %r15d
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%r15d, %eax
	shrl	$31, %r15d
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB4_40
.LBB4_44:                               # %do.body.447
                                        #   in Loop: Header=BB4_32 Depth=1
	addq	$2, %r10
	movq	16(%rsp), %rax          # 8-byte Reload
	subl	%eax, %r15d
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%r15d, %eax
	shrl	$31, %r15d
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB4_40:                               # %if.end.507
                                        #   in Loop: Header=BB4_32 Depth=1
	addl	%ecx, %ebx
	addl	%r15d, %ebx
	movl	%eax, %r15d
.LBB4_47:                               # %if.end.507
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	%r11, %rdx
.LBB4_48:                               # %if.end.507
                                        #   in Loop: Header=BB4_32 Depth=1
	movzbl	%r13b, %eax
	movb	$-128, %r12b
	cmpl	$15, %eax
	ja	.LBB4_50
# BB#49:                                # %if.else.512
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r15d
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%r15d, %eax
	shrl	$31, %r15d
	movq	112(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %ebx
	addl	%r15d, %ebx
	movb	$8, %r12b
	movl	%eax, %r15d
.LBB4_50:                               # %if.end.537
                                        #   in Loop: Header=BB4_32 Depth=1
	notb	%r13b
	jmp	.LBB4_52
	.align	16, 0x90
.LBB4_51:                               # %do.body.547
                                        #   in Loop: Header=BB4_52 Depth=2
	movl	%r15d, %eax
	subl	%esi, %eax
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	%edi, %r15d
	addl	%eax, %r15d
	shrl	$31, %eax
	addl	%ebp, %ebx
	addl	%eax, %ebx
	shrb	%r12b
.LBB4_52:                               # %do.body.547
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r12b
	jne	.LBB4_51
.LBB4_53:                               # %if.end.581
                                        #   in Loop: Header=BB4_32 Depth=1
	movl	%ebx, %r11d
	sarl	$8, %r11d
	cmpq	%r8, %r10
	jb	.LBB4_56
# BB#54:                                # %if.end.581
                                        #   in Loop: Header=BB4_32 Depth=1
	movzbl	%r9b, %eax
	movzbl	%r12b, %ecx
	cmpl	%eax, %ecx
	jne	.LBB4_56
# BB#55:                                #   in Loop: Header=BB4_32 Depth=1
	movq	%r10, 176(%rsp)         # 8-byte Spill
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edi
	movb	%r9b, %r12b
	jmp	.LBB4_66
	.align	16, 0x90
.LBB4_56:                               # %if.else.599
                                        #   in Loop: Header=BB4_32 Depth=1
	notb	%r13b
	.align	16, 0x90
.LBB4_57:                               # %do.body.604
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %eax
	subl	%esi, %eax
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	%edi, %r15d
	addl	%eax, %r15d
	shrl	$31, %eax
	addl	%ebp, %ebx
	addl	%eax, %ebx
	shrb	%r12b
	testb	%r13b, %r12b
	jne	.LBB4_57
# BB#58:                                # %do.end.642
                                        #   in Loop: Header=BB4_32 Depth=1
	testb	%r12b, %r12b
	jne	.LBB4_65
# BB#59:                                # %while.cond.645.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	%rdx, %r14
	movzbl	1(%r10), %r13d
	incq	%r10
	cmpl	$255, %r13d
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	jne	.LBB4_61
	.align	16, 0x90
.LBB4_60:                               # %do.body.651
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subl	%ecx, %r15d
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%r15d, %eax
	shrl	$31, %r15d
	addl	%edx, %ebx
	addl	%r15d, %ebx
	movzbl	1(%r10), %r13d
	incq	%r10
	cmpl	$255, %r13d
	movl	%eax, %r15d
	je	.LBB4_60
.LBB4_61:                               # %while.end.678
                                        #   in Loop: Header=BB4_32 Depth=1
	movzbl	%r13b, %eax
	movb	$-128, %r12b
	cmpl	$240, %eax
	movq	%r14, %rdx
	jb	.LBB4_64
# BB#62:                                # %if.else.683
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r15d
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%r15d, %eax
	shrl	$31, %r15d
	movq	112(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %ebx
	addl	%r15d, %ebx
	movb	$8, %r12b
	movl	%eax, %r15d
	jmp	.LBB4_64
	.align	16, 0x90
.LBB4_63:                               # %do.body.715
                                        #   in Loop: Header=BB4_64 Depth=2
	movl	%r15d, %eax
	subl	%esi, %eax
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	%edi, %r15d
	addl	%eax, %r15d
	shrl	$31, %eax
	addl	%ebp, %ebx
	addl	%eax, %ebx
	shrb	%r12b
.LBB4_64:                               # %do.body.715
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r13b, %r12b
	jne	.LBB4_63
.LBB4_65:                               # %if.end.749
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	%r10, 176(%rsp)         # 8-byte Spill
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movl	%ebx, %edi
	sarl	$8, %edi
.LBB4_66:                               # %if.end.754
                                        #   in Loop: Header=BB4_32 Depth=1
	movl	%edi, %ecx
	subl	%r11d, %ecx
	movl	%r11d, %eax
	cmovsl	%edi, %eax
	movl	%ecx, %esi
	negl	%esi
	cmovll	%ecx, %esi
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r10
	leaq	(%rdx,%r10), %r14
	andl	$7, %eax
	leal	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jg	.LBB4_68
# BB#67:                                # %if.then.768
                                        #   in Loop: Header=BB4_32 Depth=1
	movl	%eax, %eax
	movb	image_simple_expand.lmasks(%rax), %al
	movslq	%ecx, %rcx
	subb	image_simple_expand.lmasks(%rcx), %al
	xorb	%al, (%r14)
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	176(%rsp), %r10         # 8-byte Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB4_81
	.align	16, 0x90
.LBB4_68:                               # %if.else.782
                                        #   in Loop: Header=BB4_32 Depth=1
	movb	%r9b, %r8b
	movslq	%ecx, %r9
	addq	$-8, %r9
	movl	%eax, %eax
	movb	image_simple_expand.lmasks(%rax), %al
	cmpl	$8, %r9d
	jg	.LBB4_70
# BB#69:                                # %if.then.786
                                        #   in Loop: Header=BB4_32 Depth=1
	xorb	%al, (%r14)
	movb	image_simple_expand.rmasks(%r9), %al
	xorb	%al, 1(%r14)
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	176(%rsp), %r10         # 8-byte Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	movb	%r8b, %r9b
	movq	152(%rsp), %r8          # 8-byte Reload
	jmp	.LBB4_81
	.align	16, 0x90
.LBB4_70:                               # %if.else.803
                                        #   in Loop: Header=BB4_32 Depth=1
	movb	%r8b, 143(%rsp)         # 1-byte Spill
	xorb	%al, (%r14)
	incq	%r14
	cmpl	$55, %r9d
	jle	.LBB4_71
# BB#86:                                # %if.then.813
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	%r9, 128(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movl	52(%rsp), %esi          # 4-byte Reload
	callq	memset
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	152(%rsp), %r8          # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	addq	72(%rsp), %r14          # 8-byte Folded Reload
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	176(%rsp), %r10         # 8-byte Reload
	movb	143(%rsp), %r9b         # 1-byte Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB4_80
.LBB4_71:                               # %while.cond.829.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	addl	$-16, %ecx
	js	.LBB4_72
# BB#73:                                # %while.body.833.lr.ph
                                        #   in Loop: Header=BB4_32 Depth=1
	decl	%r11d
	movl	%r11d, %r9d
	subl	%edi, %r9d
	cmpl	$-2, %r9d
	movl	$-1, %eax
	cmovgl	%r9d, %eax
	movl	%r11d, %edi
	subl	%eax, %edi
	andl	$7, %edi
	leal	-16(%rsi,%rdi), %r8d
	movl	%r8d, %edi
	shrl	$3, %edi
	movl	%edi, %eax
	incl	%eax
	testb	$7, %al
	je	.LBB4_74
# BB#75:                                # %while.body.833.prol.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	cmpl	$-2, %r9d
	movl	$-1, %eax
	cmovlel	%eax, %r9d
	subl	%r9d, %r11d
	andl	$7, %r11d
	leal	-16(%rsi,%r11), %eax
	shrl	$3, %eax
	incl	%eax
	andl	$7, %eax
	negl	%eax
	movb	103(%rsp), %dl          # 1-byte Reload
	movb	143(%rsp), %r9b         # 1-byte Reload
	.align	16, 0x90
.LBB4_76:                               # %while.body.833.prol
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%dl, (%r14)
	incq	%r14
	addl	$-8, %ecx
	incl	%eax
	jne	.LBB4_76
	jmp	.LBB4_77
.LBB4_72:                               #   in Loop: Header=BB4_32 Depth=1
	movl	%ecx, %eax
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	176(%rsp), %r10         # 8-byte Reload
	movb	143(%rsp), %r9b         # 1-byte Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	152(%rsp), %r8          # 8-byte Reload
	jmp	.LBB4_80
.LBB4_74:                               #   in Loop: Header=BB4_32 Depth=1
	movb	103(%rsp), %dl          # 1-byte Reload
	movb	143(%rsp), %r9b         # 1-byte Reload
.LBB4_77:                               # %while.body.833.lr.ph.split
                                        #   in Loop: Header=BB4_32 Depth=1
	addq	%rdi, %r10
	cmpl	$56, %r8d
	jb	.LBB4_79
	.align	16, 0x90
.LBB4_78:                               # %while.body.833
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%dl, (%r14)
	movb	%dl, 1(%r14)
	movb	%dl, 2(%r14)
	movb	%dl, 3(%r14)
	movb	%dl, 4(%r14)
	movb	%dl, 5(%r14)
	movb	%dl, 6(%r14)
	movb	%dl, 7(%r14)
	addq	$8, %r14
	addl	$-64, %ecx
	jns	.LBB4_78
.LBB4_79:                               # %while.cond.829.if.end.839.loopexit_crit_edge
                                        #   in Loop: Header=BB4_32 Depth=1
	movb	%dl, 103(%rsp)          # 1-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%r10,%rax), %r14
	movl	%ecx, %eax
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	176(%rsp), %r10         # 8-byte Reload
	movq	152(%rsp), %r8          # 8-byte Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
.LBB4_80:                               # %if.end.839
                                        #   in Loop: Header=BB4_32 Depth=1
	andl	$7, %eax
	movb	image_simple_expand.rmasks(%rax), %al
	xorb	%al, (%r14)
.LBB4_81:                               # %if.end.848
                                        #   in Loop: Header=BB4_32 Depth=1
	cmpq	%r8, %r10
	jb	.LBB4_32
# BB#82:                                # %if.end.848
                                        #   in Loop: Header=BB4_32 Depth=1
	movzbl	%r9b, %eax
	movzbl	%r12b, %ecx
	cmpl	%eax, %ecx
	jne	.LBB4_32
.LBB4_83:                               # %cleanup.864
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_11:                               # %do.end.66
	movzbl	103(%rsp), %esi         # 1-byte Folded Reload
.LBB4_12:                               # %do.end.114
	sarl	$3, %ebx
	movslq	%ebx, %rax
	addq	%rax, %r11
	subl	%eax, %edx
	movq	%r11, %rdi
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memset                  # TAILCALL
.Lfunc_end4:
	.size	image_simple_expand, .Lfunc_end4-image_simple_expand
	.cfi_endproc

	.align	16, 0x90
	.type	copy_portrait,@function
copy_portrait:                          # @copy_portrait
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 128
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movl	%r9d, %r11d
	movl	%r8d, %r12d
	movq	144(%rsp), %r15
	movl	136(%rsp), %r8d
	movl	128(%rsp), %r13d
	movl	%esi, %eax
	andl	$7, %eax
	cmpl	$0, 1528(%rdi)
	leaq	24440(%rdi), %rbx
	leaq	24432(%rdi), %rbp
	movq	%rbx, %rdi
	cmoveq	%rbp, %rdi
	cmovneq	%rbp, %rbx
	movq	(%rbx), %rbp
	movq	(%rdi), %rdi
	subq	%rax, %rsi
	leal	(%rdx,%rax,8), %edx
	movq	(%rdi), %r10
	movl	$gx_dc_type_data_pure, %r14d
	movq	(%rbp), %rax
	cmpq	%r14, %r10
	je	.LBB5_1
# BB#6:                                 # %if.end.17
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	jne	.LBB5_12
# BB#7:                                 # %land.lhs.true.21
	movl	$1, %ecx
	cmpq	$-1, 8(%rbp)
	jne	.LBB5_12
# BB#8:
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movq	%rdi, %rbp
	jmp	.LBB5_11
.LBB5_1:                                # %land.lhs.true
	movl	$gx_dc_type_data_pure, %ebx
	cmpq	%rbx, %rax
	je	.LBB5_2
# BB#9:                                 # %land.lhs.true.31
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
	cmpq	$-1, 8(%rdi)
	je	.LBB5_10
.LBB5_12:                               # %if.then.36
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movq	$0, 8(%rsp)
	movl	$252, (%rsp)
	movl	%r12d, %esi
	movl	%r11d, %edx
	movl	%r13d, %ecx
	movq	%r15, %r9
	movl	%r12d, %ebx
	movl	%r8d, %r12d
	movl	%r11d, %r14d
	callq	*40(%r10)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jns	.LBB5_13
	jmp	.LBB5_14
.LBB5_2:                                # %if.then.8
	testb	$7, %cl
	movl	$gx_copy_mono_unaligned, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.8
	cmpl	$1, %r8d
	jne	.LBB5_5
.LBB5_4:                                # %cond.true
	movq	1216(%r15), %rax
.LBB5_5:                                # %cond.end
	movq	8(%rdi), %rbx
	movq	8(%rbp), %rdi
	movq	%rdi, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%r11d, (%rsp)
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movl	%r12d, %r9d
	callq	*%rax
	jmp	.LBB5_14
.LBB5_10:
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	%edx, 64(%rsp)          # 4-byte Spill
.LBB5_11:                               # %if.end.44
	movl	%r12d, %ebx
	movl	%r8d, %r12d
	movl	%r11d, %r14d
.LBB5_13:                               # %if.end.44
	movq	%rbp, %rdi
	movq	(%rdi), %rax
	movl	%ecx, 40(%rsp)
	movq	%r15, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%r14d, (%rsp)
	movl	$252, 32(%rsp)
	xorl	%r8d, %r8d
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	64(%rsp), %edx          # 4-byte Reload
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%ebx, %r9d
	callq	*48(%rax)
.LBB5_14:                               # %cleanup.49
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	copy_portrait, .Lfunc_end5-copy_portrait
	.cfi_endproc

	.align	16, 0x90
	.type	copy_landscape,@function
copy_landscape:                         # @copy_landscape
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
	subq	$72, %rsp
.Ltmp64:
	.cfi_def_cfa_offset 128
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
	movl	1260(%rdi), %ebp
	leal	63(%rbp), %r12d
	shrl	$6, %r12d
	movl	%r12d, %eax
	shll	$6, %eax
	movl	%edx, %r14d
	subl	%esi, %r14d
	je	.LBB6_5
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	je	.LBB6_5
# BB#2:                                 # %if.then.12
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	%esi, 68(%rsp)          # 4-byte Spill
	movq	1248(%rdi), %rbx
	shll	$3, %r12d
	leaq	(%rax,%rbx), %r15
	movslq	1472(%rdi), %rax
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	addq	$127, %rax
	shrq	$8, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	-1(%rbp), %r13d
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	shrl	$3, %r13d
	leaq	1(%r13), %rbp
	shll	$6, %r13d
	.align	16, 0x90
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r13d, %r13
	leaq	(%r15,%r13), %rdx
	leaq	-1(%rbx,%rbp), %rdi
	movl	$8, %ecx
	movl	%r12d, %esi
	callq	memflip8x8
	decq	%rbp
	addl	$-64, %r13d
	testq	%rbp, %rbp
	jg	.LBB6_3
# BB#4:                                 # %if.end.22
	movl	%r14d, %eax
	negl	%eax
	cmovll	%r14d, %eax
	testl	%r14d, %r14d
	movl	68(%rsp), %r8d          # 4-byte Reload
	cmovsl	32(%rsp), %r8d          # 4-byte Folded Reload
	movl	36(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	movq	40(%rsp), %rsi          # 8-byte Reload
	cmovnel	%esi, %ecx
	movq	24(%rsp), %r9           # 8-byte Reload
	subl	%ecx, %r9d
	movl	%r8d, %edx
	andl	$7, %edx
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$8, %ecx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	callq	copy_portrait
	jmp	.LBB6_6
.LBB6_5:                                # %cleanup
	xorl	%eax, %eax
.LBB6_6:                                # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	copy_landscape, .Lfunc_end6-copy_landscape
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image line"
	.size	.L.str, 11

	.type	image_simple_expand.lmasks,@object # @image_simple_expand.lmasks
image_simple_expand.lmasks:
	.asciz	"\377\177?\037\017\007\003\001"
	.size	image_simple_expand.lmasks, 9

	.type	image_simple_expand.rmasks,@object # @image_simple_expand.rmasks
	.section	.rodata,"a",@progbits
image_simple_expand.rmasks:
	.ascii	"\000\200\300\340\360\370\374\376\377"
	.size	image_simple_expand.rmasks, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
