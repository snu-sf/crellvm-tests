	.text
	.file	"gspaint.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gs_erasepage
	.align	16, 0x90
	.type	gs_erasepage,@function
gs_erasepage:                           # @gs_erasepage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_4
# BB#1:                                 # %if.end
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_setgray
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_3
# BB#2:                                 # %if.then.3
	movq	%rbx, %rdi
	callq	gs_fillpage
	movl	%eax, %ebp
.LBB0_3:                                # %if.end.5
	movq	%rbx, %rdi
	callq	gs_grestore
.LBB0_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_erasepage, .Lfunc_end0-gs_erasepage
	.cfi_endproc

	.globl	gs_fillpage
	.align	16, 0x90
	.type	gs_fillpage,@function
gs_fillpage:                            # @gs_fillpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	callq	gs_currentdevice
	movq	1536(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB1_2
# BB#1:                                 # %entry
	movl	$gx_error_get_color_mapping_procs, %ecx
	cmpq	%rcx, %rdx
	je	.LBB1_2
# BB#3:                                 # %if.end
	movq	%rax, %r14
	movq	1872(%r15), %rdi
	movl	$4, %esi
	callq	*1688(%rdi)
	movq	1760(%r15), %rdx
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, (%rdx)
	jne	.LBB1_6
# BB#4:                                 # %cond.end
	movq	%r15, %rdi
	callq	gx_remap_color
	testl	%eax, %eax
	jne	.LBB1_7
# BB#5:                                 # %cond.end.if.end.14_crit_edge
	movq	1760(%r15), %rdx
.LBB1_6:                                # %if.end.14
	movq	%r14, %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*1632(%rbx)
	testl	%eax, %eax
	js	.LBB1_7
# BB#8:                                 # %if.end.22
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*1160(%rdi)             # TAILCALL
.LBB1_2:                                # %if.then
	movq	24(%rax), %r14
	movq	%rax, %rbx
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-100, %eax
.LBB1_7:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gs_fillpage, .Lfunc_end1-gs_fillpage
	.cfi_endproc

	.globl	gs_fill
	.align	16, 0x90
	.type	gs_fill,@function
gs_fill:                                # @gs_fill
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1872(%rdi), %rax
	movl	$0, 984(%rax)
	movl	$-1, %esi
	jmp	fill_with_rule          # TAILCALL
.Lfunc_end2:
	.size	gs_fill, .Lfunc_end2-gs_fill
	.cfi_endproc

	.align	16, 0x90
	.type	fill_with_rule,@function
fill_with_rule:                         # @fill_with_rule
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 48
.Ltmp16:
	.cfi_offset %rbx, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	1852(%rbx), %edx
	testl	%edx, %edx
	je	.LBB3_1
# BB#30:                                # %if.then
	movq	1680(%rbx), %rsi
	movq	1856(%rbx), %rax
	movq	1680(%rax), %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_add_char_path   # TAILCALL
.LBB3_1:                                # %if.else
	movq	1872(%rbx), %rdi
	callq	gs_is_null_device
	testl	%eax, %eax
	jne	.LBB3_5
# BB#2:                                 # %lor.lhs.false
	cmpq	$0, 1856(%rbx)
	je	.LBB3_6
# BB#3:                                 # %land.lhs.true
	cmpl	$3, 252(%rbx)
	jne	.LBB3_6
# BB#4:                                 # %land.lhs.true.7
	cmpl	$1, 1848(%rbx)
	jne	.LBB3_6
.LBB3_5:                                # %if.then.9
	movq	%rbx, %rdi
	callq	gs_newpath
	xorl	%ebp, %ebp
.LBB3_29:                               # %if.end.17
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_6:                                # %if.else.11
	movq	%rbx, %rdi
	callq	gs_currentdevice
	cmpl	$1, 100(%rax)
	jg	.LBB3_8
# BB#7:                                 # %lor.lhs.false.i
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movzbl	110(%rax), %eax
	cmpl	$255, %eax
	je	.LBB3_8
# BB#9:                                 # %if.else.i
	movq	1872(%rbx), %rdi
	movl	$1, %esi
	jmp	.LBB3_10
.LBB3_8:                                # %if.then.i
	movq	1872(%rbx), %rdi
	movl	$4, %esi
.LBB3_10:                               # %if.end.i
	callq	*1688(%rdi)
	movq	1760(%rbx), %rdi
	movq	(%rdi), %rbp
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, %rbp
	jne	.LBB3_13
# BB#11:                                # %cond.end.i
	movq	%rbx, %rdi
	callq	gx_remap_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB3_27
# BB#12:                                # %cond.end.if.end.16_crit_edge.i
	movq	1760(%rbx), %rdi
	movq	(%rdi), %rbp
.LBB3_13:                               # %if.end.16.i
	movq	1872(%rbx), %rdx
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	*32(%rbp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_29
# BB#14:                                # %if.end.29.i
	movq	1760(%rbx), %rax
	movq	(%rax), %rax
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, %rax
	sete	%bpl
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_16
# BB#15:                                # %if.end.29.i
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, %rax
	jne	.LBB3_18
.LBB3_16:                               # %if.end.42.i
	movq	%rbx, %rdi
	callq	alpha_buffer_bits
	cmpl	$2, %eax
	jl	.LBB3_18
# BB#17:                                # %if.then.45.i
	movzbl	%bpl, %r8d
	movl	300(%rbx), %esi
	movl	304(%rbx), %edx
	movq	%rbx, %rdi
	movl	%eax, %ecx
	callq	alpha_buffer_init
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movl	%r15d, %ebp
	js	.LBB3_29
.LBB3_18:                               # %if.end.53.i
	movq	1680(%rbx), %rdi
	movq	1760(%rbx), %rsi
	movl	300(%rbx), %r8d
	movl	304(%rbx), %r9d
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	gx_fill_path
	movl	%eax, %r14d
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	jle	.LBB3_26
# BB#19:                                # %if.then.64.i
	movq	1872(%rbx), %r15
	movq	%r15, %rdi
	callq	*1176(%r15)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_25
# BB#20:                                # %if.then.i.i
	xorl	%edx, %edx
	xorl	%esi, %esi
	subl	2736(%r15), %esi
	subl	2740(%r15), %edx
	movb	$1, %al
	testl	%r14d, %r14d
	js	.LBB3_24
# BB#21:                                # %land.rhs.i.i
	movq	1680(%rbx), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_22
# BB#23:                                # %land.rhs.4.i.i
	cmpq	$1, (%rax)
	setg	%al
	jmp	.LBB3_24
.LBB3_22:
	xorl	%eax, %eax
.LBB3_24:                               # %land.end.8.i.i
	movzbl	%al, %ecx
	movq	%rbx, %rdi
	callq	scale_paths
.LBB3_25:                               # %alpha_buffer_release.exit.i
	movq	1728(%r15), %rsi
	movq	%rbx, %rdi
	callq	gx_set_device_only
.LBB3_26:                               # %if.end.68.i
	testl	%ebp, %ebp
	cmovnsl	%r14d, %ebp
	testl	%r14d, %r14d
	cmovsl	%r14d, %ebp
.LBB3_27:                               # %do_fill.exit
	testl	%ebp, %ebp
	js	.LBB3_29
# BB#28:                                # %if.then.14
	movq	%rbx, %rdi
	callq	gs_newpath
	jmp	.LBB3_29
.Lfunc_end3:
	.size	fill_with_rule, .Lfunc_end3-fill_with_rule
	.cfi_endproc

	.globl	gs_eofill
	.align	16, 0x90
	.type	gs_eofill,@function
gs_eofill:                              # @gs_eofill
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1872(%rdi), %rax
	movl	$0, 984(%rax)
	movl	$1, %esi
	jmp	fill_with_rule          # TAILCALL
.Lfunc_end4:
	.size	gs_eofill, .Lfunc_end4-gs_eofill
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_1:
	.long	1056964608              # float 0.5
.LCPI5_2:
	.long	1132462080              # float 256
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_3:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gs_stroke
	.align	16, 0x90
	.type	gs_stroke,@function
gs_stroke:                              # @gs_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 40
	subq	$184, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 224
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	1852(%rbx), %edx
	testl	%edx, %edx
	je	.LBB5_5
# BB#1:                                 # %entry
	cmpl	$3, %edx
	jne	.LBB5_4
# BB#2:                                 # %if.then.2
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gs_strokepath_aux
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_59
# BB#3:                                 # %if.then.2.if.end.5_crit_edge
	movl	1852(%rbx), %edx
.LBB5_4:                                # %if.end.5
	movq	1680(%rbx), %rsi
	movq	1856(%rbx), %rax
	movq	1680(%rax), %rdi
	callq	gx_path_add_char_path
.LBB5_5:                                # %if.end.9
	movq	1872(%rbx), %rdi
	callq	gs_is_null_device
	testl	%eax, %eax
	je	.LBB5_7
# BB#6:                                 # %if.then.12
	movq	%rbx, %rdi
	callq	gs_newpath
	xorl	%ebp, %ebp
	jmp	.LBB5_59
.LBB5_7:                                # %if.else
	movq	%rbx, %rdi
	callq	gs_currentdevice
	cmpl	$1, 100(%rax)
	jg	.LBB5_9
# BB#8:                                 # %lor.lhs.false.i
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movzbl	110(%rax), %eax
	cmpl	$255, %eax
	je	.LBB5_9
# BB#10:                                # %if.else.i
	movq	1872(%rbx), %rdi
	movl	$1, %esi
	jmp	.LBB5_11
.LBB5_9:                                # %if.then.i
	movq	1872(%rbx), %rdi
	movl	$4, %esi
.LBB5_11:                               # %if.end.i
	callq	*1688(%rdi)
	movq	1760(%rbx), %rdi
	movq	(%rdi), %rbp
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, %rbp
	jne	.LBB5_14
# BB#12:                                # %cond.end.i
	movq	%rbx, %rdi
	callq	gx_remap_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_57
# BB#13:                                # %cond.end.if.end.16_crit_edge.i
	movq	1760(%rbx), %rdi
	movq	(%rdi), %rbp
.LBB5_14:                               # %if.end.16.i
	movq	1872(%rbx), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	*32(%rbp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_59
# BB#15:                                # %if.end.29.i
	movq	1760(%rbx), %rax
	movq	(%rax), %rax
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, %rax
	sete	%r14b
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	je	.LBB5_17
# BB#16:                                # %if.end.29.i
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, %rax
	jne	.LBB5_55
.LBB5_17:                               # %if.end.42.i
	movq	%rbx, %rdi
	callq	alpha_buffer_bits
	movl	%eax, %r15d
	cmpl	$2, %r15d
	jl	.LBB5_55
# BB#18:                                # %if.then.45.i
	movzbl	%r14b, %r14d
	cvtps2pd	132(%rbx), %xmm0
	movapd	.LCPI5_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movss	140(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	144(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	cvtps2pd	%xmm3, %xmm2
	andpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	cvtpd2ps	%xmm2, %xmm0
	movapd	%xmm0, 16(%rsp)         # 16-byte Spill
	movl	%r15d, %ecx
	shrl	$31, %ecx
	addl	%r15d, %ecx
	shrl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movaps	%xmm0, 32(%rsp)         # 16-byte Spill
	movq	%rbx, %rdi
	callq	gs_currentlinewidth
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movaps	%xmm0, %xmm1
	mulss	32(%rsp), %xmm1         # 16-byte Folded Reload
	movss	%xmm1, (%rsp)           # 4-byte Spill
	movaps	16(%rsp), %xmm2         # 16-byte Reload
	movaps	%xmm2, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	maxss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	mulss	.LCPI5_1(%rip), %xmm2
	mulss	.LCPI5_2(%rip), %xmm2
	cvttss2si	%xmm2, %ebp
	movq	%rbx, %rdi
	callq	gs_currentflat
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	cmpl	$256, %ebp              # imm = 0x100
	movl	$256, %edx              # imm = 0x100
	cmovgel	%ebp, %edx
	movl	300(%rbx), %esi
	addl	%edx, %esi
	addl	304(%rbx), %edx
	movq	%rbx, %rdi
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	callq	alpha_buffer_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_59
# BB#19:                                # %if.end.85.i
	movabsq	$8589934584, %r15       # imm = 0x1FFFFFFF8
	movss	(%rsp), %xmm0           # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setlinewidth
	movl	96(%rbx), %eax
	testl	%eax, %eax
	movaps	32(%rsp), %xmm3         # 16-byte Reload
	je	.LBB5_30
# BB#20:                                # %for.body.lr.ph.i.i
	movq	88(%rbx), %r8
	leal	-1(%rax), %esi
	leaq	1(%rsi), %r9
	xorl	%ecx, %ecx
	movq	%r9, %r10
	andq	%r15, %r10
	je	.LBB5_27
# BB#21:                                # %vector.ph
	movaps	%xmm3, %xmm0
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	1(%rsi), %rcx
	andq	%r15, %rcx
	addq	$-8, %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	xorl	%edx, %edx
	btq	$3, %rcx
	jb	.LBB5_23
# BB#22:                                # %vector.body.prol
	movups	(%r8), %xmm1
	movups	16(%r8), %xmm2
	mulps	%xmm0, %xmm1
	mulps	%xmm0, %xmm2
	movups	%xmm1, (%r8)
	movups	%xmm2, 16(%r8)
	movl	$8, %edx
.LBB5_23:                               # %vector.ph.split
	testq	%rdi, %rdi
	je	.LBB5_26
# BB#24:                                # %vector.ph.split.split
	incq	%rsi
	andq	%r15, %rsi
	subq	%rdx, %rsi
	leaq	48(%r8,%rdx,4), %rcx
.LBB5_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rcx), %xmm1
	movups	-32(%rcx), %xmm2
	mulps	%xmm0, %xmm1
	mulps	%xmm0, %xmm2
	movups	%xmm1, -48(%rcx)
	movups	%xmm2, -32(%rcx)
	movups	-16(%rcx), %xmm1
	movups	(%rcx), %xmm2
	mulps	%xmm0, %xmm1
	mulps	%xmm0, %xmm2
	movups	%xmm1, -16(%rcx)
	movups	%xmm2, (%rcx)
	addq	$64, %rcx
	addq	$-16, %rsi
	jne	.LBB5_25
.LBB5_26:
	movq	%r10, %rcx
.LBB5_27:                               # %middle.block
	cmpq	%rcx, %r9
	je	.LBB5_30
# BB#28:                                # %for.body.i.i.preheader
	subl	%ecx, %eax
	leaq	(%r8,%rcx,4), %rcx
	.align	16, 0x90
.LBB5_29:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	movss	%xmm0, (%rcx)
	addq	$4, %rcx
	decl	%eax
	jne	.LBB5_29
.LBB5_30:                               # %for.end.i.i
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movss	100(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	movss	%xmm0, 100(%rbx)
	movss	108(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	movss	%xmm0, 108(%rbx)
	movss	120(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	movss	%xmm0, 120(%rbx)
	cmpl	$0, 60(%rbx)
	je	.LBB5_32
# BB#31:                                # %if.then.i.i
	movss	56(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	movss	%xmm0, 56(%rbx)
.LBB5_32:                               # %scale_dash_pattern.exit.i
	mulss	16(%rsp), %xmm3         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	movq	%rbx, %rdi
	callq	gs_setflat
	movq	8(%rbx), %rdx
	leaq	56(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_path_init_local_shared
	movq	1680(%rbx), %rdi
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	gx_stroke_add
	movl	%eax, %r14d
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setlinewidth
	movsd	.LCPI5_3(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movl	96(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_43
# BB#33:                                # %for.body.lr.ph.i.84.i
	movq	88(%rbx), %r8
	leal	-1(%rax), %edi
	leaq	1(%rdi), %r9
	addq	$4, %r15
	xorl	%ecx, %ecx
	movq	%r9, %r10
	andq	%r15, %r10
	je	.LBB5_40
# BB#34:                                # %vector.ph34
	movapd	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	leaq	1(%rdi), %rcx
	andq	%r15, %rcx
	addq	$-4, %rcx
	movq	%rcx, %rsi
	shrq	$2, %rsi
	xorl	%edx, %edx
	btq	$2, %rcx
	jb	.LBB5_36
# BB#35:                                # %vector.body24.prol
	cvtps2pd	(%r8), %xmm2
	cvtps2pd	8(%r8), %xmm3
	mulpd	%xmm1, %xmm2
	mulpd	%xmm1, %xmm3
	cvtpd2ps	%xmm2, %xmm2
	cvtpd2ps	%xmm3, %xmm3
	movlpd	%xmm2, (%r8)
	movlpd	%xmm3, 8(%r8)
	movl	$4, %edx
.LBB5_36:                               # %vector.ph34.split
	testq	%rsi, %rsi
	je	.LBB5_39
# BB#37:                                # %vector.ph34.split.split
	incq	%rdi
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rdi, %rcx
	subq	%rdx, %rcx
	leaq	24(%r8,%rdx,4), %rdi
.LBB5_38:                               # %vector.body24
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-24(%rdi), %xmm2
	cvtps2pd	-16(%rdi), %xmm3
	mulpd	%xmm1, %xmm2
	mulpd	%xmm1, %xmm3
	cvtpd2ps	%xmm2, %xmm2
	cvtpd2ps	%xmm3, %xmm3
	movlpd	%xmm2, -24(%rdi)
	movlpd	%xmm3, -16(%rdi)
	cvtps2pd	-8(%rdi), %xmm2
	cvtps2pd	(%rdi), %xmm3
	mulpd	%xmm1, %xmm2
	mulpd	%xmm1, %xmm3
	cvtpd2ps	%xmm2, %xmm2
	cvtpd2ps	%xmm3, %xmm3
	movlpd	%xmm2, -8(%rdi)
	movlpd	%xmm3, (%rdi)
	addq	$32, %rdi
	addq	$-8, %rcx
	jne	.LBB5_38
.LBB5_39:
	movq	%r10, %rcx
.LBB5_40:                               # %middle.block25
	cmpq	%rcx, %r9
	je	.LBB5_43
# BB#41:                                # %for.body.i.92.i.preheader
	subl	%ecx, %eax
	leaq	(%r8,%rcx,4), %rcx
	.align	16, 0x90
.LBB5_42:                               # %for.body.i.92.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rcx)
	addq	$4, %rcx
	decl	%eax
	jne	.LBB5_42
.LBB5_43:                               # %for.end.i.107.i
	movss	100(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 100(%rbx)
	movss	108(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 108(%rbx)
	movss	120(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 120(%rbx)
	cmpl	$0, 60(%rbx)
	je	.LBB5_45
# BB#44:                                # %if.then.i.112.i
	movss	56(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 56(%rbx)
.LBB5_45:                               # %scale_dash_pattern.exit113.i
	testl	%r14d, %r14d
	js	.LBB5_47
# BB#46:                                # %if.then.100.i
	movq	1760(%rbx), %rsi
	movl	300(%rbx), %r8d
	movl	304(%rbx), %r9d
	leaq	56(%rsp), %rdi
	movl	$-1, %ecx
	movq	%rbx, %rdx
	callq	gx_fill_path
	movl	%eax, %r14d
.LBB5_47:                               # %if.end.109.i
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setflat
	leaq	56(%rsp), %rdi
	movl	$.L.str.2, %esi
	callq	gx_path_free
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	jle	.LBB5_56
# BB#48:                                # %if.then.114.i
	movq	1872(%rbx), %rbp
	movq	%rbp, %rdi
	callq	*1176(%rbp)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB5_54
# BB#49:                                # %if.then.i.80.i
	xorl	%edx, %edx
	xorl	%esi, %esi
	subl	2736(%rbp), %esi
	subl	2740(%rbp), %edx
	movb	$1, %al
	testl	%r14d, %r14d
	js	.LBB5_53
# BB#50:                                # %land.rhs.i.i
	movq	1680(%rbx), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB5_51
# BB#52:                                # %land.rhs.4.i.i
	cmpq	$1, (%rax)
	setg	%al
	jmp	.LBB5_53
.LBB5_55:                               # %if.else.126.i
	movq	1680(%rbx), %rdi
	movq	%rbx, %rsi
	callq	gx_stroke_fill
	movl	%eax, %r14d
	xorl	%r15d, %r15d
.LBB5_56:                               # %if.end.129.i
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	cmovnsl	%r15d, %ebp
	testl	%r15d, %r15d
	cmovnsl	%r14d, %ebp
.LBB5_57:                               # %do_stroke.exit
	testl	%ebp, %ebp
	js	.LBB5_59
# BB#58:                                # %if.then.16
	movq	%rbx, %rdi
	callq	gs_newpath
.LBB5_59:                               # %cleanup
	movl	%ebp, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_51:
	xorl	%eax, %eax
.LBB5_53:                               # %land.end.8.i.i
	movzbl	%al, %ecx
	movq	%rbx, %rdi
	callq	scale_paths
.LBB5_54:                               # %alpha_buffer_release.exit.i
	movq	1728(%rbp), %rsi
	movq	%rbx, %rdi
	callq	gx_set_device_only
	jmp	.LBB5_56
.Lfunc_end5:
	.size	gs_stroke, .Lfunc_end5-gs_stroke
	.cfi_endproc

	.globl	gs_strokepath
	.align	16, 0x90
	.type	gs_strokepath,@function
gs_strokepath:                          # @gs_strokepath
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	gs_strokepath_aux       # TAILCALL
.Lfunc_end6:
	.size	gs_strokepath, .Lfunc_end6-gs_strokepath
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	gs_strokepath_aux,@function
gs_strokepath_aux:                      # @gs_strokepath_aux
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 160
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	1680(%rbx), %rax
	movq	40(%rax), %rdx
	leaq	(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_path_init_local_shared
	movq	1680(%rbx), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	callq	gx_stroke_add
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_1
# BB#2:                                 # %if.end
	movq	1872(%rbx), %rax
	movl	$0, 984(%rax)
	movq	1680(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gx_path_assign_free
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_8
# BB#3:                                 # %if.end.7
	movq	1680(%rbx), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	cmpq	$0, 24(%rax)
	je	.LBB7_5
.LBB7_6:                                # %if.else
	movq	112(%rsp), %rax
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI7_0(%rip), %xmm0
	movsd	%xmm0, 176(%rbx)
	shrq	$32, %rax
	jmp	.LBB7_7
.LBB7_1:                                # %if.then
	leaq	(%rsp), %rdi
	movl	$.L.str.3, %esi
	callq	gx_path_free
	jmp	.LBB7_8
.LBB7_5:                                # %if.then.13
	movl	$0, 168(%rbx)
	movl	116(%rsp), %eax
.LBB7_7:                                # %if.end.15
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI7_0(%rip), %xmm0
	movsd	%xmm0, 184(%rbx)
	xorl	%ebp, %ebp
.LBB7_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_strokepath_aux, .Lfunc_end7-gs_strokepath_aux
	.cfi_endproc

	.globl	gs_strokepath2
	.align	16, 0x90
	.type	gs_strokepath2,@function
gs_strokepath2:                         # @gs_strokepath2
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	gs_strokepath_aux       # TAILCALL
.Lfunc_end8:
	.size	gs_strokepath2, .Lfunc_end8-gs_strokepath2
	.cfi_endproc

	.align	16, 0x90
	.type	alpha_buffer_init,@function
alpha_buffer_init:                      # @alpha_buffer_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 128
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	1872(%r15), %r12
	movl	%ecx, %edi
	callq	ilog2
	movl	%eax, %ebx
	movl	%ebx, 52(%rsp)
	movl	%ebx, 48(%rsp)
	movq	1680(%r15), %rdi
	leaq	56(%rsp), %rsi
	callq	gx_path_bbox
	movl	56(%rsp), %ebp
	movl	64(%rsp), %eax
	subl	%r14d, %ebp
	sarl	$8, %ebp
	leal	255(%r14,%rax), %eax
	sarl	$8, %eax
	movl	$1, %r13d
	movl	$1, %ecx
	subl	%ebp, %ecx
	leal	1(%rcx,%rax), %eax
	movb	%bl, %cl
	shll	%cl, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	63(%rax), %esi
	shrl	$3, %esi
	andl	$536870904, %esi        # imm = 0x1FFFFFF8
	movb	%bl, %cl
	shll	%cl, %esi
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
	movl	$2000, %eax             # imm = 0x7D0
	xorl	%edx, %edx
	divl	%esi
	movb	%bl, %cl
	shll	%cl, %eax
	movb	%bl, %cl
	shll	%cl, %r13d
	testl	%eax, %eax
	cmovnel	%eax, %r13d
	movq	8(%r15), %r15
	movl	$st_device_memory, %esi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB9_6
# BB#1:                                 # %if.end.45
	decl	%ebp
	movl	$9, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	callq	*1664(%r12)
	movq	%r12, 40(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB9_3
# BB#2:                                 # %if.then.49
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	gs_update_trans_marking_params
	movl	48(%rsp), %ebx
.LBB9_3:                                # %if.end.51
	movb	%bl, %cl
	shll	%cl, %ebp
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	leaq	48(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	movl	%ebp, %r9d
	callq	gs_make_mem_abuf_device
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, 832(%r14)
	movl	%r13d, 836(%r14)
	movq	%r15, 1752(%r14)
	movq	%r14, %rdi
	callq	*1144(%r14)
	testl	%eax, %eax
	js	.LBB9_4
# BB#5:                                 # %if.end.63
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_set_device_only
	movl	48(%rsp), %esi
	movl	52(%rsp), %edx
	movl	$1, 40(%rsp)            # 4-byte Folded Spill
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	scale_paths
	jmp	.LBB9_6
.LBB9_4:                                # %if.then.61
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*24(%r15)
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
.LBB9_6:                                # %cleanup
	movl	40(%rsp), %eax          # 4-byte Reload
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	alpha_buffer_init, .Lfunc_end9-alpha_buffer_init
	.cfi_endproc

	.align	16, 0x90
	.type	scale_paths,@function
scale_paths:                            # @scale_paths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 96
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	%edx, %r14d
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	1688(%rbx), %rdi
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 280(%rdi)
	je	.LBB10_2
# BB#1:                                 # %cond.true
	movq	56(%rdi), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB10_2:                               # %cond.end
	movq	272(%rdi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	1728(%rbx), %rax
	xorl	%ebp, %ebp
	cmpl	$0, 280(%rax)
	je	.LBB10_4
# BB#3:                                 # %cond.true.5
	movq	56(%rax), %rbp
.LBB10_4:                               # %cond.end.10
	movq	272(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r13d, %esi
	movl	%r14d, %edx
	callq	gx_cpath_scale_exp2_shared
	movq	1704(%rbx), %rdi
	testq	%rdi, %rdi
	movl	$0, %r15d
	je	.LBB10_9
# BB#5:                                 # %land.lhs.true
	xorl	%r12d, %r12d
	cmpq	1688(%rbx), %rdi
	movl	$0, %r15d
	je	.LBB10_9
# BB#6:                                 # %if.then
	xorl	%r15d, %r15d
	cmpl	$0, 280(%rdi)
	je	.LBB10_8
# BB#7:                                 # %cond.true.21
	movq	56(%rdi), %r15
.LBB10_8:                               # %cond.end.26
	movq	272(%rdi), %r12
	cmpq	16(%rsp), %r12          # 8-byte Folded Reload
	sete	%al
	movzbl	%al, %ecx
	cmpq	32(%rsp), %r15          # 8-byte Folded Reload
	sete	%al
	testq	%r15, %r15
	setne	%dl
	andb	%al, %dl
	movzbl	%dl, %r8d
	movl	%r13d, %esi
	movl	%r14d, %edx
	callq	gx_cpath_scale_exp2_shared
.LBB10_9:                               # %if.end
	movq	1728(%rbx), %rdi
	cmpq	1688(%rbx), %rdi
	je	.LBB10_15
# BB#10:                                # %land.lhs.true.40
	cmpq	1704(%rbx), %rdi
	je	.LBB10_15
# BB#11:                                # %if.then.45
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmpq	16(%rsp), %rcx          # 8-byte Folded Reload
	sete	%al
	cmpq	%r12, %rcx
	sete	%cl
	orb	%al, %cl
	movzbl	%cl, %ecx
	testq	%rbp, %rbp
	je	.LBB10_12
# BB#13:                                # %land.rhs.52
	cmpq	32(%rsp), %rbp          # 8-byte Folded Reload
	sete	%dl
	cmpq	%r15, %rbp
	sete	%al
	orb	%dl, %al
	jmp	.LBB10_14
.LBB10_12:
	xorl	%eax, %eax
.LBB10_14:                              # %land.end.60
	movzbl	%al, %r8d
	movl	%r13d, %esi
	movl	%r14d, %edx
	callq	gx_cpath_scale_exp2_shared
.LBB10_15:                              # %if.end.63
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB10_16
# BB#17:                                # %if.then.65
	movq	1680(%rbx), %rdi
	movq	56(%rdi), %rax
	cmpq	32(%rsp), %rax          # 8-byte Folded Reload
	sete	%cl
	cmpq	%r15, %rax
	sete	%dl
	orb	%cl, %dl
	cmpq	%rbp, %rax
	sete	%al
	orb	%dl, %al
	movzbl	%al, %ecx
	movl	%r13d, %esi
	movl	%r14d, %edx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_scale_exp2_shared # TAILCALL
.LBB10_16:                              # %if.end.79
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	scale_paths, .Lfunc_end10-scale_paths
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n   *** Error: No get_color_mapping_procs for device: %s\n"
	.size	.L.str, 58

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"alpha_buffer_init"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_stroke"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_strokepath"
	.size	.L.str.3, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
