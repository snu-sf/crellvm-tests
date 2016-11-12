	.text
	.file	"gximag3x.bc"
	.align	16, 0x90
	.type	gx_begin_image3x,@function
gx_begin_image3x:                       # @gx_begin_image3x
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 48
	movq	48(%rsp), %r10
	movq	56(%rsp), %r11
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movq	$make_mcdex_default, 24(%rsp)
	movq	$make_midx_default, 16(%rsp)
	callq	gx_begin_image3x_generic
	addq	$40, %rsp
	retq
.Lfunc_end0:
	.size	gx_begin_image3x, .Lfunc_end0-gx_begin_image3x
	.cfi_endproc

	.globl	gs_image3x_t_init
	.align	16, 0x90
	.type	gs_image3x_t_init,@function
gs_image3x_t_init:                      # @gs_image3x_t_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 16
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_pixel_image_t_init
	movq	$gs_image_type_3x, (%rbx)
	movl	$0, 584(%rbx)
	movl	$0, 844(%rbx)
	leaq	848(%rbx), %rdi
	movl	$1, %esi
	callq	gs_data_image_t_init
	movl	$0, 888(%rbx)
	movl	$0, 1416(%rbx)
	movl	$0, 1676(%rbx)
	leaq	1680(%rbx), %rdi
	movl	$1, %esi
	callq	gs_data_image_t_init
	movl	$0, 1720(%rbx)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gs_image3x_t_init, .Lfunc_end1-gs_image3x_t_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.zero	16
	.text
	.globl	gx_begin_image3x_generic
	.align	16, 0x90
	.type	gx_begin_image3x_generic,@function
gx_begin_image3x_generic:               # @gx_begin_image3x_generic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp6:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp7:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 56
	subq	$2328, %rsp             # imm = 0x918
.Ltmp9:
	.cfi_def_cfa_offset 2384
.Ltmp10:
	.cfi_offset %rbx, -56
.Ltmp11:
	.cfi_offset %r12, -48
.Ltmp12:
	.cfi_offset %r13, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%r9, 168(%rsp)          # 8-byte Spill
	movq	%r8, %rbp
	movq	%rcx, %r15
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	$0, 2320(%rsp)
	movl	$-15, %r14d
	cmpl	$0, 36(%r15)
	jle	.LBB2_53
# BB#1:                                 # %if.end
	movq	2392(%rsp), %rbx
	movl	$st_image3x_enum, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB2_53
# BB#2:                                 # %if.end.3
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 584(%rax)
	movq	$0, 624(%rax)
	movq	$0, 640(%rax)
	movq	$0, 648(%rax)
	movq	$0, 680(%rax)
	movq	$0, 696(%rax)
	movq	$0, 736(%rax)
	testq	%rbp, %rbp
	je	.LBB2_4
# BB#3:                                 # %if.then.22
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movq	%r13, 152(%rsp)         # 8-byte Spill
	leaq	392(%rsp), %rax
	movupd	(%rbp), %xmm0
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movupd	%xmm0, (%rax)
	movq	%r15, %rbp
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movq	%r13, 152(%rsp)         # 8-byte Spill
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movl	$0, 396(%rsp)
	movl	$0, 392(%rsp)
	movq	%r15, %rbp
	movl	32(%rbp), %eax
	movl	%eax, 400(%rsp)
	movl	36(%rbp), %eax
	movl	%eax, 404(%rsp)
.LBB2_5:                                # %if.end.32
	movq	%rbx, %r13
	leaq	8(%rbp), %rdi
	leaq	352(%rsp), %rsi
	callq	gs_matrix_invert
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_52
# BB#6:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%rbp), %xmm0
	cvtsi2sdl	36(%rbp), %xmm1
	leaq	376(%rsp), %rsi
	leaq	352(%rsp), %rdi
	callq	gs_point_transform
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_52
# BB#7:                                 # %lor.lhs.false.42
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	584(%rax), %r15
	leaq	584(%rbp), %rsi
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	leaq	352(%rsp), %rdx
	leaq	1008(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%r15, %r8
	movq	%r13, %r9
	callq	check_image3x_mask
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_52
# BB#8:                                 # %lor.lhs.false.49
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	640(%rax), %r12
	leaq	1416(%rbp), %rsi
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	leaq	1664(%rsp), %rcx
	leaq	352(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %r8
	movq	%r13, %r9
	callq	check_image3x_mask
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_52
# BB#9:                                 # %if.end.57
	movq	576(%rbp), %rdi
	callq	gs_color_space_num_components
	movq	184(%rsp), %rbx         # 8-byte Reload
	movl	%eax, 576(%rbx)
	leal	1(%rax), %r8d
	movl	568(%rbp), %r9d
	movl	$image3x_enum_procs, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	160(%rsp), %rcx         # 8-byte Reload
	callq	gx_image_enum_common_init
	movq	392(%rsp), %rax
	movq	400(%rsp), %rcx
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, 716(%rbx)
	shrq	$32, %rcx
	shrq	$32, %rax
	subl	%eax, %ecx
	movl	%ecx, 720(%rbx)
	movl	36(%rbp), %eax
	movl	%eax, 724(%rbx)
	movl	$0, 744(%rbx)
	cmpq	$0, 624(%rbx)
	jne	.LBB2_11
# BB#10:                                # %lor.lhs.false.84
	cmpq	$0, 680(%rbx)
	je	.LBB2_12
.LBB2_11:                               # %if.then.89
	imull	40(%rbp), %esi
	imull	576(%rbx), %esi
	addl	$7, %esi
	sarl	$3, %esi
	movl	$.L.str.1, %edx
	movq	%r13, %rdi
	callq	*64(%r13)
	movq	%rax, 736(%rbx)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB2_51
.LBB2_12:
	movq	%r12, 80(%rsp)          # 8-byte Spill
	leaq	40(%rbp), %rax
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	696(%rbx), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	(%rax), %eax
	movl	%eax, 580(%rbx)
	movq	%r13, 24(%rbx)
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rax
	movq	176(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	cmovneq	%rcx, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	%r15, %rbx
	leaq	1008(%rsp), %rbp
	.align	16, 0x90
.LBB2_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	32(%rbx), %edx
	testl	%edx, %edx
	je	.LBB2_14
# BB#15:                                # %if.end.123
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	%r13, %rdi
	leaq	224(%rsp), %rsi
	callq	gs_cspace_new_DevicePixel
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_53
# BB#16:                                # %if.end.132
                                        #   in Loop: Header=BB2_13 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 240(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	20(%rbx), %xmm0
	movsd	%xmm0, 256(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	24(%rbx), %xmm0
	movsd	%xmm0, 264(%rsp)
	movq	%rbp, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	leaq	328(%rsp), %rdx
	callq	gs_matrix_multiply
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_53
# BB#17:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB2_13 Depth=1
	leaq	240(%rsp), %rdi
	leaq	328(%rsp), %rsi
	movq	%rdi, %rdx
	callq	gs_bbox_transform
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_53
# BB#18:                                # %if.end.162
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movsd	240(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r14d
	movl	%r14d, 272(%rsp,%r12,8)
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r15d
	movl	%r15d, 276(%rsp,%r12,8)
	movsd	256(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	subl	%r14d, %ebp
	movsd	264(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ecx
	subl	%r15d, %ecx
	movq	2392(%rsp), %r15
	movq	%r15, %r9
	movl	32(%rbx), %r8d
	leaq	232(%rsp), %rdi
	movq	160(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	movl	%ebp, %edx
	movq	%r9, %rbp
	callq	*2400(%rsp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_30
# BB#19:                                # %if.end.201
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	232(%rsp), %rsi
	addq	$1104, %rsi             # imm = 0x450
	movq	%r13, %rdi
	callq	*1680(%r13)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_30
# BB#20:                                # %do.body
                                        #   in Loop: Header=BB2_13 Depth=1
	leaq	(%r12,%r12), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	232(%rsp), %rax
	movq	1104(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB2_22
# BB#21:                                # %do.body.211
                                        #   in Loop: Header=BB2_13 Depth=1
	incq	200(%rcx)
.LBB2_22:                               # %do.end.218
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	%rax, 8(%rbx)
	movq	224(%rsp), %rsi
	movq	136(%rsp), %rbp         # 8-byte Reload
	leaq	56(%rbp), %r15
	movl	$1, %edx
	movq	%r15, %rdi
	callq	gs_image_t_init_adjust
	movq	224(%rsp), %rax
	movq	%rax, 632(%rbp)
	movl	$0, 644(%rbp)
	movl	$3, 652(%rbp)
	movq	56(%rbp), %r13
	testl	%r12d, %r12d
	movq	112(%rsp), %r14         # 8-byte Reload
	cmoveq	120(%rsp), %r14         # 8-byte Folded Reload
	leaq	264(%r14), %rsi
	movl	$568, %edx              # imm = 0x238
	movq	%r15, %rdi
	callq	memcpy
	movq	%r13, 56(%rbp)
	movl	304(%r14), %eax
	movl	%eax, 96(%rbp)
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	16(%rcx), %rax
	movq	%rax, 208(%rsp)
	movups	(%rcx), %xmm0
	movaps	%xmm0, 192(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	272(%rsp,%rax,4), %xmm0
	movss	208(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 208(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	276(%rsp,%rax,4), %xmm0
	movss	212(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 212(%rsp)
	movq	232(%rsp), %rdi
	leaq	40(%rbp), %r8
	movq	%rbx, 16(%rsp)
	movq	2392(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	152(%rsp), %rsi         # 8-byte Reload
	leaq	192(%rsp), %rdx
	movq	%r15, %rcx
	callq	*1440(%rdi)
	movl	%eax, %r14d
	sarl	$31, %eax
	testb	$13, %al
	jne	.LBB2_31
# BB#23:                                # %cleanup.cont
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	232(%rsp), %rax
	movq	%rax, 304(%rsp,%r12,8)
	movq	(%rbx), %rax
	movq	%rax, 288(%rsp,%r12,8)
	movq	2392(%rsp), %r15
	movq	%r15, %r13
	jmp	.LBB2_24
.LBB2_14:                               # %if.then.118
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	$0, 304(%rsp,%r12,8)
	movq	$0, 288(%rsp,%r12,8)
.LBB2_24:                               # %cleanup.291.thread185
                                        #   in Loop: Header=BB2_13 Depth=1
	incq	%r12
	addq	$56, %rbx
	addq	$656, %rbp              # imm = 0x290
	cmpq	$2, %r12
	jl	.LBB2_13
# BB#25:                                # %for.end
	leaq	408(%rsp), %r14
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	576(%rbp), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	gs_image_t_init_adjust
	movq	408(%rsp), %rbx
	movl	$584, %edx              # imm = 0x248
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	%rbx, 408(%rsp)
	movl	$3, 1004(%rsp)
	movq	%rbp, 56(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	2320(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	%r13, %rbx
	movq	2384(%rsp), %rax
	movq	%rax, (%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
	movq	%r14, %rcx
	movq	144(%rsp), %r8          # 8-byte Reload
	movq	168(%rsp), %r9          # 8-byte Reload
	callq	*2408(%rsp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	184(%rsp), %rbp         # 8-byte Reload
	js	.LBB2_42
# BB#26:                                # %if.end.316
	movq	2320(%rsp), %rax
	movq	%rax, 568(%rbp)
	movl	616(%rbp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB2_33
# BB#27:                                # %if.end.329
	movl	600(%rbp), %edx
	cmpl	$3, %edx
	jne	.LBB2_28
# BB#32:                                # %sw.bb.335
	movl	604(%rbp), %eax
	movl	%eax, 308(%rbp)
	movl	%ecx, 48(%rbp)
	movl	$1, %eax
.LBB2_33:                               # %for.inc.349
	xorl	%r15d, %r15d
	jmp	.LBB2_34
.LBB2_30:                               # %cleanup.291.thread190
	movq	184(%rsp), %rbx         # 8-byte Reload
	movq	%rbp, %r13
	jmp	.LBB2_51
.LBB2_31:                               # %cleanup.291
	movq	184(%rsp), %rbx         # 8-byte Reload
	movq	2392(%rsp), %r15
	movq	%r15, %r13
	jmp	.LBB2_47
.LBB2_28:                               # %if.end.329
	movl	$-100, %r14d
	cmpl	$1, %edx
	jne	.LBB2_42
# BB#29:                                # %sw.bb
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %r15d
.LBB2_34:                               # %for.inc.349
	cmpl	$0, 672(%rbp)
	je	.LBB2_55
# BB#35:                                # %if.end.329.1
	movl	656(%rbp), %ecx
	cmpl	$1, %ecx
	jne	.LBB2_36
# BB#54:                                # %sw.bb.1
	movq	72(%rsp), %rcx          # 8-byte Reload
	addl	(%rcx), %r15d
	jmp	.LBB2_55
.LBB2_36:                               # %if.end.329.1
	movl	$-100, %r14d
	cmpl	$3, %ecx
	jne	.LBB2_42
# BB#37:                                # %sw.bb.335.1
	movl	660(%rbp), %ecx
	movl	%ecx, 308(%rbp,%rax,4)
	movl	672(%rbp), %ecx
	movl	%ecx, 48(%rbp,%rax,4)
	incl	%eax
.LBB2_55:                               # %for.inc.349.1
	movq	2416(%rsp), %rbx
	movq	%rbx, %r12
	leaq	308(%rbp), %rcx
	movq	%rbp, %r14
	addq	$48, %r14
	movslq	%eax, %rbx
	leaq	(%rcx,%rbx,4), %rdi
	movq	696(%rbp), %rsi
	movslq	44(%rsi), %rdx
	addq	$308, %rsi              # imm = 0x134
	shlq	$2, %rdx
	callq	memcpy
	leaq	(%r14,%rbx,4), %rdi
	movq	696(%rbp), %rsi
	movslq	44(%rsi), %rdx
	addq	$48, %rsi
	shlq	$2, %rdx
	callq	memcpy
	addl	%r15d, 48(%rbp,%rbx,4)
	movq	696(%rbp), %rax
	addl	44(%rax), %ebx
	movl	%ebx, 44(%rbp)
	movq	%rbp, %rbx
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_39
# BB#38:                                # %if.then.392
	movl	$1, %esi
	callq	gx_device_retain
.LBB2_39:                               # %if.end.394
	movq	312(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_41
# BB#40:                                # %if.then.397
	movl	$1, %esi
	callq	gx_device_retain
.LBB2_41:                               # %if.end.399
	movq	2320(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	movq	%rbx, (%r12)
	xorl	%r14d, %r14d
	jmp	.LBB2_53
.LBB2_42:                               # %out3
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB2_44
# BB#43:                                # %if.then.404
	xorl	%esi, %esi
	callq	gx_image_end
.LBB2_44:                               # %if.end.409
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB2_46
# BB#45:                                # %if.then.414
	xorl	%esi, %esi
	callq	gx_image_end
.LBB2_46:                               # %out2
	movq	%rbx, %r13
	movq	%rbp, %rbx
.LBB2_47:                               # %out2
	movq	648(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_49
# BB#48:                                # %if.then.424
	callq	gs_closedevice
	movq	648(%rbx), %rsi
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB2_49:                               # %if.end.433
	movq	592(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_51
# BB#50:                                # %if.then.438
	callq	gs_closedevice
	movq	592(%rbx), %rsi
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB2_51:                               # %out1
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	624(%rbx), %rsi
	movl	$.L.str.4, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	680(%rbx), %rsi
	movl	$.L.str.5, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	736(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB2_52:                               # %out0
	movl	$.L.str, %edx
	movq	%r13, %rdi
	movq	184(%rsp), %rsi         # 8-byte Reload
	callq	*24(%r13)
.LBB2_53:                               # %cleanup.465
	movl	%r14d, %eax
	addq	$2328, %rsp             # imm = 0x918
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_begin_image3x_generic, .Lfunc_end2-gx_begin_image3x_generic
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	check_image3x_mask,@function
check_image3x_mask:                     # @check_image3x_mask
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
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 80
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	304(%rbx), %eax
	testl	%eax, %eax
	je	.LBB3_1
# BB#2:                                 # %if.end
	movl	300(%rbx), %r14d
	testl	%r14d, %r14d
	jle	.LBB3_3
# BB#4:                                 # %if.end.5
	movl	296(%rbx), %edx
	movl	(%rbx), %ecx
	cmpl	$3, %ecx
	jne	.LBB3_5
# BB#15:                                # %sw.bb.20
	cmpl	$16, %eax
	jbe	.LBB3_17
# BB#16:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_1:                                # %if.then
	movl	$0, 32(%r15)
	movl	$0, 16(%r15)
.LBB3_59:                               # %cleanup
	xorl	%eax, %eax
	jmp	.LBB3_60
.LBB3_3:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_5:                                # %if.end.5
	cmpl	$1, %ecx
	jne	.LBB3_6
# BB#7:                                 # %sw.bb
	cmpl	32(%rbp), %edx
	jne	.LBB3_8
# BB#9:                                 # %lor.lhs.false
	cmpl	36(%rbp), %r14d
	jne	.LBB3_10
# BB#11:                                # %lor.lhs.false.11
	cmpl	40(%rbp), %eax
	jne	.LBB3_12
# BB#13:                                # %lor.lhs.false.16
	cmpl	$0, 568(%rbp)
	je	.LBB3_19
# BB#14:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_17:                               # %sw.bb.20
	movl	$69910, %ecx            # imm = 0x11116
	btl	%eax, %ecx
	jae	.LBB3_18
.LBB3_19:                               # %sw.epilog.25
	movss	8(%rbp), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	272(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB3_21
	jp	.LBB3_21
# BB#20:                                # %if.then.i
	cmpeqss	%xmm2, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB3_24
.LBB3_6:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_8:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_21:                               # %if.end.i
	ucomiss	%xmm2, %xmm0
	jne	.LBB3_23
	jp	.LBB3_23
# BB#22:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_10:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_18:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_23:                               # %lor.lhs.false.i
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	ucomiss	%xmm2, %xmm0
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB3_24:                               # %check_image3x_extent.exit
	testl	%eax, %eax
	je	.LBB3_25
# BB#26:                                # %lor.lhs.false.30
	movss	12(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	276(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB3_28
	jp	.LBB3_28
# BB#27:                                # %if.then.i.76
	cmpeqss	%xmm2, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB3_31
.LBB3_25:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_28:                               # %if.end.i.77
	ucomiss	%xmm2, %xmm0
	jne	.LBB3_30
	jp	.LBB3_30
# BB#29:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_12:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_30:                               # %lor.lhs.false.i.82
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	ucomiss	%xmm2, %xmm0
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB3_31:                               # %check_image3x_extent.exit85
	testl	%eax, %eax
	je	.LBB3_32
# BB#33:                                # %lor.lhs.false.39
	movss	16(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	280(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB3_35
	jp	.LBB3_35
# BB#34:                                # %if.then.i.104
	cmpeqss	%xmm2, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB3_38
.LBB3_32:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_35:                               # %if.end.i.105
	ucomiss	%xmm2, %xmm0
	jne	.LBB3_37
	jp	.LBB3_37
# BB#36:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_37:                               # %lor.lhs.false.i.110
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	ucomiss	%xmm2, %xmm0
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB3_38:                               # %check_image3x_extent.exit113
	testl	%eax, %eax
	je	.LBB3_39
# BB#40:                                # %lor.lhs.false.48
	movss	20(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	284(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB3_42
	jp	.LBB3_42
# BB#41:                                # %if.then.i.90
	cmpeqss	%xmm2, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB3_45
.LBB3_39:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_42:                               # %if.end.i.91
	ucomiss	%xmm2, %xmm0
	jne	.LBB3_44
	jp	.LBB3_44
# BB#43:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_44:                               # %lor.lhs.false.i.96
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	ucomiss	%xmm2, %xmm0
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB3_45:                               # %check_image3x_extent.exit99
	testl	%eax, %eax
	je	.LBB3_46
# BB#47:                                # %if.end.58
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%r9, 8(%rsp)            # 8-byte Spill
	leaq	272(%rbx), %rdi
	movq	%r12, %rsi
	callq	gs_matrix_invert
	testl	%eax, %eax
	js	.LBB3_60
# BB#48:                                # %lor.lhs.false.64
	movq	16(%rsp), %rax          # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%r14d, %xmm1
	leaq	24(%r12), %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%r12, %rdi
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB3_60
# BB#49:                                # %if.end.72
	movss	16(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	16(%r12), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	.LCPI3_0(%rip), %xmm0
	jae	.LBB3_50
# BB#51:                                # %lor.lhs.false.80
	movss	20(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	20(%r12), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	.LCPI3_0(%rip), %xmm0
	jae	.LBB3_52
# BB#53:                                # %lor.lhs.false.89
	movsd	24(%r13), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax            # 8-byte Reload
	subsd	(%rax), %xmm0
	callq	fabs
	ucomisd	.LCPI3_0(%rip), %xmm0
	jae	.LBB3_54
# BB#55:                                # %lor.lhs.false.97
	movsd	32(%r13), %xmm0         # xmm0 = mem[0],zero
	subsd	32(%r12), %xmm0
	callq	fabs
	ucomisd	.LCPI3_0(%rip), %xmm0
	movl	$-15, %eax
	jae	.LBB3_60
# BB#56:                                # %if.end.106
	movl	40(%r13), %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %eax
	movl	32(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %r8d
	movl	%r8d, 40(%r12)
	movl	44(%r13), %eax
	imull	%r14d, %eax
	movl	36(%rbp), %ebp
	cltd
	idivl	%ebp
	movl	%eax, %esi
	movl	%esi, 44(%r12)
	imull	48(%r13), %ecx
	leal	-1(%rdi,%rcx), %eax
	cltd
	idivl	%edi
	movl	%eax, %edi
	movl	%edi, 48(%r12)
	imull	52(%r13), %r14d
	leal	-1(%rbp,%r14), %eax
	cltd
	idivl	%ebp
	movl	%eax, 52(%r12)
	movl	(%rbx), %edx
	movl	%edx, 16(%r15)
	subl	%r8d, %edi
	movl	%edi, 20(%r15)
	subl	%esi, %eax
	movl	%eax, 24(%r15)
	movl	300(%rbx), %eax
	movl	%eax, 28(%r15)
	movl	304(%rbx), %esi
	movl	%esi, 32(%r15)
	cmpl	$1, %edx
	jne	.LBB3_58
# BB#57:                                # %if.then.167
	imull	%edi, %esi
	addl	$7, %esi
	sarl	$3, %esi
	movl	$.L.str.15, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	*64(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 40(%r15)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB3_60
.LBB3_58:                               # %if.end.179
	movq	$0, 48(%r15)
	jmp	.LBB3_59
.LBB3_46:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_50:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_52:
	movl	$-15, %eax
	jmp	.LBB3_60
.LBB3_54:
	movl	$-15, %eax
.LBB3_60:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	check_image3x_mask, .Lfunc_end3-check_image3x_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image3x_plane_data,@function
gx_image3x_plane_data:                  # @gx_image3x_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 208
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	720(%rbx), %ecx
	movl	$0, 148(%rsp)
	subl	744(%rbx), %ecx
	movl	608(%rbx), %eax
	movq	$0, 80(%rsp)
	movl	$0, 140(%rsp)
	xorl	%esi, %esi
	cmpl	$0, 616(%rbx)
	je	.LBB4_2
# BB#1:                                 # %if.end
	movl	632(%rbx), %esi
	xorl	%edi, %edi
	cmpl	%esi, %eax
	cmovgl	%esi, %edi
	subl	%edi, %eax
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	cmpl	$1, 600(%rbx)
	sete	%al
	movzbl	%al, %esi
.LBB4_2:                                # %cleanup
	movl	664(%rbx), %eax
	movq	$0, 96(%rsp)
	movl	$0, 144(%rsp)
	cmpl	$0, 672(%rbx)
	je	.LBB4_4
# BB#3:                                 # %if.end.1
	movl	688(%rbx), %edi
	xorl	%ebp, %ebp
	cmpl	%edi, %eax
	cmovgl	%edi, %ebp
	subl	%ebp, %eax
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	cmpl	$1, 656(%rbx)
	sete	%al
	movzbl	%al, %eax
	addl	%esi, %eax
	movl	%eax, %esi
.LBB4_4:                                # %cleanup.1
	cmpl	%edx, %ecx
	cmovgl	%edx, %ecx
	movl	$0, (%r14)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB4_91
# BB#5:                                 # %for.cond.57.preheader
	xorl	%eax, %eax
	cmpl	$3, 600(%rbx)
	jne	.LBB4_7
# BB#6:                                 # %if.then.65
	cmpl	$1, %ecx
	movl	$1, %eax
	cmovgl	%eax, %ecx
	movups	(%r12), %xmm0
	movaps	%xmm0, 80(%rsp)
.LBB4_7:                                # %for.inc.75
	cmpl	$3, 656(%rbx)
	jne	.LBB4_9
# BB#8:                                 # %if.then.65.1
	cmpl	$1, %ecx
	movl	$1, %edx
	cmovgl	%edx, %ecx
	leal	1(%rax), %edx
	shlq	$4, %rax
	movups	(%r12,%rax), %xmm0
	movaps	%xmm0, 96(%rsp)
	movl	%edx, %eax
.LBB4_9:                                # %for.inc.75.1
	cltq
	shlq	$4, %rax
	testl	%esi, %esi
	je	.LBB4_97
# BB#10:                                # %if.then.81
	movl	576(%rbx), %r9d
	movl	580(%rbx), %r11d
	movl	716(%rbx), %r10d
	leal	(%rsi,%r9), %r8d
	imull	%r11d, %r8d
	imull	8(%r12,%rax), %r8d
	movq	(%r12), %r13
	movl	%r8d, %edx
	shrl	$3, %edx
	movq	736(%rbx), %r12
	movq	624(%rbx), %rax
	xorl	%edi, %edi
	testq	%rax, %rax
	movl	$0, %ebp
	je	.LBB4_12
# BB#11:                                # %if.then.117
	movl	616(%rbx), %ebp
	movq	%rax, 64(%rsp)
	movq	%rax, 80(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 56(%rsp)
	movb	$0, 54(%rsp)
.LBB4_12:                               # %for.inc.143
	movl	%ebp, 44(%rsp)
	movq	680(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB4_14
# BB#13:                                # %if.then.117.1
	movl	672(%rbx), %edi
	movq	%rbp, 72(%rsp)
	movq	%rbp, 96(%rsp)
	movl	$0, 104(%rsp)
	movl	$0, 60(%rsp)
	movb	$0, 55(%rsp)
.LBB4_14:                               # %for.inc.143.1
	cmpl	$1, %ecx
	movl	%edi, 48(%rsp)
	movl	$1, %r15d
	cmovlel	%ecx, %r15d
	movq	%r12, 120(%rsp)
	movl	$0, 128(%rsp)
	xorl	%ebp, %ebp
	testl	%r10d, %r10d
	jle	.LBB4_96
# BB#15:                                # %for.cond.152.preheader.lr.ph
	movl	%r10d, 12(%rsp)         # 4-byte Spill
	movq	%r9, 32(%rsp)           # 8-byte Spill
	addq	%rdx, %r13
	andl	$7, %r8d
	movl	%r11d, %edi
	sarl	$2, %edi
	movl	$8, %r10d
	subl	%r11d, %r10d
	movl	%r11d, %r9d
	orl	$1, %r9d
	xorl	%eax, %eax
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
.LBB4_16:                               # %for.cond.152.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
                                        #     Child Loop BB4_54 Depth 2
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
.LBB4_17:                               # %for.body.155
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	44(%rsp,%rbp,4), %eax
	testl	%eax, %eax
	je	.LBB4_52
# BB#18:                                # %do.body
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	%edi, %ecx
	cmpl	$3, %edi
	ja	.LBB4_71
# BB#19:                                # %do.body
                                        #   in Loop: Header=BB4_17 Depth=2
	jmpq	*.LJTI4_0(,%rcx,8)
.LBB4_33:                               # %sw.bb
                                        #   in Loop: Header=BB4_17 Depth=2
	movzbl	(%r13), %edx
	movl	%r10d, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %edx
	andl	%r9d, %edx
	jmp	.LBB4_40
.LBB4_34:                               # %sw.bb.166
                                        #   in Loop: Header=BB4_17 Depth=2
	movzbl	(%r13), %edx
	movl	$4, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	jmp	.LBB4_40
.LBB4_35:                               # %sw.bb.171
                                        #   in Loop: Header=BB4_17 Depth=2
	movzbl	(%r13), %edx
	jmp	.LBB4_40
.LBB4_36:                               # %sw.bb.173
                                        #   in Loop: Header=BB4_17 Depth=2
	testl	%r8d, %r8d
	movzbl	(%r13), %ecx
	movzbl	1(%r13), %edx
	je	.LBB4_38
# BB#37:                                # %cond.true.175
                                        #   in Loop: Header=BB4_17 Depth=2
	andl	$15, %ecx
	shll	$8, %ecx
	jmp	.LBB4_39
.LBB4_38:                               # %cond.false.181
                                        #   in Loop: Header=BB4_17 Depth=2
	shll	$4, %ecx
	shrl	$4, %edx
.LBB4_39:                               # %do.body.190
                                        #   in Loop: Header=BB4_17 Depth=2
	orl	%ecx, %edx
.LBB4_40:                               # %do.body.190
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	%eax, %ecx
	sarl	$2, %ecx
	cmpl	$3, %ecx
	ja	.LBB4_71
# BB#41:                                # %do.body.190
                                        #   in Loop: Header=BB4_17 Depth=2
	addl	%r11d, %r8d
	movl	%r8d, %esi
	sarl	$3, %esi
	movslq	%esi, %rsi
	addq	%rsi, %r13
	andl	$7, %r8d
	jmpq	*.LJTI4_1(,%rcx,8)
.LBB4_42:                               # %sw.bb.202
                                        #   in Loop: Header=BB4_17 Depth=2
	addl	56(%rsp,%rbp,4), %eax
	movl	%eax, 56(%rsp,%rbp,4)
	cmpl	$8, %eax
	jne	.LBB4_44
# BB#43:                                # %if.then.210
                                        #   in Loop: Header=BB4_17 Depth=2
	movzbl	54(%rsp,%rbp), %eax
	orl	%edx, %eax
	movq	64(%rsp,%rbp,8), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 64(%rsp,%rbp,8)
	movb	%al, (%rcx)
	movb	$0, 54(%rsp,%rbp)
	movl	$0, 56(%rsp,%rbp,4)
	jmp	.LBB4_52
.LBB4_45:                               # %sw.bb.237
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	56(%rsp,%rbp,4), %eax
	movl	%eax, %ecx
	xorl	$4, %ecx
	movl	%ecx, 56(%rsp,%rbp,4)
	cmpl	$4, %eax
	jne	.LBB4_46
# BB#47:                                # %if.else.246
                                        #   in Loop: Header=BB4_17 Depth=2
	movzbl	54(%rsp,%rbp), %eax
	orl	%edx, %eax
	movq	64(%rsp,%rbp,8), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 64(%rsp,%rbp,8)
	movb	%al, (%rcx)
	jmp	.LBB4_52
.LBB4_51:                               # %sw.bb.292
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	64(%rsp,%rbp,8), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 64(%rsp,%rbp,8)
	movb	%dl, (%rax)
	jmp	.LBB4_52
.LBB4_48:                               # %sw.bb.258
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	56(%rsp,%rbp,4), %eax
	movl	%eax, %ecx
	xorl	$4, %ecx
	movl	%ecx, 56(%rsp,%rbp,4)
	cmpl	$4, %eax
	jne	.LBB4_49
# BB#50:                                # %if.else.273
                                        #   in Loop: Header=BB4_17 Depth=2
	movzbl	54(%rsp,%rbp), %eax
	movl	%edx, %ecx
	shrl	$8, %ecx
	orl	%eax, %ecx
	movq	64(%rsp,%rbp,8), %rax
	movb	%cl, (%rax)
	movb	%dl, 1(%rax)
	addq	$2, %rax
	movq	%rax, 64(%rsp,%rbp,8)
	jmp	.LBB4_52
.LBB4_44:                               # %if.else.224
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	$8, %ecx
	subl	%eax, %ecx
	shll	%cl, %edx
	movzbl	54(%rsp,%rbp), %eax
	orl	%edx, %eax
	movb	%al, 54(%rsp,%rbp)
	jmp	.LBB4_52
.LBB4_49:                               # %if.then.263
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	%edx, %eax
	shrl	$4, %eax
	movq	64(%rsp,%rbp,8), %rcx
	leaq	1(%rcx), %rsi
	movq	%rsi, 64(%rsp,%rbp,8)
	movb	%al, (%rcx)
.LBB4_46:                               # %if.then.241
                                        #   in Loop: Header=BB4_17 Depth=2
	shll	$4, %edx
	movb	%dl, 54(%rsp,%rbp)
	.align	16, 0x90
.LBB4_52:                               # %for.inc.302
                                        #   in Loop: Header=BB4_17 Depth=2
	incq	%rbp
	cmpq	$2, %rbp
	jl	.LBB4_17
# BB#53:                                # %for.cond.305.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	xorl	%esi, %esi
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB4_70
.LBB4_54:                               # %do.body.309
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %eax
	cmpl	$3, %edi
	ja	.LBB4_71
# BB#55:                                # %do.body.309
                                        #   in Loop: Header=BB4_54 Depth=2
	jmpq	*.LJTI4_2(,%rax,8)
.LBB4_58:                               # %sw.bb.357
                                        #   in Loop: Header=BB4_54 Depth=2
	movzbl	(%r13), %eax
	movl	%r10d, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %eax
	andl	%r9d, %eax
	addl	%r11d, %r8d
	movl	%r8d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%r13, %rcx
	movq	%rcx, %r13
	andl	$7, %r8d
	movl	40(%rsp), %edx          # 4-byte Reload
	addl	%r11d, %edx
	cmpl	$8, %edx
	movl	28(%rsp), %ebp          # 4-byte Reload
	jne	.LBB4_60
# BB#59:                                # %if.then.361
                                        #   in Loop: Header=BB4_54 Depth=2
	movzbl	%bpl, %ecx
	orl	%ecx, %eax
	movb	%al, (%r12)
	incq	%r12
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	jmp	.LBB4_69
.LBB4_61:                               # %sw.bb.377
                                        #   in Loop: Header=BB4_54 Depth=2
	movzbl	(%r13), %eax
	movl	$4, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %eax
	andl	$15, %eax
	addl	%r11d, %r8d
	movl	%r8d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%r13, %rcx
	movq	%rcx, %r13
	andl	$7, %r8d
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	movl	28(%rsp), %ebp          # 4-byte Reload
	jne	.LBB4_62
# BB#63:                                # %if.else.383
                                        #   in Loop: Header=BB4_54 Depth=2
	movzbl	%bpl, %ebp
	orl	%ebp, %eax
	movb	%al, (%r12)
	incq	%r12
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	jmp	.LBB4_69
.LBB4_68:                               # %sw.bb.411
                                        #   in Loop: Header=BB4_54 Depth=2
	movb	(%r13), %al
	addl	%r11d, %r8d
	movl	%r8d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%r13, %rcx
	movq	%rcx, %r13
	andl	$7, %r8d
	movb	%al, (%r12)
	incq	%r12
	jmp	.LBB4_69
.LBB4_56:                               # %sw.bb.325
                                        #   in Loop: Header=BB4_54 Depth=2
	testl	%r8d, %r8d
	movzbl	(%r13), %ecx
	movzbl	1(%r13), %eax
	movl	28(%rsp), %edx          # 4-byte Reload
	je	.LBB4_64
# BB#57:                                # %cond.true.327
                                        #   in Loop: Header=BB4_54 Depth=2
	andl	$15, %ecx
	shll	$8, %ecx
	jmp	.LBB4_65
.LBB4_60:                               # %if.else.368
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	$8, %ecx
	subl	%edx, %ecx
	movl	%edx, 40(%rsp)          # 4-byte Spill
	shll	%cl, %eax
	movzbl	%bpl, %ebp
	orl	%eax, %ebp
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	jmp	.LBB4_69
.LBB4_64:                               # %cond.false.334
                                        #   in Loop: Header=BB4_54 Depth=2
	shll	$4, %ecx
	shrl	$4, %eax
.LBB4_65:                               # %sw.bb.391
                                        #   in Loop: Header=BB4_54 Depth=2
	orl	%ecx, %eax
	addl	%r11d, %r8d
	movl	%r8d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r13
	andl	$7, %r8d
	movl	40(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %ecx
	xorl	$4, %ecx
	cmpl	$4, %ebp
	jne	.LBB4_66
# BB#67:                                # %if.else.400
                                        #   in Loop: Header=BB4_54 Depth=2
	movzbl	%dl, %edx
	movl	%eax, %ebp
	shrl	$8, %ebp
	orl	%edx, %ebp
	movb	%bpl, (%r12)
	movb	%al, 1(%r12)
	addq	$2, %r12
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	jmp	.LBB4_69
.LBB4_66:                               # %if.then.394
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	%eax, %edx
	shrl	$4, %edx
	movb	%dl, (%r12)
	incq	%r12
.LBB4_62:                               # %if.then.380
                                        #   in Loop: Header=BB4_54 Depth=2
	shll	$4, %eax
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	%eax, 28(%rsp)          # 4-byte Spill
.LBB4_69:                               # %for.inc.418
                                        #   in Loop: Header=BB4_54 Depth=2
	incl	%esi
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %esi
	jl	.LBB4_54
.LBB4_70:                               # %for.inc.424
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	incl	%eax
	cmpl	12(%rsp), %eax          # 4-byte Folded Reload
	jl	.LBB4_16
# BB#20:                                # %for.cond.148.for.cond.427.preheader_crit_edge
	movq	624(%rbx), %rax
	movl	28(%rsp), %ebp          # 4-byte Reload
	movl	40(%rsp), %r8d          # 4-byte Reload
	jmp	.LBB4_21
.LBB4_71:                               # %cleanup.471
	movl	$-15, %eax
	jmp	.LBB4_91
.LBB4_97:
	addq	%rax, %r12
	movl	%ecx, %r15d
	jmp	.LBB4_30
.LBB4_96:
	xorl	%r8d, %r8d
.LBB4_21:                               # %for.cond.427.preheader
	testq	%rax, %rax
	je	.LBB4_24
# BB#22:                                # %if.then.436
	movl	56(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB4_24
# BB#23:                                # %if.then.441
	movzbl	54(%rsp), %eax
	movq	64(%rsp), %rdx
	movzbl	(%rdx), %esi
	movl	$255, %edi
	shrl	%cl, %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movb	%dil, (%rdx)
.LBB4_24:                               # %for.inc.458
	cmpq	$0, 680(%rbx)
	je	.LBB4_27
# BB#25:                                # %if.then.436.1
	movl	60(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB4_27
# BB#26:                                # %if.then.441.1
	movzbl	55(%rsp), %eax
	movq	72(%rsp), %rdx
	movzbl	(%rdx), %esi
	movl	$255, %edi
	shrl	%cl, %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movb	%dil, (%rdx)
.LBB4_27:                               # %for.inc.458.1
	testl	%r8d, %r8d
	je	.LBB4_29
# BB#28:                                # %if.then.463
	movzbl	%bpl, %eax
	movzbl	(%r12), %edx
	movl	$255, %esi
	movb	%r8b, %cl
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%r12)
.LBB4_29:                               # %if.end.487.critedge
	leaq	120(%rsp), %r12
.LBB4_30:                               # %if.end.487
	movq	80(%rsp), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB4_74
# BB#31:                                # %if.then.496
	movl	636(%rbx), %ebp
	movl	%ebp, %eax
	subl	%r15d, %eax
	jge	.LBB4_32
# BB#72:                                # %if.else.511
	movl	%r15d, %edx
	subl	%ebp, %edx
	movl	92(%rsp), %eax
	imull	%ebp, %eax
	addq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movl	$0, 636(%rbx)
	movq	584(%rbx), %rdi
	leaq	80(%rsp), %rsi
	leaq	140(%rsp), %rcx
	callq	gx_image_plane_data_rows
	addl	140(%rsp), %ebp
	movl	%ebp, 140(%rsp)
	jmp	.LBB4_73
.LBB4_32:                               # %if.then.503
	movl	%r15d, 140(%rsp)
	movl	%eax, 636(%rbx)
	xorl	%eax, %eax
	movl	%r15d, %ebp
.LBB4_73:                               # %if.end.536
	movl	%ebp, (%r14)
	addl	%ebp, 632(%rbx)
	testl	%eax, %eax
	js	.LBB4_91
.LBB4_74:                               # %for.inc.554
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_95
# BB#75:                                # %if.then.496.1
	movl	692(%rbx), %ebp
	movl	%ebp, %ecx
	subl	%r15d, %ecx
	jge	.LBB4_76
# BB#93:                                # %if.else.511.1
	leaq	144(%rsp), %rcx
	leaq	96(%rsp), %rsi
	movl	%r15d, %edx
	subl	%ebp, %edx
	movl	108(%rsp), %eax
	imull	%ebp, %eax
	addq	%rax, %rdi
	movq	%rdi, 96(%rsp)
	movl	$0, 692(%rbx)
	movq	640(%rbx), %rdi
	callq	gx_image_plane_data_rows
	addl	144(%rsp), %ebp
	movl	%ebp, 144(%rsp)
	jmp	.LBB4_94
.LBB4_76:                               # %if.then.503.1
	movl	%r15d, 144(%rsp)
	movl	%ecx, 692(%rbx)
	movl	%r15d, %ebp
.LBB4_94:                               # %if.end.536.1
	movl	%ebp, (%r14)
	addl	%ebp, 688(%rbx)
	testl	%eax, %eax
	js	.LBB4_91
.LBB4_95:                               # %for.inc.554.1
	cmpq	$0, (%r12)
	movl	%eax, %ecx
	je	.LBB4_85
# BB#77:                                # %for.cond.561.preheader
	movq	584(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_79
# BB#78:                                # %if.then.570
	callq	gx_image_flush
.LBB4_79:                               # %for.inc.577
	movq	640(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_81
# BB#80:                                # %if.then.570.1
	callq	gx_image_flush
.LBB4_81:                               # %for.inc.577.1
	movq	696(%rbx), %rdi
	leaq	148(%rsp), %rcx
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	gx_image_plane_data_rows
	movl	%eax, %ecx
	movl	148(%rsp), %eax
	movl	%eax, (%r14)
	addl	%eax, 744(%rbx)
	testl	%ecx, %ecx
	jns	.LBB4_85
# BB#82:                                # %for.cond.589.preheader
	movl	140(%rsp), %edx
	subl	%eax, %edx
	jle	.LBB4_84
# BB#83:                                # %if.then.597
	movl	%edx, 636(%rbx)
	subl	%edx, 632(%rbx)
	movl	%eax, 140(%rsp)
.LBB4_84:                               # %for.inc.614
	movl	144(%rsp), %edx
	subl	%eax, %edx
	jle	.LBB4_85
# BB#92:                                # %if.then.597.1
	movl	%edx, 692(%rbx)
	subl	%edx, 688(%rbx)
	movl	%eax, 144(%rsp)
.LBB4_85:                               # %do.end.621
	cmpl	$0, 616(%rbx)
	je	.LBB4_87
# BB#86:                                # %lor.lhs.false
	movl	632(%rbx), %eax
	cmpl	608(%rbx), %eax
	jl	.LBB4_90
.LBB4_87:                               # %if.then.635
	cmpl	$0, 672(%rbx)
	je	.LBB4_89
# BB#88:                                # %lor.lhs.false.641
	movl	688(%rbx), %eax
	cmpl	664(%rbx), %eax
	jl	.LBB4_90
.LBB4_89:                               # %if.then.650
	movl	744(%rbx), %edx
	movl	$1, %eax
	cmpl	720(%rbx), %edx
	jge	.LBB4_91
.LBB4_90:                               # %if.end.660
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB4_91:                               # %cleanup.667
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gx_image3x_plane_data, .Lfunc_end4-gx_image3x_plane_data
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_33
	.quad	.LBB4_34
	.quad	.LBB4_35
	.quad	.LBB4_36
.LJTI4_1:
	.quad	.LBB4_42
	.quad	.LBB4_45
	.quad	.LBB4_51
	.quad	.LBB4_48
.LJTI4_2:
	.quad	.LBB4_58
	.quad	.LBB4_61
	.quad	.LBB4_68
	.quad	.LBB4_56

	.text
	.align	16, 0x90
	.type	gx_image3x_end_image,@function
gx_image3x_end_image:                   # @gx_image3x_end_image
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
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 96
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %rbp
	movq	%rbp, 32(%rsp)
	movq	24(%rbp), %rbx
	movq	592(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	584(%rbp), %rdi
	xorl	%r14d, %r14d
	testq	%rdi, %rdi
	movl	$0, %r13d
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movl	%r15d, %esi
	callq	gx_image_end
	movl	%eax, %r13d
.LBB5_2:                                # %cond.end
	movq	640(%rbp), %rdi
	movq	648(%rbp), %r12
	testq	%rdi, %rdi
	je	.LBB5_4
# BB#3:                                 # %cond.true.14
	movl	%r15d, %esi
	callq	gx_image_end
	movl	%eax, %r14d
.LBB5_4:                                # %cond.end.20
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movq	568(%rbp), %r14
	movq	696(%rbp), %rdi
	movl	%r15d, %esi
	callq	gx_image_end
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	1104(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB5_7
# BB#5:                                 # %do.end
	decq	200(%rsi)
	jne	.LBB5_7
# BB#6:                                 # %do.end.39
	movq	208(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*216(%rsi)
	movq	$0, 1104(%r14)
.LBB5_7:                                # %do.end.54
	movq	$0, 1104(%r14)
	movq	%r14, %rdi
	callq	gs_closedevice
	movq	16(%rsp), %r15          # 8-byte Reload
	testq	%r15, %r15
	je	.LBB5_9
# BB#8:                                 # %if.then.58
	movq	%r15, %rdi
	callq	gs_closedevice
.LBB5_9:                                # %if.end.60
	testq	%r12, %r12
	je	.LBB5_11
# BB#10:                                # %if.then.62
	movq	%r12, %rdi
	callq	gs_closedevice
.LBB5_11:                               # %if.end.64
	movq	624(%rbp), %rsi
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	680(%rbp), %rsi
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	736(%rbp), %rsi
	movl	$.L.str.11, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	leaq	32(%rsp), %rdi
	callq	gx_image_free_enum
	movl	28(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	cmovsl	%eax, %r13d
	movl	12(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	cmovsl	%eax, %r13d
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_image3x_end_image, .Lfunc_end5-gx_image3x_end_image
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image3x_flush,@function
gx_image3x_flush:                       # @gx_image3x_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	584(%rbx), %rdi
	callq	gx_image_flush
	testl	%eax, %eax
	js	.LBB6_2
# BB#1:                                 # %if.end
	movq	640(%rbx), %rdi
	callq	gx_image_flush
	testl	%eax, %eax
	js	.LBB6_2
# BB#3:                                 # %if.then.7
	movq	696(%rbx), %rdi
	popq	%rbx
	jmp	gx_image_flush          # TAILCALL
.LBB6_2:                                # %if.end.10
	popq	%rbx
	retq
.Lfunc_end6:
	.size	gx_image3x_flush, .Lfunc_end6-gx_image3x_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image3x_planes_wanted,@function
gx_image3x_planes_wanted:               # @gx_image3x_planes_wanted
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 48
.Ltmp62:
	.cfi_offset %rbx, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	leaq	584(%rdi), %r14
	movl	600(%rdi), %eax
	movl	656(%rdi), %ecx
	cmpl	$3, %eax
	jne	.LBB7_5
# BB#1:                                 # %entry
	cmpl	$3, %ecx
	jne	.LBB7_5
# BB#2:                                 # %if.then
	movslq	688(%rdi), %rax
	movslq	724(%rdi), %rcx
	imulq	%rcx, %rax
	movslq	744(%rdi), %rdx
	movslq	668(%rdi), %rsi
	imulq	%rsi, %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	addq	%rcx, %rdx
	shrq	$63, %rdx
	cmpq	%rsi, %rax
	movl	$-1, %ebx
	cmovsl	%edx, %ebx
	leaq	2(%r15), %rax
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	movl	$255, %esi
	cmovgl	%ebp, %esi
	movslq	44(%rdi), %rdx
	addq	$-2, %rdx
	movq	%rax, %rdi
	callq	memset
	shrl	$31, %ebx
	addl	$255, %ebx
	movb	%bl, 1(%r15)
	testb	%bl, %bl
	movl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.19
	movslq	48(%r14), %rcx
	movslq	84(%r14), %rax
	imulq	%rcx, %rax
	movslq	104(%r14), %rcx
	movslq	28(%r14), %rdx
	imulq	%rdx, %rcx
	subq	%rdx, %rax
	subq	%rcx, %rax
	shrq	$63, %rax
.LBB7_4:                                # %if.end
	movb	%al, (%r15)
	jmp	.LBB7_8
.LBB7_5:                                # %if.else.30
	cmpl	$3, %ecx
	sete	%cl
	cmpl	$3, %eax
	sete	%dl
	orb	%cl, %dl
	movzbl	%dl, %ecx
	cmpl	$1, %ecx
	jne	.LBB7_7
# BB#6:                                 # %if.then.32
	leaq	640(%rdi), %rcx
	cmpl	$3, %eax
	cmoveq	%r14, %rcx
	movslq	48(%rcx), %rax
	movslq	724(%rdi), %rdx
	imulq	%rdx, %rax
	movslq	744(%rdi), %rsi
	movslq	28(%rcx), %rcx
	imulq	%rcx, %rsi
	subq	%rsi, %rax
	movq	%rax, %rsi
	subq	%rcx, %rsi
	addq	%rdx, %rsi
	shrq	$63, %rsi
	cmpq	%rcx, %rax
	movl	$-1, %eax
	cmovsl	%esi, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	$255, %ecx
	movb	%cl, (%r15)
	incq	%r15
	xorl	%ebp, %ebp
	testl	%eax, %eax
	movl	$255, %esi
	cmovgl	%ebp, %esi
	movslq	44(%rdi), %rdx
	decq	%rdx
	movq	%r15, %rdi
	callq	memset
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.55
	movb	$-1, (%r15)
	movl	$1, %ebp
.LBB7_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_image3x_planes_wanted, .Lfunc_end7-gx_image3x_planes_wanted
	.cfi_endproc

	.align	16, 0x90
	.type	make_midx_default,@function
make_midx_default:                      # @make_midx_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp72:
	.cfi_def_cfa_offset 64
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movl	%ecx, %r15d
	movl	%edx, %r13d
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	%r8d, %edi
	callq	gdev_mem_device_for_bits
	movq	%rax, %r14
	testl	%r13d, %r13d
	je	.LBB8_2
# BB#1:                                 # %if.then
	movslq	%r15d, %rcx
	movslq	%r13d, %rsi
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%rsi
	movl	$-25, %ebx
	cmpq	%rax, %rcx
	ja	.LBB8_7
.LBB8_2:                                # %if.end.5
	movl	$-15, %ebx
	testq	%r14, %r14
	je	.LBB8_7
# BB#3:                                 # %if.end.9
	movl	$st_device_memory, %esi
	movl	$.L.str.16, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbp
	movl	$-25, %ebx
	testq	%rbp, %rbp
	je	.LBB8_7
# BB#4:                                 # %if.end.14
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	gs_make_mem_device
	movq	%r12, 1752(%rbp)
	movl	%r13d, 832(%rbp)
	movl	%r15d, 836(%rbp)
	movq	%rbp, %rdi
	callq	check_device_separable
	movq	%rbp, %rdi
	callq	gx_device_fill_in_procs
	movq	%rbp, %rdi
	callq	*1144(%rbp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB8_5
# BB#6:                                 # %if.end.23
	movl	$1, 84(%rbp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	callq	*1200(%rbp)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rbp, (%rax)
	jmp	.LBB8_7
.LBB8_5:                                # %if.then.21
	movl	$.L.str.17, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*24(%r12)
	movl	%r14d, %ebx
.LBB8_7:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	make_midx_default, .Lfunc_end8-make_midx_default
	.cfi_endproc

	.align	16, 0x90
	.type	make_mcdex_default,@function
make_mcdex_default:                     # @make_mcdex_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 112
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %r12
	leaq	48(%rsp), %rsi
	callq	*1680(%r12)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_7
# BB#1:                                 # %if.end
	movq	120(%rsp), %rbx
	movl	$st_device_bbox, %esi
	movl	$.L.str.18, %edx
	movq	%rbx, %rdi
	callq	*80(%rbx)
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB9_7
# BB#2:                                 # %if.end.5
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	gx_device_bbox_init
	movq	48(%rsp), %rax
	movq	%rax, 1104(%r14)
	testq	%rax, %rax
	je	.LBB9_4
# BB#3:                                 # %do.body.9
	incq	200(%rax)
.LBB9_4:                                # %do.end.16
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_device_bbox_fwd_open_close
	movq	128(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	*1440(%r14)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_5
# BB#6:                                 # %if.end.23
	movq	136(%rsp), %rax
	movq	%r14, (%rax)
	jmp	.LBB9_7
.LBB9_5:                                # %if.then.21
	movl	$.L.str.18, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	%ebp, %r15d
.LBB9_7:                                # %cleanup
	movl	%r15d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	make_mcdex_default, .Lfunc_end9-make_mcdex_default
	.cfi_endproc

	.type	st_gs_image3x,@object   # @st_gs_image3x
	.section	.rodata,"a",@progbits
	.align	8
st_gs_image3x:
	.long	2248                    # 0x8c8
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	image3x_reloc_ptrs
	.size	st_gs_image3x, 64

	.type	gs_image_type_3x,@object # @gs_image_type_3x
	.globl	gs_image_type_3x
	.align	8
gs_image_type_3x:
	.quad	st_gs_image3x
	.quad	gx_begin_image3x
	.quad	gx_data_image_source_size
	.quad	gx_image_no_sput
	.quad	gx_image_no_sget
	.quad	gx_image_default_release
	.long	103                     # 0x67
	.zero	4
	.size	gs_image_type_3x, 56

	.type	st_image3x_enum,@object # @st_image3x_enum
	.align	8
st_image3x_enum:
	.long	752                     # 0x2f0
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	image3x_enum_reloc_ptrs
	.size	st_image3x_enum, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_begin_image3x"
	.size	.L.str, 17

	.type	image3x_enum_procs,@object # @image3x_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
image3x_enum_procs:
	.quad	gx_image3x_plane_data
	.quad	gx_image3x_end_image
	.quad	gx_image3x_flush
	.quad	gx_image3x_planes_wanted
	.size	image3x_enum_procs, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_begin_image3x(pixel.data)"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_begin_image3x(mask[1].mdev)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_begin_image3x(mask[0].mdev)"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_begin_image3x(mask[0].data)"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gx_begin_image3x(mask[1].data)"
	.size	.L.str.5, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_image3x_t"
	.size	.L.str.6, 13

	.type	image3x_reloc_ptrs,@object # @image3x_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
image3x_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_pixel_image
	.quad	0
	.size	image3x_reloc_ptrs, 24

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gx_image3x_enum_t"
	.size	.L.str.7, 18

	.type	image3x_enum_reloc_ptrs,@object # @image3x_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
image3x_enum_reloc_ptrs:
	.short	9                       # 0x9
	.short	0                       # 0x0
	.zero	4
	.quad	st_gx_image_enum_common
	.quad	image3x_enum_enum_ptrs
	.size	image3x_enum_reloc_ptrs, 24

	.type	image3x_enum_enum_ptrs,@object # @image3x_enum_enum_ptrs
	.align	16
image3x_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	568                     # 0x238
	.short	0                       # 0x0
	.short	584                     # 0x248
	.short	0                       # 0x0
	.short	592                     # 0x250
	.short	0                       # 0x0
	.short	624                     # 0x270
	.short	0                       # 0x0
	.short	640                     # 0x280
	.short	0                       # 0x0
	.short	648                     # 0x288
	.short	0                       # 0x0
	.short	680                     # 0x2a8
	.short	0                       # 0x0
	.short	696                     # 0x2b8
	.short	0                       # 0x0
	.short	736                     # 0x2e0
	.size	image3x_enum_enum_ptrs, 36

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gx_image3x_end_image(pcdev->icc_struct)"
	.size	.L.str.8, 40

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_image3x_end_image(mask[0].data)"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_image3x_end_image(mask[1].data)"
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_image3x_end_image(pixel.data)"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gx_image3x_end_image(pcdev)"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gx_image3x_end_image(mask[0].mdev)"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gx_image3x_end_image(mask[1].mdev)"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gx_begin_image3x(mask data)"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"make_mid_default"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"make_midx_default"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"make_mcdex_default"
	.size	.L.str.18, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
