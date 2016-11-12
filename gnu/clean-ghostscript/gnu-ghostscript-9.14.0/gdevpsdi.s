	.text
	.file	"gdevpsdi.bc"
	.globl	psdf_is_converting_image_to_RGB
	.align	16, 0x90
	.type	psdf_is_converting_image_to_RGB,@function
psdf_is_converting_image_to_RGB:        # @psdf_is_converting_image_to_RGB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	je	.LBB0_8
# BB#1:                                 # %entry
	movl	9112(%rdi), %eax
	testl	%eax, %eax
	je	.LBB0_8
# BB#2:                                 # %land.lhs.true.1
	movq	576(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_3
# BB#4:                                 # %land.rhs
	callq	gs_color_space_get_index
	movb	$1, %cl
	cmpl	$2, %eax
	je	.LBB0_8
# BB#5:                                 # %lor.rhs
	movq	576(%rbx), %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB0_6
# BB#7:                                 # %land.rhs.8
	movq	576(%rbx), %rax
	movq	64(%rax), %rdi
	callq	gsicc_get_default_type
	cmpl	$2, %eax
	sete	%cl
	jmp	.LBB0_8
.LBB0_3:
	xorl	%ecx, %ecx
	jmp	.LBB0_8
.LBB0_6:
	xorl	%ecx, %ecx
.LBB0_8:                                # %land.end.12
	movzbl	%cl, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	psdf_is_converting_image_to_RGB, .Lfunc_end0-psdf_is_converting_image_to_RGB
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	-4616189618054758400    # double -1
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	psdf_setup_image_filters
	.align	16, 0x90
	.type	psdf_setup_image_filters,@function
psdf_setup_image_filters:               # @psdf_setup_image_filters
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
	subq	$152, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 208
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%r9d, 32(%rsp)          # 4-byte Spill
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movslq	40(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmpq	$9, %rax
	movl	$8, %r13d
	cmovll	%eax, %r13d
	movl	%r13d, 40(%rbx)
	movq	576(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_1
# BB#2:                                 # %if.else
	callq	gs_color_space_num_components
	movq	576(%rbx), %rcx
	movq	(%rcx), %rcx
	cmpl	$10, (%rcx)
	jne	.LBB1_4
# BB#3:                                 # %if.then.7
	movups	9096(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9032(%rbp), %xmm0
	movupd	9048(%rbp), %xmm1
	movupd	9064(%rbp), %xmm2
	movupd	9080(%rbp), %xmm3
	movapd	%xmm3, 112(%rsp)
	movapd	%xmm2, 96(%rsp)
	movapd	%xmm1, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	movl	$0, 76(%rsp)
	movq	$.L.str, 112(%rsp)
	jmp	.LBB1_11
.LBB1_1:                                # %if.then
	movups	9264(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9200(%rbp), %xmm0
	movupd	9216(%rbp), %xmm1
	movupd	9232(%rbp), %xmm2
	movupd	9248(%rbp), %xmm3
	movapd	%xmm3, 112(%rsp)
	movapd	%xmm2, 96(%rsp)
	movapd	%xmm1, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	movl	$1, 80(%rsp)
	movl	$1, %eax
	jmp	.LBB1_11
.LBB1_4:                                # %if.else.9
	cmpl	$1, %eax
	jne	.LBB1_10
# BB#5:                                 # %if.then.11
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	$1, %ecx
	jne	.LBB1_7
# BB#6:                                 # %if.then.13
	movups	9264(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9200(%rbp), %xmm0
	movupd	9216(%rbp), %xmm1
	movupd	9232(%rbp), %xmm2
	movupd	9248(%rbp), %xmm3
	jmp	.LBB1_8
.LBB1_10:                               # %if.else.23
	movups	9096(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9032(%rbp), %xmm0
	movupd	9048(%rbp), %xmm1
	movupd	9064(%rbp), %xmm2
	movupd	9080(%rbp), %xmm3
	movapd	%xmm3, 112(%rsp)
	movapd	%xmm2, 96(%rsp)
	movapd	%xmm1, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	jmp	.LBB1_11
.LBB1_7:                                # %if.else.16
	movups	9184(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9120(%rbp), %xmm0
	movupd	9136(%rbp), %xmm1
	movupd	9152(%rbp), %xmm2
	movupd	9168(%rbp), %xmm3
.LBB1_8:                                # %if.end
	movapd	%xmm3, 112(%rsp)
	movapd	%xmm2, 96(%rsp)
	movapd	%xmm1, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	movl	$1, %eax
	cmpl	$-1, 80(%rsp)
	jne	.LBB1_11
# BB#9:                                 # %if.then.20
	movl	%ecx, 80(%rsp)
.LBB1_11:                               # %if.end.28
	testq	%r14, %r14
	je	.LBB1_12
# BB#13:                                # %if.else.31
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movq	%r12, %r13
	movq	%r15, %r12
	leaq	8(%rbx), %rdi
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	leaq	48(%rsp), %rsi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform_inverse
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_74
# BB#14:                                # %cleanup.thread
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	48(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_distance_transform
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	48(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	movq	%r12, %r15
	jnp	.LBB1_16
# BB#15:                                # %call.sqrt
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB1_16:                               # %cleanup.thread.split
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movq	%r13, %r12
	movl	16(%rsp), %r13d         # 4-byte Reload
	movl	40(%rsp), %eax          # 4-byte Reload
	jmp	.LBB1_17
.LBB1_12:
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB1_17:                               # %if.end.56
	cmpl	$1, %eax
	jne	.LBB1_35
# BB#18:                                # %land.lhs.true
	movq	576(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB1_35
# BB#19:                                # %land.lhs.true.60
	movq	(%rcx), %rcx
	cmpl	$10, (%rcx)
	jne	.LBB1_20
.LBB1_35:                               # %if.else.116
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB1_45
# BB#36:                                # %if.else.116
	movl	9112(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB1_45
# BB#37:                                # %land.lhs.true.1.i
	movq	576(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_38
# BB#39:                                # %land.rhs.i.134
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movl	%eax, 40(%rsp)          # 4-byte Spill
	callq	gs_color_space_get_index
	cmpl	$2, %eax
	je	.LBB1_43
# BB#40:                                # %lor.rhs.i
	movq	576(%rbx), %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB1_41
# BB#42:                                # %psdf_is_converting_image_to_RGB.exit
	movq	576(%rbx), %rax
	movq	64(%rax), %rdi
	callq	gsicc_get_default_type
	cmpl	$2, %eax
	jne	.LBB1_41
.LBB1_43:                               # %if.then.119
	movq	1728(%rbp), %r14
	movq	576(%rbx), %rdi
	movl	$.L.str.1, %esi
	callq	rc_decrement_only_cs
	movq	%r14, %rdi
	callq	gs_cspace_new_DeviceRGB
	movq	%rax, 576(%rbx)
	movb	$1, %r14b
	jmp	.LBB1_44
.LBB1_38:
	xorl	%r14d, %r14d
	jmp	.LBB1_45
.LBB1_20:                               # %if.then.66
	movq	96(%rsp), %rax
	testl	%eax, %eax
	je	.LBB1_28
# BB#21:                                # %land.lhs.true.i
	cvtsi2sdl	120(%rsp), %xmm1
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	shrq	$32, %rax
	movd	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB1_28
# BB#22:                                # %land.lhs.true.3.i
	xorps	%xmm1, %xmm1
	cvtsi2sdl	32(%rbx), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_28
# BB#23:                                # %land.rhs.i
	xorps	%xmm1, %xmm1
	cvtsi2sdl	36(%rbx), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB1_24
.LBB1_28:                               # %if.else.105
	leaq	64(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r15, %rbp
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movl	32(%rsp), %r8d          # 4-byte Reload
	callq	setup_image_compression
.LBB1_29:                               # %if.end.110
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_74
# BB#30:                                # %if.end.114
	movq	%rbp, %r14
	xorl	%r15d, %r15d
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %r13d
	je	.LBB1_74
# BB#31:                                # %if.end.i.121
	movl	32(%rbx), %edx
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movq	24(%r14), %rax
	movq	1728(%rax), %r12
	cmpl	$8, %ecx
	leaq	pixel_resize.exts(,%rcx,8), %rax
	movslq	%r13d, %rcx
	leaq	pixel_resize.rets(,%rcx,8), %rcx
	cmovneq	%rax, %rcx
	movq	(%rcx), %rbx
	movq	(%rbx), %rsi
	movl	$.L.str.11, %edx
	movq	%r12, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB1_74
# BB#32:                                # %if.end.8.i.124
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_33
# BB#34:                                # %if.end.12.i.128
	movl	$1, %edx
	movq	%rbp, %rdi
	movl	40(%rsp), %esi          # 4-byte Reload
	jmp	.LBB1_73
.LBB1_41:
	xorl	%r14d, %r14d
.LBB1_44:                               # %if.end.123
	movl	40(%rsp), %eax          # 4-byte Reload
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB1_45:                               # %if.end.123
	cmpl	$-1, 80(%rsp)
	jne	.LBB1_47
# BB#46:                                # %if.then.127
	testb	%r14b, %r14b
	movl	$8, %ecx
	cmovel	%r13d, %ecx
	movl	%ecx, 80(%rsp)
.LBB1_47:                               # %if.end.134
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movq	96(%rsp), %rax
	testl	%eax, %eax
	je	.LBB1_52
# BB#48:                                # %land.lhs.true.i.144
	cvtsi2sdl	120(%rsp), %xmm1
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	shrq	$32, %rax
	movd	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB1_52
# BB#49:                                # %land.lhs.true.3.i.148
	xorps	%xmm1, %xmm1
	cvtsi2sdl	32(%rbx), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_52
# BB#50:                                # %land.rhs.i.152
	xorps	%xmm1, %xmm1
	cvtsi2sdl	36(%rbx), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB1_51
.LBB1_52:                               # %if.else.142
	leaq	64(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	32(%rsp), %r8d          # 4-byte Reload
	callq	setup_image_compression
.LBB1_53:                               # %if.end.147
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_54
# BB#55:                                # %if.end.151
	testb	%r14b, %r14b
	je	.LBB1_69
# BB#56:                                # %if.then.153
	movq	1728(%rbp), %rdi
	movq	s_C2R_template(%rip), %rsi
	movl	$.L.str.2, %edx
	callq	s_alloc_state
	cmpl	$8, %r13d
	je	.LBB1_62
# BB#57:                                # %if.end.i.164
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	32(%rbx), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	24(%r15), %rax
	movq	1728(%rax), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movslq	%r13d, %rax
	movq	pixel_resize.rets(,%rax,8), %r14
	movq	(%r14), %rsi
	movl	$.L.str.11, %edx
	callq	s_alloc_state
	movq	%rax, %rbp
	movq	%r15, %rdi
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB1_74
# BB#58:                                # %if.end.8.i.167
	movq	%rdi, %r13
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_59
# BB#61:                                # %if.end.12.i.171
	movl	$3, %edx
	movq	%rbp, %rdi
	movl	32(%rsp), %esi          # 4-byte Reload
	callq	s_1248_init
	movq	%r13, %r15
	movq	40(%rsp), %rax          # 8-byte Reload
.LBB1_62:                               # %lor.lhs.false
	movl	$s_C2R_template, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movq	%rax, %r14
	callq	psdf_encode_binary
	movq	%r15, %rcx
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_74
# BB#63:                                # %lor.lhs.false.165
	movq	24(%rsp), %rdx          # 8-byte Reload
	cmpl	$8, %edx
	je	.LBB1_68
# BB#64:                                # %if.end.i.185
	movl	32(%rbx), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movq	%rcx, %r13
	movq	24(%r13), %rax
	movq	1728(%rax), %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	pixel_resize.exts(,%rdx,8), %rbx
	movq	(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB1_74
# BB#65:                                # %if.end.8.i.188
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_66
# BB#67:                                # %if.end.12.i.192
	movl	$4, %edx
	movq	%rbp, %rdi
	movl	40(%rsp), %esi          # 4-byte Reload
	callq	s_1248_init
.LBB1_68:                               # %cleanup.173
	movq	%r14, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	s_C2R_init
	movl	%r12d, %r15d
	jmp	.LBB1_74
.LBB1_54:
	movl	%r12d, %r15d
	jmp	.LBB1_74
.LBB1_69:                               # %if.else.178
	movq	%r15, %r14
	xorl	%r15d, %r15d
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %r13d
	je	.LBB1_74
# BB#70:                                # %if.end.i
	movl	32(%rbx), %edx
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movq	24(%r14), %rax
	movq	1728(%rax), %r12
	cmpl	$8, %ecx
	leaq	pixel_resize.exts(,%rcx,8), %rax
	movslq	%r13d, %rcx
	leaq	pixel_resize.rets(,%rcx,8), %rcx
	cmovneq	%rax, %rcx
	movq	(%rcx), %rbx
	movq	(%rbx), %rsi
	movl	$.L.str.11, %edx
	movq	%r12, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB1_74
# BB#71:                                # %if.end.8.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_33
# BB#72:                                # %if.end.12.i
	movq	%rbp, %rdi
	movl	32(%rsp), %esi          # 4-byte Reload
	movl	40(%rsp), %edx          # 4-byte Reload
.LBB1_73:                               # %cleanup.190
	callq	s_1248_init
	xorl	%r15d, %r15d
	jmp	.LBB1_74
.LBB1_51:                               # %if.then.137
	leaq	64(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movapd	%xmm2, %xmm0
	movl	32(%rsp), %r8d          # 4-byte Reload
	callq	setup_downsampling
	jmp	.LBB1_53
.LBB1_33:                               # %if.then.11.i.126
	movl	$.L.str.11, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*24(%r12)
	jmp	.LBB1_74
.LBB1_59:                               # %if.then.11.i.169
	movl	$.L.str.11, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	jmp	.LBB1_60
.LBB1_66:                               # %if.then.11.i.190
	movl	$.L.str.11, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
.LBB1_60:                               # %cleanup.190
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB1_74:                               # %cleanup.190
	movl	%r15d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_24:                               # %if.then.69
	cmpl	$1, 80(%rsp)
	jne	.LBB1_26
# BB#25:                                # %if.then.73
	movq	9248(%rbp), %rax
	movq	%rax, 112(%rsp)
	movq	9272(%rbp), %rax
	movq	%rax, 136(%rsp)
	movq	9224(%rbp), %rax
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.87
	movq	9168(%rbp), %rax
	movq	%rax, 112(%rsp)
	movq	9192(%rbp), %rax
	movq	%rax, 136(%rsp)
	movq	9144(%rbp), %rax
.LBB1_27:                               # %if.end.103
	movq	%rax, 88(%rsp)
	leaq	64(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r15, %rbp
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movapd	%xmm2, %xmm0
	movl	32(%rsp), %r8d          # 4-byte Reload
	callq	setup_downsampling
	jmp	.LBB1_29
.Lfunc_end1:
	.size	psdf_setup_image_filters, .Lfunc_end1-psdf_setup_image_filters
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
.LCPI2_1:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	setup_downsampling,@function
setup_downsampling:                     # @setup_downsampling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 112
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	24(%rdi), %rbp
	movslq	40(%r13), %rdx
	cmpq	$3, %rdx
	jae	.LBB2_1
# BB#2:                                 # %switch.lookup
	movl	%r8d, 36(%rsp)          # 4-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	cvtsi2sdl	56(%r13), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	40(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	32(%rbx), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	36(%rbx), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	.Lswitch.table(,%rdx,8), %r15
	cmpl	$1, %edx
	je	.LBB2_6
# BB#3:                                 # %if.then
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI2_0(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	subss	52(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ja	.LBB2_5
# BB#4:                                 # %if.then
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB2_5:                                # %if.then
	movl	$s_Bicubic_template, %eax
	cmovbeq	%rax, %r15
.LBB2_6:                                # %if.end.15
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	movq	1728(%rbp), %rdi
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	(%r15), %rsi
	movl	$.L.str.6, %edx
	callq	s_alloc_state
	movq	%rax, %r12
	movq	%r15, %rcx
	movl	$-25, %r15d
	testq	%r12, %r12
	je	.LBB2_26
# BB#7:                                 # %if.end.21
	movq	40(%rcx), %rax
	testq	%rax, %rax
	movq	%rcx, %rbp
	je	.LBB2_9
# BB#8:                                 # %if.then.22
	movq	%r12, %rdi
	callq	*%rax
.LBB2_9:                                # %if.end.24
	movq	576(%rbx), %rdi
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.LBB2_11
# BB#10:                                # %cond.false
	callq	gs_color_space_num_components
.LBB2_11:                               # %cond.end
	movl	%eax, 108(%r12)
	movl	32(%rbx), %edi
	movl	%edi, 112(%r12)
	movl	36(%rbx), %eax
	movl	%eax, 116(%r12)
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 124(%r12)
	movss	%xmm0, 120(%r12)
	movl	8(%r13), %eax
	movl	%eax, 128(%r12)
	movl	$0, 136(%r12)
	movl	$0, 132(%r12)
	movq	8(%rbp), %rax
	movq	%rbp, (%rsp)            # 8-byte Spill
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB2_13
# BB#12:                                # %if.then.33
	movq	%r12, %rdi
	callq	*%rax
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	32(%rbx), %edi
	movl	132(%r12), %esi
.LBB2_13:                               # %if.end.36
	callq	s_Downsample_size_out
	movl	%eax, 32(%rbx)
	movl	36(%rbx), %edi
	movl	136(%r12), %esi
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	s_Downsample_size_out
	movl	%eax, 36(%rbx)
	movl	16(%r13), %ecx
	movl	%ecx, 40(%rbx)
	leaq	8(%rbx), %rdi
	movl	32(%rbx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movl	48(%rsp), %ecx          # 4-byte Reload
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movl	24(%rsp), %eax          # 4-byte Reload
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movl	36(%rsp), %r8d          # 4-byte Reload
	callq	setup_image_compression
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_25
# BB#14:                                # %lor.lhs.false
	movslq	16(%r13), %rax
	cmpq	$8, %rax
	je	.LBB2_19
# BB#15:                                # %if.end.i
	movl	32(%rbx), %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	108(%r12), %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	%rbp, %rbx
	movq	24(%rbx), %rcx
	movq	1728(%rcx), %rbp
	movq	pixel_resize.rets(,%rax,8), %r13
	movq	(%r13), %rsi
	movl	$.L.str.11, %edx
	movq	%rbp, %rdi
	callq	s_alloc_state
	movq	%rax, %r15
	movl	$-25, %r14d
	testq	%r15, %r15
	je	.LBB2_25
# BB#16:                                # %if.end.8.i
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rbx, %rbp
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_17
# BB#18:                                # %if.end.12.i
	movq	%r15, %rdi
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	36(%rsp), %edx          # 4-byte Reload
	callq	s_1248_init
.LBB2_19:                               # %lor.lhs.false.65
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r12, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_25
# BB#20:                                # %lor.lhs.false.69
	xorl	%r15d, %r15d
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmpl	$8, %ecx
	je	.LBB2_26
# BB#21:                                # %if.end.i.77
	movl	108(%r12), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	%rbx, %r13
	movq	24(%r13), %rax
	movq	1728(%rax), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	pixel_resize.exts(,%rcx,8), %rbp
	movq	(%rbp), %rsi
	movl	$.L.str.11, %edx
	callq	s_alloc_state
	movq	%rax, %rbx
	movl	$-25, %r14d
	testq	%rbx, %rbx
	je	.LBB2_25
# BB#22:                                # %if.end.8.i.80
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_23
# BB#27:                                # %if.end.12.i.84
	movq	%rbx, %rdi
	movl	48(%rsp), %esi          # 4-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	callq	s_1248_init
	jmp	.LBB2_26
.LBB2_1:                                # %sw.default
	movq	1728(%rbp), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-15, %r15d
	jmp	.LBB2_26
.LBB2_17:                               # %if.then.11.i
	movl	$.L.str.11, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	jmp	.LBB2_24
.LBB2_23:                               # %if.then.11.i.82
	movl	$.L.str.11, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
.LBB2_24:                               # %if.then.74
	callq	*24(%rdi)
.LBB2_25:                               # %if.then.74
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movl	%r14d, %r15d
.LBB2_26:                               # %cleanup
	movl	%r15d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	setup_downsampling, .Lfunc_end2-setup_downsampling
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_1:
	.long	1048576000              # float 0.25
.LCPI3_2:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	setup_image_compression,@function
setup_image_compression:                # @setup_image_compression
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$4008, %rsp             # imm = 0xFA8
.Ltmp34:
	.cfi_def_cfa_offset 4064
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	24(%rbx), %rax
	movq	1728(%rax), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	72(%r13), %r12
	cmpl	$0, 8936(%rax)
	je	.LBB3_1
# BB#2:                                 # %land.rhs
	cmpl	$3009, 8848(%rax)       # imm = 0xBC1
	movq	%rax, 216(%rsp)         # 8-byte Spill
	seta	%al
	jmp	.LBB3_3
.LBB3_1:
	movq	%rax, 216(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
.LBB3_3:                                # %land.end
	movl	$s_zlibE_template, %ecx
	movl	$s_LZWE_template, %r14d
	testb	%al, %al
	cmovneq	%rcx, %r14
	movq	576(%rdx), %rbp
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB3_4
# BB#5:                                 # %land.rhs.4
	movq	%rbp, %rdi
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	callq	gs_color_space_num_components
	movl	%eax, 204(%rsp)         # 4-byte Spill
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	sete	%al
	jmp	.LBB3_6
.LBB3_4:
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	movl	$1, 204(%rsp)           # 4-byte Folded Spill
.LBB3_6:                                # %land.end.7
	cmpl	$0, 44(%r13)
	je	.LBB3_7
# BB#8:                                 # %if.end
	movl	%eax, 160(%rsp)         # 4-byte Spill
	cmpl	$0, 12(%r13)
	je	.LBB3_12
# BB#9:                                 # %if.then.10
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	testl	%r15d, %r15d
	movq	%r14, %rax
	jne	.LBB3_11
# BB#10:                                # %if.else
	movl	$s_zlibE_template, %eax
	cmpq	%rax, %r12
	movl	$s_DCTE_template, %ecx
	movq	%r12, %rax
	cmoveq	%rcx, %rax
	testq	%r12, %r12
	movl	$s_LZWE_template, %edx
	cmoveq	%rcx, %rax
	cmpq	%rdx, %r12
	cmoveq	%rcx, %rax
.LBB3_11:                               # %if.end.19
	movq	(%r13), %r15
	movq	%rax, %r12
	movq	224(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB3_14
.LBB3_7:
	xorl	%ecx, %ecx
	jmp	.LBB3_93
.LBB3_12:                               # %if.else.20
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movq	224(%rsp), %rax         # 8-byte Reload
	movl	$-15, %ecx
	testl	%r15d, %r15d
	je	.LBB3_93
# BB#13:
	movq	24(%r13), %r15
	movq	%rax, %rbx
.LBB3_14:                               # %if.end.24
	movq	216(%rsp), %rax         # 8-byte Reload
	cmpl	$3010, 8848(%rax)       # imm = 0xBC2
	movl	$s_zlibE_template, %eax
	movq	%r12, %rbp
	cmovbq	%r14, %rbp
	cmpq	%rax, %r12
	cmovneq	%r12, %rbp
	testq	%r15, %r15
	je	.LBB3_16
# BB#15:                                # %if.then.31
	movq	%r15, %rdi
	callq	gs_c_param_list_read
.LBB3_16:                               # %if.end.32
	testq	%rbp, %rbp
	je	.LBB3_17
# BB#18:                                # %if.end.35
	movq	208(%rsp), %rdx         # 8-byte Reload
	movl	32(%rdx), %eax
	cmpl	$199, %eax
	jg	.LBB3_22
# BB#19:                                # %land.lhs.true.37
	movl	36(%rdx), %ecx
	cmpl	$199, %ecx
	jg	.LBB3_22
# BB#20:                                # %if.then.39
	imull	204(%rsp), %eax         # 4-byte Folded Reload
	imull	%ecx, %eax
	imull	40(%rdx), %eax
	cmpl	$161, %eax
	jge	.LBB3_22
# BB#21:
	xorl	%ecx, %ecx
	jmp	.LBB3_93
.LBB3_22:                               # %if.end.47
	movl	$s_DCTE_template, %eax
	cmpq	%rax, %rbp
	jne	.LBB3_29
# BB#23:                                # %if.then.49
	movl	160(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	jne	.LBB3_28
# BB#24:                                # %lor.lhs.false.51
	cmpl	$0, 32(%r13)
	je	.LBB3_27
# BB#25:                                # %cond.true.53
	movl	$s_DCTE_template, %ebp
	movl	16(%r13), %eax
	cmpl	$8, %eax
	je	.LBB3_29
# BB#26:                                # %cond.true.53
	cmpl	$-1, %eax
	jne	.LBB3_28
.LBB3_27:                               # %cond.false.61
	movl	$s_DCTE_template, %ebp
	cmpl	$8, 40(%rdx)
	je	.LBB3_29
.LBB3_28:                               # %if.then.64
	movq	%r14, %rbp
.LBB3_29:                               # %if.end.66
	movq	(%rbp), %rsi
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	callq	s_alloc_state
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB3_93
# BB#30:                                # %if.end.70
	movq	%rbp, (%rax)
	movq	40(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB3_32
# BB#31:                                # %if.then.73
	movq	%rax, %rdi
	movq	%rax, %r14
	callq	*%rcx
	movq	%r14, %rax
.LBB3_32:                               # %if.end.75
	movl	$s_CFE_template, %ecx
	cmpq	%rcx, %rbp
	movq	%rbx, %rsi
	je	.LBB3_33
# BB#40:                                # %if.else.95
	movl	$s_LZWE_template, %ecx
	cmpq	%rcx, %rbp
	je	.LBB3_42
# BB#41:                                # %if.else.95
	movl	$s_zlibE_template, %ecx
	cmpq	%rcx, %rbp
	jne	.LBB3_50
.LBB3_42:                               # %land.lhs.true.99
	movq	216(%rsp), %rcx         # 8-byte Reload
	cmpl	$3010, 8848(%rcx)       # imm = 0xBC2
	jb	.LBB3_50
# BB#43:                                # %if.then.102
	movq	%rsi, %r13
	movl	160(%rsp), %ecx         # 4-byte Reload
	testb	%cl, %cl
	jne	.LBB3_49
# BB#44:                                # %if.then.104
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rax, %rdx
	movq	%rax, %rbx
	callq	psdf_encode_binary
	movq	%rbx, %rsi
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_92
# BB#45:                                # %if.end.108
	movq	s_PNGPE_template(%rip), %rsi
	movl	$.L.str.7, %edx
	movq	%r13, %rdi
	callq	s_alloc_state
	movq	%rax, %r14
	movl	$-25, %ebp
	xorl	%esi, %esi
	testq	%r14, %r14
	je	.LBB3_92
# BB#46:                                # %if.end.113
	movq	$s_PNGPE_template, (%r14)
	movq	s_PNGPE_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB3_48
# BB#47:                                # %if.then.117
	movq	%r14, %rdi
	callq	*%rax
.LBB3_48:                               # %if.end.119
	movl	204(%rsp), %eax         # 4-byte Reload
	movl	%eax, 108(%r14)
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	32(%rax), %eax
	movl	%eax, 116(%r14)
	movl	$s_PNGPE_template, %ebp
	movq	%r14, %rax
	jmp	.LBB3_49
.LBB3_17:
	xorl	%ecx, %ecx
	jmp	.LBB3_93
.LBB3_50:                               # %if.else.125
	movl	$s_DCTE_template, %ecx
	cmpq	%rcx, %rbp
	je	.LBB3_52
# BB#51:
	movq	%rsi, %r13
	jmp	.LBB3_49
.LBB3_33:                               # %if.then.77
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB3_36
# BB#34:                                # %land.lhs.true.80
	movl	$s_CFE_template, %ecx
	cmpq	%rcx, 72(%r13)
	je	.LBB3_35
.LBB3_36:                               # %if.else.86
	movq	%rsi, %r13
	movl	$-1, 124(%rax)
	movl	$1, 148(%rax)
	jmp	.LBB3_37
.LBB3_52:                               # %if.then.127
	movq	%r15, %rbp
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leaq	232(%rsp), %r12
	movq	%r12, %rdi
	movq	%rsi, %r13
	callq	gs_c_param_list_write
	movq	176(%rsp), %r14         # 8-byte Reload
	movq	24(%r14), %rbx
	movl	$1, 292(%rsp)
	movl	$0, 288(%rsp)
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movq	%rdi, %r15
	callq	*24(%rax)
	xorl	%ecx, %ecx
	cmpl	$3, %eax
	jne	.LBB3_89
# BB#53:                                # %if.end.i
	testq	%rbp, %rbp
	je	.LBB3_55
# BB#54:                                # %if.then.2.i
	leaq	232(%rsp), %rdi
	movq	%rbp, %rsi
	callq	param_list_copy
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB3_89
.LBB3_55:                               # %if.end.7.i
	movl	$24, %edi
	callq	gdev_mem_device_for_bits
	movq	24(%rbx), %rdx
	movq	%rbx, 216(%rsp)         # 8-byte Spill
	leaq	560(%rsp), %rbp
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gs_make_mem_device
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	gx_device_retain
	movq	%rbp, %rdi
	callq	set_linear_color_bits_mask_shift
	movl	$1, 696(%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	gsicc_init_device_profile_struct
	movq	184(%rsp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB3_82
# BB#56:                                # %if.then.10.i
	movl	$-8388609, 312(%rsp)    # imm = 0xFFFFFFFFFF7FFFFF
	movl	$-8388609, 308(%rsp)    # imm = 0xFFFFFFFFFF7FFFFF
	movl	$-8388609, 304(%rsp)    # imm = 0xFFFFFFFFFF7FFFFF
	movq	%r15, %r12
	movq	(%r12), %rax
	leaq	296(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*40(%rax)
	movq	(%r12), %rax
	leaq	3352(%rsp), %rdx
	leaq	560(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rcx
	callq	*72(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB3_57
# BB#58:                                # %if.end.21.i
	movq	3360(%rsp), %rbx
	movl	700(%rsp), %edx
	movl	764(%rsp), %eax
	movq	%rbx, %rsi
	movb	%dl, %cl
	shrq	%cl, %rsi
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movl	$1, %r14d
	movl	$1, %esi
	movb	%al, %cl
	shll	%cl, %esi
	movl	%esi, 144(%rsp)         # 4-byte Spill
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movq	%rbx, %rsi
	shrq	%cl, %rsi
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	shrl	$8, %ecx
	movl	$1, %esi
	shll	%cl, %esi
	movl	%esi, 112(%rsp)         # 4-byte Spill
	shrl	$16, %edx
	movb	%dl, %cl
	shrq	%cl, %rbx
	shrl	$16, %eax
	movl	$1, %r15d
	movb	%al, %cl
	shll	%cl, %r15d
	movl	$2139095039, 304(%rsp)  # imm = 0x7F7FFFFF
	movabsq	$-36028797027352577, %rax # imm = 0xFF7FFFFFFF7FFFFF
	movq	%rax, 308(%rsp)
	movq	(%r12), %rax
	leaq	296(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*40(%rax)
	movq	(%r12), %rax
	leaq	3352(%rsp), %rdx
	leaq	560(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	184(%rsp), %rcx         # 8-byte Reload
	callq	*72(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB3_59
# BB#60:                                # %if.end.36.i
	movq	3360(%rsp), %rsi
	movl	700(%rsp), %eax
	movl	764(%rsp), %edx
	movq	%rsi, %rdi
	movb	%al, %cl
	shrq	%cl, %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	$1, %edi
	movb	%dl, %cl
	shll	%cl, %edi
	movl	%edi, 64(%rsp)          # 4-byte Spill
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	%rsi, %rdi
	shrq	%cl, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	%edx, %ecx
	shrl	$8, %ecx
	movl	$1, %edi
	shll	%cl, %edi
	movl	%edi, 32(%rsp)          # 4-byte Spill
	shrl	$16, %eax
	movb	%al, %cl
	shrq	%cl, %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	shrl	$16, %edx
	movb	%dl, %cl
	shll	%cl, %r14d
	movl	$-8388609, 304(%rsp)    # imm = 0xFFFFFFFFFF7FFFFF
	movabsq	$-36028799174836225, %rax # imm = 0xFF7FFFFF7F7FFFFF
	movq	%rax, 308(%rsp)
	movq	(%r12), %rax
	leaq	296(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*40(%rax)
	movq	(%r12), %rax
	leaq	3352(%rsp), %rdx
	leaq	560(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	184(%rsp), %rcx         # 8-byte Reload
	callq	*72(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB3_59
# BB#61:                                # %if.end.51.i
	movq	3360(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	700(%rsp), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	764(%rsp), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	$-8388609, 304(%rsp)    # imm = 0xFFFFFFFFFF7FFFFF
	movabsq	$9187343239827423231, %rax # imm = 0x7F7FFFFFFF7FFFFF
	movq	%rax, 308(%rsp)
	movq	(%r12), %rax
	leaq	296(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*40(%rax)
	movq	(%r12), %rax
	leaq	3352(%rsp), %rdx
	leaq	560(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	184(%rsp), %rcx         # 8-byte Reload
	callq	*72(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB3_59
# BB#62:                                # %if.end.66.i
	movl	144(%rsp), %ecx         # 4-byte Reload
	decl	%ecx
	movq	160(%rsp), %rax         # 8-byte Reload
	andl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm8
	movl	112(%rsp), %ecx         # 4-byte Reload
	decl	%ecx
	movq	128(%rsp), %rax         # 8-byte Reload
	andl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm9
	decl	%r15d
	andl	%ebx, %r15d
	cvtsi2ssl	%r15d, %xmm10
	movl	64(%rsp), %ecx          # 4-byte Reload
	decl	%ecx
	movq	80(%rsp), %rax          # 8-byte Reload
	andl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm5
	movl	32(%rsp), %ecx          # 4-byte Reload
	decl	%ecx
	movq	48(%rsp), %rax          # 8-byte Reload
	andl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm13
	decl	%r14d
	movq	96(%rsp), %rax          # 8-byte Reload
	andl	%eax, %r14d
	cvtsi2ssl	%r14d, %xmm12
	movl	12(%rsp), %r10d         # 4-byte Reload
	movl	%r10d, %ecx
	shrl	$16, %ecx
	movq	16(%rsp), %r9           # 8-byte Reload
	movl	%r9d, %eax
	shrl	$16, %eax
	movl	%r10d, %edx
	shrl	$8, %edx
	movq	%r9, %rsi
	shrq	$8, %rsi
	movl	$1, %r8d
	movl	$1, %ebx
	shll	%cl, %ebx
	decl	%ebx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rdi, %rbp
	movb	%al, %cl
	shrq	%cl, %rbp
	andl	%ebx, %ebp
	cvtsi2ssl	%ebp, %xmm11
	movl	$1, %eax
	movb	%dl, %cl
	shll	%cl, %eax
	decl	%eax
	movq	%rdi, %rdx
	movb	%sil, %cl
	shrq	%cl, %rdx
	andl	%eax, %edx
	cvtsi2ssl	%edx, %xmm7
	movl	$1, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	decl	%eax
	movb	%r9b, %cl
	shrq	%cl, %rdi
	andl	%eax, %edi
	cvtsi2ssl	%edi, %xmm6
	movq	3360(%rsp), %rbp
	movl	700(%rsp), %edx
	movl	764(%rsp), %eax
	movq	%rbp, %rsi
	movb	%dl, %cl
	shrq	%cl, %rsi
	movl	$1, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	decl	%ebx
	andl	%esi, %ebx
	cvtsi2ssl	%ebx, %xmm2
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movq	%rbp, %rsi
	shrq	%cl, %rsi
	movl	%eax, %ecx
	shrl	$8, %ecx
	movl	$1, %ebx
	shll	%cl, %ebx
	decl	%ebx
	andl	%esi, %ebx
	cvtsi2ssl	%ebx, %xmm4
	shrl	$16, %edx
	movb	%dl, %cl
	shrq	%cl, %rbp
	shrl	$16, %eax
	movb	%al, %cl
	shll	%cl, %r8d
	decl	%r8d
	andl	%ebp, %r8d
	cvtsi2ssl	%r8d, %xmm0
	subss	%xmm8, %xmm5
	subss	%xmm9, %xmm13
	subss	%xmm10, %xmm12
	subss	%xmm8, %xmm6
	subss	%xmm9, %xmm7
	subss	%xmm10, %xmm11
	subss	%xmm8, %xmm2
	subss	%xmm9, %xmm4
	subss	%xmm10, %xmm0
	movaps	.LCPI3_0(%rip), %xmm8   # xmm8 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm1
	movaps	%xmm5, %xmm10
	cmpltss	%xmm1, %xmm10
	movaps	%xmm10, %xmm3
	andnps	%xmm5, %xmm3
	xorps	%xmm8, %xmm5
	andps	%xmm5, %xmm10
	orps	%xmm3, %xmm10
	movaps	%xmm13, %xmm14
	cmpltss	%xmm1, %xmm14
	movaps	%xmm14, %xmm3
	andnps	%xmm13, %xmm3
	xorps	%xmm8, %xmm13
	andps	%xmm13, %xmm14
	orps	%xmm3, %xmm14
	movaps	%xmm12, %xmm13
	cmpltss	%xmm1, %xmm13
	movaps	%xmm13, %xmm3
	andnps	%xmm12, %xmm3
	xorps	%xmm8, %xmm12
	andps	%xmm12, %xmm13
	orps	%xmm3, %xmm13
	movaps	%xmm6, %xmm9
	cmpltss	%xmm1, %xmm9
	movaps	%xmm9, %xmm3
	andnps	%xmm6, %xmm3
	xorps	%xmm8, %xmm6
	andps	%xmm6, %xmm9
	orps	%xmm3, %xmm9
	movaps	%xmm7, %xmm6
	cmpltss	%xmm1, %xmm6
	movaps	%xmm6, %xmm3
	andnps	%xmm7, %xmm3
	xorps	%xmm8, %xmm7
	andps	%xmm7, %xmm6
	orps	%xmm3, %xmm6
	movaps	%xmm11, %xmm7
	cmpltss	%xmm1, %xmm7
	movaps	%xmm7, %xmm3
	andnps	%xmm11, %xmm3
	xorps	%xmm8, %xmm11
	andps	%xmm11, %xmm7
	orps	%xmm3, %xmm7
	movaps	%xmm2, %xmm5
	cmpltss	%xmm1, %xmm5
	movaps	%xmm5, %xmm3
	andnps	%xmm2, %xmm3
	xorps	%xmm8, %xmm2
	andps	%xmm2, %xmm5
	orps	%xmm3, %xmm5
	movaps	%xmm4, %xmm3
	cmpltss	%xmm1, %xmm3
	movaps	%xmm3, %xmm2
	andnps	%xmm4, %xmm2
	xorps	%xmm8, %xmm4
	andps	%xmm4, %xmm3
	orps	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	cmpltss	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	andnps	%xmm0, %xmm1
	xorps	%xmm8, %xmm0
	andps	%xmm0, %xmm2
	orps	%xmm1, %xmm2
	movss	.LCPI3_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm10, %xmm0
	ucomiss	%xmm14, %xmm0
	jbe	.LBB3_69
# BB#63:                                # %if.end.66.i
	ucomiss	%xmm13, %xmm0
	jbe	.LBB3_69
# BB#64:                                # %land.lhs.true.244.i
	movss	.LCPI3_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm0
	ucomiss	%xmm9, %xmm0
	jbe	.LBB3_69
# BB#65:                                # %land.lhs.true.244.i
	ucomiss	%xmm7, %xmm0
	jbe	.LBB3_69
# BB#66:                                # %land.lhs.true.258.i
	movss	.LCPI3_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	ucomiss	%xmm5, %xmm0
	jbe	.LBB3_69
# BB#67:                                # %land.lhs.true.258.i
	ucomiss	%xmm3, %xmm0
	jbe	.LBB3_69
# BB#68:                                # %if.then.272.i
	leaq	232(%rsp), %rdi
	leaq	292(%rsp), %rdx
	movl	$.L.str.8, %esi
	callq	param_write_int
	testl	%eax, %eax
	movq	176(%rsp), %r14         # 8-byte Reload
	leaq	232(%rsp), %r12
	jmp	.LBB3_87
.LBB3_35:                               # %if.then.83
	movq	%rsi, %r13
	movq	%rax, %rsi
	movq	%rax, %rbx
	callq	s_CF_put_params
	movq	%rbx, %rax
.LBB3_37:                               # %if.end.87
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	32(%rcx), %edx
	movl	%edx, 136(%rax)
	xorl	%edx, %edx
	cmpl	$0, 144(%rax)
	jne	.LBB3_39
# BB#38:                                # %cond.false.91
	movl	36(%rcx), %edx
.LBB3_39:                               # %cond.end.93
	movl	%edx, 140(%rax)
	movl	$s_CFE_template, %ebp
.LBB3_49:                               # %if.end.143
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rax, %rdx
	movq	%rax, %rbx
	callq	psdf_encode_binary
	movq	%rbx, %rsi
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	$0, %ecx
	jns	.LBB3_93
	jmp	.LBB3_92
.LBB3_59:                               # %convert_color.exit45.thread.i
	leaq	232(%rsp), %rax
	movq	%rax, %rbp
	movq	176(%rsp), %r14         # 8-byte Reload
	jmp	.LBB3_89
.LBB3_57:                               # %convert_color.exit.thread.i
	leaq	232(%rsp), %rax
	movq	%rax, %rbp
	jmp	.LBB3_89
.LBB3_69:                               # %if.end.277.i
	movaps	%xmm13, 112(%rsp)       # 16-byte Spill
	movaps	%xmm7, 64(%rsp)         # 16-byte Spill
	movaps	%xmm14, 128(%rsp)       # 16-byte Spill
	movaps	%xmm2, 32(%rsp)         # 16-byte Spill
	movaps	%xmm6, 96(%rsp)         # 16-byte Spill
	movaps	%xmm3, 48(%rsp)         # 16-byte Spill
	movaps	%xmm10, 144(%rsp)       # 16-byte Spill
	movaps	%xmm9, 160(%rsp)        # 16-byte Spill
	movaps	%xmm5, 80(%rsp)         # 16-byte Spill
	movl	$2139095039, 304(%rsp)  # imm = 0x7F7FFFFF
	movq	$0, 308(%rsp)
	movq	(%r12), %rax
	leaq	296(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*40(%rax)
	movq	(%r12), %rax
	leaq	3352(%rsp), %rdx
	leaq	560(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	184(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rcx
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB3_71
# BB#70:                                # %if.end.i.172.i
	movq	3360(%rsp), %rbp
	movl	700(%rsp), %edx
	movl	764(%rsp), %eax
	movq	%rbp, %rsi
	movb	%dl, %cl
	shrq	%cl, %rsi
	movl	$1, %edi
	movl	$1, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	decl	%ebx
	andl	%esi, %ebx
	cvtsi2ssl	%ebx, %xmm0
	movaps	%xmm0, 144(%rsp)        # 16-byte Spill
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movq	%rbp, %rsi
	shrq	%cl, %rsi
	movl	%eax, %ecx
	shrl	$8, %ecx
	movl	$1, %ebx
	shll	%cl, %ebx
	decl	%ebx
	andl	%esi, %ebx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	movaps	%xmm0, 128(%rsp)        # 16-byte Spill
	shrl	$16, %edx
	movb	%dl, %cl
	shrq	%cl, %rbp
	shrl	$16, %eax
	movb	%al, %cl
	shll	%cl, %edi
	decl	%edi
	andl	%ebp, %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movaps	%xmm0, 112(%rsp)        # 16-byte Spill
.LBB3_71:                               # %convert_color.exit174.i
	movss	304(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI3_2(%rip), %xmm0
	movss	%xmm0, 304(%rsp)
	movq	(%r12), %rax
	leaq	296(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*40(%rax)
	movq	(%r12), %rax
	leaq	3352(%rsp), %rdx
	leaq	560(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	*72(%rax)
	testl	%eax, %eax
	movq	176(%rsp), %r14         # 8-byte Reload
	js	.LBB3_73
# BB#72:                                # %if.end.i.215.i
	movq	3360(%rsp), %r8
	movl	700(%rsp), %edx
	movl	764(%rsp), %eax
	movq	%r8, %rsi
	movb	%dl, %cl
	shrq	%cl, %rsi
	movl	$1, %edi
	movl	$1, %ebp
	movb	%al, %cl
	shll	%cl, %ebp
	decl	%ebp
	andl	%esi, %ebp
	cvtsi2ssl	%ebp, %xmm0
	movaps	%xmm0, 160(%rsp)        # 16-byte Spill
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movq	%r8, %rsi
	shrq	%cl, %rsi
	movl	%eax, %ecx
	shrl	$8, %ecx
	movl	$1, %ebp
	shll	%cl, %ebp
	decl	%ebp
	andl	%esi, %ebp
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movaps	%xmm0, 96(%rsp)         # 16-byte Spill
	shrl	$16, %edx
	movb	%dl, %cl
	shrq	%cl, %r8
	shrl	$16, %eax
	movb	%al, %cl
	shll	%cl, %edi
	decl	%edi
	andl	%r8d, %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movaps	%xmm0, 64(%rsp)         # 16-byte Spill
.LBB3_73:                               # %convert_color.exit217.i
	movss	304(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI3_2(%rip), %xmm0
	movss	%xmm0, 304(%rsp)
	movq	(%r12), %rax
	leaq	296(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*40(%rax)
	movq	(%r12), %rax
	leaq	3352(%rsp), %rdx
	leaq	560(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	*72(%rax)
	testl	%eax, %eax
	leaq	232(%rsp), %r12
	movaps	80(%rsp), %xmm6         # 16-byte Reload
	js	.LBB3_75
# BB#74:                                # %if.end.i.258.i
	movq	3360(%rsp), %r8
	movl	700(%rsp), %edx
	movl	764(%rsp), %eax
	movq	%r8, %rsi
	movb	%dl, %cl
	shrq	%cl, %rsi
	movl	$1, %edi
	movl	$1, %ebp
	movb	%al, %cl
	shll	%cl, %ebp
	decl	%ebp
	andl	%esi, %ebp
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ebp, %xmm6
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movq	%r8, %rsi
	shrq	%cl, %rsi
	movl	%eax, %ecx
	shrl	$8, %ecx
	movl	$1, %ebp
	shll	%cl, %ebp
	decl	%ebp
	andl	%esi, %ebp
	cvtsi2ssl	%ebp, %xmm0
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	shrl	$16, %edx
	movb	%dl, %cl
	shrq	%cl, %r8
	shrl	$16, %eax
	movb	%al, %cl
	shll	%cl, %edi
	decl	%edi
	andl	%r8d, %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movaps	%xmm0, 32(%rsp)         # 16-byte Spill
.LBB3_75:                               # %land.lhs.true.419.i
	movaps	144(%rsp), %xmm4        # 16-byte Reload
	movaps	128(%rsp), %xmm7        # 16-byte Reload
	subss	%xmm4, %xmm7
	movaps	%xmm7, %xmm1
	movaps	.LCPI3_0(%rip), %xmm5   # xmm5 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm1
	xorps	%xmm8, %xmm8
	movaps	%xmm7, %xmm2
	cmpltss	%xmm8, %xmm2
	movaps	%xmm2, %xmm3
	andnps	%xmm7, %xmm3
	andps	%xmm1, %xmm2
	orps	%xmm3, %xmm2
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm1
	ucomiss	%xmm2, %xmm1
	movaps	160(%rsp), %xmm7        # 16-byte Reload
	movaps	112(%rsp), %xmm0        # 16-byte Reload
	jbe	.LBB3_82
# BB#76:                                # %land.lhs.true.419.i
	subss	%xmm4, %xmm0
	movaps	%xmm0, %xmm2
	xorps	%xmm5, %xmm2
	movaps	%xmm0, %xmm3
	cmpltss	%xmm8, %xmm3
	movaps	%xmm3, %xmm4
	andnps	%xmm0, %xmm4
	andps	%xmm2, %xmm3
	orps	%xmm4, %xmm3
	ucomiss	%xmm3, %xmm1
	jbe	.LBB3_82
# BB#77:                                # %land.lhs.true.433.i
	movaps	96(%rsp), %xmm4         # 16-byte Reload
	subss	%xmm7, %xmm4
	xorps	%xmm1, %xmm1
	movaps	%xmm4, %xmm2
	xorps	%xmm5, %xmm2
	movaps	%xmm4, %xmm3
	cmpltss	%xmm1, %xmm3
	andps	%xmm3, %xmm2
	andnps	%xmm4, %xmm3
	orps	%xmm2, %xmm3
	movss	.LCPI3_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm2
	ucomiss	%xmm3, %xmm2
	jbe	.LBB3_82
# BB#78:                                # %land.lhs.true.433.i
	movaps	64(%rsp), %xmm0         # 16-byte Reload
	subss	%xmm7, %xmm0
	movaps	%xmm0, %xmm3
	xorps	%xmm5, %xmm3
	movaps	%xmm0, %xmm4
	cmpltss	%xmm1, %xmm4
	andps	%xmm4, %xmm3
	andnps	%xmm0, %xmm4
	orps	%xmm3, %xmm4
	ucomiss	%xmm4, %xmm2
	jbe	.LBB3_82
# BB#79:                                # %land.lhs.true.447.i
	movaps	48(%rsp), %xmm4         # 16-byte Reload
	subss	%xmm6, %xmm4
	movaps	%xmm4, %xmm1
	xorps	%xmm5, %xmm1
	movaps	%xmm4, %xmm2
	cmpltss	%xmm8, %xmm2
	movaps	%xmm2, %xmm3
	andnps	%xmm4, %xmm3
	andps	%xmm1, %xmm2
	orps	%xmm3, %xmm2
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	ucomiss	%xmm2, %xmm1
	jbe	.LBB3_82
# BB#80:                                # %land.lhs.true.447.i
	movaps	32(%rsp), %xmm3         # 16-byte Reload
	subss	%xmm6, %xmm3
	xorps	%xmm3, %xmm5
	movaps	%xmm3, %xmm2
	cmpltss	%xmm8, %xmm2
	movaps	%xmm2, %xmm0
	andnps	%xmm3, %xmm0
	andps	%xmm5, %xmm2
	orps	%xmm0, %xmm2
	ucomiss	%xmm2, %xmm1
	jbe	.LBB3_82
# BB#81:                                # %if.then.461.i
	leaq	232(%rsp), %rdi
	leaq	288(%rsp), %rdx
	movl	$.L.str.8, %esi
	callq	param_write_int
	jmp	.LBB3_86
.LBB3_82:                               # %if.else.i
	movq	$choose_DCT_params.v, 3352(%rsp)
	movabsq	$4294967300, %rax       # imm = 0x100000004
	movq	%rax, 3360(%rsp)
	leaq	232(%rsp), %rdi
	leaq	3352(%rsp), %rdx
	movl	$.L.str.9, %esi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB3_83
# BB#85:                                # %cleanup.i
	leaq	232(%rsp), %rdi
	leaq	3352(%rsp), %rdx
	movl	$.L.str.10, %esi
	callq	param_write_string
.LBB3_86:                               # %cleanup.i
	testl	%eax, %eax
.LBB3_87:                               # %cleanup.i
	movq	216(%rsp), %rbx         # 8-byte Reload
	js	.LBB3_84
# BB#88:                                # %done.i
	leaq	232(%rsp), %rdi
	movq	%rdi, %rbp
	callq	gs_c_param_list_read
	movq	24(%rbx), %rdi
	leaq	560(%rsp), %rsi
	callq	gx_device_finalize
	xorl	%ecx, %ecx
	jmp	.LBB3_89
.LBB3_83:                               # %cleanup.thread.i
	movq	216(%rsp), %rbx         # 8-byte Reload
.LBB3_84:                               # %error.i
	movq	24(%rbx), %rdi
	leaq	560(%rsp), %rsi
	movl	%eax, %ebx
	callq	gx_device_finalize
	movl	%ebx, %ecx
	movq	%r12, %rbp
.LBB3_89:                               # %choose_DCT_params.exit
	testl	%ecx, %ecx
	js	.LBB3_90
# BB#91:                                # %cleanup
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	movq	%rbp, %rdi
	movq	224(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movl	204(%rsp), %r8d         # 4-byte Reload
	movq	%r14, %r9
	callq	psdf_DCT_filter
	movl	%eax, %ebp
	leaq	232(%rsp), %rdi
	callq	gs_c_param_list_release
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	jns	.LBB3_93
.LBB3_92:                               # %fail
	movl	$.L.str.7, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movl	%ebp, %ecx
.LBB3_93:                               # %cleanup.148
	movl	%ecx, %eax
	addq	$4008, %rsp             # imm = 0xFA8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_90:                               # %cleanup.thread
	leaq	232(%rsp), %rdi
	movl	%ecx, %ebx
	callq	gs_c_param_list_release
	movl	%ebx, %ecx
	jmp	.LBB3_93
.Lfunc_end3:
	.size	setup_image_compression, .Lfunc_end3-setup_image_compression
	.cfi_endproc

	.globl	psdf_setup_lossless_filters
	.align	16, 0x90
	.type	psdf_setup_lossless_filters,@function
psdf_setup_lossless_filters:            # @psdf_setup_lossless_filters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 32
	subq	$9376, %rsp             # imm = 0x24A0
.Ltmp44:
	.cfi_def_cfa_offset 9408
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rax
	leaq	16(%rsp), %r15
	movl	$9360, %edx             # imm = 0x2490
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	$0, 9060(%rsp)
	movl	$0, 9080(%rsp)
	movq	$.L.str, 9096(%rsp)
	movq	$s_zlibE_template, 9120(%rsp)
	movl	$0, 9128(%rsp)
	movl	$0, 9148(%rsp)
	movl	$0, 9168(%rsp)
	movq	$.L.str, 9184(%rsp)
	movq	$s_zlibE_template, 9208(%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	psdf_setup_image_filters
	addq	$9376, %rsp             # imm = 0x24A0
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	psdf_setup_lossless_filters, .Lfunc_end4-psdf_setup_lossless_filters
	.cfi_endproc

	.globl	psdf_setup_compression_chooser
	.align	16, 0x90
	.type	psdf_setup_compression_chooser,@function
psdf_setup_compression_chooser:         # @psdf_setup_compression_chooser
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%r14), %rdi
	movq	s_compr_chooser_template(%rip), %rsi
	movl	$.L.str.3, %edx
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB5_2
# BB#1:                                 # %if.end
	movq	$s_compr_chooser_template, (%rbp)
	movq	24(%r14), %rax
	movq	%rax, (%rbx)
	movq	5848(%r14), %rax
	movq	%rax, 16(%rbx)
	movq	%r14, 24(%rbx)
	movq	%rax, 8(%rbx)
	movl	$s_compr_chooser_template, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	testl	%eax, %eax
	js	.LBB5_2
# BB#3:                                 # %if.end.8
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	4(%rsp), %r8d           # 4-byte Reload
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	s_compr_chooser_set_dimensions # TAILCALL
.LBB5_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	psdf_setup_compression_chooser, .Lfunc_end5-psdf_setup_compression_chooser
	.cfi_endproc

	.globl	psdf_setup_image_to_mask_filter
	.align	16, 0x90
	.type	psdf_setup_image_to_mask_filter,@function
psdf_setup_image_to_mask_filter:        # @psdf_setup_image_to_mask_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	24(%r14), %rdi
	movq	s__image_colors_template(%rip), %rsi
	movl	$.L.str.4, %edx
	callq	s_alloc_state
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB6_3
# BB#1:                                 # %if.end
	movq	24(%r14), %rax
	movq	%rax, (%rbp)
	movq	%r14, 24(%rbp)
	movl	$s__image_colors_template, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	psdf_encode_binary
	testl	%eax, %eax
	js	.LBB6_3
# BB#2:                                 # %if.end.6
	movq	64(%rsp), %rbp
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	4(%rsp), %r8d           # 4-byte Reload
	callq	s_image_colors_set_dimensions
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	s_image_colors_set_mask_colors
	xorl	%eax, %eax
.LBB6_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	psdf_setup_image_to_mask_filter, .Lfunc_end6-psdf_setup_image_to_mask_filter
	.cfi_endproc

	.globl	psdf_setup_image_colors_filter
	.align	16, 0x90
	.type	psdf_setup_image_colors_filter,@function
psdf_setup_image_colors_filter:         # @psdf_setup_image_colors_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 64
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	24(%r14), %rdi
	movq	s__image_colors_template(%rip), %rsi
	movl	$.L.str.4, %edx
	callq	s_alloc_state
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB7_8
# BB#1:                                 # %if.end
	movq	24(%r14), %rax
	movq	%rax, (%r13)
	movq	%r14, 24(%r13)
	movl	$s__image_colors_template, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	psdf_encode_binary
	testl	%eax, %eax
	js	.LBB7_8
# BB#2:                                 # %if.end.6
	movl	32(%rbx), %ebp
	movl	36(%rbx), %r13d
	movq	576(%rbx), %rdi
	callq	gs_color_space_num_components
	movl	40(%rbx), %r8d
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movl	%eax, %ecx
	callq	s_image_colors_set_dimensions
	movq	576(%rbx), %rdx
	leaq	44(%rbx), %r8
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	s_image_colors_set_color_space
	movzbl	204(%r14), %eax
	movl	%eax, 40(%rbx)
	movslq	100(%r14), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.LBB7_8
# BB#3:                                 # %for.body.lr.ph
	xorl	%eax, %eax
	testb	$1, %cl
	movl	$0, %edx
	je	.LBB7_5
# BB#4:                                 # %for.body.prol
	movabsq	$4575657221408423936, %rdx # imm = 0x3F80000000000000
	movq	%rdx, 44(%rbx)
	movl	$1, %edx
.LBB7_5:                                # %for.body.lr.ph.split
	cmpl	$1, %ecx
	je	.LBB7_8
# BB#6:                                 # %for.body.lr.ph.split.split
	leal	1(%rdx,%rdx), %esi
	leal	3(%rdx,%rdx), %edi
	.align	16, 0x90
.LBB7_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rsi), %ebp
	movslq	%ebp, %rbp
	movl	$0, 44(%rbx,%rbp,4)
	movslq	%esi, %rsi
	movl	$1065353216, 44(%rbx,%rsi,4) # imm = 0x3F800000
	leal	-1(%rdi), %ebp
	movslq	%ebp, %rbp
	movl	$0, 44(%rbx,%rbp,4)
	movslq	%edi, %rdi
	movl	$1065353216, 44(%rbx,%rdi,4) # imm = 0x3F800000
	addq	$2, %rdx
	addl	$4, %esi
	addl	$4, %edi
	cmpq	%rcx, %rdx
	jl	.LBB7_7
.LBB7_8:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	psdf_setup_image_colors_filter, .Lfunc_end7-psdf_setup_image_colors_filter
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4616189618054758400    # double -1
.LCPI8_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	new_setup_image_filters
	.align	16, 0x90
	.type	new_setup_image_filters,@function
new_setup_image_filters:                # @new_setup_image_filters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 208
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movslq	40(%rbx), %r12
	cmpq	$9, %r12
	movl	$8, %r13d
	cmovll	%r12d, %r13d
	movl	%r13d, 40(%rbx)
	movq	576(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_1
# BB#2:                                 # %if.else
	callq	gs_color_space_num_components
	movq	576(%rbx), %rcx
	movq	(%rcx), %rcx
	cmpl	$10, (%rcx)
	jne	.LBB8_4
# BB#3:                                 # %if.then.7
	movups	9096(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9032(%rbp), %xmm0
	movupd	9048(%rbp), %xmm1
	movupd	9064(%rbp), %xmm2
	movupd	9080(%rbp), %xmm3
	movapd	%xmm3, 112(%rsp)
	movapd	%xmm2, 96(%rsp)
	movapd	%xmm1, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	movl	$0, 76(%rsp)
	movq	$.L.str, 112(%rsp)
	jmp	.LBB8_11
.LBB8_1:                                # %if.then
	movups	9264(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9200(%rbp), %xmm0
	movupd	9216(%rbp), %xmm1
	movupd	9232(%rbp), %xmm2
	movupd	9248(%rbp), %xmm3
	movapd	%xmm3, 112(%rsp)
	movapd	%xmm2, 96(%rsp)
	movapd	%xmm1, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	movl	$1, 80(%rsp)
	movl	$1, %eax
	jmp	.LBB8_11
.LBB8_4:                                # %if.else.9
	cmpl	$1, %eax
	jne	.LBB8_10
# BB#5:                                 # %if.then.11
	cmpl	$1, %r12d
	jne	.LBB8_7
# BB#6:                                 # %if.then.13
	movups	9264(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9200(%rbp), %xmm0
	movupd	9216(%rbp), %xmm1
	movupd	9232(%rbp), %xmm2
	movupd	9248(%rbp), %xmm3
	jmp	.LBB8_8
.LBB8_10:                               # %if.else.23
	movups	9096(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9032(%rbp), %xmm0
	movupd	9048(%rbp), %xmm1
	movupd	9064(%rbp), %xmm2
	movupd	9080(%rbp), %xmm3
	movapd	%xmm3, 112(%rsp)
	movapd	%xmm2, 96(%rsp)
	movapd	%xmm1, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	jmp	.LBB8_11
.LBB8_7:                                # %if.else.16
	movups	9184(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movupd	9120(%rbp), %xmm0
	movupd	9136(%rbp), %xmm1
	movupd	9152(%rbp), %xmm2
	movupd	9168(%rbp), %xmm3
.LBB8_8:                                # %if.end
	movapd	%xmm3, 112(%rsp)
	movapd	%xmm2, 96(%rsp)
	movapd	%xmm1, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	movl	$1, %eax
	cmpl	$-1, 80(%rsp)
	jne	.LBB8_11
# BB#9:                                 # %if.then.20
	movl	%r12d, 80(%rsp)
.LBB8_11:                               # %if.end.28
	testq	%r14, %r14
	je	.LBB8_12
# BB#13:                                # %if.else.31
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	%r15d, %r12d
	leaq	8(%rbx), %rdi
	movsd	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero
	leaq	48(%rsp), %rsi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform_inverse
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_49
# BB#14:                                # %cleanup.thread
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	48(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_distance_transform
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	48(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	movl	%r12d, %r15d
	jnp	.LBB8_16
# BB#15:                                # %call.sqrt
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB8_16:                               # %cleanup.thread.split
	movsd	.LCPI8_1(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movq	16(%rsp), %r12          # 8-byte Reload
	movl	28(%rsp), %eax          # 4-byte Reload
	jmp	.LBB8_17
.LBB8_12:
	movsd	.LCPI8_0(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB8_17:                               # %if.end.56
	cmpl	$1, %eax
	jne	.LBB8_35
# BB#18:                                # %land.lhs.true
	movq	576(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB8_35
# BB#19:                                # %land.lhs.true.60
	movq	(%rcx), %rcx
	cmpl	$10, (%rcx)
	jne	.LBB8_20
.LBB8_35:                               # %if.else.116
	cmpl	$-1, 80(%rsp)
	jne	.LBB8_37
# BB#36:                                # %if.then.120
	movl	216(%rsp), %ecx
	testl	%ecx, %ecx
	movl	$8, %ecx
	cmovel	%r13d, %ecx
	movl	%ecx, 80(%rsp)
.LBB8_37:                               # %if.end.127
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	96(%rsp), %rax
	testl	%eax, %eax
	je	.LBB8_42
# BB#38:                                # %land.lhs.true.i.111
	cvtsi2sdl	120(%rsp), %xmm1
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	shrq	$32, %rax
	movd	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB8_42
# BB#39:                                # %land.lhs.true.3.i.115
	xorps	%xmm1, %xmm1
	cvtsi2sdl	32(%rbx), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_42
# BB#40:                                # %land.rhs.i.119
	xorps	%xmm1, %xmm1
	cvtsi2sdl	36(%rbx), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB8_41
.LBB8_42:                               # %if.else.135
	leaq	64(%rsp), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%r15d, %r8d
	callq	setup_image_compression
.LBB8_43:                               # %if.end.140
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_49
# BB#44:                                # %if.end.144
	xorl	%r15d, %r15d
	cmpl	%r12d, %r13d
	je	.LBB8_49
# BB#45:                                # %if.end.i
	movl	32(%rbx), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	1728(%rax), %r14
	cmpl	$8, %r12d
	leaq	pixel_resize.exts(,%r12,8), %rax
	movslq	%r13d, %rcx
	leaq	pixel_resize.rets(,%rcx,8), %rcx
	cmovneq	%rax, %rcx
	movq	(%rcx), %rbx
	movq	(%rbx), %rsi
	movl	$.L.str.11, %edx
	movq	%r14, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB8_49
# BB#46:                                # %if.end.8.i
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_33
# BB#47:                                # %if.end.12.i
	movq	%rbp, %rdi
	movl	32(%rsp), %esi          # 4-byte Reload
	movl	28(%rsp), %edx          # 4-byte Reload
.LBB8_48:                               # %cleanup.152
	callq	s_1248_init
	xorl	%r15d, %r15d
	jmp	.LBB8_49
.LBB8_20:                               # %if.then.66
	movq	96(%rsp), %rax
	testl	%eax, %eax
	je	.LBB8_28
# BB#21:                                # %land.lhs.true.i
	cvtsi2sdl	120(%rsp), %xmm1
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	shrq	$32, %rax
	movd	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB8_28
# BB#22:                                # %land.lhs.true.3.i
	xorps	%xmm1, %xmm1
	cvtsi2sdl	32(%rbx), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_28
# BB#23:                                # %land.rhs.i
	xorps	%xmm1, %xmm1
	cvtsi2sdl	36(%rbx), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB8_24
.LBB8_28:                               # %if.else.105
	leaq	64(%rsp), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%r15d, %r8d
	callq	setup_image_compression
.LBB8_29:                               # %if.end.110
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_49
# BB#30:                                # %if.end.114
	xorl	%r15d, %r15d
	cmpl	%r12d, %r13d
	je	.LBB8_49
# BB#31:                                # %if.end.i.93
	movl	32(%rbx), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	1728(%rax), %r14
	cmpl	$8, %r12d
	leaq	pixel_resize.exts(,%r12,8), %rax
	movslq	%r13d, %rcx
	leaq	pixel_resize.rets(,%rcx,8), %rcx
	cmovneq	%rax, %rcx
	movq	(%rcx), %rbx
	movq	(%rbx), %rsi
	movl	$.L.str.11, %edx
	movq	%r14, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB8_49
# BB#32:                                # %if.end.8.i.96
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_33
# BB#34:                                # %if.end.12.i.100
	movl	$1, %edx
	movq	%rbp, %rdi
	movl	32(%rsp), %esi          # 4-byte Reload
	jmp	.LBB8_48
.LBB8_33:                               # %if.then.11.i.98
	movl	$.L.str.11, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*24(%r14)
.LBB8_49:                               # %cleanup.152
	movl	%r15d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_41:                               # %if.then.130
	leaq	64(%rsp), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movapd	%xmm2, %xmm0
	movl	%r15d, %r8d
	callq	setup_downsampling
	jmp	.LBB8_43
.LBB8_24:                               # %if.then.69
	cmpl	$1, 80(%rsp)
	jne	.LBB8_26
# BB#25:                                # %if.then.73
	movq	9248(%rbp), %rax
	movq	%rax, 112(%rsp)
	movq	9272(%rbp), %rax
	movq	%rax, 136(%rsp)
	movq	9224(%rbp), %rax
	jmp	.LBB8_27
.LBB8_26:                               # %if.else.87
	movq	9168(%rbp), %rax
	movq	%rax, 112(%rsp)
	movq	9192(%rbp), %rax
	movq	%rax, 136(%rsp)
	movq	9144(%rbp), %rax
.LBB8_27:                               # %if.end.103
	movq	%rax, 88(%rsp)
	leaq	64(%rsp), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movapd	%xmm2, %xmm0
	movl	%r15d, %r8d
	callq	setup_downsampling
	jmp	.LBB8_29
.Lfunc_end8:
	.size	new_setup_image_filters, .Lfunc_end8-new_setup_image_filters
	.cfi_endproc

	.globl	new_setup_lossless_filters
	.align	16, 0x90
	.type	new_setup_lossless_filters,@function
new_setup_lossless_filters:             # @new_setup_lossless_filters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 40
	subq	$9384, %rsp             # imm = 0x24A8
.Ltmp104:
	.cfi_def_cfa_offset 9424
.Ltmp105:
	.cfi_offset %rbx, -40
.Ltmp106:
	.cfi_offset %r12, -32
.Ltmp107:
	.cfi_offset %r14, -24
.Ltmp108:
	.cfi_offset %r15, -16
	movl	%r8d, %ebx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rax
	leaq	24(%rsp), %r12
	movl	$9360, %edx             # imm = 0x2490
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	$0, 9068(%rsp)
	movl	$0, 9088(%rsp)
	movq	$.L.str, 9104(%rsp)
	movq	$s_zlibE_template, 9128(%rsp)
	movl	$0, 9136(%rsp)
	movl	$0, 9156(%rsp)
	movl	$0, 9176(%rsp)
	movq	$.L.str, 9192(%rsp)
	movq	$s_zlibE_template, 9216(%rsp)
	movl	%ebx, 8(%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	new_setup_image_filters
	addq	$9384, %rsp             # imm = 0x24A8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	new_setup_lossless_filters, .Lfunc_end9-new_setup_lossless_filters
	.cfi_endproc

	.globl	new_resize_input
	.align	16, 0x90
	.type	new_resize_input,@function
new_resize_input:                       # @new_resize_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp115:
	.cfi_def_cfa_offset 64
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %rbp
	xorl	%ebx, %ebx
	cmpl	%ecx, %r8d
	je	.LBB10_5
# BB#1:                                 # %if.end.i
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movq	24(%rbp), %rax
	movq	1728(%rax), %r12
	cmpl	$8, %ecx
	movslq	%ecx, %rax
	leaq	pixel_resize.exts(,%rax,8), %rax
	movslq	%r8d, %rcx
	leaq	pixel_resize.rets(,%rcx,8), %rcx
	cmovneq	%rax, %rcx
	movq	(%rcx), %r14
	movq	(%r14), %rsi
	movl	$.L.str.11, %edx
	movq	%r12, %rdi
	callq	s_alloc_state
	movq	%rax, %r13
	movl	$-25, %ebx
	testq	%r13, %r13
	je	.LBB10_5
# BB#2:                                 # %if.end.8.i
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	psdf_encode_binary
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB10_3
# BB#4:                                 # %if.end.12.i
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	s_1248_init
	xorl	%ebx, %ebx
	jmp	.LBB10_5
.LBB10_3:                               # %if.then.11.i
	movl	$.L.str.11, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*24(%r12)
.LBB10_5:                               # %pixel_resize.exit
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	new_resize_input, .Lfunc_end10-new_resize_input
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FlateEncode"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"psdf_setup_image_filters"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"C2R state"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"psdf_setup_compression_chooser"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"psdf_setup_image_colors_filter"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unsupported downsample type %d\n"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"setup_downsampling"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"setup_image_compression"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ColorTransform"
	.size	.L.str.8, 15

	.type	choose_DCT_params.v,@object # @choose_DCT_params.v
	.section	.rodata,"a",@progbits
choose_DCT_params.v:
	.zero	4,1
	.size	choose_DCT_params.v, 4

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"HSamples"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"VSamples"
	.size	.L.str.10, 9

	.type	pixel_resize.exts,@object # @pixel_resize.exts
	.section	.rodata,"a",@progbits
	.align	16
pixel_resize.exts:
	.quad	0
	.quad	s_1_8_template
	.quad	s_2_8_template
	.quad	0
	.quad	s_4_8_template
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	s_12_8_template
	.quad	0
	.quad	0
	.quad	0
	.quad	s_16_8_template
	.size	pixel_resize.exts, 136

	.type	pixel_resize.rets,@object # @pixel_resize.rets
	.align	16
pixel_resize.rets:
	.quad	0
	.quad	s_8_1_template
	.quad	s_8_2_template
	.quad	0
	.quad	s_8_4_template
	.size	pixel_resize.rets, 40

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"pixel_resize state"
	.size	.L.str.11, 19

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	s_Average_template
	.quad	s_Bicubic_template
	.quad	s_Subsample_template
	.size	.Lswitch.table, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
