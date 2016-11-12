	.text
	.file	"sdeparam.bc"
	.globl	s_DCTE_get_params
	.align	16, 0x90
	.type	s_DCTE_get_params,@function
s_DCTE_get_params:                      # @s_DCTE_get_params
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
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%r14), %r15
	movq	152(%r14), %r12
	xorl	%edx, %edx
	testl	%r13d, %r13d
	jne	.LBB0_4
# BB#1:                                 # %if.then
	movq	%rbx, (%rsp)            # 8-byte Spill
	movl	$st_jpeg_compress_data, %esi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*80(%r15)
	movq	%r15, %rbx
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB0_35
# BB#2:                                 # %if.end
	movl	%r13d, 8(%rsp)          # 4-byte Spill
	leaq	64(%rsp), %r13
	movq	%r13, %rdi
	callq	*s_DCTE_template+40(%rip)
	movq	%r15, 216(%rsp)
	movq	%rbx, 208(%rsp)
	movq	%rbx, 432(%r15)
	movq	%r13, %rdi
	callq	gs_jpeg_create_compress
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	%rbx, %r15
	js	.LBB0_34
# BB#3:                                 # %cleanup.thread72
	movq	216(%rsp), %rax
	movl	$0, 456(%rax)
	movl	$0, 460(%rax)
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%r13, %rdx
	movl	8(%rsp), %r13d          # 4-byte Reload
.LBB0_4:                                # %if.end.12
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	512(%r12), %eax
	movl	%eax, 16(%rsp)
	movl	516(%r12), %eax
	movl	%eax, 20(%rsp)
	movl	520(%r12), %eax
	movl	%eax, 24(%rsp)
	movq	112(%r14), %rax
	movq	%rax, 32(%rsp)
	movl	120(%r14), %eax
	movl	%eax, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	136(%r14), %eax
	movl	%eax, 48(%rsp)
	movl	780(%r12), %eax
	movl	%eax, 52(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	s_DCT_get_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_33
# BB#5:                                 # %lor.lhs.false
	leaq	16(%rsp), %rsi
	movl	$dcte_scalars_default, %edx
	movl	$s_DCTE_param_items, %ecx
	movq	%rbx, %rdi
	callq	gs_param_write_items
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_33
# BB#6:                                 # %lor.lhs.false.28
	movq	%rbx, (%rsp)            # 8-byte Spill
	movslq	24(%rsp), %rbp
	testq	%rbp, %rbp
	movl	%r13d, %eax
	jle	.LBB0_12
# BB#7:                                 # %for.body.i.preheader
	movq	568(%r12), %r8
	xorl	%edi, %edi
	testb	$1, %bpl
	movl	%r13d, %eax
	je	.LBB0_9
# BB#8:                                 # %for.body.i.prol
	movl	8(%r8), %eax
	movl	%eax, 256(%rsp)
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%r13d, %eax
	movl	$1, %edi
.LBB0_9:                                # %for.body.i.preheader.split
	cmpl	$1, %ebp
	je	.LBB0_12
# BB#10:                                # %for.body.i.preheader.split.split
	movl	%ebp, %ecx
	subl	%edi, %ecx
	leaq	4(,%rdi,4), %rsi
	leaq	256(%rsp), %rdx
	orq	%rsi, %rdx
	leaq	3(%rdi,%rdi,2), %rsi
	shlq	$5, %rsi
	leaq	8(%r8,%rsi), %rsi
	.align	16, 0x90
.LBB0_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rsi), %edi
	movl	%edi, -4(%rdx)
	cmpl	$1, %edi
	setne	%bl
	movzbl	%bl, %edi
	orl	%eax, %edi
	movl	(%rsi), %eax
	movl	%eax, (%rdx)
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%edi, %eax
	addq	$8, %rdx
	addq	$192, %rsi
	addl	$-2, %ecx
	jne	.LBB0_11
.LBB0_12:                               # %for.end.i
	testl	%eax, %eax
	je	.LBB0_13
# BB#14:                                # %if.then.i
	movl	$4, %edx
	movl	$.L.str.10, %ecx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	*88(%r15)
	testq	%rax, %rax
	je	.LBB0_15
# BB#16:                                # %dcte_get_samples.exit
	movq	%rax, 280(%rsp)
	movl	%ebp, 288(%rsp)
	movl	$1, 292(%rsp)
	shlq	$2, %rbp
	leaq	256(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	280(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, %rdi
	callq	param_write_int_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_33
# BB#17:                                # %dcte_get_samples.exit.lor.lhs.false.32_crit_edge
	movl	24(%rsp), %ebp
	jmp	.LBB0_18
.LBB0_13:                               # %dcte_get_samples.exit.thread
	movq	(%rsp), %rbx            # 8-byte Reload
.LBB0_18:                               # %lor.lhs.false.32
	testl	%ebp, %ebp
	jle	.LBB0_19
# BB#20:                                # %for.body.i.53.preheader
	movq	568(%r12), %rdx
	xorl	%edi, %edi
	movq	%rbx, %r12
	testb	$1, %bpl
	jne	.LBB0_22
# BB#21:
                                        # implicit-def: EAX
	jmp	.LBB0_23
.LBB0_15:                               # %dcte_get_samples.exit.thread74
	movl	$-25, %ebp
	jmp	.LBB0_33
.LBB0_19:
	movq	%rbx, %r12
	movl	%r13d, %eax
	jmp	.LBB0_26
.LBB0_22:                               # %for.body.i.53.prol
	movl	12(%rdx), %eax
	movl	%eax, 256(%rsp)
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%r13d, %eax
	movl	$1, %edi
	movl	%eax, %r13d
.LBB0_23:                               # %for.body.i.53.preheader.split
	cmpl	$1, %ebp
	je	.LBB0_26
# BB#24:                                # %for.body.i.53.preheader.split.split
	movl	%ebp, %ecx
	subl	%edi, %ecx
	leaq	4(,%rdi,4), %rax
	leaq	256(%rsp), %rsi
	orq	%rax, %rsi
	leaq	3(%rdi,%rdi,2), %rax
	shlq	$5, %rax
	leaq	12(%rdx,%rax), %rdx
	movl	%r13d, %eax
	.align	16, 0x90
.LBB0_25:                               # %for.body.i.53
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rdx), %edi
	movl	%edi, -4(%rsi)
	cmpl	$1, %edi
	setne	%bl
	movzbl	%bl, %edi
	orl	%eax, %edi
	movl	(%rdx), %eax
	movl	%eax, (%rsi)
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%edi, %eax
	addq	$8, %rsi
	addq	$192, %rdx
	addl	$-2, %ecx
	jne	.LBB0_25
.LBB0_26:                               # %for.end.i.56
	testl	%eax, %eax
	je	.LBB0_27
# BB#28:                                # %if.then.i.60
	movl	$4, %edx
	movl	$.L.str.10, %ecx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	*88(%r15)
	testq	%rax, %rax
	je	.LBB0_29
# BB#30:                                # %dcte_get_samples.exit71
	movq	%rax, 280(%rsp)
	movl	%ebp, 288(%rsp)
	movl	$1, 292(%rsp)
	movslq	%ebp, %rdx
	shlq	$2, %rdx
	leaq	256(%rsp), %rsi
	movq	%rax, %rdi
	callq	memcpy
	leaq	280(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%r12, %rbx
	movq	%rbx, %rdi
	callq	param_write_int_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB0_31
	jmp	.LBB0_33
.LBB0_27:                               # %dcte_get_samples.exit71.thread
	movq	%r12, %rbx
.LBB0_31:                               # %lor.lhs.false.36
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	s_DCT_get_quantization_tables
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_33
# BB#32:                                # %lor.lhs.false.39
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	s_DCT_get_huffman_tables
	movl	%eax, %ebp
	jmp	.LBB0_33
.LBB0_29:                               # %dcte_get_samples.exit71.thread77
	movl	$-25, %ebp
.LBB0_33:                               # %fail
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	je	.LBB0_35
.LBB0_34:                               # %if.then.45
	leaq	64(%rsp), %rdi
	callq	gs_jpeg_destroy
	movq	216(%rsp), %rsi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB0_35:                               # %cleanup.51
	movl	%ebp, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_DCTE_get_params, .Lfunc_end0-s_DCTE_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	1120403456              # float 100
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_2:
	.quad	4636737291354636288     # double 100
.LCPI1_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	s_DCTE_put_params
	.align	16, 0x90
	.type	s_DCTE_put_params,@function
s_DCTE_put_params:                      # @s_DCTE_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 112
.Ltmp19:
	.cfi_offset %rbx, -48
.Ltmp20:
	.cfi_offset %r12, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	152(%r14), %rbp
	movups	dcte_scalars_default+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	dcte_scalars_default+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	dcte_scalars_default(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movl	$s_DCTE_param_items, %edx
	callq	gs_param_read_items
	testl	%eax, %eax
	js	.LBB1_65
# BB#1:                                 # %if.end
	movq	(%rsp), %rcx
	leal	-1(%rcx), %edx
	movl	$-15, %eax
	cmpl	$65534, %edx            # imm = 0xFFFE
	ja	.LBB1_65
# BB#2:                                 # %lor.lhs.false.4
	shrq	$32, %rcx
	decl	%ecx
	cmpl	$65534, %ecx            # imm = 0xFFFE
	ja	.LBB1_65
# BB#3:                                 # %lor.lhs.false.9
	movl	8(%rsp), %ecx
	cmpl	$2, %ecx
	je	.LBB1_65
# BB#4:                                 # %lor.lhs.false.9
	decl	%ecx
	cmpl	$3, %ecx
	ja	.LBB1_65
# BB#5:                                 # %lor.lhs.false.17
	cmpl	$65535, 36(%rsp)        # imm = 0xFFFF
	ja	.LBB1_65
# BB#6:                                 # %lor.lhs.false.22
	cmpl	$1, 40(%rsp)
	ja	.LBB1_65
# BB#7:                                 # %if.end.28
	movq	$0, 456(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	s_DCT_put_params
	testl	%eax, %eax
	js	.LBB1_65
# BB#8:                                 # %if.end.32
	movq	(%rsp), %rax
	movl	%eax, 512(%rbp)
	shrq	$32, %rax
	movl	%eax, 516(%rbp)
	movl	8(%rsp), %eax
	movl	%eax, 520(%rbp)
	cmpl	$4, %eax
	je	.LBB1_13
# BB#9:                                 # %if.end.32
	cmpl	$3, %eax
	jne	.LBB1_10
# BB#12:                                # %sw.bb.40
	movl	$2, 524(%rbp)
	jmp	.LBB1_15
.LBB1_13:                               # %sw.bb.43
	movl	$4, 524(%rbp)
	jmp	.LBB1_15
.LBB1_10:                               # %if.end.32
	cmpl	$1, %eax
	jne	.LBB1_14
# BB#11:                                # %sw.bb
	movl	$1, 524(%rbp)
	jmp	.LBB1_15
.LBB1_14:                               # %sw.default
	movl	$0, 524(%rbp)
.LBB1_15:                               # %sw.epilog
	movq	%r14, %rdi
	callq	gs_jpeg_set_defaults
	testl	%eax, %eax
	js	.LBB1_65
# BB#16:                                # %if.end.51
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	s_DCT_put_huffman_tables
	testl	%eax, %eax
	js	.LBB1_65
# BB#17:                                # %if.end.55
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	s_DCT_put_quantization_tables
	testl	%eax, %eax
	je	.LBB1_23
# BB#18:                                # %if.end.55
	cmpl	$1, %eax
	jne	.LBB1_65
# BB#19:                                # %sw.bb.58
	movss	128(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_20
	jnp	.LBB1_23
.LBB1_20:                               # %if.then.61
	movl	$10000, %esi            # imm = 0x2710
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_22
# BB#21:                                # %cond.true
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI1_2(%rip), %xmm0
	addsd	.LCPI1_3(%rip), %xmm0
	cvttsd2si	%xmm0, %esi
.LBB1_22:                               # %cond.end
	movl	$1, %edx
	movq	%r14, %rdi
	callq	gs_jpeg_set_linear_quality
	testl	%eax, %eax
	js	.LBB1_65
.LBB1_23:                               # %sw.epilog.75
	movl	8(%rsp), %eax
	cmpl	$4, %eax
	jne	.LBB1_24
# BB#31:                                # %sw.bb.94
	movl	132(%r14), %eax
	testl	%eax, %eax
	js	.LBB1_32
# BB#34:                                # %if.end.100
	je	.LBB1_33
# BB#35:                                # %if.then.104
	movl	$5, %esi
	movq	%r14, %rdi
	callq	gs_jpeg_set_colorspace
	testl	%eax, %eax
	js	.LBB1_65
# BB#36:                                # %if.end.109
	movl	$2, 132(%r14)
	jmp	.LBB1_38
.LBB1_24:                               # %sw.epilog.75
	cmpl	$3, %eax
	jne	.LBB1_37
# BB#25:                                # %sw.bb.77
	movl	132(%r14), %eax
	testl	%eax, %eax
	js	.LBB1_26
# BB#28:                                # %if.end.82
	jne	.LBB1_27
# BB#29:                                # %if.then.86
	movl	$2, %esi
	jmp	.LBB1_30
.LBB1_37:                               # %sw.default.118
	movl	$0, 132(%r14)
	jmp	.LBB1_38
.LBB1_32:                               # %if.end.100.thread
	movl	$0, 132(%r14)
.LBB1_33:                               # %if.else.111
	movl	$4, %esi
.LBB1_30:                               # %if.then.86
	movq	%r14, %rdi
	callq	gs_jpeg_set_colorspace
	testl	%eax, %eax
	jns	.LBB1_38
	jmp	.LBB1_65
.LBB1_26:                               # %if.end.82.thread
	movl	$1, 132(%r14)
.LBB1_27:                               # %if.else
	movl	$1, 132(%r14)
.LBB1_38:                               # %sw.epilog.120
	movq	16(%rsp), %rax
	movq	%rax, 112(%r14)
	movl	24(%rsp), %eax
	movl	%eax, 120(%r14)
	movl	32(%rsp), %eax
	movl	%eax, 136(%r14)
	movl	8(%rsp), %r15d
	movq	568(%rbp), %r12
	leaq	60(%rsp), %r8
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%r15d, %ecx
	callq	s_DCT_byte_params
	testl	%eax, %eax
	je	.LBB1_41
# BB#39:                                # %sw.epilog.120
	cmpl	$1, %eax
	jne	.LBB1_46
# BB#40:                                # %sw.bb.i
	movl	$16843009, 60(%rsp)     # imm = 0x1010101
.LBB1_41:                               # %for.cond.preheader.i
	testl	%r15d, %r15d
	jle	.LBB1_47
# BB#42:                                # %for.body.lr.ph.i
	movslq	%r15d, %rsi
	addq	$8, %r12
	xorl	%ecx, %ecx
.LBB1_43:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	60(%rsp,%rcx), %edx
	movb	%dl, %al
	decb	%al
	movzbl	%al, %eax
	cmpl	$4, %eax
	jae	.LBB1_44
# BB#45:                                # %if.end.i
                                        #   in Loop: Header=BB1_43 Depth=1
	movl	%edx, (%r12)
	incq	%rcx
	addq	$96, %r12
	cmpq	%rsi, %rcx
	jl	.LBB1_43
	jmp	.LBB1_47
.LBB1_46:                               # %dcte_put_samples.exit
	testl	%eax, %eax
	js	.LBB1_65
.LBB1_47:                               # %lor.lhs.false.132
	movl	8(%rsp), %r15d
	movq	568(%rbp), %r12
	leaq	60(%rsp), %r8
	movl	$.L.str.2, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%r15d, %ecx
	callq	s_DCT_byte_params
	testl	%eax, %eax
	je	.LBB1_50
# BB#48:                                # %lor.lhs.false.132
	cmpl	$1, %eax
	jne	.LBB1_55
# BB#49:                                # %sw.bb.i.77
	movl	$16843009, 60(%rsp)     # imm = 0x1010101
.LBB1_50:                               # %for.cond.preheader.i.79
	testl	%r15d, %r15d
	jle	.LBB1_56
# BB#51:                                # %for.body.lr.ph.i.80
	movslq	%r15d, %rax
	addq	$12, %r12
	xorl	%ecx, %ecx
.LBB1_52:                               # %for.body.i.84
                                        # =>This Inner Loop Header: Depth=1
	movzbl	60(%rsp,%rcx), %edx
	movb	%dl, %bl
	decb	%bl
	movzbl	%bl, %esi
	cmpl	$4, %esi
	jae	.LBB1_53
# BB#54:                                # %if.end.i.85
                                        #   in Loop: Header=BB1_52 Depth=1
	movl	%edx, (%r12)
	incq	%rcx
	addq	$96, %r12
	cmpq	%rax, %rcx
	jl	.LBB1_52
	jmp	.LBB1_56
.LBB1_44:                               # %dcte_put_samples.exit.thread93
	movl	$-15, %eax
	jmp	.LBB1_65
.LBB1_55:                               # %dcte_put_samples.exit89
	testl	%eax, %eax
	js	.LBB1_65
.LBB1_56:                               # %if.end.138
	movl	$0, 788(%rbp)
	movl	$0, 800(%rbp)
	movl	36(%rsp), %eax
	movl	%eax, 780(%rbp)
	movq	152(%r14), %rax
	cmpl	$0, 460(%rax)
	jne	.LBB1_64
# BB#57:                                # %if.then.147
	movslq	8(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB1_64
# BB#58:                                # %for.body.lr.ph
	movq	568(%rbp), %rdi
	xorl	%ecx, %ecx
	testb	$1, %al
	movl	$0, %edx
                                        # implicit-def: ESI
	je	.LBB1_60
# BB#59:                                # %for.body.prol
	movl	12(%rdi), %edx
	imull	8(%rdi), %edx
	movl	$1, %ecx
	movl	%edx, %esi
.LBB1_60:                               # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB1_63
# BB#61:                                # %for.body.lr.ph.split.split
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$5, %rsi
	leaq	108(%rsi,%rdi), %rdi
.LBB1_62:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rdi), %ebp
	movl	(%rdi), %esi
	imull	-100(%rdi), %ebp
	addl	%edx, %ebp
	imull	-4(%rdi), %esi
	addl	%ebp, %esi
	addq	$2, %rcx
	addq	$192, %rdi
	cmpq	%rax, %rcx
	movl	%esi, %edx
	jl	.LBB1_62
.LBB1_63:                               # %for.end
	cmpl	$10, %esi
	movl	$-15, %eax
	jg	.LBB1_65
.LBB1_64:                               # %if.end.162
	xorl	%eax, %eax
	jmp	.LBB1_65
.LBB1_53:                               # %dcte_put_samples.exit89.thread96
	movl	$-15, %eax
.LBB1_65:                               # %cleanup.163
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_DCTE_put_params, .Lfunc_end1-s_DCTE_put_params
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"s_DCTE_get_params"
	.size	.L.str, 18

	.type	dcte_scalars_default,@object # @dcte_scalars_default
	.section	.rodata,"a",@progbits
	.align	8
dcte_scalars_default:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	dcte_scalars_default, 48

	.type	s_DCTE_param_items,@object # @s_DCTE_param_items
	.align	16
s_DCTE_param_items:
	.quad	.L.str.3
	.byte	2                       # 0x2
	.zero	1
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.byte	2                       # 0x2
	.zero	1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.byte	2                       # 0x2
	.zero	1
	.short	8                       # 0x8
	.zero	4
	.quad	.L.str.6
	.byte	5                       # 0x5
	.zero	1
	.short	16                      # 0x10
	.zero	4
	.quad	.L.str.7
	.byte	1                       # 0x1
	.zero	1
	.short	32                      # 0x20
	.zero	4
	.quad	.L.str.8
	.byte	2                       # 0x2
	.zero	1
	.short	36                      # 0x24
	.zero	4
	.quad	.L.str.9
	.byte	2                       # 0x2
	.zero	1
	.short	40                      # 0x28
	.zero	4
	.zero	16
	.size	s_DCTE_param_items, 128

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"HSamples"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"VSamples"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Columns"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Rows"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Colors"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Marker"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"NoMarker"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Resync"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Blend"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dcte_get_samples"
	.size	.L.str.10, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
