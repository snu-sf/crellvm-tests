	.text
	.file	"jcparam.bc"
	.globl	jpeg_add_quant_table
	.align	16, 0x90
	.type	jpeg_add_quant_table,@function
jpeg_add_quant_table:                   # @jpeg_add_quant_table
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movl	%r8d, %r13d
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movl	%esi, %r12d
	movq	%rdi, %r15
	movl	36(%r15), %eax
	cmpl	$100, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%r15), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r15, %rdi
	callq	*(%rcx)
.LBB0_2:                                # %if.end
	cmpl	$4, %r12d
	jb	.LBB0_4
# BB#3:                                 # %if.then.7
	movq	(%r15), %rax
	movl	$32, 40(%rax)
	movl	%r12d, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_4:                                # %if.end.16
	movslq	%r12d, %r12
	movq	112(%r15,%r12,8), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_6
# BB#5:                                 # %if.then.19
	movq	%r15, %rdi
	callq	jpeg_alloc_quant_table
	movq	%rax, %rcx
	movq	%rcx, 112(%r15,%r12,8)
.LBB0_6:                                # %for.cond.preheader
	movslq	%r14d, %rsi
	xorl	%edi, %edi
	movabsq	$-6640827866535438581, %r8 # imm = 0xA3D70A3D70A3D70B
	movl	$1, %r9d
	movw	$1, %r10w
	movl	$32767, %r11d           # imm = 0x7FFF
	movw	$32767, %r14w           # imm = 0x7FFF
	movw	$255, %r15w
	.align	16, 0x90
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdi,4), %ebp
	imulq	%rsi, %rbp
	leaq	50(%rbp), %rax
	imulq	%r8
	leaq	50(%rdx,%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$6, %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	movq	%rax, %rdx
	cmovleq	%r9, %rdx
	cmovlew	%r10w, %ax
	cmpq	$32767, %rdx            # imm = 0x7FFF
	cmovgq	%r11, %rdx
	cmovgw	%r14w, %ax
	cmpq	$255, %rdx
	movw	%ax, %dx
	cmovgw	%r15w, %dx
	testl	%r13d, %r13d
	cmovew	%ax, %dx
	movw	%dx, (%rcx,%rdi,2)
	incq	%rdi
	cmpq	$64, %rdi
	jne	.LBB0_7
# BB#8:                                 # %for.end
	movl	$0, 128(%rcx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jpeg_add_quant_table, .Lfunc_end0-jpeg_add_quant_table
	.cfi_endproc

	.globl	jpeg_default_qtables
	.align	16, 0x90
	.type	jpeg_default_qtables,@function
jpeg_default_qtables:                   # @jpeg_default_qtables
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
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	movslq	144(%r14), %r12
	movl	36(%r14), %eax
	cmpl	$100, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then.i
	movq	(%r14), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r14, %rdi
	callq	*(%rcx)
.LBB1_2:                                # %if.end.i
	movq	112(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB1_4
# BB#3:                                 # %if.then.19.i
	movq	%r14, %rdi
	callq	jpeg_alloc_quant_table
	movq	%rax, %rcx
	movq	%rcx, 112(%r14)
.LBB1_4:                                # %for.cond.preheader.i
	xorl	%esi, %esi
	movabsq	$-6640827866535438581, %r15 # imm = 0xA3D70A3D70A3D70B
	movl	$1, %r8d
	movw	$1, %r9w
	movl	$32767, %r10d           # imm = 0x7FFF
	movw	$32767, %r11w           # imm = 0x7FFF
	movw	$255, %bp
	.align	16, 0x90
.LBB1_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	std_luminance_quant_tbl(,%rsi,4), %edi
	imulq	%r12, %rdi
	leaq	50(%rdi), %rax
	imulq	%r15
	leaq	50(%rdx,%rdi), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$6, %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	movq	%rax, %rdx
	cmovleq	%r8, %rdx
	cmovlew	%r9w, %ax
	cmpq	$32767, %rdx            # imm = 0x7FFF
	cmovgq	%r10, %rdx
	cmovgw	%r11w, %ax
	cmpq	$255, %rdx
	movw	%ax, %dx
	cmovgw	%bp, %dx
	testl	%ebx, %ebx
	cmovew	%ax, %dx
	movw	%dx, (%rcx,%rsi,2)
	incq	%rsi
	cmpq	$64, %rsi
	jne	.LBB1_5
# BB#6:                                 # %jpeg_add_quant_table.exit
	movl	$0, 128(%rcx)
	movslq	148(%r14), %r12
	movl	36(%r14), %eax
	cmpl	$100, %eax
	je	.LBB1_8
# BB#7:                                 # %if.then.i.11
	movq	(%r14), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r14, %rdi
	callq	*(%rcx)
.LBB1_8:                                # %if.end.i.12
	movq	120(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB1_10
# BB#9:                                 # %if.then.19.i.16
	movq	%r14, %rdi
	callq	jpeg_alloc_quant_table
	movq	%rax, %rcx
	movq	%rcx, 120(%r14)
.LBB1_10:                               # %for.cond.preheader.i.19
	xorl	%esi, %esi
	movl	$1, %r8d
	movw	$1, %r9w
	movl	$32767, %r10d           # imm = 0x7FFF
	movw	$32767, %r11w           # imm = 0x7FFF
	movw	$255, %di
	.align	16, 0x90
.LBB1_11:                               # %for.body.i.36
                                        # =>This Inner Loop Header: Depth=1
	movl	std_chrominance_quant_tbl(,%rsi,4), %ebp
	imulq	%r12, %rbp
	leaq	50(%rbp), %rax
	imulq	%r15
	leaq	50(%rdx,%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$6, %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	movq	%rax, %rdx
	cmovleq	%r8, %rdx
	cmovlew	%r9w, %ax
	cmpq	$32767, %rdx            # imm = 0x7FFF
	cmovgq	%r10, %rdx
	cmovgw	%r11w, %ax
	cmpq	$255, %rdx
	movw	%ax, %dx
	cmovgw	%di, %dx
	testl	%ebx, %ebx
	cmovew	%ax, %dx
	movw	%dx, (%rcx,%rsi,2)
	incq	%rsi
	cmpq	$64, %rsi
	jne	.LBB1_11
# BB#12:                                # %jpeg_add_quant_table.exit38
	movl	$0, 128(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jpeg_default_qtables, .Lfunc_end1-jpeg_default_qtables
	.cfi_endproc

	.globl	jpeg_set_linear_quality
	.align	16, 0x90
	.type	jpeg_set_linear_quality,@function
jpeg_set_linear_quality:                # @jpeg_set_linear_quality
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 48
.Ltmp28:
	.cfi_offset %rbx, -48
.Ltmp29:
	.cfi_offset %r12, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	36(%r14), %eax
	cmpl	$100, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then.i
	movq	(%r14), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r14, %rdi
	callq	*(%rcx)
.LBB2_2:                                # %if.end.i
	movq	112(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB2_4
# BB#3:                                 # %if.then.19.i
	movq	%r14, %rdi
	callq	jpeg_alloc_quant_table
	movq	%rax, %rcx
	movq	%rcx, 112(%r14)
.LBB2_4:                                # %for.cond.preheader.i
	movslq	%ebp, %rbp
	xorl	%esi, %esi
	movabsq	$-6640827866535438581, %r15 # imm = 0xA3D70A3D70A3D70B
	movl	$1, %r8d
	movw	$1, %r9w
	movl	$32767, %r10d           # imm = 0x7FFF
	movw	$32767, %r11w           # imm = 0x7FFF
	movw	$255, %r12w
	.align	16, 0x90
.LBB2_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	std_luminance_quant_tbl(,%rsi,4), %edi
	imulq	%rbp, %rdi
	leaq	50(%rdi), %rax
	imulq	%r15
	leaq	50(%rdx,%rdi), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$6, %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	movq	%rax, %rdx
	cmovleq	%r8, %rdx
	cmovlew	%r9w, %ax
	cmpq	$32767, %rdx            # imm = 0x7FFF
	cmovgq	%r10, %rdx
	cmovgw	%r11w, %ax
	cmpq	$255, %rdx
	movw	%ax, %dx
	cmovgw	%r12w, %dx
	testl	%ebx, %ebx
	cmovew	%ax, %dx
	movw	%dx, (%rcx,%rsi,2)
	incq	%rsi
	cmpq	$64, %rsi
	jne	.LBB2_5
# BB#6:                                 # %jpeg_add_quant_table.exit
	movl	$0, 128(%rcx)
	movl	36(%r14), %eax
	cmpl	$100, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.i.10
	movq	(%r14), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r14, %rdi
	callq	*(%rcx)
.LBB2_8:                                # %if.end.i.11
	movq	120(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB2_10
# BB#9:                                 # %if.then.19.i.15
	movq	%r14, %rdi
	callq	jpeg_alloc_quant_table
	movq	%rax, %rcx
	movq	%rcx, 120(%r14)
.LBB2_10:                               # %for.cond.preheader.i.18
	xorl	%esi, %esi
	movl	$1, %r8d
	movw	$1, %r9w
	movl	$32767, %r10d           # imm = 0x7FFF
	movw	$32767, %r11w           # imm = 0x7FFF
	movw	$255, %r14w
	.align	16, 0x90
.LBB2_11:                               # %for.body.i.35
                                        # =>This Inner Loop Header: Depth=1
	movl	std_chrominance_quant_tbl(,%rsi,4), %edi
	imulq	%rbp, %rdi
	leaq	50(%rdi), %rax
	imulq	%r15
	leaq	50(%rdx,%rdi), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$6, %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	movq	%rax, %rdx
	cmovleq	%r8, %rdx
	cmovlew	%r9w, %ax
	cmpq	$32767, %rdx            # imm = 0x7FFF
	cmovgq	%r10, %rdx
	cmovgw	%r11w, %ax
	cmpq	$255, %rdx
	movw	%ax, %dx
	cmovgw	%r14w, %dx
	testl	%ebx, %ebx
	cmovew	%ax, %dx
	movw	%dx, (%rcx,%rsi,2)
	incq	%rsi
	cmpq	$64, %rsi
	jne	.LBB2_11
# BB#12:                                # %jpeg_add_quant_table.exit37
	movl	$0, 128(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jpeg_set_linear_quality, .Lfunc_end2-jpeg_set_linear_quality
	.cfi_endproc

	.globl	jpeg_quality_scaling
	.align	16, 0x90
	.type	jpeg_quality_scaling,@function
jpeg_quality_scaling:                   # @jpeg_quality_scaling
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edi, %edi
	movl	$1, %eax
	cmovgl	%edi, %eax
	cmpl	$100, %eax
	movl	$100, %ecx
	cmovlel	%eax, %ecx
	cmpl	$49, %ecx
	jg	.LBB3_2
# BB#1:                                 # %if.then.5
	movl	$5000, %eax             # imm = 0x1388
	xorl	%edx, %edx
	idivl	%ecx
	retq
.LBB3_2:                                # %if.else
	addl	%ecx, %ecx
	movl	$200, %eax
	subl	%ecx, %eax
	retq
.Lfunc_end3:
	.size	jpeg_quality_scaling, .Lfunc_end3-jpeg_quality_scaling
	.cfi_endproc

	.globl	jpeg_set_quality
	.align	16, 0x90
	.type	jpeg_set_quality,@function
jpeg_set_quality:                       # @jpeg_set_quality
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	testl	%esi, %esi
	movl	$1, %eax
	cmovgl	%esi, %eax
	cmpl	$100, %eax
	movl	$100, %ecx
	cmovlel	%eax, %ecx
	cmpl	$49, %ecx
	jg	.LBB4_2
# BB#1:                                 # %if.then.5.i
	movl	$5000, %eax             # imm = 0x1388
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %esi
	movl	%r8d, %edx
	jmp	jpeg_set_linear_quality # TAILCALL
.LBB4_2:                                # %if.else.i
	addl	%ecx, %ecx
	movl	$200, %esi
	subl	%ecx, %esi
	movl	%r8d, %edx
	jmp	jpeg_set_linear_quality # TAILCALL
.Lfunc_end4:
	.size	jpeg_set_quality, .Lfunc_end4-jpeg_set_quality
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.text
	.globl	jpeg_set_defaults
	.align	16, 0x90
	.type	jpeg_set_defaults,@function
jpeg_set_defaults:                      # @jpeg_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB5_2:                                # %if.end
	cmpq	$0, 104(%rbx)
	jne	.LBB5_4
# BB#3:                                 # %if.then.6
	movq	8(%rbx), %rax
	xorl	%esi, %esi
	movl	$960, %edx              # imm = 0x3C0
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, 104(%rbx)
.LBB5_4:                                # %if.end.8
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 72(%rbx)
	movl	$8, 88(%rbx)
	movl	$50, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	jpeg_set_linear_quality
	leaq	160(%rbx), %rsi
	movl	$std_huff_tables.bits_dc_luminance, %edx
	movl	$std_huff_tables.val_dc_luminance, %ecx
	movq	%rbx, %rdi
	callq	add_huff_table
	leaq	192(%rbx), %rsi
	movl	$std_huff_tables.bits_ac_luminance, %edx
	movl	$std_huff_tables.val_ac_luminance, %ecx
	movq	%rbx, %rdi
	callq	add_huff_table
	leaq	168(%rbx), %rsi
	movl	$std_huff_tables.bits_dc_chrominance, %edx
	movl	$std_huff_tables.val_dc_chrominance, %ecx
	movq	%rbx, %rdi
	callq	add_huff_table
	leaq	200(%rbx), %rsi
	movl	$std_huff_tables.bits_ac_chrominance, %edx
	movl	$std_huff_tables.val_ac_chrominance, %ecx
	movq	%rbx, %rdi
	callq	add_huff_table
	movb	$0, 224(%rbx)
	movb	$1, 240(%rbx)
	movb	$5, 256(%rbx)
	movb	$0, 225(%rbx)
	movb	$1, 241(%rbx)
	movb	$5, 257(%rbx)
	movb	$0, 226(%rbx)
	movb	$1, 242(%rbx)
	movb	$5, 258(%rbx)
	movb	$0, 227(%rbx)
	movb	$1, 243(%rbx)
	movb	$5, 259(%rbx)
	movb	$0, 228(%rbx)
	movb	$1, 244(%rbx)
	movb	$5, 260(%rbx)
	movb	$0, 229(%rbx)
	movb	$1, 245(%rbx)
	movb	$5, 261(%rbx)
	movb	$0, 230(%rbx)
	movb	$1, 246(%rbx)
	movb	$5, 262(%rbx)
	movb	$0, 231(%rbx)
	movb	$1, 247(%rbx)
	movb	$5, 263(%rbx)
	movb	$0, 232(%rbx)
	movb	$1, 248(%rbx)
	movb	$5, 264(%rbx)
	movb	$0, 233(%rbx)
	movb	$1, 249(%rbx)
	movb	$5, 265(%rbx)
	movb	$0, 234(%rbx)
	movb	$1, 250(%rbx)
	movb	$5, 266(%rbx)
	movb	$0, 235(%rbx)
	movb	$1, 251(%rbx)
	movb	$5, 267(%rbx)
	movb	$0, 236(%rbx)
	movb	$1, 252(%rbx)
	movb	$5, 268(%rbx)
	movb	$0, 237(%rbx)
	movb	$1, 253(%rbx)
	movb	$5, 269(%rbx)
	movb	$0, 238(%rbx)
	movb	$1, 254(%rbx)
	movb	$5, 270(%rbx)
	movb	$0, 239(%rbx)
	movb	$1, 255(%rbx)
	movb	$5, 271(%rbx)
	movq	$0, 280(%rbx)
	movl	$0, 272(%rbx)
	movl	$0, 288(%rbx)
	cmpl	$8, 88(%rbx)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, 292(%rbx)
	movaps	.LCPI5_0(%rip), %xmm0   # xmm0 = [0,0,1,0]
	movups	%xmm0, 296(%rbx)
	movl	$0, 312(%rbx)
	movl	$0, 316(%rbx)
	movl	$0, 320(%rbx)
	movb	$1, 328(%rbx)
	movb	$1, 329(%rbx)
	movb	$0, 330(%rbx)
	movw	$1, 332(%rbx)
	movw	$1, 334(%rbx)
	movl	$0, 340(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	jpeg_default_colorspace # TAILCALL
.Lfunc_end5:
	.size	jpeg_set_defaults, .Lfunc_end5-jpeg_set_defaults
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI6_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI6_2:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	jpeg_default_colorspace
	.align	16, 0x90
	.type	jpeg_default_colorspace,@function
jpeg_default_colorspace:                # @jpeg_default_colorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	60(%rbx), %eax
	cmpq	$7, %rax
	jbe	.LBB6_1
# BB#33:                                # %sw.default
	movq	(%rbx), %rax
	movl	$10, 40(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*(%rax)                 # TAILCALL
.LBB6_1:                                # %entry
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_15:                               # %sw.bb.2
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB6_17
# BB#16:                                # %if.then.i.30
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_17:                               # %jpeg_set_colorspace.exit35
	movl	$0, 336(%rbx)
	movl	$1, 324(%rbx)
	movabsq	$12884901891, %rax      # imm = 0x300000003
	movq	%rax, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$1, (%rax)
	movaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [2,2,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$2, 96(%rax)
	movaps	.LCPI6_1(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movups	%xmm0, 104(%rax)
	movl	$1, 120(%rax)
	movl	$3, 192(%rax)
	jmp	.LBB6_18
.LBB6_2:                                # %sw.bb
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.i
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_4:                                # %if.end.i
	movl	$0, 96(%rbx)
	movl	$0, 324(%rbx)
	movl	$0, 336(%rbx)
	movl	56(%rbx), %edx
	movl	%edx, 92(%rbx)
	leal	-1(%rdx), %eax
	cmpl	$10, %eax
	jb	.LBB6_6
# BB#5:                                 # %if.then.8.i
	movq	(%rbx), %rax
	movl	$27, 40(%rax)
	movl	%edx, 44(%rax)
	movl	$10, 48(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	92(%rbx), %edx
.LBB6_6:                                # %for.cond.preheader.i
	testl	%edx, %edx
	jle	.LBB6_29
# BB#7:                                 # %for.body.lr.ph.i
	movq	104(%rbx), %rax
	xorl	%ecx, %ecx
	testb	$1, %dl
	je	.LBB6_9
# BB#8:                                 # %for.body.i.prol
	movl	$0, (%rax)
	movaps	.LCPI6_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$1, %ecx
.LBB6_9:                                # %for.body.lr.ph.i.split
	cmpl	$1, %edx
	je	.LBB6_29
# BB#10:                                # %for.body.lr.ph.i.split.split
	movslq	%edx, %rdx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movaps	.LCPI6_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	.align	16, 0x90
.LBB6_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, (%rax)
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	leal	1(%rcx), %esi
	movl	%esi, 96(%rax)
	movups	%xmm0, 104(%rax)
	movl	$0, 120(%rax)
	addq	$2, %rcx
	addq	$192, %rax
	cmpq	%rdx, %rcx
	jne	.LBB6_11
	jmp	.LBB6_29
.LBB6_12:                               # %sw.bb.1
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB6_14
# BB#13:                                # %if.then.i.18
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_14:                               # %jpeg_set_colorspace.exit23
	movl	$0, 336(%rbx)
	movl	$1, 324(%rbx)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$1, (%rax)
	movaps	.LCPI6_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	popq	%rbx
	retq
.LBB6_19:                               # %sw.bb.4
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB6_21
# BB#20:                                # %if.then.i.74
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_21:                               # %jpeg_set_colorspace.exit79
	movl	$0, 324(%rbx)
	movl	$1, 336(%rbx)
	movabsq	$17179869188, %rax      # imm = 0x400000004
	movq	%rax, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$67, (%rax)
	movaps	.LCPI6_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$77, 96(%rax)
	movups	%xmm0, 104(%rax)
	movl	$0, 120(%rax)
	movl	$89, 192(%rax)
	movl	$1, 200(%rax)
	movl	$1, 204(%rax)
	movl	$0, 208(%rax)
	movl	$0, 212(%rax)
	movl	$0, 216(%rax)
	movl	$75, 288(%rax)
	jmp	.LBB6_22
.LBB6_23:                               # %sw.bb.5
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB6_25
# BB#24:                                # %if.then.i.86
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_25:                               # %jpeg_set_colorspace.exit91
	movl	$0, 324(%rbx)
	movl	$1, 336(%rbx)
	movabsq	$21474836484, %rax      # imm = 0x500000004
	movq	%rax, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$1, (%rax)
	movaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [2,2,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$2, 96(%rax)
	movaps	.LCPI6_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	movups	%xmm1, 104(%rax)
	movl	$1, 120(%rax)
	movl	$3, 192(%rax)
	movl	$1, 200(%rax)
	movl	$1, 204(%rax)
	movl	$1, 208(%rax)
	movl	$1, 212(%rax)
	movl	$1, 216(%rax)
	movl	$4, 288(%rax)
.LBB6_22:                               # %sw.epilog
	movups	%xmm0, 296(%rax)
	movl	$0, 312(%rax)
	popq	%rbx
	retq
.LBB6_26:                               # %sw.bb.6
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB6_28
# BB#27:                                # %if.then.i.98
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_28:                               # %jpeg_set_colorspace.exit103
	movl	$6, 96(%rbx)
	movl	$0, 336(%rbx)
	movl	$1, 324(%rbx)
	movb	$2, 328(%rbx)
	movl	$3, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$114, (%rax)
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	movl	$0, 16(%rax)
	cmpl	$1, 340(%rbx)
	sete	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 20(%rax)
	movl	%ecx, 24(%rax)
	movl	$103, 96(%rax)
	movaps	.LCPI6_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 104(%rax)
	movl	$0, 120(%rax)
	movl	$98, 192(%rax)
	movl	$1, 200(%rax)
	movl	$1, 204(%rax)
	movl	$0, 208(%rax)
	movl	%ecx, 212(%rax)
	movl	%ecx, 216(%rax)
.LBB6_29:                               # %sw.epilog
	popq	%rbx
	retq
.LBB6_30:                               # %sw.bb.7
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB6_32
# BB#31:                                # %if.then.i.110
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_32:                               # %jpeg_set_colorspace.exit115
	movl	$7, 96(%rbx)
	movl	$0, 336(%rbx)
	movl	$1, 324(%rbx)
	movb	$2, 328(%rbx)
	movl	$3, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$1, (%rax)
	movaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [2,2,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$34, 96(%rax)
	movaps	.LCPI6_1(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movups	%xmm0, 104(%rax)
	movl	$1, 120(%rax)
	movl	$35, 192(%rax)
.LBB6_18:                               # %sw.epilog
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	movq	%rcx, 200(%rax)
	movq	%rcx, 208(%rax)
	movl	$1, 216(%rax)
	popq	%rbx
	retq
.Lfunc_end6:
	.size	jpeg_default_colorspace, .Lfunc_end6-jpeg_default_colorspace
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_2
	.quad	.LBB6_12
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_19
	.quad	.LBB6_23
	.quad	.LBB6_26
	.quad	.LBB6_30

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI7_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI7_2:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	jpeg_set_colorspace
	.align	16, 0x90
	.type	jpeg_set_colorspace,@function
jpeg_set_colorspace:                    # @jpeg_set_colorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB7_2:                                # %if.end
	movl	%ebp, 96(%rbx)
	movl	$0, 324(%rbx)
	movl	$0, 336(%rbx)
	movl	%ebp, %eax
	cmpl	$7, %ebp
	jbe	.LBB7_3
# BB#21:                                # %sw.default
	movq	(%rbx), %rax
	movl	$11, 40(%rax)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.LBB7_3:                                # %if.end
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_4:                                # %sw.bb
	movl	56(%rbx), %edx
	movl	%edx, 92(%rbx)
	leal	-1(%rdx), %eax
	cmpl	$10, %eax
	jb	.LBB7_6
# BB#5:                                 # %if.then.8
	movq	(%rbx), %rax
	movl	$27, 40(%rax)
	movl	%edx, 44(%rax)
	movl	$10, 48(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	92(%rbx), %edx
.LBB7_6:                                # %for.cond.preheader
	testl	%edx, %edx
	jle	.LBB7_23
# BB#7:                                 # %for.body.lr.ph
	movq	104(%rbx), %rax
	xorl	%ecx, %ecx
	testb	$1, %dl
	je	.LBB7_9
# BB#8:                                 # %for.body.prol
	movl	$0, (%rax)
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$1, %ecx
.LBB7_9:                                # %for.body.lr.ph.split
	cmpl	$1, %edx
	je	.LBB7_23
# BB#10:                                # %for.body.lr.ph.split.split
	movslq	%edx, %rdx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	.align	16, 0x90
.LBB7_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, (%rax)
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	leal	1(%rcx), %esi
	movl	%esi, 96(%rax)
	movups	%xmm0, 104(%rax)
	movl	$0, 120(%rax)
	addq	$2, %rcx
	addq	$192, %rax
	cmpq	%rdx, %rcx
	jl	.LBB7_11
	jmp	.LBB7_23
.LBB7_22:                               # %sw.bb.26
	movl	$1, 324(%rbx)
	movl	$1, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$1, (%rax)
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	jmp	.LBB7_23
.LBB7_12:                               # %sw.bb.37
	movl	$1, 336(%rbx)
	movl	$3, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$82, (%rax)
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	movl	$0, 16(%rax)
	cmpl	$1, 340(%rbx)
	sete	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 20(%rax)
	movl	%ecx, 24(%rax)
	movl	$71, 96(%rax)
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 104(%rax)
	movl	$0, 120(%rax)
	movl	$66, 192(%rax)
	jmp	.LBB7_13
.LBB7_14:                               # %sw.bb.74
	movl	$1, 324(%rbx)
	movl	$3, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$1, (%rax)
	movaps	.LCPI7_0(%rip), %xmm0   # xmm0 = [2,2,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$2, 96(%rax)
	movaps	.LCPI7_1(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movups	%xmm0, 104(%rax)
	movl	$1, 120(%rax)
	movl	$3, 192(%rax)
	jmp	.LBB7_15
.LBB7_16:                               # %sw.bb.101
	movl	$1, 336(%rbx)
	movl	$4, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$67, (%rax)
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$77, 96(%rax)
	movups	%xmm0, 104(%rax)
	movl	$0, 120(%rax)
	movl	$89, 192(%rax)
	movl	$1, 200(%rax)
	movl	$1, 204(%rax)
	movl	$0, 208(%rax)
	movl	$0, 212(%rax)
	movl	$0, 216(%rax)
	movl	$75, 288(%rax)
	jmp	.LBB7_17
.LBB7_18:                               # %sw.bb.136
	movl	$1, 336(%rbx)
	movl	$4, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$1, (%rax)
	movaps	.LCPI7_0(%rip), %xmm0   # xmm0 = [2,2,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$2, 96(%rax)
	movaps	.LCPI7_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	movups	%xmm1, 104(%rax)
	movl	$1, 120(%rax)
	movl	$3, 192(%rax)
	movl	$1, 200(%rax)
	movl	$1, 204(%rax)
	movl	$1, 208(%rax)
	movl	$1, 212(%rax)
	movl	$1, 216(%rax)
	movl	$4, 288(%rax)
.LBB7_17:                               # %sw.epilog
	movups	%xmm0, 296(%rax)
	movl	$0, 312(%rax)
	jmp	.LBB7_23
.LBB7_19:                               # %sw.bb.171
	movl	$1, 324(%rbx)
	movb	$2, 328(%rbx)
	movl	$3, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$114, (%rax)
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	movl	$0, 16(%rax)
	cmpl	$1, 340(%rbx)
	sete	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 20(%rax)
	movl	%ecx, 24(%rax)
	movl	$103, 96(%rax)
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 104(%rax)
	movl	$0, 120(%rax)
	movl	$98, 192(%rax)
.LBB7_13:                               # %sw.epilog
	movl	$1, 200(%rax)
	movl	$1, 204(%rax)
	movl	$0, 208(%rax)
	movl	%ecx, 212(%rax)
	movl	%ecx, 216(%rax)
	jmp	.LBB7_23
.LBB7_20:                               # %sw.bb.210
	movl	$1, 324(%rbx)
	movb	$2, 328(%rbx)
	movl	$3, 92(%rbx)
	movq	104(%rbx), %rax
	movl	$1, (%rax)
	movaps	.LCPI7_0(%rip), %xmm0   # xmm0 = [2,2,0,0]
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	movl	$34, 96(%rax)
	movaps	.LCPI7_1(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movups	%xmm0, 104(%rax)
	movl	$1, 120(%rax)
	movl	$35, 192(%rax)
.LBB7_15:                               # %sw.epilog
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	movq	%rcx, 200(%rax)
	movq	%rcx, 208(%rax)
	movl	$1, 216(%rax)
.LBB7_23:                               # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	jpeg_set_colorspace, .Lfunc_end7-jpeg_set_colorspace
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_4
	.quad	.LBB7_22
	.quad	.LBB7_12
	.quad	.LBB7_14
	.quad	.LBB7_16
	.quad	.LBB7_18
	.quad	.LBB7_19
	.quad	.LBB7_20

	.text
	.align	16, 0x90
	.type	add_huff_table,@function
add_huff_table:                         # @add_huff_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp49:
	.cfi_offset %r14, -24
.Ltmp50:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	callq	jpeg_alloc_huff_table
	movq	%rax, %rdi
	movq	%rdi, (%r12)
.LBB8_2:                                # %if.end
	movl	$17, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %ecx
	addq	%rax, %rcx
	movzbl	3(%rbx), %eax
	addq	%rcx, %rax
	movzbl	4(%rbx), %ecx
	addq	%rax, %rcx
	movzbl	5(%rbx), %eax
	addq	%rcx, %rax
	movzbl	6(%rbx), %ecx
	addq	%rax, %rcx
	movzbl	7(%rbx), %eax
	addq	%rcx, %rax
	movzbl	8(%rbx), %ecx
	addq	%rax, %rcx
	movzbl	9(%rbx), %eax
	addq	%rcx, %rax
	movzbl	10(%rbx), %ecx
	addq	%rax, %rcx
	movzbl	11(%rbx), %eax
	addq	%rcx, %rax
	movzbl	12(%rbx), %ecx
	addq	%rax, %rcx
	movzbl	13(%rbx), %eax
	addq	%rcx, %rax
	movzbl	14(%rbx), %ecx
	addq	%rax, %rcx
	movzbl	15(%rbx), %eax
	addq	%rcx, %rax
	movzbl	16(%rbx), %ebx
	addq	%rax, %rbx
	leal	-1(%rbx), %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB8_4
# BB#3:                                 # %if.then.8
	movq	(%r15), %rax
	movl	$9, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB8_4:                                # %if.end.10
	movq	(%r12), %rdi
	addq	$17, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	(%r12), %rax
	movl	$0, 276(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	add_huff_table, .Lfunc_end8-add_huff_table
	.cfi_endproc

	.type	std_luminance_quant_tbl,@object # @std_luminance_quant_tbl
	.section	.rodata,"a",@progbits
	.align	16
std_luminance_quant_tbl:
	.long	16                      # 0x10
	.long	11                      # 0xb
	.long	10                      # 0xa
	.long	16                      # 0x10
	.long	24                      # 0x18
	.long	40                      # 0x28
	.long	51                      # 0x33
	.long	61                      # 0x3d
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	14                      # 0xe
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	58                      # 0x3a
	.long	60                      # 0x3c
	.long	55                      # 0x37
	.long	14                      # 0xe
	.long	13                      # 0xd
	.long	16                      # 0x10
	.long	24                      # 0x18
	.long	40                      # 0x28
	.long	57                      # 0x39
	.long	69                      # 0x45
	.long	56                      # 0x38
	.long	14                      # 0xe
	.long	17                      # 0x11
	.long	22                      # 0x16
	.long	29                      # 0x1d
	.long	51                      # 0x33
	.long	87                      # 0x57
	.long	80                      # 0x50
	.long	62                      # 0x3e
	.long	18                      # 0x12
	.long	22                      # 0x16
	.long	37                      # 0x25
	.long	56                      # 0x38
	.long	68                      # 0x44
	.long	109                     # 0x6d
	.long	103                     # 0x67
	.long	77                      # 0x4d
	.long	24                      # 0x18
	.long	35                      # 0x23
	.long	55                      # 0x37
	.long	64                      # 0x40
	.long	81                      # 0x51
	.long	104                     # 0x68
	.long	113                     # 0x71
	.long	92                      # 0x5c
	.long	49                      # 0x31
	.long	64                      # 0x40
	.long	78                      # 0x4e
	.long	87                      # 0x57
	.long	103                     # 0x67
	.long	121                     # 0x79
	.long	120                     # 0x78
	.long	101                     # 0x65
	.long	72                      # 0x48
	.long	92                      # 0x5c
	.long	95                      # 0x5f
	.long	98                      # 0x62
	.long	112                     # 0x70
	.long	100                     # 0x64
	.long	103                     # 0x67
	.long	99                      # 0x63
	.size	std_luminance_quant_tbl, 256

	.type	std_chrominance_quant_tbl,@object # @std_chrominance_quant_tbl
	.align	16
std_chrominance_quant_tbl:
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	47                      # 0x2f
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	18                      # 0x12
	.long	21                      # 0x15
	.long	26                      # 0x1a
	.long	66                      # 0x42
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	24                      # 0x18
	.long	26                      # 0x1a
	.long	56                      # 0x38
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	47                      # 0x2f
	.long	66                      # 0x42
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.long	99                      # 0x63
	.size	std_chrominance_quant_tbl, 256

	.type	std_huff_tables.bits_dc_luminance,@object # @std_huff_tables.bits_dc_luminance
	.align	16
std_huff_tables.bits_dc_luminance:
	.asciz	"\000\000\001\005\001\001\001\001\001\001\000\000\000\000\000\000"
	.size	std_huff_tables.bits_dc_luminance, 17

	.type	std_huff_tables.val_dc_luminance,@object # @std_huff_tables.val_dc_luminance
std_huff_tables.val_dc_luminance:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013"
	.size	std_huff_tables.val_dc_luminance, 12

	.type	std_huff_tables.bits_dc_chrominance,@object # @std_huff_tables.bits_dc_chrominance
	.align	16
std_huff_tables.bits_dc_chrominance:
	.asciz	"\000\000\003\001\001\001\001\001\001\001\001\001\000\000\000\000"
	.size	std_huff_tables.bits_dc_chrominance, 17

	.type	std_huff_tables.val_dc_chrominance,@object # @std_huff_tables.val_dc_chrominance
std_huff_tables.val_dc_chrominance:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013"
	.size	std_huff_tables.val_dc_chrominance, 12

	.type	std_huff_tables.bits_ac_luminance,@object # @std_huff_tables.bits_ac_luminance
	.align	16
std_huff_tables.bits_ac_luminance:
	.ascii	"\000\000\002\001\003\003\002\004\003\005\005\004\004\000\000\001}"
	.size	std_huff_tables.bits_ac_luminance, 17

	.type	std_huff_tables.val_ac_luminance,@object # @std_huff_tables.val_ac_luminance
	.align	16
std_huff_tables.val_ac_luminance:
	.ascii	"\001\002\003\000\004\021\005\022!1A\006\023Qa\007\"q\0242\201\221\241\b#B\261\301\025R\321\360$3br\202\t\n\026\027\030\031\032%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\203\204\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331\332\341\342\343\344\345\346\347\350\351\352\361\362\363\364\365\366\367\370\371\372"
	.size	std_huff_tables.val_ac_luminance, 162

	.type	std_huff_tables.bits_ac_chrominance,@object # @std_huff_tables.bits_ac_chrominance
	.align	16
std_huff_tables.bits_ac_chrominance:
	.ascii	"\000\000\002\001\002\004\004\003\004\007\005\004\004\000\001\002w"
	.size	std_huff_tables.bits_ac_chrominance, 17

	.type	std_huff_tables.val_ac_chrominance,@object # @std_huff_tables.val_ac_chrominance
	.align	16
std_huff_tables.val_ac_chrominance:
	.ascii	"\000\001\002\003\021\004\005!1\006\022AQ\007aq\023\"2\201\b\024B\221\241\261\301\t#3R\360\025br\321\n\026$4\341%\361\027\030\031\032&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\202\203\204\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331\332\342\343\344\345\346\347\350\351\352\362\363\364\365\366\367\370\371\372"
	.size	std_huff_tables.val_ac_chrominance, 162


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
