	.text
	.file	"gximage3.bc"
	.align	16, 0x90
	.type	gx_begin_image3,@function
gx_begin_image3:                        # @gx_begin_image3
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
	movq	$make_mcde_default, 24(%rsp)
	movq	$make_mid_default, 16(%rsp)
	callq	gx_begin_image3_generic
	addq	$40, %rsp
	retq
.Lfunc_end0:
	.size	gx_begin_image3, .Lfunc_end0-gx_begin_image3
	.cfi_endproc

	.globl	gs_image3_t_init
	.align	16, 0x90
	.type	gs_image3_t_init,@function
gs_image3_t_init:                       # @gs_image3_t_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp3:
	.cfi_def_cfa_offset 32
.Ltmp4:
	.cfi_offset %rbx, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	callq	gs_pixel_image_t_init
	movq	$gs_image_type_3, (%rbx)
	movl	%ebp, 584(%rbx)
	addq	$592, %rbx              # imm = 0x250
	movl	$-1, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gs_data_image_t_init    # TAILCALL
.Lfunc_end1:
	.size	gs_image3_t_init, .Lfunc_end1-gs_image3_t_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gx_begin_image3_generic
	.align	16, 0x90
	.type	gx_begin_image3_generic,@function
gx_begin_image3_generic:                # @gx_begin_image3_generic
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
	subq	$3320, %rsp             # imm = 0xCF8
.Ltmp12:
	.cfi_def_cfa_offset 3376
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
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rdi, %r13
	movq	$0, 2136(%rsp)
	movq	$0, 2128(%rsp)
	movl	36(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.LBB2_1
# BB#2:                                 # %lor.lhs.false
	movl	628(%rbx), %edi
	testl	%edi, %edi
	jle	.LBB2_3
# BB#4:                                 # %if.end
	leaq	592(%rbx), %r12
	movl	584(%rbx), %eax
	cmpl	$3, %eax
	je	.LBB2_19
# BB#5:                                 # %if.end
	cmpl	$2, %eax
	jne	.LBB2_6
# BB#16:                                # %sw.bb.19
	movl	%edi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.LBB2_19
# BB#17:                                # %land.lhs.true
	movl	%ecx, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	je	.LBB2_19
# BB#18:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_1:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_3:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_19:                               # %sw.bb.31
	cmpl	$1, 40(%r12)
	je	.LBB2_21
# BB#20:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_6:                                # %if.end
	cmpl	$1, %eax
	jne	.LBB2_7
# BB#8:                                 # %sw.bb
	cmpl	%ecx, %edi
	jne	.LBB2_9
# BB#10:                                # %sw.bb
	movl	32(%rbx), %eax
	cmpl	%eax, 624(%rbx)
	jne	.LBB2_11
# BB#12:                                # %lor.lhs.false.11
	movl	632(%rbx), %eax
	cmpl	40(%rbx), %eax
	jne	.LBB2_13
# BB#14:                                # %lor.lhs.false.15
	cmpl	$0, 568(%rbx)
	je	.LBB2_21
# BB#15:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_21:                               # %sw.epilog
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	leaq	8(%rbx), %r15
	leaq	904(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_matrix_invert
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_87
# BB#22:                                # %if.end.39
	movl	584(%rbx), %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	jne	.LBB2_26
# BB#23:                                # %if.then.45
	leaq	2160(%rsp), %r12
	movl	$1160, %edx             # imm = 0x488
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	2192(%rsp), %rax
	cvtsi2sdl	%eax, %xmm0
	movq	2784(%rsp), %rcx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	shrq	$32, %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	shrq	$32, %rcx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	leaq	904(%rsp), %rdi
	leaq	880(%rsp), %rbx
	movq	%rbx, %rsi
	callq	gs_matrix_scale
	leaq	2760(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_matrix_invert
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	%r12, %rbx
	jns	.LBB2_24
	jmp	.LBB2_87
.LBB2_7:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_26:                               # %if.else
	addq	$8, %r12
	leaq	880(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_matrix_invert
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_87
# BB#27:                                # %if.end.71
	movss	(%r15), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	(%r12), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB2_29
	jp	.LBB2_29
# BB#28:                                # %if.then.i
	cmpeqss	%xmm2, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB2_32
.LBB2_9:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_11:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_13:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_29:                               # %if.end.i
	ucomiss	%xmm2, %xmm0
	jne	.LBB2_31
	jp	.LBB2_31
# BB#30:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_31:                               # %lor.lhs.false.i
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	ucomiss	%xmm2, %xmm0
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB2_32:                               # %check_image3_extent.exit
	testl	%eax, %eax
	je	.LBB2_33
# BB#34:                                # %lor.lhs.false.79
	movss	12(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	604(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB2_36
	jp	.LBB2_36
# BB#35:                                # %if.then.i.174
	cmpeqss	%xmm2, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB2_39
.LBB2_33:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_36:                               # %if.end.i.175
	ucomiss	%xmm2, %xmm0
	jne	.LBB2_38
	jp	.LBB2_38
# BB#37:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_38:                               # %lor.lhs.false.i.180
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	ucomiss	%xmm2, %xmm0
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB2_39:                               # %check_image3_extent.exit183
	testl	%eax, %eax
	je	.LBB2_40
# BB#41:                                # %lor.lhs.false.88
	movss	16(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	608(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB2_43
	jp	.LBB2_43
# BB#42:                                # %if.then.i.188
	cmpeqss	%xmm2, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB2_46
.LBB2_40:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_43:                               # %if.end.i.189
	ucomiss	%xmm2, %xmm0
	jne	.LBB2_45
	jp	.LBB2_45
# BB#44:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_45:                               # %lor.lhs.false.i.194
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	ucomiss	%xmm2, %xmm0
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB2_46:                               # %check_image3_extent.exit197
	testl	%eax, %eax
	je	.LBB2_47
# BB#48:                                # %lor.lhs.false.97
	movss	20(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	612(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB2_50
	jp	.LBB2_50
# BB#49:                                # %if.then.i.202
	cmpeqss	%xmm2, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB2_53
.LBB2_47:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_50:                               # %if.end.i.203
	ucomiss	%xmm2, %xmm0
	jne	.LBB2_52
	jp	.LBB2_52
# BB#51:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_52:                               # %lor.lhs.false.i.208
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	ucomiss	%xmm2, %xmm0
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB2_53:                               # %check_image3_extent.exit211
	testl	%eax, %eax
	je	.LBB2_54
.LBB2_24:                               # %if.end.108
	movss	920(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	896(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	.LCPI2_0(%rip), %xmm0
	jae	.LBB2_25
# BB#55:                                # %lor.lhs.false.114
	movss	924(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	900(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	.LCPI2_0(%rip), %xmm0
	movl	$-15, %r14d
	jae	.LBB2_87
# BB#56:                                # %if.end.122
	movq	3384(%rsp), %rdi
	movl	$st_image3_enum, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, %r15
	movl	$-25, %r14d
	testq	%r15, %r15
	je	.LBB2_87
# BB#57:                                # %if.end.127
	movq	576(%rbx), %rdi
	callq	gs_color_space_num_components
	movl	%eax, 604(%r15)
	leal	1(%rax), %r8d
	movl	568(%rbx), %r9d
	movl	$image3_enum_procs, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rcx
	callq	gx_image_enum_common_init
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 640(%r15)
	movq	%r15, 96(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movl	624(%rbx), %edx
	movl	628(%rbx), %r10d
	je	.LBB2_59
# BB#58:                                # %if.then.133
	movslq	%edx, %rcx
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%r10d, 88(%rsp)         # 4-byte Spill
	movslq	88(%rsp), %r10          # 4-byte Folded Reload
	movslq	(%rax), %r14
	movslq	4(%rax), %r9
	movl	8(%rax), %esi
	movl	12(%rax), %edi
	movq	%r14, %rax
	imulq	%rcx, %rax
	movslq	32(%rbx), %r11
	cqto
	idivq	%r11
	movq	%rax, %r8
	movq	%r9, %rax
	imulq	%r10, %rax
	movslq	36(%rbx), %r12
	cqto
	idivq	%r12
	movq	%rax, %r15
	leal	-1(%rsi,%r11), %eax
	cltq
	imulq	%rcx, %rax
	cqto
	idivq	%r11
	movq	%rax, %rcx
	leal	-1(%rdi,%r12), %eax
	cltq
	imulq	%r10, %rax
	movl	88(%rsp), %r10d         # 4-byte Reload
	cqto
	idivq	%r12
	jmp	.LBB2_60
.LBB2_25:
	movl	$-15, %r14d
.LBB2_87:                               # %cleanup.434
	movl	%r14d, %eax
	addq	$3320, %rsp             # imm = 0xCF8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_59:                               # %if.else.181
	movl	32(%rbx), %esi
	movl	36(%rbx), %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	%edx, %ecx
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%r10d, %eax
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	movl	%r12d, %edi
.LBB2_60:                               # %if.end.204
	movl	%r15d, 2148(%rsp)
	movl	%r8d, 2144(%rsp)
	movl	%ecx, 2152(%rsp)
	movl	%eax, 2156(%rsp)
	subl	%r8d, %ecx
	movq	96(%rsp), %rdx          # 8-byte Reload
	movl	%ecx, 612(%rdx)
	subl	%r15d, %eax
	movq	%rdx, %r15
	movl	%eax, 616(%r15)
	movl	%r10d, 620(%r15)
	movl	$0, 656(%r15)
	movl	$0, 664(%r15)
	subl	%r14d, %esi
	movl	%esi, 624(%r15)
	subl	%r9d, %edi
	movl	%edi, 628(%r15)
	movl	%r12d, 632(%r15)
	movl	$0, 660(%r15)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 584(%r15)
	movl	584(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB2_61
# BB#62:                                # %if.then.231
	imull	40(%rbx), %esi
	imull	604(%r15), %esi
	addl	$7, %esi
	sarl	$3, %esi
	movl	$.L.str.1, %edx
	movq	3384(%rsp), %r14
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, 648(%r15)
	movl	612(%r15), %esi
	addl	$7, %esi
	sarl	$3, %esi
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, 640(%r15)
	testq	%rax, %rax
	movl	$-25, %r14d
	je	.LBB2_63
# BB#64:                                # %if.then.231
	movq	648(%r15), %rax
	movq	%r15, %r12
	testq	%rax, %rax
	je	.LBB2_86
# BB#65:                                # %if.then.231.if.end.257_crit_edge
	leaq	40(%rbx), %rcx
	movl	584(%rbx), %eax
	movl	624(%rbx), %edi
	movl	628(%rbx), %r10d
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	%r12, %r15
	movq	3384(%rsp), %rsi
	jmp	.LBB2_66
.LBB2_61:                               # %if.end.204.if.end.257_crit_edge
	leaq	40(%rbx), %rcx
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	3384(%rsp), %rsi
	movl	80(%rsp), %edi          # 4-byte Reload
.LBB2_66:                               # %if.end.257
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movl	%eax, 600(%r15)
	movl	(%rcx), %eax
	movl	%eax, 608(%r15)
	movq	%rsi, 24(%r15)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 816(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	movsd	%xmm0, 832(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r10d, %xmm0
	movsd	%xmm0, 840(%rsp)
	leaq	132(%rdx), %r12
	testq	%rbp, %rbp
	cmovneq	%rbp, %r12
	leaq	880(%rsp), %rdi
	leaq	856(%rsp), %rdx
	movq	%r12, %rsi
	callq	gs_matrix_multiply
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_87
# BB#67:                                # %lor.lhs.false.282
	leaq	856(%rsp), %rsi
	leaq	816(%rsp), %rdi
	movq	%rdi, %rdx
	callq	gs_bbox_transform
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_87
# BB#68:                                # %if.end.287
	movsd	816(%rsp), %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_70
# BB#69:                                # %cond.true
	callq	ceil
	jmp	.LBB2_71
.LBB2_54:
	movl	$-15, %r14d
	jmp	.LBB2_87
.LBB2_70:                               # %cond.false
	callq	floor
.LBB2_71:                               # %cond.end
	movq	%r12, 80(%rsp)          # 8-byte Spill
	cvttsd2si	%xmm0, %r14d
	movl	%r14d, 808(%rsp)
	movsd	824(%rsp), %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%r15, %r12
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_73
# BB#72:                                # %cond.true.305
	callq	ceil
	jmp	.LBB2_74
.LBB2_73:                               # %cond.false.310
	callq	floor
.LBB2_74:                               # %cond.end.315
	cvttsd2si	%xmm0, %r15d
	movl	%r15d, 812(%rsp)
	movsd	832(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	movl	%r14d, 72(%rsp)         # 4-byte Spill
	subl	%r14d, %ebp
	movsd	840(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ecx
	subl	%r15d, %ecx
	leaq	2136(%rsp), %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	movq	3384(%rsp), %r8
	callq	*3392(%rsp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_86
# BB#75:                                # %if.end.334
	leaq	592(%rbx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	584(%r12), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	2136(%rsp), %rax
	movq	%rax, 568(%r12)
	leaq	928(%rsp), %rbp
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	gs_image_t_init_mask_adjust
	movl	$0, 1516(%rsp)
	movq	928(%rsp), %r14
	movl	$568, %edx              # imm = 0x238
	movq	%rbp, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movq	%r14, 928(%rsp)
	movl	$1, 968(%rsp)
	movl	$2, 1524(%rsp)
	movq	$1, 160(%rsp)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, 152(%rsp)
	movl	$0, 512(%rsp)
	movq	80(%rsp), %rbp          # 8-byte Reload
	movq	16(%rbp), %rax
	movq	%rax, 144(%rsp)
	movups	(%rbp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movl	72(%rsp), %eax          # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	144(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 144(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	148(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 148(%rsp)
	movq	2136(%rsp), %rdi
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	3384(%rsp), %r15
	movq	%r15, 8(%rsp)
	movq	$0, (%rsp)
	leaq	128(%rsp), %rdx
	leaq	2144(%rsp), %r8
	leaq	152(%rsp), %r9
	movl	$0, %esi
	leaq	928(%rsp), %rcx
	callq	*1440(%rdi)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_85
# BB#76:                                # %cleanup.cont
	leaq	592(%r12), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	576(%rbx), %rsi
	leaq	1528(%rsp), %r12
	movl	$1, %edx
	movq	%r12, %rdi
	callq	gs_image_t_init_adjust
	movq	1528(%rsp), %r14
	movl	$584, %edx              # imm = 0x248
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r14, 1528(%rsp)
	movl	$2, 2124(%rsp)
	movq	2136(%rsp), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	leaq	808(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rax, 32(%rsp)
	leaq	2128(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	3376(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r13, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r12, %rcx
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	callq	*3400(%rsp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_84
# BB#77:                                # %if.end.368
	movq	3408(%rsp), %r14
	movq	2128(%rsp), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 576(%rcx)
	movl	584(%rbx), %eax
	cmpl	$3, %eax
	movq	%rcx, %rbp
	je	.LBB2_82
# BB#78:                                # %if.end.368
	cmpl	$2, %eax
	jne	.LBB2_79
# BB#81:                                # %sw.bb.382
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 44(%rbp)
	movl	624(%rbx), %eax
	movl	%eax, 308(%rbp)
	jmp	.LBB2_83
.LBB2_63:
	movq	%r15, %r12
	jmp	.LBB2_86
.LBB2_84:                               # %out3
	movq	96(%rsp), %r12          # 8-byte Reload
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	xorl	%esi, %esi
	callq	gx_image_end
.LBB2_85:                               # %out2
	movq	2136(%rsp), %rdi
	callq	gs_closedevice
	movq	2136(%rsp), %rsi
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB2_86:                               # %out1
	movq	640(%r12), %rsi
	movl	$.L.str.2, %edx
	movq	3384(%rsp), %rbp
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	648(%r12), %rsi
	movl	$.L.str.1, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*24(%rbp)
	jmp	.LBB2_87
.LBB2_82:                               # %sw.bb.390
	movq	592(%rbp), %rsi
	movslq	44(%rsi), %rdx
	leal	1(%rdx), %eax
	movl	%eax, 44(%rbp)
	movl	624(%rbx), %eax
	movl	%eax, 308(%rbp)
	movl	$1, 48(%rbp)
	leaq	312(%rbp), %rdi
	addq	$308, %rsi              # imm = 0x134
	shlq	$2, %rdx
	callq	memcpy
	movq	%rbp, %rdi
	addq	$52, %rdi
	movq	592(%rbp), %rsi
	addq	$48, %rsi
	movslq	44(%rbp), %rax
	leaq	-4(,%rax,4), %rdx
	callq	memcpy
	jmp	.LBB2_83
.LBB2_79:                               # %if.end.368
	cmpl	$1, %eax
	jne	.LBB2_83
# BB#80:                                # %sw.bb.371
	movl	$1, 44(%rbp)
	movl	32(%rbx), %eax
	movl	%eax, 308(%rbp)
	movq	592(%rbp), %rcx
	movl	604(%rbp), %esi
	leal	1(%rsi), %eax
	imull	48(%rcx), %eax
	cltd
	idivl	%esi
	movl	%eax, 48(%rbp)
.LBB2_83:                               # %sw.epilog.421
	movq	2136(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	movq	2128(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	movq	%rbp, (%r14)
	xorl	%r14d, %r14d
	jmp	.LBB2_87
.Lfunc_end2:
	.size	gx_begin_image3_generic, .Lfunc_end2-gx_begin_image3_generic
	.cfi_endproc

	.align	16, 0x90
	.type	make_mid_default,@function
make_mid_default:                       # @make_mid_default
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
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 64
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
	movq	%r8, %rbx
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rdi, %r14
	movl	$st_device_memory, %esi
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB3_4
# BB#1:                                 # %if.end
	movq	%r14, (%rsp)            # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gs_make_mem_mono_device
	movq	%rbx, 1752(%rbp)
	movl	%r12d, 832(%rbp)
	movl	%r15d, 836(%rbp)
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	gx_device_raster
	movl	%eax, 1736(%rbp)
	movq	%rbp, %rdi
	callq	check_device_separable
	movq	%rbp, %rdi
	callq	gx_device_fill_in_procs
	movq	%rbp, %rdi
	callq	*1144(%rbp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB3_2
# BB#3:                                 # %if.end.9
	movl	$1, 84(%rbp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	callq	*1200(%rbp)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rbp, (%rax)
	jmp	.LBB3_4
.LBB3_2:                                # %if.then.7
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	%r14d, %r13d
.LBB3_4:                                # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	make_mid_default, .Lfunc_end3-make_mid_default
	.cfi_endproc

	.align	16, 0x90
	.type	make_mcde_default,@function
make_mcde_default:                      # @make_mcde_default
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
	subq	$104, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 160
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
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	168(%rsp), %r14
	movl	$st_device_mask_clip, %esi
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbx
	movl	$-25, %r13d
	testq	%rbx, %rbx
	je	.LBB4_5
# BB#1:                                 # %if.end
	movq	208(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	1744(%rcx), %rdx
	movq	%rdx, 56(%rsp)
	movl	1736(%rcx), %edx
	movl	%edx, 64(%rsp)
	movl	832(%rcx), %edx
	movl	%edx, 68(%rsp)
	movl	836(%rcx), %ecx
	movl	%ecx, 72(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 96(%rsp)
	movl	(%rax), %r8d
	movl	4(%rax), %r9d
	movq	%r14, (%rsp)
	leaq	56(%rsp), %rdx
	movl	$gs_mask_clip_device, %esi
	movq	%rbx, %rdi
	movq	%r12, %rcx
	callq	gx_mask_clip_initialize
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB4_2
# BB#3:                                 # %if.end.9
	movq	176(%rsp), %rax
	movq	160(%rsp), %rcx
	movups	56(%rsp), %xmm0
	movups	72(%rsp), %xmm1
	movups	88(%rsp), %xmm2
	movups	%xmm2, 1768(%rbx)
	movups	%xmm1, 1752(%rbx)
	movups	%xmm0, 1736(%rbx)
	movq	%rax, 16(%rsp)
	movq	%r14, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	*1440(%rbx)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB4_2
# BB#4:                                 # %if.end.17
	movq	184(%rsp), %rax
	movq	%rbx, (%rax)
	xorl	%r13d, %r13d
	jmp	.LBB4_5
.LBB4_2:                                # %if.then.7
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
.LBB4_5:                                # %cleanup
	movl	%r13d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	make_mcde_default, .Lfunc_end4-make_mcde_default
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image3_plane_data,@function
gx_image3_plane_data:                   # @gx_image3_plane_data
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
	subq	$120, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 176
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
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	628(%rbx), %eax
	movl	$0, 116(%rsp)
	movl	616(%rbx), %r12d
	movl	$0, 112(%rsp)
	subl	660(%rbx), %eax
	subl	656(%rbx), %r12d
	cmpl	%r12d, %eax
	cmovgel	%eax, %r12d
	cmpl	%edx, %r12d
	cmovgl	%edx, %r12d
	movl	$0, (%r14)
	movl	600(%rbx), %eax
	cmpl	$3, %eax
	je	.LBB5_52
# BB#1:                                 # %entry
	cmpl	$2, %eax
	jne	.LBB5_2
# BB#49:                                # %sw.bb.275
	movslq	660(%rbx), %rax
	movslq	620(%rbx), %rcx
	imulq	%rcx, %rax
	movslq	656(%rbx), %rdx
	movslq	632(%rbx), %rsi
	imulq	%rdx, %rsi
	addq	%rcx, %rax
	subq	%rsi, %rax
	testq	%rax, %rax
	jle	.LBB5_51
# BB#50:                                # %if.then.279
	movups	(%r15), %xmm0
	movaps	%xmm0, 80(%rsp)
	movq	$0, 96(%rsp)
	leaq	96(%rsp), %r15
	jmp	.LBB5_53
.LBB5_52:                               # %sw.bb.285
	cmpl	$1, %r12d
	movl	$1, %eax
	cmovgl	%eax, %r12d
	movups	(%r15), %xmm0
	movaps	%xmm0, 80(%rsp)
	addq	$16, %r15
	jmp	.LBB5_53
.LBB5_2:                                # %entry
	cmpl	$1, %eax
	jne	.LBB5_3
# BB#4:                                 # %sw.bb
	xorl	%ecx, %ecx
	testl	%r12d, %r12d
	jle	.LBB5_68
# BB#5:                                 # %if.end
	cmpl	$2, %r12d
	jl	.LBB5_10
# BB#6:                                 # %if.then.15
	movups	(%r15), %xmm0
	movaps	%xmm0, 80(%rsp)
	leaq	80(%rsp), %r15
	movl	%r12d, %ebp
	.align	16, 0x90
.LBB5_7:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	gx_image3_plane_data
	movl	%eax, %ecx
	movl	(%r14), %edx
	movl	%ebp, %eax
	subl	%edx, %eax
	testl	%ecx, %ecx
	jne	.LBB5_9
# BB#8:                                 # %if.end.18
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	92(%rsp), %ecx
	addq	%rcx, 80(%rsp)
	xorl	%ecx, %ecx
	cmpl	%edx, %ebp
	movl	%eax, %ebp
	jne	.LBB5_7
.LBB5_9:                                # %do.end
	subl	%eax, %r12d
	movl	%r12d, (%r14)
	jmp	.LBB5_68
.LBB5_3:
	movl	$-15, %ecx
	jmp	.LBB5_68
.LBB5_51:                               # %if.else.282
	movq	$0, 80(%rsp)
.LBB5_53:                               # %sw.epilog.293
	movq	80(%rsp), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_57
# BB#54:                                # %if.then.296
	movl	664(%rbx), %ebp
	movl	%ebp, %edx
	subl	%r12d, %edx
	jge	.LBB5_55
# BB#56:                                # %if.end.312
	movl	%r12d, %edx
	subl	%ebp, %edx
	movl	92(%rsp), %eax
	imull	%ebp, %eax
	addq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movl	$0, 664(%rbx)
	movq	584(%rbx), %rdi
	leaq	80(%rsp), %rsi
	leaq	112(%rsp), %rcx
	callq	gx_image_plane_data_rows
	addl	112(%rsp), %ebp
	movl	%ebp, 112(%rsp)
	movl	%ebp, (%r14)
	addl	%ebp, 656(%rbx)
	testl	%eax, %eax
	movl	%eax, %ecx
	jns	.LBB5_57
	jmp	.LBB5_68
.LBB5_55:                               # %if.end.312.thread
	movl	%r12d, 112(%rsp)
	movl	%edx, 664(%rbx)
	movl	%r12d, (%r14)
	addl	%r12d, 656(%rbx)
.LBB5_57:                               # %if.end.322
	cmpq	$0, (%r15)
	je	.LBB5_61
# BB#58:                                # %if.then.326
	movq	584(%rbx), %rdi
	callq	gx_image_flush
	movq	592(%rbx), %rdi
	leaq	116(%rsp), %rcx
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	gx_image_plane_data_rows
	movl	116(%rsp), %ecx
	movl	%ecx, (%r14)
	addl	%ecx, 660(%rbx)
	testl	%eax, %eax
	jns	.LBB5_61
# BB#59:                                # %if.then.334
	movl	112(%rsp), %edx
	subl	%ecx, %edx
	jle	.LBB5_61
# BB#60:                                # %if.then.337
	movl	%edx, 664(%rbx)
	subl	%edx, 656(%rbx)
	movl	%ecx, 112(%rsp)
.LBB5_61:                               # %do.end.348
	movslq	656(%rbx), %rdx
	cmpl	616(%rbx), %edx
	jl	.LBB5_63
# BB#62:                                # %land.lhs.true
	movl	660(%rbx), %esi
	movl	$1, %ecx
	cmpl	628(%rbx), %esi
	jge	.LBB5_68
.LBB5_63:                               # %if.end.358
	cmpl	$2, 600(%rbx)
	jne	.LBB5_67
# BB#64:                                # %if.then.362
	movslq	660(%rbx), %rcx
	movslq	620(%rbx), %rsi
	imulq	%rsi, %rcx
	movslq	632(%rbx), %rdi
	imulq	%rdi, %rdx
	addq	%rsi, %rcx
	subq	%rdx, %rcx
	testq	%rcx, %rcx
	jle	.LBB5_66
# BB#65:                                # %if.then.366
	movl	612(%rbx), %ecx
	movl	%ecx, 308(%rbx)
	movl	$1, 48(%rbx)
	jmp	.LBB5_67
.LBB5_66:                               # %if.else.369
	movl	624(%rbx), %ecx
	movl	%ecx, 308(%rbx)
	movq	592(%rbx), %rcx
	movl	48(%rcx), %ecx
	movl	%ecx, 48(%rbx)
.LBB5_67:                               # %if.end.379
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
.LBB5_68:                               # %cleanup.386
	movl	%ecx, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_10:                               # %if.end.21
	movl	604(%rbx), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	608(%rbx), %r11d
	movl	624(%rbx), %edx
	movl	%edx, 36(%rsp)          # 4-byte Spill
	movl	8(%r15), %eax
	movq	(%r15), %r10
	movq	640(%rbx), %r13
	movq	648(%rbx), %rbp
	movq	%r13, 80(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 92(%rsp)
	movq	%rbp, 96(%rsp)
	movl	$0, 104(%rsp)
	leaq	96(%rsp), %r15
	testl	%edx, %edx
	jle	.LBB5_11
# BB#12:                                # %for.body.lr.ph
	leal	1(%rcx), %ecx
	imull	%r11d, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	andl	$7, %eax
	shrl	$3, %ecx
	addq	%rcx, %r10
	movl	%r11d, %edx
	sarl	$2, %edx
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movl	$8, %ecx
	subl	%r11d, %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%r11d, %ecx
	orl	$1, %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	xorl	%esi, %esi
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
.LBB5_13:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
	movl	%edx, %r9d
	cmpl	$3, %edx
	ja	.LBB5_14
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB5_13 Depth=1
	jmpq	*.LJTI5_0(,%r9,8)
.LBB5_16:                               # %sw.bb.60
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movzbl	(%r10), %edx
	movl	32(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	shrl	%cl, %edx
	andl	28(%rsp), %edx          # 4-byte Folded Reload
	jmp	.LBB5_23
.LBB5_17:                               # %sw.bb.66
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movzbl	(%r10), %edx
	movl	$4, %ecx
	subl	%eax, %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	jmp	.LBB5_23
.LBB5_18:                               # %sw.bb.71
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movzbl	(%r10), %edx
	jmp	.LBB5_23
.LBB5_19:                               # %sw.bb.73
                                        #   in Loop: Header=BB5_13 Depth=1
	testl	%eax, %eax
	movzbl	(%r10), %ecx
	movzbl	1(%r10), %edx
	je	.LBB5_21
# BB#20:                                # %cond.true.75
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	andl	$15, %ecx
	shll	$8, %ecx
	jmp	.LBB5_22
.LBB5_21:                               # %cond.false.81
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	shll	$4, %ecx
	shrl	$4, %edx
.LBB5_22:                               # %do.body.92
                                        #   in Loop: Header=BB5_13 Depth=1
	orl	%ecx, %edx
.LBB5_23:                               # %do.body.92
                                        #   in Loop: Header=BB5_13 Depth=1
	addl	%r11d, %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rsi
	movq	48(%rsp), %r8           # 8-byte Reload
	leal	1(%r8), %ebp
	cmpl	$8, %ebp
	jne	.LBB5_25
# BB#24:                                # %if.then.104
                                        #   in Loop: Header=BB5_13 Depth=1
	testl	%edx, %edx
	setne	%cl
	orb	%dil, %cl
	movb	%cl, (%r13)
	incq	%r13
	movq	%r13, 16(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB5_26
.LBB5_25:                               # %if.else
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	%r13, 16(%rsp)          # 8-byte Spill
	testl	%edx, %edx
	setne	%cl
	movzbl	%cl, %edx
	movl	$7, %ecx
	subl	%r8d, %ecx
	shll	%cl, %edx
	movzbl	%dil, %edi
	orl	%edx, %edi
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	%ebp, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
.LBB5_26:                               # %do.end.123
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	40(%rsp), %rbp          # 8-byte Reload
	addq	%rsi, %r10
	andl	$7, %eax
	xorl	%r13d, %r13d
	movq	64(%rsp), %rsi          # 8-byte Reload
	testl	%esi, %esi
	movl	72(%rsp), %edx          # 4-byte Reload
	jle	.LBB5_44
.LBB5_27:                               # %do.body.128
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, %edx
	ja	.LBB5_28
# BB#29:                                # %do.body.128
                                        #   in Loop: Header=BB5_27 Depth=2
	jmpq	*.LJTI5_1(,%r9,8)
.LBB5_32:                               # %sw.bb.176
                                        #   in Loop: Header=BB5_27 Depth=2
	movzbl	(%r10), %edx
	movl	32(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	shrl	%cl, %edx
	andl	28(%rsp), %edx          # 4-byte Folded Reload
	addl	%r11d, %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r8
	addq	%r10, %r8
	andl	$7, %eax
	movl	76(%rsp), %edi          # 4-byte Reload
	addl	%r11d, %edi
	cmpl	$8, %edi
	jne	.LBB5_34
# BB#33:                                # %if.then.180
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	60(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%ecx, %edx
	movb	%dl, (%rbp)
	incq	%rbp
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB5_43
.LBB5_35:                               # %sw.bb.196
                                        #   in Loop: Header=BB5_27 Depth=2
	movzbl	(%r10), %edx
	movl	$4, %ecx
	subl	%eax, %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	addl	%r11d, %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r8
	addq	%r10, %r8
	andl	$7, %eax
	movl	76(%rsp), %esi          # 4-byte Reload
	movl	%esi, %ecx
	xorl	$4, %ecx
	cmpl	$4, %esi
	jne	.LBB5_36
# BB#37:                                # %if.else.201
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	60(%rsp), %esi          # 4-byte Reload
	movzbl	%sil, %esi
	orl	%esi, %edx
	movb	%dl, (%rbp)
	incq	%rbp
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB5_43
.LBB5_42:                               # %sw.bb.229
                                        #   in Loop: Header=BB5_27 Depth=2
	movb	(%r10), %cl
	addl	%r11d, %eax
	movl	%eax, %edx
	sarl	$3, %edx
	movslq	%edx, %r8
	addq	%r10, %r8
	andl	$7, %eax
	movb	%cl, (%rbp)
	incq	%rbp
	jmp	.LBB5_43
.LBB5_30:                               # %sw.bb.144
                                        #   in Loop: Header=BB5_27 Depth=2
	movq	%rbp, %r8
	testl	%eax, %eax
	movzbl	(%r10), %edx
	movzbl	1(%r10), %ebp
	je	.LBB5_38
# BB#31:                                # %cond.true.146
                                        #   in Loop: Header=BB5_27 Depth=2
	andl	$15, %edx
	shll	$8, %edx
	jmp	.LBB5_39
.LBB5_34:                               # %if.else.187
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	$8, %ecx
	subl	%edi, %ecx
	movl	%edi, 76(%rsp)          # 4-byte Spill
	shll	%cl, %edx
	movl	60(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%edx, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	jmp	.LBB5_43
.LBB5_36:                               # %if.then.198
                                        #   in Loop: Header=BB5_27 Depth=2
	shll	$4, %edx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB5_43
.LBB5_38:                               # %cond.false.153
                                        #   in Loop: Header=BB5_27 Depth=2
	shll	$4, %edx
	shrl	$4, %ebp
.LBB5_39:                               # %sw.bb.209
                                        #   in Loop: Header=BB5_27 Depth=2
	orl	%edx, %ebp
	addl	%r11d, %eax
	movl	%eax, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	%rdx, %r10
	andl	$7, %eax
	movl	76(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	xorl	$4, %edx
	cmpl	$4, %ecx
	jne	.LBB5_40
# BB#41:                                # %if.else.218
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	60(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %esi
	movl	%ebp, %ecx
	shrl	$8, %ecx
	orl	%esi, %ecx
	movb	%cl, (%r8)
	movb	%bpl, 1(%r8)
	movq	%r8, %rbp
	addq	$2, %rbp
	movq	%r10, %r8
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB5_43
.LBB5_40:                               # %if.then.212
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	%ebp, %esi
	shrl	$4, %esi
	movq	%r8, %rcx
	movb	%sil, (%rcx)
	incq	%rcx
	shll	$4, %ebp
	movq	%r10, %r8
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movl	%ebp, 60(%rsp)          # 4-byte Spill
	movq	%rcx, %rbp
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB5_43:                               # %for.inc
                                        #   in Loop: Header=BB5_27 Depth=2
	incl	%r13d
	cmpl	%esi, %r13d
	movq	%r8, %r10
	movl	72(%rsp), %edx          # 4-byte Reload
	jl	.LBB5_27
.LBB5_44:                               # %for.inc.237
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	12(%rsp), %esi          # 4-byte Reload
	incl	%esi
	movl	36(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %esi
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	(%rsp), %rdi            # 8-byte Reload
	jl	.LBB5_13
# BB#45:                                # %for.end.239
	movq	48(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB5_47
# BB#46:                                # %if.then.242
	movzbl	%dil, %eax
	movzbl	(%r13), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%r13)
.LBB5_47:                               # %if.end.249
	movl	76(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB5_53
# BB#48:                                # %if.then.252
	movl	60(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %eax
	movzbl	(%rbp), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%rbp)
	jmp	.LBB5_53
.LBB5_28:
	movl	$-15, %ecx
	jmp	.LBB5_68
.LBB5_11:
	movl	$1, %r12d
	jmp	.LBB5_53
.LBB5_14:
	movl	$-15, %ecx
	jmp	.LBB5_68
.Lfunc_end5:
	.size	gx_image3_plane_data, .Lfunc_end5-gx_image3_plane_data
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_16
	.quad	.LBB5_17
	.quad	.LBB5_18
	.quad	.LBB5_19
.LJTI5_1:
	.quad	.LBB5_32
	.quad	.LBB5_35
	.quad	.LBB5_42
	.quad	.LBB5_30

	.text
	.align	16, 0x90
	.type	gx_image3_end_image,@function
gx_image3_end_image:                    # @gx_image3_end_image
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
	subq	$24, %rsp
.Ltmp64:
	.cfi_def_cfa_offset 80
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	%r14, 16(%rsp)
	movq	24(%r14), %rbx
	movq	568(%r14), %r15
	movq	584(%r14), %rdi
	callq	gx_image_end
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	576(%r14), %r12
	movq	592(%r14), %rdi
	movl	%ebp, %esi
	callq	gx_image_end
	movl	%eax, %ebp
	movq	%r12, %rdi
	callq	gs_closedevice
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	%r15, %rdi
	callq	gs_closedevice
	movl	%eax, %r13d
	movq	640(%r14), %rsi
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	648(%r14), %rsi
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	movl	$.L.str.11, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	leaq	16(%rsp), %rdi
	callq	gx_image_free_enum
	testl	%ebp, %ebp
	js	.LBB6_3
# BB#1:                                 # %cond.false
	movl	12(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, %ebp
	js	.LBB6_3
# BB#2:                                 # %cond.false.14
	movl	8(%rsp), %eax           # 4-byte Reload
	testl	%eax, %eax
	cmovsl	%eax, %r13d
	movl	%r13d, %ebp
.LBB6_3:                                # %cond.end.20
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_image3_end_image, .Lfunc_end6-gx_image3_end_image
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image3_flush,@function
gx_image3_flush:                        # @gx_image3_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	584(%rbx), %rdi
	callq	gx_image_flush
	testl	%eax, %eax
	js	.LBB7_1
# BB#2:                                 # %if.then
	movq	592(%rbx), %rdi
	popq	%rbx
	jmp	gx_image_flush          # TAILCALL
.LBB7_1:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end7:
	.size	gx_image3_flush, .Lfunc_end7-gx_image3_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image3_planes_wanted,@function
gx_image3_planes_wanted:                # @gx_image3_planes_wanted
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movl	600(%rdi), %ecx
	cmpl	$3, %ecx
	je	.LBB8_5
# BB#1:                                 # %entry
	cmpl	$2, %ecx
	jne	.LBB8_2
# BB#4:                                 # %sw.bb.1
	movb	$-1, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB8_8
.LBB8_5:                                # %sw.bb.3
	movslq	660(%rdi), %rcx
	movslq	620(%rdi), %rdx
	imulq	%rdx, %rcx
	movslq	656(%rdi), %rsi
	movslq	632(%rdi), %rbx
	imulq	%rbx, %rsi
	subq	%rsi, %rcx
	leaq	(%rcx,%rdx), %rsi
	cmpq	%rbx, %rsi
	setg	%bl
	addq	%rdx, %rcx
	movzbl	%bl, %ecx
	movl	$-1, %edx
	cmovgl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	$255, %ecx
	movb	%cl, (%rax)
	incq	%rax
	xorl	%ebx, %ebx
	testl	%edx, %edx
	movl	$255, %esi
	cmovgl	%ebx, %esi
	movslq	44(%rdi), %rdx
	decq	%rdx
	jmp	.LBB8_7
.LBB8_2:                                # %entry
	cmpl	$1, %ecx
	jne	.LBB8_6
# BB#3:                                 # %sw.bb
	movb	$-1, (%rax)
	movl	$1, %ebx
	jmp	.LBB8_8
.LBB8_6:                                # %sw.default
	movslq	44(%rdi), %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
.LBB8_7:                                # %cleanup
	movq	%rax, %rdi
	callq	memset
.LBB8_8:                                # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	gx_image3_planes_wanted, .Lfunc_end8-gx_image3_planes_wanted
	.cfi_endproc

	.type	st_gs_image3,@object    # @st_gs_image3
	.section	.rodata,"a",@progbits
	.align	8
st_gs_image3:
	.long	1160                    # 0x488
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	image3_reloc_ptrs
	.size	st_gs_image3, 64

	.type	gs_image_type_3,@object # @gs_image_type_3
	.globl	gs_image_type_3
	.align	8
gs_image_type_3:
	.quad	st_gs_image3
	.quad	gx_begin_image3
	.quad	gx_data_image_source_size
	.quad	gx_image_no_sput
	.quad	gx_image_no_sget
	.quad	gx_image_default_release
	.long	3                       # 0x3
	.zero	4
	.size	gs_image_type_3, 56

	.type	st_image3_enum,@object  # @st_image3_enum
	.align	8
st_image3_enum:
	.long	672                     # 0x2a0
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	image3_enum_reloc_ptrs
	.size	st_image3_enum, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_begin_image3"
	.size	.L.str, 16

	.type	image3_enum_procs,@object # @image3_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
image3_enum_procs:
	.quad	gx_image3_plane_data
	.quad	gx_image3_end_image
	.quad	gx_image3_flush
	.quad	gx_image3_planes_wanted
	.size	image3_enum_procs, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_begin_image3(pixel_data)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_begin_image3(mask_data)"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_begin_image3(mdev)"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_image3_t"
	.size	.L.str.4, 12

	.type	image3_reloc_ptrs,@object # @image3_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
image3_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_pixel_image
	.quad	0
	.size	image3_reloc_ptrs, 24

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"make_mid_default"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"make_mcde_default"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gx_image3_enum_t"
	.size	.L.str.7, 17

	.type	image3_enum_reloc_ptrs,@object # @image3_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
image3_enum_reloc_ptrs:
	.short	6                       # 0x6
	.short	0                       # 0x0
	.zero	4
	.quad	st_gx_image_enum_common
	.quad	image3_enum_enum_ptrs
	.size	image3_enum_reloc_ptrs, 24

	.type	image3_enum_enum_ptrs,@object # @image3_enum_enum_ptrs
	.align	16
image3_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	568                     # 0x238
	.short	0                       # 0x0
	.short	576                     # 0x240
	.short	0                       # 0x0
	.short	592                     # 0x250
	.short	0                       # 0x0
	.short	584                     # 0x248
	.short	0                       # 0x0
	.short	648                     # 0x288
	.short	0                       # 0x0
	.short	640                     # 0x280
	.size	image3_enum_enum_ptrs, 24

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gx_image3_end_image(mask_data)"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_image3_end_image(pixel_data)"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_image3_end_image(pcdev)"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_image3_end_image(mdev)"
	.size	.L.str.11, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
