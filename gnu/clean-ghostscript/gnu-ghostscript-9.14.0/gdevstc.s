	.text
	.file	"gdevstc.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4634766966517661696     # double 72
.LCPI0_1:
	.quad	4652209618980700160     # double 1023
	.text
	.align	16, 0x90
	.type	stc_print_page,@function
stc_print_page:                         # @stc_print_page
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp6:
	.cfi_def_cfa_offset 336
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
	movq	%rsi, 256(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	je	.LBB0_2
# BB#1:                                 # %cond.false
	movq	18472(%rbp), %r14
.LBB0_2:                                # %cond.end
	movq	%rbp, %rdi
	callq	stc_print_setup
	testl	%eax, %eax
	js	.LBB0_329
# BB#3:                                 # %if.end
	movl	18780(%rbp), %eax
	cltd
	idivl	18772(%rbp)
	movl	%eax, 52(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_device_raster
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	24(%rbp), %rcx
	movq	200(%rcx), %rdi
	movl	$1, %edx
	movl	$.L.str.64, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	%r12, 80(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	andq	$-513, %r15             # imm = 0xFFFFFFFFFFFFFDFF
	movl	18736(%rbp), %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %ebx
	movl	%ebx, %eax
	sarl	$3, %eax
	movl	%eax, 18760(%rbp)
	andl	$-8, %ebx
	movl	%ebx, 120(%rsp)         # 4-byte Spill
	cvtsi2sdl	836(%rbp), %xmm0
	movss	920(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movss	888(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	912(%rbp), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	divsd	%xmm2, %xmm4
	addsd	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	mulsd	%xmm4, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 18808(%rbp)
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.65, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, 128(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	cmoveq	%r15, %r14
	testq	%r12, %r12
	cmoveq	%r15, %r14
	movl	100(%rbp), %r12d
	imull	%ebx, %r12d
	movq	18488(%rbp), %rax
	movl	16(%rax), %esi
	testb	$64, %sil
	jne	.LBB0_8
# BB#4:                                 # %lor.lhs.false
	movl	18752(%rbp), %edx
	cmpl	$8, 18480(%rbp)
	jne	.LBB0_7
# BB#5:                                 # %lor.lhs.false
	cmpl	$1, %edx
	jne	.LBB0_7
# BB#6:
	xorl	%ecx, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %if.else
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.66, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	cmoveq	%r15, %r14
	movq	18488(%rbp), %rax
	movl	16(%rax), %esi
.LBB0_8:                                # %if.end.66
	shrl	$8, %esi
	imull	%r12d, %esi
	addl	20(%rax), %esi
	testl	%esi, %esi
	jle	.LBB0_9
# BB#10:                                # %if.then.77
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	18752(%rbp), %edx
	movl	$.L.str.67, %ecx
	callq	*88(%rdi)
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%r14, %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	testq	%rax, %rax
	cmoveq	%rcx, %r14
	jmp	.LBB0_11
.LBB0_9:
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB0_11:                               # %if.end.93
	movl	18788(%rbp), %eax
	imull	52(%rsp), %eax          # 4-byte Folded Reload
	movl	$16, %ecx
	.align	16, 0x90
.LBB0_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	leal	(%rsi,%rsi), %ecx
	cmpl	%eax, %esi
	jl	.LBB0_12
# BB#13:                                # %for.end
	movl	%esi, 18756(%rbp)
	cmpl	$2, 100(%rbp)
	jl	.LBB0_15
# BB#14:                                # %if.then.107
	shll	$2, %esi
	movl	%esi, 18756(%rbp)
.LBB0_15:                               # %if.end.111
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.68, %ecx
	callq	*88(%rdi)
	movq	%rax, 18816(%rbp)
	movq	%r14, %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	testq	%rax, %rax
	cmoveq	%rcx, %r14
	movq	%rcx, %r15
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	18756(%rbp), %esi
	movl	$8, %edx
	movl	$.L.str.69, %ecx
	callq	*88(%rdi)
	movq	%rax, 18824(%rbp)
	testq	%rax, %rax
	je	.LBB0_22
# BB#16:                                # %for.cond.146.preheader
	xorl	%ebx, %ebx
	cmpl	$0, 18756(%rbp)
	jle	.LBB0_17
# BB#18:
	movq	%r14, %r15
	.align	16, 0x90
.LBB0_19:                               # %for.body.151
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	18760(%rbp), %esi
	movl	$1, %edx
	movl	$.L.str.70, %ecx
	callq	*88(%rdi)
	movq	18824(%rbp), %rcx
	movq	%rax, (%rcx,%rbx,8)
	movq	18824(%rbp), %rax
	cmpq	$0, (%rax,%rbx,8)
	jne	.LBB0_21
# BB#20:                                #   in Loop: Header=BB0_19 Depth=1
	andq	$-513, %r15             # imm = 0xFFFFFFFFFFFFFDFF
.LBB0_21:                               # %select.end
                                        #   in Loop: Header=BB0_19 Depth=1
	incq	%rbx
	movslq	18756(%rbp), %rax
	cmpq	%rax, %rbx
	jl	.LBB0_19
	jmp	.LBB0_22
.LBB0_17:
	movq	%r14, %r15
.LBB0_22:                               # %if.end.175
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movslq	18760(%rbp), %rax
	addq	$7, %rax
	shrq	$2, %rax
	movl	%eax, 18768(%rbp)
	xorl	%ebx, %ebx
	cmpl	$0, 100(%rbp)
	movq	%rbp, %r14
	jle	.LBB0_23
# BB#34:                                # %for.body.190.lr.ph
	xorl	%ebx, %ebx
	movq	%r15, %rcx
	.align	16, 0x90
.LBB0_35:                               # %for.body.190
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	andl	$3072, %eax             # imm = 0xC00
	cmpq	$2048, %rax             # imm = 0x800
	jne	.LBB0_39
# BB#36:                                # %if.then.194
                                        #   in Loop: Header=BB0_35 Depth=1
	movq	%rcx, %rbp
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	18768(%r14), %esi
	movl	$4, %edx
	movl	$.L.str.71, %ecx
	callq	*88(%rdi)
	movq	%rax, 18840(%r14,%rbx,8)
	testq	%rax, %rax
	je	.LBB0_37
# BB#38:                                # %if.else.215
                                        #   in Loop: Header=BB0_35 Depth=1
	movslq	18768(%r14), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	%rbp, %rcx
	jmp	.LBB0_40
	.align	16, 0x90
.LBB0_39:                               # %if.else.226
                                        #   in Loop: Header=BB0_35 Depth=1
	movq	$0, 18840(%r14,%rbx,8)
	jmp	.LBB0_40
.LBB0_37:                               # %if.then.213
                                        #   in Loop: Header=BB0_35 Depth=1
	movq	%rbp, %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	.align	16, 0x90
.LBB0_40:                               # %for.inc.232
                                        #   in Loop: Header=BB0_35 Depth=1
	incq	%rbx
	movslq	100(%r14), %rax
	cmpq	%rax, %rbx
	jl	.LBB0_35
# BB#24:                                # %while.cond.preheader
	cmpl	$3, %ebx
	ja	.LBB0_31
	jmp	.LBB0_25
.LBB0_23:
	movq	%r15, %rcx
.LBB0_25:                               # %while.body.lr.ph
	movq	%rcx, %r8
	movslq	%ebx, %rax
	movl	$3, %ecx
	subq	%rbx, %rcx
	movl	%ecx, %esi
	leaq	1(%rsi), %rdx
	incl	%ecx
	andl	$3, %ecx
	subq	%rcx, %rdx
	leaq	1(%rsi,%rax), %rcx
	je	.LBB0_28
# BB#26:                                # %vector.body.preheader
	addq	%rdx, %rax
	movslq	%ebx, %rdi
	leaq	18856(%r14,%rdi,8), %rdx
	movl	$3, %esi
	subl	%edi, %esi
	incq	%rsi
	movl	$4, %ebp
	subl	%edi, %ebp
	andl	$3, %ebp
	subq	%rbp, %rsi
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_27:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, -16(%rdx)
	movupd	%xmm0, (%rdx)
	addq	$32, %rdx
	addq	$-4, %rsi
	jne	.LBB0_27
.LBB0_28:                               # %middle.block
	cmpq	%rax, %rcx
	je	.LBB0_30
	.align	16, 0x90
.LBB0_29:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 18840(%r14,%rax,8)
	incq	%rax
	cmpl	$4, %eax
	jne	.LBB0_29
.LBB0_30:
	movq	%r8, %rcx
.LBB0_31:                               # %while.end
	movl	%ecx, %eax
	andl	$3072, %eax             # imm = 0xC00
	movq	%rcx, %rbx
	cmpq	$2048, %rax             # imm = 0x800
	jne	.LBB0_32
# BB#41:                                # %sw.bb.248
	movl	18760(%r14), %eax
	leal	64(%rax,%rax), %esi
	jmp	.LBB0_43
.LBB0_32:                               # %while.end
	cmpq	$1024, %rax             # imm = 0x400
	jne	.LBB0_42
# BB#33:                                # %sw.bb
	movl	18760(%r14), %esi
	addl	$64, %esi
	jmp	.LBB0_43
.LBB0_42:                               # %sw.default
	movl	18760(%r14), %eax
	leal	127(%rax), %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	127(%rax,%rcx), %ecx
	sarl	$7, %ecx
	leal	64(%rax,%rcx), %esi
.LBB0_43:                               # %sw.epilog
	movl	%esi, 18764(%r14)
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.72, %ecx
	callq	*88(%rdi)
	movq	%rax, 18832(%r14)
	movq	%rbx, %rcx
	andq	$-513, %rbx             # imm = 0xFFFFFFFFFFFFFDFF
	testq	%rax, %rax
	cmoveq	%rbx, %rcx
	testb	$2, %ch
	jne	.LBB0_45
# BB#44:
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB0_303
.LBB0_45:                               # %if.then.285
	movq	%rcx, %rbp
	movslq	120(%rsp), %rdx         # 4-byte Folded Reload
	cmpl	$3, 100(%r14)
	jne	.LBB0_47
# BB#46:                                # %if.then.290
	movl	$7, %esi
	jmp	.LBB0_48
.LBB0_47:                               # %if.else.293
	xorl	%esi, %esi
.LBB0_48:                               # %if.end.296
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	memset
	movq	18488(%r14), %rax
	movl	16(%rax), %ecx
	movl	$stc_any_direct, %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	testb	$64, %cl
	jne	.LBB0_67
# BB#49:                                # %lor.lhs.false.302
	cmpl	$8, 18480(%r14)
	jne	.LBB0_51
# BB#50:                                # %land.lhs.true.307
	movl	$stc_any_direct, %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	cmpl	$1, 18752(%r14)
	je	.LBB0_67
.LBB0_51:                               # %if.else.313
	movl	100(%r14), %edx
	cmpl	$3, %edx
	jne	.LBB0_54
# BB#52:                                # %land.lhs.true.318
	movzwl	108(%r14), %esi
	cmpl	$24, %esi
	jne	.LBB0_54
# BB#53:                                # %land.lhs.true.323
	movl	$stc_rgb24_long, %esi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	cmpl	$8, 18752(%r14)
	je	.LBB0_67
.LBB0_54:                               # %if.else.330
	testb	$32, 18472(%r14)
	jne	.LBB0_55
# BB#62:                                # %if.else.392
	movl	$stc_any_depth, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	cmpl	$4, %edx
	jne	.LBB0_67
# BB#63:                                # %land.lhs.true.397
	movl	$stc_any_depth, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movzwl	108(%r14), %ecx
	cmpl	$32, %ecx
	jne	.LBB0_67
# BB#64:                                # %land.lhs.true.403
	movl	$stc_cmyk32_long, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	cmpl	$8, 18752(%r14)
	je	.LBB0_67
# BB#65:                                # %select.mid964
	movl	$stc_any_depth, %ecx
	jmp	.LBB0_66
.LBB0_55:                               # %if.then.335
	andl	$24, %ecx
	cmpl	$16, %ecx
	jne	.LBB0_56
# BB#59:                                # %land.lhs.true.364
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_61
	jp	.LBB0_61
# BB#60:                                # %land.lhs.true.371
	movl	$stc_cmyk10_dlong, %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	32(%rax), %xmm0
	jae	.LBB0_67
	jmp	.LBB0_61
.LBB0_56:                               # %if.then.335
	cmpl	$8, %ecx
	jne	.LBB0_61
# BB#57:                                # %land.lhs.true.342
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	$stc_cmyk10_dbyte, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_58
	jnp	.LBB0_67
.LBB0_58:                               # %if.else.349.thread
	movl	$stc_cmyk10_byte, %ecx
.LBB0_66:                               # %if.end.413
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	jmp	.LBB0_67
.LBB0_61:                               # %if.else.379
	cmpl	$16, %ecx
	movl	$stc_cmyk10_long, %ecx
	movl	$stc_cmyk10_float, %edx
	cmoveq	%rcx, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
.LBB0_67:                               # %if.end.413
	movl	120(%rsp), %esi         # 4-byte Reload
	negl	%esi
	movq	%r14, %rdi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	callq	*8(%rax)
	testl	%eax, %eax
	movq	%rbp, %rax
	cmovsq	%rbx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testb	$2, %ah
	jne	.LBB0_69
# BB#68:
	movq	128(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB0_303
.LBB0_69:                               # %if.then.426
	movl	100(%r14), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %edx
	movl	18788(%r14), %ecx
	movl	18772(%r14), %eax
	imull	%ecx, %eax
	movslq	%eax, %rsi
	imulq	$1717986919, %rsi, %rax # imm = 0x66666667
	movq	%rax, %rdi
	shrq	$63, %rdi
	sarq	$34, %rax
	addl	%edi, %eax
	addl	%eax, %eax
	leal	(%rax,%rax,4), %edi
	xorl	%eax, %eax
	cmpl	$2560, %esi             # imm = 0xA00
	movl	$0, %ebp
	cmovll	%ecx, %ebp
	cmpl	%edi, %esi
	cmovnel	%eax, %ebp
	movl	%ebp, 18792(%r14)
	movl	$0, 18800(%r14)
	movl	$0, 18804(%r14)
	movl	$0, 18796(%r14)
	movq	$-8388609, %rsi         # imm = 0xFFFFFFFFFF7FFFFF
	andq	18472(%r14), %rsi
	movq	%rsi, 18472(%r14)
	cmpl	$0, 18808(%r14)
	jle	.LBB0_299
# BB#70:                                # %while.body.471.lr.ph
	leal	1(%rdx,%rdx,2), %esi
	movl	%esi, 108(%rsp)         # 4-byte Spill
	leaq	18664(%r14), %r15
	movq	%r15, 112(%rsp)         # 8-byte Spill
	leaq	18676(%r14), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rdx          # 8-byte Reload
	andl	$3072, %edx             # imm = 0xC00
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	%esi, %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	xorl	%edx, %edx
	jmp	.LBB0_71
	.align	16, 0x90
.LBB0_91:                               # %while.cond.464.backedge.while.body.471_crit_edge
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	18788(%r14), %ecx
	movl	18804(%r14), %eax
	movq	112(%rsp), %r15         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
.LBB0_71:                               # %while.body.471
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_73 Depth 2
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_97 Depth 3
                                        #         Child Loop BB0_98 Depth 4
                                        #       Child Loop BB0_111 Depth 3
                                        #         Child Loop BB0_112 Depth 4
                                        #       Child Loop BB0_125 Depth 3
                                        #     Child Loop BB0_271 Depth 2
                                        #       Child Loop BB0_272 Depth 3
                                        #         Child Loop BB0_273 Depth 4
                                        #       Child Loop BB0_282 Depth 3
                                        #         Child Loop BB0_287 Depth 4
                                        #         Child Loop BB0_290 Depth 4
                                        #     Child Loop BB0_242 Depth 2
                                        #       Child Loop BB0_246 Depth 3
                                        #         Child Loop BB0_251 Depth 4
                                        #         Child Loop BB0_255 Depth 4
                                        #         Child Loop BB0_260 Depth 4
                                        #           Child Loop BB0_263 Depth 5
                                        #     Child Loop BB0_156 Depth 2
                                        #       Child Loop BB0_158 Depth 3
                                        #         Child Loop BB0_159 Depth 4
                                        #       Child Loop BB0_173 Depth 3
                                        #         Child Loop BB0_184 Depth 4
                                        #           Child Loop BB0_186 Depth 5
                                        #           Child Loop BB0_199 Depth 5
                                        #           Child Loop BB0_219 Depth 5
                                        #           Child Loop BB0_224 Depth 5
                                        #           Child Loop BB0_209 Depth 5
                                        #           Child Loop BB0_214 Depth 5
	imull	52(%rsp), %ecx          # 4-byte Folded Reload
	addl	%r10d, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_85
# BB#72:                                # %if.then.482
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	18756(%r14), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	cmpl	$1, 28(%rsp)            # 4-byte Folded Reload
	cmovlel	%ecx, %esi
	addl	%r10d, %esi
	movl	%esi, 240(%rsp)         # 4-byte Spill
	cmpl	%esi, %eax
	jge	.LBB0_85
	jmp	.LBB0_73
.LBB0_123:                              # %sw.bb.565
                                        #   in Loop: Header=BB0_73 Depth=2
	cmpl	$0, 18760(%r14)
	jle	.LBB0_84
# BB#124:                               # %for.cond.578.preheader.lr.ph
                                        #   in Loop: Header=BB0_73 Depth=2
	movq	18824(%r14), %rax
	movq	(%rax,%r13,8), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_125:                              # %for.cond.578.preheader
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	128(%rsp), %rbp         # 8-byte Reload
	cmpb	$0, (%rbp,%rcx,8)
	je	.LBB0_126
# BB#127:                               # %select.mid1029
                                        #   in Loop: Header=BB0_125 Depth=3
	movb	$-128, %sil
	jmp	.LBB0_128
	.align	16, 0x90
.LBB0_126:                              #   in Loop: Header=BB0_125 Depth=3
	xorl	%esi, %esi
.LBB0_128:                              # %select.end1028
                                        #   in Loop: Header=BB0_125 Depth=3
	cmpb	$0, 1(%rbp,%rcx,8)
	je	.LBB0_129
# BB#130:                               # %select.mid1558
                                        #   in Loop: Header=BB0_125 Depth=3
	movb	$64, %dl
	jmp	.LBB0_131
	.align	16, 0x90
.LBB0_129:                              #   in Loop: Header=BB0_125 Depth=3
	xorl	%edx, %edx
.LBB0_131:                              # %select.end1557
                                        #   in Loop: Header=BB0_125 Depth=3
	orb	%sil, %dl
	cmpb	$0, 2(%rbp,%rcx,8)
	je	.LBB0_132
# BB#133:                               # %select.mid1618
                                        #   in Loop: Header=BB0_125 Depth=3
	movb	$32, %sil
	jmp	.LBB0_134
	.align	16, 0x90
.LBB0_132:                              #   in Loop: Header=BB0_125 Depth=3
	xorl	%esi, %esi
.LBB0_134:                              # %select.end1617
                                        #   in Loop: Header=BB0_125 Depth=3
	orb	%dl, %sil
	cmpb	$0, 3(%rbp,%rcx,8)
	je	.LBB0_135
# BB#136:                               # %select.mid1652
                                        #   in Loop: Header=BB0_125 Depth=3
	movb	$16, %dl
	jmp	.LBB0_137
	.align	16, 0x90
.LBB0_135:                              #   in Loop: Header=BB0_125 Depth=3
	xorl	%edx, %edx
.LBB0_137:                              # %select.end1651
                                        #   in Loop: Header=BB0_125 Depth=3
	orb	%sil, %dl
	cmpb	$0, 4(%rbp,%rcx,8)
	je	.LBB0_138
# BB#139:                               # %select.mid1686
                                        #   in Loop: Header=BB0_125 Depth=3
	movb	$8, %sil
	jmp	.LBB0_140
	.align	16, 0x90
.LBB0_138:                              #   in Loop: Header=BB0_125 Depth=3
	xorl	%esi, %esi
.LBB0_140:                              # %select.end1685
                                        #   in Loop: Header=BB0_125 Depth=3
	orb	%dl, %sil
	cmpb	$0, 5(%rbp,%rcx,8)
	je	.LBB0_141
# BB#142:                               # %select.mid1720
                                        #   in Loop: Header=BB0_125 Depth=3
	movb	$4, %dl
	jmp	.LBB0_143
	.align	16, 0x90
.LBB0_141:                              #   in Loop: Header=BB0_125 Depth=3
	xorl	%edx, %edx
.LBB0_143:                              # %select.end1719
                                        #   in Loop: Header=BB0_125 Depth=3
	orb	%sil, %dl
	cmpb	$0, 6(%rbp,%rcx,8)
	je	.LBB0_144
# BB#145:                               # %select.mid1754
                                        #   in Loop: Header=BB0_125 Depth=3
	movb	$2, %dil
	jmp	.LBB0_146
	.align	16, 0x90
.LBB0_144:                              #   in Loop: Header=BB0_125 Depth=3
	xorl	%edi, %edi
.LBB0_146:                              # %select.end1753
                                        #   in Loop: Header=BB0_125 Depth=3
	leaq	1(%rcx), %rsi
	orb	%dl, %dil
	cmpb	$0, 7(%rbp,%rcx,8)
	setne	%dl
	orb	%dil, %dl
	je	.LBB0_148
# BB#147:                               # %if.then.595
                                        #   in Loop: Header=BB0_125 Depth=3
	movq	18816(%r14), %rdi
	movl	%esi, (%rdi,%r13,4)
.LBB0_148:                              # %if.end.600
                                        #   in Loop: Header=BB0_125 Depth=3
	movb	%dl, (%rax,%rcx)
	cmpl	18760(%r14), %esi
	movq	%rsi, %rcx
	jl	.LBB0_125
	jmp	.LBB0_84
.LBB0_94:                               # %if.end.557
                                        #   in Loop: Header=BB0_73 Depth=2
	cmpl	$4, %eax
	jne	.LBB0_84
# BB#95:                                # %for.cond.715.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	cmpl	$0, 18760(%r14)
	jle	.LBB0_84
# BB#96:                                # %for.body.720.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	leaq	1(%r13), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	leaq	2(%r13), %r15
	leaq	3(%r13), %r12
	xorl	%eax, %eax
	movq	128(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB0_97:                               # %for.body.720
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_98 Depth 4
	movq	%rax, %rbx
	xorl	%esi, %esi
	movl	$4, %edx
	leaq	268(%rsp), %rdi
	callq	memset
	movb	$-128, %al
	movq	%rbp, %rcx
	.align	16, 0x90
.LBB0_98:                               # %for.body.731
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        #       Parent Loop BB0_97 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx), %esi
	movl	%esi, %edx
	andl	$15, %edx
	testb	$1, %sil
	je	.LBB0_100
# BB#99:                                # %if.then.739
                                        #   in Loop: Header=BB0_98 Depth=4
	orb	%al, 271(%rsp)
.LBB0_100:                              # %if.end.745
                                        #   in Loop: Header=BB0_98 Depth=4
	testb	$2, %dl
	je	.LBB0_102
# BB#101:                               # %if.then.749
                                        #   in Loop: Header=BB0_98 Depth=4
	orb	%al, 270(%rsp)
.LBB0_102:                              # %if.end.755
                                        #   in Loop: Header=BB0_98 Depth=4
	testb	$4, %dl
	je	.LBB0_104
# BB#103:                               # %if.then.759
                                        #   in Loop: Header=BB0_98 Depth=4
	orb	%al, 269(%rsp)
.LBB0_104:                              # %if.end.765
                                        #   in Loop: Header=BB0_98 Depth=4
	testb	$8, %dl
	je	.LBB0_106
# BB#105:                               # %if.then.769
                                        #   in Loop: Header=BB0_98 Depth=4
	orb	%al, 268(%rsp)
.LBB0_106:                              # %for.inc.776
                                        #   in Loop: Header=BB0_98 Depth=4
	incq	%rcx
	shrb	%al
	jne	.LBB0_98
# BB#107:                               # %for.cond.781.preheader
                                        #   in Loop: Header=BB0_97 Depth=3
	leaq	1(%rbx), %rax
	cmpb	$0, 268(%rsp)
	je	.LBB0_108
# BB#152:                               # %if.then.791
                                        #   in Loop: Header=BB0_97 Depth=3
	movq	18816(%r14), %rcx
	movl	%eax, (%rcx,%r13,4)
	movb	268(%rsp), %cl
	jmp	.LBB0_153
	.align	16, 0x90
.LBB0_108:                              #   in Loop: Header=BB0_97 Depth=3
	xorl	%ecx, %ecx
.LBB0_153:                              # %if.end.799
                                        #   in Loop: Header=BB0_97 Depth=3
	movq	18824(%r14), %rdx
	movq	(%rdx,%r13,8), %rdx
	movb	%cl, (%rdx,%rbx)
	cmpb	$0, 269(%rsp)
	je	.LBB0_154
# BB#330:                               # %if.then.791.1
                                        #   in Loop: Header=BB0_97 Depth=3
	movq	18816(%r14), %rcx
	movl	%eax, 4(%rcx,%r13,4)
	movb	269(%rsp), %cl
	jmp	.LBB0_331
	.align	16, 0x90
.LBB0_154:                              #   in Loop: Header=BB0_97 Depth=3
	xorl	%ecx, %ecx
.LBB0_331:                              # %if.end.799.1
                                        #   in Loop: Header=BB0_97 Depth=3
	movq	18824(%r14), %rdx
	movq	248(%rsp), %rsi         # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movb	%cl, (%rdx,%rbx)
	cmpb	$0, 270(%rsp)
	je	.LBB0_332
# BB#333:                               # %if.then.791.2
                                        #   in Loop: Header=BB0_97 Depth=3
	movq	18816(%r14), %rcx
	movl	%eax, 8(%rcx,%r13,4)
	movb	270(%rsp), %cl
	jmp	.LBB0_334
	.align	16, 0x90
.LBB0_332:                              #   in Loop: Header=BB0_97 Depth=3
	xorl	%ecx, %ecx
.LBB0_334:                              # %if.end.799.2
                                        #   in Loop: Header=BB0_97 Depth=3
	movq	18824(%r14), %rdx
	movq	(%rdx,%r15,8), %rdx
	movb	%cl, (%rdx,%rbx)
	cmpb	$0, 271(%rsp)
	je	.LBB0_335
# BB#336:                               # %if.then.791.3
                                        #   in Loop: Header=BB0_97 Depth=3
	movq	18816(%r14), %rcx
	movl	%eax, 12(%rcx,%r13,4)
	movb	271(%rsp), %cl
	jmp	.LBB0_337
	.align	16, 0x90
.LBB0_335:                              #   in Loop: Header=BB0_97 Depth=3
	xorl	%ecx, %ecx
.LBB0_337:                              # %if.end.799.3
                                        #   in Loop: Header=BB0_97 Depth=3
	movq	18824(%r14), %rdx
	movq	(%rdx,%r12,8), %rdx
	movb	%cl, (%rdx,%rbx)
	addq	$8, %rbp
	movslq	18760(%r14), %rcx
	cmpq	%rcx, %rax
	jl	.LBB0_97
	jmp	.LBB0_84
	.align	16, 0x90
.LBB0_73:                               # %for.body.503
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_97 Depth 3
                                        #         Child Loop BB0_98 Depth 4
                                        #       Child Loop BB0_111 Depth 3
                                        #         Child Loop BB0_112 Depth 4
                                        #       Child Loop BB0_125 Depth 3
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movslq	%edx, %r13
	leaq	(,%r13,4), %rbx
	xorl	%ebp, %ebp
	movq	96(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB0_74:                               # %for.body.507
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	18824(%r14), %rax
	movq	(%rax,%rbx,2), %rdi
	movslq	18760(%r14), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	18816(%r14), %rax
	movl	$0, (%rax,%rbx)
	incq	%rbp
	addq	$4, %rbx
	cmpq	%r12, %rbp
	jl	.LBB0_74
# BB#75:                                # %for.end.524
                                        #   in Loop: Header=BB0_73 Depth=2
	movl	18804(%r14), %esi
	cmpl	18808(%r14), %esi
	jge	.LBB0_82
# BB#76:                                # %if.then.531
                                        #   in Loop: Header=BB0_73 Depth=2
	movq	%r14, %rdi
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	272(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	272(%rsp), %r12
	movzwl	108(%r14), %eax
	imull	120(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rbp
	cmpl	$89, %eax
	movq	%r12, %rbx
	jl	.LBB0_79
	.align	16, 0x90
.LBB0_77:                               # %while.body.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$12, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_81
# BB#78:                                # %if.end.i
                                        #   in Loop: Header=BB0_77 Depth=3
	addq	$12, %rbx
	addq	$-12, %rbp
	cmpq	$11, %rbp
	jg	.LBB0_77
.LBB0_79:                               # %while.end.i
                                        #   in Loop: Header=BB0_73 Depth=2
	testq	%rbp, %rbp
	jle	.LBB0_81
# BB#80:                                # %if.then.11.i
                                        #   in Loop: Header=BB0_73 Depth=2
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	callq	memcmp
	movslq	%eax, %rbp
.LBB0_81:                               # %if.end.542
                                        #   in Loop: Header=BB0_73 Depth=2
	testq	%rbp, %rbp
	movl	$0, %eax
	movl	76(%rsp), %ecx          # 4-byte Reload
	cmovel	%ecx, %eax
	cmpl	%ecx, %eax
	jge	.LBB0_82
# BB#92:                                # %if.end.557
                                        #   in Loop: Header=BB0_73 Depth=2
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	120(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %edx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	*56(%rsp)               # 8-byte Folded Reload
	movq	18488(%r14), %rbp
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%rax, %rdx
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	callq	*8(%rbp)
	movl	100(%r14), %eax
	cmpl	$1, %eax
	je	.LBB0_123
# BB#93:                                # %if.end.557
                                        #   in Loop: Header=BB0_73 Depth=2
	cmpl	$3, %eax
	jne	.LBB0_94
# BB#109:                               # %for.cond.610.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	cmpl	$0, 18760(%r14)
	jle	.LBB0_84
# BB#110:                               # %for.body.615.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	leaq	1(%r13), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	leaq	2(%r13), %r15
	leaq	3(%r13), %r12
	xorl	%eax, %eax
	movq	128(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB0_111:                              # %for.body.615
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_112 Depth 4
	movq	%rax, %rbx
	xorl	%esi, %esi
	movl	$4, %edx
	leaq	268(%rsp), %rdi
	callq	memset
	movb	$-128, %al
	movq	%rbp, %rcx
	.align	16, 0x90
.LBB0_112:                              # %for.body.624
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        #       Parent Loop BB0_111 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx), %edx
	andl	$7, %edx
	movzbl	stc_print_page.rgb2cmyk(%rdx), %edx
	testb	$1, %dl
	je	.LBB0_114
# BB#113:                               # %if.then.633
                                        #   in Loop: Header=BB0_112 Depth=4
	orb	%al, 271(%rsp)
.LBB0_114:                              # %if.end.639
                                        #   in Loop: Header=BB0_112 Depth=4
	testb	$2, %dl
	je	.LBB0_116
# BB#115:                               # %if.then.643
                                        #   in Loop: Header=BB0_112 Depth=4
	orb	%al, 270(%rsp)
.LBB0_116:                              # %if.end.649
                                        #   in Loop: Header=BB0_112 Depth=4
	testb	$4, %dl
	je	.LBB0_118
# BB#117:                               # %if.then.653
                                        #   in Loop: Header=BB0_112 Depth=4
	orb	%al, 269(%rsp)
.LBB0_118:                              # %if.end.659
                                        #   in Loop: Header=BB0_112 Depth=4
	testb	$8, %dl
	je	.LBB0_120
# BB#119:                               # %if.then.663
                                        #   in Loop: Header=BB0_112 Depth=4
	orb	%al, 268(%rsp)
.LBB0_120:                              # %for.inc.670
                                        #   in Loop: Header=BB0_112 Depth=4
	incq	%rcx
	shrb	%al
	jne	.LBB0_112
# BB#121:                               # %for.cond.675.preheader
                                        #   in Loop: Header=BB0_111 Depth=3
	leaq	1(%rbx), %rax
	cmpb	$0, 268(%rsp)
	je	.LBB0_122
# BB#149:                               # %if.then.685
                                        #   in Loop: Header=BB0_111 Depth=3
	movq	18816(%r14), %rcx
	movl	%eax, (%rcx,%r13,4)
	movb	268(%rsp), %cl
	jmp	.LBB0_150
	.align	16, 0x90
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	xorl	%ecx, %ecx
.LBB0_150:                              # %if.end.693
                                        #   in Loop: Header=BB0_111 Depth=3
	movq	18824(%r14), %rdx
	movq	(%rdx,%r13,8), %rdx
	movb	%cl, (%rdx,%rbx)
	cmpb	$0, 269(%rsp)
	je	.LBB0_151
# BB#338:                               # %if.then.685.1
                                        #   in Loop: Header=BB0_111 Depth=3
	movq	18816(%r14), %rcx
	movl	%eax, 4(%rcx,%r13,4)
	movb	269(%rsp), %cl
	jmp	.LBB0_339
	.align	16, 0x90
.LBB0_151:                              #   in Loop: Header=BB0_111 Depth=3
	xorl	%ecx, %ecx
.LBB0_339:                              # %if.end.693.1
                                        #   in Loop: Header=BB0_111 Depth=3
	movq	18824(%r14), %rdx
	movq	248(%rsp), %rsi         # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movb	%cl, (%rdx,%rbx)
	cmpb	$0, 270(%rsp)
	je	.LBB0_340
# BB#341:                               # %if.then.685.2
                                        #   in Loop: Header=BB0_111 Depth=3
	movq	18816(%r14), %rcx
	movl	%eax, 8(%rcx,%r13,4)
	movb	270(%rsp), %cl
	jmp	.LBB0_342
	.align	16, 0x90
.LBB0_340:                              #   in Loop: Header=BB0_111 Depth=3
	xorl	%ecx, %ecx
.LBB0_342:                              # %if.end.693.2
                                        #   in Loop: Header=BB0_111 Depth=3
	movq	18824(%r14), %rdx
	movq	(%rdx,%r15,8), %rdx
	movb	%cl, (%rdx,%rbx)
	cmpb	$0, 271(%rsp)
	je	.LBB0_343
# BB#344:                               # %if.then.685.3
                                        #   in Loop: Header=BB0_111 Depth=3
	movq	18816(%r14), %rcx
	movl	%eax, 12(%rcx,%r13,4)
	movb	271(%rsp), %cl
	jmp	.LBB0_345
	.align	16, 0x90
.LBB0_343:                              #   in Loop: Header=BB0_111 Depth=3
	xorl	%ecx, %ecx
.LBB0_345:                              # %if.end.693.3
                                        #   in Loop: Header=BB0_111 Depth=3
	movq	18824(%r14), %rdx
	movq	(%rdx,%r12,8), %rdx
	movb	%cl, (%rdx,%rbx)
	addq	$8, %rbp
	movslq	18760(%r14), %rcx
	cmpq	%rcx, %rax
	jl	.LBB0_111
	jmp	.LBB0_84
	.align	16, 0x90
.LBB0_82:                               # %if.then.545
                                        #   in Loop: Header=BB0_73 Depth=2
	movq	18488(%r14), %rax
	testb	$-128, 16(%rax)
	je	.LBB0_84
# BB#83:                                # %if.then.551
                                        #   in Loop: Header=BB0_73 Depth=2
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	120(%rsp), %esi         # 4-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	callq	*8(%rax)
.LBB0_84:                               # %cleanup
                                        #   in Loop: Header=BB0_73 Depth=2
	movl	18756(%r14), %ecx
	movl	18804(%r14), %eax
	decl	%ecx
	movl	124(%rsp), %edx         # 4-byte Reload
	addl	108(%rsp), %edx         # 4-byte Folded Reload
	andl	%ecx, %edx
	incl	%eax
	movl	%eax, 18804(%r14)
	cmpl	240(%rsp), %eax         # 4-byte Folded Reload
	movq	112(%rsp), %r15         # 8-byte Reload
	jl	.LBB0_73
.LBB0_85:                               # %if.end.830
                                        #   in Loop: Header=BB0_71 Depth=1
	cmpq	$2048, 32(%rsp)         # 8-byte Folded Reload
                                        # imm = 0x800
	jne	.LBB0_237
# BB#86:                                # %if.then.834
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	$1, %r12d
	cmpl	$1, 100(%r14)
	je	.LBB0_88
# BB#87:                                # %select.mid1085
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	$4, %r12d
.LBB0_88:                               # %select.end1084
                                        #   in Loop: Header=BB0_71 Depth=1
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movl	18800(%r14), %edx
	movl	18808(%r14), %r9d
	cmpl	%r9d, %edx
	jge	.LBB0_89
# BB#155:                               # %for.cond.preheader.lr.ph.i
                                        #   in Loop: Header=BB0_71 Depth=1
	leal	-1(%r12), %ecx
	movl	%ecx, 188(%rsp)         # 4-byte Spill
	movl	%r12d, %r15d
	movq	%r15, 176(%rsp)         # 8-byte Spill
	movl	%eax, %r10d
	jmp	.LBB0_156
	.align	16, 0x90
.LBB0_236:                              # %for.end.226.i.for.cond.preheader.i_crit_edge
                                        #   in Loop: Header=BB0_156 Depth=2
	movl	18804(%r14), %r10d
.LBB0_156:                              # %for.cond.preheader.i
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_158 Depth 3
                                        #         Child Loop BB0_159 Depth 4
                                        #       Child Loop BB0_173 Depth 3
                                        #         Child Loop BB0_184 Depth 4
                                        #           Child Loop BB0_186 Depth 5
                                        #           Child Loop BB0_199 Depth 5
                                        #           Child Loop BB0_219 Depth 5
                                        #           Child Loop BB0_224 Depth 5
                                        #           Child Loop BB0_209 Depth 5
                                        #           Child Loop BB0_214 Depth 5
	cmpl	%r10d, %edx
	jge	.LBB0_162
# BB#157:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_156 Depth=2
	movq	18816(%r14), %rax
	movl	18756(%r14), %edi
	decl	%edi
	.align	16, 0x90
.LBB0_158:                              # %for.body.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_159 Depth 4
	movl	%edx, %ecx
	imull	%r12d, %ecx
	andl	%edi, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rbp
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_159:                              # %for.body.12.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rbp,%rbx,4), %esi
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	incq	%rbx
	cmpq	%r15, %rbx
	jl	.LBB0_159
# BB#160:                               # %for.end.i
                                        #   in Loop: Header=BB0_158 Depth=3
	testl	%ecx, %ecx
	jne	.LBB0_162
# BB#161:                               # %for.inc.23.i
                                        #   in Loop: Header=BB0_158 Depth=3
	incl	%edx
	movl	%edx, 18800(%r14)
	cmpl	%r10d, %edx
	jl	.LBB0_158
.LBB0_162:                              # %for.end.27.i
                                        #   in Loop: Header=BB0_156 Depth=2
	cmpl	%edx, %r10d
	je	.LBB0_90
# BB#163:                               # %if.end.34.i
                                        #   in Loop: Header=BB0_156 Depth=2
	movq	18472(%r14), %rax
	xorl	%edi, %edi
	testl	$8388608, %eax          # imm = 0x800000
	jne	.LBB0_165
# BB#164:                               # %if.then.38.i
                                        #   in Loop: Header=BB0_156 Depth=2
	orq	$8388608, %rax          # imm = 0x800000
	movq	%rax, 18472(%r14)
	movq	18704(%r14), %rdi
	movl	18712(%r14), %edx
	movl	$1, %esi
	movq	256(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	movq	18832(%r14), %rax
	movb	$27, (%rax)
	movq	18832(%r14), %rax
	movb	$46, 1(%rax)
	movq	18832(%r14), %rax
	movb	$3, 2(%rax)
	movb	18780(%r14), %al
	movq	18832(%r14), %rcx
	movb	%al, 3(%rcx)
	movb	18784(%r14), %al
	movq	18832(%r14), %rcx
	movb	%al, 4(%rcx)
	movb	18788(%r14), %al
	movq	18832(%r14), %rcx
	movb	%al, 5(%rcx)
	movq	18832(%r14), %rax
	movb	$0, 6(%rax)
	movq	18832(%r14), %rax
	movb	$0, 7(%rax)
	movq	18832(%r14), %rax
	movb	$-28, 8(%rax)
	movl	18800(%r14), %edx
	movl	$9, %edi
.LBB0_165:                              # %if.end.94.i
                                        #   in Loop: Header=BB0_156 Depth=2
	subl	18796(%r14), %edx
	je	.LBB0_172
# BB#166:                               # %if.then.100.i
                                        #   in Loop: Header=BB0_156 Depth=2
	cmpl	$15, %edx
	jg	.LBB0_168
# BB#167:                               # %if.then.108.i
                                        #   in Loop: Header=BB0_156 Depth=2
	orl	$96, %edx
	movl	%edi, %eax
	movq	18832(%r14), %rcx
	movb	%dl, (%rcx,%rax)
	jmp	.LBB0_171
	.align	16, 0x90
.LBB0_168:                              # %if.else.i
                                        #   in Loop: Header=BB0_156 Depth=2
	movl	%edi, %ecx
	leaq	1(%rcx), %rax
	movq	18832(%r14), %rsi
	cmpl	$255, %edx
	jg	.LBB0_170
# BB#169:                               # %if.then.118.i
                                        #   in Loop: Header=BB0_156 Depth=2
	movb	$113, (%rsi,%rcx)
	movq	18832(%r14), %rcx
	movb	%dl, (%rcx,%rax)
	movl	%eax, %edi
	jmp	.LBB0_171
.LBB0_170:                              # %if.else.130.i
                                        #   in Loop: Header=BB0_156 Depth=2
	movb	$114, (%rsi,%rcx)
	orl	$2, %edi
	movq	18832(%r14), %rcx
	movb	%dl, (%rcx,%rax)
	movq	18832(%r14), %rax
	movb	%dh, (%rax,%rdi)  # NOREX
.LBB0_171:                              # %if.end.151.i
                                        #   in Loop: Header=BB0_156 Depth=2
	incl	%edi
	movl	18800(%r14), %eax
	movl	%eax, 18796(%r14)
.LBB0_172:                              # %for.body.160.i
                                        #   in Loop: Header=BB0_156 Depth=2
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_173:                              # %for.body.160.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_184 Depth 4
                                        #           Child Loop BB0_186 Depth 5
                                        #           Child Loop BB0_199 Depth 5
                                        #           Child Loop BB0_219 Depth 5
                                        #           Child Loop BB0_224 Depth 5
                                        #           Child Loop BB0_209 Depth 5
                                        #           Child Loop BB0_214 Depth 5
	cmpl	188(%rsp), %ebp         # 4-byte Folded Reload
	jne	.LBB0_175
# BB#174:                               # %if.then.164.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movslq	%edi, %rax
	movq	18832(%r14), %rcx
	movb	$-128, (%rcx,%rax)
	jmp	.LBB0_180
	.align	16, 0x90
.LBB0_175:                              # %if.else.170.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movslq	%edi, %rax
	cmpl	$2, %ebp
	jne	.LBB0_176
# BB#178:                               # %sw.bb.176.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	18832(%r14), %rcx
	movb	$-124, (%rcx,%rax)
	jmp	.LBB0_180
	.align	16, 0x90
.LBB0_176:                              # %if.else.170.i
                                        #   in Loop: Header=BB0_173 Depth=3
	cmpl	$1, %ebp
	jne	.LBB0_179
# BB#177:                               # %sw.bb.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	18832(%r14), %rcx
	movb	$-127, (%rcx,%rax)
	jmp	.LBB0_180
.LBB0_179:                              # %sw.default.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	18832(%r14), %rcx
	movb	$-126, (%rcx,%rax)
	.align	16, 0x90
.LBB0_180:                              # %if.end.187.i
                                        #   in Loop: Header=BB0_173 Depth=3
	leal	1(%rdi), %ecx
	movq	%rdi, %r10
	movl	18756(%r14), %eax
	decl	%eax
	movl	18800(%r14), %edx
	imull	%r12d, %edx
	addl	%ebp, %edx
	andl	%eax, %edx
	movq	18832(%r14), %r8
	movslq	%ecx, %rdi
	leaq	(%r8,%rdi), %rbx
	movslq	%edx, %rdx
	movq	18824(%r14), %rsi
	movq	(%rsi,%rdx,8), %r9
	movq	%r9, 240(%rsp)          # 8-byte Spill
	movq	18840(%r14,%rbp,8), %r13
	leaq	4(%r13), %rsi
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	movl	(%r13), %r15d
	testq	%r9, %r9
	je	.LBB0_230
# BB#181:                               # %if.end.187.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	18816(%r14), %rsi
	movl	(%rsi,%rdx,4), %edx
	testl	%edx, %edx
	jle	.LBB0_230
# BB#182:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	%r13, 224(%rsp)         # 8-byte Spill
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	movq	%r10, 168(%rsp)         # 8-byte Spill
	cmpl	%edx, %r15d
	cmovll	%edx, %r15d
	movl	%edx, 156(%rsp)         # 4-byte Spill
	movslq	%r15d, %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	xorl	%r11d, %r11d
	testl	%eax, %eax
	movq	%rbx, %rsi
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	jle	.LBB0_229
# BB#183:                               # %for.cond.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_173 Depth=3
	leaq	1(%r8,%rdi), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	2(%r8,%rdi), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_184:                              # %for.cond.preheader.i.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_186 Depth 5
                                        #           Child Loop BB0_199 Depth 5
                                        #           Child Loop BB0_219 Depth 5
                                        #           Child Loop BB0_224 Depth 5
                                        #           Child Loop BB0_209 Depth 5
                                        #           Child Loop BB0_214 Depth 5
	cmpl	%r15d, %r13d
	movl	%r13d, %r14d
	jge	.LBB0_188
# BB#185:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movslq	%r13d, %r14
	movq	224(%rsp), %rdx         # 8-byte Reload
	movq	216(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB0_186:                              # %for.body.i.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        #         Parent Loop BB0_184 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	4(%rdx,%r14), %eax
	movzbl	(%r9,%r14), %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_188
# BB#187:                               # %for.inc.i.i
                                        #   in Loop: Header=BB0_186 Depth=5
	incq	%r14
	cmpq	%rdi, %r14
	jl	.LBB0_186
.LBB0_188:                              # %for.end.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movl	%r14d, %eax
	subl	%r13d, %eax
	jle	.LBB0_189
# BB#190:                               # %if.then.15.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	cmpl	%r15d, %r14d
	je	.LBB0_191
# BB#192:                               # %if.end.19.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	cmpl	$7, %eax
	jg	.LBB0_194
# BB#193:                               # %if.then.22.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	orl	$64, %eax
	movslq	%r8d, %rcx
	incl	%r8d
	movb	%al, (%rsi,%rcx)
	jmp	.LBB0_197
	.align	16, 0x90
.LBB0_189:                              #   in Loop: Header=BB0_184 Depth=4
	movl	%r13d, %r14d
	jmp	.LBB0_197
	.align	16, 0x90
.LBB0_194:                              # %if.else.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movslq	%r8d, %rcx
	cmpl	$127, %eax
	jg	.LBB0_196
# BB#195:                               # %if.then.29.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movb	$81, (%rsi,%rcx)
	movl	%ecx, %r8d
	addl	$2, %r8d
	movb	%al, 1(%rsi,%rcx)
	jmp	.LBB0_197
.LBB0_196:                              # %if.else.37.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movb	$82, (%rsi,%rcx)
	movb	%al, 1(%rsi,%rcx)
	leal	3(%rcx), %r8d
	movb	%ah, 2(%rcx,%rsi)  # NOREX
	.align	16, 0x90
.LBB0_197:                              # %if.end.52.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	leal	1(%r14), %r13d
	xorl	%eax, %eax
	movq	%rsi, %rbx
	cmpl	%r15d, %r13d
	jge	.LBB0_204
# BB#198:                               # %for.body.58.lr.ph.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	leal	1(%r14), %eax
	cltq
	movq	232(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rcx
	leaq	(%rax,%r9), %rdx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_199:                              # %for.body.58.i.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        #         Parent Loop BB0_184 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rcx), %esi
	movzbl	(%rdx), %edi
	cmpl	%esi, %edi
	jne	.LBB0_201
# BB#200:                               #   in Loop: Header=BB0_199 Depth=5
	incl	%eax
	jmp	.LBB0_202
	.align	16, 0x90
.LBB0_201:                              # %select.mid1210
                                        #   in Loop: Header=BB0_199 Depth=5
	xorl	%eax, %eax
.LBB0_202:                              # %select.end1209
                                        #   in Loop: Header=BB0_199 Depth=5
	incl	%r13d
	cmpl	%r15d, %r13d
	jge	.LBB0_204
# BB#203:                               # %select.end1209
                                        #   in Loop: Header=BB0_199 Depth=5
	incq	%rcx
	incq	%rdx
	cmpl	$4, %eax
	jl	.LBB0_199
.LBB0_204:                              # %for.end.73.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	subl	%r14d, %r13d
	subl	%eax, %r13d
	movslq	%r8d, %rbp
	leaq	(%rbx,%rbp), %r12
	leaq	3(%rbx,%rbp), %rdi
	movslq	%r14d, %rax
	leaq	(%rax,%r9), %rsi
	movl	%r13d, %edx
	movq	%r8, %rbx
	callq	stc_rle
	cmpl	$15, %eax
	jg	.LBB0_216
# BB#205:                               # %if.then.82.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movl	%eax, %ecx
	orl	$32, %ecx
	leal	1(%rbx), %r11d
	movb	%cl, (%r12)
	testl	%eax, %eax
	movq	%rbx, %r10
	jle	.LBB0_206
# BB#207:                               # %for.body.91.lr.ph.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	leal	-1(%rax), %edx
	leaq	1(%rdx), %r8
	movq	%r8, %rsi
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rsi
	movl	$0, %edi
	movl	$1, %ecx
	je	.LBB0_211
# BB#208:                               # %vector.ph627
                                        #   in Loop: Header=BB0_184 Depth=4
	movslq	%r11d, %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	incq	%rdx
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rdx
	xorl	%edi, %edi
	movq	248(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB0_209:                              # %vector.body617
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        #         Parent Loop BB0_184 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	paddq	%xmm0, %xmm1
	movd	%rcx, %xmm2
	pslldq	$8, %xmm2               # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
	paddq	%xmm1, %xmm2
	movd	%xmm2, %rbp
	movupd	2(%rbx,%rbp), %xmm1
	movupd	18(%rbx,%rbp), %xmm2
	movupd	%xmm1, (%rbx,%rbp)
	movupd	%xmm2, 16(%rbx,%rbp)
	addq	$32, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_209
# BB#210:                               #   in Loop: Header=BB0_184 Depth=4
	movq	%rsi, %rdi
.LBB0_211:                              # %middle.block618
                                        #   in Loop: Header=BB0_184 Depth=4
	cmpq	%rdi, %r8
	movq	240(%rsp), %r9          # 8-byte Reload
	jne	.LBB0_213
# BB#212:                               #   in Loop: Header=BB0_184 Depth=4
	movq	248(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB0_228
	.align	16, 0x90
.LBB0_216:                              # %if.else.102.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	cmpl	$255, %eax
	jg	.LBB0_226
# BB#217:                               # %for.body.116.lr.ph.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movb	$49, (%r12)
	leal	2(%rbp), %r11d
	movq	248(%rsp), %rcx         # 8-byte Reload
	movb	%al, 1(%rcx,%rbp)
	movq	%rcx, %rbp
	leal	-1(%rax), %edx
	leaq	1(%rdx), %r8
	movq	%r8, %rsi
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rsi
	movl	$0, %edi
	movl	$1, %ecx
	movq	%rbx, %r10
	je	.LBB0_221
# BB#218:                               # %vector.ph654
                                        #   in Loop: Header=BB0_184 Depth=4
	movslq	%r11d, %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	incq	%rdx
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rdx
	xorl	%edi, %edi
	movq	%rbp, %rbx
	.align	16, 0x90
.LBB0_219:                              # %vector.body644
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        #         Parent Loop BB0_184 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	paddq	%xmm0, %xmm1
	movd	%rcx, %xmm2
	pslldq	$8, %xmm2               # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
	paddq	%xmm1, %xmm2
	movd	%xmm2, %rbp
	movupd	1(%rbx,%rbp), %xmm1
	movupd	17(%rbx,%rbp), %xmm2
	movupd	%xmm1, (%rbx,%rbp)
	movupd	%xmm2, 16(%rbx,%rbp)
	addq	$32, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_219
# BB#220:                               #   in Loop: Header=BB0_184 Depth=4
	movq	%rbx, %rbp
	movq	%rsi, %rdi
.LBB0_221:                              # %middle.block645
                                        #   in Loop: Header=BB0_184 Depth=4
	cmpq	%rdi, %r8
	movq	240(%rsp), %r9          # 8-byte Reload
	jne	.LBB0_223
# BB#222:                               #   in Loop: Header=BB0_184 Depth=4
	movq	%rbp, %rsi
	jmp	.LBB0_228
	.align	16, 0x90
.LBB0_226:                              # %if.else.127.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movb	$50, (%r12)
	movq	248(%rsp), %rsi         # 8-byte Reload
	movb	%al, 1(%rsi,%rbp)
	leal	3(%rbp), %r11d
	movb	%ah, 2(%rbp,%rsi)  # NOREX
	jmp	.LBB0_227
.LBB0_206:                              #   in Loop: Header=BB0_184 Depth=4
	movq	248(%rsp), %rsi         # 8-byte Reload
.LBB0_227:                              # %if.end.143.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	movq	240(%rsp), %r9          # 8-byte Reload
	jmp	.LBB0_228
.LBB0_213:                              # %for.body.91.i.i.preheader
                                        #   in Loop: Header=BB0_184 Depth=4
	incl	%r10d
	movslq	%r10d, %rcx
	leaq	(%rcx,%rdi), %rcx
	movq	200(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movl	%eax, %edx
	subl	%edi, %edx
	.align	16, 0x90
.LBB0_214:                              # %for.body.91.i.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        #         Parent Loop BB0_184 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	(%rcx), %bl
	movb	%bl, -2(%rcx)
	incq	%rcx
	decl	%edx
	jne	.LBB0_214
# BB#215:                               #   in Loop: Header=BB0_184 Depth=4
	movq	248(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB0_228
.LBB0_223:                              # %for.body.116.i.i.preheader
                                        #   in Loop: Header=BB0_184 Depth=4
	addl	$2, %r10d
	movslq	%r10d, %rcx
	leaq	(%rcx,%rdi), %rcx
	movq	192(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movl	%eax, %edx
	subl	%edi, %edx
	.align	16, 0x90
.LBB0_224:                              # %for.body.116.i.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        #       Parent Loop BB0_173 Depth=3
                                        #         Parent Loop BB0_184 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	(%rcx), %bl
	movb	%bl, -1(%rcx)
	incq	%rcx
	decl	%edx
	jne	.LBB0_224
# BB#225:                               #   in Loop: Header=BB0_184 Depth=4
	movq	%rbp, %rsi
	.align	16, 0x90
.LBB0_228:                              # %if.end.143.i.i
                                        #   in Loop: Header=BB0_184 Depth=4
	addl	%eax, %r11d
	addl	%r14d, %r13d
	cmpl	%r15d, %r13d
	movl	%r11d, %r8d
	jl	.LBB0_184
	jmp	.LBB0_229
	.align	16, 0x90
.LBB0_230:                              # %if.else.149.i.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	testl	%r15d, %r15d
	movq	%r10, %r15
	jle	.LBB0_232
# BB#231:                               # %if.then.153.i.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movb	$-31, (%rbx)
	movslq	(%r13), %rdx
	xorl	%esi, %esi
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	%rcx, %rbp
	callq	memset
	movq	%rbp, %rcx
	movl	$0, (%r13)
	movl	$1, %edx
	jmp	.LBB0_232
.LBB0_191:                              #   in Loop: Header=BB0_173 Depth=3
	movl	%r8d, %r11d
.LBB0_229:                              # %while.end.i.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	216(%rsp), %rdx         # 8-byte Reload
	movq	%r11, %rbx
	callq	memcpy
	movq	%rbx, %rdx
	movq	224(%rsp), %rax         # 8-byte Reload
	movl	156(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	144(%rsp), %r12         # 8-byte Reload
	movq	168(%rsp), %r15         # 8-byte Reload
	movq	160(%rsp), %rcx         # 8-byte Reload
.LBB0_232:                              # %stc_deltarow.exit.i
                                        #   in Loop: Header=BB0_173 Depth=3
	leal	(%rcx,%rdx), %eax
	testl	%edx, %edx
	cmovel	%r15d, %eax
	testl	%eax, %eax
	movq	176(%rsp), %r15         # 8-byte Reload
	jle	.LBB0_234
# BB#233:                               # %if.then.218.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	18832(%r14), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	256(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
.LBB0_234:                              # %if.end.223.i
                                        #   in Loop: Header=BB0_173 Depth=3
	movq	208(%rsp), %rbp         # 8-byte Reload
	incq	%rbp
	xorl	%edi, %edi
	cmpq	%r15, %rbp
	jl	.LBB0_173
# BB#235:                               # %for.end.226.i
                                        #   in Loop: Header=BB0_156 Depth=2
	movl	18800(%r14), %edx
	incl	%edx
	movl	%edx, 18800(%r14)
	movl	18808(%r14), %r9d
	cmpl	%r9d, %edx
	jl	.LBB0_236
.LBB0_89:                               #   in Loop: Header=BB0_71 Depth=1
	movl	%edx, %r10d
	jmp	.LBB0_90
	.align	16, 0x90
.LBB0_237:                              # %if.else.835
                                        #   in Loop: Header=BB0_71 Depth=1
	cmpl	$2, 52(%rsp)            # 4-byte Folded Reload
	jl	.LBB0_267
# BB#238:                               # %if.then.838
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	18780(%r14), %eax
	cltd
	idivl	18772(%r14)
	movl	%eax, 224(%rsp)         # 4-byte Spill
	movl	$1, %r15d
	cmpl	$1, 100(%r14)
	je	.LBB0_240
# BB#239:                               # %select.mid1258
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	$4, %r15d
.LBB0_240:                              # %select.end1257
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	%r15d, 208(%rsp)        # 4-byte Spill
	movl	18800(%r14), %r10d
	movl	18808(%r14), %r9d
	cmpl	%r9d, %r10d
	jge	.LBB0_90
# BB#241:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	%r15d, %eax
	imull	224(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 248(%rsp)         # 4-byte Spill
	movl	18788(%r14), %r8d
	.align	16, 0x90
.LBB0_242:                              # %while.body.i.364
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_246 Depth 3
                                        #         Child Loop BB0_251 Depth 4
                                        #         Child Loop BB0_255 Depth 4
                                        #         Child Loop BB0_260 Depth 4
                                        #           Child Loop BB0_263 Depth 5
	movl	%r8d, %edi
	subl	%r10d, %edi
	movl	%r8d, %eax
	movl	%r8d, %r12d
	jle	.LBB0_244
# BB#243:                               # %if.else.i.368
                                        #   in Loop: Header=BB0_242 Depth=2
	leal	1(%r8), %eax
	cltd
	movl	224(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	imull	%r10d, %eax
	movl	%r8d, %r12d
	subl	%eax, %r12d
	cmpl	%ecx, %r10d
	movl	$1, %eax
	cmovll	%eax, %edi
	movl	%edi, %eax
.LBB0_244:                              # %if.end.40.i
                                        #   in Loop: Header=BB0_242 Depth=2
	movq	%r12, 232(%rsp)         # 8-byte Spill
	movl	%eax, 200(%rsp)         # 4-byte Spill
	movl	%r12d, %eax
	imull	224(%rsp), %eax         # 4-byte Folded Reload
	addl	%r10d, %eax
	cmpl	%eax, 18804(%r14)
	jl	.LBB0_90
# BB#245:                               # %for.cond.preheader.i.369
                                        #   in Loop: Header=BB0_242 Depth=2
	leal	1(%r12), %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_246:                              # %for.body.i.371
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_251 Depth 4
                                        #         Child Loop BB0_255 Depth 4
                                        #         Child Loop BB0_260 Depth 4
                                        #           Child Loop BB0_263 Depth 5
	movl	$1, %eax
	cmpl	$1, 100(%r14)
	je	.LBB0_248
# BB#247:                               # %select.mid1269
                                        #   in Loop: Header=BB0_246 Depth=3
	movl	$4, %eax
.LBB0_248:                              # %select.end1268
                                        #   in Loop: Header=BB0_246 Depth=3
	testl	%r12d, %r12d
	jle	.LBB0_249
# BB#250:                               # %while.body.lr.ph.i.i
                                        #   in Loop: Header=BB0_246 Depth=3
	movl	18800(%r14), %ecx
	imull	%eax, %ecx
	addl	%r13d, %ecx
	movl	18756(%r14), %edx
	decl	%edx
	movq	18816(%r14), %rsi
	imull	224(%rsp), %eax         # 4-byte Folded Reload
	xorl	%ebp, %ebp
	movl	216(%rsp), %edi         # 4-byte Reload
	.align	16, 0x90
.LBB0_251:                              # %while.body.i.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_246 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	andl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rsi,%rcx,4), %ebx
	cmpl	%ebp, %ebx
	cmovgel	%ebx, %ebp
	addl	%eax, %ecx
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB0_251
# BB#252:                               # %stc_bandwidth.exit.i
                                        #   in Loop: Header=BB0_246 Depth=3
	testl	%ebp, %ebp
	je	.LBB0_253
# BB#254:                               # %for.body.64.lr.ph.i
                                        #   in Loop: Header=BB0_246 Depth=3
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	256(%rsp), %rsi         # 8-byte Reload
	movl	%r13d, %ecx
	movl	%ebp, %r9d
	callq	stc_print_escpcmd
	movl	%eax, %ebx
	movl	18800(%r14), %eax
	imull	%r15d, %eax
	addl	%r13d, %eax
	movl	%r13d, 240(%rsp)        # 4-byte Spill
	movq	%r14, %r15
	movl	18756(%r15), %r14d
	decl	%r14d
	andl	%eax, %r14d
	movslq	%ebp, %r13
	.align	16, 0x90
.LBB0_255:                              # %for.body.64.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_246 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	18472(%r15), %rax
	movl	$3072, %ecx             # imm = 0xC00
	andq	%rcx, %rax
	movslq	%ebx, %rdi
	addq	18832(%r15), %rdi
	movslq	%r14d, %rcx
	movq	18824(%r15), %rdx
	movq	(%rdx,%rcx,8), %rsi
	cmpq	$1024, %rax             # imm = 0x400
	jne	.LBB0_257
# BB#256:                               # %if.then.68.i
                                        #   in Loop: Header=BB0_255 Depth=4
	movq	%r13, %rdx
	callq	memcpy
	movl	%ebp, %eax
	jmp	.LBB0_258
	.align	16, 0x90
.LBB0_257:                              # %if.else.73.i
                                        #   in Loop: Header=BB0_255 Depth=4
	movl	%ebp, %edx
	callq	stc_rle
.LBB0_258:                              # %if.end.84.i
                                        #   in Loop: Header=BB0_255 Depth=4
	addl	%ebx, %eax
	movq	18832(%r15), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	256(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	movl	18756(%r15), %eax
	decl	%eax
	addl	248(%rsp), %r14d        # 4-byte Folded Reload
	andl	%eax, %r14d
	xorl	%ebx, %ebx
	decl	%r12d
	jne	.LBB0_255
# BB#259:                               # %while.cond.95.preheader.i
                                        #   in Loop: Header=BB0_246 Depth=3
	movl	18788(%r15), %r8d
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	%r8d, %eax
	movl	%eax, %r12d
	movq	%r15, %r14
	movl	$129, %ebx
	movl	208(%rsp), %r15d        # 4-byte Reload
	jge	.LBB0_265
	.align	16, 0x90
.LBB0_260:                              # %while.body.101.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_246 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_263 Depth 5
	incl	%r12d
	movq	18472(%r14), %rax
	movl	$3072, %ecx             # imm = 0xC00
	andq	%rcx, %rax
	movq	18832(%r14), %rdi
	cmpq	$1024, %rax             # imm = 0x400
	jne	.LBB0_262
# BB#261:                               # %if.then.107.i
                                        #   in Loop: Header=BB0_260 Depth=4
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
	movl	%ebp, %eax
	jmp	.LBB0_264
	.align	16, 0x90
.LBB0_262:                              # %if.else.115.i
                                        #   in Loop: Header=BB0_260 Depth=4
	xorl	%eax, %eax
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	jle	.LBB0_264
	.align	16, 0x90
.LBB0_263:                              # %while.body.66.i.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_246 Depth=3
                                        #         Parent Loop BB0_260 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpl	$129, %ecx
	movl	%ecx, %edx
	cmovgl	%ebx, %edx
	movl	$257, %esi              # imm = 0x101
	subl	%edx, %esi
	subl	%edx, %ecx
	movb	%sil, (%rdi,%rax)
	movb	$0, 1(%rdi,%rax)
	leaq	2(%rax), %rax
	jg	.LBB0_263
.LBB0_264:                              # %if.end.122.i
                                        #   in Loop: Header=BB0_260 Depth=4
	movq	18832(%r14), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	256(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	movl	18788(%r14), %r8d
	cmpl	%r8d, %r12d
	jl	.LBB0_260
	jmp	.LBB0_265
	.align	16, 0x90
.LBB0_249:                              #   in Loop: Header=BB0_246 Depth=3
	movl	%r13d, 240(%rsp)        # 4-byte Spill
	jmp	.LBB0_265
	.align	16, 0x90
.LBB0_253:                              #   in Loop: Header=BB0_246 Depth=3
	movl	%r13d, 240(%rsp)        # 4-byte Spill
.LBB0_265:                              # %for.inc.127.i
                                        #   in Loop: Header=BB0_246 Depth=3
	movl	240(%rsp), %r13d        # 4-byte Reload
	incl	%r13d
	cmpl	%r15d, %r13d
	movq	232(%rsp), %r12         # 8-byte Reload
	jl	.LBB0_246
# BB#266:                               # %for.end.129.i
                                        #   in Loop: Header=BB0_242 Depth=2
	movl	200(%rsp), %eax         # 4-byte Reload
	addl	18800(%r14), %eax
	movl	%eax, 18800(%r14)
	movl	18808(%r14), %r9d
	cmpl	%r9d, %eax
	movl	%eax, %r10d
	jl	.LBB0_242
	jmp	.LBB0_90
	.align	16, 0x90
.LBB0_267:                              # %if.else.839
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	$1, 248(%rsp)           # 4-byte Folded Spill
	cmpl	$1, 100(%r14)
	je	.LBB0_269
# BB#268:                               # %select.mid1326
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	$4, 248(%rsp)           # 4-byte Folded Spill
.LBB0_269:                              # %select.end1325
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	18800(%r14), %r10d
	movl	18808(%r14), %r9d
	cmpl	%r9d, %r10d
	jge	.LBB0_90
# BB#270:                               # %for.cond.preheader.lr.ph.i.392
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	248(%rsp), %r15d        # 4-byte Reload
	cmpl	%eax, %r10d
	movl	%r10d, %edx
	jge	.LBB0_90
.LBB0_271:                              # %for.body.lr.ph.i.396
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #         Child Loop BB0_273 Depth 4
                                        #       Child Loop BB0_282 Depth 3
                                        #         Child Loop BB0_287 Depth 4
                                        #         Child Loop BB0_290 Depth 4
	movq	18816(%r14), %r8
	movl	18756(%r14), %r11d
	leal	-1(%r11), %ebp
	movl	%edx, %r10d
	.align	16, 0x90
.LBB0_272:                              # %for.body.i.399
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_273 Depth 4
	movl	%r10d, %ecx
	imull	248(%rsp), %ecx         # 4-byte Folded Reload
	andl	%ebp, %ecx
	movslq	%ecx, %rcx
	leaq	(%r8,%rcx,4), %rbx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_273:                              # %for.body.12.i.406
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        #       Parent Loop BB0_272 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rbx,%rdi,4), %esi
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	incq	%rdi
	cmpq	%r15, %rdi
	jl	.LBB0_273
# BB#274:                               # %for.end.i.408
                                        #   in Loop: Header=BB0_272 Depth=3
	testl	%ecx, %ecx
	jne	.LBB0_276
# BB#275:                               # %for.inc.23.i.411
                                        #   in Loop: Header=BB0_272 Depth=3
	incl	%r10d
	movl	%r10d, 18800(%r14)
	cmpl	%eax, %r10d
	jl	.LBB0_272
	jmp	.LBB0_90
.LBB0_276:                              # %if.end.30.i
                                        #   in Loop: Header=BB0_271 Depth=2
	movl	%r9d, %edi
	subl	%r10d, %edi
	movl	18788(%r14), %edx
	cmpl	%edx, %edi
	jge	.LBB0_280
# BB#277:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_271 Depth=2
	cmpl	$40, 18780(%r14)
	je	.LBB0_280
# BB#278:                               # %if.then.40.i
                                        #   in Loop: Header=BB0_271 Depth=2
	movl	$1, %edx
	cmpl	$8, %edi
	jl	.LBB0_280
# BB#279:                               # %if.else.i.413
                                        #   in Loop: Header=BB0_271 Depth=2
	cmpl	$24, %edi
	movl	$24, %edx
	movl	$8, %ecx
	cmovll	%ecx, %edx
.LBB0_280:                              # %if.end.51.i
                                        #   in Loop: Header=BB0_271 Depth=2
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	leal	(%rdx,%r10), %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_90
# BB#281:                               # %for.cond.60.preheader.i
                                        #   in Loop: Header=BB0_271 Depth=2
	leal	1(%rdx), %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB0_282:                              # %for.body.62.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_287 Depth 4
                                        #         Child Loop BB0_290 Depth 4
	movl	$1, %eax
	cmpl	$1, 100(%r14)
	je	.LBB0_284
# BB#283:                               # %select.mid1346
                                        #   in Loop: Header=BB0_282 Depth=3
	movl	$4, %eax
.LBB0_284:                              # %select.end1345
                                        #   in Loop: Header=BB0_282 Depth=3
	testl	%edx, %edx
	jle	.LBB0_285
# BB#286:                               # %while.body.lr.ph.i.i.420
                                        #   in Loop: Header=BB0_282 Depth=3
	movl	18800(%r14), %ecx
	imull	%eax, %ecx
	addl	%esi, %ecx
	movl	%esi, 232(%rsp)         # 4-byte Spill
	leal	-1(%r11), %esi
	movq	18816(%r14), %rdi
	movq	%r14, %r13
	xorl	%ebx, %ebx
	movl	216(%rsp), %ebp         # 4-byte Reload
	.align	16, 0x90
.LBB0_287:                              # %while.body.i.i.432
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        #       Parent Loop BB0_282 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	andl	%esi, %ecx
	movslq	%ecx, %rcx
	movl	(%rdi,%rcx,4), %edx
	cmpl	%ebx, %edx
	cmovgel	%edx, %ebx
	addl	%eax, %ecx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_287
# BB#288:                               # %stc_bandwidth.exit.i.433
                                        #   in Loop: Header=BB0_282 Depth=3
	testl	%ebx, %ebx
	je	.LBB0_294
# BB#289:                               # %for.body.77.lr.ph.i
                                        #   in Loop: Header=BB0_282 Depth=3
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	256(%rsp), %rsi         # 8-byte Reload
	movl	232(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %ecx
	movq	224(%rsp), %r8          # 8-byte Reload
	movl	%ebx, %r9d
	callq	stc_print_escpcmd
	movl	%eax, %ebp
	movl	18800(%r13), %eax
	imull	248(%rsp), %eax         # 4-byte Folded Reload
	addl	%r14d, %eax
	movl	18756(%r13), %r12d
	decl	%r12d
	andl	%eax, %r12d
	movslq	%ebx, %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	224(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r14d
	.align	16, 0x90
.LBB0_290:                              # %for.body.77.i
                                        #   Parent Loop BB0_71 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        #       Parent Loop BB0_282 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	18472(%r13), %rax
	movl	$3072, %ecx             # imm = 0xC00
	andq	%rcx, %rax
	movslq	%ebp, %rdi
	addq	18832(%r13), %rdi
	movslq	%r12d, %rcx
	movq	18824(%r13), %rdx
	movq	(%rdx,%rcx,8), %rsi
	cmpq	$1024, %rax             # imm = 0x400
	jne	.LBB0_292
# BB#291:                               # %if.then.81.i
                                        #   in Loop: Header=BB0_290 Depth=4
	movq	240(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	%ebx, %eax
	jmp	.LBB0_293
	.align	16, 0x90
.LBB0_292:                              # %if.else.88.i
                                        #   in Loop: Header=BB0_290 Depth=4
	movl	%ebx, %edx
	callq	stc_rle
.LBB0_293:                              # %if.end.99.i
                                        #   in Loop: Header=BB0_290 Depth=4
	addl	%ebp, %eax
	movq	18832(%r13), %rdi
	movslq	%eax, %rdx
	movl	$1, %esi
	movq	256(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	movl	18756(%r13), %r11d
	leal	-1(%r11), %eax
	addl	248(%rsp), %r12d        # 4-byte Folded Reload
	andl	%eax, %r12d
	xorl	%ebp, %ebp
	decl	%r14d
	jne	.LBB0_290
	jmp	.LBB0_294
	.align	16, 0x90
.LBB0_285:                              #   in Loop: Header=BB0_282 Depth=3
	movl	%esi, 232(%rsp)         # 4-byte Spill
	movq	%r14, %r13
.LBB0_294:                              # %for.inc.112.i
                                        #   in Loop: Header=BB0_282 Depth=3
	movl	232(%rsp), %esi         # 4-byte Reload
	incl	%esi
	cmpl	248(%rsp), %esi         # 4-byte Folded Reload
	movq	%r13, %r14
	movq	224(%rsp), %rdx         # 8-byte Reload
	jl	.LBB0_282
# BB#295:                               # %for.end.114.i
                                        #   in Loop: Header=BB0_271 Depth=2
	addl	18800(%r14), %edx
	movl	%edx, 18800(%r14)
	movl	18808(%r14), %r9d
	cmpl	%r9d, %edx
	jge	.LBB0_296
# BB#297:                               # %for.end.114.i.for.cond.preheader.i.393_crit_edge
                                        #   in Loop: Header=BB0_271 Depth=2
	movl	18804(%r14), %eax
	cmpl	%eax, %edx
	movl	%edx, %r10d
	jl	.LBB0_271
	jmp	.LBB0_90
.LBB0_296:                              #   in Loop: Header=BB0_71 Depth=1
	movl	%edx, %r10d
	.align	16, 0x90
.LBB0_90:                               # %while.cond.464.backedge
                                        #   in Loop: Header=BB0_71 Depth=1
	cmpl	%r9d, %r10d
	jl	.LBB0_91
# BB#298:                               # %while.cond.464.while.end.842_crit_edge
	movq	18472(%r14), %rsi
.LBB0_299:                              # %while.end.842
	testl	$8388608, %esi          # imm = 0x800000
	movq	128(%rsp), %rbp         # 8-byte Reload
	je	.LBB0_303
# BB#300:                               # %if.then.847
	movq	16(%rsp), %rax          # 8-byte Reload
	andl	$3072, %eax             # imm = 0xC00
	cmpq	$2048, %rax             # imm = 0x800
	jne	.LBB0_302
# BB#301:                               # %if.then.851
	movl	$227, %edi
	movq	256(%rsp), %rsi         # 8-byte Reload
	callq	fputc
.LBB0_302:                              # %if.end.853
	movq	18720(%r14), %rdi
	movl	18728(%r14), %edx
	movl	$1, %esi
	movq	256(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rcx
	callq	fwrite
	movq	%rbx, %rdi
	callq	fflush
.LBB0_303:                              # %if.end.862
	movq	80(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB0_305
# BB#304:                               # %if.then.865
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.64, %edx
	callq	*24(%rdi)
.LBB0_305:                              # %if.end.871
	testq	%rbp, %rbp
	je	.LBB0_307
# BB#306:                               # %if.then.874
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.65, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB0_307:                              # %if.end.881
	movq	64(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB0_309
# BB#308:                               # %if.then.884
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.66, %edx
	callq	*24(%rdi)
.LBB0_309:                              # %if.end.891
	movq	88(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB0_311
# BB#310:                               # %if.then.894
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.67, %edx
	callq	*24(%rdi)
.LBB0_311:                              # %if.end.901
	movq	18816(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB0_313
# BB#312:                               # %if.then.906
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.68, %edx
	callq	*24(%rdi)
.LBB0_313:                              # %if.end.915
	movq	18824(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB0_321
# BB#314:                               # %for.cond.923.preheader
	movl	18756(%r14), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jg	.LBB0_315
	jmp	.LBB0_320
	.align	16, 0x90
.LBB0_318:                              # %for.inc.947.for.body.928_crit_edge
                                        #   in Loop: Header=BB0_315 Depth=1
	movq	18824(%r14), %rsi
.LBB0_315:                              # %for.body.928
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_317
# BB#316:                               # %if.then.935
                                        #   in Loop: Header=BB0_315 Depth=1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.70, %edx
	callq	*24(%rdi)
	movl	18756(%r14), %eax
.LBB0_317:                              # %for.inc.947
                                        #   in Loop: Header=BB0_315 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	.LBB0_318
# BB#319:                               # %for.cond.923.for.end.949_crit_edge
	movq	18824(%r14), %rsi
.LBB0_320:                              # %for.end.949
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.69, %edx
	callq	*24(%rdi)
.LBB0_321:                              # %for.cond.961.preheader
	movl	100(%r14), %eax
	testl	%eax, %eax
	jle	.LBB0_326
# BB#322:                               # %for.body.966.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_323:                              # %for.body.966
                                        # =>This Inner Loop Header: Depth=1
	movq	18840(%r14,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_325
# BB#324:                               # %if.then.973
                                        #   in Loop: Header=BB0_323 Depth=1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.71, %edx
	callq	*24(%rdi)
	movl	100(%r14), %eax
.LBB0_325:                              # %for.inc.985
                                        #   in Loop: Header=BB0_323 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	.LBB0_323
.LBB0_326:                              # %for.end.987
	movq	18832(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB0_328
# BB#327:                               # %if.then.992
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.72, %edx
	callq	*24(%rdi)
.LBB0_328:                              # %if.end.1001
	xorl	%ecx, %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	testb	$2, %ah
	movl	$-21, %eax
	cmovnel	%ecx, %eax
.LBB0_329:                              # %cleanup.1006
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	stc_print_page, .Lfunc_end0-stc_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	-4347168339667269632    # double -1.0E+18
.LCPI1_1:
	.quad	4876203697187506176     # double 1.0E+18
.LCPI1_2:
	.quad	4607182418800017408     # double 1
.LCPI1_3:
	.quad	4679239875398991872     # double 65535
.LCPI1_6:
	.quad	4602678819172646912     # double 0.5
.LCPI1_7:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI1_10:
	.quad	4634766966517661696     # double 72
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI1_5:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_8:
	.long	1065353216              # float 1
.LCPI1_9:
	.long	3212836864              # float -1
	.text
	.align	16, 0x90
	.type	stc_open,@function
stc_open:                               # @stc_open
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
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	18472(%r14), %r13
	xorl	%ebx, %ebx
	cmpl	$0, 18696(%r14)
	jne	.LBB1_4
# BB#1:                                 # %for.cond.preheader
	movl	$9, 18696(%r14)
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$9, %esi
	movl	$16, %edx
	movl	$.L.str.2, %ecx
	callq	*88(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB1_2
# BB#3:                                 # %if.else
	movq	%r15, 216(%r13)
	movl	$1, 228(%r13)
	movq	$.L.str.55, (%r15)
	movl	$.L.str.55, %edi
	callq	strlen
	movl	%eax, 8(%r15)
	movl	$1, 12(%r15)
	movq	$.L.str.56, 16(%r15)
	movl	$.L.str.56, %edi
	callq	strlen
	movl	%eax, 24(%r15)
	movl	$1, 28(%r15)
	movq	$.L.str.57, 32(%r15)
	movl	$.L.str.57, %edi
	callq	strlen
	movl	%eax, 40(%r15)
	movl	$1, 44(%r15)
	movq	$.L.str.58, 48(%r15)
	movl	$.L.str.58, %edi
	callq	strlen
	movl	%eax, 56(%r15)
	movl	$1, 60(%r15)
	movq	$.L.str.59, 64(%r15)
	movl	$.L.str.59, %edi
	callq	strlen
	movl	%eax, 72(%r15)
	movl	$1, 76(%r15)
	movq	$.L.str.60, 80(%r15)
	movl	$.L.str.60, %edi
	callq	strlen
	movl	%eax, 88(%r15)
	movl	$1, 92(%r15)
	movq	$.L.str.61, 96(%r15)
	movl	$.L.str.61, %edi
	callq	strlen
	movl	%eax, 104(%r15)
	movl	$1, 108(%r15)
	movq	$.L.str.62, 112(%r15)
	movl	$.L.str.62, %edi
	callq	strlen
	movl	%eax, 120(%r15)
	movl	$1, 124(%r15)
	movq	$.L.str.63, 128(%r15)
	movl	$.L.str.63, %edi
	callq	strlen
	movl	%eax, 136(%r15)
	movl	$1, 140(%r15)
	xorl	%ebx, %ebx
	jmp	.LBB1_4
.LBB1_2:                                # %if.then.8
	movl	$0, 224(%r13)
	movl	$-25, %ebx
.LBB1_4:                                # %if.end.41
	movq	16(%r13), %rax
	movl	16(%rax), %eax
	andl	$24, %eax
	cmpl	$16, %eax
	jne	.LBB1_5
# BB#7:                                 # %sw.bb.44
	movl	$8, 280(%r13)
	jmp	.LBB1_9
.LBB1_5:                                # %if.end.41
	cmpl	$8, %eax
	jne	.LBB1_8
# BB#6:                                 # %sw.bb
	movl	$1, 280(%r13)
	jmp	.LBB1_9
.LBB1_8:                                # %sw.default
	movl	$4, 280(%r13)
.LBB1_9:                                # %sw.epilog
	movq	%r14, %rdi
	callq	stc_print_setup
	movl	100(%r14), %eax
	testl	%eax, %eax
	jle	.LBB1_10
# BB#11:                                # %for.body.53.lr.ph
	xorl	%r12d, %r12d
	movabsq	$-9223372036854775808, %rbp # imm = 0x8000000000000000
	movl	%ebx, %edx
	.align	16, 0x90
.LBB1_12:                               # %for.body.53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_35 Depth 2
                                        #       Child Loop BB1_36 Depth 3
                                        #     Child Loop BB1_46 Depth 2
                                        #     Child Loop BB1_72 Depth 2
                                        #     Child Loop BB1_53 Depth 2
	cmpl	$2, 64(%r13,%r12,4)
	jb	.LBB1_41
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	32(%r13,%r12,8), %rcx
	testq	%rcx, %rcx
	je	.LBB1_41
# BB#14:                                # %for.cond.65.preheader
                                        #   in Loop: Header=BB1_12 Depth=1
	xorl	%eax, %eax
	testq	%r12, %r12
	jle	.LBB1_17
	.align	16, 0x90
.LBB1_15:                               # %for.body.68
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	18504(%r14,%rax,8), %rcx
	je	.LBB1_17
# BB#16:                                # %for.inc.81
                                        #   in Loop: Header=BB1_15 Depth=2
	incq	%rax
	cmpq	%r12, %rax
	jl	.LBB1_15
.LBB1_17:                               # %for.end.83
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	%eax, %r12d
	jne	.LBB1_40
# BB#18:                                # %if.then.86
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movb	18480(%r14), %cl
	movl	$1, %esi
	shll	%cl, %esi
	movl	$2, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	xorpd	%xmm9, %xmm9
	movapd	.LCPI1_5(%rip), %xmm0   # xmm0 = [4.503600e+15,1.934281e+25]
	movapd	%xmm0, %xmm6
	movdqa	.LCPI1_4(%rip), %xmm0   # xmm0 = [1127219200,1160773632,0,0]
	movdqa	%xmm0, %xmm7
	movsd	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm8
	movq	%rax, 18552(%r14,%r12,8)
	movl	$-25, %ebx
	testq	%rax, %rax
	je	.LBB1_42
# BB#19:                                # %for.cond.107.preheader
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	64(%r13,%r12,4), %r11d
	testq	%r11, %r11
	je	.LBB1_34
# BB#20:                                # %for.body.115.lr.ph
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	32(%r13,%r12,8), %rcx
	testb	$1, %r11b
	movl	$0, %esi
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	je	.LBB1_22
# BB#21:                                # %for.body.115.prol
                                        #   in Loop: Header=BB1_12 Depth=1
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	minsd	.LCPI1_1(%rip), %xmm0
	maxsd	.LCPI1_0(%rip), %xmm2
	movl	$1, %esi
.LBB1_22:                               # %for.body.115.lr.ph.split
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$1, %r11d
	je	.LBB1_24
	.align	16, 0x90
.LBB1_23:                               # %for.body.115
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm1, %xmm3
	minsd	%xmm0, %xmm3
	maxsd	%xmm2, %xmm1
	movss	4(%rcx,%rsi,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	minsd	%xmm3, %xmm0
	maxsd	%xmm1, %xmm2
	addq	$2, %rsi
	cmpq	%r11, %rsi
	jb	.LBB1_23
.LBB1_24:                               # %for.end.150
                                        #   in Loop: Header=BB1_12 Depth=1
	ucomisd	.LCPI1_2(%rip), %xmm2
	jne	.LBB1_26
	jp	.LBB1_26
# BB#25:                                # %for.end.150
                                        #   in Loop: Header=BB1_12 Depth=1
	ucomisd	%xmm9, %xmm0
	jne	.LBB1_26
	jnp	.LBB1_34
.LBB1_26:                               # %if.then.155
                                        #   in Loop: Header=BB1_12 Depth=1
	testl	%r11d, %r11d
	je	.LBB1_34
# BB#27:                                # %for.body.164.lr.ph
                                        #   in Loop: Header=BB1_12 Depth=1
	subsd	%xmm0, %xmm2
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	movq	32(%r13,%r12,8), %rcx
	testl	%r11d, %r11d
	movl	$0, %esi
	je	.LBB1_33
# BB#28:                                # %overflow.checked
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	%r11d, %edi
	andl	$3, %edi
	cmpl	%edi, %r11d
	movl	$0, %esi
	je	.LBB1_32
# BB#29:                                # %vector.ph
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rbp, %rdx
	movq	%r11, %rsi
	subq	%rdi, %rsi
	movapd	%xmm0, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movapd	%xmm1, %xmm3
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	leaq	8(%rcx), %rdi
	movl	%r11d, %ebx
	andl	$3, %ebx
	movq	%r11, %rbp
	subq	%rbx, %rbp
	.align	16, 0x90
.LBB1_30:                               # %vector.body
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cvtps2pd	-8(%rdi), %xmm4
	cvtps2pd	(%rdi), %xmm5
	subpd	%xmm2, %xmm4
	subpd	%xmm2, %xmm5
	mulpd	%xmm3, %xmm4
	mulpd	%xmm3, %xmm5
	cvtpd2ps	%xmm4, %xmm4
	cvtpd2ps	%xmm5, %xmm5
	movlpd	%xmm4, -8(%rdi)
	movlpd	%xmm5, (%rdi)
	addq	$16, %rdi
	addq	$-4, %rbp
	jne	.LBB1_30
# BB#31:                                #   in Loop: Header=BB1_12 Depth=1
	movq	%rdx, %rbp
.LBB1_32:                               # %middle.block
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpq	%rsi, %r11
	je	.LBB1_34
	.align	16, 0x90
.LBB1_33:                               # %for.body.164
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%rsi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	subsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, (%rcx,%rsi,4)
	incq	%rsi
	cmpq	%r11, %rsi
	jb	.LBB1_33
.LBB1_34:                               # %if.end.181
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rbp, %r15
	movb	8(%r13), %cl
	movl	$1, %esi
	shll	%cl, %esi
	leal	-1(%rsi), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm0
	leal	-1(%r11), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rcx, %xmm2
	movapd	%xmm3, %xmm1
	divsd	%xmm2, %xmm1
	movq	32(%r13,%r12,8), %r9
	mulsd	%xmm8, %xmm1
	movslq	%esi, %r8
	leaq	4(%r9), %r10
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_35:                               # %for.body.202
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_36 Depth 3
	movd	%rbx, %xmm3
	punpckldq	%xmm7, %xmm3    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1]
	subpd	%xmm6, %xmm3
	pshufd	$78, %xmm3, %xmm2       # xmm2 = xmm3[2,3,0,1]
	addpd	%xmm3, %xmm2
	mulsd	%xmm0, %xmm2
	leaq	(%r10,%rcx,4), %rsi
	movq	%rcx, %rbp
	.align	16, 0x90
.LBB1_36:                               # %while.cond
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rcx
	movq	%rsi, %rdi
	leaq	1(%rcx), %rbp
	cmpq	%r11, %rbp
	jae	.LBB1_38
# BB#37:                                # %land.rhs
                                        #   in Loop: Header=BB1_36 Depth=3
	movss	(%rdi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	leaq	4(%rdi), %rsi
	ucomisd	%xmm3, %xmm2
	ja	.LBB1_36
.LBB1_38:                               # %while.end
                                        #   in Loop: Header=BB1_35 Depth=2
	movd	%rcx, %xmm3
	punpckldq	%xmm7, %xmm3    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1]
	subpd	%xmm6, %xmm3
	pshufd	$78, %xmm3, %xmm4       # xmm4 = xmm3[2,3,0,1]
	addpd	%xmm3, %xmm4
	movss	(%r9,%rcx,4), %xmm3     # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm5
	subsd	%xmm5, %xmm2
	movss	(%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm5
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm5, %xmm3
	divsd	%xmm3, %xmm2
	addsd	%xmm4, %xmm2
	mulsd	%xmm1, %xmm2
	movapd	%xmm8, %xmm3
	minsd	%xmm2, %xmm3
	cmpltsd	%xmm9, %xmm2
	andnpd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %esi
	movzwl	%si, %edi
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%edi, %xmm3
	subsd	%xmm3, %xmm2
	ucomisd	.LCPI1_6(%rip), %xmm2
	setae	%dl
	movzbl	%dl, %edx
	addl	%esi, %edx
	movw	%dx, (%rax,%rbx,2)
	incq	%rbx
	cmpq	%r8, %rbx
	jb	.LBB1_35
# BB#39:                                #   in Loop: Header=BB1_12 Depth=1
	movl	12(%rsp), %ebx          # 4-byte Reload
	movq	%r15, %rbp
	jmp	.LBB1_42
.LBB1_40:                               # %if.else.285
                                        #   in Loop: Header=BB1_12 Depth=1
	cltq
	movq	80(%r13,%rax,8), %rax
	movq	%rax, 80(%r13,%r12,8)
	.align	16, 0x90
.LBB1_41:                               # %if.end.295
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	%edx, %ebx
.LBB1_42:                               # %if.end.295
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$2, 144(%r13,%r12,4)
	jb	.LBB1_98
# BB#43:                                # %land.lhs.true.301
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	112(%r13,%r12,8), %rcx
	testq	%rcx, %rcx
	je	.LBB1_98
# BB#44:                                # %for.cond.308.preheader
                                        #   in Loop: Header=BB1_12 Depth=1
	xorl	%eax, %eax
	testq	%r12, %r12
	jle	.LBB1_49
# BB#45:                                # %for.body.311.lr.ph
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	32(%r13,%r12,8), %rdx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_46:                               # %for.body.311
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	18504(%r14,%rax,8), %rdx
	jne	.LBB1_48
# BB#47:                                # %land.lhs.true.322
                                        #   in Loop: Header=BB1_46 Depth=2
	cmpq	18584(%r14,%rax,8), %rcx
	je	.LBB1_49
.LBB1_48:                               # %for.inc.335
                                        #   in Loop: Header=BB1_46 Depth=2
	incq	%rax
	cmpq	%r12, %rax
	jl	.LBB1_46
.LBB1_49:                               # %for.end.337
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	%eax, %r12d
	jne	.LBB1_97
# BB#50:                                # %if.then.340
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movb	18480(%r14), %cl
	movl	$1, %esi
	shll	%cl, %esi
	movl	18752(%r14), %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movsd	.LCPI1_7(%rip), %xmm9   # xmm9 = mem[0],zero
	movapd	.LCPI1_5(%rip), %xmm0   # xmm0 = [4.503600e+15,1.934281e+25]
	movapd	%xmm0, %xmm1
	movapd	.LCPI1_5(%rip), %xmm8   # xmm8 = [4.503600e+15,1.934281e+25]
	movdqa	.LCPI1_4(%rip), %xmm10  # xmm10 = [1127219200,1160773632,0,0]
	movsd	.LCPI1_3(%rip), %xmm7   # xmm7 = mem[0],zero
	movq	%rax, %r15
	movq	%r15, 18632(%r14,%r12,8)
	movl	$-25, %edx
	testq	%r15, %r15
	je	.LBB1_99
# BB#51:                                # %if.else.363
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	80(%r13,%r12,8), %rdx
	testq	%rdx, %rdx
	je	.LBB1_52
# BB#71:                                # %if.else.519
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	144(%r13,%r12,4), %ecx
	leal	-1(%rcx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	$1, %eax
	jmp	.LBB1_72
	.align	16, 0x90
.LBB1_96:                               # %for.inc.832.for.body.536_crit_edge
                                        #   in Loop: Header=BB1_72 Depth=2
	movq	80(%r13,%r12,8), %rdx
	movl	144(%r13,%r12,4), %ecx
	incq	%rax
.LBB1_72:                               # %for.body.536
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-2(%rdx,%rax,2), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm7, %xmm1
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm3
	subsd	%xmm9, %xmm3
	cvttsd2si	%xmm3, %rsi
	xorq	%rbp, %rsi
	cvttsd2si	%xmm2, %rdx
	ucomisd	%xmm9, %xmm2
	cmovaeq	%rsi, %rdx
	leaq	1(%rdx), %rsi
	movl	%ecx, %edi
	movq	112(%r13,%r12,8), %rcx
	movss	(%rcx,%rdx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm2, %xmm3
	cmpq	%rdi, %rsi
	jae	.LBB1_74
# BB#73:                                # %if.then.554
                                        #   in Loop: Header=BB1_72 Depth=2
	movss	4(%rcx,%rdx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	subsd	%xmm3, %xmm2
	movd	%rdx, %xmm4
	punpckldq	%xmm10, %xmm4   # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1]
	subpd	%xmm8, %xmm4
	pshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	addpd	%xmm4, %xmm5
	mulsd	%xmm0, %xmm5
	subsd	%xmm5, %xmm1
	mulsd	%xmm2, %xmm1
	jmp	.LBB1_75
	.align	16, 0x90
.LBB1_74:                               # %if.else.575
                                        #   in Loop: Header=BB1_72 Depth=2
	movss	-4(%rcx,%rdx,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movapd	%xmm3, %xmm4
	subsd	%xmm2, %xmm4
	movd	%rdx, %xmm2
	punpckldq	%xmm10, %xmm2   # xmm2 = xmm2[0],xmm10[0],xmm2[1],xmm10[1]
	subpd	%xmm8, %xmm2
	pshufd	$78, %xmm2, %xmm5       # xmm5 = xmm2[2,3,0,1]
	addpd	%xmm2, %xmm5
	mulsd	%xmm0, %xmm5
	subsd	%xmm5, %xmm1
	mulsd	%xmm4, %xmm1
.LBB1_75:                               # %if.end.596
                                        #   in Loop: Header=BB1_72 Depth=2
	divsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm3
	movq	16(%r13), %rcx
	movsd	24(%rcx), %xmm2         # xmm2 = mem[0],zero
	movsd	32(%rcx), %xmm4         # xmm4 = mem[0],zero
	movapd	%xmm4, %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm1
	movl	16(%rcx), %ecx
	andl	$24, %ecx
	cmpl	$16, %ecx
	jne	.LBB1_76
# BB#83:                                # %sw.bb.693
                                        #   in Loop: Header=BB1_72 Depth=2
	cvttsd2si	%xmm1, %rdx
	movq	160(%r13,%r12,8), %rcx
	movq	%rdx, -8(%rcx,%rax,8)
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
	movapd	%xmm1, %xmm5
	subsd	%xmm3, %xmm5
	ucomisd	.LCPI1_6(%rip), %xmm5
	jb	.LBB1_86
# BB#84:                                # %land.lhs.true.709
                                        #   in Loop: Header=BB1_72 Depth=2
	leaq	1(%rdx), %rsi
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rsi, %xmm3
	ucomisd	%xmm3, %xmm4
	jb	.LBB1_86
# BB#85:                                # %if.then.723
                                        #   in Loop: Header=BB1_72 Depth=2
	movq	%rsi, -8(%rcx,%rax,8)
	movq	%rsi, %rdx
.LBB1_86:                               # %if.end.730
                                        #   in Loop: Header=BB1_72 Depth=2
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
	subsd	%xmm1, %xmm3
	ucomisd	.LCPI1_6(%rip), %xmm3
	jb	.LBB1_95
# BB#87:                                # %land.lhs.true.740
                                        #   in Loop: Header=BB1_72 Depth=2
	decq	%rdx
	cvtsi2sdq	%rdx, %xmm1
	ucomisd	%xmm2, %xmm1
	jb	.LBB1_95
# BB#88:                                # %if.then.754
                                        #   in Loop: Header=BB1_72 Depth=2
	movq	%rdx, -8(%rcx,%rax,8)
	jmp	.LBB1_95
	.align	16, 0x90
.LBB1_76:                               # %if.end.596
                                        #   in Loop: Header=BB1_72 Depth=2
	cmpl	$8, %ecx
	jne	.LBB1_89
# BB#77:                                # %sw.bb.616
                                        #   in Loop: Header=BB1_72 Depth=2
	cvttsd2si	%xmm1, %ecx
	movq	160(%r13,%r12,8), %rdx
	movb	%cl, -1(%rdx,%rax)
	movq	160(%r13,%r12,8), %rcx
	movb	-1(%rcx,%rax), %dl
	movzbl	%dl, %esi
	cvtsi2sdl	%esi, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm2, %xmm3
	ucomisd	.LCPI1_6(%rip), %xmm3
	jb	.LBB1_80
# BB#78:                                # %land.lhs.true.633
                                        #   in Loop: Header=BB1_72 Depth=2
	incl	%esi
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%esi, %xmm2
	movq	16(%r13), %rdi
	movsd	32(%rdi), %xmm3         # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jb	.LBB1_80
# BB#79:                                # %if.then.648
                                        #   in Loop: Header=BB1_72 Depth=2
	movb	%sil, -1(%rcx,%rax)
	movq	160(%r13,%r12,8), %rcx
	movb	-1(%rcx,%rax), %dl
.LBB1_80:                               # %if.end.657
                                        #   in Loop: Header=BB1_72 Depth=2
	movzbl	%dl, %edx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	subsd	%xmm1, %xmm2
	ucomisd	.LCPI1_6(%rip), %xmm2
	jb	.LBB1_95
# BB#81:                                # %land.lhs.true.668
                                        #   in Loop: Header=BB1_72 Depth=2
	decl	%edx
	cvtsi2sdl	%edx, %xmm1
	movq	16(%r13), %rsi
	ucomisd	24(%rsi), %xmm1
	jb	.LBB1_95
# BB#82:                                # %if.then.683
                                        #   in Loop: Header=BB1_72 Depth=2
	movb	%dl, -1(%rcx,%rax)
	jmp	.LBB1_95
	.align	16, 0x90
.LBB1_89:                               # %sw.default.762
                                        #   in Loop: Header=BB1_72 Depth=2
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm1, %xmm3
	movq	160(%r13,%r12,8), %rcx
	movss	%xmm3, -4(%rcx,%rax,4)
	cvtss2sd	%xmm3, %xmm5
	movapd	%xmm1, %xmm6
	subsd	%xmm5, %xmm6
	ucomisd	.LCPI1_6(%rip), %xmm6
	jb	.LBB1_92
# BB#90:                                # %land.lhs.true.778
                                        #   in Loop: Header=BB1_72 Depth=2
	movaps	%xmm3, %xmm5
	addss	.LCPI1_8(%rip), %xmm5
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm5, %xmm6
	ucomisd	%xmm6, %xmm4
	jb	.LBB1_92
# BB#91:                                # %if.then.792
                                        #   in Loop: Header=BB1_72 Depth=2
	movss	%xmm5, -4(%rcx,%rax,4)
	movaps	%xmm5, %xmm3
.LBB1_92:                               # %if.end.799
                                        #   in Loop: Header=BB1_72 Depth=2
	cvtss2sd	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	ucomisd	.LCPI1_6(%rip), %xmm4
	jb	.LBB1_95
# BB#93:                                # %land.lhs.true.809
                                        #   in Loop: Header=BB1_72 Depth=2
	addss	.LCPI1_9(%rip), %xmm3
	cvtss2sd	%xmm3, %xmm1
	ucomisd	%xmm2, %xmm1
	jb	.LBB1_95
# BB#94:                                # %if.then.823
                                        #   in Loop: Header=BB1_72 Depth=2
	movss	%xmm3, -4(%rcx,%rax,4)
	.align	16, 0x90
.LBB1_95:                               # %for.inc.832
                                        #   in Loop: Header=BB1_72 Depth=2
	movb	8(%r13), %cl
	movl	$1, %edx
	shll	%cl, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_96
	jmp	.LBB1_98
.LBB1_97:                               # %if.else.837
                                        #   in Loop: Header=BB1_12 Depth=1
	cltq
	movq	160(%r13,%rax,8), %rax
	movq	%rax, 160(%r13,%r12,8)
	jmp	.LBB1_98
.LBB1_52:                               # %if.then.370
                                        #   in Loop: Header=BB1_12 Depth=1
	movb	8(%r13), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movq	16(%r13), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rcx), %xmm11        # xmm11 = mem[0],zero
	movq	112(%r13,%r12,8), %rdi
	movslq	144(%r13,%r12,4), %r8
	leal	-1(%r8), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm5
	divsd	%xmm3, %xmm2
	leal	-1(%rax), %edx
	cvtsi2sdl	%edx, %xmm4
	movapd	%xmm5, %xmm8
	divsd	%xmm4, %xmm8
	movslq	%eax, %r9
	movslq	%edx, %r10
	movapd	%xmm11, %xmm9
	subsd	%xmm0, %xmm9
	movslq	%ecx, %r11
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_53:                               # %for.body.403
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	cqto
	idivq	%r10
	leaq	1(%rax), %rdx
	movss	(%rdi,%rax,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm6, %xmm5
	cmpq	%r8, %rdx
	jae	.LBB1_55
# BB#54:                                # %if.then.414
                                        #   in Loop: Header=BB1_53 Depth=2
	movss	4(%rdi,%rax,4), %xmm7   # xmm7 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm7
	cvtss2sd	%xmm7, %xmm7
	movd	%rsi, %xmm3
	punpckldq	%xmm10, %xmm3   # xmm3 = xmm3[0],xmm10[0],xmm3[1],xmm10[1]
	subpd	%xmm1, %xmm3
	pshufd	$78, %xmm3, %xmm6       # xmm6 = xmm3[2,3,0,1]
	addpd	%xmm3, %xmm6
	mulsd	%xmm8, %xmm6
	movd	%rax, %xmm3
	punpckldq	%xmm10, %xmm3   # xmm3 = xmm3[0],xmm10[0],xmm3[1],xmm10[1]
	subpd	%xmm1, %xmm3
	pshufd	$78, %xmm3, %xmm4       # xmm4 = xmm3[2,3,0,1]
	addpd	%xmm3, %xmm4
	mulsd	%xmm2, %xmm4
	subsd	%xmm4, %xmm6
	mulsd	%xmm7, %xmm6
	jmp	.LBB1_56
	.align	16, 0x90
.LBB1_55:                               # %if.else.430
                                        #   in Loop: Header=BB1_53 Depth=2
	subss	-4(%rdi,%rax,4), %xmm6
	cvtss2sd	%xmm6, %xmm3
	movd	%rsi, %xmm4
	punpckldq	%xmm10, %xmm4   # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1]
	subpd	%xmm1, %xmm4
	pshufd	$78, %xmm4, %xmm6       # xmm6 = xmm4[2,3,0,1]
	addpd	%xmm4, %xmm6
	mulsd	%xmm8, %xmm6
	movd	%rax, %xmm4
	punpckldq	%xmm10, %xmm4   # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1]
	subpd	%xmm1, %xmm4
	pshufd	$78, %xmm4, %xmm7       # xmm7 = xmm4[2,3,0,1]
	addpd	%xmm4, %xmm7
	mulsd	%xmm2, %xmm7
	subsd	%xmm7, %xmm6
	mulsd	%xmm3, %xmm6
.LBB1_56:                               # %if.end.446
                                        #   in Loop: Header=BB1_53 Depth=2
	divsd	%xmm2, %xmm6
	addsd	%xmm6, %xmm5
	mulsd	%xmm9, %xmm5
	addsd	%xmm0, %xmm5
	movapd	%xmm11, %xmm3
	minsd	%xmm5, %xmm3
	cmpltsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm4
	andnpd	%xmm3, %xmm4
	andpd	%xmm0, %xmm5
	orpd	%xmm4, %xmm5
	movq	16(%r13), %rax
	movl	16(%rax), %eax
	andl	$24, %eax
	cmpl	$16, %eax
	jne	.LBB1_57
# BB#62:                                # %sw.bb.485
                                        #   in Loop: Header=BB1_53 Depth=2
	cvttsd2si	%xmm5, %rax
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rax, %xmm3
	movapd	%xmm5, %xmm4
	subsd	%xmm3, %xmm4
	ucomisd	.LCPI1_6(%rip), %xmm4
	jb	.LBB1_65
# BB#63:                                # %land.lhs.true.491
                                        #   in Loop: Header=BB1_53 Depth=2
	leaq	1(%rax), %rdx
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
	ucomisd	%xmm3, %xmm11
	jb	.LBB1_65
# BB#64:                                # %if.then.496
                                        #   in Loop: Header=BB1_53 Depth=2
	movq	%rdx, %rax
.LBB1_65:                               # %if.end.498
                                        #   in Loop: Header=BB1_53 Depth=2
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rax, %xmm3
	subsd	%xmm5, %xmm3
	ucomisd	.LCPI1_6(%rip), %xmm3
	jb	.LBB1_68
# BB#66:                                # %land.lhs.true.503
                                        #   in Loop: Header=BB1_53 Depth=2
	leaq	-1(%rax), %rdx
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
	ucomisd	%xmm11, %xmm3
	jb	.LBB1_68
# BB#67:                                # %if.then.508
                                        #   in Loop: Header=BB1_53 Depth=2
	movq	%rdx, %rax
.LBB1_68:                               # %if.end.510
                                        #   in Loop: Header=BB1_53 Depth=2
	movq	%rax, (%r15,%rsi,8)
	jmp	.LBB1_70
	.align	16, 0x90
.LBB1_57:                               # %if.end.446
                                        #   in Loop: Header=BB1_53 Depth=2
	cmpl	$8, %eax
	jne	.LBB1_69
# BB#58:                                # %sw.bb.466
                                        #   in Loop: Header=BB1_53 Depth=2
	cvttsd2si	%xmm5, %eax
	movzbl	%al, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%edx, %xmm3
	subsd	%xmm3, %xmm5
	ucomisd	.LCPI1_6(%rip), %xmm5
	jb	.LBB1_61
# BB#59:                                # %land.lhs.true.473
                                        #   in Loop: Header=BB1_53 Depth=2
	incl	%edx
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%edx, %xmm3
	ucomisd	%xmm3, %xmm11
	jb	.LBB1_61
# BB#60:                                # %if.then.479
                                        #   in Loop: Header=BB1_53 Depth=2
	movb	%dl, %al
.LBB1_61:                               # %if.end.483
                                        #   in Loop: Header=BB1_53 Depth=2
	movb	%al, (%r15,%rsi)
	jmp	.LBB1_70
	.align	16, 0x90
.LBB1_69:                               # %sw.default.512
                                        #   in Loop: Header=BB1_53 Depth=2
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm5, %xmm3
	movss	%xmm3, (%r15,%rsi,4)
.LBB1_70:                               # %for.inc.516
                                        #   in Loop: Header=BB1_53 Depth=2
	incq	%rsi
	addq	%r11, %rcx
	cmpq	%r9, %rsi
	jb	.LBB1_53
	.align	16, 0x90
.LBB1_98:                               # %for.inc.848
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	%ebx, %edx
.LBB1_99:                               # %for.inc.848
                                        #   in Loop: Header=BB1_12 Depth=1
	incq	%r12
	movslq	100(%r14), %rax
	cmpq	%rax, %r12
	jl	.LBB1_12
	jmp	.LBB1_100
.LBB1_10:
	movl	%ebx, %edx
.LBB1_100:                              # %for.end.850
	movl	$1, 400(%r13)
	testl	%edx, %edx
	je	.LBB1_101
# BB#124:                               # %cleanup
	movq	24(%r14), %rdi
	movq	%r13, %rsi
	movl	%edx, %ebx
	callq	stc_freedata
	movl	%ebx, %eax
	jmp	.LBB1_123
.LBB1_101:                              # %if.then.854
	movq	(%r13), %rcx
	movq	%rcx, %rdx
	orq	$512, %rdx              # imm = 0x200
	movq	%rdx, (%r13)
	cmpl	$3, %eax
	jne	.LBB1_102
# BB#104:                               # %sw.bb.872
	movl	$1, 104(%r14)
	movq	$stc_map_rgb_color, 1184(%r14)
	movq	$gx_default_map_cmyk_color, 1264(%r14)
	movq	$stc_map_color_rgb, 1192(%r14)
	movq	$stc_map_rgb_color, 1552(%r14)
	movq	$stc_map_color_rgb, 1560(%r14)
	movq	$gx_default_DevRGB_get_color_mapping_procs, 1536(%r14)
	movq	$gx_default_DevRGB_get_color_comp_index, 1544(%r14)
	movw	$-1, 20(%rsp)
	movl	$-1, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	stc_map_rgb_color
	jmp	.LBB1_108
.LBB1_102:                              # %if.then.854
	cmpl	$1, %eax
	jne	.LBB1_105
# BB#103:                               # %sw.bb.859
	movl	$1, 104(%r14)
	movq	$stc_map_gray_color, 1184(%r14)
	movq	$gx_default_map_cmyk_color, 1264(%r14)
	movq	$stc_map_color_gray, 1192(%r14)
	movq	$stc_map_gray_color, 1552(%r14)
	movq	$stc_map_color_gray, 1560(%r14)
	movq	$gx_default_DevGray_get_color_mapping_procs, 1536(%r14)
	movq	$gx_default_DevGray_get_color_comp_index, 1544(%r14)
	movw	$-1, 20(%rsp)
	movl	$-1, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	stc_map_gray_color
	jmp	.LBB1_108
.LBB1_105:                              # %sw.default.894
	movl	$0, 104(%r14)
	movq	$gx_default_w_b_map_rgb_color, 1184(%r14)
	movq	$gx_default_DevCMYK_get_color_mapping_procs, 1536(%r14)
	movq	$gx_default_DevCMYK_get_color_comp_index, 1544(%r14)
	testb	$32, %cl
	jne	.LBB1_106
# BB#107:                               # %if.else.921
	movq	$stc_map_cmyk_color, 1264(%r14)
	movq	$stc_map_color_cmyk, 1192(%r14)
	movq	$stc_map_cmyk_color, 1552(%r14)
	movq	$stc_map_color_cmyk, 1560(%r14)
	movq	$0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	stc_map_cmyk_color
	jmp	.LBB1_108
.LBB1_106:                              # %if.then.906
	movq	$stc_map_cmyk10_color, 1264(%r14)
	movq	$stc_map_color_cmyk10, 1192(%r14)
	movq	$stc_map_cmyk10_color, 1552(%r14)
	movq	$stc_map_color_cmyk10, 1560(%r14)
	movq	$0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	stc_map_cmyk10_color
.LBB1_108:                              # %sw.epilog.937
	movzwl	108(%r14), %ecx
	leaq	(%rax,%rax), %rdx
	xorl	%esi, %esi
	cmpq	$2, %rcx
	cmovaeq	%rsi, %rdx
	orq	%rax, %rdx
	leaq	(,%rdx,4), %rdi
	cmpq	$4, %rcx
	cmovaeq	%rsi, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	shlq	$4, %rax
	cmpq	$8, %rcx
	cmovaeq	%rsi, %rax
	orq	%rdi, %rax
	cmpq	$15, %rcx
	ja	.LBB1_110
# BB#109:                               # %for.cond.972.preheader
	movb	%al, 192(%r13)
	movb	%al, 193(%r13)
	movb	%al, 194(%r13)
	movb	%al, 195(%r13)
	movb	%al, 196(%r13)
	movb	%al, 197(%r13)
	movb	%al, 198(%r13)
	movb	%al, 199(%r13)
	movb	%al, 200(%r13)
	movb	%al, 201(%r13)
	movb	%al, 202(%r13)
	jmp	.LBB1_115
.LBB1_110:                              # %if.else.984
	movq	%rax, %rdx
	cmpl	$23, %ecx
	ja	.LBB1_112
# BB#111:                               # %for.cond.991.preheader
	shrq	$8, %rdx
	movb	%dl, 192(%r13)
	movb	%al, 193(%r13)
	movb	%dl, 194(%r13)
	movb	%al, 195(%r13)
	movb	%dl, 196(%r13)
	movb	%al, 197(%r13)
	movb	%dl, 198(%r13)
	movb	%al, 199(%r13)
	movb	%dl, 200(%r13)
	movb	%al, 201(%r13)
	movb	%dl, 202(%r13)
	jmp	.LBB1_115
.LBB1_112:                              # %if.else.1008
	cmpl	$32, %ecx
	jae	.LBB1_113
# BB#114:                               # %for.cond.1015.preheader
	shrq	$16, %rdx
	movq	%rax, %rsi
	shrq	$8, %rsi
	movb	%dl, 192(%r13)
	movb	%sil, 193(%r13)
	movb	%al, 194(%r13)
	movb	%dl, 195(%r13)
	movb	%sil, 196(%r13)
	movb	%al, 197(%r13)
	movb	%dl, 198(%r13)
	movb	%sil, 199(%r13)
	movb	%al, 200(%r13)
	movb	%dl, 201(%r13)
	movb	%sil, 202(%r13)
	jmp	.LBB1_115
.LBB1_113:                              # %for.cond.1040.preheader
	shrq	$24, %rdx
	movq	%rax, %rsi
	shrq	$16, %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	movb	%dl, 192(%r13)
	movb	%sil, 193(%r13)
	movb	%dil, 194(%r13)
	movb	%al, 195(%r13)
	movb	%dl, 196(%r13)
	movb	%sil, 197(%r13)
	movb	%dil, 198(%r13)
	movb	%al, 199(%r13)
	movb	%dl, 200(%r13)
	movb	%sil, 201(%r13)
	movb	%dil, 202(%r13)
.LBB1_115:                              # %if.end.1072
	movb	%al, 203(%r13)
	cvtsi2sdl	832(%r14), %xmm0
	movss	884(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	908(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI1_10(%rip), %xmm3  # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	movss	916(%r14), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	divsd	%xmm3, %xmm4
	addsd	%xmm2, %xmm4
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm4, %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LCPI1_7(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rax, %rdx
	cvttsd2si	%xmm0, %rax
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rdx, %rax
	imull	%eax, %ecx
	movslq	%ecx, %rsi
	movabsq	$-6148914691236517205, %rcx # imm = 0xAAAAAAAAAAAAAAAB
	movq	%rsi, %rax
	mulq	%rcx
	shrq	$6, %rdx
	shll	$5, %edx
	leal	(%rdx,%rdx,2), %eax
	subl	%eax, %esi
	addq	$204, %r13
	xorl	%eax, %eax
	movl	$18676, %edx            # imm = 0x48F4
	.align	16, 0x90
.LBB1_116:                              # %for.body.1100
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	jle	.LBB1_117
# BB#118:                               # %if.else.1106
                                        #   in Loop: Header=BB1_116 Depth=1
	cmpl	$8, %esi
	jl	.LBB1_120
# BB#119:                               # %if.then.1109
                                        #   in Loop: Header=BB1_116 Depth=1
	leaq	(%r13,%rax), %rcx
	movb	$-1, (%r14,%rdx)
	addl	$-8, %esi
	movb	$-1, %dil
	jmp	.LBB1_121
	.align	16, 0x90
.LBB1_117:                              # %if.then.1103
                                        #   in Loop: Header=BB1_116 Depth=1
	leaq	(%r13,%rax), %rcx
	movb	$0, (%r14,%rdx)
	xorl	%edi, %edi
	jmp	.LBB1_121
	.align	16, 0x90
.LBB1_120:                              # %if.else.1113
                                        #   in Loop: Header=BB1_116 Depth=1
	movl	$8, %ecx
	subl	%esi, %ecx
	movl	$1, %edi
	shll	%cl, %edi
	addl	$255, %edi
	notl	%edi
	leaq	(%r14,%rdx), %rcx
	movb	%dil, (%r14,%rdx)
	xorl	%esi, %esi
.LBB1_121:                              # %if.end.1121
                                        #   in Loop: Header=BB1_116 Depth=1
	andb	-12(%r14,%rdx), %dil
	movb	%dil, (%rcx)
	incq	%rax
	incq	%rdx
	cmpq	$18688, %rdx            # imm = 0x4900
	jne	.LBB1_116
# BB#122:                               # %for.end.1132
	movq	%r14, %rdi
	callq	gdev_prn_open
.LBB1_123:                              # %for.end.1132
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	stc_open, .Lfunc_end1-stc_open
	.cfi_endproc

	.align	16, 0x90
	.type	stc_close,@function
stc_close:                              # @stc_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	leaq	18472(%rbx), %rsi
	callq	stc_freedata
	andb	$-3, 18473(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end2:
	.size	stc_close, .Lfunc_end2-stc_close
	.cfi_endproc

	.align	16, 0x90
	.type	stc_map_color_cmyk,@function
stc_map_color_cmyk:                     # @stc_map_color_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -48
.Ltmp34:
	.cfi_offset %r12, -40
.Ltmp35:
	.cfi_offset %r13, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	cmpl	$32, %eax
	movl	18480(%rdi), %r13d
	movslq	%r13d, %r14
	movl	$8, %r11d
	je	.LBB3_2
# BB#1:                                 # %select.mid
	movq	%r13, %r11
.LBB3_2:                                # %select.end
	movl	$1, %r10d
	movb	%r14b, %cl
	shlq	%cl, %r10
	decq	%r10
	movq	%r10, %r9
	andq	%rsi, %r9
	movl	$1, %eax
	movb	%r14b, %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %r12
	movq	18576(%rdi), %rax
	andq	%r12, %r9
	testq	%rax, %rax
	je	.LBB3_4
# BB#3:                                 # %if.then.i
	movzwl	(%rax,%r9,2), %r9d
	jmp	.LBB3_8
.LBB3_4:                                # %if.else.i
	cmpl	$15, %r14d
	ja	.LBB3_6
# BB#5:                                 # %if.then.14.i
	movl	$16, %ecx
	subl	%r14d, %ecx
	movq	%r9, %rbx
	shlq	%cl, %rbx
	xorl	%edx, %edx
	movq	%r9, %rax
	divq	%r12
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r9
	imulq	%rax, %r9
	addq	%rbx, %r9
	jmp	.LBB3_8
.LBB3_6:                                # %if.else.29.i
	cmpl	$17, %r14d
	jb	.LBB3_8
# BB#7:                                 # %if.then.35.i
	leal	-16(%r14), %ecx
	shrq	%cl, %r9
.LBB3_8:                                # %stc_expand.exit
	movb	%r11b, %cl
	shrq	%cl, %rsi
	movq	%r10, %r15
	andq	%rsi, %r15
	movq	18568(%rdi), %rax
	andq	%r12, %r15
	testq	%rax, %rax
	je	.LBB3_10
# BB#9:                                 # %if.then.i.103
	movzwl	(%rax,%r15,2), %r15d
	jmp	.LBB3_14
.LBB3_10:                               # %if.else.i.106
	cmpl	$15, %r14d
	ja	.LBB3_12
# BB#11:                                # %if.then.14.i.117
	movl	$16, %ecx
	subl	%r14d, %ecx
	movq	%r15, %rbx
	shlq	%cl, %rbx
	xorl	%edx, %edx
	movq	%r15, %rax
	divq	%r12
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r15
	imulq	%rax, %r15
	addq	%rbx, %r15
	jmp	.LBB3_14
.LBB3_12:                               # %if.else.29.i.120
	cmpl	$17, %r13d
	jb	.LBB3_14
# BB#13:                                # %if.then.35.i.123
	leal	-16(%r14), %ecx
	shrq	%cl, %r15
.LBB3_14:                               # %stc_expand.exit126
	movb	%r11b, %cl
	shrq	%cl, %rsi
	movq	%r10, %rbx
	andq	%rsi, %rbx
	movq	18560(%rdi), %rax
	andq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB3_16
# BB#15:                                # %if.then.i.70
	movzwl	(%rax,%rbx,2), %ebx
	jmp	.LBB3_20
.LBB3_16:                               # %if.else.i.73
	cmpl	$15, %r14d
	ja	.LBB3_18
# BB#17:                                # %if.then.14.i.84
	movl	$16, %ecx
	subl	%r14d, %ecx
	movq	%rbx, %r14
	shlq	%cl, %r14
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%r12
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %rbx
	imulq	%rax, %rbx
	addq	%r14, %rbx
	jmp	.LBB3_20
.LBB3_18:                               # %if.else.29.i.87
	cmpl	$17, %r14d
	jb	.LBB3_20
# BB#19:                                # %if.then.35.i.90
	leal	-16(%r14), %ecx
	shrq	%cl, %rbx
.LBB3_20:                               # %stc_expand.exit93
	movb	%r11b, %cl
	shrq	%cl, %rsi
	andq	%rsi, %r10
	movq	18552(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_22
# BB#21:                                # %if.then.i.37
	andq	%r10, %r12
	movzwl	(%rax,%r12,2), %r12d
	jmp	.LBB3_26
.LBB3_22:                               # %if.else.i.40
	cmpl	$15, %r13d
	ja	.LBB3_24
# BB#23:                                # %if.then.14.i.51
	andq	%r12, %r10
	movl	$16, %ecx
	subl	%r13d, %ecx
	movq	%r10, %rsi
	shlq	%cl, %rsi
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%r12
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r12
	imulq	%rax, %r12
	addq	%rsi, %r12
	jmp	.LBB3_26
.LBB3_24:                               # %if.else.29.i.54
	andq	%r10, %r12
	cmpl	$17, %r13d
	jb	.LBB3_26
# BB#25:                                # %if.then.35.i.57
	leal	-16(%r13), %ecx
	shrq	%cl, %r12
.LBB3_26:                               # %stc_expand.exit60
	movw	%r12w, (%r8)
	movw	%bx, 2(%r8)
	movw	%r15w, 4(%r8)
	movw	%r9w, 6(%r8)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	stc_map_color_cmyk, .Lfunc_end3-stc_map_color_cmyk
	.cfi_endproc

	.align	16, 0x90
	.type	stc_get_params,@function
stc_get_params:                         # @stc_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 80
.Ltmp43:
	.cfi_offset %rbx, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB4_139
# BB#1:                                 # %if.end
	movq	$.L.str.9, 24(%rsp)
	movl	$.L.str.9, %edi
	callq	strlen
	movl	%eax, 32(%rsp)
	movl	$1, 36(%rsp)
	leaq	24(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_139
# BB#2:                                 # %if.end.7
	leaq	18480(%rbx), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_139
# BB#3:                                 # %if.end.12
	leaq	18472(%rbx), %r15
	cmpl	$0, 224(%r15)
	je	.LBB4_5
# BB#4:                                 # %if.then.17
	leaq	216(%r15), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_string_array
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_6:                                # %if.end.22
	testl	%eax, %eax
	js	.LBB4_139
# BB#7:                                 # %if.end.26
	movl	$3072, %eax             # imm = 0xC00
	andq	(%r15), %rax
	cmpq	$2048, %rax             # imm = 0x800
	jne	.LBB4_8
# BB#10:                                # %sw.bb.34
	movq	$.L.str.14, 24(%rsp)
	movl	$.L.str.14, %edi
	jmp	.LBB4_12
.LBB4_8:                                # %if.end.26
	cmpq	$1024, %rax             # imm = 0x400
	jne	.LBB4_11
# BB#9:                                 # %sw.bb
	movq	$.L.str.13, 24(%rsp)
	movl	$.L.str.13, %edi
	jmp	.LBB4_12
.LBB4_11:                               # %sw.default
	movq	$.L.str.15, 24(%rsp)
	movl	$.L.str.15, %edi
.LBB4_12:                               # %sw.epilog
	callq	strlen
	movl	%eax, 32(%rsp)
	movl	$1, 36(%rsp)
	leaq	24(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_139
# BB#13:                                # %if.end.51
	movl	$61440, %eax            # imm = 0xF000
	andq	(%r15), %rax
	cmpq	$8192, %rax             # imm = 0x2000
	jne	.LBB4_14
# BB#16:                                # %sw.bb.62
	movq	$.L.str.18, 24(%rsp)
	movl	$.L.str.18, %edi
	jmp	.LBB4_18
.LBB4_14:                               # %if.end.51
	cmpq	$4096, %rax             # imm = 0x1000
	jne	.LBB4_17
# BB#15:                                # %sw.bb.55
	movq	$.L.str.17, 24(%rsp)
	movl	$.L.str.17, %edi
	jmp	.LBB4_18
.LBB4_17:                               # %sw.default.69
	movq	$.L.str.19, 24(%rsp)
	movl	$.L.str.19, %edi
.LBB4_18:                               # %sw.epilog.76
	callq	strlen
	movl	%eax, 32(%rsp)
	movl	$1, 36(%rsp)
	leaq	24(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_139
# BB#19:                                # %if.end.81
	movl	(%r15), %eax
	shrl	$6, %eax
	andl	$1, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#20:                                # %if.end.89
	movl	(%r15), %eax
	shrl	$7, %eax
	andl	$1, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#21:                                # %if.end.99
	movq	(%r15), %rax
	testb	$-64, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#22:                                # %if.end.109
	movl	(%r15), %eax
	shrl	$8, %eax
	andl	$1, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#23:                                # %if.end.119
	movl	(%r15), %eax
	andl	$1, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#24:                                # %if.end.129
	movl	(%r15), %eax
	shrl	%eax
	andl	$1, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#25:                                # %if.end.139
	movl	(%r15), %eax
	shrl	$2, %eax
	andl	$1, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#26:                                # %if.end.149
	movl	(%r15), %eax
	shrl	$3, %eax
	andl	$1, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.28, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#27:                                # %if.end.159
	movl	(%r15), %eax
	shrl	$4, %eax
	andl	$1, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_139
# BB#28:                                # %if.end.169
	leaq	316(%r15), %rdx
	movl	$.L.str.30, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_139
# BB#29:                                # %if.end.175
	leaq	264(%r15), %rdx
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_139
# BB#30:                                # %if.end.181
	leaq	268(%r15), %rdx
	movl	$.L.str.32, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_139
# BB#31:                                # %if.end.187
	leaq	272(%r15), %rdx
	movl	$.L.str.33, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_139
# BB#32:                                # %if.end.193
	leaq	276(%r15), %rdx
	movl	$.L.str.34, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_139
# BB#33:                                # %if.end.199
	leaq	232(%r15), %rdx
	movl	$.L.str.35, %esi
	movq	%r14, %rdi
	callq	param_write_string
	leaq	248(%r15), %rdx
	movl	$.L.str.36, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB4_35
# BB#34:                                # %if.then.207
	movq	(%rax), %rdi
	movq	%rdi, 24(%rsp)
	callq	strlen
	movl	%eax, 32(%rsp)
	movl	$1, 36(%rsp)
	leaq	24(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	param_write_string
	jmp	.LBB4_36
.LBB4_35:                               # %if.else.217
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_36:                               # %if.end.219
	testl	%eax, %eax
	js	.LBB4_139
# BB#37:                                # %if.end.223
	movl	100(%rbx), %ebp
	movq	18496(%rbx), %rax
	testq	%rax, %rax
	je	.LBB4_44
# BB#38:                                # %if.then.227
	cmpl	$1, %ebp
	jne	.LBB4_40
# BB#39:                                # %if.then.230
	movq	%rax, 8(%rsp)
	movq	$3, 16(%rsp)
	jmp	.LBB4_43
.LBB4_44:                               # %if.else.254
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	callq	param_write_null
	jmp	.LBB4_45
.LBB4_40:                               # %if.else.236
	movq	%rax, 8(%rsp)
	cmpl	$3, %ebp
	jne	.LBB4_42
# BB#41:                                # %if.then.239
	movq	$9, 16(%rsp)
	jmp	.LBB4_43
.LBB4_42:                               # %if.else.245
	movq	$16, 16(%rsp)
.LBB4_43:                               # %if.end.252
	leaq	8(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
.LBB4_45:                               # %if.end.256
	testl	%eax, %eax
	js	.LBB4_139
# BB#46:                                # %if.end.260
	cmpl	$1, %ebp
	jne	.LBB4_67
# BB#47:                                # %if.then.263
	movl	64(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_49
# BB#48:                                # %if.then.267
	movq	32(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.39, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB4_50
.LBB4_67:                               # %if.else.403
	movl	64(%r15), %eax
	cmpl	$3, %ebp
	jne	.LBB4_100
# BB#68:                                # %if.then.406
	testl	%eax, %eax
	je	.LBB4_70
# BB#69:                                # %if.then.412
	movq	32(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.41, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB4_71
.LBB4_100:                              # %if.else.615
	testl	%eax, %eax
	je	.LBB4_102
# BB#101:                               # %if.then.621
	movq	32(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.47, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB4_103
.LBB4_49:                               # %if.else.277
	movl	$.L.str.39, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_50:                               # %if.end.279
	testl	%eax, %eax
	js	.LBB4_139
# BB#51:                                # %if.end.283
	movl	144(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_53
# BB#52:                                # %if.then.288
	movq	112(%r15), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_54
.LBB4_53:                               # %if.else.297
	movq	$defext, 8(%rsp)
	movl	$2, %eax
.LBB4_54:                               # %if.end.301
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_139
# BB#55:                                # %if.end.306
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.41, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#56:                                # %if.end.314
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.42, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#57:                                # %if.end.322
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.43, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#58:                                # %if.end.330
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.44, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#59:                                # %if.end.338
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#60:                                # %if.end.346
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.46, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#61:                                # %if.end.354
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.47, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#62:                                # %if.end.362
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.48, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#63:                                # %if.end.370
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.49, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#64:                                # %if.end.378
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.50, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#65:                                # %if.end.386
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#66:                                # %if.end.394
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.52, %esi
	jmp	.LBB4_138
.LBB4_70:                               # %if.else.423
	movl	$.L.str.41, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_71:                               # %if.end.425
	testl	%eax, %eax
	js	.LBB4_139
# BB#72:                                # %if.end.429
	movl	144(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_74
# BB#73:                                # %if.then.435
	movq	112(%r15), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_75
.LBB4_102:                              # %if.else.632
	movl	$.L.str.47, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_103:                              # %if.end.634
	testl	%eax, %eax
	js	.LBB4_139
# BB#104:                               # %if.end.638
	movl	144(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_106
# BB#105:                               # %if.then.644
	movq	112(%r15), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_107
.LBB4_74:                               # %if.else.445
	movq	$defext, 8(%rsp)
	movl	$2, %eax
.LBB4_75:                               # %if.end.449
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_139
# BB#76:                                # %if.end.454
	movl	68(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_78
# BB#77:                                # %if.then.460
	movq	40(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.43, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB4_79
.LBB4_106:                              # %if.else.654
	movq	$defext, 8(%rsp)
	movl	$2, %eax
.LBB4_107:                              # %if.end.658
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.48, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_139
# BB#108:                               # %if.end.663
	movl	68(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_110
# BB#109:                               # %if.then.669
	movq	40(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.49, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB4_111
.LBB4_78:                               # %if.else.471
	movl	$.L.str.43, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_79:                               # %if.end.473
	testl	%eax, %eax
	js	.LBB4_139
# BB#80:                                # %if.end.477
	movl	148(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_82
# BB#81:                                # %if.then.483
	movq	120(%r15), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_83
.LBB4_110:                              # %if.else.680
	movl	$.L.str.49, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_111:                              # %if.end.682
	testl	%eax, %eax
	js	.LBB4_139
# BB#112:                               # %if.end.686
	movl	148(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_114
# BB#113:                               # %if.then.692
	movq	120(%r15), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_115
.LBB4_82:                               # %if.else.493
	movq	$defext, 8(%rsp)
	movl	$2, %eax
.LBB4_83:                               # %if.end.497
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.44, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_139
# BB#84:                                # %if.end.502
	movl	72(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_86
# BB#85:                                # %if.then.508
	movq	48(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB4_87
.LBB4_114:                              # %if.else.702
	movq	$defext, 8(%rsp)
	movl	$2, %eax
.LBB4_115:                              # %if.end.706
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.50, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_139
# BB#116:                               # %if.end.711
	movl	72(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_118
# BB#117:                               # %if.then.717
	movq	48(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB4_119
.LBB4_86:                               # %if.else.519
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_87:                               # %if.end.521
	testl	%eax, %eax
	js	.LBB4_139
# BB#88:                                # %if.end.525
	movl	152(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_90
# BB#89:                                # %if.then.531
	movq	128(%r15), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_91
.LBB4_118:                              # %if.else.728
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_119:                              # %if.end.730
	testl	%eax, %eax
	js	.LBB4_139
# BB#120:                               # %if.end.734
	movl	152(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_122
# BB#121:                               # %if.then.740
	movq	128(%r15), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_123
.LBB4_90:                               # %if.else.541
	movq	$defext, 8(%rsp)
	movl	$2, %eax
.LBB4_91:                               # %if.end.545
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.46, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_139
# BB#92:                                # %if.end.550
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.47, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#93:                                # %if.end.558
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.48, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#94:                                # %if.end.566
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.49, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#95:                                # %if.end.574
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.50, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#96:                                # %if.end.582
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#97:                                # %if.end.590
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.52, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#98:                                # %if.end.598
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.39, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#99:                                # %if.end.606
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.40, %esi
	jmp	.LBB4_138
.LBB4_122:                              # %if.else.750
	movq	$defext, 8(%rsp)
	movl	$2, %eax
.LBB4_123:                              # %if.end.754
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.52, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_139
# BB#124:                               # %if.end.759
	movl	76(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_126
# BB#125:                               # %if.then.765
	movq	56(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.39, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB4_127
.LBB4_126:                              # %if.else.776
	movl	$.L.str.39, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_127:                              # %if.end.778
	testl	%eax, %eax
	js	.LBB4_139
# BB#128:                               # %if.end.782
	movl	156(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_130
# BB#129:                               # %if.then.788
	movq	136(%r15), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_131
.LBB4_130:                              # %if.else.798
	movq	$defext, 8(%rsp)
	movl	$2, %eax
.LBB4_131:                              # %if.end.802
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_139
# BB#132:                               # %if.end.807
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.41, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#133:                               # %if.end.815
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.42, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#134:                               # %if.end.823
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.43, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#135:                               # %if.end.831
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.44, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#136:                               # %if.end.839
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	callq	param_write_null
	testl	%eax, %eax
	js	.LBB4_139
# BB#137:                               # %if.end.847
	movq	$defext, 8(%rsp)
	movq	$2, 16(%rsp)
	movl	$.L.str.46, %esi
.LBB4_138:                              # %cleanup
	movq	%r14, %rdi
	callq	param_write_null
.LBB4_139:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	stc_get_params, .Lfunc_end4-stc_get_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4611686018427387904     # double 2
.LCPI5_1:
	.quad	4616189618054758400     # double 4
.LCPI5_2:
	.quad	4620693217682128896     # double 8
.LCPI5_3:
	.quad	4625196817309499392     # double 16
.LCPI5_4:
	.quad	4629700416936869888     # double 32
.LCPI5_5:
	.quad	4634204016564240384     # double 64
.LCPI5_6:
	.quad	4638707616191610880     # double 128
.LCPI5_7:
	.quad	4643211215818981376     # double 256
.LCPI5_8:
	.quad	4647714815446351872     # double 512
.LCPI5_9:
	.quad	4652218415073722368     # double 1024
.LCPI5_10:
	.quad	4656722014701092864     # double 2048
.LCPI5_11:
	.quad	4661225614328463360     # double 4096
.LCPI5_12:
	.quad	4665729213955833856     # double 8192
.LCPI5_13:
	.quad	4670232813583204352     # double 16384
.LCPI5_14:
	.quad	4674736413210574848     # double 32768
.LCPI5_15:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	stc_put_params,@function
stc_put_params:                         # @stc_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 56
	subq	$1256, %rsp             # imm = 0x4E8
.Ltmp53:
	.cfi_def_cfa_offset 1312
.Ltmp54:
	.cfi_offset %rbx, -56
.Ltmp55:
	.cfi_offset %r12, -48
.Ltmp56:
	.cfi_offset %r13, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	leaq	96(%rbx), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leaq	472(%rsp), %rdi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	leaq	18472(%rbx), %r15
	leaq	64(%rsp), %rdi
	movl	$408, %edx              # imm = 0x198
	movq	%r15, %rsi
	callq	memcpy
	leaq	1224(%rsp), %rbx
	movl	$.L.str.10, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	param_read_string
	leaq	1252(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	callq	param_read_int
	leaq	1208(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r12, %rdi
	callq	param_read_string_array
	movl	$.L.str.20, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	param_read_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_11
# BB#1:                                 # %if.then
	movslq	1232(%rsp), %rcx
	movq	1224(%rsp), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	leal	-1(%rcx), %eax
	cltq
	leaq	(%rax,%rdx), %rax
	.align	16, 0x90
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	testq	%rbx, %rbx
	jle	.LBB5_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	-1(%rbx), %rcx
	cmpb	$0, (%rax)
	leaq	-1(%rax), %rax
	je	.LBB5_2
.LBB5_4:                                # %for.end
	movq	$-61441, %r14           # imm = 0xFFFFFFFFFFFF0FFF
	andq	(%r15), %r14
	movq	%r14, (%r15)
	movl	$.L.str.17, %edi
	callq	strlen
	movslq	%ebx, %r13
	cmpq	%r13, %rax
	jne	.LBB5_7
# BB#5:                                 # %lor.lhs.false
	movl	$.L.str.17, %edi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB5_6
.LBB5_7:                                # %if.else
	movl	$.L.str.18, %edi
	callq	strlen
	cmpq	%r13, %rax
	jne	.LBB5_11
# BB#8:                                 # %lor.lhs.false.26
	movl	$.L.str.18, %edi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB5_11
# BB#9:                                 # %if.then.32
	orq	$8192, %r14             # imm = 0x2000
	jmp	.LBB5_10
.LBB5_6:                                # %if.then.19
	orq	$4096, %r14             # imm = 0x1000
.LBB5_10:                               # %if.end.37
	movq	%r14, (%r15)
.LBB5_11:                               # %if.end.37
	testl	%ebp, %ebp
	jns	.LBB5_13
# BB#12:                                # %if.then.40
	movq	(%r12), %rax
	movl	$.L.str.20, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_13:                               # %if.end.42
	movl	%ebp, %eax
	sarl	$31, %eax
	movl	%eax, %r14d
	movq	(%r15), %rax
	movl	%eax, %ecx
	andl	$61440, %ecx            # imm = 0xF000
	cmpq	$8192, %rcx             # imm = 0x2000
	jne	.LBB5_14
# BB#20:                                # %if.then.88
	orq	$256, %rax              # imm = 0x100
	jmp	.LBB5_21
.LBB5_14:                               # %if.end.42
	cmpq	$4096, %rcx             # imm = 0x1000
	jne	.LBB5_22
# BB#15:                                # %land.lhs.true
	movq	32(%rsp), %rdx          # 8-byte Reload
	cmpl	$1, 100(%rdx)
	jg	.LBB5_18
# BB#16:                                # %lor.lhs.false.53
	movq	16(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB5_18
# BB#17:                                # %lor.lhs.false.57
	testb	$6, 16(%rcx)
	je	.LBB5_19
.LBB5_18:                               # %if.then.64
	movl	$1, 100(%rdx)
	movq	$0, 18488(%rdx)
.LBB5_19:                               # %if.then.75
	andq	$-385, %rax             # imm = 0xFFFFFFFFFFFFFE7F
	orq	$256, %rax              # imm = 0x100
.LBB5_21:                               # %if.end.93
	movq	%rax, (%r15)
.LBB5_22:                               # %if.end.93
	andl	%ebp, %r14d
	leaq	1224(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%r12, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB5_23
# BB#44:                                # %if.else.141
	movq	16(%r15), %rax
	movq	%r15, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB5_45
# BB#49:                                # %if.end.172
	movl	$stc_dither, %ecx
	subq	%rcx, %rax
	sarq	$3, %rax
	movabsq	$-3689348814741910323, %rcx # imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rax, %rcx
	movl	%ecx, 1252(%rsp)
	movl	$-15, %r13d
	cmpl	$9, %ecx
	movl	%r14d, %r15d
	je	.LBB5_96
	jmp	.LBB5_50
.LBB5_23:                               # %if.then.97
	movl	%ebp, %r13d
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movslq	1232(%rsp), %rcx
	movq	1224(%rsp), %rbp
	leal	-1(%rcx), %eax
	cltq
	leaq	(%rax,%rbp), %rax
	.align	16, 0x90
.LBB5_24:                               # %for.cond.99
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	testq	%rdx, %rdx
	jle	.LBB5_26
# BB#25:                                # %land.rhs.102
                                        #   in Loop: Header=BB5_24 Depth=1
	leaq	-1(%rdx), %rcx
	cmpb	$0, (%rax)
	leaq	-1(%rax), %rax
	je	.LBB5_24
.LBB5_26:                               # %for.body.120
	movl	$0, 1252(%rsp)
	movslq	%edx, %rbx
	movl	$.L.str.55, %edi
	callq	strlen
	cmpq	%rbx, %rax
	movl	%r14d, %r15d
	movq	%rbp, %r14
	movl	%r13d, %ebp
	jne	.LBB5_28
# BB#27:                                # %lor.lhs.false.128
	movl	$.L.str.55, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB5_50
.LBB5_28:                               # %for.inc.139
	movl	$1, 1252(%rsp)
	movl	$.L.str.56, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB5_30
# BB#29:                                # %lor.lhs.false.128.1
	movl	$.L.str.56, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB5_50
.LBB5_30:                               # %for.inc.139.1
	movl	$2, 1252(%rsp)
	movl	$.L.str.57, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB5_32
# BB#31:                                # %lor.lhs.false.128.2
	movl	$.L.str.57, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$2, %ecx
	testl	%eax, %eax
	je	.LBB5_50
.LBB5_32:                               # %for.inc.139.2
	movl	$3, 1252(%rsp)
	movl	$.L.str.58, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB5_34
# BB#33:                                # %lor.lhs.false.128.3
	movl	$.L.str.58, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$3, %ecx
	testl	%eax, %eax
	je	.LBB5_50
.LBB5_34:                               # %for.inc.139.3
	movl	$4, 1252(%rsp)
	movl	$.L.str.59, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB5_36
# BB#35:                                # %lor.lhs.false.128.4
	movl	$.L.str.59, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$4, %ecx
	testl	%eax, %eax
	je	.LBB5_50
.LBB5_36:                               # %for.inc.139.4
	movl	$5, 1252(%rsp)
	movl	$.L.str.60, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB5_38
# BB#37:                                # %lor.lhs.false.128.5
	movl	$.L.str.60, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$5, %ecx
	testl	%eax, %eax
	je	.LBB5_50
.LBB5_38:                               # %for.inc.139.5
	movl	$6, 1252(%rsp)
	movl	$.L.str.61, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB5_40
# BB#39:                                # %lor.lhs.false.128.6
	movl	$.L.str.61, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$6, %ecx
	testl	%eax, %eax
	je	.LBB5_50
.LBB5_40:                               # %for.inc.139.6
	movl	$7, 1252(%rsp)
	movl	$.L.str.62, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB5_42
# BB#41:                                # %lor.lhs.false.128.7
	movl	$.L.str.62, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$7, %ecx
	testl	%eax, %eax
	je	.LBB5_50
.LBB5_42:                               # %for.inc.139.7
	movl	$8, 1252(%rsp)
	movl	$.L.str.63, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB5_48
# BB#43:                                # %lor.lhs.false.128.8
	movl	$.L.str.63, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$8, %ecx
	testl	%eax, %eax
	jne	.LBB5_48
	jmp	.LBB5_50
.LBB5_45:                               # %for.cond.151.preheader
	movl	$0, 1252(%rsp)
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	100(%rax), %eax
	xorl	%ecx, %ecx
	cmpl	$4, %eax
	movl	%r14d, %r15d
	je	.LBB5_50
# BB#46:                                # %for.cond.151.1
	movl	$2, 1252(%rsp)
	movl	$2, %ecx
	cmpl	$1, %eax
	je	.LBB5_50
# BB#47:                                # %for.cond.151.2
	movl	$3, 1252(%rsp)
	movl	$3, %ecx
	cmpl	$3, %eax
	jne	.LBB5_48
.LBB5_50:                               # %if.then.178
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,4), %rax
	leaq	stc_dither(,%rax,8), %rdx
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, 18488(%rsi)
	movl	stc_dither+16(,%rax,8), %edx
	movl	%edx, %eax
	andl	$7, %eax
	movl	%eax, 100(%rsi)
	andl	$24, %edx
	cmpl	$16, %edx
	jne	.LBB5_51
# BB#53:                                # %sw.bb.192
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	$8, 280(%rdi)
	jmp	.LBB5_55
.LBB5_51:                               # %if.then.178
	cmpl	$8, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	jne	.LBB5_54
# BB#52:                                # %sw.bb
	movl	$1, 280(%rdi)
	jmp	.LBB5_55
.LBB5_54:                               # %sw.default
	movl	$4, 280(%rdi)
.LBB5_55:                               # %sw.epilog
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	$61440, %edx            # imm = 0xF000
	andq	(%rdi), %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movl	%ebp, %r13d
	jne	.LBB5_57
# BB#56:                                # %land.lhs.true.202
	movl	$491, %edx              # imm = 0x1EB
	btq	%rcx, %rdx
	movl	$-15, %ecx
	cmovbl	%ecx, %ebp
	movl	%ebp, %r13d
.LBB5_57:                               # %if.end.208
	cmpl	476(%rsp), %eax
	movl	$0, 1252(%rsp)
	jne	.LBB5_58
# BB#61:                                # %for.body.243.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_62:                               # %for.body.243
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, 18616(%rsi,%rcx,4)
	ja	.LBB5_64
# BB#63:                                # %if.then.250
                                        #   in Loop: Header=BB5_62 Depth=1
	movq	$defext, 18584(%rsi,%rcx,8)
	movl	$2, 18616(%rsi,%rcx,4)
	movl	100(%rsi), %eax
.LBB5_64:                               # %for.inc.260
                                        #   in Loop: Header=BB5_62 Depth=1
	incq	%rcx
	cmpl	%eax, %ecx
	jl	.LBB5_62
# BB#65:                                # %if.end.263.loopexit
	movl	%ecx, 1252(%rsp)
	jmp	.LBB5_66
.LBB5_58:                               # %for.body.220.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_59:                               # %for.body.220
                                        # =>This Inner Loop Header: Depth=1
	movq	$defext, 18584(%rsi,%rcx,8)
	movl	$2, 18616(%rsi,%rcx,4)
	movq	$0, 18504(%rsi,%rcx,8)
	movl	$0, 18536(%rsi,%rcx,4)
	movl	100(%rsi), %eax
	incq	%rcx
	cmpl	%eax, %ecx
	jl	.LBB5_59
# BB#60:                                # %for.end.235
	movl	%ecx, 1252(%rsp)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	$0, 24(%rcx)
.LBB5_66:                               # %if.end.263
	movl	%eax, 1252(%rsp)
	cmpl	$3, %eax
	jg	.LBB5_70
# BB#67:                                # %for.body.269.lr.ph
	cltq
	.align	16, 0x90
.LBB5_68:                               # %for.body.269
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 18584(%rsi,%rax,8)
	movl	$0, 18616(%rsi,%rax,4)
	movq	$0, 18632(%rsi,%rax,8)
	movq	$0, 18504(%rsi,%rax,8)
	movl	$0, 18536(%rsi,%rax,4)
	movq	$0, 18552(%rsi,%rax,8)
	incq	%rax
	cmpl	$4, %eax
	jl	.LBB5_68
# BB#69:                                # %for.cond.266.for.end.295_crit_edge
	movl	%eax, 1252(%rsp)
.LBB5_70:                               # %for.end.295
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rax
	cmpq	80(%rsp), %rax
	jne	.LBB5_72
# BB#71:                                # %lor.lhs.false.301
	cmpq	$0, 224(%rsp)
	jne	.LBB5_95
.LBB5_72:                               # %if.then.306
	movl	16(%rax), %ecx
	testb	$32, %cl
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rdx
	jne	.LBB5_73
# BB#74:                                # %if.else.319
	andq	$-33, %rdx
	movq	%rdx, (%rdi)
	andl	$24, %ecx
	cmpl	$24, %ecx
	jne	.LBB5_75
# BB#91:                                # %if.else.353
	movl	$8, 1252(%rsp)
	movl	$8, %eax
	jmp	.LBB5_92
.LBB5_73:                               # %if.then.313
	orq	$32, %rdx
	movq	%rdx, 18472(%rsi)
	movl	$10, 18480(%rsi)
	movw	$32, 108(%rsi)
	jmp	.LBB5_95
.LBB5_75:                               # %for.cond.330.preheader
	movl	$1, 1252(%rsp)
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	subsd	24(%rax), %xmm0
	movl	$1, %eax
	ucomisd	.LCPI5_0(%rip), %xmm0
	jb	.LBB5_92
# BB#76:                                # %for.body.347
	movl	$2, 1252(%rsp)
	movl	$2, %eax
	ucomisd	.LCPI5_1(%rip), %xmm0
	jb	.LBB5_92
# BB#77:                                # %for.body.347.1
	movl	$3, 1252(%rsp)
	movl	$3, %eax
	ucomisd	.LCPI5_2(%rip), %xmm0
	jb	.LBB5_92
# BB#78:                                # %for.body.347.2
	movl	$4, 1252(%rsp)
	movl	$4, %eax
	ucomisd	.LCPI5_3(%rip), %xmm0
	jb	.LBB5_92
# BB#79:                                # %for.body.347.3
	movl	$5, 1252(%rsp)
	movl	$5, %eax
	ucomisd	.LCPI5_4(%rip), %xmm0
	jb	.LBB5_92
# BB#80:                                # %for.body.347.4
	movl	$6, 1252(%rsp)
	movl	$6, %eax
	ucomisd	.LCPI5_5(%rip), %xmm0
	jb	.LBB5_92
# BB#81:                                # %for.body.347.5
	movl	$7, 1252(%rsp)
	movl	$7, %eax
	ucomisd	.LCPI5_6(%rip), %xmm0
	jb	.LBB5_92
# BB#82:                                # %for.body.347.6
	movl	$8, 1252(%rsp)
	movl	$8, %eax
	ucomisd	.LCPI5_7(%rip), %xmm0
	jb	.LBB5_92
# BB#83:                                # %for.body.347.7
	movl	$9, 1252(%rsp)
	movl	$9, %eax
	ucomisd	.LCPI5_8(%rip), %xmm0
	jb	.LBB5_92
# BB#84:                                # %for.body.347.8
	movl	$10, 1252(%rsp)
	movl	$10, %eax
	ucomisd	.LCPI5_9(%rip), %xmm0
	jb	.LBB5_92
# BB#85:                                # %for.body.347.9
	movl	$11, 1252(%rsp)
	movl	$11, %eax
	ucomisd	.LCPI5_10(%rip), %xmm0
	jb	.LBB5_92
# BB#86:                                # %for.body.347.10
	movl	$12, 1252(%rsp)
	movl	$12, %eax
	ucomisd	.LCPI5_11(%rip), %xmm0
	jb	.LBB5_92
# BB#87:                                # %for.body.347.11
	movl	$13, 1252(%rsp)
	movl	$13, %eax
	ucomisd	.LCPI5_12(%rip), %xmm0
	jb	.LBB5_92
# BB#88:                                # %for.body.347.12
	movl	$14, 1252(%rsp)
	movl	$14, %eax
	ucomisd	.LCPI5_13(%rip), %xmm0
	jb	.LBB5_92
# BB#89:                                # %for.body.347.13
	movl	$15, 1252(%rsp)
	movl	$15, %eax
	ucomisd	.LCPI5_14(%rip), %xmm0
	jb	.LBB5_92
# BB#90:                                # %for.body.347.14
	movl	$16, 1252(%rsp)
	movl	$16, %eax
.LBB5_92:                               # %if.end.354
	movslq	100(%rsi), %rcx
	movl	%ecx, %edx
	imull	%eax, %edx
	cmpl	$33, %edx
	jb	.LBB5_94
# BB#93:                                # %if.then.361
	movl	$32, %eax
	xorl	%edx, %edx
	divq	%rcx
	movl	%eax, 18480(%rsi)
	imull	%eax, %ecx
	movw	%cx, 108(%rsi)
	jmp	.LBB5_95
.LBB5_94:                               # %if.else.376
	movl	%eax, 18480(%rsi)
	movw	%dx, 108(%rsi)
.LBB5_95:                               # %if.end.391
	testl	%r13d, %r13d
	jns	.LBB5_97
	jmp	.LBB5_96
.LBB5_48:                               # %for.cond.151.8
	movl	$9, 1252(%rsp)
	movl	$-15, %r13d
.LBB5_96:                               # %if.then.394
	movq	(%r12), %rax
	movl	$.L.str.37, %esi
	movq	%r12, %rdi
	movl	%r13d, %edx
	callq	*56(%rax)
.LBB5_97:                               # %if.end.398
	cmpl	%r13d, %r15d
	cmovgl	%r13d, %r15d
	leaq	1252(%rsp), %rdx
	movl	$.L.str.53, %esi
	movq	%r12, %rdi
	callq	param_read_int
	movl	%eax, %ecx
	orl	%r15d, %ecx
	je	.LBB5_99
# BB#98:
	movl	%eax, %esi
	movq	48(%rsp), %r13          # 8-byte Reload
.LBB5_107:                              # %if.end.463
	testl	%esi, %esi
	movl	%esi, %ebp
	jns	.LBB5_109
	jmp	.LBB5_108
.LBB5_99:                               # %land.lhs.true.411
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	(%r13), %rdi
	testb	$32, %dil
	movl	1252(%rsp), %ecx
	movq	32(%rsp), %rbx          # 8-byte Reload
	je	.LBB5_102
# BB#100:                               # %lor.lhs.false.417
	movzwl	108(%rbx), %edx
	cmpl	%edx, %ecx
	jne	.LBB5_102
# BB#101:
	movl	%eax, %esi
	jmp	.LBB5_107
.LBB5_102:                              # %if.then.423
	testl	%ecx, %ecx
	movl	$-15, %ebp
	movl	$-15, %esi
	jle	.LBB5_105
# BB#103:                               # %if.then.423
	cmpl	$32, %ecx
	movl	$-15, %esi
	ja	.LBB5_105
# BB#104:                               # %if.else.431
	movw	%cx, 108(%rbx)
	movl	%eax, %esi
.LBB5_105:                              # %if.end.435
	movl	%ecx, %eax
	cltd
	idivl	100(%rbx)
	movl	%eax, 18480(%rbx)
	movq	18488(%rbx), %rcx
	movl	16(%rcx), %ecx
	andl	$96, %ecx
	cmpl	$96, %ecx
	je	.LBB5_108
# BB#106:                               # %if.else.458
	andq	$-33, %rdi
	testl	%eax, %eax
	movq	%rdi, (%r13)
	jg	.LBB5_107
.LBB5_108:                              # %if.then.466
	movq	(%r12), %rax
	movl	$.L.str.53, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %esi
.LBB5_109:                              # %if.end.470
	cmpl	%esi, %r15d
	cmovgl	%esi, %r15d
	leaq	1224(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%r12, %rdi
	callq	param_read_string
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.LBB5_111
# BB#110:                               # %if.end.470.if.end.532_crit_edge
	movq	(%r13), %rbx
	jmp	.LBB5_123
.LBB5_111:                              # %if.then.480
	movl	%r15d, 4(%rsp)          # 4-byte Spill
	movslq	1232(%rsp), %rcx
	movq	1224(%rsp), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	leal	-1(%rcx), %eax
	cltq
	leaq	(%rax,%rdx), %rax
	.align	16, 0x90
.LBB5_112:                              # %for.cond.482
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbp
	testq	%rbp, %rbp
	jle	.LBB5_114
# BB#113:                               # %land.rhs.485
                                        #   in Loop: Header=BB5_112 Depth=1
	leaq	-1(%rbp), %rcx
	cmpb	$0, (%rax)
	leaq	-1(%rax), %rax
	je	.LBB5_112
.LBB5_114:                              # %for.end.497
	movq	$-3073, %rbx            # imm = 0xFFFFFFFFFFFFF3FF
	andq	(%r13), %rbx
	movq	%rbx, (%r13)
	movq	%r13, %r15
	movl	$.L.str.13, %edi
	callq	strlen
	movslq	%ebp, %r13
	cmpq	%r13, %rax
	jne	.LBB5_117
# BB#115:                               # %lor.lhs.false.505
	movl	$.L.str.13, %edi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB5_116
.LBB5_117:                              # %if.else.515
	movl	$.L.str.14, %edi
	callq	strlen
	cmpq	%r13, %rax
	jne	.LBB5_118
# BB#119:                               # %lor.lhs.false.520
	movl	$.L.str.14, %edi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_118:
	movq	%r15, %r13
	jmp	.LBB5_122
.LBB5_116:                              # %if.then.511
	orq	$1024, %rbx             # imm = 0x400
	jmp	.LBB5_121
.LBB5_120:                              # %if.then.526
	orq	$2048, %rbx             # imm = 0x800
.LBB5_121:                              # %if.end.532
	movq	%r15, %r13
	movq	%rbx, (%r13)
.LBB5_122:                              # %if.end.532
	movl	4(%rsp), %r15d          # 4-byte Reload
.LBB5_123:                              # %if.end.532
	movl	%ebx, %eax
	andl	$3072, %eax             # imm = 0xC00
	cmpq	$2048, %rax             # imm = 0x800
	jne	.LBB5_125
# BB#124:                               # %if.then.538
	andq	$-385, %rbx             # imm = 0xFFFFFFFFFFFFFE7F
	orq	$128, %rbx
	movq	%rbx, (%r13)
.LBB5_125:                              # %if.end.545
	testl	%r14d, %r14d
	jns	.LBB5_127
# BB#126:                               # %if.then.548
	movq	(%r12), %rax
	movl	$.L.str.16, %esi
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	*56(%rax)
	movq	(%r13), %rbx
.LBB5_127:                              # %if.end.552
	cmpl	%r14d, %r15d
	cmovgl	%r14d, %r15d
	movl	%ebx, %eax
	shrl	$7, %eax
	andl	$1, %eax
	movl	%eax, 1248(%rsp)
	movl	%ebx, %eax
	shrl	$8, %eax
	andl	$1, %eax
	movl	%eax, 1244(%rsp)
	testw	$384, %bx               # imm = 0x180
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 1240(%rsp)
	leaq	1248(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_128
# BB#129:                               # %if.else.581
	jne	.LBB5_132
# BB#130:                               # %if.else.581
	movl	1248(%rsp), %eax
	testl	%eax, %eax
	je	.LBB5_132
# BB#131:                               # %if.then.586
	movl	$0, 1244(%rsp)
	movl	$0, 1240(%rsp)
	jmp	.LBB5_132
.LBB5_128:                              # %if.then.577
	movq	(%r12), %rax
	movl	$.L.str.22, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_132:                              # %if.end.589
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1244(%rsp), %rdx
	movl	$.L.str.24, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_133
# BB#134:                               # %if.else.603
	jne	.LBB5_137
# BB#135:                               # %if.else.603
	movl	1244(%rsp), %eax
	testl	%eax, %eax
	je	.LBB5_137
# BB#136:                               # %if.then.608
	movl	$0, 1248(%rsp)
	movl	$0, 1240(%rsp)
	jmp	.LBB5_137
.LBB5_133:                              # %if.then.599
	movq	(%r12), %rax
	movl	$.L.str.24, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_137:                              # %if.end.611
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1240(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_138
# BB#139:                               # %if.else.625
	jne	.LBB5_142
# BB#140:                               # %if.else.625
	movl	1240(%rsp), %eax
	testl	%eax, %eax
	je	.LBB5_142
# BB#141:                               # %if.then.630
	movl	$0, 1248(%rsp)
	movl	$0, 1244(%rsp)
	jmp	.LBB5_142
.LBB5_138:                              # %if.then.621
	movq	(%r12), %rax
	movl	$.L.str.23, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_142:                              # %if.end.633
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	movq	(%r13), %rax
	cmpl	$0, 1248(%rsp)
	je	.LBB5_143
# BB#144:                               # %select.mid
	orq	$128, %rax
	jmp	.LBB5_145
.LBB5_143:
	andq	$-129, %rax
.LBB5_145:                              # %select.end
	cmpl	$0, 1244(%rsp)
	je	.LBB5_146
# BB#147:                               # %select.mid1923
	orq	$256, %rax              # imm = 0x100
	jmp	.LBB5_148
.LBB5_146:
	andq	$-257, %rax             # imm = 0xFFFFFFFFFFFFFEFF
.LBB5_148:                              # %select.end1922
	movq	%rax, (%r13)
	leaq	1248(%rsp), %rdx
	movl	$.L.str.21, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_149
# BB#150:                               # %if.else.667
	jne	.LBB5_155
# BB#151:                               # %if.then.670
	movq	(%r13), %rax
	cmpl	$1, 1248(%rsp)
	jne	.LBB5_153
# BB#152:                               # %if.then.673
	orq	$64, %rax
	jmp	.LBB5_154
.LBB5_149:                              # %if.then.663
	movq	(%r12), %rax
	movl	$.L.str.21, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB5_155
.LBB5_153:                              # %if.else.677
	andq	$-65, %rax
.LBB5_154:                              # %if.end.683
	movq	%rax, (%r13)
.LBB5_155:                              # %if.end.683
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1248(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_156
# BB#157:                               # %if.else.697
	jne	.LBB5_162
# BB#158:                               # %if.then.700
	movq	(%r13), %rax
	cmpl	$1, 1248(%rsp)
	jne	.LBB5_160
# BB#159:                               # %if.then.703
	orq	$1, %rax
	jmp	.LBB5_161
.LBB5_156:                              # %if.then.693
	movq	(%r12), %rax
	movl	$.L.str.25, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB5_162
.LBB5_160:                              # %if.else.707
	andq	$-2, %rax
.LBB5_161:                              # %if.end.713
	movq	%rax, (%r13)
.LBB5_162:                              # %if.end.713
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1248(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_163
# BB#164:                               # %if.else.727
	jne	.LBB5_169
# BB#165:                               # %if.then.730
	movq	(%r13), %rax
	cmpl	$1, 1248(%rsp)
	jne	.LBB5_167
# BB#166:                               # %if.then.733
	orq	$2, %rax
	jmp	.LBB5_168
.LBB5_163:                              # %if.then.723
	movq	(%r12), %rax
	movl	$.L.str.26, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB5_169
.LBB5_167:                              # %if.else.737
	andq	$-3, %rax
.LBB5_168:                              # %if.end.743
	movq	%rax, (%r13)
.LBB5_169:                              # %if.end.743
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1248(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_170
# BB#171:                               # %if.else.757
	jne	.LBB5_176
# BB#172:                               # %if.then.760
	movq	(%r13), %rax
	cmpl	$1, 1248(%rsp)
	jne	.LBB5_174
# BB#173:                               # %if.then.763
	orq	$4, %rax
	jmp	.LBB5_175
.LBB5_170:                              # %if.then.753
	movq	(%r12), %rax
	movl	$.L.str.27, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB5_176
.LBB5_174:                              # %if.else.767
	andq	$-5, %rax
.LBB5_175:                              # %if.end.773
	movq	%rax, (%r13)
.LBB5_176:                              # %if.end.773
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1248(%rsp), %rdx
	movl	$.L.str.28, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_177
# BB#178:                               # %if.else.787
	jne	.LBB5_183
# BB#179:                               # %if.then.790
	movq	(%r13), %rax
	cmpl	$1, 1248(%rsp)
	jne	.LBB5_181
# BB#180:                               # %if.then.793
	orq	$8, %rax
	jmp	.LBB5_182
.LBB5_177:                              # %if.then.783
	movq	(%r12), %rax
	movl	$.L.str.28, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB5_183
.LBB5_181:                              # %if.else.797
	andq	$-9, %rax
.LBB5_182:                              # %if.end.803
	movq	%rax, (%r13)
.LBB5_183:                              # %if.end.803
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1248(%rsp), %rdx
	movl	$.L.str.29, %esi
	movq	%r12, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_184
# BB#185:                               # %if.else.817
	jne	.LBB5_190
# BB#186:                               # %if.then.820
	movq	(%r13), %rax
	cmpl	$1, 1248(%rsp)
	jne	.LBB5_188
# BB#187:                               # %if.then.823
	orq	$16, %rax
	jmp	.LBB5_189
.LBB5_184:                              # %if.then.813
	movq	(%r12), %rax
	movl	$.L.str.29, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB5_190
.LBB5_188:                              # %if.else.827
	andq	$-17, %rax
.LBB5_189:                              # %if.end.833
	movq	%rax, (%r13)
.LBB5_190:                              # %if.end.833
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	316(%r13), %rdx
	movl	$.L.str.30, %esi
	movq	%r12, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB5_191
# BB#192:                               # %if.else.848
	jne	.LBB5_194
# BB#193:                               # %if.then.851
	orb	$1, 2(%r13)
	jmp	.LBB5_194
.LBB5_191:                              # %if.then.844
	movq	(%r12), %rax
	movl	$.L.str.30, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_194:                              # %if.end.856
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	leaq	264(%r13), %rdx
	movl	$.L.str.31, %esi
	movq	%r12, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB5_195
# BB#196:                               # %if.else.871
	jne	.LBB5_198
# BB#197:                               # %if.then.874
	orb	$4, 2(%r13)
	jmp	.LBB5_198
.LBB5_195:                              # %if.then.867
	movq	(%r12), %rax
	movl	$.L.str.31, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_198:                              # %if.end.879
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	leaq	268(%r13), %rdx
	movl	$.L.str.32, %esi
	movq	%r12, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB5_199
# BB#200:                               # %if.else.894
	jne	.LBB5_202
# BB#201:                               # %if.then.897
	orb	$2, 2(%r13)
	jmp	.LBB5_202
.LBB5_199:                              # %if.then.890
	movq	(%r12), %rax
	movl	$.L.str.32, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_202:                              # %if.end.902
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	leaq	272(%r13), %rdx
	movl	$.L.str.33, %esi
	movq	%r12, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB5_203
# BB#204:                               # %if.else.917
	jne	.LBB5_206
# BB#205:                               # %if.then.920
	orb	$8, 2(%r13)
	jmp	.LBB5_206
.LBB5_203:                              # %if.then.913
	movq	(%r12), %rax
	movl	$.L.str.33, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_206:                              # %if.end.925
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	leaq	276(%r13), %rdx
	movl	$.L.str.34, %esi
	movq	%r12, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB5_207
# BB#208:                               # %if.else.940
	jne	.LBB5_210
# BB#209:                               # %if.then.943
	orb	$16, 2(%r13)
	jmp	.LBB5_210
.LBB5_207:                              # %if.then.936
	movq	(%r12), %rax
	movl	$.L.str.34, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_210:                              # %if.end.948
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	leaq	232(%r13), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.35, %esi
	movq	%r12, %rdi
	callq	param_read_string
	testl	%eax, %eax
	jne	.LBB5_212
# BB#211:                               # %if.then.959
	orb	$32, 2(%r13)
.LBB5_212:                              # %if.end.963
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	248(%r13), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.36, %esi
	movq	%r12, %rdi
	callq	param_read_string
	testl	%eax, %eax
	jne	.LBB5_214
# BB#213:                               # %if.then.974
	orb	$64, 2(%r13)
.LBB5_214:                              # %if.end.978
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ecx
	orl	%r15d, %ecx
	je	.LBB5_215
# BB#224:                               # %if.else.1024
	testl	%eax, %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	jns	.LBB5_227
# BB#225:                               # %if.then.1027
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_223
# BB#226:                               # %if.then.1031
	movq	$0, 24(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_227
.LBB5_215:                              # %if.then.991
	movq	32(%rsp), %rbx          # 8-byte Reload
	movl	100(%rbx), %ecx
	movl	$-15, %ebp
	cmpl	$4, %ecx
	je	.LBB5_221
# BB#216:                               # %if.then.991
	cmpl	$3, %ecx
	jne	.LBB5_217
# BB#219:                               # %land.lhs.true.1005
	cmpl	$9, 1200(%rsp)
	je	.LBB5_222
	jmp	.LBB5_220
.LBB5_221:                              # %land.lhs.true.1014
	cmpl	$16, 1200(%rsp)
	jne	.LBB5_220
	jmp	.LBB5_222
.LBB5_217:                              # %if.then.991
	cmpl	$1, %ecx
	jne	.LBB5_220
# BB#218:                               # %land.lhs.true.996
	cmpl	$3, 1200(%rsp)
	jne	.LBB5_220
.LBB5_222:                              # %if.then.1018
	movq	1192(%rsp), %rcx
	movq	%rcx, 24(%r13)
.LBB5_223:                              # %if.end.1036
	testl	%eax, %eax
	movl	%eax, %ebp
	jns	.LBB5_227
.LBB5_220:                              # %if.then.1039
	movq	(%r12), %rax
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %eax
.LBB5_227:                              # %if.end.1043
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	movl	100(%rbx), %eax
	movq	%rbx, %r14
	leaq	1192(%rsp), %rdx
	cmpl	$3, %eax
	jne	.LBB5_228
# BB#292:                               # %if.then.1384
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ecx
	orl	%r15d, %ecx
	je	.LBB5_293
# BB#297:                               # %if.else.1406
	testl	%eax, %eax
	jns	.LBB5_300
# BB#298:                               # %if.then.1409
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_295
# BB#299:                               # %if.then.1413
	movq	$0, 32(%r13)
	movl	$0, 64(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_300
.LBB5_228:                              # %if.end.1043
	cmpl	$1, %eax
	jne	.LBB5_369
# BB#229:                               # %if.then.1054
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ecx
	orl	%r15d, %ecx
	je	.LBB5_230
# BB#234:                               # %if.else.1076
	testl	%eax, %eax
	jns	.LBB5_237
# BB#235:                               # %if.then.1079
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_232
# BB#236:                               # %if.then.1083
	movq	$0, 32(%r13)
	movl	$0, 64(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_237
.LBB5_369:                              # %if.else.1825
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ecx
	orl	%r15d, %ecx
	je	.LBB5_370
# BB#374:                               # %if.else.1847
	testl	%eax, %eax
	jns	.LBB5_377
# BB#375:                               # %if.then.1850
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_372
# BB#376:                               # %if.then.1854
	movq	$0, 32(%r13)
	movl	$0, 64(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_377
.LBB5_293:                              # %if.then.1391
	movl	1200(%rsp), %ecx
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jb	.LBB5_296
# BB#294:                               # %if.then.1395
	movq	1192(%rsp), %rdx
	movq	%rdx, 32(%r13)
	movl	%ecx, 64(%r13)
.LBB5_295:                              # %if.end.1422
	testl	%eax, %eax
	movl	%eax, %ebx
	jns	.LBB5_300
.LBB5_296:                              # %if.then.1425
	movq	(%r12), %rax
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB5_300:                              # %if.end.1429
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	movl	%r15d, %eax
	orl	%ebp, %eax
	je	.LBB5_301
# BB#304:                               # %if.else.1451
	testl	%ebp, %ebp
	jns	.LBB5_307
# BB#305:                               # %if.then.1454
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_302
# BB#306:                               # %if.then.1458
	movq	$defext, 112(%r13)
	movl	$2, 144(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_307
.LBB5_301:                              # %if.then.1442
	movq	1192(%rsp), %rax
	movq	%rax, 112(%r13)
	movl	1200(%rsp), %eax
	movl	%eax, 144(%r13)
.LBB5_302:                              # %if.end.1467
	testl	%ebp, %ebp
	jns	.LBB5_307
# BB#303:                               # %if.then.1470
	movq	(%r12), %rax
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_307:                              # %if.end.1474
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%r15d, %ecx
	orl	%eax, %ecx
	je	.LBB5_308
# BB#312:                               # %if.else.1502
	testl	%eax, %eax
	jns	.LBB5_315
# BB#313:                               # %if.then.1505
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_310
# BB#314:                               # %if.then.1509
	movq	$0, 40(%r13)
	movl	$0, 68(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_315
.LBB5_308:                              # %if.then.1487
	movl	1200(%rsp), %ecx
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jb	.LBB5_311
# BB#309:                               # %if.then.1491
	movq	1192(%rsp), %rdx
	movq	%rdx, 40(%r13)
	movl	%ecx, 68(%r13)
.LBB5_310:                              # %if.end.1518
	testl	%eax, %eax
	movl	%eax, %ebx
	jns	.LBB5_315
.LBB5_311:                              # %if.then.1521
	movq	(%r12), %rax
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB5_315:                              # %if.end.1525
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	movl	%r15d, %eax
	orl	%ebp, %eax
	je	.LBB5_316
# BB#319:                               # %if.else.1547
	testl	%ebp, %ebp
	jns	.LBB5_322
# BB#320:                               # %if.then.1550
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_317
# BB#321:                               # %if.then.1554
	movq	$defext, 120(%r13)
	movl	$2, 148(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_322
.LBB5_316:                              # %if.then.1538
	movq	1192(%rsp), %rax
	movq	%rax, 120(%r13)
	movl	1200(%rsp), %eax
	movl	%eax, 148(%r13)
.LBB5_317:                              # %if.end.1563
	testl	%ebp, %ebp
	jns	.LBB5_322
# BB#318:                               # %if.then.1566
	movq	(%r12), %rax
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_322:                              # %if.end.1570
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%r15d, %ecx
	orl	%eax, %ecx
	je	.LBB5_323
# BB#327:                               # %if.else.1598
	testl	%eax, %eax
	jns	.LBB5_330
# BB#328:                               # %if.then.1601
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_325
# BB#329:                               # %if.then.1605
	movq	$0, 48(%r13)
	movl	$0, 72(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_330
.LBB5_323:                              # %if.then.1583
	movl	1200(%rsp), %ecx
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jb	.LBB5_326
# BB#324:                               # %if.then.1587
	movq	1192(%rsp), %rdx
	movq	%rdx, 48(%r13)
	movl	%ecx, 72(%r13)
.LBB5_325:                              # %if.end.1614
	testl	%eax, %eax
	movl	%eax, %ebx
	jns	.LBB5_330
.LBB5_326:                              # %if.then.1617
	movq	(%r12), %rax
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB5_330:                              # %if.end.1621
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	movl	%r15d, %eax
	orl	%ebp, %eax
	je	.LBB5_331
# BB#334:                               # %if.else.1643
	testl	%ebp, %ebp
	jns	.LBB5_337
# BB#335:                               # %if.then.1646
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_332
# BB#336:                               # %if.then.1650
	movq	$defext, 128(%r13)
	movl	$2, 152(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_337
.LBB5_331:                              # %if.then.1634
	movq	1192(%rsp), %rax
	movq	%rax, 128(%r13)
	movl	1200(%rsp), %eax
	movl	%eax, 152(%r13)
.LBB5_332:                              # %if.end.1659
	testl	%ebp, %ebp
	jns	.LBB5_337
# BB#333:                               # %if.then.1662
	movq	(%r12), %rax
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_337:                              # %if.end.1666
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_339
# BB#338:                               # %if.then.1676
	leaq	1192(%rsp), %rdx
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_339:                              # %if.end.1678
	testl	%ebx, %ebx
	jns	.LBB5_341
# BB#340:                               # %if.then.1681
	movq	(%r12), %rax
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_341:                              # %if.end.1685
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_343
# BB#342:                               # %if.then.1695
	leaq	1192(%rsp), %rdx
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_343:                              # %if.end.1697
	testl	%ebx, %ebx
	jns	.LBB5_345
# BB#344:                               # %if.then.1700
	movq	(%r12), %rax
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_345:                              # %if.end.1704
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_347
# BB#346:                               # %if.then.1714
	leaq	1192(%rsp), %rdx
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_347:                              # %if.end.1716
	testl	%ebx, %ebx
	jns	.LBB5_349
# BB#348:                               # %if.then.1719
	movq	(%r12), %rax
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_349:                              # %if.end.1723
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_351
# BB#350:                               # %if.then.1733
	leaq	1192(%rsp), %rdx
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_351:                              # %if.end.1735
	testl	%ebx, %ebx
	jns	.LBB5_353
# BB#352:                               # %if.then.1738
	movq	(%r12), %rax
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_353:                              # %if.end.1742
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_355
# BB#354:                               # %if.then.1752
	leaq	1192(%rsp), %rdx
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_355:                              # %if.end.1754
	testl	%ebx, %ebx
	jns	.LBB5_357
# BB#356:                               # %if.then.1757
	movq	(%r12), %rax
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_357:                              # %if.end.1761
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_359
# BB#358:                               # %if.then.1771
	leaq	1192(%rsp), %rdx
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_359:                              # %if.end.1773
	testl	%ebx, %ebx
	jns	.LBB5_361
# BB#360:                               # %if.then.1776
	movq	(%r12), %rax
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_361:                              # %if.end.1780
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_363
# BB#362:                               # %if.then.1790
	leaq	1192(%rsp), %rdx
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_363:                              # %if.end.1792
	testl	%ebx, %ebx
	jns	.LBB5_365
# BB#364:                               # %if.then.1795
	movq	(%r12), %rax
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_365:                              # %if.end.1799
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_367
# BB#366:                               # %if.then.1809
	leaq	1192(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_367:                              # %if.end.1811
	testl	%ebx, %ebx
	jns	.LBB5_454
# BB#368:                               # %if.then.1814
	movq	(%r12), %rax
	movl	$.L.str.40, %esi
	jmp	.LBB5_453
.LBB5_230:                              # %if.then.1061
	movl	1200(%rsp), %ecx
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jb	.LBB5_233
# BB#231:                               # %if.then.1065
	movq	1192(%rsp), %rdx
	movq	%rdx, 32(%r13)
	movl	%ecx, 64(%r13)
.LBB5_232:                              # %if.end.1092
	testl	%eax, %eax
	movl	%eax, %ebx
	jns	.LBB5_237
.LBB5_233:                              # %if.then.1095
	movq	(%r12), %rax
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB5_237:                              # %if.end.1099
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	movl	%r15d, %eax
	orl	%ebp, %eax
	je	.LBB5_238
# BB#241:                               # %if.else.1121
	testl	%ebp, %ebp
	jns	.LBB5_244
# BB#242:                               # %if.then.1124
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_239
# BB#243:                               # %if.then.1128
	movq	$defext, 112(%r13)
	movl	$2, 144(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_244
.LBB5_370:                              # %if.then.1832
	movl	1200(%rsp), %ecx
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jb	.LBB5_373
# BB#371:                               # %if.then.1836
	movq	1192(%rsp), %rdx
	movq	%rdx, 32(%r13)
	movl	%ecx, 64(%r13)
.LBB5_372:                              # %if.end.1863
	testl	%eax, %eax
	movl	%eax, %ebx
	jns	.LBB5_377
.LBB5_373:                              # %if.then.1866
	movq	(%r12), %rax
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB5_377:                              # %if.end.1870
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	movl	%r15d, %eax
	orl	%ebp, %eax
	je	.LBB5_378
# BB#381:                               # %if.else.1892
	testl	%ebp, %ebp
	jns	.LBB5_384
# BB#382:                               # %if.then.1895
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_379
# BB#383:                               # %if.then.1899
	movq	$defext, 112(%r13)
	movl	$2, 144(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_384
.LBB5_238:                              # %if.then.1112
	movq	1192(%rsp), %rax
	movq	%rax, 112(%r13)
	movl	1200(%rsp), %eax
	movl	%eax, 144(%r13)
.LBB5_239:                              # %if.end.1137
	testl	%ebp, %ebp
	jns	.LBB5_244
# BB#240:                               # %if.then.1140
	movq	(%r12), %rax
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_244:                              # %if.end.1144
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_246
# BB#245:                               # %if.then.1154
	leaq	1192(%rsp), %rdx
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_246:                              # %if.end.1156
	testl	%ebx, %ebx
	jns	.LBB5_248
# BB#247:                               # %if.then.1159
	movq	(%r12), %rax
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_248:                              # %if.end.1163
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_250
# BB#249:                               # %if.then.1173
	leaq	1192(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_250:                              # %if.end.1175
	testl	%ebx, %ebx
	jns	.LBB5_252
# BB#251:                               # %if.then.1178
	movq	(%r12), %rax
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_252:                              # %if.end.1182
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_254
# BB#253:                               # %if.then.1192
	leaq	1192(%rsp), %rdx
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_254:                              # %if.end.1194
	testl	%ebx, %ebx
	jns	.LBB5_256
# BB#255:                               # %if.then.1197
	movq	(%r12), %rax
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_256:                              # %if.end.1201
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_258
# BB#257:                               # %if.then.1211
	leaq	1192(%rsp), %rdx
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_258:                              # %if.end.1213
	testl	%ebx, %ebx
	jns	.LBB5_260
# BB#259:                               # %if.then.1216
	movq	(%r12), %rax
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_260:                              # %if.end.1220
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_262
# BB#261:                               # %if.then.1230
	leaq	1192(%rsp), %rdx
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_262:                              # %if.end.1232
	testl	%ebx, %ebx
	jns	.LBB5_264
# BB#263:                               # %if.then.1235
	movq	(%r12), %rax
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_264:                              # %if.end.1239
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_266
# BB#265:                               # %if.then.1249
	leaq	1192(%rsp), %rdx
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_266:                              # %if.end.1251
	testl	%ebx, %ebx
	jns	.LBB5_268
# BB#267:                               # %if.then.1254
	movq	(%r12), %rax
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_268:                              # %if.end.1258
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_270
# BB#269:                               # %if.then.1268
	leaq	1192(%rsp), %rdx
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_270:                              # %if.end.1270
	testl	%ebx, %ebx
	jns	.LBB5_272
# BB#271:                               # %if.then.1273
	movq	(%r12), %rax
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_272:                              # %if.end.1277
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_274
# BB#273:                               # %if.then.1287
	leaq	1192(%rsp), %rdx
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_274:                              # %if.end.1289
	testl	%ebx, %ebx
	jns	.LBB5_276
# BB#275:                               # %if.then.1292
	movq	(%r12), %rax
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_276:                              # %if.end.1296
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_278
# BB#277:                               # %if.then.1306
	leaq	1192(%rsp), %rdx
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_278:                              # %if.end.1308
	testl	%ebx, %ebx
	jns	.LBB5_280
# BB#279:                               # %if.then.1311
	movq	(%r12), %rax
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_280:                              # %if.end.1315
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_282
# BB#281:                               # %if.then.1325
	leaq	1192(%rsp), %rdx
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_282:                              # %if.end.1327
	testl	%ebx, %ebx
	jns	.LBB5_284
# BB#283:                               # %if.then.1330
	movq	(%r12), %rax
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_284:                              # %if.end.1334
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_286
# BB#285:                               # %if.then.1344
	leaq	1192(%rsp), %rdx
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_286:                              # %if.end.1346
	testl	%ebx, %ebx
	jns	.LBB5_288
# BB#287:                               # %if.then.1349
	movq	(%r12), %rax
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_288:                              # %if.end.1353
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_290
# BB#289:                               # %if.then.1363
	leaq	1192(%rsp), %rdx
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_290:                              # %if.end.1365
	testl	%ebx, %ebx
	jns	.LBB5_454
# BB#291:                               # %if.then.1368
	movq	(%r12), %rax
	movl	$.L.str.52, %esi
	jmp	.LBB5_453
.LBB5_378:                              # %if.then.1883
	movq	1192(%rsp), %rax
	movq	%rax, 112(%r13)
	movl	1200(%rsp), %eax
	movl	%eax, 144(%r13)
.LBB5_379:                              # %if.end.1908
	testl	%ebp, %ebp
	jns	.LBB5_384
# BB#380:                               # %if.then.1911
	movq	(%r12), %rax
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_384:                              # %if.end.1915
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%r15d, %ecx
	orl	%eax, %ecx
	je	.LBB5_385
# BB#389:                               # %if.else.1943
	testl	%eax, %eax
	jns	.LBB5_392
# BB#390:                               # %if.then.1946
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_387
# BB#391:                               # %if.then.1950
	movq	$0, 40(%r13)
	movl	$0, 68(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_392
.LBB5_385:                              # %if.then.1928
	movl	1200(%rsp), %ecx
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jb	.LBB5_388
# BB#386:                               # %if.then.1932
	movq	1192(%rsp), %rdx
	movq	%rdx, 40(%r13)
	movl	%ecx, 68(%r13)
.LBB5_387:                              # %if.end.1959
	testl	%eax, %eax
	movl	%eax, %ebx
	jns	.LBB5_392
.LBB5_388:                              # %if.then.1962
	movq	(%r12), %rax
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB5_392:                              # %if.end.1966
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	movl	%r15d, %eax
	orl	%ebp, %eax
	je	.LBB5_393
# BB#396:                               # %if.else.1988
	testl	%ebp, %ebp
	jns	.LBB5_399
# BB#397:                               # %if.then.1991
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_394
# BB#398:                               # %if.then.1995
	movq	$defext, 120(%r13)
	movl	$2, 148(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_399
.LBB5_393:                              # %if.then.1979
	movq	1192(%rsp), %rax
	movq	%rax, 120(%r13)
	movl	1200(%rsp), %eax
	movl	%eax, 148(%r13)
.LBB5_394:                              # %if.end.2004
	testl	%ebp, %ebp
	jns	.LBB5_399
# BB#395:                               # %if.then.2007
	movq	(%r12), %rax
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_399:                              # %if.end.2011
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%r15d, %ecx
	orl	%eax, %ecx
	je	.LBB5_400
# BB#404:                               # %if.else.2039
	testl	%eax, %eax
	jns	.LBB5_407
# BB#405:                               # %if.then.2042
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_402
# BB#406:                               # %if.then.2046
	movq	$0, 48(%r13)
	movl	$0, 72(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_407
.LBB5_400:                              # %if.then.2024
	movl	1200(%rsp), %ecx
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jb	.LBB5_403
# BB#401:                               # %if.then.2028
	movq	1192(%rsp), %rdx
	movq	%rdx, 48(%r13)
	movl	%ecx, 72(%r13)
.LBB5_402:                              # %if.end.2055
	testl	%eax, %eax
	movl	%eax, %ebx
	jns	.LBB5_407
.LBB5_403:                              # %if.then.2058
	movq	(%r12), %rax
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB5_407:                              # %if.end.2062
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	movl	%r15d, %eax
	orl	%ebp, %eax
	je	.LBB5_408
# BB#411:                               # %if.else.2084
	testl	%ebp, %ebp
	jns	.LBB5_414
# BB#412:                               # %if.then.2087
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_409
# BB#413:                               # %if.then.2091
	movq	$defext, 128(%r13)
	movl	$2, 152(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_414
.LBB5_408:                              # %if.then.2075
	movq	1192(%rsp), %rax
	movq	%rax, 128(%r13)
	movl	1200(%rsp), %eax
	movl	%eax, 152(%r13)
.LBB5_409:                              # %if.end.2100
	testl	%ebp, %ebp
	jns	.LBB5_414
# BB#410:                               # %if.then.2103
	movq	(%r12), %rax
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_414:                              # %if.end.2107
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%r15d, %ecx
	orl	%eax, %ecx
	je	.LBB5_415
# BB#419:                               # %if.else.2135
	testl	%eax, %eax
	jns	.LBB5_422
# BB#420:                               # %if.then.2138
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB5_417
# BB#421:                               # %if.then.2142
	movq	$0, 56(%r13)
	movl	$0, 76(%r13)
	xorl	%eax, %eax
	jmp	.LBB5_422
.LBB5_415:                              # %if.then.2120
	movl	1200(%rsp), %ecx
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jb	.LBB5_418
# BB#416:                               # %if.then.2124
	movq	1192(%rsp), %rdx
	movq	%rdx, 56(%r13)
	movl	%ecx, 76(%r13)
.LBB5_417:                              # %if.end.2151
	testl	%eax, %eax
	movl	%eax, %ebx
	jns	.LBB5_422
.LBB5_418:                              # %if.then.2154
	movq	(%r12), %rax
	movl	$.L.str.39, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB5_422:                              # %if.end.2158
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	leaq	1192(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	movl	%r15d, %eax
	orl	%ebp, %eax
	je	.LBB5_423
# BB#426:                               # %if.else.2180
	testl	%ebp, %ebp
	jns	.LBB5_429
# BB#427:                               # %if.then.2183
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_424
# BB#428:                               # %if.then.2187
	movq	$defext, 136(%r13)
	movl	$2, 156(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_429
.LBB5_423:                              # %if.then.2171
	movq	1192(%rsp), %rax
	movq	%rax, 136(%r13)
	movl	1200(%rsp), %eax
	movl	%eax, 156(%r13)
.LBB5_424:                              # %if.end.2196
	testl	%ebp, %ebp
	jns	.LBB5_429
# BB#425:                               # %if.then.2199
	movq	(%r12), %rax
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB5_429:                              # %if.end.2203
	cmpl	%ebp, %r15d
	cmovgl	%ebp, %r15d
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_431
# BB#430:                               # %if.then.2213
	leaq	1192(%rsp), %rdx
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_431:                              # %if.end.2215
	testl	%ebx, %ebx
	jns	.LBB5_433
# BB#432:                               # %if.then.2218
	movq	(%r12), %rax
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_433:                              # %if.end.2222
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_435
# BB#434:                               # %if.then.2232
	leaq	1192(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_435:                              # %if.end.2234
	testl	%ebx, %ebx
	jns	.LBB5_437
# BB#436:                               # %if.then.2237
	movq	(%r12), %rax
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_437:                              # %if.end.2241
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_439
# BB#438:                               # %if.then.2251
	leaq	1192(%rsp), %rdx
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_439:                              # %if.end.2253
	testl	%ebx, %ebx
	jns	.LBB5_441
# BB#440:                               # %if.then.2256
	movq	(%r12), %rax
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_441:                              # %if.end.2260
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_443
# BB#442:                               # %if.then.2270
	leaq	1192(%rsp), %rdx
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_443:                              # %if.end.2272
	testl	%ebx, %ebx
	jns	.LBB5_445
# BB#444:                               # %if.then.2275
	movq	(%r12), %rax
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_445:                              # %if.end.2279
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_447
# BB#446:                               # %if.then.2289
	leaq	1192(%rsp), %rdx
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_447:                              # %if.end.2291
	testl	%ebx, %ebx
	jns	.LBB5_449
# BB#448:                               # %if.then.2294
	movq	(%r12), %rax
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_449:                              # %if.end.2298
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	cmpl	$-20, %ebx
	jne	.LBB5_451
# BB#450:                               # %if.then.2308
	leaq	1192(%rsp), %rdx
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
.LBB5_451:                              # %if.end.2310
	testl	%ebx, %ebx
	jns	.LBB5_454
# BB#452:                               # %if.then.2313
	movq	(%r12), %rax
	movl	$.L.str.46, %esi
.LBB5_453:                              # %if.end.2317
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB5_454:                              # %if.end.2317
	cmpl	%ebx, %r15d
	cmovgl	%ebx, %r15d
	testl	%r15d, %r15d
	movq	%r14, %rdi
	jne	.LBB5_459
# BB#455:                               # %if.then.2328
	movl	18480(%rdi), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	cmpl	$16, %ecx
	movl	$65535, %eax            # imm = 0xFFFF
	cmovael	%eax, %edx
	movl	%edx, 112(%rdi)
	movq	18488(%rdi), %rcx
	movl	16(%rcx), %esi
	andl	$24, %esi
	cmpl	$24, %esi
	je	.LBB5_458
# BB#456:                               # %land.lhs.true.2348
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	subsd	24(%rcx), %xmm0
	movl	%edx, %ecx
	cvtsi2sdq	%rcx, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_458
# BB#457:                               # %if.then.2363
	addsd	.LCPI5_15(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movzwl	%cx, %edx
	movl	%edx, 112(%rdi)
.LBB5_458:                              # %if.end.2377
	leal	1(%rdx), %ecx
	cmpl	$65535, %edx            # imm = 0xFFFF
	cmovbl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, 100(%rdi)
	cmovll	%ecx, %edx
	movl	%edx, 116(%rdi)
	movl	%eax, 120(%rdi)
	cmovll	%ecx, %eax
	movl	%eax, 124(%rdi)
.LBB5_459:                              # %if.end.2412
	movq	%r12, %rsi
	movq	%rdi, %rbx
	callq	gdev_prn_put_params
	movq	%rbx, %r8
	movl	%eax, 44(%rsp)          # 4-byte Spill
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	movzwl	108(%r8), %eax
	cmpl	$3, %eax
	jne	.LBB5_461
# BB#460:                               # %if.then.2425
	movw	$4, 108(%r8)
	jmp	.LBB5_463
.LBB5_461:                              # %if.else.2428
	movzwl	%ax, %ecx
	cmpl	$5, %ecx
	jb	.LBB5_463
# BB#462:                               # %if.then.2434
	addl	$7, %eax
	andl	$65528, %eax            # imm = 0xFFF8
	movw	%ax, 108(%r8)
.LBB5_463:                              # %if.end.2444
	testl	%r15d, %r15d
	je	.LBB5_465
# BB#464:
	movl	44(%rsp), %eax          # 4-byte Reload
	jmp	.LBB5_560
.LBB5_465:                              # %for.cond.2448.preheader
	movl	%r15d, 4(%rsp)          # 4-byte Spill
	movl	$0, 1252(%rsp)
	movl	100(%r8), %eax
	testl	%eax, %eax
	jle	.LBB5_497
# BB#466:                               # %for.body.2453.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_467:                              # %for.body.2453
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_473 Depth 2
                                        #     Child Loop BB5_488 Depth 2
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movslq	%ecx, %r15
	movq	112(%r13,%r15,8), %r14
	movl	$defext, %eax
	cmpq	%rax, %r14
	je	.LBB5_468
# BB#469:                               # %for.body.2453
                                        #   in Loop: Header=BB5_467 Depth=1
	cmpq	176(%rsp,%r15,8), %r14
	je	.LBB5_470
# BB#471:                               # %for.cond.2471.preheader
                                        #   in Loop: Header=BB5_467 Depth=1
	xorl	%ebp, %ebp
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB5_477
# BB#472:                               # %for.body.2474.lr.ph
                                        #   in Loop: Header=BB5_467 Depth=1
	movl	144(%r13,%r15,4), %ebx
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %r13
	shlq	$2, %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_473:                              # %for.body.2474
                                        #   Parent Loop BB5_467 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ebx, 18616(%r8,%rbp,4)
	jne	.LBB5_475
# BB#474:                               # %land.lhs.true.2485
                                        #   in Loop: Header=BB5_473 Depth=2
	movq	18584(%r8,%rbp,8), %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r8, %r12
	callq	memcmp
	movq	%r12, %r8
	testl	%eax, %eax
	je	.LBB5_476
.LBB5_475:                              # %for.inc.2505
                                        #   in Loop: Header=BB5_473 Depth=2
	incq	%rbp
	cmpq	%r15, %rbp
	jl	.LBB5_473
.LBB5_476:                              # %for.cond.2471.for.end.2507_crit_edge
                                        #   in Loop: Header=BB5_467 Depth=1
	movq	48(%rsp), %r13          # 8-byte Reload
.LBB5_477:                              # %for.end.2507
                                        #   in Loop: Header=BB5_467 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %ebp
	jge	.LBB5_479
# BB#478:                               # %if.then.2510
                                        #   in Loop: Header=BB5_467 Depth=1
	movslq	%ebp, %rax
	movq	112(%r13,%rax,8), %rax
	movq	%rax, 112(%r13,%r15,8)
	jmp	.LBB5_482
	.align	16, 0x90
.LBB5_468:                              #   in Loop: Header=BB5_467 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB5_482
	.align	16, 0x90
.LBB5_470:                              #   in Loop: Header=BB5_467 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB5_482
	.align	16, 0x90
.LBB5_479:                              # %if.else.2519
                                        #   in Loop: Header=BB5_467 Depth=1
	movq	24(%r8), %rax
	movq	200(%rax), %rdi
	movl	18616(%r8,%r15,4), %esi
	movq	%r8, %rbp
	movl	$4, %edx
	movl	$.L.str.54, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB5_481
# BB#480:                               # %if.then.2530
                                        #   in Loop: Header=BB5_467 Depth=1
	movslq	1252(%rsp), %rax
	movq	112(%r13,%rax,8), %rsi
	movl	144(%r13,%rax,4), %edx
	shlq	$2, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movl	44(%rsp), %eax          # 4-byte Reload
.LBB5_481:                              # %if.end.2543
                                        #   in Loop: Header=BB5_467 Depth=1
	movslq	1252(%rsp), %rcx
	movq	%rbx, 112(%r13,%rcx,8)
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	%rbp, %r8
.LBB5_482:                              # %if.end.2549
                                        #   in Loop: Header=BB5_467 Depth=1
	movslq	%ecx, %r15
	movq	%r13, %rax
	movl	64(%rax,%r15,4), %r13d
	cmpq	$2, %r13
	jb	.LBB5_483
# BB#484:                               # %land.lhs.true.2556
                                        #   in Loop: Header=BB5_467 Depth=1
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	32(%rax,%r15,8), %rbp
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpq	96(%rsp,%r15,8), %rbp
	je	.LBB5_485
# BB#486:                               # %for.cond.2567.preheader
                                        #   in Loop: Header=BB5_467 Depth=1
	xorl	%r14d, %r14d
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB5_491
# BB#487:                               # %for.body.2570.preheader
                                        #   in Loop: Header=BB5_467 Depth=1
	leaq	(,%r13,4), %r12
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB5_488:                              # %for.body.2570
                                        #   Parent Loop BB5_467 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r13d, 18536(%r8,%r14,4)
	jne	.LBB5_490
# BB#489:                               # %land.lhs.true.2581
                                        #   in Loop: Header=BB5_488 Depth=2
	movq	18504(%r8,%r14,8), %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r8, %rbx
	callq	memcmp
	movq	%rbx, %r8
	testl	%eax, %eax
	je	.LBB5_491
.LBB5_490:                              # %for.inc.2601
                                        #   in Loop: Header=BB5_488 Depth=2
	incq	%r14
	cmpq	%r15, %r14
	jl	.LBB5_488
.LBB5_491:                              # %for.end.2603
                                        #   in Loop: Header=BB5_467 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	jge	.LBB5_493
# BB#492:                               # %if.then.2606
                                        #   in Loop: Header=BB5_467 Depth=1
	movslq	%r14d, %rax
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	32(%r13,%rax,8), %rax
	movq	%rax, 32(%r13,%r15,8)
	movq	56(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB5_496
	.align	16, 0x90
.LBB5_483:                              #   in Loop: Header=BB5_467 Depth=1
	movq	%rax, %r13
	jmp	.LBB5_496
.LBB5_485:                              #   in Loop: Header=BB5_467 Depth=1
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB5_496
.LBB5_493:                              # %if.else.2615
                                        #   in Loop: Header=BB5_467 Depth=1
	movq	24(%r8), %rax
	movq	%r8, %rbp
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.54, %ecx
	movl	%r13d, %esi
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	movq	48(%rsp), %r13          # 8-byte Reload
	je	.LBB5_495
# BB#494:                               # %if.then.2629
                                        #   in Loop: Header=BB5_467 Depth=1
	movslq	1252(%rsp), %rax
	movq	32(%r13,%rax,8), %rsi
	movl	64(%r13,%rax,4), %edx
	shlq	$2, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movl	44(%rsp), %eax          # 4-byte Reload
.LBB5_495:                              # %if.end.2642
                                        #   in Loop: Header=BB5_467 Depth=1
	movslq	1252(%rsp), %rcx
	movq	%rbx, 32(%r13,%rcx,8)
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	%rbp, %r8
	.align	16, 0x90
.LBB5_496:                              # %if.end.2648
                                        #   in Loop: Header=BB5_467 Depth=1
	incl	%ecx
	movl	%ecx, 1252(%rsp)
	movl	100(%r8), %eax
	cmpl	%eax, %ecx
	jl	.LBB5_467
.LBB5_497:                              # %for.end.2651
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB5_498
# BB#499:                               # %land.lhs.true.2656
	cmpq	88(%rsp), %rcx
	je	.LBB5_500
# BB#501:                               # %if.then.2662
	cmpl	$3, %eax
	jne	.LBB5_502
# BB#504:                               # %if.then.2673
	movl	$9, 1252(%rsp)
	movl	$9, %esi
	jmp	.LBB5_506
.LBB5_498:
	movl	4(%rsp), %r15d          # 4-byte Reload
	jmp	.LBB5_509
.LBB5_500:
	movl	4(%rsp), %r15d          # 4-byte Reload
	jmp	.LBB5_509
.LBB5_502:                              # %if.then.2662
	cmpl	$1, %eax
	jne	.LBB5_505
# BB#503:                               # %if.then.2667
	movl	$3, 1252(%rsp)
	movl	$3, %esi
	jmp	.LBB5_506
.LBB5_505:                              # %if.else.2674
	movl	$16, 1252(%rsp)
	movl	$16, %esi
.LBB5_506:                              # %if.end.2676
	movl	4(%rsp), %r15d          # 4-byte Reload
	movq	24(%r8), %rax
	movq	%r8, %rbp
	movq	200(%rax), %rdi
	movl	$4, %edx
	movl	$.L.str.54, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB5_508
# BB#507:                               # %if.then.2686
	movq	24(%r13), %rsi
	movslq	1252(%rsp), %rdx
	shlq	$2, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movl	44(%rsp), %eax          # 4-byte Reload
.LBB5_508:                              # %if.end.2693
	movq	%rbx, 24(%r13)
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	%rbp, %r8
.LBB5_509:                              # %if.end.2696
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	cmpq	296(%rsp), %rax
	je	.LBB5_516
# BB#510:                               # %if.then.2704
	movl	240(%r13), %esi
	xorl	%ebp, %ebp
	testl	%esi, %esi
	je	.LBB5_515
# BB#511:                               # %if.then.2710
	movq	24(%r8), %rax
	movq	%r8, %rbx
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB5_512
# BB#513:                               # %if.else.2727
	movq	232(%r13), %rsi
	movl	240(%r13), %edx
	movq	%rbp, %rdi
	callq	memcpy
	jmp	.LBB5_514
.LBB5_512:                              # %if.then.2723
	movl	$0, 240(%r13)
	movl	$-25, 44(%rsp)          # 4-byte Folded Spill
	xorl	%ebp, %ebp
.LBB5_514:                              # %if.end.2737
	movq	%rbx, %r8
.LBB5_515:                              # %if.end.2737
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movl	$0, 12(%rax)
.LBB5_516:                              # %if.end.2743
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	cmpq	312(%rsp), %rax
	je	.LBB5_517
# BB#518:                               # %if.then.2751
	movl	256(%r13), %esi
	xorl	%ebp, %ebp
	testl	%esi, %esi
	je	.LBB5_519
# BB#520:                               # %if.then.2758
	movq	24(%r8), %rax
	movq	%r8, %rbx
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.7, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB5_521
# BB#522:                               # %if.else.2775
	movq	248(%r13), %rsi
	movl	256(%r13), %edx
	movq	%rbp, %rdi
	callq	memcpy
	jmp	.LBB5_523
.LBB5_517:
	movq	%r8, %rbx
	jmp	.LBB5_524
.LBB5_519:
	movq	%r8, %rbx
	jmp	.LBB5_523
.LBB5_521:                              # %if.then.2771
	movl	$0, 256(%r13)
	movl	$-25, 44(%rsp)          # 4-byte Folded Spill
	xorl	%ebp, %ebp
.LBB5_523:                              # %if.end.2785
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movl	$0, 12(%rax)
.LBB5_524:                              # %if.end.2792
	movl	44(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	js	.LBB5_526
# BB#525:
	movq	%rbx, %r8
	jmp	.LBB5_560
.LBB5_526:                              # %if.then.2795
	movl	%eax, %r14d
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	movq	%rbx, %r8
	je	.LBB5_534
# BB#527:                               # %land.lhs.true.2800
	cmpq	88(%rsp), %rsi
	je	.LBB5_534
# BB#528:                               # %if.then.2806
	movl	100(%r8), %eax
	cmpl	$3, %eax
	jne	.LBB5_529
# BB#531:                               # %if.then.2817
	movl	$9, 1252(%rsp)
	jmp	.LBB5_533
.LBB5_529:                              # %if.then.2806
	cmpl	$1, %eax
	jne	.LBB5_532
# BB#530:                               # %if.then.2811
	movl	$3, 1252(%rsp)
	jmp	.LBB5_533
.LBB5_532:                              # %if.else.2818
	movl	$16, 1252(%rsp)
.LBB5_533:                              # %if.end.2820
	movq	24(%r8), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.54, %edx
	movq	%r8, %rbx
	callq	*24(%rdi)
	movq	%rbx, %r8
.LBB5_534:                              # %if.end.2828
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB5_537
# BB#535:                               # %if.end.2828
	cmpq	296(%rsp), %rsi
	je	.LBB5_537
# BB#536:                               # %if.then.2842
	movq	24(%r8), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	%r8, %rbx
	callq	*24(%rdi)
	movq	%rbx, %r8
.LBB5_537:                              # %if.end.2852
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB5_540
# BB#538:                               # %if.end.2852
	cmpq	312(%rsp), %rsi
	je	.LBB5_540
# BB#539:                               # %if.then.2866
	movq	24(%r8), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	%r8, %rbx
	callq	*24(%rdi)
	movq	%rbx, %r8
.LBB5_540:                              # %for.cond.2877.preheader
	movl	$0, 1252(%rsp)
	cmpl	$0, 100(%r8)
	jle	.LBB5_559
# BB#541:                               # %for.body.2882.lr.ph
	xorl	%eax, %eax
	movl	$defext, %ebx
	.align	16, 0x90
.LBB5_542:                              # %for.body.2882
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_546 Depth 2
                                        #     Child Loop BB5_554 Depth 2
	movslq	%eax, %rcx
	movq	32(%r13,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB5_550
# BB#543:                               # %for.body.2882
                                        #   in Loop: Header=BB5_542 Depth=1
	cmpq	%rbx, %rsi
	je	.LBB5_550
# BB#544:                               # %land.lhs.true.2897
                                        #   in Loop: Header=BB5_542 Depth=1
	cmpq	96(%rsp,%rcx,8), %rsi
	je	.LBB5_550
# BB#545:                               # %for.cond.2908.preheader
                                        #   in Loop: Header=BB5_542 Depth=1
	xorl	%edx, %edx
	testl	%eax, %eax
	jle	.LBB5_548
	.align	16, 0x90
.LBB5_546:                              # %for.body.2911
                                        #   Parent Loop BB5_542 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	18504(%r8,%rdx,8), %rsi
	je	.LBB5_548
# BB#547:                               # %for.inc.2924
                                        #   in Loop: Header=BB5_546 Depth=2
	incq	%rdx
	cmpq	%rcx, %rdx
	jl	.LBB5_546
.LBB5_548:                              # %for.end.2926
                                        #   in Loop: Header=BB5_542 Depth=1
	cmpl	%edx, %eax
	jne	.LBB5_550
# BB#549:                               # %if.then.2929
                                        #   in Loop: Header=BB5_542 Depth=1
	movq	24(%r8), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.54, %edx
	movq	%r8, %rbp
	callq	*24(%rdi)
	movq	%rbp, %r8
	movl	1252(%rsp), %eax
	.align	16, 0x90
.LBB5_550:                              # %if.end.2941
                                        #   in Loop: Header=BB5_542 Depth=1
	movslq	%eax, %rcx
	movq	112(%r13,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB5_558
# BB#551:                               # %land.lhs.true.2948
                                        #   in Loop: Header=BB5_542 Depth=1
	cmpq	%rbx, %rsi
	je	.LBB5_558
# BB#552:                               # %land.lhs.true.2948
                                        #   in Loop: Header=BB5_542 Depth=1
	cmpq	176(%rsp,%rcx,8), %rsi
	je	.LBB5_558
# BB#553:                               # %for.cond.2966.preheader
                                        #   in Loop: Header=BB5_542 Depth=1
	xorl	%edx, %edx
	testl	%eax, %eax
	jle	.LBB5_556
	.align	16, 0x90
.LBB5_554:                              # %for.body.2969
                                        #   Parent Loop BB5_542 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	18584(%r8,%rdx,8), %rsi
	je	.LBB5_556
# BB#555:                               # %for.inc.2982
                                        #   in Loop: Header=BB5_554 Depth=2
	incq	%rdx
	cmpq	%rcx, %rdx
	jl	.LBB5_554
.LBB5_556:                              # %for.end.2984
                                        #   in Loop: Header=BB5_542 Depth=1
	cmpl	%edx, %eax
	jne	.LBB5_558
# BB#557:                               # %if.then.2987
                                        #   in Loop: Header=BB5_542 Depth=1
	movq	24(%r8), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.54, %edx
	movq	%r8, %rbp
	callq	*24(%rdi)
	movq	%rbp, %r8
	movl	1252(%rsp), %eax
	.align	16, 0x90
.LBB5_558:                              # %if.end.2999
                                        #   in Loop: Header=BB5_542 Depth=1
	incl	%eax
	movl	%eax, 1252(%rsp)
	cmpl	100(%r8), %eax
	jl	.LBB5_542
.LBB5_559:
	movl	%r14d, %eax
.LBB5_560:                              # %if.end.3004
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB5_562
# BB#561:                               # %if.then.3013
	leaq	472(%rsp), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	memcpy
	leaq	64(%rsp), %rsi
	movl	$408, %edx              # imm = 0x198
	movq	%r13, %rdi
	callq	memcpy
	jmp	.LBB5_611
.LBB5_562:                              # %if.else.3018
	movq	296(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB5_565
# BB#563:                               # %land.lhs.true.3023
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpq	(%rax), %rsi
	je	.LBB5_565
# BB#564:                               # %if.then.3031
	movq	24(%r8), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	%r8, %rbx
	callq	*24(%rdi)
	movq	%rbx, %r8
.LBB5_565:                              # %if.end.3040
	movq	%r8, %rbp
	movq	312(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB5_568
# BB#566:                               # %land.lhs.true.3045
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpq	(%rax), %rsi
	je	.LBB5_568
# BB#567:                               # %if.then.3053
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
.LBB5_568:                              # %if.end.3062
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB5_576
# BB#569:                               # %land.lhs.true.3066
	cmpq	24(%r13), %rsi
	je	.LBB5_576
# BB#570:                               # %if.then.3072
	movl	476(%rsp), %eax
	cmpl	$3, %eax
	jne	.LBB5_571
# BB#573:                               # %if.then.3081
	movl	$9, 1252(%rsp)
	jmp	.LBB5_575
.LBB5_571:                              # %if.then.3072
	cmpl	$1, %eax
	jne	.LBB5_574
# BB#572:                               # %if.then.3076
	movl	$3, 1252(%rsp)
	jmp	.LBB5_575
.LBB5_574:                              # %if.else.3082
	movl	$16, 1252(%rsp)
.LBB5_575:                              # %if.end.3084
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.54, %edx
	callq	*24(%rdi)
.LBB5_576:                              # %for.cond.3093.preheader
	movl	$0, 1252(%rsp)
	xorl	%eax, %eax
	movl	$defext, %ebx
	.align	16, 0x90
.LBB5_577:                              # %for.body.3096
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_582 Depth 2
                                        #     Child Loop BB5_590 Depth 2
	movslq	%eax, %rcx
	movq	96(%rsp,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB5_586
# BB#578:                               # %land.lhs.true.3103
                                        #   in Loop: Header=BB5_577 Depth=1
	cmpq	32(%r13,%rcx,8), %rsi
	je	.LBB5_586
# BB#579:                               # %land.lhs.true.3113
                                        #   in Loop: Header=BB5_577 Depth=1
	cmpq	%rbx, %rsi
	je	.LBB5_586
# BB#580:                               # %land.lhs.true.3113
                                        #   in Loop: Header=BB5_577 Depth=1
	movq	80(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB5_586
# BB#581:                               # %for.cond.3124.preheader
                                        #   in Loop: Header=BB5_577 Depth=1
	xorl	%edx, %edx
	testl	%eax, %eax
	jle	.LBB5_584
	.align	16, 0x90
.LBB5_582:                              # %for.body.3127
                                        #   Parent Loop BB5_577 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	96(%rsp,%rdx,8), %rsi
	je	.LBB5_584
# BB#583:                               # %for.inc.3138
                                        #   in Loop: Header=BB5_582 Depth=2
	incq	%rdx
	cmpq	%rcx, %rdx
	jl	.LBB5_582
.LBB5_584:                              # %for.end.3140
                                        #   in Loop: Header=BB5_577 Depth=1
	cmpl	%edx, %eax
	jne	.LBB5_586
# BB#585:                               # %if.then.3143
                                        #   in Loop: Header=BB5_577 Depth=1
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.54, %edx
	callq	*24(%rdi)
	movl	1252(%rsp), %eax
	.align	16, 0x90
.LBB5_586:                              # %if.end.3154
                                        #   in Loop: Header=BB5_577 Depth=1
	movslq	%eax, %rcx
	movq	176(%rsp,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB5_594
# BB#587:                               # %land.lhs.true.3160
                                        #   in Loop: Header=BB5_577 Depth=1
	cmpq	%rbx, %rsi
	je	.LBB5_594
# BB#588:                               # %land.lhs.true.3160
                                        #   in Loop: Header=BB5_577 Depth=1
	cmpq	112(%r13,%rcx,8), %rsi
	je	.LBB5_594
# BB#589:                               # %for.cond.3177.preheader
                                        #   in Loop: Header=BB5_577 Depth=1
	xorl	%edx, %edx
	testl	%eax, %eax
	jle	.LBB5_592
	.align	16, 0x90
.LBB5_590:                              # %for.body.3180
                                        #   Parent Loop BB5_577 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	176(%rsp,%rdx,8), %rsi
	je	.LBB5_592
# BB#591:                               # %for.inc.3191
                                        #   in Loop: Header=BB5_590 Depth=2
	incq	%rdx
	cmpq	%rcx, %rdx
	jl	.LBB5_590
.LBB5_592:                              # %for.end.3193
                                        #   in Loop: Header=BB5_577 Depth=1
	cmpl	%edx, %eax
	jne	.LBB5_594
# BB#593:                               # %if.then.3196
                                        #   in Loop: Header=BB5_577 Depth=1
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.54, %edx
	callq	*24(%rdi)
	movl	1252(%rsp), %eax
	.align	16, 0x90
.LBB5_594:                              # %if.end.3207
                                        #   in Loop: Header=BB5_577 Depth=1
	incl	%eax
	movl	%eax, 1252(%rsp)
	cmpl	$4, %eax
	jl	.LBB5_577
# BB#595:                               # %for.end.3210
	movq	%rbp, %rbx
	cmpl	$0, 84(%rbx)
	je	.LBB5_611
# BB#596:                               # %if.then.3212
	movslq	100(%rbx), %rax
	cmpl	476(%rsp), %eax
	jne	.LBB5_600
# BB#597:                               # %lor.lhs.false.3218
	movzwl	108(%rbx), %ecx
	movzwl	484(%rsp), %edx
	cmpl	%edx, %ecx
	jne	.LBB5_600
# BB#598:                               # %lor.lhs.false.3226
	movl	8(%r13), %ecx
	cmpl	72(%rsp), %ecx
	jne	.LBB5_600
# BB#599:                               # %lor.lhs.false.3232
	movq	16(%r13), %rdx
	xorl	%ecx, %ecx
	cmpq	80(%rsp), %rdx
	je	.LBB5_601
.LBB5_600:                              # %if.then.3238
	movl	$1, %ecx
.LBB5_601:                              # %for.cond.3240.preheader
	movl	$0, 1252(%rsp)
	testl	%eax, %eax
	jle	.LBB5_609
# BB#602:                               # %for.body.3245.lr.ph
	xorl	%edx, %edx
	testb	$1, %al
	je	.LBB5_604
# BB#603:                               # %for.body.3245.prol
	movq	32(%r13), %rdx
	movq	112(%r13), %rsi
	cmpq	96(%rsp), %rdx
	movl	$1, %edx
	cmovnel	%edx, %ecx
	cmpq	176(%rsp), %rsi
	cmovnel	%edx, %ecx
	movl	$1, %edx
.LBB5_604:                              # %for.body.3245.lr.ph.split
	movl	$1, %esi
	cmpl	$1, %eax
	je	.LBB5_608
# BB#605:                               # %for.body.3245.lr.ph.split.split
	movl	$1, %esi
	.align	16, 0x90
.LBB5_606:                              # %for.body.3245
                                        # =>This Inner Loop Header: Depth=1
	movq	18584(%rbx,%rdx,8), %rdi
	movq	18504(%rbx,%rdx,8), %rbp
	cmpq	96(%rsp,%rdx,8), %rbp
	cmovnel	%esi, %ecx
	cmpq	176(%rsp,%rdx,8), %rdi
	movq	18592(%rbx,%rdx,8), %rdi
	movq	18512(%rbx,%rdx,8), %rbp
	cmovnel	%esi, %ecx
	cmpq	104(%rsp,%rdx,8), %rbp
	cmovnel	%esi, %ecx
	cmpq	184(%rsp,%rdx,8), %rdi
	cmovnel	%esi, %ecx
	addq	$2, %rdx
	cmpq	%rax, %rdx
	jl	.LBB5_606
# BB#607:                               # %for.cond.3240.for.end.3270_crit_edge.unr-lcssa
	movl	%edx, %esi
.LBB5_608:                              # %for.cond.3240.for.end.3270_crit_edge
	movl	%esi, 1252(%rsp)
.LBB5_609:                              # %for.end.3270
	testl	%ecx, %ecx
	je	.LBB5_611
# BB#610:                               # %if.then.3272
	movq	24(%rbx), %rdi
	leaq	64(%rsp), %rsi
	callq	stc_freedata
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 18632(%rbx)
	movupd	%xmm0, 18552(%rbx)
	movupd	%xmm0, 18648(%rbx)
	movupd	%xmm0, 18568(%rbx)
	movl	$4, 1252(%rsp)
	movq	%rbx, %rdi
	callq	gs_closedevice
.LBB5_611:                              # %if.end.3292
	movl	%r15d, %eax
	addq	$1256, %rsp             # imm = 0x4E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	stc_put_params, .Lfunc_end5-stc_put_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4602678819172646912     # double 0.5
.LCPI6_1:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	stc_map_cmyk_color,@function
stc_map_cmyk_color:                     # @stc_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp63:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 56
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movzwl	108(%rdi), %eax
	movl	$8, %r8d
	cmpl	$32, %eax
	je	.LBB6_2
# BB#1:                                 # %cond.false
	movl	18480(%rdi), %r8d
.LBB6_2:                                # %cond.end
	movzwl	(%rsi), %r12d
	movzwl	2(%rsi), %r9d
	movzwl	4(%rsi), %r10d
	movzwl	6(%rsi), %r13d
	cmpl	%r9d, %r12d
	jne	.LBB6_27
# BB#3:                                 # %cond.end
	movzwl	%r10w, %eax
	movzwl	%r9w, %ecx
	cmpl	%eax, %ecx
	jne	.LBB6_27
# BB#4:                                 # %if.then
	movzwl	%r13w, %eax
	movzwl	%r12w, %ecx
	cmpl	%eax, %ecx
	cmovaw	%r12w, %r13w
	movl	18480(%rdi), %edx
	cmpl	$8, %edx
	jne	.LBB6_14
# BB#5:                                 # %land.lhs.true.28
	movq	18488(%rdi), %rax
	movl	16(%rax), %eax
	andl	$24, %eax
	cmpl	$8, %eax
	jne	.LBB6_16
# BB#6:                                 # %if.then.i
	movq	18576(%rdi), %r9
	testq	%r9, %r9
	je	.LBB6_12
# BB#7:                                 # %while.body.i
	leaq	256(%r9), %rbp
	movzwl	256(%r9), %edx
	movzwl	%r13w, %ecx
	movl	$64, %esi
	cmpl	%ecx, %edx
	jb	.LBB6_129
# BB#8:                                 # %if.else.i
	movzwl	254(%r9), %r10d
	movq	$-64, %rsi
	cmpl	%ecx, %r10d
	jbe	.LBB6_9
.LBB6_129:                              # %if.end.50.i
	leaq	(%rbp,%rsi,2), %rax
	movzwl	(%rbp,%rsi,2), %edx
	movzwl	%r13w, %esi
	movl	$32, %ebx
	cmpl	%esi, %edx
	jb	.LBB6_130
# BB#127:                               # %if.else.i.1
	movzwl	-2(%rax), %r10d
	movq	$-32, %rbx
	cmpl	%esi, %r10d
	jbe	.LBB6_128
.LBB6_130:                              # %if.end.50.i.1
	leaq	(%rax,%rbx,2), %rbp
	movzwl	(%rax,%rbx,2), %edx
	movl	$16, %ebx
	cmpl	%esi, %edx
	jb	.LBB6_133
# BB#131:                               # %if.else.i.2
	movzwl	-2(%rbp), %r10d
	movq	$-16, %rbx
	cmpl	%esi, %r10d
	jbe	.LBB6_132
.LBB6_133:                              # %if.end.50.i.2
	leaq	(%rbp,%rbx,2), %rax
	movzwl	(%rbp,%rbx,2), %edx
	movl	$8, %ebx
	cmpl	%esi, %edx
	jb	.LBB6_135
# BB#134:                               # %if.else.i.3
	movzwl	-2(%rax), %r10d
	movq	$-8, %rbx
	cmpl	%esi, %r10d
	jbe	.LBB6_128
.LBB6_135:                              # %if.end.50.i.3
	leaq	(%rax,%rbx,2), %rbp
	movzwl	(%rax,%rbx,2), %edx
	movl	$4, %ebx
	cmpl	%esi, %edx
	jb	.LBB6_138
# BB#136:                               # %if.else.i.4
	movzwl	-2(%rbp), %r10d
	movq	$-4, %rbx
	cmpl	%esi, %r10d
	jbe	.LBB6_137
.LBB6_138:                              # %if.end.50.i.4
	leaq	(%rbp,%rbx,2), %rax
	movzwl	(%rbp,%rbx,2), %edx
	movl	$2, %ebx
	cmpl	%esi, %edx
	jb	.LBB6_140
# BB#139:                               # %if.else.i.5
	movzwl	-2(%rax), %r10d
	movq	$-2, %rbx
	cmpl	%esi, %r10d
	jbe	.LBB6_128
.LBB6_140:                              # %if.end.50.i.5
	leaq	(%rax,%rbx,2), %rbp
	movzwl	(%rax,%rbx,2), %edx
	movl	$1, %eax
	cmpl	%esi, %edx
	jb	.LBB6_143
# BB#141:                               # %if.else.i.6
	movzwl	-2(%rbp), %r10d
	movq	$-1, %rax
	cmpl	%esi, %r10d
	jbe	.LBB6_142
.LBB6_143:                              # %if.end.50.i.6
	leaq	(%rbp,%rax,2), %rbx
	movl	%esi, %ecx
	jmp	.LBB6_11
.LBB6_27:                               # %if.else.34
	movq	18496(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB6_48
# BB#28:                                # %if.then.38
	testw	%r13w, %r13w
	jne	.LBB6_32
# BB#29:                                # %if.then.42
	movzwl	%r9w, %eax
	movzwl	%r12w, %edx
	cmpl	%eax, %edx
	movw	%r9w, %ax
	cmovbw	%r12w, %ax
	movzwl	%ax, %r13d
	movzwl	%r10w, %eax
	cmpl	%eax, %r13d
	cmovaew	%r10w, %r13w
	testw	%r13w, %r13w
	je	.LBB6_30
# BB#31:                                # %if.then.65
	subl	%r13d, %r12d
	subl	%r13d, %r9d
	subl	%r13d, %r10d
	jmp	.LBB6_32
.LBB6_14:                               # %if.else
	cmpl	$15, %edx
	ja	.LBB6_15
.LBB6_16:                               # %if.then.i.659
	movq	18576(%rdi), %rax
	testq	%rax, %rax
	je	.LBB6_26
# BB#17:                                # %if.then.5.i.670
	leal	-1(%rdx), %ecx
	movl	$1, %esi
	shlq	%cl, %rsi
	leaq	(%rax,%rsi,2), %rdi
	cmpl	$2, %edx
	jl	.LBB6_24
# BB#18:                                # %if.then.5.i.670
	addl	$-2, %edx
	cmpl	$63, %edx
	je	.LBB6_24
# BB#19:                                # %while.body.i.674.preheader
	movl	$1, %ebp
	movb	%dl, %cl
	shlq	%cl, %rbp
	movzwl	%r13w, %ebx
	.align	16, 0x90
.LBB6_20:                               # %while.body.i.674
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %edx
	subl	%ebx, %edx
	movq	%rbp, %rsi
	jb	.LBB6_23
# BB#21:                                # %if.else.i.677
                                        #   in Loop: Header=BB6_20 Depth=1
	movzwl	-2(%rdi), %esi
	cmpl	%ebx, %esi
	jbe	.LBB6_212
# BB#22:                                # %if.then.34.i.679
                                        #   in Loop: Header=BB6_20 Depth=1
	movq	%rbp, %rsi
	negq	%rsi
.LBB6_23:                               # %if.end.50.i.692
                                        #   in Loop: Header=BB6_20 Depth=1
	leaq	(%rdi,%rsi,2), %rdi
	sarq	%rbp
	testq	%rbp, %rbp
	jg	.LBB6_20
.LBB6_24:                               # %while.end.loopexit.i.695
	movzwl	%r13w, %ebx
	jmp	.LBB6_25
.LBB6_48:                               # %if.else.190
	testw	%r13w, %r13w
	jne	.LBB6_50
# BB#49:                                # %if.then.194
	movzwl	%r9w, %eax
	movzwl	%r12w, %ecx
	cmpl	%eax, %ecx
	movw	%r9w, %ax
	cmovbw	%r12w, %ax
	movzwl	%ax, %r13d
	movzwl	%r10w, %eax
	cmpl	%eax, %r13d
	cmovaew	%r10w, %r13w
	jmp	.LBB6_50
.LBB6_26:                               # %if.else.69.i.714
	movl	$16, %ecx
	subl	%edx, %ecx
	movzwl	%r13w, %r13d
	shrl	%cl, %r13d
	jmp	.LBB6_15
.LBB6_12:                               # %if.else.69.i
	movzwl	%r13w, %eax
	shrq	$8, %rax
	jmp	.LBB6_13
.LBB6_30:
	xorl	%r13d, %r13d
.LBB6_32:                               # %if.end.78
	movzwl	%r12w, %eax
	cvtsi2ssl	%eax, %xmm3
	movzwl	%r9w, %eax
	cvtsi2ssl	%eax, %xmm2
	movzwl	%r10w, %eax
	cvtsi2ssl	%eax, %xmm1
	movzwl	%r13w, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	(%rcx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	movss	4(%rcx), %xmm5          # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm5
	movss	8(%rcx), %xmm4          # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	addss	%xmm5, %xmm4
	movss	12(%rcx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	xorps	%xmm4, %xmm4
	ucomiss	%xmm5, %xmm4
	jbe	.LBB6_34
# BB#33:
	xorl	%r12d, %r12d
	jmp	.LBB6_36
.LBB6_34:                               # %if.else.97
	cvtss2sd	%xmm5, %xmm5
	addsd	.LCPI6_0(%rip), %xmm5
	movw	$-1, %r12w
	ucomisd	.LCPI6_1(%rip), %xmm5
	ja	.LBB6_36
# BB#35:                                # %if.else.103
	cvttsd2si	%xmm5, %r12d
.LBB6_36:                               # %if.end.108
	movss	16(%rcx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm5
	movss	20(%rcx), %xmm6         # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm6
	movss	24(%rcx), %xmm7         # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm7
	addss	%xmm6, %xmm7
	movss	28(%rcx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm7, %xmm5
	ucomiss	%xmm5, %xmm4
	jbe	.LBB6_38
# BB#37:
	xorl	%r9d, %r9d
	jmp	.LBB6_40
.LBB6_38:                               # %if.else.124
	cvtss2sd	%xmm5, %xmm4
	addsd	.LCPI6_0(%rip), %xmm4
	movw	$-1, %r9w
	ucomisd	.LCPI6_1(%rip), %xmm4
	ja	.LBB6_40
# BB#39:                                # %if.else.130
	cvttsd2si	%xmm4, %r9d
.LBB6_40:                               # %if.end.135
	movss	32(%rcx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	movss	36(%rcx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm5
	movss	40(%rcx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	addss	%xmm5, %xmm4
	movss	44(%rcx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	xorps	%xmm4, %xmm4
	ucomiss	%xmm5, %xmm4
	jbe	.LBB6_42
# BB#41:
	xorl	%r10d, %r10d
	jmp	.LBB6_44
.LBB6_42:                               # %if.else.151
	cvtss2sd	%xmm5, %xmm5
	addsd	.LCPI6_0(%rip), %xmm5
	movw	$-1, %r10w
	ucomisd	.LCPI6_1(%rip), %xmm5
	ja	.LBB6_44
# BB#43:                                # %if.else.157
	cvttsd2si	%xmm5, %r10d
.LBB6_44:                               # %if.end.162
	mulss	48(%rcx), %xmm3
	mulss	52(%rcx), %xmm2
	addss	%xmm3, %xmm2
	mulss	56(%rcx), %xmm1
	addss	%xmm2, %xmm1
	mulss	60(%rcx), %xmm0
	addss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm4
	jbe	.LBB6_46
# BB#45:
	xorl	%r13d, %r13d
	jmp	.LBB6_50
.LBB6_46:                               # %if.else.178
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI6_0(%rip), %xmm0
	movw	$-1, %r13w
	ucomisd	.LCPI6_1(%rip), %xmm0
	ja	.LBB6_50
# BB#47:                                # %if.else.184
	cvttsd2si	%xmm0, %r13d
.LBB6_50:                               # %if.end.218
	movl	18480(%rdi), %r14d
	cmpl	$8, %r14d
	jne	.LBB6_81
# BB#51:                                # %land.lhs.true.223
	movq	18488(%rdi), %rax
	movl	16(%rax), %eax
	andl	$24, %eax
	cmpl	$8, %eax
	jne	.LBB6_82
# BB#52:                                # %if.then.i.597
	movq	18552(%rdi), %r11
	testq	%r11, %r11
	je	.LBB6_58
# BB#53:                                # %while.body.i.612
	leaq	256(%r11), %rdx
	movzwl	256(%r11), %ecx
	movzwl	%r12w, %r15d
	movl	$64, %eax
	cmpl	%r15d, %ecx
	jb	.LBB6_197
# BB#54:                                # %if.else.i.615
	movzwl	254(%r11), %r14d
	movq	$-64, %rax
	cmpl	%r15d, %r14d
	jbe	.LBB6_55
.LBB6_197:                              # %if.end.50.i.630
	leaq	(%rdx,%rax,2), %rbx
	movzwl	(%rdx,%rax,2), %ecx
	movzwl	%r12w, %eax
	movl	$32, %esi
	cmpl	%eax, %ecx
	jb	.LBB6_198
# BB#195:                               # %if.else.i.615.1
	movzwl	-2(%rbx), %r14d
	movq	$-32, %rsi
	cmpl	%eax, %r14d
	jbe	.LBB6_196
.LBB6_198:                              # %if.end.50.i.630.1
	leaq	(%rbx,%rsi,2), %rdx
	movzwl	(%rbx,%rsi,2), %ecx
	movl	$16, %esi
	cmpl	%eax, %ecx
	jb	.LBB6_201
# BB#199:                               # %if.else.i.615.2
	movzwl	-2(%rdx), %r14d
	movq	$-16, %rsi
	cmpl	%eax, %r14d
	jbe	.LBB6_200
.LBB6_201:                              # %if.end.50.i.630.2
	leaq	(%rdx,%rsi,2), %rbx
	movzwl	(%rdx,%rsi,2), %ecx
	movl	$8, %esi
	cmpl	%eax, %ecx
	jb	.LBB6_203
# BB#202:                               # %if.else.i.615.3
	movzwl	-2(%rbx), %r14d
	movq	$-8, %rsi
	cmpl	%eax, %r14d
	jbe	.LBB6_196
.LBB6_203:                              # %if.end.50.i.630.3
	leaq	(%rbx,%rsi,2), %rdx
	movzwl	(%rbx,%rsi,2), %ecx
	movl	$4, %esi
	cmpl	%eax, %ecx
	jb	.LBB6_206
# BB#204:                               # %if.else.i.615.4
	movzwl	-2(%rdx), %r14d
	movq	$-4, %rsi
	cmpl	%eax, %r14d
	jbe	.LBB6_205
.LBB6_206:                              # %if.end.50.i.630.4
	leaq	(%rdx,%rsi,2), %rbx
	movzwl	(%rdx,%rsi,2), %ecx
	movl	$2, %esi
	cmpl	%eax, %ecx
	jb	.LBB6_208
# BB#207:                               # %if.else.i.615.5
	movzwl	-2(%rbx), %r14d
	movq	$-2, %rsi
	cmpl	%eax, %r14d
	jbe	.LBB6_196
.LBB6_208:                              # %if.end.50.i.630.5
	leaq	(%rbx,%rsi,2), %rdx
	movzwl	(%rbx,%rsi,2), %ecx
	movl	$1, %esi
	cmpl	%eax, %ecx
	jb	.LBB6_211
# BB#209:                               # %if.else.i.615.6
	movzwl	-2(%rdx), %r14d
	movq	$-1, %rsi
	cmpl	%eax, %r14d
	jbe	.LBB6_210
.LBB6_211:                              # %if.end.50.i.630.6
	leaq	(%rdx,%rsi,2), %rbp
	movl	%eax, %r15d
	jmp	.LBB6_57
.LBB6_81:                               # %if.else.235
	cmpl	$15, %r14d
	ja	.LBB6_126
.LBB6_82:                               # %if.then.i.333
	movq	18552(%rdi), %r11
	testq	%r11, %r11
	je	.LBB6_92
# BB#83:                                # %if.then.5.i.344
	leal	-1(%r14), %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	leaq	(%r11,%rax,2), %rbx
	cmpl	$2, %r14d
	jl	.LBB6_90
# BB#84:                                # %if.then.5.i.344
	leal	-2(%r14), %ecx
	cmpl	$63, %ecx
	je	.LBB6_90
# BB#85:                                # %while.body.i.348.preheader
	movl	$1, %eax
	shlq	%cl, %rax
	movzwl	%r12w, %edx
	.align	16, 0x90
.LBB6_86:                               # %while.body.i.348
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %esi
	subl	%edx, %esi
	movq	%rax, %rbp
	jb	.LBB6_89
# BB#87:                                # %if.else.i.351
                                        #   in Loop: Header=BB6_86 Depth=1
	movzwl	-2(%rbx), %ebp
	cmpl	%edx, %ebp
	jbe	.LBB6_213
# BB#88:                                # %if.then.34.i.353
                                        #   in Loop: Header=BB6_86 Depth=1
	movq	%rax, %rbp
	negq	%rbp
.LBB6_89:                               # %if.end.50.i.366
                                        #   in Loop: Header=BB6_86 Depth=1
	leaq	(%rbx,%rbp,2), %rbx
	sarq	%rax
	testq	%rax, %rax
	jg	.LBB6_86
.LBB6_90:                               # %while.end.loopexit.i.369
	movzwl	%r12w, %edx
	jmp	.LBB6_91
.LBB6_92:                               # %if.else.69.i.388
	movl	$16, %ecx
	subl	%r14d, %ecx
	movzwl	%r12w, %r12d
	shrl	%cl, %r12d
	jmp	.LBB6_93
.LBB6_58:                               # %if.else.69.i.652
	movzwl	%r12w, %eax
	shrq	$8, %rax
	jmp	.LBB6_59
.LBB6_128:
	leaq	-2(%rax), %rbx
	movq	%rax, %rbp
	jmp	.LBB6_10
.LBB6_196:
	leaq	-2(%rbx), %rbp
	movq	%rbx, %rdx
	jmp	.LBB6_56
.LBB6_212:                              # %if.else.36.i.687
	leaq	-2(%rdi), %rbp
	movl	%ebx, %ecx
	subl	%esi, %ecx
	cmpl	%edx, %ecx
	cmovlq	%rbp, %rdi
.LBB6_25:                               # %while.end.i.709
	movzwl	-2(%rdi), %ecx
	movzwl	(%rdi), %edx
	subl	%ebx, %edx
	subl	%ecx, %ebx
	cmpl	%edx, %ebx
	leaq	-2(%rdi), %r13
	cmovgel	%edi, %r13d
	subl	%eax, %r13d
	shrl	%r13d
	jmp	.LBB6_15
.LBB6_213:                              # %if.else.36.i.361
	leaq	-2(%rbx), %rax
	movl	%edx, %ecx
	subl	%ebp, %ecx
	cmpl	%esi, %ecx
	cmovlq	%rax, %rbx
.LBB6_91:                               # %while.end.i.383
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %ecx
	subl	%edx, %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	leaq	-2(%rbx), %r12
	cmovgel	%ebx, %r12d
	subl	%r11d, %r12d
	shrl	%r12d
.LBB6_93:                               # %if.then.i.271
	movq	18560(%rdi), %r11
	testq	%r11, %r11
	je	.LBB6_103
# BB#94:                                # %if.then.5.i.282
	leal	-1(%r14), %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	leaq	(%r11,%rax,2), %rbx
	cmpl	$2, %r14d
	jl	.LBB6_101
# BB#95:                                # %if.then.5.i.282
	leal	-2(%r14), %ecx
	cmpl	$63, %ecx
	je	.LBB6_101
# BB#96:                                # %while.body.i.286.preheader
	movl	$1, %eax
	shlq	%cl, %rax
	movzwl	%r9w, %ecx
	.align	16, 0x90
.LBB6_97:                               # %while.body.i.286
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %esi
	subl	%ecx, %esi
	movq	%rax, %rbp
	jb	.LBB6_100
# BB#98:                                # %if.else.i.289
                                        #   in Loop: Header=BB6_97 Depth=1
	movzwl	-2(%rbx), %ebp
	cmpl	%ecx, %ebp
	jbe	.LBB6_214
# BB#99:                                # %if.then.34.i.291
                                        #   in Loop: Header=BB6_97 Depth=1
	movq	%rax, %rbp
	negq	%rbp
.LBB6_100:                              # %if.end.50.i.304
                                        #   in Loop: Header=BB6_97 Depth=1
	leaq	(%rbx,%rbp,2), %rbx
	sarq	%rax
	testq	%rax, %rax
	jg	.LBB6_97
.LBB6_101:                              # %while.end.loopexit.i.307
	movzwl	%r9w, %ecx
	jmp	.LBB6_102
.LBB6_103:                              # %if.else.69.i.326
	movl	$16, %ecx
	subl	%r14d, %ecx
	movzwl	%r9w, %r9d
	shrl	%cl, %r9d
	jmp	.LBB6_104
.LBB6_214:                              # %if.else.36.i.299
	leaq	-2(%rbx), %rax
	movl	%ecx, %edx
	subl	%ebp, %edx
	cmpl	%esi, %edx
	cmovlq	%rax, %rbx
.LBB6_102:                              # %while.end.i.321
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %edx
	subl	%ecx, %edx
	subl	%eax, %ecx
	cmpl	%edx, %ecx
	leaq	-2(%rbx), %r9
	cmovgel	%ebx, %r9d
	subl	%r11d, %r9d
	shrl	%r9d
.LBB6_104:                              # %if.then.i.209
	movq	18568(%rdi), %r11
	testq	%r11, %r11
	je	.LBB6_114
# BB#105:                               # %if.then.5.i.220
	leal	-1(%r14), %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	leaq	(%r11,%rax,2), %rbx
	cmpl	$2, %r14d
	jl	.LBB6_112
# BB#106:                               # %if.then.5.i.220
	leal	-2(%r14), %ecx
	cmpl	$63, %ecx
	je	.LBB6_112
# BB#107:                               # %while.body.i.224.preheader
	movl	$1, %eax
	shlq	%cl, %rax
	movzwl	%r10w, %ecx
	.align	16, 0x90
.LBB6_108:                              # %while.body.i.224
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %esi
	subl	%ecx, %esi
	movq	%rax, %rbp
	jb	.LBB6_111
# BB#109:                               # %if.else.i.227
                                        #   in Loop: Header=BB6_108 Depth=1
	movzwl	-2(%rbx), %ebp
	cmpl	%ecx, %ebp
	jbe	.LBB6_215
# BB#110:                               # %if.then.34.i.229
                                        #   in Loop: Header=BB6_108 Depth=1
	movq	%rax, %rbp
	negq	%rbp
.LBB6_111:                              # %if.end.50.i.242
                                        #   in Loop: Header=BB6_108 Depth=1
	leaq	(%rbx,%rbp,2), %rbx
	sarq	%rax
	testq	%rax, %rax
	jg	.LBB6_108
.LBB6_112:                              # %while.end.loopexit.i.245
	movzwl	%r10w, %ecx
	jmp	.LBB6_113
.LBB6_114:                              # %if.else.69.i.264
	movl	$16, %ecx
	subl	%r14d, %ecx
	movzwl	%r10w, %r10d
	shrl	%cl, %r10d
	jmp	.LBB6_115
.LBB6_215:                              # %if.else.36.i.237
	leaq	-2(%rbx), %rax
	movl	%ecx, %edx
	subl	%ebp, %edx
	cmpl	%esi, %edx
	cmovlq	%rax, %rbx
.LBB6_113:                              # %while.end.i.259
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %edx
	subl	%ecx, %edx
	subl	%eax, %ecx
	cmpl	%edx, %ecx
	leaq	-2(%rbx), %r10
	cmovgel	%ebx, %r10d
	subl	%r11d, %r10d
	shrl	%r10d
.LBB6_115:                              # %if.then.i.147
	movq	18576(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB6_125
# BB#116:                               # %if.then.5.i.158
	leal	-1(%r14), %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	leaq	(%rdi,%rax,2), %rbp
	cmpl	$2, %r14d
	jl	.LBB6_123
# BB#117:                               # %if.then.5.i.158
	addl	$-2, %r14d
	cmpl	$63, %r14d
	je	.LBB6_123
# BB#118:                               # %while.body.i.162.preheader
	movl	$1, %eax
	movb	%r14b, %cl
	shlq	%cl, %rax
	movzwl	%r13w, %ebx
	.align	16, 0x90
.LBB6_119:                              # %while.body.i.162
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp), %edx
	subl	%ebx, %edx
	movq	%rax, %rsi
	jb	.LBB6_122
# BB#120:                               # %if.else.i.165
                                        #   in Loop: Header=BB6_119 Depth=1
	movzwl	-2(%rbp), %esi
	cmpl	%ebx, %esi
	jbe	.LBB6_216
# BB#121:                               # %if.then.34.i.167
                                        #   in Loop: Header=BB6_119 Depth=1
	movq	%rax, %rsi
	negq	%rsi
.LBB6_122:                              # %if.end.50.i.180
                                        #   in Loop: Header=BB6_119 Depth=1
	leaq	(%rbp,%rsi,2), %rbp
	sarq	%rax
	testq	%rax, %rax
	jg	.LBB6_119
.LBB6_123:                              # %while.end.loopexit.i.183
	movzwl	%r13w, %ebx
	jmp	.LBB6_124
.LBB6_125:                              # %if.else.69.i.202
	movl	$16, %ecx
	subl	%r14d, %ecx
	movzwl	%r13w, %r13d
	shrl	%cl, %r13d
	jmp	.LBB6_126
.LBB6_216:                              # %if.else.36.i.175
	leaq	-2(%rbp), %rax
	movl	%ebx, %ecx
	subl	%esi, %ecx
	cmpl	%edx, %ecx
	cmovlq	%rax, %rbp
.LBB6_124:                              # %while.end.i.197
	movzwl	-2(%rbp), %eax
	movzwl	(%rbp), %ecx
	subl	%ebx, %ecx
	subl	%eax, %ebx
	cmpl	%ecx, %ebx
	leaq	-2(%rbp), %r13
	cmovgel	%ebp, %r13d
	subl	%edi, %r13d
	shrl	%r13d
	jmp	.LBB6_126
.LBB6_9:
	leaq	254(%r9), %rbx
	jmp	.LBB6_10
.LBB6_55:
	leaq	254(%r11), %rbp
	jmp	.LBB6_56
.LBB6_132:
	leaq	-2(%rbp), %rbx
	jmp	.LBB6_10
.LBB6_200:
	leaq	-2(%rdx), %rbp
	jmp	.LBB6_56
.LBB6_137:
	leaq	-2(%rbp), %rbx
	jmp	.LBB6_10
.LBB6_205:
	leaq	-2(%rdx), %rbp
	jmp	.LBB6_56
.LBB6_142:
	leaq	-2(%rbp), %rbx
.LBB6_10:                               # %if.else.36.i
	movzwl	%dx, %eax
	movzwl	%r10w, %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	subl	%ecx, %eax
	cmpl	%eax, %esi
	cmovgeq	%rbp, %rbx
.LBB6_11:                               # %while.end.i
	leaq	-2(%rbx), %rax
	movzwl	-2(%rbx), %edx
	movzwl	(%rbx), %esi
	subl	%ecx, %esi
	subl	%edx, %ecx
	cmpl	%esi, %ecx
	cmovgeq	%rbx, %rax
	subq	%r9, %rax
	shrq	%rax
.LBB6_13:                               # %stc_truncate.exit
	movzwl	%ax, %eax
	movq	18656(%rdi), %rcx
	movzbl	(%rcx,%rax), %r13d
.LBB6_15:
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorl	%r12d, %r12d
	jmp	.LBB6_126
.LBB6_210:
	leaq	-2(%rdx), %rbp
.LBB6_56:                               # %if.else.36.i.625
	movzwl	%cx, %eax
	movzwl	%r14w, %ecx
	movl	%r15d, %esi
	subl	%ecx, %esi
	subl	%r15d, %eax
	cmpl	%eax, %esi
	cmovgeq	%rdx, %rbp
.LBB6_57:                               # %while.end.i.647
	leaq	-2(%rbp), %rax
	movzwl	-2(%rbp), %ecx
	movzwl	(%rbp), %edx
	subl	%r15d, %edx
	subl	%ecx, %r15d
	cmpl	%edx, %r15d
	cmovgeq	%rbp, %rax
	subq	%r11, %rax
	shrq	%rax
.LBB6_59:                               # %if.then.i.531
	movzwl	%ax, %eax
	movq	18560(%rdi), %r11
	movq	18632(%rdi), %rcx
	movzbl	(%rcx,%rax), %r12d
	testq	%r11, %r11
	je	.LBB6_65
# BB#60:                                # %while.body.i.546
	leaq	256(%r11), %rbx
	movzwl	256(%r11), %ecx
	movzwl	%r9w, %r15d
	movl	$64, %edx
	cmpl	%r15d, %ecx
	jb	.LBB6_180
# BB#61:                                # %if.else.i.549
	movzwl	254(%r11), %r14d
	movq	$-64, %rdx
	cmpl	%r15d, %r14d
	jbe	.LBB6_62
.LBB6_180:                              # %if.end.50.i.564
	leaq	(%rbx,%rdx,2), %rax
	movzwl	(%rbx,%rdx,2), %ecx
	movzwl	%r9w, %edx
	movl	$32, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_181
# BB#178:                               # %if.else.i.549.1
	movzwl	-2(%rax), %r14d
	movq	$-32, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_179
.LBB6_181:                              # %if.end.50.i.564.1
	leaq	(%rax,%rsi,2), %rbx
	movzwl	(%rax,%rsi,2), %ecx
	movl	$16, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_184
# BB#182:                               # %if.else.i.549.2
	movzwl	-2(%rbx), %r14d
	movq	$-16, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_183
.LBB6_184:                              # %if.end.50.i.564.2
	leaq	(%rbx,%rsi,2), %rax
	movzwl	(%rbx,%rsi,2), %ecx
	movl	$8, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_186
# BB#185:                               # %if.else.i.549.3
	movzwl	-2(%rax), %r14d
	movq	$-8, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_179
.LBB6_186:                              # %if.end.50.i.564.3
	leaq	(%rax,%rsi,2), %rbx
	movzwl	(%rax,%rsi,2), %ecx
	movl	$4, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_189
# BB#187:                               # %if.else.i.549.4
	movzwl	-2(%rbx), %r14d
	movq	$-4, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_188
.LBB6_189:                              # %if.end.50.i.564.4
	leaq	(%rbx,%rsi,2), %rax
	movzwl	(%rbx,%rsi,2), %ecx
	movl	$2, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_191
# BB#190:                               # %if.else.i.549.5
	movzwl	-2(%rax), %r14d
	movq	$-2, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_179
.LBB6_191:                              # %if.end.50.i.564.5
	leaq	(%rax,%rsi,2), %rbx
	movzwl	(%rax,%rsi,2), %ecx
	movl	$1, %eax
	cmpl	%edx, %ecx
	jb	.LBB6_194
# BB#192:                               # %if.else.i.549.6
	movzwl	-2(%rbx), %r14d
	movq	$-1, %rax
	cmpl	%edx, %r14d
	jbe	.LBB6_193
.LBB6_194:                              # %if.end.50.i.564.6
	leaq	(%rbx,%rax,2), %rbp
	movl	%edx, %r15d
	jmp	.LBB6_64
.LBB6_65:                               # %if.else.69.i.586
	movzwl	%r9w, %eax
	shrq	$8, %rax
	jmp	.LBB6_66
.LBB6_179:
	leaq	-2(%rax), %rbp
	movq	%rax, %rbx
	jmp	.LBB6_63
.LBB6_62:
	leaq	254(%r11), %rbp
	jmp	.LBB6_63
.LBB6_183:
	leaq	-2(%rbx), %rbp
	jmp	.LBB6_63
.LBB6_188:
	leaq	-2(%rbx), %rbp
	jmp	.LBB6_63
.LBB6_193:
	leaq	-2(%rbx), %rbp
.LBB6_63:                               # %if.else.36.i.559
	movzwl	%cx, %eax
	movzwl	%r14w, %ecx
	movl	%r15d, %edx
	subl	%ecx, %edx
	subl	%r15d, %eax
	cmpl	%eax, %edx
	cmovgeq	%rbx, %rbp
.LBB6_64:                               # %while.end.i.581
	leaq	-2(%rbp), %rax
	movzwl	-2(%rbp), %ecx
	movzwl	(%rbp), %edx
	subl	%r15d, %edx
	subl	%ecx, %r15d
	cmpl	%edx, %r15d
	cmovgeq	%rbp, %rax
	subq	%r11, %rax
	shrq	%rax
.LBB6_66:                               # %if.then.i.465
	movzwl	%ax, %eax
	movq	18568(%rdi), %r11
	movq	18640(%rdi), %rcx
	movzbl	(%rcx,%rax), %r9d
	testq	%r11, %r11
	je	.LBB6_72
# BB#67:                                # %while.body.i.480
	leaq	256(%r11), %rbx
	movzwl	256(%r11), %ecx
	movzwl	%r10w, %r15d
	movl	$64, %edx
	cmpl	%r15d, %ecx
	jb	.LBB6_163
# BB#68:                                # %if.else.i.483
	movzwl	254(%r11), %r14d
	movq	$-64, %rdx
	cmpl	%r15d, %r14d
	jbe	.LBB6_69
.LBB6_163:                              # %if.end.50.i.498
	leaq	(%rbx,%rdx,2), %rax
	movzwl	(%rbx,%rdx,2), %ecx
	movzwl	%r10w, %edx
	movl	$32, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_164
# BB#161:                               # %if.else.i.483.1
	movzwl	-2(%rax), %r14d
	movq	$-32, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_162
.LBB6_164:                              # %if.end.50.i.498.1
	leaq	(%rax,%rsi,2), %rbx
	movzwl	(%rax,%rsi,2), %ecx
	movl	$16, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_167
# BB#165:                               # %if.else.i.483.2
	movzwl	-2(%rbx), %r14d
	movq	$-16, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_166
.LBB6_167:                              # %if.end.50.i.498.2
	leaq	(%rbx,%rsi,2), %rax
	movzwl	(%rbx,%rsi,2), %ecx
	movl	$8, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_169
# BB#168:                               # %if.else.i.483.3
	movzwl	-2(%rax), %r14d
	movq	$-8, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_162
.LBB6_169:                              # %if.end.50.i.498.3
	leaq	(%rax,%rsi,2), %rbx
	movzwl	(%rax,%rsi,2), %ecx
	movl	$4, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_172
# BB#170:                               # %if.else.i.483.4
	movzwl	-2(%rbx), %r14d
	movq	$-4, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_171
.LBB6_172:                              # %if.end.50.i.498.4
	leaq	(%rbx,%rsi,2), %rax
	movzwl	(%rbx,%rsi,2), %ecx
	movl	$2, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_174
# BB#173:                               # %if.else.i.483.5
	movzwl	-2(%rax), %r14d
	movq	$-2, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_162
.LBB6_174:                              # %if.end.50.i.498.5
	leaq	(%rax,%rsi,2), %rbx
	movzwl	(%rax,%rsi,2), %ecx
	movl	$1, %eax
	cmpl	%edx, %ecx
	jb	.LBB6_177
# BB#175:                               # %if.else.i.483.6
	movzwl	-2(%rbx), %r14d
	movq	$-1, %rax
	cmpl	%edx, %r14d
	jbe	.LBB6_176
.LBB6_177:                              # %if.end.50.i.498.6
	leaq	(%rbx,%rax,2), %rbp
	movl	%edx, %r15d
	jmp	.LBB6_71
.LBB6_72:                               # %if.else.69.i.520
	movzwl	%r10w, %eax
	shrq	$8, %rax
	jmp	.LBB6_73
.LBB6_162:
	leaq	-2(%rax), %rbp
	movq	%rax, %rbx
	jmp	.LBB6_70
.LBB6_69:
	leaq	254(%r11), %rbp
	jmp	.LBB6_70
.LBB6_166:
	leaq	-2(%rbx), %rbp
	jmp	.LBB6_70
.LBB6_171:
	leaq	-2(%rbx), %rbp
	jmp	.LBB6_70
.LBB6_176:
	leaq	-2(%rbx), %rbp
.LBB6_70:                               # %if.else.36.i.493
	movzwl	%cx, %eax
	movzwl	%r14w, %ecx
	movl	%r15d, %edx
	subl	%ecx, %edx
	subl	%r15d, %eax
	cmpl	%eax, %edx
	cmovgeq	%rbx, %rbp
.LBB6_71:                               # %while.end.i.515
	leaq	-2(%rbp), %rax
	movzwl	-2(%rbp), %ecx
	movzwl	(%rbp), %edx
	subl	%r15d, %edx
	subl	%ecx, %r15d
	cmpl	%edx, %r15d
	cmovgeq	%rbp, %rax
	subq	%r11, %rax
	shrq	%rax
.LBB6_73:                               # %if.then.i.399
	movzwl	%ax, %eax
	movq	18576(%rdi), %r11
	movq	18648(%rdi), %rcx
	movzbl	(%rcx,%rax), %r10d
	testq	%r11, %r11
	je	.LBB6_79
# BB#74:                                # %while.body.i.414
	leaq	256(%r11), %rbx
	movzwl	256(%r11), %ecx
	movzwl	%r13w, %edx
	movl	$64, %esi
	cmpl	%edx, %ecx
	jb	.LBB6_146
# BB#75:                                # %if.else.i.417
	movzwl	254(%r11), %r14d
	movq	$-64, %rsi
	cmpl	%edx, %r14d
	jbe	.LBB6_76
.LBB6_146:                              # %if.end.50.i.432
	leaq	(%rbx,%rsi,2), %rax
	movzwl	(%rbx,%rsi,2), %ecx
	movzwl	%r13w, %esi
	movl	$32, %ebp
	cmpl	%esi, %ecx
	jb	.LBB6_147
# BB#144:                               # %if.else.i.417.1
	movzwl	-2(%rax), %r14d
	movq	$-32, %rbp
	cmpl	%esi, %r14d
	jbe	.LBB6_145
.LBB6_147:                              # %if.end.50.i.432.1
	leaq	(%rax,%rbp,2), %rbx
	movzwl	(%rax,%rbp,2), %ecx
	movl	$16, %ebp
	cmpl	%esi, %ecx
	jb	.LBB6_150
# BB#148:                               # %if.else.i.417.2
	movzwl	-2(%rbx), %r14d
	movq	$-16, %rbp
	cmpl	%esi, %r14d
	jbe	.LBB6_149
.LBB6_150:                              # %if.end.50.i.432.2
	leaq	(%rbx,%rbp,2), %rax
	movzwl	(%rbx,%rbp,2), %ecx
	movl	$8, %ebp
	cmpl	%esi, %ecx
	jb	.LBB6_152
# BB#151:                               # %if.else.i.417.3
	movzwl	-2(%rax), %r14d
	movq	$-8, %rbp
	cmpl	%esi, %r14d
	jbe	.LBB6_145
.LBB6_152:                              # %if.end.50.i.432.3
	leaq	(%rax,%rbp,2), %rbx
	movzwl	(%rax,%rbp,2), %ecx
	movl	$4, %ebp
	cmpl	%esi, %ecx
	jb	.LBB6_155
# BB#153:                               # %if.else.i.417.4
	movzwl	-2(%rbx), %r14d
	movq	$-4, %rbp
	cmpl	%esi, %r14d
	jbe	.LBB6_154
.LBB6_155:                              # %if.end.50.i.432.4
	leaq	(%rbx,%rbp,2), %rax
	movzwl	(%rbx,%rbp,2), %ecx
	movl	$2, %ebp
	cmpl	%esi, %ecx
	jb	.LBB6_157
# BB#156:                               # %if.else.i.417.5
	movzwl	-2(%rax), %r14d
	movq	$-2, %rbp
	cmpl	%esi, %r14d
	jbe	.LBB6_145
.LBB6_157:                              # %if.end.50.i.432.5
	leaq	(%rax,%rbp,2), %rbx
	movzwl	(%rax,%rbp,2), %ecx
	movl	$1, %eax
	cmpl	%esi, %ecx
	jb	.LBB6_160
# BB#158:                               # %if.else.i.417.6
	movzwl	-2(%rbx), %r14d
	movq	$-1, %rax
	cmpl	%esi, %r14d
	jbe	.LBB6_159
.LBB6_160:                              # %if.end.50.i.432.6
	leaq	(%rbx,%rax,2), %rbp
	movl	%esi, %edx
	jmp	.LBB6_78
.LBB6_79:                               # %if.else.69.i.454
	movzwl	%r13w, %eax
	shrq	$8, %rax
	jmp	.LBB6_80
.LBB6_145:
	leaq	-2(%rax), %rbp
	movq	%rax, %rbx
	jmp	.LBB6_77
.LBB6_76:
	leaq	254(%r11), %rbp
	jmp	.LBB6_77
.LBB6_149:
	leaq	-2(%rbx), %rbp
	jmp	.LBB6_77
.LBB6_154:
	leaq	-2(%rbx), %rbp
	jmp	.LBB6_77
.LBB6_159:
	leaq	-2(%rbx), %rbp
.LBB6_77:                               # %if.else.36.i.427
	movzwl	%cx, %eax
	movzwl	%r14w, %ecx
	movl	%edx, %esi
	subl	%ecx, %esi
	subl	%edx, %eax
	cmpl	%eax, %esi
	cmovgeq	%rbx, %rbp
.LBB6_78:                               # %while.end.i.449
	leaq	-2(%rbp), %rax
	movzwl	-2(%rbp), %ecx
	movzwl	(%rbp), %esi
	subl	%edx, %esi
	subl	%ecx, %edx
	cmpl	%esi, %edx
	cmovgeq	%rbp, %rax
	subq	%r11, %rax
	shrq	%rax
.LBB6_80:                               # %stc_truncate.exit456
	movzwl	%ax, %eax
	movq	18656(%rdi), %rcx
	movzbl	(%rcx,%rax), %r13d
.LBB6_126:                              # %if.end.241
	movzwl	%r12w, %eax
	movb	%r8b, %cl
	shlq	%cl, %rax
	movzwl	%r9w, %edx
	orq	%rax, %rdx
	movb	%r8b, %cl
	shlq	%cl, %rdx
	movzwl	%r10w, %eax
	orq	%rdx, %rax
	movb	%r8b, %cl
	shlq	%cl, %rax
	movzwl	%r13w, %ecx
	orq	%rax, %rcx
	cmpq	$-1, %rcx
	sete	%al
	movzbl	%al, %eax
	xorq	%rcx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	stc_map_cmyk_color, .Lfunc_end6-stc_map_cmyk_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4660134898793709568     # double 3600
.LCPI7_1:
	.quad	4634766966517661696     # double 72
.LCPI7_2:
	.quad	-4588605070337114112    # double -72
	.text
	.align	16, 0x90
	.type	stc_print_setup,@function
stc_print_setup:                        # @stc_print_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp74:
	.cfi_def_cfa_offset 32
.Ltmp75:
	.cfi_offset %rbx, -24
.Ltmp76:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI7_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 18772(%rbx)
	movss	884(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, 18784(%rbx)
	movq	18472(%rbx), %rcx
	testw	$384, %cx               # imm = 0x180
	movl	$40, %edx
	cmovnel	%eax, %edx
	movl	%edx, 18780(%rbx)
	movl	$0, 18776(%rbx)
	testl	$65536, %ecx            # imm = 0x10000
	jne	.LBB7_4
# BB#1:                                 # %if.then
	cmpl	%eax, %edx
	jne	.LBB7_2
# BB#3:                                 # %if.else
	movl	$1, 18788(%rbx)
	jmp	.LBB7_4
.LBB7_2:                                # %if.then.23
	movl	$15, 18788(%rbx)
.LBB7_4:                                # %if.end.61
	testl	$262144, %ecx           # imm = 0x40000
	jne	.LBB7_6
# BB#5:                                 # %if.then.67
	xorps	%xmm2, %xmm2
	cvtsi2sdl	832(%rbx), %xmm2
	movss	908(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	916(%rbx), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movsd	.LCPI7_1(%rip), %xmm5   # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm3
	cvtss2sd	%xmm4, %xmm4
	divsd	%xmm5, %xmm4
	addsd	%xmm3, %xmm4
	mulsd	%xmm1, %xmm4
	subsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, 18736(%rbx)
.LBB7_6:                                # %if.end.81
	testl	$131072, %ecx           # imm = 0x20000
	jne	.LBB7_8
# BB#7:                                 # %if.then.87
	movl	836(%rbx), %eax
	movl	%eax, 18740(%rbx)
.LBB7_8:                                # %if.end.89
	testl	$524288, %ecx           # imm = 0x80000
	jne	.LBB7_10
# BB#9:                                 # %if.then.95
	movss	920(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI7_1(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 18744(%rbx)
.LBB7_10:                               # %if.end.106
	testl	$1048576, %ecx          # imm = 0x100000
	jne	.LBB7_12
# BB#11:                                # %if.then.112
	xorps	%xmm1, %xmm1
	cvtsi2sdl	836(%rbx), %xmm1
	movss	912(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	.LCPI7_2(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, 18748(%rbx)
.LBB7_12:                               # %if.end.126
	testl	$2097152, %ecx          # imm = 0x200000
	jne	.LBB7_20
# BB#13:                                # %if.then.132
	cmpl	$39, 18712(%rbx)
	jne	.LBB7_15
# BB#14:
	movq	18704(%rbx), %r14
	jmp	.LBB7_19
.LBB7_15:                               # %if.then.138
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$39, %esi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB7_28
# BB#16:                                # %if.then.143
	cmpl	$0, 18712(%rbx)
	je	.LBB7_18
# BB#17:                                # %if.then.149
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movq	18704(%rbx), %rsi
	movl	$.L.str.5, %edx
	callq	*24(%rdi)
.LBB7_18:                               # %if.end.158
	movq	%r14, 18704(%rbx)
	movq	$39, 18712(%rbx)
.LBB7_19:                               # %if.end.173
	movl	$.L.str.6, %esi
	movl	$39, %edx
	movq	%r14, %rdi
	callq	memcpy
	movb	18472(%rbx), %al
	shrb	$7, %al
	movb	%al, 13(%r14)
	movb	18772(%rbx), %al
	movb	%al, 19(%r14)
	movb	18740(%rbx), %al
	movb	%al, 25(%r14)
	movb	18741(%rbx), %al
	movb	%al, 26(%r14)
	movb	18744(%rbx), %al
	movb	%al, 32(%r14)
	movb	18745(%rbx), %al
	movb	%al, 33(%r14)
	movb	18748(%rbx), %al
	movb	%al, 34(%r14)
	movb	18749(%rbx), %al
	movb	%al, 35(%r14)
	movb	18472(%rbx), %al
	shrb	$6, %al
	andb	$1, %al
	movb	%al, 38(%r14)
	movq	18472(%rbx), %rcx
.LBB7_20:                               # %if.end.232
	xorl	%eax, %eax
	testl	$4194304, %ecx          # imm = 0x400000
	jne	.LBB7_28
# BB#21:                                # %if.then.238
	cmpl	$3, 18728(%rbx)
	jne	.LBB7_23
# BB#22:
	movq	18720(%rbx), %r14
	jmp	.LBB7_27
.LBB7_23:                               # %if.then.248
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movl	$.L.str.7, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB7_28
# BB#24:                                # %if.then.258
	cmpl	$0, 18728(%rbx)
	je	.LBB7_26
# BB#25:                                # %if.then.264
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movq	18720(%rbx), %rsi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
.LBB7_26:                               # %if.end.274
	movq	%r14, 18720(%rbx)
	movq	$3, 18728(%rbx)
.LBB7_27:                               # %if.end.290
	movl	$.L.str.8, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	memcpy
	xorl	%eax, %eax
.LBB7_28:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	stc_print_setup, .Lfunc_end7-stc_print_setup
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1199570688              # float 65535
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
.LCPI8_2:
	.quad	4679239875398991872     # double 65535
.LCPI8_3:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	stc_map_gray_color,@function
stc_map_gray_color:                     # @stc_map_gray_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbx, -16
	movzwl	2(%rsi), %ecx
	movzwl	4(%rsi), %eax
	movzwl	(%rsi), %ebx
	cmpl	%ecx, %ebx
	jne	.LBB8_3
# BB#1:                                 # %entry
	movzwl	%cx, %edx
	cmpl	%eax, %edx
	jne	.LBB8_3
# BB#2:                                 # %if.then
	xorq	$65535, %rbx            # imm = 0xFFFF
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	18496(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB8_7
# BB#4:                                 # %if.then.13
	cvtsi2ssl	%ebx, %xmm1
	mulss	(%rsi), %xmm1
	movss	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	4(%rsi), %xmm1
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	8(%rsi), %xmm1
	subss	%xmm1, %xmm0
	xorl	%ebx, %ebx
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB8_8
# BB#5:                                 # %if.else.29
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI8_1(%rip), %xmm0
	movl	$65535, %ebx            # imm = 0xFFFF
	ucomisd	.LCPI8_2(%rip), %xmm0
	ja	.LBB8_8
# BB#6:                                 # %if.else.34
	movsd	.LCPI8_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rbx
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %rbx
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.39
	leaq	(%rax,%rax), %rax
	leaq	(%rcx,%rbx), %rcx
	imulq	$-3, %rcx, %rcx
	movl	$524284, %edx           # imm = 0x7FFFC
	subq	%rax, %rdx
	addq	%rcx, %rdx
	shrq	$3, %rdx
	cmpq	$65535, %rdx            # imm = 0xFFFF
	movl	$65535, %ebx            # imm = 0xFFFF
	cmovbeq	%rdx, %rbx
.LBB8_8:                                # %if.end.54
	movl	18480(%rdi), %eax
	cmpl	$8, %eax
	jne	.LBB8_18
# BB#9:                                 # %land.lhs.true.58
	movq	18488(%rdi), %rcx
	movl	16(%rcx), %ecx
	andl	$24, %ecx
	cmpl	$8, %ecx
	jne	.LBB8_19
# BB#10:                                # %if.then.i
	movq	18552(%rdi), %r8
	testq	%r8, %r8
	je	.LBB8_16
# BB#11:                                # %while.body.i
	leaq	256(%r8), %r11
	movzwl	256(%r8), %r10d
	movzwl	%bx, %eax
	movl	$64, %ecx
	cmpl	%eax, %r10d
	jb	.LBB8_33
# BB#12:                                # %if.else.i
	movzwl	254(%r8), %r9d
	movq	$-64, %rcx
	cmpl	%eax, %r9d
	jbe	.LBB8_13
.LBB8_33:                               # %if.end.50.i
	leaq	(%r11,%rcx,2), %rsi
	movzwl	(%r11,%rcx,2), %r10d
	movl	$32, %ecx
	cmpl	%eax, %r10d
	jb	.LBB8_34
# BB#31:                                # %if.else.i.1
	movzwl	-2(%rsi), %r9d
	movq	$-32, %rcx
	cmpl	%eax, %r9d
	jbe	.LBB8_32
.LBB8_34:                               # %if.end.50.i.1
	leaq	(%rsi,%rcx,2), %r11
	movzwl	(%rsi,%rcx,2), %r10d
	movl	$16, %ecx
	cmpl	%eax, %r10d
	jb	.LBB8_37
# BB#35:                                # %if.else.i.2
	movzwl	-2(%r11), %r9d
	movq	$-16, %rcx
	cmpl	%eax, %r9d
	jbe	.LBB8_36
.LBB8_37:                               # %if.end.50.i.2
	leaq	(%r11,%rcx,2), %rsi
	movzwl	(%r11,%rcx,2), %r10d
	movl	$8, %ecx
	cmpl	%eax, %r10d
	jb	.LBB8_39
# BB#38:                                # %if.else.i.3
	movzwl	-2(%rsi), %r9d
	movq	$-8, %rcx
	cmpl	%eax, %r9d
	jbe	.LBB8_32
.LBB8_39:                               # %if.end.50.i.3
	leaq	(%rsi,%rcx,2), %r11
	movzwl	(%rsi,%rcx,2), %r10d
	movl	$4, %ecx
	cmpl	%eax, %r10d
	jb	.LBB8_42
# BB#40:                                # %if.else.i.4
	movzwl	-2(%r11), %r9d
	movq	$-4, %rcx
	cmpl	%eax, %r9d
	jbe	.LBB8_41
.LBB8_42:                               # %if.end.50.i.4
	leaq	(%r11,%rcx,2), %rsi
	movzwl	(%r11,%rcx,2), %r10d
	movl	$2, %ecx
	cmpl	%eax, %r10d
	jb	.LBB8_44
# BB#43:                                # %if.else.i.5
	movzwl	-2(%rsi), %r9d
	movq	$-2, %rcx
	cmpl	%eax, %r9d
	jbe	.LBB8_32
.LBB8_44:                               # %if.end.50.i.5
	leaq	(%rsi,%rcx,2), %r11
	movzwl	(%rsi,%rcx,2), %r10d
	movl	$1, %ecx
	cmpl	%eax, %r10d
	jb	.LBB8_47
# BB#45:                                # %if.else.i.6
	movzwl	-2(%r11), %r9d
	movq	$-1, %rcx
	cmpl	%eax, %r9d
	jbe	.LBB8_46
.LBB8_47:                               # %if.end.50.i.6
	leaq	(%r11,%rcx,2), %rax
	movzwl	%bx, %edx
	jmp	.LBB8_15
.LBB8_18:                               # %if.else.65
	cmpl	$15, %eax
	ja	.LBB8_30
.LBB8_19:                               # %if.then.i.43
	movq	18552(%rdi), %r8
	testq	%r8, %r8
	je	.LBB8_29
# BB#20:                                # %if.then.5.i.54
	leal	-1(%rax), %ecx
	movl	$1, %edx
	shlq	%cl, %rdx
	leaq	(%r8,%rdx,2), %rdi
	cmpl	$2, %eax
	jl	.LBB8_27
# BB#21:                                # %if.then.5.i.54
	addl	$-2, %eax
	cmpl	$63, %eax
	je	.LBB8_27
# BB#22:                                # %while.body.i.58.preheader
	movl	$1, %esi
	movb	%al, %cl
	shlq	%cl, %rsi
	movzwl	%bx, %eax
	.align	16, 0x90
.LBB8_23:                               # %while.body.i.58
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %ecx
	cmpl	%eax, %ecx
	movq	%rsi, %rdx
	jb	.LBB8_26
# BB#24:                                # %if.else.i.61
                                        #   in Loop: Header=BB8_23 Depth=1
	movzwl	-2(%rdi), %edx
	cmpl	%eax, %edx
	jbe	.LBB8_48
# BB#25:                                # %if.then.34.i.63
                                        #   in Loop: Header=BB8_23 Depth=1
	movq	%rsi, %rdx
	negq	%rdx
.LBB8_26:                               # %if.end.50.i.76
                                        #   in Loop: Header=BB8_23 Depth=1
	leaq	(%rdi,%rdx,2), %rdi
	sarq	%rsi
	testq	%rsi, %rsi
	jg	.LBB8_23
.LBB8_27:                               # %while.end.loopexit.i.79
	movzwl	%bx, %eax
	jmp	.LBB8_28
.LBB8_29:                               # %if.else.69.i.98
	movl	$16, %ecx
	subl	%eax, %ecx
	movzwl	%bx, %ebx
	shrl	%cl, %ebx
	jmp	.LBB8_30
.LBB8_16:                               # %if.else.69.i
	movzbl	%bh, %ecx  # NOREX
	jmp	.LBB8_17
.LBB8_32:
	leaq	-2(%rsi), %rax
	movq	%rsi, %r11
	jmp	.LBB8_14
.LBB8_48:                               # %if.else.36.i.71
	leaq	-2(%rdi), %rsi
	movzwl	%bx, %eax
	movl	%eax, %ebx
	subl	%edx, %ebx
	subl	%eax, %ecx
	cmpl	%ecx, %ebx
	cmovlq	%rsi, %rdi
.LBB8_28:                               # %while.end.i.93
	leaq	-2(%rdi), %rbx
	movzwl	-2(%rdi), %ecx
	movzwl	(%rdi), %edx
	subl	%eax, %edx
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovgeq	%rdi, %rbx
	subq	%r8, %rbx
	shrq	%rbx
	jmp	.LBB8_30
.LBB8_13:
	leaq	254(%r8), %rax
	jmp	.LBB8_14
.LBB8_36:
	leaq	-2(%r11), %rax
	jmp	.LBB8_14
.LBB8_41:
	leaq	-2(%r11), %rax
	jmp	.LBB8_14
.LBB8_46:
	leaq	-2(%r11), %rax
.LBB8_14:                               # %if.else.36.i
	movzwl	%bx, %edx
	movzwl	%r10w, %ecx
	movzwl	%r9w, %esi
	movl	%edx, %ebx
	subl	%esi, %ebx
	subl	%edx, %ecx
	cmpl	%ecx, %ebx
	cmovgeq	%r11, %rax
.LBB8_15:                               # %while.end.i
	leaq	-2(%rax), %rcx
	movzwl	-2(%rax), %esi
	movzwl	(%rax), %ebx
	subl	%edx, %ebx
	subl	%esi, %edx
	cmpl	%ebx, %edx
	cmovgeq	%rax, %rcx
	subq	%r8, %rcx
	shrq	%rcx
.LBB8_17:                               # %stc_truncate.exit
	movzwl	%cx, %eax
	movq	18632(%rdi), %rcx
	movzbl	(%rcx,%rax), %ebx
.LBB8_30:                               # %if.end.69
	movzwl	%bx, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	stc_map_gray_color, .Lfunc_end8-stc_map_gray_color
	.cfi_endproc

	.align	16, 0x90
	.type	stc_map_color_gray,@function
stc_map_color_gray:                     # @stc_map_color_gray
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movslq	18480(%rdi), %rcx
	movl	$1, %eax
	shlq	%cl, %rax
	decq	%rax
	andq	%rsi, %rax
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %rsi
	movq	18552(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB9_2
# BB#1:                                 # %if.then.i
	andq	%rax, %rsi
	movzwl	(%rdx,%rsi,2), %esi
	jmp	.LBB9_6
.LBB9_2:                                # %if.else.i
	cmpl	$15, %ecx
	ja	.LBB9_4
# BB#3:                                 # %if.then.14.i
	andq	%rsi, %rax
	movl	$16, %edi
	subl	%ecx, %edi
	movq	%rax, %r9
	movb	%dil, %cl
	shlq	%cl, %r9
	xorl	%edx, %edx
	divq	%rsi
	movl	$1, %edx
	movb	%dil, %cl
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %rsi
	imulq	%rax, %rsi
	addq	%r9, %rsi
	jmp	.LBB9_6
.LBB9_4:                                # %if.else.29.i
	andq	%rax, %rsi
	cmpl	$17, %ecx
	jb	.LBB9_6
# BB#5:                                 # %if.then.35.i
	addl	$-16, %ecx
	shrq	%cl, %rsi
.LBB9_6:                                # %stc_expand.exit
	notl	%esi
	movw	%si, (%r8)
	movw	%si, 2(%r8)
	movw	%si, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	stc_map_color_gray, .Lfunc_end9-stc_map_color_gray
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
.LCPI10_1:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	stc_map_rgb_color,@function
stc_map_rgb_color:                      # @stc_map_rgb_color
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
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 48
.Ltmp84:
	.cfi_offset %rbx, -48
.Ltmp85:
	.cfi_offset %r12, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movzwl	108(%rdi), %eax
	movl	$8, %r8d
	cmpl	$24, %eax
	je	.LBB10_2
# BB#1:                                 # %cond.false
	movl	18480(%rdi), %r8d
.LBB10_2:                               # %cond.end
	movzwl	(%rsi), %r15d
	movzwl	2(%rsi), %r10d
	movzwl	4(%rsi), %edx
	movq	18496(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_3
# BB#4:                                 # %land.lhs.true
	movzwl	%r10w, %esi
	movzwl	%r15w, %ebp
	cmpl	%esi, %ebp
	jne	.LBB10_6
# BB#5:                                 # %land.lhs.true
	movzwl	%dx, %eax
	cmpl	%eax, %esi
	movw	%r15w, %r11w
	movw	%r15w, %r10w
	je	.LBB10_18
.LBB10_6:                               # %if.then
	cvtsi2ssl	%ebp, %xmm2
	cvtsi2ssl	%esi, %xmm1
	movzwl	%dx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	(%rcx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	4(%rcx), %xmm5          # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm5
	addss	%xmm3, %xmm5
	movss	8(%rcx), %xmm4          # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm5, %xmm4
	xorps	%xmm3, %xmm3
	ucomiss	%xmm4, %xmm3
	jbe	.LBB10_8
# BB#7:
	xorl	%r15d, %r15d
	jmp	.LBB10_10
.LBB10_3:
	movw	%dx, %r11w
	jmp	.LBB10_18
.LBB10_8:                               # %if.else
	cvtss2sd	%xmm4, %xmm4
	addsd	.LCPI10_0(%rip), %xmm4
	movw	$-1, %r15w
	ucomisd	.LCPI10_1(%rip), %xmm4
	ja	.LBB10_10
# BB#9:                                 # %if.else.34
	cvttsd2si	%xmm4, %r15d
.LBB10_10:                              # %if.end.38
	movss	12(%rcx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	movss	16(%rcx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm5
	addss	%xmm4, %xmm5
	movss	20(%rcx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm5, %xmm4
	ucomiss	%xmm4, %xmm3
	jbe	.LBB10_12
# BB#11:
	xorl	%r10d, %r10d
	jmp	.LBB10_14
.LBB10_12:                              # %if.else.51
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm4, %xmm3
	addsd	.LCPI10_0(%rip), %xmm3
	movw	$-1, %r10w
	ucomisd	.LCPI10_1(%rip), %xmm3
	ja	.LBB10_14
# BB#13:                                # %if.else.57
	cvttsd2si	%xmm3, %r10d
.LBB10_14:                              # %if.end.62
	mulss	24(%rcx), %xmm2
	mulss	28(%rcx), %xmm1
	addss	%xmm2, %xmm1
	mulss	32(%rcx), %xmm0
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_16
# BB#15:
	xorl	%r11d, %r11d
	jmp	.LBB10_18
.LBB10_16:                              # %if.else.75
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI10_0(%rip), %xmm0
	movw	$-1, %r11w
	ucomisd	.LCPI10_1(%rip), %xmm0
	ja	.LBB10_18
# BB#17:                                # %if.else.81
	cvttsd2si	%xmm0, %r11d
.LBB10_18:                              # %if.end.87
	movl	18480(%rdi), %r12d
	cmpl	$8, %r12d
	jne	.LBB10_42
# BB#19:                                # %land.lhs.true.92
	movq	18488(%rdi), %rax
	movl	16(%rax), %eax
	andl	$24, %eax
	cmpl	$8, %eax
	jne	.LBB10_44
# BB#20:                                # %if.then.i
	movq	18552(%rdi), %r9
	testq	%r9, %r9
	je	.LBB10_26
# BB#21:                                # %while.body.i
	leaq	256(%r9), %rbx
	movzwl	256(%r9), %ecx
	movzwl	%r15w, %edx
	movl	$64, %ebp
	cmpl	%edx, %ecx
	jb	.LBB10_116
# BB#22:                                # %if.else.i
	movzwl	254(%r9), %r14d
	movq	$-64, %rbp
	cmpl	%edx, %r14d
	jbe	.LBB10_23
.LBB10_116:                             # %if.end.50.i
	leaq	(%rbx,%rbp,2), %rsi
	movzwl	(%rbx,%rbp,2), %ecx
	movzwl	%r15w, %eax
	movl	$32, %ebp
	cmpl	%eax, %ecx
	jb	.LBB10_117
# BB#114:                               # %if.else.i.1
	movzwl	-2(%rsi), %r14d
	movq	$-32, %rbp
	cmpl	%eax, %r14d
	jbe	.LBB10_115
.LBB10_117:                             # %if.end.50.i.1
	leaq	(%rsi,%rbp,2), %rbx
	movzwl	(%rsi,%rbp,2), %ecx
	movl	$16, %ebp
	cmpl	%eax, %ecx
	jb	.LBB10_120
# BB#118:                               # %if.else.i.2
	movzwl	-2(%rbx), %r14d
	movq	$-16, %rbp
	cmpl	%eax, %r14d
	jbe	.LBB10_119
.LBB10_120:                             # %if.end.50.i.2
	leaq	(%rbx,%rbp,2), %rsi
	movzwl	(%rbx,%rbp,2), %ecx
	movl	$8, %ebp
	cmpl	%eax, %ecx
	jb	.LBB10_122
# BB#121:                               # %if.else.i.3
	movzwl	-2(%rsi), %r14d
	movq	$-8, %rbp
	cmpl	%eax, %r14d
	jbe	.LBB10_115
.LBB10_122:                             # %if.end.50.i.3
	leaq	(%rsi,%rbp,2), %rbx
	movzwl	(%rsi,%rbp,2), %ecx
	movl	$4, %ebp
	cmpl	%eax, %ecx
	jb	.LBB10_125
# BB#123:                               # %if.else.i.4
	movzwl	-2(%rbx), %r14d
	movq	$-4, %rbp
	cmpl	%eax, %r14d
	jbe	.LBB10_124
.LBB10_125:                             # %if.end.50.i.4
	leaq	(%rbx,%rbp,2), %rsi
	movzwl	(%rbx,%rbp,2), %ecx
	movl	$2, %ebp
	cmpl	%eax, %ecx
	jb	.LBB10_127
# BB#126:                               # %if.else.i.5
	movzwl	-2(%rsi), %r14d
	movq	$-2, %rbp
	cmpl	%eax, %r14d
	jbe	.LBB10_115
.LBB10_127:                             # %if.end.50.i.5
	leaq	(%rsi,%rbp,2), %rbx
	movzwl	(%rsi,%rbp,2), %ecx
	movl	$1, %esi
	cmpl	%eax, %ecx
	jb	.LBB10_130
# BB#128:                               # %if.else.i.6
	movzwl	-2(%rbx), %r14d
	movq	$-1, %rsi
	cmpl	%eax, %r14d
	jbe	.LBB10_129
.LBB10_130:                             # %if.end.50.i.6
	leaq	(%rbx,%rsi,2), %rbp
	movl	%eax, %edx
	jmp	.LBB10_25
.LBB10_42:                              # %if.else.105
	cmpl	$16, %r12d
	jae	.LBB10_43
.LBB10_44:                              # %if.then.i.199
	movq	18552(%rdi), %r9
	testq	%r9, %r9
	je	.LBB10_54
# BB#45:                                # %if.then.5.i.210
	leal	-1(%r12), %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	leaq	(%r9,%rax,2), %rbp
	cmpl	$2, %r12d
	jl	.LBB10_52
# BB#46:                                # %if.then.5.i.210
	leal	-2(%r12), %ecx
	cmpl	$63, %ecx
	je	.LBB10_52
# BB#47:                                # %while.body.i.214.preheader
	movl	$1, %ebx
	shlq	%cl, %rbx
	movzwl	%r15w, %edx
	.align	16, 0x90
.LBB10_48:                              # %while.body.i.214
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp), %esi
	subl	%edx, %esi
	movq	%rbx, %rax
	jb	.LBB10_51
# BB#49:                                # %if.else.i.217
                                        #   in Loop: Header=BB10_48 Depth=1
	movzwl	-2(%rbp), %eax
	cmpl	%edx, %eax
	jbe	.LBB10_131
# BB#50:                                # %if.then.34.i.219
                                        #   in Loop: Header=BB10_48 Depth=1
	movq	%rbx, %rax
	negq	%rax
.LBB10_51:                              # %if.end.50.i.232
                                        #   in Loop: Header=BB10_48 Depth=1
	leaq	(%rbp,%rax,2), %rbp
	sarq	%rbx
	testq	%rbx, %rbx
	jg	.LBB10_48
.LBB10_52:                              # %while.end.loopexit.i.235
	movzwl	%r15w, %edx
	jmp	.LBB10_53
.LBB10_43:                              # %stc_truncate.exit194.thread
	movzwl	%r15w, %eax
	movb	%r8b, %cl
	shlq	%cl, %rax
	movzwl	%r10w, %esi
	orq	%rax, %rsi
	movb	%r8b, %cl
	shlq	%cl, %rsi
	jmp	.LBB10_78
.LBB10_54:                              # %if.else.69.i.254
	movl	$16, %ecx
	subl	%r12d, %ecx
	movzwl	%r15w, %eax
	shrl	%cl, %eax
	jmp	.LBB10_55
.LBB10_26:                              # %if.else.69.i
	movzwl	%r15w, %eax
	shrq	$8, %rax
	jmp	.LBB10_27
.LBB10_115:
	leaq	-2(%rsi), %rbp
	movq	%rsi, %rbx
	jmp	.LBB10_24
.LBB10_131:                             # %if.else.36.i.227
	leaq	-2(%rbp), %rbx
	movl	%edx, %ecx
	subl	%eax, %ecx
	cmpl	%esi, %ecx
	cmovlq	%rbx, %rbp
.LBB10_53:                              # %while.end.i.249
	leaq	-2(%rbp), %rax
	movzwl	-2(%rbp), %ecx
	movzwl	(%rbp), %esi
	subl	%edx, %esi
	subl	%ecx, %edx
	cmpl	%esi, %edx
	cmovgeq	%rbp, %rax
	subq	%r9, %rax
	shrq	%rax
.LBB10_55:                              # %if.then.i.137
	movzwl	%ax, %r14d
	movb	%r8b, %cl
	shlq	%cl, %r14
	movq	18560(%rdi), %r9
	testq	%r9, %r9
	je	.LBB10_64
# BB#56:                                # %if.then.5.i.148
	leal	-1(%r12), %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	leaq	(%r9,%rax,2), %rbp
	cmpl	$2, %r12d
	jl	.LBB10_63
# BB#57:                                # %if.then.5.i.148
	leal	-2(%r12), %ecx
	cmpl	$63, %ecx
	je	.LBB10_63
# BB#58:                                # %while.body.i.152.preheader
	movl	$1, %ebx
	shlq	%cl, %rbx
	movzwl	%r10w, %edx
	.align	16, 0x90
.LBB10_59:                              # %while.body.i.152
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp), %esi
	subl	%edx, %esi
	movq	%rbx, %rax
	jb	.LBB10_62
# BB#60:                                # %if.else.i.155
                                        #   in Loop: Header=BB10_59 Depth=1
	movzwl	-2(%rbp), %eax
	cmpl	%edx, %eax
	jbe	.LBB10_65
# BB#61:                                # %if.then.34.i.157
                                        #   in Loop: Header=BB10_59 Depth=1
	movq	%rbx, %rax
	negq	%rax
.LBB10_62:                              # %if.end.50.i.170
                                        #   in Loop: Header=BB10_59 Depth=1
	leaq	(%rbp,%rax,2), %rbp
	sarq	%rbx
	testq	%rbx, %rbx
	jg	.LBB10_59
.LBB10_63:                              # %while.end.loopexit.i.173
	movzwl	%r10w, %edx
	jmp	.LBB10_66
.LBB10_64:                              # %if.else.69.i.192
	movl	$16, %ecx
	subl	%r12d, %ecx
	movzwl	%r10w, %ebx
	shrl	%cl, %ebx
	jmp	.LBB10_67
.LBB10_65:                              # %if.else.36.i.165
	leaq	-2(%rbp), %rbx
	movl	%edx, %ecx
	subl	%eax, %ecx
	cmpl	%esi, %ecx
	cmovlq	%rbx, %rbp
.LBB10_66:                              # %stc_truncate.exit194
	leaq	-2(%rbp), %rbx
	movzwl	-2(%rbp), %eax
	movzwl	(%rbp), %ecx
	subl	%edx, %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	cmovgeq	%rbp, %rbx
	subq	%r9, %rbx
	shrq	%rbx
.LBB10_67:                              # %if.then.i.75
	movzwl	%bx, %esi
	orq	%r14, %rsi
	movb	%r8b, %cl
	shlq	%cl, %rsi
	movq	18568(%rdi), %r8
	testq	%r8, %r8
	je	.LBB10_77
# BB#68:                                # %if.then.5.i.86
	leal	-1(%r12), %ecx
	movl	$1, %edx
	shlq	%cl, %rdx
	leaq	(%r8,%rdx,2), %rdi
	cmpl	$2, %r12d
	jl	.LBB10_75
# BB#69:                                # %if.then.5.i.86
	addl	$-2, %r12d
	cmpl	$63, %r12d
	je	.LBB10_75
# BB#70:                                # %while.body.i.90.preheader
	movl	$1, %ebp
	movb	%r12b, %cl
	shlq	%cl, %rbp
	movzwl	%r11w, %eax
	.align	16, 0x90
.LBB10_71:                              # %while.body.i.90
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %edx
	subl	%eax, %edx
	movq	%rbp, %rbx
	jb	.LBB10_74
# BB#72:                                # %if.else.i.93
                                        #   in Loop: Header=BB10_71 Depth=1
	movzwl	-2(%rdi), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB10_132
# BB#73:                                # %if.then.34.i.95
                                        #   in Loop: Header=BB10_71 Depth=1
	movq	%rbp, %rbx
	negq	%rbx
.LBB10_74:                              # %if.end.50.i.108
                                        #   in Loop: Header=BB10_71 Depth=1
	leaq	(%rdi,%rbx,2), %rdi
	sarq	%rbp
	testq	%rbp, %rbp
	jg	.LBB10_71
.LBB10_75:                              # %while.end.loopexit.i.111
	movzwl	%r11w, %eax
	jmp	.LBB10_76
.LBB10_77:                              # %if.else.69.i.130
	movl	$16, %ecx
	subl	%r12d, %ecx
	movzwl	%r11w, %r11d
	shrl	%cl, %r11d
	jmp	.LBB10_78
.LBB10_132:                             # %if.else.36.i.103
	leaq	-2(%rdi), %rbp
	movl	%eax, %ecx
	subl	%ebx, %ecx
	cmpl	%edx, %ecx
	cmovlq	%rbp, %rdi
.LBB10_76:                              # %while.end.i.125
	movzwl	-2(%rdi), %ecx
	movzwl	(%rdi), %edx
	subl	%eax, %edx
	subl	%ecx, %eax
	cmpl	%edx, %eax
	leaq	-2(%rdi), %r11
	cmovgel	%edi, %r11d
	subl	%r8d, %r11d
	shrl	%r11d
.LBB10_78:                              # %stc_truncate.exit132
	movzwl	%r11w, %eax
	orq	%rsi, %rax
	jmp	.LBB10_79
.LBB10_23:
	leaq	254(%r9), %rbp
	jmp	.LBB10_24
.LBB10_119:
	leaq	-2(%rbx), %rbp
	jmp	.LBB10_24
.LBB10_124:
	leaq	-2(%rbx), %rbp
	jmp	.LBB10_24
.LBB10_129:
	leaq	-2(%rbx), %rbp
.LBB10_24:                              # %if.else.36.i
	movzwl	%cx, %eax
	movzwl	%r14w, %ecx
	movl	%edx, %esi
	subl	%ecx, %esi
	subl	%edx, %eax
	cmpl	%eax, %esi
	cmovgeq	%rbx, %rbp
.LBB10_25:                              # %while.end.i
	leaq	-2(%rbp), %rax
	movzwl	-2(%rbp), %ecx
	movzwl	(%rbp), %esi
	subl	%edx, %esi
	subl	%ecx, %edx
	cmpl	%esi, %edx
	cmovgeq	%rbp, %rax
	subq	%r9, %rax
	shrq	%rax
.LBB10_27:                              # %if.then.i.331
	movzwl	%ax, %eax
	movq	18560(%rdi), %r14
	movq	18632(%rdi), %rcx
	movzbl	(%rcx,%rax), %r9d
	movb	%r8b, %cl
	shlq	%cl, %r9
	testq	%r14, %r14
	je	.LBB10_33
# BB#28:                                # %while.body.i.346
	leaq	256(%r14), %rbx
	movzwl	256(%r14), %edx
	movzwl	%r10w, %ebp
	movl	$64, %eax
	cmpl	%ebp, %edx
	jb	.LBB10_99
# BB#29:                                # %if.else.i.349
	movzwl	254(%r14), %r15d
	movq	$-64, %rax
	cmpl	%ebp, %r15d
	jbe	.LBB10_30
.LBB10_99:                              # %if.end.50.i.364
	leaq	(%rbx,%rax,2), %rsi
	movzwl	(%rbx,%rax,2), %edx
	movzwl	%r10w, %ecx
	movl	$32, %eax
	cmpl	%ecx, %edx
	jb	.LBB10_100
# BB#97:                                # %if.else.i.349.1
	movzwl	-2(%rsi), %r15d
	movq	$-32, %rax
	cmpl	%ecx, %r15d
	jbe	.LBB10_98
.LBB10_100:                             # %if.end.50.i.364.1
	leaq	(%rsi,%rax,2), %rbx
	movzwl	(%rsi,%rax,2), %edx
	movl	$16, %eax
	cmpl	%ecx, %edx
	jb	.LBB10_103
# BB#101:                               # %if.else.i.349.2
	movzwl	-2(%rbx), %r15d
	movq	$-16, %rax
	cmpl	%ecx, %r15d
	jbe	.LBB10_102
.LBB10_103:                             # %if.end.50.i.364.2
	leaq	(%rbx,%rax,2), %rsi
	movzwl	(%rbx,%rax,2), %edx
	movl	$8, %eax
	cmpl	%ecx, %edx
	jb	.LBB10_105
# BB#104:                               # %if.else.i.349.3
	movzwl	-2(%rsi), %r15d
	movq	$-8, %rax
	cmpl	%ecx, %r15d
	jbe	.LBB10_98
.LBB10_105:                             # %if.end.50.i.364.3
	leaq	(%rsi,%rax,2), %rbx
	movzwl	(%rsi,%rax,2), %edx
	movl	$4, %eax
	cmpl	%ecx, %edx
	jb	.LBB10_108
# BB#106:                               # %if.else.i.349.4
	movzwl	-2(%rbx), %r15d
	movq	$-4, %rax
	cmpl	%ecx, %r15d
	jbe	.LBB10_107
.LBB10_108:                             # %if.end.50.i.364.4
	leaq	(%rbx,%rax,2), %rsi
	movzwl	(%rbx,%rax,2), %edx
	movl	$2, %eax
	cmpl	%ecx, %edx
	jb	.LBB10_110
# BB#109:                               # %if.else.i.349.5
	movzwl	-2(%rsi), %r15d
	movq	$-2, %rax
	cmpl	%ecx, %r15d
	jbe	.LBB10_98
.LBB10_110:                             # %if.end.50.i.364.5
	leaq	(%rsi,%rax,2), %rbx
	movzwl	(%rsi,%rax,2), %edx
	movl	$1, %eax
	cmpl	%ecx, %edx
	jb	.LBB10_113
# BB#111:                               # %if.else.i.349.6
	movzwl	-2(%rbx), %r15d
	movq	$-1, %rax
	cmpl	%ecx, %r15d
	jbe	.LBB10_112
.LBB10_113:                             # %if.end.50.i.364.6
	leaq	(%rbx,%rax,2), %rax
	movl	%ecx, %ebp
	jmp	.LBB10_32
.LBB10_33:                              # %if.else.69.i.386
	movzwl	%r10w, %ecx
	shrq	$8, %rcx
	jmp	.LBB10_34
.LBB10_98:
	leaq	-2(%rsi), %rax
	movq	%rsi, %rbx
	jmp	.LBB10_31
.LBB10_30:
	leaq	254(%r14), %rax
	jmp	.LBB10_31
.LBB10_102:
	leaq	-2(%rbx), %rax
	jmp	.LBB10_31
.LBB10_107:
	leaq	-2(%rbx), %rax
	jmp	.LBB10_31
.LBB10_112:
	leaq	-2(%rbx), %rax
.LBB10_31:                              # %if.else.36.i.359
	movzwl	%dx, %ecx
	movzwl	%r15w, %edx
	movl	%ebp, %esi
	subl	%edx, %esi
	subl	%ebp, %ecx
	cmpl	%ecx, %esi
	cmovgeq	%rbx, %rax
.LBB10_32:                              # %while.end.i.381
	leaq	-2(%rax), %rcx
	movzwl	-2(%rax), %edx
	movzwl	(%rax), %esi
	subl	%ebp, %esi
	subl	%edx, %ebp
	cmpl	%esi, %ebp
	cmovgeq	%rax, %rcx
	subq	%r14, %rcx
	shrq	%rcx
.LBB10_34:                              # %if.then.i.265
	movzwl	%cx, %eax
	movq	18568(%rdi), %r10
	movq	18640(%rdi), %rcx
	movzbl	(%rcx,%rax), %r14d
	orq	%r9, %r14
	movb	%r8b, %cl
	shlq	%cl, %r14
	testq	%r10, %r10
	je	.LBB10_40
# BB#35:                                # %while.body.i.280
	leaq	256(%r10), %rdx
	movzwl	256(%r10), %eax
	movzwl	%r11w, %ebp
	movl	$64, %ecx
	cmpl	%ebp, %eax
	jb	.LBB10_82
# BB#36:                                # %if.else.i.283
	movzwl	254(%r10), %r8d
	movq	$-64, %rcx
	cmpl	%ebp, %r8d
	jbe	.LBB10_37
.LBB10_82:                              # %if.end.50.i.298
	leaq	(%rdx,%rcx,2), %rsi
	movzwl	(%rdx,%rcx,2), %eax
	movzwl	%r11w, %ecx
	movl	$32, %ebx
	cmpl	%ecx, %eax
	jb	.LBB10_83
# BB#80:                                # %if.else.i.283.1
	movzwl	-2(%rsi), %r8d
	movq	$-32, %rbx
	cmpl	%ecx, %r8d
	jbe	.LBB10_81
.LBB10_83:                              # %if.end.50.i.298.1
	leaq	(%rsi,%rbx,2), %rdx
	movzwl	(%rsi,%rbx,2), %eax
	movl	$16, %ebx
	cmpl	%ecx, %eax
	jb	.LBB10_86
# BB#84:                                # %if.else.i.283.2
	movzwl	-2(%rdx), %r8d
	movq	$-16, %rbx
	cmpl	%ecx, %r8d
	jbe	.LBB10_85
.LBB10_86:                              # %if.end.50.i.298.2
	leaq	(%rdx,%rbx,2), %rsi
	movzwl	(%rdx,%rbx,2), %eax
	movl	$8, %ebx
	cmpl	%ecx, %eax
	jb	.LBB10_88
# BB#87:                                # %if.else.i.283.3
	movzwl	-2(%rsi), %r8d
	movq	$-8, %rbx
	cmpl	%ecx, %r8d
	jbe	.LBB10_81
.LBB10_88:                              # %if.end.50.i.298.3
	leaq	(%rsi,%rbx,2), %rdx
	movzwl	(%rsi,%rbx,2), %eax
	movl	$4, %ebx
	cmpl	%ecx, %eax
	jb	.LBB10_91
# BB#89:                                # %if.else.i.283.4
	movzwl	-2(%rdx), %r8d
	movq	$-4, %rbx
	cmpl	%ecx, %r8d
	jbe	.LBB10_90
.LBB10_91:                              # %if.end.50.i.298.4
	leaq	(%rdx,%rbx,2), %rsi
	movzwl	(%rdx,%rbx,2), %eax
	movl	$2, %ebx
	cmpl	%ecx, %eax
	jb	.LBB10_93
# BB#92:                                # %if.else.i.283.5
	movzwl	-2(%rsi), %r8d
	movq	$-2, %rbx
	cmpl	%ecx, %r8d
	jbe	.LBB10_81
.LBB10_93:                              # %if.end.50.i.298.5
	leaq	(%rsi,%rbx,2), %rdx
	movzwl	(%rsi,%rbx,2), %eax
	movl	$1, %esi
	cmpl	%ecx, %eax
	jb	.LBB10_96
# BB#94:                                # %if.else.i.283.6
	movzwl	-2(%rdx), %r8d
	movq	$-1, %rsi
	cmpl	%ecx, %r8d
	jbe	.LBB10_95
.LBB10_96:                              # %if.end.50.i.298.6
	leaq	(%rdx,%rsi,2), %rbx
	movl	%ecx, %ebp
	jmp	.LBB10_39
.LBB10_40:                              # %if.else.69.i.320
	movzwl	%r11w, %eax
	shrq	$8, %rax
	jmp	.LBB10_41
.LBB10_81:
	leaq	-2(%rsi), %rbx
	movq	%rsi, %rdx
	jmp	.LBB10_38
.LBB10_37:
	leaq	254(%r10), %rbx
	jmp	.LBB10_38
.LBB10_85:
	leaq	-2(%rdx), %rbx
	jmp	.LBB10_38
.LBB10_90:
	leaq	-2(%rdx), %rbx
	jmp	.LBB10_38
.LBB10_95:
	leaq	-2(%rdx), %rbx
.LBB10_38:                              # %if.else.36.i.293
	movzwl	%ax, %eax
	movzwl	%r8w, %ecx
	movl	%ebp, %esi
	subl	%ecx, %esi
	subl	%ebp, %eax
	cmpl	%eax, %esi
	cmovgeq	%rdx, %rbx
.LBB10_39:                              # %while.end.i.315
	leaq	-2(%rbx), %rax
	movzwl	-2(%rbx), %ecx
	movzwl	(%rbx), %edx
	subl	%ebp, %edx
	subl	%ecx, %ebp
	cmpl	%edx, %ebp
	cmovgeq	%rbx, %rax
	subq	%r10, %rax
	shrq	%rax
.LBB10_41:                              # %stc_truncate.exit322
	movzwl	%ax, %eax
	movq	18648(%rdi), %rcx
	movzbl	(%rcx,%rax), %eax
	orq	%r14, %rax
.LBB10_79:                              # %if.end.118
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	stc_map_rgb_color, .Lfunc_end10-stc_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	stc_map_color_rgb,@function
stc_map_color_rgb:                      # @stc_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 24
.Ltmp91:
	.cfi_offset %rbx, -24
.Ltmp92:
	.cfi_offset %r14, -16
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	cmpl	$24, %eax
	movl	18480(%rdi), %r9d
	movl	$8, %r14d
	je	.LBB11_2
# BB#1:                                 # %select.mid
	movl	%r9d, %r14d
.LBB11_2:                               # %select.end
	movl	$1, %r10d
	movb	%r9b, %cl
	shlq	%cl, %r10
	decq	%r10
	leal	(%r14,%r14), %ecx
	movq	%rsi, %rax
	shrq	%cl, %rax
	andq	%r10, %rax
	movl	$1, %edx
	movb	%r9b, %cl
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %rbx
	movq	18552(%rdi), %rcx
	andq	%rbx, %rax
	testq	%rcx, %rcx
	je	.LBB11_4
# BB#3:                                 # %if.then.i
	movzwl	(%rcx,%rax,2), %eax
	jmp	.LBB11_8
.LBB11_4:                               # %if.else.i
	cmpl	$15, %r9d
	ja	.LBB11_6
# BB#5:                                 # %if.then.14.i
	movl	$16, %ecx
	subl	%r9d, %ecx
	movq	%rax, %r11
	shlq	%cl, %r11
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %rdx
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cltq
	imulq	%rdx, %rax
	addq	%r11, %rax
	jmp	.LBB11_8
.LBB11_6:                               # %if.else.29.i
	cmpl	$17, %r9d
	jb	.LBB11_8
# BB#7:                                 # %if.then.35.i
	leal	-16(%r9), %ecx
	shrq	%cl, %rax
.LBB11_8:                               # %stc_expand.exit
	movslq	%r9d, %r11
	movw	%ax, (%r8)
	movq	%rsi, %rax
	movb	%r14b, %cl
	shrq	%cl, %rax
	andq	%r10, %rax
	movq	18560(%rdi), %rcx
	andq	%rbx, %rax
	testq	%rcx, %rcx
	je	.LBB11_10
# BB#9:                                 # %if.then.i.58
	movzwl	(%rcx,%rax,2), %eax
	jmp	.LBB11_14
.LBB11_10:                              # %if.else.i.61
	cmpl	$15, %r9d
	ja	.LBB11_12
# BB#11:                                # %if.then.14.i.72
	movl	$16, %ecx
	subl	%r11d, %ecx
	movq	%rax, %r14
	shlq	%cl, %r14
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %rdx
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cltq
	imulq	%rdx, %rax
	addq	%r14, %rax
	jmp	.LBB11_14
.LBB11_12:                              # %if.else.29.i.75
	cmpl	$17, %r9d
	jb	.LBB11_14
# BB#13:                                # %if.then.35.i.78
	leal	-16(%r11), %ecx
	shrq	%cl, %rax
.LBB11_14:                              # %stc_expand.exit81
	movw	%ax, 2(%r8)
	andq	%rsi, %r10
	movq	18568(%rdi), %rax
	testq	%rax, %rax
	je	.LBB11_16
# BB#15:                                # %if.then.i.25
	andq	%r10, %rbx
	movzwl	(%rax,%rbx,2), %ebx
	jmp	.LBB11_20
.LBB11_16:                              # %if.else.i.28
	cmpl	$15, %r9d
	ja	.LBB11_18
# BB#17:                                # %if.then.14.i.39
	andq	%rbx, %r10
	movl	$16, %ecx
	subl	%r11d, %ecx
	movq	%r10, %rsi
	shlq	%cl, %rsi
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%rbx
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %rbx
	imulq	%rax, %rbx
	addq	%rsi, %rbx
	jmp	.LBB11_20
.LBB11_18:                              # %if.else.29.i.42
	andq	%r10, %rbx
	cmpl	$17, %r9d
	jb	.LBB11_20
# BB#19:                                # %if.then.35.i.45
	addl	$-16, %r11d
	movb	%r11b, %cl
	shrq	%cl, %rbx
.LBB11_20:                              # %stc_expand.exit48
	movw	%bx, 4(%r8)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	stc_map_color_rgb, .Lfunc_end11-stc_map_color_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
.LCPI12_1:
	.quad	4679239875398991872     # double 65535
.LCPI12_2:
	.quad	4652209618980700160     # double 1023
	.text
	.align	16, 0x90
	.type	stc_map_cmyk10_color,@function
stc_map_cmyk10_color:                   # @stc_map_cmyk10_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 48
.Ltmp98:
	.cfi_offset %rbx, -48
.Ltmp99:
	.cfi_offset %r12, -40
.Ltmp100:
	.cfi_offset %r14, -32
.Ltmp101:
	.cfi_offset %r15, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movzwl	(%rsi), %r9d
	movzwl	2(%rsi), %r8d
	movzwl	4(%rsi), %r12d
	cmpl	%r8d, %r9d
	jne	.LBB12_3
# BB#1:                                 # %entry
	movzwl	%r12w, %eax
	movzwl	%r8w, %ecx
	cmpl	%eax, %ecx
	jne	.LBB12_3
# BB#2:                                 # %if.end.167.thread
	movzwl	6(%rsi), %eax
	movzwl	%ax, %r12d
	movzwl	%r9w, %eax
	cmpl	%r12d, %eax
	cmovaw	%r9w, %r12w
	movl	$3, %r11d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	jmp	.LBB12_63
.LBB12_3:                               # %if.else
	movq	18496(%rdi), %rax
	testq	%rax, %rax
	je	.LBB12_18
# BB#4:                                 # %if.then.19
	movzwl	%r8w, %ecx
	movzwl	%r9w, %esi
	cmpl	%ecx, %esi
	movw	%r8w, %cx
	cmovbw	%r9w, %cx
	movzwl	%cx, %ecx
	movzwl	%r12w, %esi
	cmpl	%esi, %ecx
	cmovaew	%r12w, %cx
	testw	%cx, %cx
	je	.LBB12_6
# BB#5:                                 # %if.then.42
	subl	%ecx, %r9d
	subl	%ecx, %r8d
	subl	%ecx, %r12d
.LBB12_6:                               # %if.end
	movzwl	%r9w, %esi
	cvtsi2ssl	%esi, %xmm3
	movzwl	%r8w, %esi
	cvtsi2ssl	%esi, %xmm2
	movzwl	%r12w, %edx
	cvtsi2ssl	%edx, %xmm1
	movzwl	%cx, %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	(%rax), %xmm4           # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	movss	4(%rax), %xmm5          # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm5
	movss	8(%rax), %xmm4          # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	addss	%xmm5, %xmm4
	movss	12(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	xorps	%xmm4, %xmm4
	ucomiss	%xmm5, %xmm4
	jbe	.LBB12_8
# BB#7:
	xorl	%r9d, %r9d
	jmp	.LBB12_10
.LBB12_8:                               # %if.else.72
	cvtss2sd	%xmm5, %xmm5
	addsd	.LCPI12_0(%rip), %xmm5
	movw	$-1, %r9w
	ucomisd	.LCPI12_1(%rip), %xmm5
	ja	.LBB12_10
# BB#9:                                 # %if.else.78
	cvttsd2si	%xmm5, %r9d
.LBB12_10:                              # %if.end.83
	movss	16(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm5
	movss	20(%rax), %xmm6         # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm6
	movss	24(%rax), %xmm7         # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm7
	addss	%xmm6, %xmm7
	movss	28(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm7, %xmm5
	ucomiss	%xmm5, %xmm4
	jbe	.LBB12_12
# BB#11:
	xorl	%r8d, %r8d
	jmp	.LBB12_14
.LBB12_12:                              # %if.else.99
	cvtss2sd	%xmm5, %xmm4
	addsd	.LCPI12_0(%rip), %xmm4
	movw	$-1, %r8w
	ucomisd	.LCPI12_1(%rip), %xmm4
	ja	.LBB12_14
# BB#13:                                # %if.else.105
	cvttsd2si	%xmm4, %r8d
.LBB12_14:                              # %if.end.110
	mulss	32(%rax), %xmm3
	mulss	36(%rax), %xmm2
	addss	%xmm3, %xmm2
	mulss	40(%rax), %xmm1
	addss	%xmm2, %xmm1
	mulss	44(%rax), %xmm0
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB12_16
# BB#15:
	xorl	%r12d, %r12d
	jmp	.LBB12_18
.LBB12_16:                              # %if.else.126
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI12_0(%rip), %xmm0
	movw	$-1, %r12w
	ucomisd	.LCPI12_1(%rip), %xmm0
	ja	.LBB12_18
# BB#17:                                # %if.else.132
	cvttsd2si	%xmm0, %r12d
.LBB12_18:                              # %if.end.138
	movzwl	%r8w, %eax
	movzwl	%r9w, %r15d
	cmpl	%eax, %r15d
	jae	.LBB12_21
# BB#19:                                # %if.then.143
	movzwl	%r12w, %eax
	movzwl	%r9w, %ecx
	movl	$2, %r11d
	xorl	%r10d, %r10d
	cmpl	%eax, %ecx
	jae	.LBB12_22
# BB#20:
	xorl	%r11d, %r11d
	movw	%r12w, %r10w
	movw	%r9w, %r12w
	xorl	%r9d, %r9d
	jmp	.LBB12_35
.LBB12_21:                              # %if.else.151
	movzwl	%r12w, %ecx
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	movw	%ax, %cx
	cmovaew	%r12w, %cx
	movw	%r12w, %r10w
	cmovaew	%si, %r10w
	cmovbw	%si, %ax
	setae	%dl
	movzbl	%dl, %r11d
	incl	%r11d
	movw	%cx, %r12w
	movw	%ax, %r8w
.LBB12_22:                              # %if.end.160
	testw	%r9w, %r9w
	je	.LBB12_23
# BB#24:                                # %if.then.162
	movl	18480(%rdi), %eax
	cmpl	$15, %eax
	ja	.LBB12_35
# BB#25:                                # %if.then.i
	movq	18552(%rdi), %r14
	testq	%r14, %r14
	je	.LBB12_34
# BB#26:                                # %if.then.5.i
	leal	-1(%rax), %ecx
	movl	$1, %esi
	shlq	%cl, %rsi
	leaq	(%r14,%rsi,2), %rbx
	cmpl	$2, %eax
	jl	.LBB12_33
# BB#27:                                # %if.then.5.i
	addl	$-2, %eax
	cmpl	$63, %eax
	je	.LBB12_33
# BB#28:                                # %while.body.i.preheader
	movl	$1, %esi
	movb	%al, %cl
	shlq	%cl, %rsi
	movzwl	%r9w, %edx
	.align	16, 0x90
.LBB12_29:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %ecx
	subl	%edx, %ecx
	movq	%rsi, %rbp
	jb	.LBB12_32
# BB#30:                                # %if.else.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movzwl	-2(%rbx), %ebp
	cmpl	%edx, %ebp
	jbe	.LBB12_93
# BB#31:                                # %if.then.34.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	%rsi, %rbp
	negq	%rbp
.LBB12_32:                              # %if.end.50.i
                                        #   in Loop: Header=BB12_29 Depth=1
	leaq	(%rbx,%rbp,2), %rbx
	sarq	%rsi
	testq	%rsi, %rsi
	jg	.LBB12_29
	jmp	.LBB12_33
.LBB12_23:
	xorl	%r9d, %r9d
	jmp	.LBB12_35
.LBB12_34:                              # %if.else.69.i
	movl	$16, %ecx
	subl	%eax, %ecx
	movzwl	%r9w, %r9d
	shrl	%cl, %r9d
	jmp	.LBB12_35
.LBB12_93:                              # %if.else.36.i
	leaq	-2(%rbx), %rsi
	movl	%edx, %eax
	subl	%ebp, %eax
	cmpl	%ecx, %eax
	cmovlq	%rsi, %rbx
	movl	%edx, %r15d
.LBB12_33:                              # %while.end.i
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %ecx
	subl	%r15d, %ecx
	subl	%eax, %r15d
	cmpl	%ecx, %r15d
	leaq	-2(%rbx), %r9
	cmovgel	%ebx, %r9d
	subl	%r14d, %r9d
	shrl	%r9d
.LBB12_35:                              # %if.end.163
	testw	%r8w, %r8w
	je	.LBB12_36
# BB#37:                                # %if.then.165
	movl	18480(%rdi), %eax
	cmpl	$15, %eax
	ja	.LBB12_49
# BB#38:                                # %if.then.i.272
	movq	18560(%rdi), %r14
	testq	%r14, %r14
	je	.LBB12_48
# BB#39:                                # %if.then.5.i.283
	leal	-1(%rax), %ecx
	movl	$1, %edx
	shlq	%cl, %rdx
	leaq	(%r14,%rdx,2), %rbx
	cmpl	$2, %eax
	jl	.LBB12_46
# BB#40:                                # %if.then.5.i.283
	addl	$-2, %eax
	cmpl	$63, %eax
	je	.LBB12_46
# BB#41:                                # %while.body.i.287.preheader
	movl	$1, %ebp
	movb	%al, %cl
	shlq	%cl, %rbp
	movzwl	%r8w, %edx
	.align	16, 0x90
.LBB12_42:                              # %while.body.i.287
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %ecx
	subl	%edx, %ecx
	movq	%rbp, %rsi
	jb	.LBB12_45
# BB#43:                                # %if.else.i.290
                                        #   in Loop: Header=BB12_42 Depth=1
	movzwl	-2(%rbx), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_94
# BB#44:                                # %if.then.34.i.292
                                        #   in Loop: Header=BB12_42 Depth=1
	movq	%rbp, %rsi
	negq	%rsi
.LBB12_45:                              # %if.end.50.i.305
                                        #   in Loop: Header=BB12_42 Depth=1
	leaq	(%rbx,%rsi,2), %rbx
	sarq	%rbp
	testq	%rbp, %rbp
	jg	.LBB12_42
.LBB12_46:                              # %while.end.loopexit.i.308
	movzwl	%r8w, %edx
	jmp	.LBB12_47
.LBB12_36:
	xorl	%r8d, %r8d
	jmp	.LBB12_49
.LBB12_48:                              # %if.else.69.i.327
	movl	$16, %ecx
	subl	%eax, %ecx
	movzwl	%r8w, %r8d
	shrl	%cl, %r8d
	jmp	.LBB12_49
.LBB12_94:                              # %if.else.36.i.300
	leaq	-2(%rbx), %rbp
	movl	%edx, %eax
	subl	%esi, %eax
	cmpl	%ecx, %eax
	cmovlq	%rbp, %rbx
.LBB12_47:                              # %while.end.i.322
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %ecx
	subl	%edx, %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	leaq	-2(%rbx), %r8
	cmovgel	%ebx, %r8d
	subl	%r14d, %r8d
	shrl	%r8d
.LBB12_49:                              # %if.end.167
	testw	%r10w, %r10w
	je	.LBB12_50
# BB#51:                                # %if.then.169
	movl	18480(%rdi), %eax
	cmpl	$15, %eax
	ja	.LBB12_63
# BB#52:                                # %if.then.i.210
	movq	18568(%rdi), %r14
	testq	%r14, %r14
	je	.LBB12_62
# BB#53:                                # %if.then.5.i.221
	leal	-1(%rax), %ecx
	movl	$1, %edx
	shlq	%cl, %rdx
	leaq	(%r14,%rdx,2), %rbx
	cmpl	$2, %eax
	jl	.LBB12_60
# BB#54:                                # %if.then.5.i.221
	addl	$-2, %eax
	cmpl	$63, %eax
	je	.LBB12_60
# BB#55:                                # %while.body.i.225.preheader
	movl	$1, %ebp
	movb	%al, %cl
	shlq	%cl, %rbp
	movzwl	%r10w, %edx
	.align	16, 0x90
.LBB12_56:                              # %while.body.i.225
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %ecx
	subl	%edx, %ecx
	movq	%rbp, %rsi
	jb	.LBB12_59
# BB#57:                                # %if.else.i.228
                                        #   in Loop: Header=BB12_56 Depth=1
	movzwl	-2(%rbx), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_95
# BB#58:                                # %if.then.34.i.230
                                        #   in Loop: Header=BB12_56 Depth=1
	movq	%rbp, %rsi
	negq	%rsi
.LBB12_59:                              # %if.end.50.i.243
                                        #   in Loop: Header=BB12_56 Depth=1
	leaq	(%rbx,%rsi,2), %rbx
	sarq	%rbp
	testq	%rbp, %rbp
	jg	.LBB12_56
.LBB12_60:                              # %while.end.loopexit.i.246
	movzwl	%r10w, %edx
	jmp	.LBB12_61
.LBB12_50:
	xorl	%r10d, %r10d
	jmp	.LBB12_63
.LBB12_62:                              # %if.else.69.i.265
	movl	$16, %ecx
	subl	%eax, %ecx
	movzwl	%r10w, %r10d
	shrl	%cl, %r10d
	jmp	.LBB12_63
.LBB12_95:                              # %if.else.36.i.238
	leaq	-2(%rbx), %rbp
	movl	%edx, %eax
	subl	%esi, %eax
	cmpl	%ecx, %eax
	cmovlq	%rbp, %rbx
.LBB12_61:                              # %while.end.i.260
	movzwl	-2(%rbx), %eax
	movzwl	(%rbx), %ecx
	subl	%edx, %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	leaq	-2(%rbx), %r10
	cmovgel	%ebx, %r10d
	subl	%r14d, %r10d
	shrl	%r10d
.LBB12_63:                              # %if.end.171
	testw	%r12w, %r12w
	je	.LBB12_64
# BB#65:                                # %if.then.173
	movl	18480(%rdi), %eax
	cmpl	$15, %eax
	ja	.LBB12_77
# BB#66:                                # %if.then.i.148
	movq	18576(%rdi), %r14
	testq	%r14, %r14
	je	.LBB12_76
# BB#67:                                # %if.then.5.i.159
	leal	-1(%rax), %ecx
	movl	$1, %edx
	shlq	%cl, %rdx
	leaq	(%r14,%rdx,2), %rbx
	cmpl	$2, %eax
	jl	.LBB12_74
# BB#68:                                # %if.then.5.i.159
	addl	$-2, %eax
	cmpl	$63, %eax
	je	.LBB12_74
# BB#69:                                # %while.body.i.163.preheader
	movl	$1, %ebp
	movb	%al, %cl
	shlq	%cl, %rbp
	movzwl	%r12w, %eax
	.align	16, 0x90
.LBB12_70:                              # %while.body.i.163
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %ecx
	subl	%eax, %ecx
	movq	%rbp, %rsi
	jb	.LBB12_73
# BB#71:                                # %if.else.i.166
                                        #   in Loop: Header=BB12_70 Depth=1
	movzwl	-2(%rbx), %esi
	cmpl	%eax, %esi
	jbe	.LBB12_96
# BB#72:                                # %if.then.34.i.168
                                        #   in Loop: Header=BB12_70 Depth=1
	movq	%rbp, %rsi
	negq	%rsi
.LBB12_73:                              # %if.end.50.i.181
                                        #   in Loop: Header=BB12_70 Depth=1
	leaq	(%rbx,%rsi,2), %rbx
	sarq	%rbp
	testq	%rbp, %rbp
	jg	.LBB12_70
.LBB12_74:                              # %while.end.loopexit.i.184
	movzwl	%r12w, %eax
	jmp	.LBB12_75
.LBB12_64:
	xorl	%r12d, %r12d
	jmp	.LBB12_77
.LBB12_76:                              # %if.else.69.i.203
	movl	$16, %ecx
	subl	%eax, %ecx
	movzwl	%r12w, %r12d
	shrl	%cl, %r12d
	jmp	.LBB12_77
.LBB12_96:                              # %if.else.36.i.176
	leaq	-2(%rbx), %rdx
	movl	%eax, %ebp
	subl	%esi, %ebp
	cmpl	%ecx, %ebp
	cmovlq	%rdx, %rbx
.LBB12_75:                              # %while.end.i.198
	movzwl	-2(%rbx), %ecx
	movzwl	(%rbx), %edx
	subl	%eax, %edx
	subl	%ecx, %eax
	cmpl	%edx, %eax
	leaq	-2(%rbx), %r12
	cmovgel	%ebx, %r12d
	subl	%r14d, %r12d
	shrl	%r12d
.LBB12_77:                              # %if.end.175
	movl	%r9d, %eax
	orl	%r8d, %eax
	orw	%r10w, %ax
	movl	$3, %eax
	cmovel	%eax, %r11d
	movq	18488(%rdi), %rax
	movl	16(%rax), %ecx
	andl	$24, %ecx
	cmpl	$16, %ecx
	jne	.LBB12_78
# BB#81:                                # %land.lhs.true.223
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB12_84
	jp	.LBB12_84
# BB#82:                                # %land.lhs.true.230
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	32(%rax), %xmm0
	jb	.LBB12_84
# BB#83:                                # %if.then.237
	movzwl	%r9w, %eax
	movq	18632(%rdi), %rcx
	movq	18640(%rdi), %rdx
	movzwl	(%rcx,%rax,8), %r9d
	movzwl	%r8w, %eax
	movzwl	(%rdx,%rax,8), %r8d
	movzwl	%r10w, %eax
	movq	18648(%rdi), %rcx
	movzwl	(%rcx,%rax,8), %r10d
	movzwl	%r12w, %eax
	movq	18656(%rdi), %rcx
	movzwl	(%rcx,%rax,8), %r12d
	jmp	.LBB12_84
.LBB12_78:                              # %if.end.175
	cmpl	$8, %ecx
	jne	.LBB12_84
# BB#79:                                # %land.lhs.true.187
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB12_84
	jp	.LBB12_84
# BB#80:                                # %if.then.193
	movzwl	%r9w, %eax
	movq	18632(%rdi), %rcx
	movq	18640(%rdi), %rdx
	movzbl	(%rcx,%rax), %r9d
	movzwl	%r8w, %eax
	movzbl	(%rdx,%rax), %r8d
	movzwl	%r10w, %eax
	movq	18648(%rdi), %rcx
	movzbl	(%rcx,%rax), %r10d
	movzwl	%r12w, %eax
	movq	18656(%rdi), %rcx
	movzbl	(%rcx,%rax), %r12d
.LBB12_84:                              # %if.end.263
	cmpl	$2, %r11d
	je	.LBB12_90
# BB#85:                                # %if.end.263
	cmpl	$1, %r11d
	jne	.LBB12_86
# BB#88:                                # %sw.bb.273
	shll	$22, %r9d
	movzwl	%r10w, %eax
	jmp	.LBB12_89
.LBB12_90:                              # %sw.bb.284
	shll	$22, %r9d
	movzwl	%r8w, %eax
.LBB12_89:                              # %sw.epilog
	shll	$12, %eax
	movzwl	%r12w, %ecx
	shll	$2, %ecx
	orl	%eax, %ecx
	orl	%r9d, %ecx
	jmp	.LBB12_92
.LBB12_86:                              # %if.end.263
	testl	%r11d, %r11d
	jne	.LBB12_91
# BB#87:                                # %sw.bb
	shll	$22, %r8d
	movzwl	%r10w, %eax
	shll	$12, %eax
	movzwl	%r12w, %ecx
	shll	$2, %ecx
	orl	%eax, %ecx
	orl	%r8d, %ecx
	jmp	.LBB12_92
.LBB12_91:                              # %sw.default
	movzwl	%r12w, %ecx
	shll	$2, %ecx
.LBB12_92:                              # %sw.epilog
	orl	%r11d, %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	movl	%ecx, %eax
	shll	$24, %eax
	movl	%ecx, %esi
	shll	$8, %esi
	shrl	$8, %ecx
	andl	$16711680, %esi         # imm = 0xFF0000
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%edx, %eax
	orl	%esi, %eax
	orl	%ecx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	stc_map_cmyk10_color, .Lfunc_end12-stc_map_cmyk10_color
	.cfi_endproc

	.align	16, 0x90
	.type	stc_map_color_cmyk10,@function
stc_map_color_cmyk10:                   # @stc_map_color_cmyk10
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 24
.Ltmp105:
	.cfi_offset %rbx, -24
.Ltmp106:
	.cfi_offset %r14, -16
	movq	%rdx, %r8
	movl	%esi, %ebx
	shrl	$24, %ebx
	bswapl	%esi
	movq	%rsi, %r10
	shrq	$2, %r10
	andl	$1023, %r10d            # imm = 0x3FF
	movslq	18480(%rdi), %r9
	movl	$1, %eax
	movb	%r9b, %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %r14
	movq	18576(%rdi), %rax
	andq	%r14, %r10
	testq	%rax, %rax
	je	.LBB13_2
# BB#1:                                 # %if.then.i
	movzwl	(%rax,%r10,2), %r10d
	jmp	.LBB13_6
.LBB13_2:                               # %if.else.i
	cmpl	$15, %r9d
	ja	.LBB13_4
# BB#3:                                 # %if.then.14.i
	movl	$16, %ecx
	subl	%r9d, %ecx
	movq	%r10, %r11
	shlq	%cl, %r11
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%r14
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r10
	imulq	%rax, %r10
	addq	%r11, %r10
	jmp	.LBB13_6
.LBB13_4:                               # %if.else.29.i
	cmpl	$17, %r9d
	jb	.LBB13_6
# BB#5:                                 # %if.then.35.i
	leal	-16(%r9), %ecx
	shrq	%cl, %r10
.LBB13_6:                               # %stc_expand.exit
	andl	$3, %ebx
	cmpl	$2, %ebx
	je	.LBB13_35
# BB#7:                                 # %stc_expand.exit
	cmpl	$1, %ebx
	jne	.LBB13_8
# BB#22:                                # %sw.bb.26
	movq	%rsi, %rbx
	shrq	$22, %rbx
	movq	18552(%rdi), %rax
	andq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB13_24
# BB#23:                                # %if.then.i.133
	movzwl	(%rax,%rbx,2), %ebx
	jmp	.LBB13_28
.LBB13_35:                              # %sw.bb.33
	movq	%rsi, %rbx
	shrq	$22, %rbx
	movq	18552(%rdi), %rax
	andq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB13_37
# BB#36:                                # %if.then.i.67
	movzwl	(%rax,%rbx,2), %ebx
	jmp	.LBB13_41
.LBB13_8:                               # %stc_expand.exit
	testl	%ebx, %ebx
	jne	.LBB13_9
# BB#10:                                # %sw.bb
	movq	%rsi, %r11
	shrq	$22, %r11
	movq	18560(%rdi), %rax
	andq	%r14, %r11
	testq	%rax, %rax
	je	.LBB13_12
# BB#11:                                # %if.then.i.199
	movzwl	(%rax,%r11,2), %r11d
	jmp	.LBB13_16
.LBB13_9:
	movw	%r10w, %r14w
	movw	%r10w, %r11w
	jmp	.LBB13_49
.LBB13_24:                              # %if.else.i.136
	cmpl	$15, %r9d
	ja	.LBB13_26
# BB#25:                                # %if.then.14.i.147
	movl	$16, %ecx
	subl	%r9d, %ecx
	movq	%rbx, %r11
	shlq	%cl, %r11
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%r14
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %rbx
	imulq	%rax, %rbx
	addq	%r11, %rbx
	jmp	.LBB13_28
.LBB13_37:                              # %if.else.i.70
	cmpl	$15, %r9d
	ja	.LBB13_39
# BB#38:                                # %if.then.14.i.81
	movl	$16, %ecx
	subl	%r9d, %ecx
	movq	%rbx, %r11
	shlq	%cl, %r11
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%r14
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %rbx
	imulq	%rax, %rbx
	addq	%r11, %rbx
	jmp	.LBB13_41
.LBB13_12:                              # %if.else.i.202
	cmpl	$15, %r9d
	ja	.LBB13_14
# BB#13:                                # %if.then.14.i.213
	movl	$16, %ecx
	subl	%r9d, %ecx
	movq	%r11, %rbx
	shlq	%cl, %rbx
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r14
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r11
	imulq	%rax, %r11
	addq	%rbx, %r11
	jmp	.LBB13_16
.LBB13_26:                              # %if.else.29.i.150
	cmpl	$17, %r9d
	jb	.LBB13_28
# BB#27:                                # %if.then.35.i.153
	leal	-16(%r9), %ecx
	shrq	%cl, %rbx
.LBB13_28:                              # %stc_expand.exit156
	shrq	$12, %rsi
	andl	$1023, %esi             # imm = 0x3FF
	movq	18568(%rdi), %rax
	testq	%rax, %rax
	je	.LBB13_30
# BB#29:                                # %if.then.i.100
	andq	%rsi, %r14
	movzwl	(%rax,%r14,2), %r14d
	movw	%r10w, %r11w
	jmp	.LBB13_48
.LBB13_30:                              # %if.else.i.103
	cmpl	$15, %r9d
	ja	.LBB13_32
# BB#31:                                # %if.then.14.i.114
	andq	%r14, %rsi
	movl	$16, %ecx
	subl	%r9d, %ecx
	movq	%rsi, %rdi
	shlq	%cl, %rdi
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%r14
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r14
	imulq	%rax, %r14
	addq	%rdi, %r14
	movw	%r10w, %r11w
	jmp	.LBB13_48
.LBB13_39:                              # %if.else.29.i.84
	cmpl	$17, %r9d
	jb	.LBB13_41
# BB#40:                                # %if.then.35.i.87
	leal	-16(%r9), %ecx
	shrq	%cl, %rbx
.LBB13_41:                              # %stc_expand.exit90
	shrq	$12, %rsi
	andl	$1023, %esi             # imm = 0x3FF
	movq	18560(%rdi), %rax
	testq	%rax, %rax
	je	.LBB13_43
# BB#42:                                # %if.then.i.34
	andq	%rsi, %r14
	movzwl	(%rax,%r14,2), %r14d
	jmp	.LBB13_47
.LBB13_43:                              # %if.else.i.37
	cmpl	$15, %r9d
	ja	.LBB13_45
# BB#44:                                # %if.then.14.i.48
	andq	%r14, %rsi
	movl	$16, %ecx
	subl	%r9d, %ecx
	movq	%rsi, %rdi
	shlq	%cl, %rdi
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%r14
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r14
	imulq	%rax, %r14
	addq	%rdi, %r14
	jmp	.LBB13_47
.LBB13_32:                              # %if.else.29.i.117
	andq	%rsi, %r14
	cmpl	$17, %r9d
	jb	.LBB13_34
# BB#33:                                # %if.then.35.i.120
	leal	-16(%r9), %ecx
	shrq	%cl, %r14
.LBB13_34:                              # %stc_expand.exit123
	movw	%r10w, %r11w
	jmp	.LBB13_48
.LBB13_45:                              # %if.else.29.i.51
	andq	%rsi, %r14
	cmpl	$17, %r9d
	jb	.LBB13_47
# BB#46:                                # %if.then.35.i.54
	addl	$-16, %r9d
	movb	%r9b, %cl
	shrq	%cl, %r14
.LBB13_47:                              # %stc_expand.exit57
	movw	%r14w, %r11w
	movw	%r10w, %r14w
.LBB13_48:                              # %sw.epilog
	movw	%bx, %r10w
.LBB13_49:                              # %sw.epilog
	movw	%r10w, (%r8)
	movw	%r11w, 2(%r8)
	movw	%r14w, 4(%r8)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	retq
.LBB13_14:                              # %if.else.29.i.216
	cmpl	$17, %r9d
	jb	.LBB13_16
# BB#15:                                # %if.then.35.i.219
	leal	-16(%r9), %ecx
	shrq	%cl, %r11
.LBB13_16:                              # %stc_expand.exit222
	shrq	$12, %rsi
	andl	$1023, %esi             # imm = 0x3FF
	movq	18568(%rdi), %rax
	testq	%rax, %rax
	je	.LBB13_18
# BB#17:                                # %if.then.i.166
	andq	%rsi, %r14
	movzwl	(%rax,%r14,2), %r14d
	jmp	.LBB13_49
.LBB13_18:                              # %if.else.i.169
	cmpl	$15, %r9d
	ja	.LBB13_20
# BB#19:                                # %if.then.14.i.180
	andq	%r14, %rsi
	movl	$16, %ecx
	subl	%r9d, %ecx
	movq	%rsi, %rdi
	shlq	%cl, %rdi
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%r14
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r14
	imulq	%rax, %r14
	addq	%rdi, %r14
	jmp	.LBB13_49
.LBB13_20:                              # %if.else.29.i.183
	andq	%rsi, %r14
	cmpl	$17, %r9d
	jb	.LBB13_49
# BB#21:                                # %if.then.35.i.186
	leal	-16(%r9), %ecx
	shrq	%cl, %r14
	jmp	.LBB13_49
.Lfunc_end13:
	.size	stc_map_color_cmyk10, .Lfunc_end13-stc_map_color_cmyk10
	.cfi_endproc

	.align	16, 0x90
	.type	stc_freedata,@function
stc_freedata:                           # @stc_freedata
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 32
.Ltmp110:
	.cfi_offset %rbx, -32
.Ltmp111:
	.cfi_offset %r14, -24
.Ltmp112:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB14_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
                                        #     Child Loop BB14_9 Depth 2
	movq	80(%r15,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB14_7
# BB#2:                                 # %for.cond.2.preheader
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jle	.LBB14_5
	.align	16, 0x90
.LBB14_3:                               # %for.body.4
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	80(%r15,%rax,8), %rsi
	je	.LBB14_5
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=2
	incq	%rax
	cmpq	%rbx, %rax
	jl	.LBB14_3
.LBB14_5:                               # %for.end
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	%eax, %ebx
	jne	.LBB14_7
# BB#6:                                 # %if.then.14
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	200(%r14), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB14_7:                               # %if.end.20
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	160(%r15,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB14_13
# BB#8:                                 # %for.cond.25.preheader
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jle	.LBB14_11
	.align	16, 0x90
.LBB14_9:                               # %for.body.27
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	160(%r15,%rax,8), %rsi
	je	.LBB14_11
# BB#10:                                # %for.inc.37
                                        #   in Loop: Header=BB14_9 Depth=2
	incq	%rax
	cmpq	%rbx, %rax
	jl	.LBB14_9
.LBB14_11:                              # %for.end.39
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	%eax, %ebx
	jne	.LBB14_13
# BB#12:                                # %if.then.41
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	200(%r14), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB14_13:                              # %for.inc.51
                                        #   in Loop: Header=BB14_1 Depth=1
	incq	%rbx
	cmpq	$4, %rbx
	jne	.LBB14_1
# BB#14:                                # %for.cond.54.preheader
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%r15)
	movups	%xmm0, 160(%r15)
	movups	%xmm0, 96(%r15)
	movups	%xmm0, 176(%r15)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	stc_freedata, .Lfunc_end14-stc_freedata
	.cfi_endproc

	.align	16, 0x90
	.type	stc_gscmyk,@function
stc_gscmyk:                             # @stc_gscmyk
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	jle	.LBB15_4
	.align	16, 0x90
.LBB15_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rdx), %al
	movb	%al, %cl
	shrb	$4, %cl
	movb	%cl, (%r8)
	cmpl	$2, %esi
	jl	.LBB15_3
# BB#2:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	incq	%rdx
	andb	$15, %al
	movb	%al, 1(%r8)
	addq	$2, %r8
	cmpl	$2, %esi
	leal	-2(%rsi), %eax
	movl	%eax, %esi
	jg	.LBB15_1
.LBB15_3:                               # %if.end.41
	xorl	%eax, %eax
	retq
.LBB15_4:                               # %if.else
	movq	18488(%rdi), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	shll	$24, %ecx
	sarl	$31, %ecx
	movl	%eax, %edx
	andl	$24, %edx
	cmpl	$8, %edx
	movl	$-2, %edx
	cmovel	%ecx, %edx
	testb	$64, %al
	movl	$-3, %eax
	cmovnel	%edx, %eax
	cmpl	$4, 100(%rdi)
	je	.LBB15_6
# BB#5:                                 # %select.mid
	movl	$-4, %eax
.LBB15_6:                               # %select.end
	movzwl	108(%rdi), %ecx
	cmpl	$4, %ecx
	je	.LBB15_8
# BB#7:                                 # %select.mid21
	movl	$-5, %eax
.LBB15_8:                               # %select.end20
	retq
.Lfunc_end15:
	.size	stc_gscmyk, .Lfunc_end15-stc_gscmyk
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.quad	-190                    # 0xffffffffffffff42
	.quad	-190                    # 0xffffffffffffff42
.LCPI16_1:
	.long	2147483648              # 0x80000000
	.long	0                       # 0x0
	.long	2147483648              # 0x80000000
	.long	0                       # 0x0
.LCPI16_2:
	.quad	190                     # 0xbe
	.quad	190                     # 0xbe
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_3:
	.quad	4652209618980700160     # double 1023
	.text
	.align	16, 0x90
	.type	stc_hscmyk,@function
stc_hscmyk:                             # @stc_hscmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp119:
	.cfi_def_cfa_offset 144
.Ltmp120:
	.cfi_offset %rbx, -56
.Ltmp121:
	.cfi_offset %r12, -48
.Ltmp122:
	.cfi_offset %r13, -40
.Ltmp123:
	.cfi_offset %r14, -32
.Ltmp124:
	.cfi_offset %r15, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	testl	%esi, %esi
	js	.LBB16_1
# BB#23:                                # %if.else.73
	movq	%rdx, %rdi
	movb	(%rbx), %cl
	cmpb	$1, %cl
	sbbl	%eax, %eax
	movb	%cl, %dl
	notb	%dl
	movb	%dl, (%rbx)
	addq	$40, %rbx
	testb	%cl, %cl
	je	.LBB16_25
# BB#24:                                # %if.then.83
	leal	-1(%rsi), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx,4), %rdi
	addq	%rcx, %r8
	leal	-4(,%rsi,4), %ecx
	movslq	%ecx, %rcx
	leaq	(%rbx,%rcx,8), %rbx
.LBB16_25:                              # %while.cond.preheader
	movq	%r8, 48(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
	testl	%esi, %esi
	jle	.LBB16_34
# BB#26:                                # %while.body.lr.ph
	notl	%eax
	orl	$1, %eax
	incl	%esi
	movslq	%eax, %r13
	movq	%r13, 40(%rsp)          # 8-byte Spill
	leal	(,%r13,4), %eax
	cltq
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	$3, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	$2, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	$1, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	(,%rax,8), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	negl	%eax
	cltq
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r9d, %r9d
	movdqa	.LCPI16_0(%rip), %xmm8  # xmm8 = [18446744073709551426,18446744073709551426]
	movdqa	.LCPI16_1(%rip), %xmm1  # xmm1 = [2147483648,0,2147483648,0]
	movdqa	%xmm1, %xmm3
	pxor	%xmm8, %xmm3
	movdqa	.LCPI16_2(%rip), %xmm9  # xmm9 = [190,190]
	movdqa	%xmm1, %xmm4
	pxor	%xmm9, %xmm4
	xorl	%edx, %edx
	xorl	%edi, %edi
	xorl	%r10d, %r10d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB16_27:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%r9,4), %r15d
	movl	%r15d, %r14d
	andl	$3, %r14d
	movl	%r15d, %r11d
	shrl	$2, %r11d
	andl	$1023, %r11d            # imm = 0x3FF
	imulq	$7, %r12, %rbp
	sarq	$4, %rbp
	addq	24(%rbx), %rbp
	addq	%r11, %rbp
	cmpl	$3, %r14d
	jne	.LBB16_29
# BB#28:                                # %if.then.113
                                        #   in Loop: Header=BB16_27 Depth=1
	leaq	-1023(%rbp), %rdx
	cmpq	$511, %rbp              # imm = 0x1FF
	setg	%al
	cmovleq	%rbp, %rdx
	movzbl	%al, %eax
	leaq	8(%rdx,%rdx,2), %rdi
	sarq	$4, %rdi
	movq	72(%rsp), %rbp          # 8-byte Reload
	addq	%rdi, (%rbx,%rbp,8)
	leaq	(%rdx,%rdx,4), %rdi
	leaq	8(%r12,%rdi), %rdi
	sarq	$4, %rdi
	movq	%rdi, 24(%rbx)
	movdqu	(%rbx), %xmm5
	movdqa	%xmm5, %xmm6
	pxor	%xmm1, %xmm6
	movdqa	%xmm3, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pshufd	$160, %xmm7, %xmm0      # xmm0 = xmm7[0,0,2,2]
	movdqa	%xmm3, %xmm2
	pcmpeqd	%xmm6, %xmm2
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pand	%xmm0, %xmm2
	pshufd	$245, %xmm7, %xmm0      # xmm0 = xmm7[1,1,3,3]
	por	%xmm2, %xmm0
	movdqa	%xmm4, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pshufd	$160, %xmm2, %xmm7      # xmm7 = xmm2[0,0,2,2]
	pcmpeqd	%xmm4, %xmm6
	pshufd	$245, %xmm6, %xmm6      # xmm6 = xmm6[1,1,3,3]
	pand	%xmm7, %xmm6
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	por	%xmm6, %xmm2
	pand	%xmm2, %xmm5
	pandn	%xmm9, %xmm2
	por	%xmm5, %xmm2
	movdqa	%xmm0, %xmm5
	pandn	%xmm2, %xmm5
	pand	%xmm8, %xmm0
	por	%xmm5, %xmm0
	movdqu	%xmm0, (%rbx)
	movq	16(%rbx), %rdi
	cmpq	$191, %rdi
	movl	$190, %ebp
	cmovlq	%rdi, %rbp
	cmpq	$-190, %rdi
	movq	$-190, %rdi
	cmovlq	%rdi, %rbp
	movq	%rbp, 16(%rbx)
	movq	%rdx, %r12
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB16_33
	.align	16, 0x90
.LBB16_29:                              # %if.else.181
                                        #   in Loop: Header=BB16_27 Depth=1
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	cmpq	$512, %rbp              # imm = 0x200
	jl	.LBB16_31
# BB#30:                                # %if.then.184
                                        #   in Loop: Header=BB16_27 Depth=1
	addq	$-1023, %rbp            # imm = 0xFFFFFFFFFFFFFC01
	leaq	8(%rbp,%rbp,2), %rax
	sarq	$4, %rax
	movq	72(%rsp), %rdx          # 8-byte Reload
	addq	%rax, (%rbx,%rdx,8)
	leaq	(%rbp,%rbp,4), %rax
	leaq	8(%r12,%rax), %rax
	sarq	$4, %rax
	movq	%rax, 24(%rbx)
	movl	%r15d, %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	shrl	$22, %r15d
	cmpl	$2, %r14d
	movq	%rax, %rdx
	cmoveq	%r11, %rdx
	cmovneq	%r15, %rax
	imulq	$7, %r10, %rdi
	sarq	$4, %rdi
	addq	%rdx, %rdi
	movq	16(%rbx), %rdx
	leaq	-1023(%rdx,%rdi), %r13
	cmpq	$-511, %r13             # imm = 0xFFFFFFFFFFFFFE01
	movq	$-511, %r8              # imm = 0xFFFFFFFFFFFFFE01
	cmovlq	%r8, %r13
	leaq	8(%r13,%r13,2), %rdi
	sarq	$4, %rdi
	movq	32(%rsp), %rdx          # 8-byte Reload
	addq	%rdi, (%rbx,%rdx,8)
	leaq	(%r13,%r13,4), %rdi
	leaq	8(%r10,%rdi), %rdi
	sarq	$4, %rdi
	movq	%rdi, 16(%rbx)
	cmpl	$1, %r14d
	movq	%rax, %rdi
	cmoveq	%r11, %rdi
	cmovneq	%r15, %rax
	movq	56(%rsp), %r10          # 8-byte Reload
	imulq	$7, %r10, %rdx
	sarq	$4, %rdx
	addq	%rdi, %rdx
	movq	8(%rbx), %rdi
	leaq	-1023(%rdi,%rdx), %rdi
	cmpq	$-511, %rdi             # imm = 0xFFFFFFFFFFFFFE01
	cmovlq	%r8, %rdi
	leaq	8(%rdi,%rdi,2), %rdx
	sarq	$4, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	addq	%rdx, (%rbx,%rcx,8)
	leaq	(%rdi,%rdi,4), %rdx
	leaq	8(%r10,%rdx), %rdx
	sarq	$4, %rdx
	movq	%rdx, 8(%rbx)
	testl	%r14d, %r14d
	cmoveq	%r11, %rax
	movq	64(%rsp), %r10          # 8-byte Reload
	imulq	$7, %r10, %rdx
	sarq	$4, %rdx
	addq	%rax, %rdx
	movq	(%rbx), %rax
	leaq	-1023(%rax,%rdx), %rdx
	cmpq	$-511, %rdx             # imm = 0xFFFFFFFFFFFFFE01
	cmovlq	%r8, %rdx
	leaq	8(%rdx,%rdx,2), %rax
	sarq	$4, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	addq	%rax, (%rbx,%rcx,8)
	leaq	(%rdx,%rdx,4), %rax
	leaq	8(%r10,%rax), %rax
	sarq	$4, %rax
	movq	%rax, (%rbx)
	movl	$1, %eax
	movq	%rbp, %r12
	movq	%r13, %r10
	jmp	.LBB16_32
	.align	16, 0x90
.LBB16_31:                              # %if.else.303
                                        #   in Loop: Header=BB16_27 Depth=1
	movl	%r15d, %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	shrl	$22, %r15d
	cmpl	$2, %r14d
	movq	%rax, %rdx
	cmoveq	%r11, %rdx
	cmovneq	%r15, %rax
	movq	16(%rbx), %rdi
	imulq	$7, %r10, %rcx
	sarq	$4, %rcx
	addq	%rdx, %rcx
	leaq	(%rcx,%rdi), %rdx
	leaq	-1023(%rdi,%rcx), %r13
	cmpq	$511, %rdx              # imm = 0x1FF
	setg	%cl
	cmovleq	%rdx, %r13
	leaq	8(%r13,%r13,2), %rdx
	sarq	$4, %rdx
	movq	32(%rsp), %rdi          # 8-byte Reload
	addq	%rdx, (%rbx,%rdi,8)
	leaq	(%r13,%r13,4), %rdx
	leaq	8(%r10,%rdx), %rdx
	sarq	$4, %rdx
	movq	%rdx, 16(%rbx)
	cmpl	$1, %r14d
	movq	%rax, %rdx
	cmoveq	%r11, %rdx
	cmovneq	%r15, %rax
	movq	8(%rbx), %r8
	movq	56(%rsp), %r10          # 8-byte Reload
	imulq	$7, %r10, %rdi
	sarq	$4, %rdi
	addq	%rdx, %rdi
	leaq	(%rdi,%r8), %rdx
	leaq	-1023(%r8,%rdi), %r15
	movzbl	%cl, %ecx
	cmpq	$511, %rdx              # imm = 0x1FF
	cmovleq	%rdx, %r15
	leal	(%rcx,%rcx), %edx
	leal	4(%rcx,%rcx), %ecx
	cmovlel	%edx, %ecx
	leaq	8(%r15,%r15,2), %rdx
	sarq	$4, %rdx
	movq	24(%rsp), %rdi          # 8-byte Reload
	addq	%rdx, (%rbx,%rdi,8)
	leaq	(%r15,%r15,4), %rdx
	leaq	8(%r10,%rdx), %rdx
	sarq	$4, %rdx
	movq	%rdx, 8(%rbx)
	testl	%r14d, %r14d
	cmoveq	%r11, %rax
	movq	(%rbx), %r8
	movq	64(%rsp), %r10          # 8-byte Reload
	imulq	$7, %r10, %rdi
	sarq	$4, %rdi
	addq	%rax, %rdi
	leaq	(%rdi,%r8), %rdx
	leaq	-1023(%r8,%rdi), %rdi
	movl	%ecx, %eax
	orl	$8, %eax
	cmpq	$511, %rdx              # imm = 0x1FF
	cmovleq	%rdx, %rdi
	cmovlel	%ecx, %eax
	leaq	8(%rdi,%rdi,2), %rcx
	sarq	$4, %rcx
	movq	8(%rsp), %rdx           # 8-byte Reload
	addq	%rcx, (%rbx,%rdx,8)
	leaq	(%rdi,%rdi,4), %rcx
	leaq	8(%r10,%rcx), %rcx
	sarq	$4, %rcx
	movq	%rcx, (%rbx)
	cmpl	$14, %eax
	movq	$-511, %rcx             # imm = 0xFFFFFFFFFFFFFE01
	cmoveq	%rcx, %rbp
	movl	$1, %ecx
	cmovel	%ecx, %eax
	leaq	8(%rbp,%rbp,2), %rcx
	sarq	$4, %rcx
	movq	72(%rsp), %rdx          # 8-byte Reload
	addq	%rcx, (%rbx,%rdx,8)
	leaq	(%rbp,%rbp,4), %rcx
	leaq	8(%r12,%rcx), %rcx
	sarq	$4, %rcx
	movq	%rcx, 24(%rbx)
	movq	%rbp, %r12
	movq	%r13, %r10
	movq	%rdi, %rdx
	movq	%r15, %rdi
.LBB16_32:                              # %if.end.435
                                        #   in Loop: Header=BB16_27 Depth=1
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB16_33:                              # %if.end.435
                                        #   in Loop: Header=BB16_27 Depth=1
	movb	%al, (%r8,%r9)
	decl	%esi
	addq	%r13, %r9
	addq	%rcx, %rbx
	xorl	%ebp, %ebp
	cmpl	$1, %esi
	jg	.LBB16_27
	jmp	.LBB16_34
.LBB16_1:                               # %if.then
	movl	$-1, %ebp
	cmpl	$4, 100(%rdi)
	jne	.LBB16_34
# BB#2:                                 # %if.end
	movq	18488(%rdi), %rax
	movl	$-2, %ebp
	testq	%rax, %rax
	je	.LBB16_34
# BB#3:                                 # %lor.lhs.false
	movl	16(%rax), %ecx
	movl	%ecx, %edx
	andl	$24, %edx
	cmpl	$16, %edx
	jne	.LBB16_34
# BB#4:                                 # %if.end.8
	movl	$-3, %ebp
	cmpl	$256, %ecx              # imm = 0x100
	jb	.LBB16_34
# BB#5:                                 # %lor.lhs.false.13
	cmpl	$9, 20(%rax)
	jb	.LBB16_34
# BB#6:                                 # %if.end.20
	movl	$-4, %ebp
	testb	$32, %cl
	je	.LBB16_34
# BB#7:                                 # %if.end.27
	movl	$-5, %ebp
	testb	$64, %cl
	je	.LBB16_34
# BB#8:                                 # %if.end.34
	movl	$-6, %ebp
	testb	$-128, %cl
	jne	.LBB16_34
# BB#9:                                 # %if.end.41
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	$-7, %ebp
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB16_34
	jp	.LBB16_34
# BB#10:                                # %lor.lhs.false.45
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	.LCPI16_3(%rip), %xmm0
	jne	.LBB16_34
	jp	.LBB16_34
# BB#11:                                # %if.end.52
	shll	$2, %esi
	movl	$9, %eax
	subl	%esi, %eax
	movq	$0, (%rbx)
	testb	$1, 18472(%rdi)
	jne	.LBB16_12
# BB#20:                                # %for.cond.61.preheader
	xorl	%ebp, %ebp
	cmpl	$2, %eax
	jl	.LBB16_34
# BB#21:                                # %for.body.63.preheader
	addq	$8, %rbx
	movl	$8, %r14d
	subl	%esi, %r14d
.LBB16_22:                              # %for.body.63
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	movslq	%eax, %rcx
	imulq	$721464323, %rcx, %rcx  # imm = 0x2B00AC03
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	imull	$381, %ecx, %ecx        # imm = 0x17D
	negl	%ecx
	leal	-190(%rax,%rcx), %eax
	cltq
	movq	%rax, (%rbx)
	addq	$8, %rbx
	decl	%r14d
	jne	.LBB16_22
	jmp	.LBB16_34
.LBB16_12:                              # %for.cond.preheader
	xorl	%ebp, %ebp
	cmpl	$2, %eax
	jl	.LBB16_34
# BB#13:                                # %for.body.preheader
	movl	$7, %ecx
	subl	%esi, %ecx
	leaq	2(%rcx), %rax
	movl	$1, %edx
	cmpq	$1, %rax
	je	.LBB16_17
# BB#14:                                # %vector.body.preheader
	leaq	24(%rbx), %rdx
	incq	%rcx
	xorpd	%xmm0, %xmm0
.LBB16_15:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, -16(%rdx)
	movupd	%xmm0, (%rdx)
	addq	$32, %rdx
	addq	$-4, %rcx
	jne	.LBB16_15
# BB#16:
	movq	%rax, %rdx
.LBB16_17:                              # %middle.block
	cmpq	%rdx, %rax
	je	.LBB16_34
# BB#18:                                # %for.body.preheader218
	leaq	(%rbx,%rdx,8), %rax
	movl	$9, %ecx
	subl	%edx, %ecx
	subl	%esi, %ecx
.LBB16_19:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	addq	$8, %rax
	decl	%ecx
	jne	.LBB16_19
.LBB16_34:                              # %return
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	stc_hscmyk, .Lfunc_end16-stc_hscmyk
	.cfi_endproc

	.align	16, 0x90
	.type	stc_any_depth,@function
stc_any_depth:                          # @stc_any_depth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 56
.Ltmp132:
	.cfi_offset %rbx, -56
.Ltmp133:
	.cfi_offset %r12, -48
.Ltmp134:
	.cfi_offset %r13, -40
.Ltmp135:
	.cfi_offset %r14, -32
.Ltmp136:
	.cfi_offset %r15, -24
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movl	%edx, -36(%rsp)         # 4-byte Spill
	movl	18480(%rdi), %ecx
	movl	$1, %r9d
	shlq	%cl, %r9
	decq	%r9
	movzwl	108(%rdi), %ebp
	movl	100(%rdi), %r11d
	leal	(,%r11,8), %eax
	cmpl	%eax, %ebp
	movl	$8, %ebx
	cmovnel	%ecx, %ebx
	cmpl	$2, %r11d
	movq	%r9, %r10
	jl	.LBB17_7
# BB#1:                                 # %for.body.lr.ph
	movl	%ebx, %ecx
	leal	7(%r11), %r14d
	leal	-2(%r11), %r8d
	testb	$7, %r14b
	je	.LBB17_2
# BB#3:                                 # %for.body.prol.preheader
	andl	$7, %r14d
	xorl	%eax, %eax
	movq	%r9, %r10
	.align	16, 0x90
.LBB17_4:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	shlq	%cl, %r10
	orq	%r9, %r10
	leal	1(%rdx), %eax
	cmpl	%eax, %r14d
	jne	.LBB17_4
# BB#5:
	addl	$2, %edx
	jmp	.LBB17_6
.LBB17_2:
	movl	$1, %edx
	movq	%r9, %r10
.LBB17_6:                               # %for.body.lr.ph.split
	cmpl	$6, %r8d
	jbe	.LBB17_7
	.align	16, 0x90
.LBB17_34:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	shlq	%cl, %r10
	orq	%r9, %r10
	shlq	%cl, %r10
	orq	%r9, %r10
	shlq	%cl, %r10
	orq	%r9, %r10
	shlq	%cl, %r10
	orq	%r9, %r10
	shlq	%cl, %r10
	orq	%r9, %r10
	shlq	%cl, %r10
	orq	%r9, %r10
	shlq	%cl, %r10
	orq	%r9, %r10
	shlq	%cl, %r10
	orq	%r9, %r10
	addl	$8, %edx
	cmpl	%r11d, %edx
	jl	.LBB17_34
.LBB17_7:                               # %for.cond.10.preheader
	cmpl	$0, -36(%rsp)           # 4-byte Folded Reload
	jle	.LBB17_33
# BB#8:                                 # %for.body.13.lr.ph
	movl	%ebx, %r14d
	leaq	18632(%rdi), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	%rax, -32(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB17_9
	.align	16, 0x90
.LBB17_32:                              # %for.end.85.for.body.13_crit_edge
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	100(%rdi), %r11d
	movslq	%r11d, %rax
	movslq	18752(%rdi), %rcx
	imulq	%rax, %rcx
	addq	%rcx, -32(%rsp)         # 8-byte Folded Spill
	movzwl	108(%rdi), %ebp
.LBB17_9:                               # %for.body.13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_14 Depth 2
                                        #     Child Loop BB17_16 Depth 2
                                        #     Child Loop BB17_25 Depth 2
	movzwl	%bp, %r8d
	movl	%r8d, %ecx
	subl	%ebx, %ecx
	cmpl	$8, %ecx
	jl	.LBB17_10
# BB#11:                                # %for.body.21.lr.ph
                                        #   in Loop: Header=BB17_9 Depth=1
	addl	$-8, %r8d
	subl	%ebx, %r8d
	movl	%r8d, %r12d
	shrl	$3, %r12d
	movl	%r12d, %r15d
	leal	1(%r12), %edx
	testb	$3, %dl
	je	.LBB17_12
# BB#13:                                # %for.body.21.prol.preheader
                                        #   in Loop: Header=BB17_9 Depth=1
	andl	$3, %edx
	negl	%edx
	movq	%rsi, %rbx
	movq	-8(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB17_14:                              # %for.body.21.prol
                                        #   Parent Loop BB17_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rbp
	movzbl	(%rbx), %eax
	incq	%rbx
	orq	%rax, %rbp
	addl	$-8, %ecx
	incl	%edx
	jne	.LBB17_14
	jmp	.LBB17_15
	.align	16, 0x90
.LBB17_10:                              #   in Loop: Header=BB17_9 Depth=1
	movq	-8(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB17_18
.LBB17_12:                              #   in Loop: Header=BB17_9 Depth=1
	movq	%rsi, %rbx
	movq	-8(%rsp), %rbp          # 8-byte Reload
.LBB17_15:                              # %for.body.21.lr.ph.split
                                        #   in Loop: Header=BB17_9 Depth=1
	shll	$3, %r12d
	cmpl	$24, %r8d
	jb	.LBB17_17
	.align	16, 0x90
.LBB17_16:                              # %for.body.21
                                        #   Parent Loop BB17_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rbp
	movzbl	(%rbx), %eax
	orq	%rbp, %rax
	shlq	$8, %rax
	movzbl	1(%rbx), %edx
	orq	%rax, %rdx
	shlq	$8, %rdx
	movzbl	2(%rbx), %eax
	orq	%rdx, %rax
	shlq	$8, %rax
	movzbl	3(%rbx), %ebp
	orq	%rax, %rbp
	addl	$-32, %ecx
	addq	$4, %rbx
	cmpl	$7, %ecx
	jg	.LBB17_16
.LBB17_17:                              # %for.cond.18.for.end.27_crit_edge
                                        #   in Loop: Header=BB17_9 Depth=1
	subl	%r12d, %r8d
	leaq	1(%rsi,%r15), %rsi
	movl	%r8d, %ecx
.LBB17_18:                              # %for.end.27
                                        #   in Loop: Header=BB17_9 Depth=1
	testl	%ecx, %ecx
	jle	.LBB17_20
# BB#19:                                # %if.then.30
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	%r13d, -20(%rsp)        # 4-byte Spill
	movl	$8, %ebx
	subl	%ecx, %ebx
	movzbl	(%rsi), %eax
	incq	%rsi
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	shlq	%cl, %rbp
	movq	%rax, %rdx
	movb	%bl, %cl
	shrq	%cl, %rdx
	orq	%rdx, %rbp
	movl	$1, %edx
	movb	%bl, %cl
	shlq	%cl, %rdx
	decq	%rdx
	andq	%rax, %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	jmp	.LBB17_23
	.align	16, 0x90
.LBB17_20:                              # %if.else
                                        #   in Loop: Header=BB17_9 Depth=1
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	js	.LBB17_22
# BB#21:                                #   in Loop: Header=BB17_9 Depth=1
	movl	%r13d, -20(%rsp)        # 4-byte Spill
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	jmp	.LBB17_23
.LBB17_22:                              # %if.then.43
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	%r13d, -20(%rsp)        # 4-byte Spill
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	negl	%ecx
	movl	$1, %eax
	shlq	%cl, %rax
	decq	%rax
	andq	%rax, -8(%rsp)          # 8-byte Folded Spill
	shrq	%cl, %rbp
	movl	%ecx, %ebx
	.align	16, 0x90
.LBB17_23:                              # %if.end.53
                                        #   in Loop: Header=BB17_9 Depth=1
	testl	%r11d, %r11d
	je	.LBB17_31
# BB#24:                                # %for.body.58.lr.ph
                                        #   in Loop: Header=BB17_9 Depth=1
	andq	%r10, %rbp
	leal	-1(%r11), %eax
	movslq	%eax, %rcx
	movq	-48(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx,8), %rsi
	movq	-32(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx), %r8
	leaq	(%rdx,%rcx,8), %rax
	leaq	(%rdx,%rcx,4), %r13
	negl	%r11d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB17_25:                              # %for.body.58
                                        #   Parent Loop BB17_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	18488(%rdi), %rcx
	movl	16(%rcx), %ecx
	andl	$24, %ecx
	cmpl	$16, %ecx
	jne	.LBB17_26
# BB#28:                                # %sw.bb.66
                                        #   in Loop: Header=BB17_25 Depth=2
	movq	%rbp, %rcx
	andq	%r9, %rcx
	movq	(%rsi,%r15,8), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, (%rax,%r15,8)
	jmp	.LBB17_30
	.align	16, 0x90
.LBB17_26:                              # %for.body.58
                                        #   in Loop: Header=BB17_25 Depth=2
	cmpl	$8, %ecx
	jne	.LBB17_29
# BB#27:                                # %sw.bb
                                        #   in Loop: Header=BB17_25 Depth=2
	movq	%rbp, %rcx
	andq	%r9, %rcx
	movq	(%rsi,%r15,8), %r12
	movb	(%r12,%rcx), %cl
	movb	%cl, (%r8,%r15)
	jmp	.LBB17_30
	.align	16, 0x90
.LBB17_29:                              # %sw.default
                                        #   in Loop: Header=BB17_25 Depth=2
	movq	%rbp, %rcx
	andq	%r9, %rcx
	movq	(%rsi,%r15,8), %rdx
	movl	(%rdx,%rcx,4), %ecx
	movl	%ecx, (%r13,%r15,4)
.LBB17_30:                              # %sw.epilog
                                        #   in Loop: Header=BB17_25 Depth=2
	movb	%r14b, %cl
	shrq	%cl, %rbp
	decq	%r15
	cmpl	%r15d, %r11d
	jne	.LBB17_25
.LBB17_31:                              # %for.end.85
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-20(%rsp), %r13d        # 4-byte Reload
	incl	%r13d
	cmpl	-36(%rsp), %r13d        # 4-byte Folded Reload
	movq	-16(%rsp), %rsi         # 8-byte Reload
	jne	.LBB17_32
.LBB17_33:                              # %for.end.91
	movq	-56(%rsp), %rax         # 8-byte Reload
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	stc_any_depth, .Lfunc_end17-stc_any_depth
	.cfi_endproc

	.align	16, 0x90
	.type	stc_any_direct,@function
stc_any_direct:                         # @stc_any_direct
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	retq
.Lfunc_end18:
	.size	stc_any_direct, .Lfunc_end18-stc_any_direct
	.cfi_endproc

	.align	16, 0x90
	.type	stc_rgb24_long,@function
stc_rgb24_long:                         # @stc_rgb24_long
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	je	.LBB19_3
# BB#1:                                 # %for.body.lr.ph
	movq	18632(%rdi), %r8
	movq	18640(%rdi), %r9
	movq	18648(%rdi), %r10
	movq	%rcx, %rax
	.align	16, 0x90
.LBB19_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %edi
	movq	(%r8,%rdi,8), %rdi
	movq	%rdi, (%rax)
	movzbl	1(%rsi), %edi
	movq	(%r9,%rdi,8), %rdi
	movq	%rdi, 8(%rax)
	movzbl	2(%rsi), %edi
	movq	(%r10,%rdi,8), %rdi
	movq	%rdi, 16(%rax)
	addq	$3, %rsi
	addq	$24, %rax
	decl	%edx
	jne	.LBB19_2
.LBB19_3:                               # %for.end
	movq	%rcx, %rax
	retq
.Lfunc_end19:
	.size	stc_rgb24_long, .Lfunc_end19-stc_rgb24_long
	.cfi_endproc

	.align	16, 0x90
	.type	stc_cmyk10_dbyte,@function
stc_cmyk10_dbyte:                       # @stc_cmyk10_dbyte
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	je	.LBB20_13
# BB#1:                                 # %while.body.lr.ph
	leaq	3(%rcx), %rax
	.align	16, 0x90
.LBB20_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	movl	(%rsi), %r8d
	movl	%r8d, %edi
	andl	$3, %edi
	movl	%r8d, %r9d
	shrl	$2, %r9d
	cmpl	$3, %edi
	jne	.LBB20_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	$0, -3(%rax)
	movb	$0, -2(%rax)
	movb	$0, -1(%rax)
	movb	%r9b, (%rax)
	jmp	.LBB20_12
	.align	16, 0x90
.LBB20_4:                               # %if.else
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	%r9b, (%rax)
	movl	%r8d, %r10d
	shrl	$12, %r10d
	cmpl	$2, %edi
	jne	.LBB20_6
# BB#5:                                 # %if.end.thread
                                        #   in Loop: Header=BB20_2 Depth=1
	andl	$1023, %r10d            # imm = 0x3FF
	movb	%r9b, -1(%rax)
	shrl	$22, %r8d
	jmp	.LBB20_8
	.align	16, 0x90
.LBB20_6:                               # %if.end
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	%r10b, -1(%rax)
	shrl	$22, %r8d
	cmpl	$1, %edi
	jne	.LBB20_7
# BB#14:                                # %if.then.21
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	%r9b, -2(%rax)
	jmp	.LBB20_9
.LBB20_7:                               #   in Loop: Header=BB20_2 Depth=1
	movl	%r8d, %r10d
.LBB20_8:                               # %if.else.24
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	%r10b, -2(%rax)
.LBB20_9:                               # %if.end.29
                                        #   in Loop: Header=BB20_2 Depth=1
	testl	%edi, %edi
	je	.LBB20_11
# BB#10:                                # %if.end.29
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	%r8b, %r9b
.LBB20_11:                              # %if.end.29
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	%r9b, -3(%rax)
.LBB20_12:                              # %while.cond.backedge
                                        #   in Loop: Header=BB20_2 Depth=1
	addq	$4, %rsi
	addq	$4, %rax
	testl	%edx, %edx
	jne	.LBB20_2
.LBB20_13:                              # %while.end
	movq	%rcx, %rax
	retq
.Lfunc_end20:
	.size	stc_cmyk10_dbyte, .Lfunc_end20-stc_cmyk10_dbyte
	.cfi_endproc

	.align	16, 0x90
	.type	stc_cmyk10_byte,@function
stc_cmyk10_byte:                        # @stc_cmyk10_byte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 40
.Ltmp142:
	.cfi_offset %rbx, -40
.Ltmp143:
	.cfi_offset %r14, -32
.Ltmp144:
	.cfi_offset %r15, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	testl	%edx, %edx
	je	.LBB21_11
# BB#1:                                 # %while.body.lr.ph
	movq	18632(%rdi), %r8
	movq	18640(%rdi), %r9
	movq	18648(%rdi), %r10
	movq	18656(%rdi), %r11
	leaq	3(%rcx), %rax
	.align	16, 0x90
.LBB21_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	movl	(%rsi), %r15d
	movl	%r15d, %edi
	andl	$3, %edi
	movl	%r15d, %ebp
	shrl	$2, %ebp
	andl	$1023, %ebp             # imm = 0x3FF
	cmpl	$3, %edi
	jne	.LBB21_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB21_2 Depth=1
	movb	(%r8), %bl
	movb	%bl, -3(%rax)
	movb	(%r9), %bl
	movb	%bl, -2(%rax)
	movb	(%r10), %bl
	movb	%bl, -1(%rax)
	movl	%ebp, %edi
	movb	(%r11,%rdi), %bl
	movb	%bl, (%rax)
	jmp	.LBB21_10
	.align	16, 0x90
.LBB21_4:                               # %if.else
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	%ebp, %r14d
	movb	(%r11,%r14), %bl
	movb	%bl, (%rax)
	movl	%r15d, %ebp
	shrl	$12, %ebp
	andl	$1023, %ebp             # imm = 0x3FF
	cmpl	$2, %edi
	jne	.LBB21_6
# BB#5:                                 # %if.end.thread
                                        #   in Loop: Header=BB21_2 Depth=1
	movb	(%r10,%r14), %bl
	movb	%bl, -1(%rax)
	shrl	$22, %r15d
	jmp	.LBB21_8
	.align	16, 0x90
.LBB21_6:                               # %if.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	%ebp, %ebx
	movb	(%r10,%rbx), %bl
	movb	%bl, -1(%rax)
	shrl	$22, %r15d
	cmpl	$1, %edi
	jne	.LBB21_7
# BB#12:                                # %if.then.36
                                        #   in Loop: Header=BB21_2 Depth=1
	movb	(%r9,%r14), %bl
	jmp	.LBB21_9
.LBB21_7:                               #   in Loop: Header=BB21_2 Depth=1
	movl	%r15d, %ebp
.LBB21_8:                               # %if.else.40
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	%ebp, %ebx
	movb	(%r9,%rbx), %bl
.LBB21_9:                               # %if.end.46
                                        #   in Loop: Header=BB21_2 Depth=1
	movb	%bl, -2(%rax)
	testl	%edi, %edi
	movl	%r15d, %edi
	cmoveq	%r14, %rdi
	movb	(%r8,%rdi), %bl
	movb	%bl, -3(%rax)
.LBB21_10:                              # %while.cond.backedge
                                        #   in Loop: Header=BB21_2 Depth=1
	addq	$4, %rsi
	addq	$4, %rax
	testl	%edx, %edx
	jne	.LBB21_2
.LBB21_11:                              # %while.end
	movq	%rcx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	stc_cmyk10_byte, .Lfunc_end21-stc_cmyk10_byte
	.cfi_endproc

	.align	16, 0x90
	.type	stc_cmyk10_dlong,@function
stc_cmyk10_dlong:                       # @stc_cmyk10_dlong
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	je	.LBB22_11
# BB#1:                                 # %while.body.lr.ph
	leaq	24(%rcx), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB22_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	movl	(%rsi), %r8d
	movl	%r8d, %r10d
	andl	$3, %r10d
	movl	%r8d, %edi
	shrl	$2, %edi
	andl	$1023, %edi             # imm = 0x3FF
	cmpl	$3, %r10d
	jne	.LBB22_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB22_2 Depth=1
	movups	%xmm0, -24(%rax)
	movq	$0, -8(%rax)
	movl	%edi, %edi
	movq	%rdi, (%rax)
	jmp	.LBB22_10
	.align	16, 0x90
.LBB22_4:                               # %if.else
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	%edi, %r9d
	movq	%r9, (%rax)
	movl	%r8d, %edi
	shrl	$12, %edi
	andl	$1023, %edi             # imm = 0x3FF
	cmpl	$2, %r10d
	jne	.LBB22_6
# BB#5:                                 # %if.end.thread
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	%r9, -8(%rax)
	shrl	$22, %r8d
	jmp	.LBB22_8
	.align	16, 0x90
.LBB22_6:                               # %if.end
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	%edi, %edi
	movq	%rdi, -8(%rax)
	shrl	$22, %r8d
	cmpl	$1, %r10d
	jne	.LBB22_7
# BB#12:                                # %if.then.21
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	%r9, -16(%rax)
	jmp	.LBB22_9
.LBB22_7:                               #   in Loop: Header=BB22_2 Depth=1
	movl	%r8d, %edi
.LBB22_8:                               # %if.else.24
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	%edi, %edi
	movq	%rdi, -16(%rax)
.LBB22_9:                               # %if.end.29
                                        #   in Loop: Header=BB22_2 Depth=1
	testl	%r10d, %r10d
	movl	%r8d, %edi
	cmoveq	%r9, %rdi
	movq	%rdi, -24(%rax)
.LBB22_10:                              # %while.cond.backedge
                                        #   in Loop: Header=BB22_2 Depth=1
	addq	$4, %rsi
	addq	$32, %rax
	testl	%edx, %edx
	jne	.LBB22_2
.LBB22_11:                              # %while.end
	movq	%rcx, %rax
	retq
.Lfunc_end22:
	.size	stc_cmyk10_dlong, .Lfunc_end22-stc_cmyk10_dlong
	.cfi_endproc

	.align	16, 0x90
	.type	stc_cmyk10_long,@function
stc_cmyk10_long:                        # @stc_cmyk10_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 40
.Ltmp150:
	.cfi_offset %rbx, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	testl	%edx, %edx
	je	.LBB23_11
# BB#1:                                 # %while.body.lr.ph
	movq	18632(%rdi), %r8
	movq	18640(%rdi), %r9
	movq	18648(%rdi), %r10
	movq	18656(%rdi), %r11
	leaq	24(%rcx), %rax
	.align	16, 0x90
.LBB23_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	movl	(%rsi), %r15d
	movl	%r15d, %ebx
	andl	$3, %ebx
	movl	%r15d, %ebp
	shrl	$2, %ebp
	andl	$1023, %ebp             # imm = 0x3FF
	cmpl	$3, %ebx
	jne	.LBB23_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	(%r8), %rdi
	movq	%rdi, -24(%rax)
	movq	(%r9), %rdi
	movq	%rdi, -16(%rax)
	movq	(%r10), %rdi
	movq	%rdi, -8(%rax)
	movl	%ebp, %edi
	movq	(%r11,%rdi,8), %rdi
	movq	%rdi, (%rax)
	jmp	.LBB23_10
	.align	16, 0x90
.LBB23_4:                               # %if.else
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	%ebp, %r14d
	movq	(%r11,%r14,8), %rbp
	movq	%rbp, (%rax)
	movl	%r15d, %ebp
	shrl	$12, %ebp
	andl	$1023, %ebp             # imm = 0x3FF
	cmpl	$2, %ebx
	jne	.LBB23_6
# BB#5:                                 # %if.end.thread
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	(%r10,%r14,8), %rdi
	movq	%rdi, -8(%rax)
	shrl	$22, %r15d
	jmp	.LBB23_8
	.align	16, 0x90
.LBB23_6:                               # %if.end
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	%ebp, %edi
	movq	(%r10,%rdi,8), %rdi
	movq	%rdi, -8(%rax)
	shrl	$22, %r15d
	cmpl	$1, %ebx
	jne	.LBB23_7
# BB#12:                                # %if.then.36
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	(%r9,%r14,8), %rdi
	jmp	.LBB23_9
.LBB23_7:                               #   in Loop: Header=BB23_2 Depth=1
	movl	%r15d, %ebp
.LBB23_8:                               # %if.else.40
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	%ebp, %edi
	movq	(%r9,%rdi,8), %rdi
.LBB23_9:                               # %if.end.46
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	%rdi, -16(%rax)
	testl	%ebx, %ebx
	movl	%r15d, %edi
	cmoveq	%r14, %rdi
	movq	(%r8,%rdi,8), %rdi
	movq	%rdi, -24(%rax)
.LBB23_10:                              # %while.cond.backedge
                                        #   in Loop: Header=BB23_2 Depth=1
	addq	$4, %rsi
	addq	$32, %rax
	testl	%edx, %edx
	jne	.LBB23_2
.LBB23_11:                              # %while.end
	movq	%rcx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	stc_cmyk10_long, .Lfunc_end23-stc_cmyk10_long
	.cfi_endproc

	.align	16, 0x90
	.type	stc_cmyk10_float,@function
stc_cmyk10_float:                       # @stc_cmyk10_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 32
.Ltmp157:
	.cfi_offset %rbx, -32
.Ltmp158:
	.cfi_offset %r14, -24
.Ltmp159:
	.cfi_offset %rbp, -16
	testl	%edx, %edx
	je	.LBB24_14
# BB#1:                                 # %while.body.lr.ph
	movq	18632(%rdi), %r8
	movq	18640(%rdi), %r9
	movq	18648(%rdi), %r10
	movq	18656(%rdi), %r11
	leaq	12(%rcx), %rax
	jmp	.LBB24_2
.LBB24_11:                              # %if.then.48
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	(%r8,%r14,4), %edi
	jmp	.LBB24_12
	.align	16, 0x90
.LBB24_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	movl	(%rsi), %edi
	movl	%edi, %ebx
	andl	$3, %ebx
	movl	%edi, %ebp
	shrl	$2, %ebp
	andl	$1023, %ebp             # imm = 0x3FF
	cmpl	$3, %ebx
	jne	.LBB24_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	(%r8), %edi
	movl	%edi, -12(%rax)
	movl	(%r9), %edi
	movl	%edi, -8(%rax)
	movl	(%r10), %edi
	movl	%edi, -4(%rax)
	movl	%ebp, %edi
	movl	(%r11,%rdi,4), %edi
	movl	%edi, (%rax)
	jmp	.LBB24_13
	.align	16, 0x90
.LBB24_4:                               # %if.else
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	%ebp, %r14d
	movl	(%r11,%r14,4), %ebp
	movl	%ebp, (%rax)
	movl	%edi, %ebp
	shrl	$12, %ebp
	andl	$1023, %ebp             # imm = 0x3FF
	cmpl	$2, %ebx
	jne	.LBB24_6
# BB#5:                                 # %if.end.46.thread58
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	(%r10,%r14,4), %ebx
	movl	%ebx, -4(%rax)
	shrl	$22, %edi
	movl	%ebp, %ebx
	movl	(%r9,%rbx,4), %ebx
	jmp	.LBB24_8
	.align	16, 0x90
.LBB24_6:                               # %if.end
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	%ebp, %ebp
	movl	(%r10,%rbp,4), %ebp
	movl	%ebp, -4(%rax)
	shrl	$22, %edi
	cmpl	$1, %ebx
	jne	.LBB24_10
# BB#7:                                 # %if.end.46.thread
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	(%r9,%r14,4), %ebx
.LBB24_8:                               # %if.else.52
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	%ebx, -8(%rax)
	jmp	.LBB24_9
.LBB24_10:                              # %if.end.46
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	%edi, %ebp
	movl	(%r9,%rbp,4), %ebp
	movl	%ebp, -8(%rax)
	testl	%ebx, %ebx
	je	.LBB24_11
	.align	16, 0x90
.LBB24_9:                               # %if.else.52
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	%edi, %edi
	movl	(%r8,%rdi,4), %edi
.LBB24_12:                              # %while.cond.backedge
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	%edi, -12(%rax)
.LBB24_13:                              # %while.cond.backedge
                                        #   in Loop: Header=BB24_2 Depth=1
	addq	$4, %rsi
	addq	$16, %rax
	testl	%edx, %edx
	jne	.LBB24_2
.LBB24_14:                              # %while.end
	movq	%rcx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	stc_cmyk10_float, .Lfunc_end24-stc_cmyk10_float
	.cfi_endproc

	.align	16, 0x90
	.type	stc_cmyk32_long,@function
stc_cmyk32_long:                        # @stc_cmyk32_long
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	je	.LBB25_3
# BB#1:                                 # %for.body.lr.ph
	movq	18632(%rdi), %r8
	movq	18640(%rdi), %r9
	movq	18648(%rdi), %r10
	movq	18656(%rdi), %r11
	movq	%rcx, %rax
	.align	16, 0x90
.LBB25_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %edi
	movq	(%r8,%rdi,8), %rdi
	movq	%rdi, (%rax)
	movzbl	1(%rsi), %edi
	movq	(%r9,%rdi,8), %rdi
	movq	%rdi, 8(%rax)
	movzbl	2(%rsi), %edi
	movq	(%r10,%rdi,8), %rdi
	movq	%rdi, 16(%rax)
	movzbl	3(%rsi), %edi
	movq	(%r11,%rdi,8), %rdi
	movq	%rdi, 24(%rax)
	addq	$4, %rsi
	addq	$32, %rax
	decl	%edx
	jne	.LBB25_2
.LBB25_3:                               # %for.end
	movq	%rcx, %rax
	retq
.Lfunc_end25:
	.size	stc_cmyk32_long, .Lfunc_end25-stc_cmyk32_long
	.cfi_endproc

	.align	16, 0x90
	.type	stc_rle,@function
stc_rle:                                # @stc_rle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp161:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp162:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp163:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp164:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp166:
	.cfi_def_cfa_offset 64
.Ltmp167:
	.cfi_offset %rbx, -56
.Ltmp168:
	.cfi_offset %r12, -48
.Ltmp169:
	.cfi_offset %r13, -40
.Ltmp170:
	.cfi_offset %r14, -32
.Ltmp171:
	.cfi_offset %r15, -24
.Ltmp172:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r8
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB26_7
# BB#1:                                 # %while.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB26_22
# BB#2:
	movl	$1, %r13d
	.align	16, 0x90
.LBB26_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_4 Depth 2
                                        #     Child Loop BB26_15 Depth 2
	movb	(%rbx), %cl
	movslq	%r13d, %r13
	movslq	%ebp, %rax
	.align	16, 0x90
.LBB26_4:                               # %while.cond.2
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r13, %rax
	jle	.LBB26_10
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB26_4 Depth=2
	movzbl	(%rbx,%r13), %edx
	movzbl	%cl, %esi
	cmpl	%edx, %esi
	jne	.LBB26_10
# BB#6:                                 # %while.body.8
                                        #   in Loop: Header=BB26_4 Depth=2
	incq	%r13
	movl	$129, %r14d
	cmpl	$129, %r13d
	jne	.LBB26_4
	jmp	.LBB26_13
	.align	16, 0x90
.LBB26_10:                              # %while.end
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$2, %r13d
	jg	.LBB26_12
# BB#11:                                # %while.end
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	%r13d, %ebp
	je	.LBB26_12
# BB#14:                                # %for.cond.preheader
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r13d, %rsi
	movl	%r13d, %edx
	movl	$1, %r9d
	.align	16, 0x90
.LBB26_15:                              # %for.cond
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, %r13d
	jg	.LBB26_16
# BB#17:                                # %for.cond
                                        #   in Loop: Header=BB26_15 Depth=2
	cmpq	%rsi, %rax
	jle	.LBB26_18
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB26_15 Depth=2
	movzbl	%cl, %ecx
	movzbl	(%rbx,%rsi), %edi
	incl	%r13d
	cmpl	%edi, %ecx
	cmovnel	%r9d, %r13d
	incq	%rsi
	incl	%edx
	movl	$128, %r14d
	cmpl	$128, %edx
	movb	%dil, %cl
	jne	.LBB26_15
	jmp	.LBB26_20
	.align	16, 0x90
.LBB26_12:                              #   in Loop: Header=BB26_3 Depth=1
	movl	%r13d, %r14d
.LBB26_13:                              # %if.then.16
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	$257, %eax              # imm = 0x101
	subl	%r14d, %eax
	movb	%al, (%r8)
	movb	%cl, 1(%r8)
	addq	$2, %r8
	addl	$2, %r15d
	movslq	%r14d, %r12
	movl	$1, %r13d
	jmp	.LBB26_21
.LBB26_16:                              #   in Loop: Header=BB26_3 Depth=1
	movl	%edx, %r14d
	jmp	.LBB26_20
.LBB26_18:                              #   in Loop: Header=BB26_3 Depth=1
	movl	%edx, %r14d
.LBB26_20:                              # %for.end
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$3, %r13d
	movl	$0, %eax
	cmovll	%eax, %r13d
	subl	%r13d, %r14d
	leal	255(%r14), %eax
	leaq	1(%r8), %rdi
	movb	%al, (%r8)
	movslq	%r14d, %r12
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r8, (%rsp)             # 8-byte Spill
	callq	memcpy
	movq	(%rsp), %r8             # 8-byte Reload
	leal	1(%r15,%r14), %r15d
	leaq	1(%r8,%r12), %r8
.LBB26_21:                              # %while.cond.backedge
                                        #   in Loop: Header=BB26_3 Depth=1
	addq	%r12, %rbx
	subl	%r14d, %ebp
	jg	.LBB26_3
	jmp	.LBB26_22
.LBB26_7:                               # %while.cond.63.preheader
	testl	%ebp, %ebp
	jle	.LBB26_22
# BB#8:
	movl	$129, %eax
	.align	16, 0x90
.LBB26_9:                               # %while.body.66
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$129, %ebp
	movl	%ebp, %ecx
	cmovgl	%eax, %ecx
	movl	$257, %edx              # imm = 0x101
	subl	%ecx, %edx
	subl	%ecx, %ebp
	movb	%dl, (%r8,%r15)
	movb	$0, 1(%r8,%r15)
	leaq	2(%r15), %r15
	jg	.LBB26_9
.LBB26_22:                              # %if.end.77
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	stc_rle, .Lfunc_end26-stc_rle
	.cfi_endproc

	.align	16, 0x90
	.type	stc_print_escpcmd,@function
stc_print_escpcmd:                      # @stc_print_escpcmd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp174:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp175:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp176:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp177:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp178:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp179:
	.cfi_def_cfa_offset 80
.Ltmp180:
	.cfi_offset %rbx, -56
.Ltmp181:
	.cfi_offset %r12, -48
.Ltmp182:
	.cfi_offset %r13, -40
.Ltmp183:
	.cfi_offset %r14, -32
.Ltmp184:
	.cfi_offset %r15, -24
.Ltmp185:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	18796(%rbx), %r12d
	movl	18800(%rbx), %r14d
	testb	$-128, 18474(%rbx)
	jne	.LBB27_4
# BB#1:                                 # %if.then
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movl	%ecx, %ebp
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	18704(%rbx), %rdi
	movl	18712(%rbx), %edx
	movl	$1, %esi
	movq	%r15, %rcx
	callq	fwrite
	cmpl	$0, 18792(%rbx)
	jle	.LBB27_3
# BB#2:                                 # %if.then.9
	movl	$27, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	$43, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	18772(%rbx), %eax
	imull	18788(%rbx), %eax
	cltq
	imulq	$1717986919, %rax, %rdi # imm = 0x66666667
	movq	%rdi, %rax
	shrq	$63, %rax
	sarq	$34, %rdi
	addl	%eax, %edi
	movq	%r15, %rsi
	callq	fputc
.LBB27_3:                               # %if.end
	orb	$-128, 18474(%rbx)
	movl	20(%rsp), %r8d          # 4-byte Reload
	movl	%ebp, %ecx
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB27_4:                               # %if.end.17
	leal	1(%r13), %ebp
	movslq	%r13d, %rsi
	movq	18832(%rbx), %rax
	movb	$13, (%rax,%rsi)
	cmpl	%r12d, %r14d
	je	.LBB27_17
# BB#5:                                 # %if.then.19
	movl	18792(%rbx), %edi
	testl	%edi, %edi
	jle	.LBB27_21
# BB#6:                                 # %land.lhs.true
	subl	%r12d, %r14d
	movl	%r14d, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	jne	.LBB27_21
# BB#7:                                 # %if.end.32
	movl	%r14d, %eax
	cltd
	idivl	%edi
	cmpl	$6, %eax
	jle	.LBB27_8
.LBB27_21:                              # %if.then.35
	movslq	%ebp, %rax
	movq	18832(%rbx), %rdx
	movb	$27, (%rdx,%rax)
	movq	18832(%rbx), %rax
	movb	$40, 2(%rsi,%rax)
	movq	18832(%rbx), %rax
	movb	$86, 3(%rsi,%rax)
	movq	18832(%rbx), %rax
	movb	$2, 4(%rsi,%rax)
	movq	18832(%rbx), %rax
	movb	$0, 5(%rsi,%rax)
	movb	18800(%rbx), %al
	movq	18832(%rbx), %rdx
	movb	%al, 6(%rsi,%rdx)
	movb	18801(%rbx), %al
	leal	8(%rsi), %ebp
	movq	18832(%rbx), %rdx
	movb	%al, 7(%rsi,%rdx)
.LBB27_16:                              # %if.end.86
	movl	18800(%rbx), %eax
	movl	%eax, 18796(%rbx)
.LBB27_17:                              # %if.end.91
	cmpl	$2, 100(%rbx)
	jl	.LBB27_20
# BB#18:                                # %land.lhs.true.94
	movslq	%ecx, %rax
	movb	stc_print_escpcmd.stc_colors(%rax), %al
	movzbl	%al, %eax
	cmpl	%eax, 18776(%rbx)
	je	.LBB27_20
# BB#19:                                # %if.then.101
	movslq	%ebp, %rdx
	movq	18832(%rbx), %rcx
	movb	$27, (%rcx,%rdx)
	movq	18832(%rbx), %rcx
	movb	$114, 1(%rdx,%rcx)
	movl	%eax, 18776(%rbx)
	leal	3(%rdx), %ebp
	movq	18832(%rbx), %rsi
	movb	%al, 2(%rdx,%rsi)
.LBB27_20:                              # %if.end.125
	movslq	%ebp, %rcx
	movq	18832(%rbx), %rax
	movb	$27, (%rax,%rcx)
	movq	18832(%rbx), %rax
	movb	$46, 1(%rcx,%rax)
	movl	$3072, %eax             # imm = 0xC00
	andq	18472(%rbx), %rax
	cmpq	$1024, %rax             # imm = 0x400
	movq	18832(%rbx), %rax
	setne	2(%rcx,%rax)
	movb	18780(%rbx), %al
	movq	18832(%rbx), %rdx
	movb	%al, 3(%rcx,%rdx)
	movb	18784(%rbx), %al
	movq	18832(%rbx), %rdx
	movb	%al, 4(%rcx,%rdx)
	movq	18832(%rbx), %rax
	movb	%r8b, 5(%rcx,%rax)
	leal	(,%r9,8), %eax
	movq	18832(%rbx), %rdx
	movb	%al, 6(%rcx,%rdx)
	shrl	$5, %r9d
	leal	8(%rcx), %eax
	movq	18832(%rbx), %rdx
	movb	%r9b, 7(%rcx,%rdx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_8:                               # %while.cond.preheader
	testl	%eax, %eax
	je	.LBB27_16
# BB#9:                                 # %while.body.lr.ph
	movslq	%ebp, %rdi
	leal	-1(%rax), %r10d
	testb	$3, %al
	je	.LBB27_10
# BB#11:                                # %while.body.prol.preheader
	movl	%eax, %esi
	andl	$3, %esi
	negl	%esi
	movl	%eax, %edx
	.align	16, 0x90
.LBB27_12:                              # %while.body.prol
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	movq	18832(%rbx), %rbp
	movb	$10, (%rbp,%rdi)
	incq	%rdi
	incl	%esi
	jne	.LBB27_12
	jmp	.LBB27_13
.LBB27_10:
	movl	%eax, %edx
.LBB27_13:                              # %while.body.lr.ph.split
	addl	%r13d, %eax
	cmpl	$3, %r10d
	jb	.LBB27_15
	.align	16, 0x90
.LBB27_14:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	18832(%rbx), %rsi
	movb	$10, (%rsi,%rdi)
	movq	18832(%rbx), %rsi
	movb	$10, 1(%rsi,%rdi)
	movq	18832(%rbx), %rsi
	movb	$10, 2(%rsi,%rdi)
	addl	$-4, %edx
	movq	18832(%rbx), %rsi
	movb	$10, 3(%rsi,%rdi)
	leaq	4(%rdi), %rdi
	jne	.LBB27_14
.LBB27_15:                              # %while.cond.if.end.86.loopexit_crit_edge
	incl	%eax
	movl	%eax, %ebp
	jmp	.LBB27_16
.Lfunc_end27:
	.size	stc_print_escpcmd, .Lfunc_end27-stc_print_escpcmd
	.cfi_endproc

	.type	stcolor_procs,@object   # @stcolor_procs
	.data
	.align	8
stcolor_procs:
	.quad	stc_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	stc_close
	.quad	0
	.quad	stc_map_color_cmyk
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	stc_get_params
	.quad	stc_put_params
	.quad	stc_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	stcolor_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stcolor"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	stc_dither,@object      # @stc_dither
	.section	.rodata,"a",@progbits
	.align	16
stc_dither:
	.quad	.L.str.55
	.quad	stc_gscmyk
	.long	76                      # 0x4c
	.long	0                       # 0x0
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	.L.str.56
	.quad	stc_hscmyk
	.long	372                     # 0x174
	.long	9                       # 0x9
	.quad	0                       # double 0.000000e+00
	.quad	4652209618980700160     # double 1.023000e+03
	.quad	.L.str.57
	.quad	stc_gsmono
	.long	9                       # 0x9
	.long	0                       # 0x0
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	.L.str.58
	.quad	stc_gsrgb
	.long	11                      # 0xb
	.long	0                       # 0x0
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	.L.str.59
	.quad	stc_fs
	.long	273                     # 0x111
	.long	6                       # 0x6
	.quad	0                       # double 0.000000e+00
	.quad	4715268809320038400     # double 1.677722e+07
	.quad	.L.str.60
	.quad	stc_fs
	.long	275                     # 0x113
	.long	12                      # 0xc
	.quad	0                       # double 0.000000e+00
	.quad	4715268809320038400     # double 1.677722e+07
	.quad	.L.str.61
	.quad	stc_fs
	.long	276                     # 0x114
	.long	15                      # 0xf
	.quad	0                       # double 0.000000e+00
	.quad	4715268809320038400     # double 1.677722e+07
	.quad	.L.str.62
	.quad	stc_fscmyk
	.long	276                     # 0x114
	.long	15                      # 0xf
	.quad	0                       # double 0.000000e+00
	.quad	4715268809320038400     # double 1.677722e+07
	.quad	.L.str.63
	.quad	stc_fs2
	.long	395                     # 0x18b
	.long	0                       # 0x0
	.quad	0                       # double 0.000000e+00
	.quad	4643176031446892544     # double 2.550000e+02
	.zero	40
	.size	stc_dither, 400

	.type	defext,@object          # @defext
	.data
	.align	4
defext:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	defext, 8

	.type	gs_stcolor_device,@object # @gs_stcolor_device
	.globl	gs_stcolor_device
	.align	8
gs_stcolor_device:
	.long	18880                   # 0x49c0
	.zero	4
	.quad	stcolor_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	3258187776              # float -4.500000e+01
	.long	3258187776              # float -4.500000e+01
	.long	1091567616              # float 9.000000e+00
	.long	1109382922              # float 3.996000e+01
	.long	1104674816              # float 2.700000e+01
	.long	1091567616              # float 9.000000e+00
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	stc_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.quad	256                     # 0x100
	.long	1                       # 0x1
	.zero	4
	.quad	stc_dither
	.quad	0
	.zero	32
	.zero	16
	.zero	32
	.quad	defext
	.quad	defext
	.quad	defext
	.quad	defext
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.zero	32
	.zero	12
	.zero	12
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.size	gs_stcolor_device, 18880

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"stcolor/algorithms"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"stcolor/code"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"stcolor/transfer"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"stcolor/init"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata,"a",@progbits
.L.str.6:
	.asciz	"\033@\033(G\001\000\001\033(i\001\000w\033(U\001\000u\033(C\002\000hh\033(c\004\000ttbb\033U"
	.size	.L.str.6, 39

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"stcolor/release"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033@\f"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1.91"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Version"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"BitsPerComponent"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Algorithms"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"plain"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"deltarow"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"runlength"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"OutputCode"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"st800"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"stcii"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"stc"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Model"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Unidirectional"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Microweave"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Softweave"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"noWeave"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Flag0"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Flag1"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Flag2"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Flag3"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Flag4"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"escp_Band"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"escp_Width"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"escp_Height"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"escp_Top"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"escp_Bottom"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"escp_Init"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"escp_Release"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Dithering"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ColorAdjustMatrix"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Kcoding"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Ktransfer"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Rcoding"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Rtransfer"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Gcoding"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Gtransfer"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Bcoding"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Btransfer"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Ccoding"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Ctransfer"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Mcoding"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Mtransfer"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Ycoding"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Ytransfer"
	.size	.L.str.52, 10

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"BitsPerPixel"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"stc_put_params"
	.size	.L.str.54, 15

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gscmyk"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"hscmyk"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gsmono"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gsrgb"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"fsmono"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"fsrgb"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"fsx4"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"fscmyk"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"fs2"
	.size	.L.str.63, 4

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"stc_print_page/ext_line"
	.size	.L.str.64, 24

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"stc_print_page/col_line"
	.size	.L.str.65, 24

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"stc_print_page/alg_line"
	.size	.L.str.66, 24

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"stc_print_page/buf"
	.size	.L.str.67, 19

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"stc_print_page/prt_width"
	.size	.L.str.68, 25

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"stc_print_page/prt_data"
	.size	.L.str.69, 24

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"stc_print_page/prt"
	.size	.L.str.70, 19

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"stc_print_page/seed_row"
	.size	.L.str.71, 24

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"stc_print_page/escp_data"
	.size	.L.str.72, 25

	.type	stc_print_page.rgb2cmyk,@object # @stc_print_page.rgb2cmyk
stc_print_page.rgb2cmyk:
	.asciz	"\001\f\n\b\006\004\002"
	.size	stc_print_page.rgb2cmyk, 8

	.type	stc_print_escpcmd.stc_colors,@object # @stc_print_escpcmd.stc_colors
stc_print_escpcmd.stc_colors:
	.asciz	"\002\001\004"
	.size	stc_print_escpcmd.stc_colors, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
