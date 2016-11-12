	.text
	.file	"gdevpdfp.bc"
	.globl	gdev_pdf_get_params
	.align	16, 0x90
	.type	gdev_pdf_get_params,@function
gdev_pdf_get_params:                    # @gdev_pdf_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsd	9368(%rbx), %xmm0       # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)
	movl	$5000, (%rsp)           # imm = 0x1388
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 8872(%rbx)
	callq	gdev_psdf_get_params
	testl	%eax, %eax
	js	.LBB0_10
# BB#1:                                 # %lor.lhs.false
	leaq	(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB0_10
# BB#2:                                 # %lor.lhs.false.6
	leaq	4(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB0_10
# BB#3:                                 # %lor.lhs.false.10
	cmpl	$0, 9360(%rbx)
	jne	.LBB0_5
# BB#4:                                 # %land.lhs.true
	leaq	9524(%rbx), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB0_10
.LBB0_5:                                # %lor.lhs.false.14
	movq	(%r14), %rax
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	*40(%rax)
	testl	%eax, %eax
	jle	.LBB0_7
# BB#6:                                 # %land.lhs.true.18
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB0_10
.LBB0_7:                                # %lor.lhs.false.22
	movq	(%r14), %rax
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	*40(%rax)
	testl	%eax, %eax
	jle	.LBB0_9
# BB#8:                                 # %land.lhs.true.28
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB0_10
.LBB0_9:                                # %lor.lhs.false.32
	xorl	%edx, %edx
	movl	$pdf_param_items, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_param_write_items
.LBB0_10:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gdev_pdf_get_params, .Lfunc_end0-gdev_pdf_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1066611507              # float 1.14999998
.LCPI1_1:
	.long	1067450368              # float 1.25
.LCPI1_2:
	.long	1068289229              # float 1.35000002
.LCPI1_3:
	.long	1069128090              # float 1.45000005
.LCPI1_4:
	.long	1069966950              # float 1.54999995
.LCPI1_5:
	.long	1070805811              # float 1.64999998
.LCPI1_7:
	.long	1067869798              # float 1.29999995
.LCPI1_8:
	.long	1068708659              # float 1.39999998
.LCPI1_10:
	.long	1067030938              # float 1.20000005
.LCPI1_11:
	.long	1069547520              # float 1.5
.LCPI1_13:
	.long	1092616192              # float 10
.LCPI1_16:
	.long	1065353216              # float 1
.LCPI1_18:
	.long	0                       # float 0
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_6:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI1_9:
	.quad	4608083138725491507     # double 1.2
.LCPI1_12:
	.quad	4669290532118200320     # double 14670
.LCPI1_14:
	.quad	4602678819172646912     # double 0.5
.LCPI1_15:
	.quad	4621819117588971520     # double 10
.LCPI1_17:
	.quad	-4587338432941916160    # double -90
	.text
	.globl	gdev_pdf_put_params
	.align	16, 0x90
	.type	gdev_pdf_put_params,@function
gdev_pdf_put_params:                    # @gdev_pdf_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp11:
	.cfi_def_cfa_offset 400
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	24(%rbp), %rdi
	callq	*32(%rdi)
	movq	%rax, %r15
	movq	200(%r15), %rdi
	movl	$30792, %esi            # imm = 0x7848
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, %r12
	movl	$-25, %ebx
	testq	%r12, %r12
	je	.LBB1_313
# BB#1:                                 # %if.end
	movl	$30792, %edx            # imm = 0x7848
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movsd	9368(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 108(%rsp)
	movl	8920(%rbp), %eax
	movl	%eax, 104(%rsp)
	movl	9008(%rbp), %r13d
	movq	24(%rbp), %rdi
	callq	*32(%rdi)
	movq	%rax, 1728(%rbp)
	leaq	88(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_read_string_array
	movl	%eax, %ebx
	cmpl	$1, %ebx
	jne	.LBB1_2
# BB#6:                                 # %sw.epilog.i
	leaq	88(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_read_string_array
	movl	%eax, %ebx
	cmpl	$1, %ebx
	jne	.LBB1_7
# BB#60:                                # %sw.epilog.29.i
	leaq	72(%rsp), %rdx
	movl	$.L.str.67, %esi
	movq	%r14, %rdi
	callq	param_read_string
	movl	%eax, %ebx
	cmpl	$1, %ebx
	jne	.LBB1_61
# BB#67:                                # %cleanup.cont.52.i
	movl	%r13d, 48(%rsp)         # 4-byte Spill
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movq	%rbp, %r14
	leaq	104(%rsp), %rdx
	movl	$.L.str.69, %esi
	movq	%r15, %rdi
	callq	param_read_bool
	movl	%eax, 68(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	jns	.LBB1_69
# BB#68:                                # %if.then.56.i
	movq	(%r15), %rax
	movl	$.L.str.67, %esi
	movq	%r15, %rdi
	movl	68(%rsp), %edx          # 4-byte Reload
	callq	*56(%rax)
.LBB1_69:                               # %if.end.60.i
	cmpl	$0, 104(%rsp)
	je	.LBB1_71
# BB#70:                                # %land.lhs.true.i
	movl	$.L.str.67, %r13d
	cmpl	$0, 8920(%r14)
	jne	.LBB1_106
.LBB1_71:                               # %if.then.65.i
	movl	$1, 144(%rsp)
	leaq	144(%rsp), %rdx
	movl	$.L.str.70, %esi
	movq	%r15, %rdi
	movl	68(%rsp), %ecx          # 4-byte Reload
	callq	param_put_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_73
# BB#72:                                # %if.then.69.i
	movq	(%r15), %rax
	movl	$.L.str.70, %esi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB1_73:                               # %if.end.73.i
	cmpl	$1, 144(%rsp)
	je	.LBB1_75
# BB#74:                                # %if.then.76.i
	movq	(%r15), %rax
	movl	$-15, %ebp
	movl	$.L.str.70, %esi
	movl	$-15, %edx
	movq	%r15, %rdi
	callq	*56(%rax)
.LBB1_75:                               # %if.end.80.i
	movl	$5000, 144(%rsp)        # imm = 0x1388
	leaq	144(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%r15, %rdi
	movl	%ebp, %ecx
	callq	param_put_int
	movl	%eax, 68(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB1_146
# BB#76:                                # %if.end.85.i
	cmpl	$5000, 144(%rsp)        # imm = 0x1388
	je	.LBB1_78
# BB#77:                                # %if.then.88.i
	movq	(%r15), %rax
	movl	$-15, 68(%rsp)          # 4-byte Folded Spill
	movl	$.L.str, %esi
	movl	$-15, %edx
	movq	%r15, %rdi
	callq	*56(%rax)
.LBB1_78:                               # %cleanup.cont.95.i
	leaq	108(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	callq	param_read_float
	movl	%eax, %r13d
	testl	%r13d, %r13d
	je	.LBB1_81
# BB#79:                                # %cleanup.cont.95.i
	cmpl	$1, %r13d
	je	.LBB1_94
# BB#80:                                # %sw.default.97.i
	movq	(%r15), %rax
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	*56(%rax)
	movl	%r13d, 68(%rsp)         # 4-byte Spill
.LBB1_81:                               # %sw.bb.101.i
	movss	108(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_83
# BB#82:                                # %if.then.104.i
	movl	$1066192077, 108(%rsp)  # imm = 0x3F8CCCCD
	jmp	.LBB1_94
.LBB1_2:                                # %if.end
	testl	%ebx, %ebx
	jne	.LBB1_5
# BB#3:                                 # %sw.bb.i
	movq	%rbp, %rdi
	callq	pdfwrite_pdf_open_document
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_312
# BB#4:                                 # %if.end.i
	leaq	88(%rsp), %rsi
	movq	%rbp, %rdi
	callq	pdfmark_process
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB1_312
.LBB1_5:                                # %sw.default.i
	movq	(%r14), %rax
	movl	$.L.str.3, %esi
	jmp	.LBB1_66
.LBB1_7:                                # %sw.epilog.i
	testl	%ebx, %ebx
	jne	.LBB1_50
# BB#8:                                 # %sw.bb.14.i
	movq	%rbp, %rdi
	callq	pdfwrite_pdf_open_document
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_312
# BB#9:                                 # %if.end.19.i
	xorl	%ebx, %ebx
	cmpl	$0, 9392(%rbp)
	je	.LBB1_312
# BB#10:                                # %for.cond.preheader.i.i
	cmpl	$2, 96(%rsp)
	jb	.LBB1_312
# BB#11:                                # %for.body.lr.ph.i.i
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	%r15, 56(%rsp)          # 8-byte Spill
	leaq	9816(%rbp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	9856(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_12
.LBB1_61:                               # %sw.epilog.29.i
	testl	%ebx, %ebx
	jne	.LBB1_65
# BB#62:                                # %sw.bb.31.i
	xorl	%ebx, %ebx
	cmpl	$0, 9524(%rbp)
	jne	.LBB1_312
# BB#63:                                # %if.then.32.i
	movq	%rbp, %rdi
	movq	26512(%rdi), %r13
	callq	pdfwrite_pdf_open_document
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_312
# BB#64:                                # %if.end.37.i
	movq	72(%rsp), %rcx
	movl	80(%rsp), %r8d
	movl	$.L.str.68, %esi
	movl	$11, %edx
	movq	%r13, %rdi
	callq	cos_dict_put_string
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB1_312
.LBB1_65:                               # %sw.default.44.i
	movq	(%r14), %rax
	movl	$.L.str.67, %esi
	jmp	.LBB1_66
.LBB1_15:                               # %if.else.15.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.97, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movq	48(%rsp), %rax          # 8-byte Reload
	jne	.LBB1_17
# BB#16:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.98, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movq	24(%rsp), %rax          # 8-byte Reload
	je	.LBB1_21
.LBB1_17:                               # %if.then.20.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$1, 8(%r15,%rbx)
	jne	.LBB1_20
# BB#18:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	(%r12), %rcx
	movzbl	(%rcx), %ecx
	movl	%ecx, %edx
	andl	$252, %edx
	cmpl	$48, %edx
	jne	.LBB1_20
# BB#19:                                # %if.then.33.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$-48, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_47
.LBB1_20:                               # %if.else.37.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$-1, (%rax)
	jmp	.LBB1_47
.LBB1_21:                               # %if.else.40.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.99, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movq	48(%rsp), %rax          # 8-byte Reload
	jne	.LBB1_23
# BB#22:                                # %lor.lhs.false.44.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.100, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movq	24(%rsp), %rax          # 8-byte Reload
	je	.LBB1_34
.LBB1_23:                               # %if.then.48.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rax, %r13
	movl	8(%r15,%rbx), %edx
	cmpq	$198, %rdx
	ja	.LBB1_47
# BB#24:                                # %if.end.54.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	8(%r15,%rbx), %r15
	movq	(%r12), %rsi
	leaq	144(%rsp), %rbx
	movq	%rbx, %rdi
	callq	memcpy
	movl	(%r15), %eax
	movb	$0, 144(%rsp,%rax)
	movl	$.L.str.101, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	leaq	112(%rsp), %rdx
	leaq	116(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	124(%rsp), %r9
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	jne	.LBB1_47
# BB#25:                                # %for.cond.68.preheader.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_16(%rip), %xmm0
	jne	.LBB1_29
	jp	.LBB1_29
# BB#26:                                # %for.cond.68.preheader.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	116(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_18, %xmm0
	jne	.LBB1_29
	jp	.LBB1_29
# BB#27:                                # %for.cond.68.preheader.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_18, %xmm0
	jne	.LBB1_29
	jp	.LBB1_29
# BB#28:                                # %for.cond.68.preheader.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	124(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI1_16(%rip), %xmm0
	jne	.LBB1_29
	jnp	.LBB1_33
.LBB1_29:                               # %if.end.88.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	112(%rsp), %rdi
	movsd	.LCPI1_17(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rdi, %rsi
	callq	gs_matrix_rotate
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_16(%rip), %xmm0
	jne	.LBB1_51
	jp	.LBB1_51
# BB#30:                                # %if.end.88.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	116(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_18, %xmm0
	jne	.LBB1_51
	jp	.LBB1_51
# BB#31:                                # %if.end.88.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_18, %xmm0
	jne	.LBB1_51
	jp	.LBB1_51
# BB#32:                                # %if.end.88.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	124(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$1, %eax
	ucomiss	.LCPI1_16(%rip), %xmm0
	jne	.LBB1_51
	jp	.LBB1_51
	jmp	.LBB1_33
.LBB1_51:                               # %if.end.88.1.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	112(%rsp), %rdi
	movsd	.LCPI1_17(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rdi, %rsi
	callq	gs_matrix_rotate
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_16(%rip), %xmm0
	jne	.LBB1_55
	jp	.LBB1_55
# BB#52:                                # %if.end.88.1.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	116(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_18, %xmm0
	jne	.LBB1_55
	jp	.LBB1_55
# BB#53:                                # %if.end.88.1.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_18, %xmm0
	jne	.LBB1_55
	jp	.LBB1_55
# BB#54:                                # %if.end.88.1.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	124(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$2, %eax
	ucomiss	.LCPI1_16(%rip), %xmm0
	jne	.LBB1_55
	jnp	.LBB1_33
.LBB1_55:                               # %if.end.88.2.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	112(%rsp), %rdi
	movsd	.LCPI1_17(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rdi, %rsi
	callq	gs_matrix_rotate
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_16(%rip), %xmm0
	jne	.LBB1_59
	jp	.LBB1_59
# BB#56:                                # %if.end.88.2.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	116(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_18, %xmm0
	jne	.LBB1_59
	jp	.LBB1_59
# BB#57:                                # %if.end.88.2.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_18, %xmm0
	jne	.LBB1_59
	jp	.LBB1_59
# BB#58:                                # %if.end.88.2.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	124(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$3, %eax
	ucomiss	.LCPI1_16(%rip), %xmm0
	jne	.LBB1_59
	jnp	.LBB1_33
.LBB1_59:                               # %if.end.88.3.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	112(%rsp), %rdi
	movsd	.LCPI1_17(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rdi, %rsi
	callq	gs_matrix_rotate
	movl	$4, %eax
.LBB1_33:                               # %for.end.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$4, %eax
	movl	$-1, %ecx
	cmovel	%ecx, %eax
	movl	%eax, 4(%r13)
	jmp	.LBB1_47
.LBB1_34:                               # %if.else.95.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.102, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	je	.LBB1_39
# BB#35:                                # %if.then.98.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 8(%r15,%rbx)
	je	.LBB1_36
# BB#37:                                # %land.rhs.102.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	(%r12), %rax
	movzbl	(%rax), %eax
	cmpl	$48, %eax
	setne	%al
	jmp	.LBB1_38
.LBB1_39:                               # %if.end.109.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.103, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movq	48(%rsp), %rax          # 8-byte Reload
	jne	.LBB1_41
# BB#40:                                # %if.else.114.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.104, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movq	24(%rsp), %rax          # 8-byte Reload
	je	.LBB1_47
.LBB1_41:                               # %if.end.121.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	8(%r15,%rbx), %edx
	cmpq	$198, %rdx
	ja	.LBB1_47
# BB#42:                                # %if.end.127.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	8(%r15,%rbx), %r15
	movq	(%r12), %rsi
	leaq	144(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %r12
	callq	memcpy
	movl	(%r15), %eax
	movb	$0, 144(%rsp,%rax)
	movl	$.L.str.105, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	leaq	112(%rsp), %rdx
	leaq	120(%rsp), %rcx
	leaq	128(%rsp), %r8
	leaq	136(%rsp), %r9
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	jne	.LBB1_47
# BB#43:                                # %if.end.145.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movups	112(%rsp), %xmm0
	movups	128(%rsp), %xmm1
	movups	%xmm1, 24(%r12)
	movups	%xmm0, 8(%r12)
	jmp	.LBB1_47
.LBB1_36:                               #   in Loop: Header=BB1_12 Depth=1
	xorl	%eax, %eax
.LBB1_38:                               # %land.end.108.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movzbl	%al, %eax
	movl	%eax, 9772(%rbp)
	jmp	.LBB1_47
	.align	16, 0x90
.LBB1_12:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%r14), %eax
	movq	88(%rsp), %r15
	shlq	$4, %rax
	leaq	(%rax,%r15), %r13
	movl	%r14d, %r14d
	movq	%r14, %rbx
	shlq	$4, %rbx
	leaq	(%r15,%rbx), %r12
	movl	$.L.str.91, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movl	$.L.str.92, %esi
	jne	.LBB1_44
# BB#13:                                # %if.else.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.93, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movl	$.L.str.94, %esi
	jne	.LBB1_44
# BB#14:                                # %if.else.11.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$.L.str.95, %esi
	movq	%r13, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	movl	$.L.str.96, %esi
	je	.LBB1_15
	.align	16, 0x90
.LBB1_44:                               # %if.end.155.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 9388(%rbp)
	jne	.LBB1_46
# BB#45:                                # %lor.lhs.false.157.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 9404(%rbp)
	je	.LBB1_47
.LBB1_46:                               # %if.then.159.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	26520(%rbp), %rdi
	movq	(%r12), %rdx
	movl	8(%r15,%rbx), %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, 68(%rsp)          # 4-byte Spill
.LBB1_47:                               # %cleanup.164.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	js	.LBB1_49
# BB#48:                                # %cleanup.164.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r14d
	cmpl	96(%rsp), %r14d
	jb	.LBB1_12
.LBB1_49:                               # %pdf_dsc_process.exit.i
	movl	68(%rsp), %ebx          # 4-byte Reload
	testl	%ebx, %ebx
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	32(%rsp), %r14          # 8-byte Reload
	jns	.LBB1_312
.LBB1_50:                               # %sw.default.25.i
	movq	(%r14), %rax
	movl	$.L.str.4, %esi
.LBB1_66:                               # %cleanup.49.thread.i
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	jmp	.LBB1_312
.LBB1_83:                               # %if.else.105.i
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_85
# BB#84:                                # %if.then.108.i
	movl	$1067030938, 108(%rsp)  # imm = 0x3F99999A
	jmp	.LBB1_94
.LBB1_85:                               # %if.else.109.i
	movss	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_87
# BB#86:                                # %if.then.112.i
	movl	$1067869798, 108(%rsp)  # imm = 0x3FA66666
	jmp	.LBB1_94
.LBB1_87:                               # %if.else.113.i
	movss	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_89
# BB#88:                                # %if.then.116.i
	movl	$1068708659, 108(%rsp)  # imm = 0x3FB33333
	jmp	.LBB1_94
.LBB1_89:                               # %if.else.117.i
	movss	.LCPI1_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_91
# BB#90:                                # %if.then.120.i
	movl	$1069547520, 108(%rsp)  # imm = 0x3FC00000
	jmp	.LBB1_94
.LBB1_91:                               # %if.else.121.i
	movss	.LCPI1_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_93
# BB#92:                                # %if.then.124.i
	movl	$1070386381, 108(%rsp)  # imm = 0x3FCCCCCD
	jmp	.LBB1_94
.LBB1_93:                               # %if.else.125.i
	movl	$1071225242, 108(%rsp)  # imm = 0x3FD9999A
.LBB1_94:                               # %sw.epilog.132.i
	movq	8(%r15), %r13
	movq	%r14, %rbp
	movq	1728(%rbp), %rax
	movq	%rax, 8(%r15)
	movl	$pdf_param_items, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	gs_param_read_items
	testl	%eax, %eax
	js	.LBB1_95
# BB#96:                                # %lor.lhs.false.i
	cmpl	$0, 9360(%rbp)
	movl	68(%rsp), %r14d         # 4-byte Reload
	jne	.LBB1_98
# BB#97:                                # %land.lhs.true.140.i
	leaq	9524(%rbp), %rdx
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	callq	param_read_bool
	jmp	.LBB1_98
.LBB1_95:
	movl	68(%rsp), %r14d         # 4-byte Reload
.LBB1_98:                               # %if.end.146.i
	movq	%r13, 8(%r15)
	testl	%eax, %eax
	cmovsl	%eax, %r14d
	movq	9472(%rbp), %rcx
	movq	9472(%r12), %rax
	cmpq	%rax, %rcx
	je	.LBB1_103
# BB#99:                                # %if.then.155.i
	decq	%rcx
	cmpq	$2147418111, %rcx       # imm = 0x7FFEFFFF
	ja	.LBB1_102
# BB#100:                               # %lor.lhs.false.161.i
	movq	26504(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_103
# BB#101:                               # %lor.lhs.false.161.i
	addq	$3, %rax
	cmpq	%rax, %rcx
	je	.LBB1_103
.LBB1_102:                              # %if.then.169.i
	movq	(%r15), %rax
	movl	$-15, %r14d
	movl	$.L.str.20, %esi
	movl	$-15, %edx
	movq	%r15, %rdi
	callq	*56(%rax)
.LBB1_103:                              # %if.end.174.i
	movl	$-1, 144(%rsp)
	leaq	144(%rsp), %rdx
	movl	$.L.str.75, %esi
	movl	$gdev_pdf_put_params_impl.pcm_names, %ecx
	movq	%r15, %rdi
	movl	%r14d, %r8d
	callq	param_put_enum
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	144(%rsp), %esi
	testl	%esi, %esi
	js	.LBB1_105
# BB#104:                               # %if.then.178.i
	movq	%rbp, %rdi
	callq	pdf_set_process_color_model
	leaq	7512(%rbp), %rsi
	leaq	8144(%rbp), %rdx
	leaq	7500(%rbp), %rcx
	leaq	7504(%rbp), %r8
	movq	%rbp, %rdi
	callq	pdf_set_initial_color
.LBB1_105:                              # %if.end.179.i
	movq	%rbp, %r14
	movl	$.L.str.1, %r13d
.LBB1_106:                              # %if.end.180.i
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	js	.LBB1_143
# BB#107:                               # %if.end.184.i
	cmpl	$0, 9360(%r14)
	je	.LBB1_110
# BB#108:                               # %land.lhs.true.187.i
	leaq	9548(%r14), %rdx
	movl	$.L.str.31, %esi
	movq	%r15, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	jns	.LBB1_110
# BB#109:                               # %if.then.191.i
	movq	(%r15), %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%eax, %edx
	callq	*56(%rcx)
.LBB1_110:                              # %if.end.195.i
	movl	9564(%r14), %eax
	cmpl	$3, %eax
	movq	%r14, %rbx
	jae	.LBB1_111
# BB#113:                               # %if.end.206.i
	testl	%eax, %eax
	je	.LBB1_116
# BB#114:                               # %land.lhs.true.210.i
	cmpl	$0, 9568(%rbx)
	je	.LBB1_117
# BB#115:                               # %if.then.212.i
	movl	$0, 9564(%rbx)
.LBB1_116:                              # %if.end.214.i
	xorl	%eax, %eax
.LBB1_117:                              # %if.end.214.i
	movl	9560(%rbx), %edx
	testl	%edx, %edx
	je	.LBB1_120
# BB#118:                               # %land.lhs.true.216.i
	cmpl	$0, 9568(%rbx)
	je	.LBB1_129
# BB#119:                               # %if.then.219.i
	movl	$0, 9560(%rbx)
.LBB1_120:                              # %if.end.242.i
	testl	%eax, %eax
	sete	%cl
	je	.LBB1_123
# BB#121:                               # %land.lhs.true.246.i
	cmpl	$0, 9524(%rbx)
	jne	.LBB1_111
# BB#122:                               # %if.end.253.i
	xorl	%esi, %esi
	cmpl	$1, %eax
	movl	$0, %edx
	je	.LBB1_124
.LBB1_123:                              # %lor.lhs.false.260.i
	xorl	%edx, %edx
	movsd	.LCPI1_6(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbx), %xmm0
	movb	%cl, %sil
	jbe	.LBB1_125
	jmp	.LBB1_124
.LBB1_129:                              # %land.lhs.true.224.i
	testl	%eax, %eax
	je	.LBB1_130
.LBB1_111:                              # %if.then.202.i
	movq	%rbx, %r14
	movq	(%r15), %rax
	movl	$-15, 68(%rsp)          # 4-byte Folded Spill
	movl	$.L.str.40, %esi
.LBB1_112:                              # %fail.i
	movl	$-15, %edx
	movq	%r15, %rdi
	callq	*56(%rax)
.LBB1_143:                              # %fail.i
	movl	8848(%r12), %eax
	movl	%eax, 8848(%r14)
	movl	30456(%r12), %esi
	movq	%r14, %rdi
	callq	pdf_set_process_color_model
	leaq	7512(%r14), %rdi
	leaq	7512(%r12), %rbx
	movl	$632, %edx              # imm = 0x278
	movq	%rbx, %rsi
	callq	memcpy
	leaq	8144(%r14), %rdi
	movl	$632, %edx              # imm = 0x278
	movq	%rbx, %rsi
	callq	memcpy
	movl	$pdf_param_items+16, %ebx
	.align	16, 0x90
.LBB1_144:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movswq	-6(%rbx), %rax
	leaq	(%r14,%rax), %rdi
	leaq	(%rax,%r12), %rsi
	movzbl	-8(%rbx), %eax
	movzbl	gs_param_type_sizes(%rax), %edx
	callq	memcpy
	cmpq	$0, (%rbx)
	leaq	16(%rbx), %rbx
	jne	.LBB1_144
# BB#145:                               # %for.end.i
	movl	9524(%r12), %eax
	movl	%eax, 9524(%r14)
.LBB1_146:                              # %gdev_pdf_put_params_impl.exit
	movl	68(%rsp), %ebx          # 4-byte Reload
	movq	56(%rsp), %r15          # 8-byte Reload
.LBB1_312:                              # %gdev_pdf_put_params_impl.exit
	movq	200(%r15), %rdi
	movl	$.L.str.5, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB1_313:                              # %cleanup
	movl	%ebx, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_130:                              # %land.lhs.true.235.i
	movb	$1, %sil
	cmpl	$0, 9524(%rbx)
	je	.LBB1_124
# BB#131:                               # %if.then.238.i
	movq	%rbx, %r14
	movq	(%r15), %rax
	movl	$-15, 68(%rsp)          # 4-byte Folded Spill
	movl	$.L.str.39, %esi
	jmp	.LBB1_112
.LBB1_124:                              # %if.then.264.i
	movl	$0, 9552(%rbx)
	movl	$0, 30748(%rbx)
	movb	%sil, %cl
.LBB1_125:                              # %if.end.265.i
	cmpl	$1, %eax
	jne	.LBB1_127
# BB#126:                               # %if.then.269.i
	movl	$1, 30760(%rbx)
.LBB1_127:                              # %if.end.270.i
	testl	%edx, %edx
	je	.LBB1_128
# BB#132:                               # %if.then.273.i
	movl	$1067869798, 108(%rsp)  # imm = 0x3FA66666
	movss	.LCPI1_7(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_133
.LBB1_128:                              # %if.end.270.i.if.end.274.i_crit_edge
	movss	108(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
.LBB1_133:                              # %if.end.274.i
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI1_6(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_136
# BB#134:                               # %if.end.274.i
	xorb	$1, %cl
	je	.LBB1_136
# BB#135:                               # %if.then.282.i
	movl	$1068708659, 108(%rsp)  # imm = 0x3FB33333
	movss	.LCPI1_8(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB1_136:                              # %if.end.283.i
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movl	$2000, %eax             # imm = 0x7D0
	movl	$3010, %ecx             # imm = 0xBC2
	cmoval	%eax, %ecx
	movl	%ecx, 8848(%rbx)
	cmpl	$0, 9524(%rbx)
	je	.LBB1_138
# BB#137:                               # %if.then.289.i
	movl	$1, 9536(%rbx)
	movl	$0, 8856(%rbx)
	movl	$0, 9540(%rbx)
	movl	$0, 9544(%rbx)
	movl	$1067030938, 108(%rsp)  # imm = 0x3F99999A
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 9592(%rbx)
	movl	$2000, 8848(%rbx)       # imm = 0x7D0
	movss	.LCPI1_10(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_139
.LBB1_138:                              # %if.else.291.i
	movl	$0, 9536(%rbx)
	movl	$1, 8856(%rbx)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 9540(%rbx)
.LBB1_139:                              # %if.end.296.i
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 8872(%rbx)
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_141
# BB#140:                               # %if.then.301.i
	movl	$0, 8856(%rbx)
.LBB1_141:                              # %if.end.303.i
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gdev_psdf_put_params
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_142
# BB#147:                               # %if.end.308.i
	cmpl	$0, 30760(%rbx)
	je	.LBB1_148
# BB#175:                               # %if.else.546.i
	movl	9008(%rbx), %eax
	cmpl	$5, %eax
	jne	.LBB1_187
# BB#176:                               # %land.lhs.true.552.i
	movl	$.L.str.73, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	784(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB1_184
# BB#177:                               # %cond.true.i
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	movq	%r12, %r13
	testq	%rcx, %rcx
	je	.LBB1_185
# BB#178:                               # %cond.true.i
	testl	%eax, %eax
	jne	.LBB1_185
# BB#179:                               # %if.then.565.i
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB1_185
# BB#180:                               # %if.then.565.i
	testl	%eax, %eax
	jne	.LBB1_185
# BB#181:                               # %if.then.575.i
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB1_185
# BB#182:                               # %if.then.575.i
	testl	%eax, %eax
	jne	.LBB1_185
# BB#183:                               # %if.then.585.i
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB1_185
.LBB1_142:
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	%rbx, %r14
	jmp	.LBB1_143
.LBB1_148:                              # %if.then.311.i
	cmpl	$0, 9112(%rbx)
	je	.LBB1_149
# BB#150:                               # %if.then.314.i
	movq	%r12, %rbp
	movl	9008(%rbx), %eax
	cmpl	$6, %eax
	jne	.LBB1_151
# BB#154:                               # %if.then.330.i
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rbx, %r14
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.77, %esi
	jmp	.LBB1_153
.LBB1_184:                              # %cond.false.i
	movq	%r12, %r13
	movl	$.L.str.73, %esi
	callq	strcmp
.LBB1_185:                              # %cond.end.i
	testl	%eax, %eax
	jne	.LBB1_210
# BB#186:                               # %lor.lhs.false.599thread-pre-split.i
	movl	9008(%rbx), %eax
	movq	%r13, %r12
.LBB1_187:                              # %lor.lhs.false.599.i
	cmpl	$4, %eax
	jne	.LBB1_199
# BB#188:                               # %land.lhs.true.615.i
	movl	$.L.str.72, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	784(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB1_196
# BB#189:                               # %cond.true.619.i
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	movq	%r12, %r13
	testq	%rcx, %rcx
	je	.LBB1_197
# BB#190:                               # %cond.true.619.i
	testl	%eax, %eax
	jne	.LBB1_197
# BB#191:                               # %if.then.635.i
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB1_197
# BB#192:                               # %if.then.635.i
	testl	%eax, %eax
	jne	.LBB1_197
# BB#193:                               # %if.then.645.i
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB1_197
# BB#194:                               # %if.then.645.i
	testl	%eax, %eax
	jne	.LBB1_197
# BB#195:                               # %if.then.655.i
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB1_197
.LBB1_149:
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	%rbx, %r14
	jmp	.LBB1_159
.LBB1_151:                              # %if.then.314.i
	cmpl	$5, %eax
	jne	.LBB1_155
# BB#152:                               # %if.then.319.i
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rbx, %r14
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.76, %esi
.LBB1_153:                              # %if.end.382.i
	xorl	%eax, %eax
	callq	errprintf
	movq	%rbp, %r12
	jmp	.LBB1_159
.LBB1_196:                              # %cond.false.664.i
	movq	%r12, %r13
	movl	$.L.str.72, %esi
	callq	strcmp
.LBB1_197:                              # %cond.end.668.i
	testl	%eax, %eax
	jne	.LBB1_210
# BB#198:                               # %cond.end.668.lor.lhs.false.671_crit_edge.i
	movl	9008(%rbx), %eax
	movq	%r13, %r12
.LBB1_199:                              # %lor.lhs.false.671.i
	cmpl	$6, %eax
	jne	.LBB1_213
# BB#200:                               # %land.lhs.true.682.i
	movl	$.L.str.71, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	784(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB1_208
# BB#201:                               # %cond.true.686.i
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	movq	%r12, %r13
	testq	%rcx, %rcx
	je	.LBB1_209
# BB#202:                               # %cond.true.686.i
	testl	%eax, %eax
	jne	.LBB1_209
# BB#203:                               # %if.then.702.i
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB1_209
# BB#204:                               # %if.then.702.i
	testl	%eax, %eax
	jne	.LBB1_209
# BB#205:                               # %if.then.712.i
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB1_209
# BB#206:                               # %if.then.712.i
	testl	%eax, %eax
	jne	.LBB1_209
# BB#207:                               # %if.then.722.i
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB1_209
.LBB1_208:                              # %cond.false.731.i
	movq	%r12, %r13
	movl	$.L.str.71, %esi
	callq	strcmp
.LBB1_209:                              # %cond.end.735.i
	testl	%eax, %eax
	je	.LBB1_211
.LBB1_210:                              # %if.then.738.i
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.79, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9008(%rbx)
	movl	$-15, %r14d
.LBB1_212:                              # %if.end.746.i
	movq	%r13, %r12
.LBB1_213:                              # %if.end.746.i
	cmpl	$2, %eax
	jne	.LBB1_214
# BB#215:                               # %if.then.751.i
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	cmpl	$0, 956(%rbx)
	movq	%rbx, %r14
	jne	.LBB1_250
# BB#216:                               # %if.then.753.i
	movq	%r12, %rbp
	movq	%r14, %rbx
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.80, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, 956(%rbx)
	movl	9008(%rbx), %eax
	movl	$-15, %r14d
	jmp	.LBB1_217
.LBB1_214:
	movq	%r12, %rbp
.LBB1_217:                              # %if.end.761.i
	cmpl	$3, %eax
	movq	%rbp, %r12
	jne	.LBB1_218
# BB#219:                               # %if.then.766.i
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	cmpl	$0, 956(%rbx)
	je	.LBB1_221
# BB#220:
	movq	%rbx, %r14
	jmp	.LBB1_250
.LBB1_218:
	movq	%r12, %rbp
.LBB1_223:                              # %if.end.788.i
	cmpl	$1, %eax
	movq	%rbp, %r12
	jne	.LBB1_224
# BB#225:                               # %land.lhs.true.799.i
	movl	$.L.str.73, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	784(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB1_233
# BB#226:                               # %cond.true.803.i
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB1_234
# BB#227:                               # %cond.true.803.i
	testl	%eax, %eax
	jne	.LBB1_234
# BB#228:                               # %if.then.819.i
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB1_234
# BB#229:                               # %if.then.819.i
	testl	%eax, %eax
	jne	.LBB1_234
# BB#230:                               # %if.then.829.i
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB1_234
# BB#231:                               # %if.then.829.i
	testl	%eax, %eax
	jne	.LBB1_234
# BB#232:                               # %if.then.839.i
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB1_234
.LBB1_224:
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	%rbx, %r14
	jmp	.LBB1_250
.LBB1_221:                              # %if.then.769.i
	movq	%r12, %rbp
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rbx, %r14
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbp, %r12
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.81, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$2, 9008(%r14)
	cmpl	$0, 956(%r14)
	jne	.LBB1_250
# BB#222:                               # %if.then.779.i
	movq	%r12, %rbp
	movq	%r14, %rbx
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.80, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, 956(%rbx)
	movl	9008(%rbx), %eax
	movl	$-15, %r14d
	jmp	.LBB1_223
.LBB1_233:                              # %cond.false.848.i
	movl	$.L.str.73, %esi
	callq	strcmp
.LBB1_234:                              # %cond.end.852.i
	movq	%r12, %rbp
	testl	%eax, %eax
	je	.LBB1_235
# BB#236:                               # %land.lhs.true.869.i
	movl	$.L.str.72, %edi
	callq	strlen
	movq	784(%rbx), %rdi
	cmpq	$3, %rax
	ja	.LBB1_244
# BB#237:                               # %cond.true.873.i
	movzbl	(%rdi), %r15d
	addl	$-68, %r15d
	testq	%rax, %rax
	je	.LBB1_245
# BB#238:                               # %cond.true.873.i
	testl	%r15d, %r15d
	jne	.LBB1_245
# BB#239:                               # %if.then.889.i
	movzbl	1(%rdi), %r15d
	addl	$-101, %r15d
	cmpq	$2, %rax
	jb	.LBB1_245
# BB#240:                               # %if.then.889.i
	testl	%r15d, %r15d
	jne	.LBB1_245
# BB#241:                               # %if.then.899.i
	movzbl	2(%rdi), %r15d
	addl	$-118, %r15d
	cmpq	$3, %rax
	jb	.LBB1_245
# BB#242:                               # %if.then.899.i
	testl	%r15d, %r15d
	jne	.LBB1_245
# BB#243:                               # %if.then.909.i
	movzbl	3(%rdi), %r15d
	addl	$-105, %r15d
	jmp	.LBB1_245
.LBB1_155:                              # %if.else.336.i
	movq	1104(%rbx), %rsi
	testq	%rsi, %rsi
	movq	%rbp, %r12
	je	.LBB1_158
# BB#156:                               # %do.end.i
	decq	200(%rsi)
	jne	.LBB1_158
# BB#157:                               # %do.end.356.i
	movq	208(%rsi), %rdi
	movl	$.L.str.78, %edx
	callq	*216(%rsi)
	movq	$0, 1104(%rbx)
.LBB1_158:                              # %if.end.374.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_set_process_color_model
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbx, %r14
	callq	gsicc_init_device_profile_struct
	movl	%eax, 68(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB1_143
.LBB1_159:                              # %if.end.382.i
	movl	9008(%r14), %eax
	addl	$-4, %eax
	cmpl	$3, %eax
	ja	.LBB1_250
# BB#160:                               # %if.end.382.i
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_170:                              # %sw.bb.488.i
	cmpl	$0, 9112(%r14)
	jne	.LBB1_250
# BB#171:                               # %if.then.492.i
	movq	1104(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB1_174
# BB#172:                               # %do.end.503.i
	decq	200(%rsi)
	jne	.LBB1_174
# BB#173:                               # %do.end.518.i
	movq	208(%rsi), %rdi
	movl	$.L.str.78, %edx
	callq	*216(%rsi)
	movq	$0, 1104(%r14)
.LBB1_174:                              # %if.end.537.i
	movl	$1, %esi
	jmp	.LBB1_165
.LBB1_211:                              # %if.end.746thread-pre-split.i
	movl	9008(%rbx), %eax
	jmp	.LBB1_212
.LBB1_235:                              # %if.then.855.i
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rbx, %r14
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.82, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$5, 9008(%r14)
	jmp	.LBB1_249
.LBB1_161:                              # %sw.bb.386.i
	movq	1104(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB1_164
# BB#162:                               # %do.end.397.i
	decq	200(%rsi)
	jne	.LBB1_164
# BB#163:                               # %do.end.412.i
	movq	208(%rsi), %rdi
	movl	$.L.str.78, %edx
	callq	*216(%rsi)
	movq	$0, 1104(%r14)
.LBB1_164:                              # %if.end.431.i
	movl	$2, %esi
	jmp	.LBB1_165
.LBB1_166:                              # %sw.bb.437.i
	movq	1104(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB1_169
# BB#167:                               # %do.end.448.i
	decq	200(%rsi)
	jne	.LBB1_169
# BB#168:                               # %do.end.463.i
	movq	208(%rsi), %rdi
	movl	$.L.str.78, %edx
	callq	*216(%rsi)
	movq	$0, 1104(%r14)
.LBB1_169:                              # %if.end.482.i
	xorl	%esi, %esi
.LBB1_165:                              # %if.end.431.i
	movq	%r14, %rdi
	callq	pdf_set_process_color_model
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	gsicc_init_device_profile_struct
	movl	%eax, 68(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	jns	.LBB1_250
	jmp	.LBB1_143
.LBB1_244:                              # %cond.false.918.i
	movl	$.L.str.72, %esi
	callq	strcmp
	movl	%eax, %r15d
.LBB1_245:                              # %cond.end.922.i
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	testl	%r15d, %r15d
	je	.LBB1_246
# BB#247:                               # %if.else.933.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$6, 9008(%rbx)
	jmp	.LBB1_248
.LBB1_246:                              # %if.then.925.i
	movl	$.L.str.83, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$4, 9008(%rbx)
.LBB1_248:                              # %if.end.944.i
	movq	%rbx, %r14
.LBB1_249:                              # %if.end.944.i
	movq	%rbp, %r12
.LBB1_250:                              # %if.end.944.i
	movss	108(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_11(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_264
# BB#251:                               # %land.lhs.true.947.i
	movq	%r12, %rbx
	movq	9080(%r14), %r12
	testq	%r12, %r12
	je	.LBB1_263
# BB#252:                               # %land.lhs.true.957.i
	movl	$.L.str.85, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_260
# BB#253:                               # %cond.true.961.i
	movzbl	(%r12), %eax
	addl	$-74, %eax
	testq	%rcx, %rcx
	movss	.LCPI1_11(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	je	.LBB1_261
# BB#254:                               # %cond.true.961.i
	testl	%eax, %eax
	jne	.LBB1_261
# BB#255:                               # %if.then.978.i
	movzbl	1(%r12), %eax
	addl	$-80, %eax
	cmpq	$2, %rcx
	jb	.LBB1_261
# BB#256:                               # %if.then.978.i
	testl	%eax, %eax
	jne	.LBB1_261
# BB#257:                               # %if.then.988.i
	movzbl	2(%r12), %eax
	addl	$-88, %eax
	cmpq	$3, %rcx
	jb	.LBB1_261
# BB#258:                               # %if.then.988.i
	testl	%eax, %eax
	jne	.LBB1_261
# BB#259:                               # %if.then.998.i
	movzbl	3(%r12), %eax
	addl	$-69, %eax
	jmp	.LBB1_261
.LBB1_260:                              # %cond.false.1007.i
	movl	$.L.str.85, %esi
	movq	%r12, %rdi
	callq	strcmp
	movss	.LCPI1_11(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB1_261:                              # %cond.end.1012.i
	testl	%eax, %eax
	jne	.LBB1_263
# BB#262:                               # %if.then.1015.i
	movq	24(%r14), %r12
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.86, %esi
	xorl	%eax, %eax
	callq	errprintf
	movss	.LCPI1_11(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movl	$-15, 68(%rsp)          # 4-byte Folded Spill
.LBB1_263:                              # %if.end.1021thread-pre-split.i
	movss	108(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%rbx, %r12
.LBB1_264:                              # %if.end.1021.i
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_278
# BB#265:                               # %land.lhs.true.1024.i
	movq	%r12, %rbx
	movq	9168(%r14), %r12
	testq	%r12, %r12
	je	.LBB1_266
# BB#267:                               # %land.lhs.true.1035.i
	movl	$.L.str.85, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_275
# BB#268:                               # %cond.true.1039.i
	movzbl	(%r12), %eax
	addl	$-74, %eax
	testq	%rcx, %rcx
	je	.LBB1_276
# BB#269:                               # %cond.true.1039.i
	testl	%eax, %eax
	jne	.LBB1_276
# BB#270:                               # %if.then.1056.i
	movzbl	1(%r12), %eax
	addl	$-80, %eax
	cmpq	$2, %rcx
	jb	.LBB1_276
# BB#271:                               # %if.then.1056.i
	testl	%eax, %eax
	jne	.LBB1_276
# BB#272:                               # %if.then.1066.i
	movzbl	2(%r12), %eax
	addl	$-88, %eax
	cmpq	$3, %rcx
	jb	.LBB1_276
# BB#273:                               # %if.then.1066.i
	testl	%eax, %eax
	jne	.LBB1_276
# BB#274:                               # %if.then.1076.i
	movzbl	3(%r12), %eax
	addl	$-69, %eax
	jmp	.LBB1_276
.LBB1_266:
	movq	%rbx, %r12
	jmp	.LBB1_278
.LBB1_275:                              # %cond.false.1085.i
	movl	$.L.str.85, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB1_276:                              # %cond.end.1090.i
	testl	%eax, %eax
	movq	%rbx, %r12
	jne	.LBB1_278
# BB#277:                               # %if.then.1093.i
	movq	%r12, %rbx
	movq	24(%r14), %r12
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbx, %r12
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.86, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-15, 68(%rsp)          # 4-byte Folded Spill
.LBB1_278:                              # %if.end.1099.i
	movss	.LCPI1_8(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	108(%rsp), %xmm0
	jbe	.LBB1_292
# BB#279:                               # %land.lhs.true.1102.i
	movq	%r12, %rbx
	movq	9248(%r14), %r12
	testq	%r12, %r12
	je	.LBB1_280
# BB#281:                               # %land.lhs.true.1113.i
	movl	$.L.str.87, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_289
# BB#282:                               # %cond.true.1117.i
	movzbl	(%r12), %eax
	addl	$-74, %eax
	testq	%rcx, %rcx
	je	.LBB1_290
# BB#283:                               # %cond.true.1117.i
	testl	%eax, %eax
	jne	.LBB1_290
# BB#284:                               # %if.then.1134.i
	movzbl	1(%r12), %eax
	addl	$-66, %eax
	cmpq	$2, %rcx
	jb	.LBB1_290
# BB#285:                               # %if.then.1134.i
	testl	%eax, %eax
	jne	.LBB1_290
# BB#286:                               # %if.then.1144.i
	movzbl	2(%r12), %eax
	addl	$-73, %eax
	cmpq	$3, %rcx
	jb	.LBB1_290
# BB#287:                               # %if.then.1144.i
	testl	%eax, %eax
	jne	.LBB1_290
# BB#288:                               # %if.then.1154.i
	movzbl	3(%r12), %eax
	addl	$-71, %eax
	jmp	.LBB1_290
.LBB1_280:
	movq	%rbx, %r12
	jmp	.LBB1_292
.LBB1_289:                              # %cond.false.1163.i
	movl	$.L.str.87, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB1_290:                              # %cond.end.1168.i
	testl	%eax, %eax
	movq	%rbx, %r12
	jne	.LBB1_292
# BB#291:                               # %if.then.1171.i
	movq	%r12, %rbx
	movq	24(%r14), %r12
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbx, %r12
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-15, 68(%rsp)          # 4-byte Folded Spill
.LBB1_292:                              # %if.end.1177.i
	cmpl	$0, 8860(%r14)
	je	.LBB1_295
# BB#293:                               # %land.lhs.true.1179.i
	cmpl	$2000, 8848(%r14)       # imm = 0x7D0
	jne	.LBB1_295
# BB#294:                               # %if.then.1183.i
	movl	$2010, 8848(%r14)       # imm = 0x7DA
.LBB1_295:                              # %if.end.1185.i
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	js	.LBB1_143
# BB#296:                               # %if.end.1189.i
	movq	%r14, %rbp
	movl	832(%rbp), %eax
	movl	836(%rbp), %ecx
	cmpl	$14670, %ecx            # imm = 0x394E
	jg	.LBB1_298
# BB#297:                               # %if.end.1189.i
	cmpl	$14671, %eax            # imm = 0x394F
	jl	.LBB1_299
.LBB1_298:                              # %if.then.1195.i
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI1_12(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	cmoval	%ecx, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	movq	%rbp, %rdi
	callq	gx_device_set_resolution
.LBB1_299:                              # %if.end.1221.i
	movq	9472(%rbp), %rax
	cmpq	9472(%r12), %rax
	je	.LBB1_302
# BB#300:                               # %if.then.1226.i
	movq	14088(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_302
# BB#301:                               # %if.then.1229.i
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	gp_fseek_64
	movq	%rbp, %rdi
	callq	pdf_initialize_ids
.LBB1_302:                              # %if.end.1234.i
	movss	108(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI1_13(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_14(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI1_15(%rip), %xmm0
	movsd	%xmm0, 9368(%rbp)
	movl	9624(%rbp), %edx
	cmpl	9624(%r12), %edx
	movq	56(%rsp), %r15          # 8-byte Reload
	jne	.LBB1_305
# BB#303:                               # %lor.lhs.false.1246.i
	testl	%edx, %edx
	je	.LBB1_309
# BB#304:                               # %land.lhs.true.1251.i
	movq	9616(%rbp), %rdi
	movq	9616(%r12), %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_309
.LBB1_305:                              # %if.then.1262.i
	cmpl	$0, 84(%rbp)
	je	.LBB1_309
# BB#306:                               # %if.then.1264.i
	cmpq	$0, 928(%rbp)
	je	.LBB1_307
# BB#308:                               # %if.else.1269.i
	movq	%r12, %r14
	movq	24(%rbp), %r12
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r14, %r12
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	$.L.str.89, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB1_309:                              # %if.end.1277.i
	xorl	%ebx, %ebx
	cmpl	$0, 30764(%rbp)
	je	.LBB1_312
# BB#310:                               # %land.lhs.true.1279.i
	cmpl	$0, 9360(%rbp)
	je	.LBB1_312
# BB#311:                               # %if.then.1282.i
	movq	%r12, %r14
	movq	24(%rbp), %r12
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r14, %r12
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.90, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$0, 30764(%rbp)
	jmp	.LBB1_312
.LBB1_307:                              # %if.then.1267.i
	movq	%r12, %rdi
	callq	gs_closedevice
	xorl	%ebx, %ebx
	jmp	.LBB1_312
.Lfunc_end1:
	.size	gdev_pdf_put_params, .Lfunc_end1-gdev_pdf_put_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_170
	.quad	.LBB1_161
	.quad	.LBB1_166
	.quad	.LBB1_170

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CoreDistVersion"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"CompatibilityLevel"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ForOPDFRead"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pdfmark"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DSC"
	.size	.L.str.4, 4

	.type	pdf_param_items,@object # @pdf_param_items
	.section	.rodata,"a",@progbits
	.align	16
pdf_param_items:
	.quad	.L.str.6
	.byte	2                       # 0x2
	.zero	1
	.short	9376                    # 0x24a0
	.zero	4
	.quad	.L.str.7
	.byte	2                       # 0x2
	.zero	1
	.short	9380                    # 0x24a4
	.zero	4
	.quad	.L.str.8
	.byte	1                       # 0x1
	.zero	1
	.short	9384                    # 0x24a8
	.zero	4
	.quad	.L.str.9
	.byte	1                       # 0x1
	.zero	1
	.short	9388                    # 0x24ac
	.zero	4
	.quad	.L.str.10
	.byte	1                       # 0x1
	.zero	1
	.short	9392                    # 0x24b0
	.zero	4
	.quad	.L.str.11
	.byte	1                       # 0x1
	.zero	1
	.short	9396                    # 0x24b4
	.zero	4
	.quad	.L.str.12
	.byte	1                       # 0x1
	.zero	1
	.short	9400                    # 0x24b8
	.zero	4
	.quad	.L.str.13
	.byte	1                       # 0x1
	.zero	1
	.short	9404                    # 0x24bc
	.zero	4
	.quad	.L.str.14
	.byte	1                       # 0x1
	.zero	1
	.short	9408                    # 0x24c0
	.zero	4
	.quad	.L.str.15
	.byte	1                       # 0x1
	.zero	1
	.short	9412                    # 0x24c4
	.zero	4
	.quad	.L.str.16
	.byte	1                       # 0x1
	.zero	1
	.short	9416                    # 0x24c8
	.zero	4
	.quad	.L.str.17
	.byte	2                       # 0x2
	.zero	1
	.short	9420                    # 0x24cc
	.zero	4
	.quad	.L.str.18
	.byte	1                       # 0x1
	.zero	1
	.short	9460                    # 0x24f4
	.zero	4
	.quad	.L.str.19
	.byte	1                       # 0x1
	.zero	1
	.short	9464                    # 0x24f8
	.zero	4
	.quad	.L.str.20
	.byte	3                       # 0x3
	.zero	1
	.short	9472                    # 0x2500
	.zero	4
	.quad	.L.str.21
	.byte	1                       # 0x1
	.zero	1
	.short	9480                    # 0x2508
	.zero	4
	.quad	.L.str.22
	.byte	1                       # 0x1
	.zero	1
	.short	9484                    # 0x250c
	.zero	4
	.quad	.L.str.23
	.byte	3                       # 0x3
	.zero	1
	.short	9592                    # 0x2578
	.zero	4
	.quad	.L.str.24
	.byte	7                       # 0x7
	.zero	1
	.short	9600                    # 0x2580
	.zero	4
	.quad	.L.str.25
	.byte	5                       # 0x5
	.zero	1
	.short	9616                    # 0x2590
	.zero	4
	.quad	.L.str.26
	.byte	5                       # 0x5
	.zero	1
	.short	9632                    # 0x25a0
	.zero	4
	.quad	.L.str.27
	.byte	2                       # 0x2
	.zero	1
	.short	9648                    # 0x25b0
	.zero	4
	.quad	.L.str.28
	.byte	2                       # 0x2
	.zero	1
	.short	9652                    # 0x25b4
	.zero	4
	.quad	.L.str.29
	.byte	2                       # 0x2
	.zero	1
	.short	9656                    # 0x25b8
	.zero	4
	.quad	.L.str.30
	.byte	5                       # 0x5
	.zero	1
	.short	9664                    # 0x25c0
	.zero	4
	.quad	.L.str.31
	.byte	1                       # 0x1
	.zero	1
	.short	9548                    # 0x254c
	.zero	4
	.quad	.L.str.32
	.byte	1                       # 0x1
	.zero	1
	.short	9556                    # 0x2554
	.zero	4
	.quad	.L.str.33
	.byte	2                       # 0x2
	.zero	1
	.short	9576                    # 0x2568
	.zero	4
	.quad	.L.str.34
	.byte	2                       # 0x2
	.zero	1
	.short	9584                    # 0x2570
	.zero	4
	.quad	.L.str.35
	.byte	1                       # 0x1
	.zero	1
	.short	8860                    # 0x229c
	.zero	4
	.quad	.L.str.36
	.byte	1                       # 0x1
	.zero	1
	.short	8864                    # 0x22a0
	.zero	4
	.quad	.L.str.37
	.byte	1                       # 0x1
	.zero	1
	.short	9552                    # 0x2550
	.zero	4
	.quad	.L.str.38
	.byte	1                       # 0x1
	.zero	1
	.short	9532                    # 0x253c
	.zero	4
	.quad	.L.str.39
	.byte	1                       # 0x1
	.zero	1
	.short	9560                    # 0x2558
	.zero	4
	.quad	.L.str.40
	.byte	2                       # 0x2
	.zero	1
	.short	9564                    # 0x255c
	.zero	4
	.quad	.L.str.41
	.byte	5                       # 0x5
	.zero	1
	.short	9488                    # 0x2510
	.zero	4
	.quad	.L.str.42
	.byte	5                       # 0x5
	.zero	1
	.short	9504                    # 0x2520
	.zero	4
	.quad	.L.str.43
	.byte	2                       # 0x2
	.zero	1
	.short	9520                    # 0x2530
	.zero	4
	.quad	.L.str.44
	.byte	8                       # 0x8
	.zero	1
	.short	9424                    # 0x24d0
	.zero	4
	.quad	.L.str.45
	.byte	1                       # 0x1
	.zero	1
	.short	9456                    # 0x24f0
	.zero	4
	.quad	.L.str.46
	.byte	8                       # 0x8
	.zero	1
	.short	9440                    # 0x24e0
	.zero	4
	.quad	.L.str.47
	.byte	1                       # 0x1
	.zero	1
	.short	30696                   # 0x77e8
	.zero	4
	.quad	.L.str.48
	.byte	1                       # 0x1
	.zero	1
	.short	30700                   # 0x77ec
	.zero	4
	.quad	.L.str.49
	.byte	1                       # 0x1
	.zero	1
	.short	30704                   # 0x77f0
	.zero	4
	.quad	.L.str.50
	.byte	1                       # 0x1
	.zero	1
	.short	30708                   # 0x77f4
	.zero	4
	.quad	.L.str.51
	.byte	1                       # 0x1
	.zero	1
	.short	30712                   # 0x77f8
	.zero	4
	.quad	.L.str.52
	.byte	1                       # 0x1
	.zero	1
	.short	30716                   # 0x77fc
	.zero	4
	.quad	.L.str.53
	.byte	1                       # 0x1
	.zero	1
	.short	30720                   # 0x7800
	.zero	4
	.quad	.L.str.54
	.byte	2                       # 0x2
	.zero	1
	.short	30724                   # 0x7804
	.zero	4
	.quad	.L.str.55
	.byte	1                       # 0x1
	.zero	1
	.short	30728                   # 0x7808
	.zero	4
	.quad	.L.str.56
	.byte	1                       # 0x1
	.zero	1
	.short	30732                   # 0x780c
	.zero	4
	.quad	.L.str.57
	.byte	1                       # 0x1
	.zero	1
	.short	30736                   # 0x7810
	.zero	4
	.quad	.L.str.58
	.byte	1                       # 0x1
	.zero	1
	.short	30740                   # 0x7814
	.zero	4
	.quad	.L.str.59
	.byte	1                       # 0x1
	.zero	1
	.short	30744                   # 0x7818
	.zero	4
	.quad	.L.str.60
	.byte	1                       # 0x1
	.zero	1
	.short	30748                   # 0x781c
	.zero	4
	.quad	.L.str.61
	.byte	1                       # 0x1
	.zero	1
	.short	30752                   # 0x7820
	.zero	4
	.quad	.L.str.62
	.byte	1                       # 0x1
	.zero	1
	.short	30756                   # 0x7824
	.zero	4
	.quad	.L.str.63
	.byte	1                       # 0x1
	.zero	1
	.short	30760                   # 0x7828
	.zero	4
	.quad	.L.str.64
	.byte	1                       # 0x1
	.zero	1
	.short	30764                   # 0x782c
	.zero	4
	.quad	.L.str.65
	.byte	2                       # 0x2
	.zero	1
	.short	30768                   # 0x7830
	.zero	4
	.quad	.L.str.66
	.byte	2                       # 0x2
	.zero	1
	.short	30772                   # 0x7834
	.zero	4
	.zero	16
	.size	pdf_param_items, 992

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"saved gx_device_pdf"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"PDFEndPage"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"PDFStartPage"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Optimize"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ParseDSCCommentsForDocInfo"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ParseDSCComments"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"EmitDSCWarnings"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"CreateJobTicket"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"PreserveEPSInfo"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"AutoPositionEPSFiles"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"PreserveCopyPage"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"UsePrologue"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"OffOptimizations"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ReAssignCharacters"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ReEncodeCharacters"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"FirstObjectNumber"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"CompressFonts"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"PrintStatistics"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"MaxInlineImageSize"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"DSCEncodingToUnicode"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"OwnerPassword"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"UserPassword"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"KeyLength"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Permissions"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"EncryptionR"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"NoEncrypt"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"ProduceDSC"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"PatternImagemask"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"MaxClipPathSize"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"MaxShadingBitmapSize"
	.size	.L.str.34, 21

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"HaveTrueTypes"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"HaveCIDSystem"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"HaveTransparency"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"CompressEntireFile"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"PDFX"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"PDFA"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"DocumentUUID"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"InstanceUUID"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"DocumentTimeSeq"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"PDFXTrimBoxToMediaBoxOffset"
	.size	.L.str.44, 28

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"PDFXSetBleedBoxToMediaBox"
	.size	.L.str.45, 26

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"PDFXBleedBoxToTrimBoxOffset"
	.size	.L.str.46, 28

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"SetPageSize"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"RotatePages"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"FitPages"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"CenterPages"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"DoNumCopies"
	.size	.L.str.51, 12

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"PreserveSeparation"
	.size	.L.str.52, 19

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"PreserveDeviceN"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"PDFACompatibilityPolicy"
	.size	.L.str.54, 24

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"DetectDuplicateImages"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"AllowIncrementalCFF"
	.size	.L.str.56, 20

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"WantsToUnicode"
	.size	.L.str.57, 15

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"AllowPSRepeatFunctions"
	.size	.L.str.58, 23

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"IsDistiller"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"PreserveSMask"
	.size	.L.str.60, 14

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"PreserveTrMode"
	.size	.L.str.61, 15

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"NoT3CCITT"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"PDFUseOldCMS"
	.size	.L.str.63, 13

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"FastWebView"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"FirstPage"
	.size	.L.str.65, 10

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"LastPage"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"pdfpagelabels"
	.size	.L.str.67, 14

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"/PageLabels"
	.size	.L.str.68, 12

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"LockDistillerParams"
	.size	.L.str.69, 20

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	".EmbedFontObjects"
	.size	.L.str.70, 18

	.type	gdev_pdf_put_params_impl.pcm_names,@object # @gdev_pdf_put_params_impl.pcm_names
	.section	.rodata,"a",@progbits
	.align	16
gdev_pdf_put_params_impl.pcm_names:
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	0
	.size	gdev_pdf_put_params_impl.pcm_names, 40

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"DeviceGray"
	.size	.L.str.71, 11

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"DeviceRGB"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"DeviceCMYK"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"DeviceN"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"ProcessColorModel"
	.size	.L.str.75, 18

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"ConvertCMYKImagesToRGB is not compatible with ColorConversionStrategy of CMYK\n"
	.size	.L.str.76, 79

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"ConvertCMYKImagesToRGB is not compatible with ColorConversionStrategy of Gray\n"
	.size	.L.str.77, 79

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"reset default profile\n"
	.size	.L.str.78, 23

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"ColorConversionStrategy is incompatible to ProcessColorModel.\n"
	.size	.L.str.79, 63

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Set UseCIEColor for UseDeviceIndependentColor to work properly.\n"
	.size	.L.str.80, 65

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"UseDeviceDependentColorForImages is not supported. Use UseDeviceIndependentColor.\n"
	.size	.L.str.81, 83

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Replacing the deprecated device parameter value UseDeviceDependentColor with CMYK.\n"
	.size	.L.str.82, 84

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Replacing the deprecated device parameter value UseDeviceDependentColor with sRGB.\n"
	.size	.L.str.83, 84

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Replacing the deprecated device parameter value UseDeviceDependentColor with Gray.\n"
	.size	.L.str.84, 84

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"JPXEncode"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"JPXEncode requires CompatibilityLevel >= 1.5 .\n"
	.size	.L.str.86, 48

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"JBIG2Encode"
	.size	.L.str.87, 12

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"JBIG2Encode requires CompatibilityLevel >= 1.4 .\n"
	.size	.L.str.88, 50

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Owner Password changed mid-job, ignoring.\n"
	.size	.L.str.89, 43

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Can't linearise PostScript output, ignoring\n"
	.size	.L.str.90, 45

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Creator"
	.size	.L.str.91, 8

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"/Creator"
	.size	.L.str.92, 9

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Title"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"/Title"
	.size	.L.str.94, 7

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"For"
	.size	.L.str.95, 4

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"/Author"
	.size	.L.str.96, 8

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Orientation"
	.size	.L.str.97, 12

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"PageOrientation"
	.size	.L.str.98, 16

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"ViewingOrientation"
	.size	.L.str.99, 19

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"PageViewingOrientation"
	.size	.L.str.100, 23

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"[%g %g %g %g]"
	.size	.L.str.101, 14

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"EPSF"
	.size	.L.str.102, 5

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"BoundingBox"
	.size	.L.str.103, 12

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"PageBoundingBox"
	.size	.L.str.104, 16

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"[%lg %lg %lg %lg]"
	.size	.L.str.105, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
