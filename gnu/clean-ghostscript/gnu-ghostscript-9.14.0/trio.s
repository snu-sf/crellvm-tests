	.text
	.file	"trio.bc"
	.globl	trio_printf
	.align	16, 0x90
	.type	trio_printf,@function
trio_printf:                            # @trio_printf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 208
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB0_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB0_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movq	stdout(%rip), %rdi
	leaq	176(%rsp), %r8
	xorl	%esi, %esi
	movl	$TrioOutStreamFile, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioFormat
	addq	$200, %rsp
	retq
.Lfunc_end0:
	.size	trio_printf, .Lfunc_end0-trio_printf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	536870912               # float 1.08420217E-19
.LCPI1_3:
	.long	1073741824              # float 2
.LCPI1_4:
	.long	872415232               # float 1.1920929E-7
.LCPI1_5:
	.long	629145600               # float 2.22044605E-16
.LCPI1_7:
	.long	1092616192              # float 10
.LCPI1_8:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	9218868437227405312     # double +Inf
.LCPI1_10:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_2:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI1_6:
	.quad	-3335172839683962811    # x86_fp80 9.99999899999999909966E-5
	.short	16369
	.zero	6
.LCPI1_9:
	.quad	-3335171328526686932    # x86_fp80 1.00000000000000000001E-4
	.short	16369
	.zero	6
	.text
	.align	16, 0x90
	.type	TrioFormat,@function
TrioFormat:                             # @TrioFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 56
	subq	$4792, %rsp             # imm = 0x12B8
.Ltmp7:
	.cfi_def_cfa_offset 4848
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rbx, 320(%rsp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %rbp
	leaq	4736(%rsp), %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset
	movq	%r13, 4736(%rsp)
	movq	%rbp, 4760(%rsp)
	movl	%r12d, 4780(%rsp)
	movl	$0, 4784(%rsp)
	leaq	640(%rsp), %rdx
	movl	$1, %edi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	TrioParse
	testl	%eax, %eax
	js	.LBB1_363
# BB#1:                                 # %if.end
	leaq	4736(%rsp), %r15
	flds	.LCPI1_5(%rip)
	fstpt	80(%rsp)                # 10-byte Folded Spill
	flds	.LCPI1_3(%rip)
	fstpt	56(%rsp)                # 10-byte Folded Spill
	flds	.LCPI1_4(%rip)
	fstpt	68(%rsp)                # 10-byte Folded Spill
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_361:                              # %sw.epilog.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %r15
	movq	288(%rsp), %rax         # 8-byte Reload
	addq	$2, %rax
	movl	680(%rsp,%r12), %r13d
.LBB1_2:                                # %while.cond.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_32 Depth 2
                                        #     Child Loop BB1_88 Depth 2
                                        #     Child Loop BB1_259 Depth 2
                                        #     Child Loop BB1_288 Depth 2
                                        #     Child Loop BB1_292 Depth 2
                                        #     Child Loop BB1_304 Depth 2
                                        #     Child Loop BB1_318 Depth 2
                                        #     Child Loop BB1_313 Depth 2
                                        #       Child Loop BB1_321 Depth 3
                                        #     Child Loop BB1_327 Depth 2
                                        #     Child Loop BB1_338 Depth 2
                                        #     Child Loop BB1_342 Depth 2
	cltq
	leaq	-1(%rax), %r12
	shlq	$6, %rax
	leaq	576(%rsp), %rcx
	leaq	(%rax,%rcx), %rbx
	.align	16, 0x90
.LBB1_3:                                # %while.cond.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rcx
	movl	64(%rbx), %eax
	addq	$64, %rbx
	leaq	1(%rcx), %r12
	cmpl	$7, %eax
	je	.LBB1_3
# BB#4:                                 # %while.cond.1.preheader.i
                                        #   in Loop: Header=BB1_2 Depth=1
	shlq	$6, %r12
	cmpl	676(%rsp,%r12), %r13d
	jge	.LBB1_12
# BB#5:                                 #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	leaq	676(%rsp,%r12), %r14
	.align	16, 0x90
.LBB1_6:                                # %while.body.5.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r13d, %rbp
	movq	320(%rsp), %rax         # 8-byte Reload
	movsbl	(%rax,%rbp), %esi
	incq	%rbp
	cmpl	$37, %esi
	jne	.LBB1_9
# BB#7:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	320(%rsp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.i
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	$37, %esi
	movq	%r15, %rdi
	callq	*4736(%rsp)
	addl	$2, %r13d
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_9:                                # %if.else.i
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	%r15, %rdi
	callq	*4736(%rsp)
	movl	%ebp, %r13d
.LBB1_10:                               # %while.cond.1.backedge.i
                                        #   in Loop: Header=BB1_6 Depth=2
	cmpl	(%r14), %r13d
	jl	.LBB1_6
# BB#11:                                # %while.cond.1.while.end.23_crit_edge.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	(%rbx), %eax
	movq	288(%rsp), %rcx         # 8-byte Reload
.LBB1_12:                               # %while.end.23.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %eax
	je	.LBB1_362
# BB#13:                                # %if.end.30.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	648(%rsp,%r12), %rdx
	movl	656(%rsp,%r12), %r13d
	testl	$131072, %edx           # imm = 0x20000
	jne	.LBB1_15
# BB#14:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	movq	%rdx, %rcx
	jmp	.LBB1_18
	.align	16, 0x90
.LBB1_15:                               # %if.then.37.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	movslq	%r13d, %rcx
	shlq	$6, %rcx
	movl	688(%rsp,%rcx), %r13d
	testl	%r13d, %r13d
	js	.LBB1_17
# BB#16:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	jmp	.LBB1_18
.LBB1_17:                               # %if.then.44.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	andq	$-8201, %rcx            # imm = 0xFFFFFFFFFFFFDFF7
	orq	$8, %rcx
	negl	%r13d
	.align	16, 0x90
.LBB1_18:                               # %if.end.47.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %r14
	movl	$-1, %r15d
	testl	$262144, %ecx           # imm = 0x40000
	je	.LBB1_21
# BB#19:                                # %if.then.50.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	660(%rsp,%r12), %r15d
	testl	$524288, %ecx           # imm = 0x80000
	je	.LBB1_21
# BB#20:                                # %if.then.56.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rsi
	movslq	%r15d, %rcx
	shlq	$6, %rcx
	movl	688(%rsp,%rcx), %r15d
	cmpl	$-2, %r15d
	movl	$-1, %ecx
	cmovlel	%ecx, %r15d
	movq	%rsi, %rcx
.LBB1_21:                               # %if.end.69.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	668(%rsp,%r12), %ebx
	cmpl	$-1, %ebx
	jne	.LBB1_24
# BB#22:                                # %if.else.78.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	$2097152, %ecx          # imm = 0x200000
	movl	664(%rsp,%r12), %ebx
	je	.LBB1_24
# BB#23:                                # %if.then.81.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rsi
	movslq	%ebx, %rcx
	shlq	$6, %rcx
	movl	688(%rsp,%rcx), %ebx
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB1_24:                               # %if.end.96.i
                                        #   in Loop: Header=BB1_2 Depth=1
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB1_361
# BB#25:                                # %if.end.96.i
                                        #   in Loop: Header=BB1_2 Depth=1
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_33:                               # %sw.bb.129.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	688(%rsp,%r12), %rsi
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	movl	%ebx, %r9d
	jmp	.LBB1_360
.LBB1_34:                               # %sw.bb.134.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fldt	688(%rsp,%r12)
	fld	%st(0)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	fstpl	632(%rsp)
	movsd	632(%rsp), %xmm0        # xmm0 = mem[0],zero
	#APP
	pmovmskb	%xmm0, %eax
	#NO_APP
	shrl	$7, %eax
	andl	$1, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	%rcx, %rbp
	callq	__fpclassify
	movq	%rbp, %rdx
	cmpl	$3, %eax
	ja	.LBB1_43
# BB#35:                                # %trio_fpclassify_and_signbit.exit.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cltq
	movl	.Lswitch.table.1(,%rax,4), %eax
	testl	%eax, %eax
	jne	.LBB1_36
# BB#40:                                # %sw.bb.1.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edx, %eax
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_41
# BB#42:                                # %if.else.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testq	%rax, %rax
	movl	$.L.str.14, %esi
	movl	$.L.str.13, %eax
	jmp	.LBB1_38
.LBB1_26:                               # %sw.bb.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rbx
	movq	%rcx, %r15
	andq	$8, %rbx
	je	.LBB1_28
# BB#27:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ebp
	jmp	.LBB1_30
.LBB1_343:                              # %sw.bb.138.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	688(%rsp,%r12), %rsi
	movq	%r14, %rdi
	movq	%rcx, %rdx
	jmp	.LBB1_39
.LBB1_344:                              # %sw.bb.143.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	688(%rsp,%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB1_345
# BB#346:                               # %if.else.i.126.i
                                        #   in Loop: Header=BB1_2 Depth=1
	orq	$24592, %rdx            # imm = 0x6010
	movl	$18, %ecx
	movl	$-1, %r8d
	movl	$16, %r9d
	movq	%r14, %rdi
	jmp	.LBB1_360
.LBB1_347:                              # %sw.bb.151.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	688(%rsp,%r12), %rax
	testq	%rax, %rax
	je	.LBB1_361
# BB#348:                               # %if.then.158.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$4, %ch
	jne	.LBB1_349
# BB#350:                               # %if.else.163.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$8, %ch
	jne	.LBB1_349
# BB#351:                               # %if.else.170.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %ch
	jne	.LBB1_349
# BB#352:                               # %if.else.177.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %ch
	jne	.LBB1_349
# BB#353:                               # %if.else.184.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$-128, %cl
	jne	.LBB1_349
# BB#354:                               # %if.else.191.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$32, %cl
	movl	4776(%rsp), %ecx
	jne	.LBB1_355
# BB#356:                               # %if.else.198.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, (%rax)
	jmp	.LBB1_361
.LBB1_357:                              # %sw.bb.208.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rbx
	movl	688(%rsp,%r12), %edi
	callq	strerror
	testq	%rax, %rax
	je	.LBB1_359
# BB#358:                               # %if.then.213.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	jmp	.LBB1_39
.LBB1_349:                              # %if.then.161.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	4776(%rsp), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB1_361
.LBB1_28:                               # %while.cond.103.preheader.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2, %r13d
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_29:                               # %while.body.106.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	decl	%r13d
	xorl	%ebp, %ebp
	cmpl	$1, %r13d
	jg	.LBB1_29
	jmp	.LBB1_30
.LBB1_345:                              # %while.cond.preheader.i.124.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$40, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	movl	$110, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	movl	$105, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	movl	$108, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	movl	$41, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	jmp	.LBB1_361
.LBB1_359:                              # %if.else.214.i
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	688(%rsp,%r12), %rbp
	movl	$35, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	movslq	(%rbp), %rsi
	movl	$10, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movl	%r13d, %ecx
	movl	%r15d, %r8d
.LBB1_360:                              # %sw.epilog.i
                                        #   in Loop: Header=BB1_2 Depth=1
	callq	TrioWriteNumber
	jmp	.LBB1_361
.LBB1_36:                               # %trio_fpclassify_and_signbit.exit.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1, %eax
	jne	.LBB1_43
# BB#37:                                # %sw.bb.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$-128, %dh
	movl	$.L.str.10, %esi
	movl	$.L.str.9, %eax
	jmp	.LBB1_38
.LBB1_43:                               # %sw.epilog.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$2, %dh
	jne	.LBB1_44
# BB#55:                                # %if.else.18.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$32, %dl
	jne	.LBB1_56
# BB#69:                                # %if.else.33.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$10, %ebx
	fldt	80(%rsp)                # 10-byte Folded Reload
	fstpt	204(%rsp)               # 10-byte Folded Spill
	je	.LBB1_83
# BB#70:                                # %cond.false.37.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$16, %ebx
	ja	.LBB1_72
# BB#71:                                # %cond.false.37.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$65796, %eax            # imm = 0x10104
	btl	%ebx, %eax
	fldt	80(%rsp)                # 10-byte Folded Reload
	fstpt	204(%rsp)               # 10-byte Folded Spill
	jb	.LBB1_83
.LBB1_72:                               # %sw.default.i.419.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ebx, %ebx
	jle	.LBB1_73
# BB#80:                                # %if.else.i.440.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 608(%rsp)
	fldl	608(%rsp)
	fstpt	(%rsp)
	movq	%rdx, %r14
	callq	log10l
	fstp	%st(0)
	fldt	56(%rsp)                # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	log10l
	fstp	%st(0)
	movq	%r14, %rdx
	jmp	.LBB1_81
.LBB1_44:                               # %if.then.11.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	flds	.LCPI1_0(%rip)
	fstpt	204(%rsp)               # 10-byte Folded Spill
	cmpl	$16, %ebx
	ja	.LBB1_46
# BB#45:                                # %if.then.11.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$66820, %eax            # imm = 0x10504
	btl	%ebx, %eax
	jb	.LBB1_83
.LBB1_46:                               # %sw.default.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %r14
	testl	%ebx, %ebx
	jle	.LBB1_47
# BB#54:                                # %if.else.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 624(%rsp)
	fldl	624(%rsp)
	fstpt	(%rsp)
	callq	log10l
	fstp	%st(0)
	fldt	56(%rsp)                # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	log10l
	fstp	%st(0)
	movq	%r14, %rdx
	jmp	.LBB1_83
.LBB1_364:                              #   in Loop: Header=BB1_2 Depth=1
	decl	%r13d
	movl	%r13d, %ebp
.LBB1_30:                               # %if.end.110.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	688(%rsp,%r12), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	TrioWriteStringCharacter
	testq	%rbx, %rbx
	je	.LBB1_361
# BB#31:                                # %if.end.110.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2, %ebp
	jl	.LBB1_361
	.align	16, 0x90
.LBB1_32:                               # %while.body.124.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ebp
	movl	$32, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	cmpl	$1, %ebp
	jg	.LBB1_32
	jmp	.LBB1_361
.LBB1_56:                               # %if.then.21.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$10, %ebx
	fldt	68(%rsp)                # 10-byte Folded Reload
	fstpt	204(%rsp)               # 10-byte Folded Spill
	je	.LBB1_83
# BB#57:                                # %cond.false.25.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$16, %ebx
	ja	.LBB1_59
# BB#58:                                # %cond.false.25.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$65796, %eax            # imm = 0x10104
	btl	%ebx, %eax
	fldt	68(%rsp)                # 10-byte Folded Reload
	fstpt	204(%rsp)               # 10-byte Folded Spill
	jb	.LBB1_83
.LBB1_59:                               # %sw.default.i.387.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ebx, %ebx
	jle	.LBB1_60
# BB#68:                                # %if.else.i.408.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 616(%rsp)
	fldl	616(%rsp)
	fstpt	(%rsp)
	movq	%rdx, %r14
	callq	log10l
	fstp	%st(0)
	fldt	56(%rsp)                # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	log10l
	fstp	%st(0)
	movq	%r14, %rdx
	fldt	68(%rsp)                # 10-byte Folded Reload
	jmp	.LBB1_82
.LBB1_41:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testq	%rax, %rax
	movl	$.L.str.12, %esi
	movl	$.L.str.11, %eax
.LBB1_38:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmovneq	%rax, %rsi
	movq	%r14, %rdi
.LBB1_39:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	callq	TrioWriteString
	jmp	.LBB1_361
.LBB1_47:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdx
	je	.LBB1_48
# BB#52:                                # %cond.false.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_83
	jp	.LBB1_83
# BB#53:                                # %if.then.i.7.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.15, %edi
	movq	%rdx, %r14
	callq	nan
	movq	%r14, %rdx
	movsd	%xmm0, trio_nan.nan_value(%rip)
	jmp	.LBB1_83
.LBB1_48:                               # %cond.true.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_83
	jp	.LBB1_83
# BB#49:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_51
	jp	.LBB1_51
# BB#50:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_51:                               # %trio_pinf.exit.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB1_83
.LBB1_73:                               # %if.then.i.424.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	je	.LBB1_74
# BB#78:                                # %cond.false.i.433.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	fldt	80(%rsp)                # 10-byte Folded Reload
	fstpt	204(%rsp)               # 10-byte Folded Spill
	jne	.LBB1_83
	jp	.LBB1_83
# BB#79:                                # %if.then.i.7.i.435.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.15, %edi
	movq	%rdx, %r14
	callq	nan
	movq	%r14, %rdx
	movsd	%xmm0, trio_nan.nan_value(%rip)
	jmp	.LBB1_81
.LBB1_60:                               # %if.then.i.392.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	je	.LBB1_61
# BB#66:                                # %cond.false.i.401.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	fldt	68(%rsp)                # 10-byte Folded Reload
	fstpt	204(%rsp)               # 10-byte Folded Spill
	jne	.LBB1_83
	jp	.LBB1_83
# BB#67:                                # %if.then.i.7.i.403.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.15, %edi
	movq	%rdx, %r14
	callq	nan
	movq	%r14, %rdx
	movsd	%xmm0, trio_nan.nan_value(%rip)
	fldt	68(%rsp)                # 10-byte Folded Reload
	jmp	.LBB1_82
.LBB1_355:                              # %if.then.194.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movw	%cx, (%rax)
	jmp	.LBB1_361
.LBB1_74:                               # %cond.true.i.426.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	fldt	80(%rsp)                # 10-byte Folded Reload
	fstpt	204(%rsp)               # 10-byte Folded Spill
	jne	.LBB1_83
	jp	.LBB1_83
# BB#75:                                # %if.then.i.i.428.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_77
	jp	.LBB1_77
# BB#76:                                # %if.then.i.i.i.429.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_77:                               # %trio_pinf.exit.i.i.431.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
.LBB1_81:                               # %if.end.45.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fldt	80(%rsp)                # 10-byte Folded Reload
.LBB1_82:                               # %if.end.45.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstpt	204(%rsp)               # 10-byte Folded Spill
.LBB1_83:                               # %if.end.45.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$-128, %dh
	movq	%rdx, %rsi
	movl	$internalDigitsLower, %ecx
	movl	$internalDigitsUpper, %eax
	cmovneq	%rax, %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	cmpl	$-1, %ebx
	movl	%ebx, %ecx
	movl	$10, %eax
	cmovel	%eax, %ecx
	movl	%ecx, 604(%rsp)
	movl	%ecx, %edx
	movq	%rsi, %rcx
	fildl	604(%rsp)
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	movb	$1, %al
	testb	$16, %ch
	jne	.LBB1_87
# BB#84:                                # %lor.rhs.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	$8388608, %ecx          # imm = 0x800000
	jne	.LBB1_86
# BB#85:                                #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_87
.LBB1_86:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %cl
	sete	%al
.LBB1_87:                               # %lor.end.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	%al, %eax
	xorl	$1, %eax
	movq	%rcx, %rdi
	orq	$4194304, %rcx          # imm = 0x400000
	xorl	%esi, %esi
	cmpl	$16, %ebx
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	movq	%rcx, %rbx
	movl	$6, %ebp
	movl	$24, %ecx
	cmovel	%ecx, %ebp
	movl	%eax, %ecx
	cmovel	%esi, %ecx
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	cmovneq	%rdi, %rbx
	cmpl	$-1, %r15d
	cmovnel	%r15d, %ebp
	cmovnel	%eax, %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	fldt	296(%rsp)               # 10-byte Folded Reload
	fld	%st(0)
	fchs
	fcmove	%st(1), %st(0)
	fstp	%st(1)
	movl	%edx, %r15d
	movl	%r15d, 272(%rsp)        # 4-byte Spill
	cmpl	$10, %r15d
	sete	%al
	movl	%eax, 92(%rsp)          # 4-byte Spill
	cvtsi2sdl	%r15d, %xmm0
	movsd	%xmm0, 592(%rsp)
	movl	$-1, 148(%rsp)          # 4-byte Folded Spill
	fldl	592(%rsp)
	fstpt	120(%rsp)               # 10-byte Folded Spill
	movl	$0, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
	xorl	%ecx, %ecx
	jmp	.LBB1_88
	.align	16, 0x90
.LBB1_207:                              # %if.then.242.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(0)
	orq	$4194304, %rbx          # imm = 0x400000
	movl	200(%rsp), %r13d        # 4-byte Reload
	fldt	308(%rsp)               # 10-byte Folded Reload
	fldt	296(%rsp)               # 10-byte Folded Reload
	movl	256(%rsp), %ebp         # 4-byte Reload
.LBB1_88:                               # %reprocess.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	$8388608, %ebx          # imm = 0x800000
	jne	.LBB1_90
# BB#89:                                #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(1)
	jmp	.LBB1_112
	.align	16, 0x90
.LBB1_90:                               # %if.then.79.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
                                        # kill:
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovel	%eax, %ebp
	fldt	.LCPI1_6(%rip)
	fucompi	%st(1)
	ja	.LBB1_97
# BB#91:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	cmpl	$10, %r15d
	jne	.LBB1_94
# BB#92:                                # %if.then.i.446.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(1)
	movl	%ebp, %r14d
	movl	%ecx, %ebp
	cmpl	$10, %r14d
	jae	.LBB1_93
# BB#95:                                # %switch.lookup.i.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movslq	%r14d, %rax
	shlq	$4, %rax
	fldt	.Lswitch.table.2(%rax)
	movl	%ebp, %ecx
	jmp	.LBB1_96
.LBB1_94:                               # %if.else.i.448.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%ebp, 588(%rsp)
	movl	%ebp, %r14d
	fildl	588(%rsp)
	fxch	%st(2)
	fstpt	(%rsp)
	fxch	%st(1)
	fstpt	16(%rsp)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	movl	%ecx, %ebp
	callq	powl
	movl	%ebp, %ecx
	fldt	296(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
	jmp	.LBB1_96
.LBB1_93:                               # %sw.default.i.447.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%r14d, 584(%rsp)
	fildl	584(%rsp)
	flds	.LCPI1_7(%rip)
	fstpt	(%rsp)
	fstpt	16(%rsp)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	callq	powl
	fldt	296(%rsp)               # 10-byte Folded Reload
	movl	%ebp, %ecx
	fxch	%st(1)
.LBB1_96:                               # %TrioPower.exit.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
	fucomi	%st(1)
	fstp	%st(1)
	movl	%r14d, %ebp
	fldz
	fxch	%st(1)
	jae	.LBB1_97
# BB#98:                                # %if.else.93.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(1)
	fld1
	fucompi	%st(1)
	jbe	.LBB1_112
# BB#99:                                # %if.then.96.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldz
	fucomi	%st(1)
	jae	.LBB1_100
# BB#108:                               # %if.else.i.469.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(0)
	movl	%ecx, %r14d
	fld	%st(0)
	fstpt	(%rsp)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	callq	log10l
	fldz
	cmpl	$10, %r15d
	je	.LBB1_111
# BB#109:                               # %if.else.7.i.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(0)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fldt	120(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	log10l
	fldz
	fldt	276(%rsp)               # 10-byte Folded Reload
	fdivp	%st(2)
	fxch	%st(1)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fldt	276(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_110
	.align	16, 0x90
.LBB1_97:                               # %if.then.91.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(1)
	orq	$4194304, %rbx          # imm = 0x400000
.LBB1_112:                              # %if.end.115.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	testl	$4194304, %ebx          # imm = 0x400000
	jne	.LBB1_114
# BB#113:                               #   in Loop: Header=BB1_88 Depth=2
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	jmp	.LBB1_147
	.align	16, 0x90
.LBB1_114:                              # %if.then.118.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldz
	fucomi	%st(1)
	jae	.LBB1_115
# BB#123:                               # %if.else.i.493.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(0)
	movq	%rbx, %r14
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	movl	%ebp, 256(%rsp)         # 4-byte Spill
	fld	%st(0)
	fstpt	(%rsp)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	callq	log10l
	cmpl	$10, %r15d
	je	.LBB1_125
# BB#124:                               # %if.else.7.i.498.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fldt	120(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	log10l
	fldt	276(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fldt	276(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_125
	.align	16, 0x90
.LBB1_115:                              # %if.then.i.476.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movq	%rbx, %r14
	movl	%ebp, 256(%rsp)         # 4-byte Spill
	fxch	%st(1)
	fucomi	%st(1)
	fstp	%st(1)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	jne	.LBB1_120
	jp	.LBB1_120
# BB#116:                               # %cond.true.i.478.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_122
	jp	.LBB1_122
# BB#117:                               # %if.then.i.i.480.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_119
	jp	.LBB1_119
# BB#118:                               # %if.then.i.i.i.481.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_119:                              # %trio_pinf.exit.i.i.483.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB1_122
.LBB1_120:                              # %cond.false.i.485.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_122
	jp	.LBB1_122
# BB#121:                               # %if.then.i.7.i.487.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	$.L.str.15, %edi
	movl	%ecx, %ebx
	callq	nan
	movl	%ebx, %ecx
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB1_122:                              # %cond.end.i.490.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	movsd	%xmm0, 560(%rsp)
	fldl	560(%rsp)
.LBB1_125:                              # %TrioLogarithm.exit500.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fld	%st(0)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fstpl	552(%rsp)
	movsd	552(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 240(%rsp)        # 8-byte Spill
	callq	__fpclassify
	cmpl	$1, %eax
	jne	.LBB1_128
# BB#126:                               # %trio_isinf.exit.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	240(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	#APP
	pmovmskb	%xmm0, %eax
	#NO_APP
	testb	$-128, %al
	jne	.LBB1_127
.LBB1_128:                              # %if.else.130.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldt	276(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	floorl
	fnstcw	352(%rsp)
	movw	352(%rsp), %ax
	movw	$3199, 352(%rsp)        # imm = 0xC7F
	fldcw	352(%rsp)
	movw	%ax, 352(%rsp)
	fistpl	548(%rsp)
	fldcw	352(%rsp)
	movl	548(%rsp), %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmpl	$10, 272(%rsp)          # 4-byte Folded Reload
	jne	.LBB1_132
# BB#129:                               # %if.then.i.505.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	cmpl	$10, %ebp
	jae	.LBB1_130
# BB#133:                               # %switch.lookup.i.515.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movslq	%ebp, %rax
	shlq	$4, %rax
	fldt	.Lswitch.table.2(%rax)
	jmp	.LBB1_134
.LBB1_132:                              # %if.else.i.512.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%ebp, 544(%rsp)
	fildl	544(%rsp)
	fldt	308(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_131
.LBB1_127:                              # %if.then.124.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movq	%r14, %rbx
	movq	%rbx, %rax
	andq	$-4194305, %rax         # imm = 0xFFFFFFFFFFBFFFFF
	testl	$8388608, %ebx          # imm = 0x800000
	cmovneq	%rax, %rbx
	xorl	%eax, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	272(%rsp), %r15d        # 4-byte Reload
	movl	256(%rsp), %ebp         # 4-byte Reload
	fldt	296(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_147
.LBB1_130:                              # %sw.default.i.508.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%ebp, 540(%rsp)
	fildl	540(%rsp)
	flds	.LCPI1_7(%rip)
.LBB1_131:                              # %TrioPower.exit518.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstpt	(%rsp)
	fstpt	16(%rsp)
	callq	powl
.LBB1_134:                              # %TrioPower.exit518.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldt	296(%rsp)               # 10-byte Folded Reload
	fmulp	%st(1)
	fld	%st(0)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	fstpl	528(%rsp)
	movsd	528(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassify
	cmpl	$1, %eax
	jne	.LBB1_135
# BB#136:                               # %if.then.141.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movq	%r14, %r15
	movl	%ebx, %eax
	shrl	$31, %eax
	leal	(%rax,%rbx), %r14d
	sarl	%r14d
	cmpl	$10, 272(%rsp)          # 4-byte Folded Reload
	jne	.LBB1_143
# BB#137:                               # %if.then.i.527.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	cmpl	$10, %r14d
	jae	.LBB1_138
# BB#139:                               # %switch.lookup.i.537.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movslq	%r14d, %rax
	shlq	$4, %rax
	fldt	.Lswitch.table.2(%rax)
	jmp	.LBB1_140
.LBB1_135:                              #   in Loop: Header=BB1_88 Depth=2
	movl	164(%rsp), %eax         # 4-byte Reload
	fldt	296(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_146
.LBB1_143:                              # %if.else.i.550.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%r14d, 520(%rsp)
	fildl	520(%rsp)
	fldt	308(%rsp)               # 10-byte Folded Reload
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fstpt	(%rsp)
	fstpt	16(%rsp)
	callq	powl
	fldt	296(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	movl	%ebx, %eax
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	subl	%r14d, %eax
	movl	%eax, 524(%rsp)
	fildl	524(%rsp)
	fstpt	16(%rsp)
	fldt	308(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	jmp	.LBB1_142
.LBB1_138:                              # %sw.default.i.530.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%r14d, 516(%rsp)
	fildl	516(%rsp)
	flds	.LCPI1_7(%rip)
	fstpt	(%rsp)
	fstpt	16(%rsp)
	callq	powl
.LBB1_140:                              # %if.then.i.543.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldt	296(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	movq	168(%rsp), %rax         # 8-byte Reload
	subl	%r14d, %eax
	cmpl	$10, %eax
	jae	.LBB1_141
# BB#144:                               # %switch.lookup.i.553.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	cltq
	shlq	$4, %rax
	fldt	.Lswitch.table.2(%rax)
	movl	164(%rsp), %eax         # 4-byte Reload
	movq	%r15, %r14
	jmp	.LBB1_145
.LBB1_141:                              # %sw.default.i.546.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%eax, 512(%rsp)
	fildl	512(%rsp)
	fxch	%st(1)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	flds	.LCPI1_7(%rip)
	fstpt	(%rsp)
	fstpt	16(%rsp)
.LBB1_142:                              # %TrioPower.exit556.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	callq	powl
	fldt	296(%rsp)               # 10-byte Folded Reload
	movl	164(%rsp), %eax         # 4-byte Reload
	movq	%r15, %r14
	fxch	%st(1)
.LBB1_145:                              # %TrioPower.exit556.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fdivrp	%st(1)
	movq	168(%rsp), %rbx         # 8-byte Reload
.LBB1_146:                              # %if.end.155.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movl	%eax, 164(%rsp)         # 4-byte Spill
	movl	%ebx, %ecx
	shrl	$31, %ecx
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	cmovnsl	%ebx, %ebp
	leal	(,%rbp,4), %ecx
	cmpl	$16, %eax
	cmovnel	%ebp, %ecx
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movl	272(%rsp), %r15d        # 4-byte Reload
	movl	256(%rsp), %ebp         # 4-byte Reload
	movq	%r14, %rbx
.LBB1_147:                              # %if.end.169.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fld	%st(0)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	movl	%r13d, 200(%rsp)        # 4-byte Spill
	fstpt	(%rsp)
	callq	floorl
	movl	$1, %r14d
	fldt	204(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
	fucomi	%st(1)
	fstp	%st(1)
	jbe	.LBB1_160
# BB#148:                               # %if.then.174.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldz
	fucomi	%st(1)
	jae	.LBB1_149
# BB#157:                               # %if.else.i.577.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(0)
	fld	%st(0)
	fstpt	(%rsp)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	callq	log10l
	cmpl	$10, %r15d
	je	.LBB1_159
# BB#158:                               # %if.else.7.i.582.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstpt	256(%rsp)               # 10-byte Folded Spill
	fldt	120(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	log10l
	fldt	256(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	fstpt	256(%rsp)               # 10-byte Folded Spill
	fldt	256(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_159
	.align	16, 0x90
.LBB1_149:                              # %if.then.i.560.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
	fucomi	%st(1)
	fstp	%st(1)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	jne	.LBB1_154
	jp	.LBB1_154
# BB#150:                               # %cond.true.i.562.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_156
	jp	.LBB1_156
# BB#151:                               # %if.then.i.i.564.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_153
	jp	.LBB1_153
# BB#152:                               # %if.then.i.i.i.565.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_153:                              # %trio_pinf.exit.i.i.567.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB1_156
.LBB1_154:                              # %cond.false.i.569.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_156
	jp	.LBB1_156
# BB#155:                               # %if.then.i.7.i.571.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	$.L.str.15, %edi
	callq	nan
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB1_156:                              # %cond.end.i.574.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	%xmm0, 504(%rsp)
	fldl	504(%rsp)
.LBB1_159:                              # %TrioLogarithm.exit584.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fnstcw	350(%rsp)
	movw	350(%rsp), %ax
	movw	$3199, 350(%rsp)        # imm = 0xC7F
	fldcw	350(%rsp)
	movw	%ax, 350(%rsp)
	fistpl	500(%rsp)
	fldcw	350(%rsp)
	movl	500(%rsp), %r14d
	incl	%r14d
	fldt	276(%rsp)               # 10-byte Folded Reload
.LBB1_160:                              # %if.end.177.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movq	%rbx, %r13
	andq	$8388608, %r13          # imm = 0x800000
	movl	%ebp, %edx
	je	.LBB1_162
# BB#161:                               # %if.then.180.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	148(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	movl	$0, %eax
	cmovnsl	%ecx, %eax
	addl	%ebp, %eax
	movl	%r14d, %ecx
	negl	%ecx
	fldt	204(%rsp)               # 10-byte Folded Reload
	fld	%st(0)
	fstpt	204(%rsp)               # 10-byte Folded Spill
	fxch	%st(1)
	fucomi	%st(1)
	movl	%ecx, %edx
	movl	$0, %esi
	cmovbel	%esi, %edx
	fldt	296(%rsp)               # 10-byte Folded Reload
	fxch	%st(2)
	fucompi	%st(2)
	fstp	%st(1)
	cmovael	%ecx, %edx
	addl	%eax, %edx
.LBB1_162:                              # %if.end.194.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	cmpl	$10, %r15d
	jne	.LBB1_166
# BB#163:                               # %if.then.i.586.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	cmpl	$10, %edx
	jae	.LBB1_164
# BB#167:                               # %switch.lookup.i.596.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movslq	%edx, %rax
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	shlq	$4, %rax
	fldt	.Lswitch.table.2(%rax)
	jmp	.LBB1_168
	.align	16, 0x90
.LBB1_166:                              # %if.else.i.593.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%edx, 496(%rsp)
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	fildl	496(%rsp)
	fldt	308(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_165
	.align	16, 0x90
.LBB1_164:                              # %sw.default.i.589.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%edx, 492(%rsp)
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	fildl	492(%rsp)
	flds	.LCPI1_7(%rip)
.LBB1_165:                              # %TrioPower.exit599.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstpt	(%rsp)
	fstpt	16(%rsp)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	callq	powl
	fldt	276(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
.LBB1_168:                              # %TrioPower.exit599.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstpt	216(%rsp)               # 10-byte Folded Spill
	fldt	296(%rsp)               # 10-byte Folded Reload
	fld1
	fucompi	%st(2)
	jbe	.LBB1_196
# BB#169:                               # %if.then.198.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%ebp, 256(%rsp)         # 4-byte Spill
	movl	%r15d, %ebp
	fxch	%st(1)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fldt	216(%rsp)               # 10-byte Folded Reload
	fmul	%st(1)
	fld	%st(0)
	fstpt	136(%rsp)               # 10-byte Folded Spill
	fxch	%st(1)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	fld	%st(0)
	fadds	.LCPI1_8(%rip)
	fld	%st(0)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	fstpt	240(%rsp)               # 10-byte Folded Spill
	fstpt	(%rsp)
	callq	floorl
	fstpt	152(%rsp)               # 10-byte Folded Spill
	fldt	240(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	floorl
	fldt	152(%rsp)               # 10-byte Folded Reload
	fucompi	%st(1)
	fstp	%st(0)
	jne	.LBB1_171
	jp	.LBB1_171
	jmp	.LBB1_170
.LBB1_171:                              # %if.then.206.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldz
	fldt	136(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
	fucomi	%st(1)
	jae	.LBB1_172
# BB#180:                               # %if.else.i.620.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(0)
	movq	%rbx, %r15
	fstpt	(%rsp)
	callq	log10l
	fldz
	cmpl	$10, %ebp
	fldt	240(%rsp)               # 10-byte Folded Reload
	je	.LBB1_182
# BB#181:                               # %if.else.7.i.625.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(1)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	fldt	120(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	fstpt	180(%rsp)               # 10-byte Folded Spill
	callq	log10l
	fldt	180(%rsp)               # 10-byte Folded Reload
	fldz
	fxch	%st(1)
	fdivp	%st(2)
	fldt	240(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_182
	.align	16, 0x90
.LBB1_196:                              # %if.else.219.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%ebp, 256(%rsp)         # 4-byte Spill
	flds	.LCPI1_8(%rip)
	fldt	216(%rsp)               # 10-byte Folded Reload
	fdivrp	%st(1)
	fadd	%st(1)
	fld	%st(0)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	fxch	%st(1)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	fstpt	(%rsp)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	callq	floorl
	fldt	240(%rsp)               # 10-byte Folded Reload
	fldt	276(%rsp)               # 10-byte Folded Reload
	fucomi	%st(2)
	fstp	%st(2)
	setp	%al
	setne	%cl
	orb	%al, %cl
	movzbl	%cl, %ecx
	jmp	.LBB1_197
.LBB1_170:                              #   in Loop: Header=BB1_88 Depth=2
	fldt	276(%rsp)               # 10-byte Folded Reload
	movl	180(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB1_195
.LBB1_172:                              # %if.then.i.603.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
	fucompi	%st(1)
	fldt	240(%rsp)               # 10-byte Folded Reload
	movq	%rbx, %r15
	jne	.LBB1_177
	jp	.LBB1_177
# BB#173:                               # %cond.true.i.605.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_179
	jp	.LBB1_179
# BB#174:                               # %if.then.i.i.607.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_176
	jp	.LBB1_176
# BB#175:                               # %if.then.i.i.i.608.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_176:                              # %trio_pinf.exit.i.i.610.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB1_179
.LBB1_177:                              # %cond.false.i.612.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_179
	jp	.LBB1_179
# BB#178:                               # %if.then.i.7.i.614.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(1)
	movl	$.L.str.15, %edi
	fstpt	240(%rsp)               # 10-byte Folded Spill
	callq	nan
	fldt	240(%rsp)               # 10-byte Folded Reload
	fldz
	movsd	%xmm0, trio_nan.nan_value(%rip)
	fxch	%st(1)
.LBB1_179:                              # %cond.end.i.617.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	%xmm0, 480(%rsp)
	fldl	480(%rsp)
	fxch	%st(2)
	fxch	%st(1)
.LBB1_182:                              # %TrioLogarithm.exit627.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fnstcw	348(%rsp)
	movw	348(%rsp), %ax
	movw	$3199, 348(%rsp)        # imm = 0xC7F
	fldcw	348(%rsp)
	movw	%ax, 348(%rsp)
	fxch	%st(2)
	fistpl	476(%rsp)
	fldcw	348(%rsp)
	movl	476(%rsp), %ebx
	fucomi	%st(1)
	jae	.LBB1_183
# BB#191:                               # %if.else.i.647.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(0)
	fld	%st(0)
	fstpt	(%rsp)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	callq	log10l
	cmpl	$10, %ebp
	fldt	276(%rsp)               # 10-byte Folded Reload
	je	.LBB1_194
# BB#192:                               # %if.else.7.i.652.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
	fstpt	180(%rsp)               # 10-byte Folded Spill
	fldt	120(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	callq	log10l
	fldt	276(%rsp)               # 10-byte Folded Reload
	fldt	180(%rsp)               # 10-byte Folded Reload
	fdivp	%st(2)
	fxch	%st(1)
	fstpt	180(%rsp)               # 10-byte Folded Spill
	fldt	180(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_193
.LBB1_183:                              # %if.then.i.630.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
	fucomi	%st(1)
	fstp	%st(1)
	fldt	276(%rsp)               # 10-byte Folded Reload
	jne	.LBB1_188
	jp	.LBB1_188
# BB#184:                               # %cond.true.i.632.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_190
	jp	.LBB1_190
# BB#185:                               # %if.then.i.i.634.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_187
	jp	.LBB1_187
# BB#186:                               # %if.then.i.i.i.635.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_187:                              # %trio_pinf.exit.i.i.637.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB1_190
.LBB1_188:                              # %cond.false.i.639.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_190
	jp	.LBB1_190
# BB#189:                               # %if.then.i.7.i.641.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	$.L.str.15, %edi
	fstpt	276(%rsp)               # 10-byte Folded Spill
	callq	nan
	fldt	276(%rsp)               # 10-byte Folded Reload
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB1_190:                              # %cond.end.i.644.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	%xmm0, 464(%rsp)
	fldl	464(%rsp)
.LBB1_193:                              # %TrioLogarithm.exit654.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
.LBB1_194:                              # %TrioLogarithm.exit654.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fnstcw	346(%rsp)
	movw	346(%rsp), %ax
	movw	$3199, 346(%rsp)        # imm = 0xC7F
	fldcw	346(%rsp)
	movw	%ax, 346(%rsp)
	fxch	%st(1)
	fistpl	460(%rsp)
	fldcw	346(%rsp)
	cmpl	460(%rsp), %ebx
	setne	%al
	movzbl	%al, %eax
	subl	%eax, 148(%rsp)         # 4-byte Folded Spill
	movl	$1, %ecx
	movq	%r15, %rbx
.LBB1_195:                              # %if.end.217.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldt	216(%rsp)               # 10-byte Folded Reload
	fldt	240(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	movl	%ebp, %r15d
.LBB1_197:                              # %if.end.226.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	testl	%ecx, %ecx
	je	.LBB1_250
# BB#198:                               # %if.then.228.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(1)
	movl	%ebx, %eax
	andl	$12582912, %eax         # imm = 0xC00000
	cmpq	$8388608, %rax          # imm = 0x800000
	jne	.LBB1_208
# BB#199:                               # %if.then.233.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldt	.LCPI1_9(%rip)
	fucompi	%st(1)
	ja	.LBB1_207
# BB#200:                               # %lor.lhs.false.236.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstpt	240(%rsp)               # 10-byte Folded Spill
	cmpl	$10, %r15d
	jne	.LBB1_203
# BB#201:                               # %if.then.i.656.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movq	%r13, %rbp
	movl	256(%rsp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	jae	.LBB1_202
# BB#204:                               # %switch.lookup.i.666.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%r15d, %edx
	cltq
	shlq	$4, %rax
	fldt	.Lswitch.table.2(%rax)
	jmp	.LBB1_205
	.align	16, 0x90
.LBB1_203:                              # %if.else.i.663.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	256(%rsp), %eax         # 4-byte Reload
	movl	%eax, 456(%rsp)
	fildl	456(%rsp)
	fldt	308(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	fstpt	16(%rsp)
	movl	%r15d, %eax
	movq	%r13, %r15
	movq	%rbx, %r13
	movl	%eax, %ebx
	movl	%ecx, %ebp
	callq	powl
	movl	%ebp, %ecx
	movl	%ebx, %edx
	movq	%r13, %rbx
	movq	%r15, %r13
	jmp	.LBB1_206
.LBB1_202:                              # %sw.default.i.659.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%eax, 452(%rsp)
	fildl	452(%rsp)
	flds	.LCPI1_7(%rip)
	fstpt	(%rsp)
	fstpt	16(%rsp)
	movl	%r15d, %r13d
	movl	%ecx, %r15d
	callq	powl
	movl	%r15d, %ecx
	movl	%r13d, %edx
.LBB1_205:                              # %TrioPower.exit669.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movq	%rbp, %r13
.LBB1_206:                              # %TrioPower.exit669.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fldt	240(%rsp)               # 10-byte Folded Reload
	fucomi	%st(1)
	fstp	%st(1)
	movl	%edx, %r15d
	jae	.LBB1_207
	jmp	.LBB1_208
.LBB1_100:                              # %if.then.i.453.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
	fucomi	%st(1)
	jne	.LBB1_105
	jp	.LBB1_105
# BB#101:                               # %cond.true.i.455.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstpt	296(%rsp)               # 10-byte Folded Spill
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_107
	jp	.LBB1_107
# BB#102:                               # %if.then.i.i.457.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_104
	jp	.LBB1_104
# BB#103:                               # %if.then.i.i.i.458.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_104:                              # %trio_pinf.exit.i.i.460.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB1_107
.LBB1_105:                              # %cond.false.i.462.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstpt	296(%rsp)               # 10-byte Folded Spill
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_107
	jp	.LBB1_107
# BB#106:                               # %if.then.i.7.i.464.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fstp	%st(0)
	movl	$.L.str.15, %edi
	movl	%r15d, %r14d
	movl	%ebp, %r15d
	movl	%ecx, %ebp
	callq	nan
	movl	%ebp, %ecx
	movl	%r15d, %ebp
	movl	%r14d, %r15d
	fldz
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB1_107:                              # %cond.end.i.467.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	movl	%ecx, %r14d
	movsd	%xmm0, 576(%rsp)
	fldl	576(%rsp)
.LBB1_110:                              # %TrioLogarithm.exit473.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fxch	%st(1)
.LBB1_111:                              # %TrioLogarithm.exit473.i.i
                                        #   in Loop: Header=BB1_88 Depth=2
	fucompi	%st(1)
	fld	%st(0)
	fchs
	fxch	%st(1)
	fcmovnbe	%st(1), %st(0)
	fstp	%st(1)
	fld	%st(0)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fstpt	(%rsp)
	callq	floorl
	fldt	276(%rsp)               # 10-byte Folded Reload
	fsub	%st(0), %st(1)
	fldt	204(%rsp)               # 10-byte Folded Reload
	fucompi	%st(2)
	fstp	%st(1)
	fld1
	fchs
	fadd	%st(1)
	fxch	%st(1)
	fcmovnbe	%st(1), %st(0)
	fstp	%st(1)
	fstpt	(%rsp)
	callq	floorl
	fnstcw	354(%rsp)
	movw	354(%rsp), %ax
	movw	$3199, 354(%rsp)        # imm = 0xC7F
	fldcw	354(%rsp)
	movw	%ax, 354(%rsp)
	fistpl	572(%rsp)
	fldcw	354(%rsp)
	movl	572(%rsp), %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	fldt	296(%rsp)               # 10-byte Folded Reload
	movl	%r14d, %ecx
	jmp	.LBB1_112
.LBB1_208:                              # %if.end.245.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	$4194304, %ebx          # imm = 0x400000
	jne	.LBB1_209
# BB#224:                               # %if.else.279.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fld	%st(0)
	fstpt	(%rsp)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	callq	floorl
	fldt	240(%rsp)               # 10-byte Folded Reload
	fld1
	fxch	%st(1)
	fucomi	%st(1)
	fstp	%st(1)
	jbe	.LBB1_245
# BB#225:                               # %if.then.282.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	movl	$1, %r14d
	fldt	204(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
	fucomi	%st(1)
	fstp	%st(1)
	fldz
	jbe	.LBB1_239
# BB#226:                               # %cond.true.286.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fucomi	%st(1)
	jae	.LBB1_227
# BB#235:                               # %if.else.i.717.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	fld	%st(0)
	fstpt	(%rsp)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	callq	log10l
	fldz
	cmpl	$10, %r15d
	je	.LBB1_238
# BB#236:                               # %if.else.7.i.722.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	fldt	120(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	log10l
	fldz
	fldt	240(%rsp)               # 10-byte Folded Reload
	fdivp	%st(2)
	fxch	%st(1)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	fldt	240(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_237
.LBB1_250:                              # %if.end.336.loopexit.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	movl	%r15d, %ebp
	fldt	296(%rsp)               # 10-byte Folded Reload
	fsub	%st(1)
.LBB1_251:                              # %if.end.336.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fxch	%st(1)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	leaq	4736(%rsp), %r13
.LBB1_252:                              # %if.end.336.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	192(%rsp), %r15         # 8-byte Reload
	jmp	.LBB1_253
.LBB1_209:                              # %if.then.248.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstpt	(%rsp)
	callq	floorl
	fldz
	fucomi	%st(1)
	leaq	4736(%rsp), %r13
	jae	.LBB1_210
# BB#218:                               # %if.else.i.690.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	fstpt	(%rsp)
	callq	log10l
	cmpl	$10, %r15d
	movl	%r15d, %ebp
	movq	192(%rsp), %r15         # 8-byte Reload
	fldt	296(%rsp)               # 10-byte Folded Reload
	je	.LBB1_220
# BB#219:                               # %if.else.7.i.695.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fldt	120(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	fstpt	276(%rsp)               # 10-byte Folded Spill
	callq	log10l
	fldt	276(%rsp)               # 10-byte Folded Reload
	fldt	296(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
	fdivp	%st(2)
	jmp	.LBB1_220
.LBB1_245:                              # %if.else.310.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fsub	%st(1)
	testq	%r13, %r13
	sete	%al
	testb	$16, %bl
	je	.LBB1_246
# BB#247:                               # %if.else.310.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	%al, %al
	leaq	4736(%rsp), %r13
	movl	%r15d, %ebp
	jne	.LBB1_248
# BB#249:                               # %if.then.318.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	148(%rsp), %esi         # 4-byte Reload
	testl	%esi, %esi
	movl	$0, %eax
	movq	%rax, %rdx
	cmovsl	%edx, %esi
	addl	256(%rsp), %esi         # 4-byte Folded Reload
	movl	%r14d, %eax
	negl	%eax
	fldt	204(%rsp)               # 10-byte Folded Reload
	fld	%st(0)
	fstpt	204(%rsp)               # 10-byte Folded Spill
	fxch	%st(2)
	fucomi	%st(2)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	movl	%eax, %ecx
	cmovbel	%edx, %ecx
	fldt	296(%rsp)               # 10-byte Folded Reload
	fxch	%st(2)
	fucompi	%st(2)
	fstp	%st(1)
	cmovael	%eax, %ecx
	addl	%esi, %ecx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	jmp	.LBB1_252
.LBB1_210:                              # %if.then.i.673.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %ebp
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	fldt	296(%rsp)               # 10-byte Folded Reload
	jne	.LBB1_215
	jp	.LBB1_215
# BB#211:                               # %cond.true.i.675.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	movq	192(%rsp), %r15         # 8-byte Reload
	jne	.LBB1_217
	jp	.LBB1_217
# BB#212:                               # %if.then.i.i.677.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_214
	jp	.LBB1_214
# BB#213:                               # %if.then.i.i.i.678.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_214:                              # %trio_pinf.exit.i.i.680.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB1_217
.LBB1_215:                              # %cond.false.i.682.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	movq	192(%rsp), %r15         # 8-byte Reload
	jne	.LBB1_217
	jp	.LBB1_217
# BB#216:                               # %if.then.i.7.i.684.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.15, %edi
	fstpt	296(%rsp)               # 10-byte Folded Spill
	callq	nan
	fldt	296(%rsp)               # 10-byte Folded Reload
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB1_217:                              # %cond.end.i.687.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	%xmm0, 440(%rsp)
	fldl	440(%rsp)
	fxch	%st(1)
.LBB1_220:                              # %TrioLogarithm.exit697.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fld1
	faddp	%st(2)
	fnstcw	344(%rsp)
	movw	344(%rsp), %ax
	movw	$3199, 344(%rsp)        # imm = 0xC7F
	fldcw	344(%rsp)
	movw	%ax, 344(%rsp)
	fxch	%st(1)
	fistpl	436(%rsp)
	fldcw	344(%rsp)
	cmpl	436(%rsp), %r14d
	jne	.LBB1_223
# BB#221:                               # %if.then.255.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	flds	.LCPI1_8(%rip)
	fldt	216(%rsp)               # 10-byte Folded Reload
	fdivrp	%st(1)
	faddp	%st(1)
	jmp	.LBB1_222
.LBB1_223:                              # %if.else.260.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	168(%rsp), %rdx         # 8-byte Reload
	leal	1(%rdx), %eax
	cmpl	$-1, %edx
	setl	%cl
	notl	%edx
	cmovgel	%eax, %edx
	leal	(,%rdx,4), %eax
	cmpl	$16, 164(%rsp)          # 4-byte Folded Reload
	movzbl	%cl, %ecx
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	cmovnel	%edx, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	flds	.LCPI1_8(%rip)
	fldt	216(%rsp)               # 10-byte Folded Reload
	fdivrp	%st(1)
	faddp	%st(1)
	fldt	308(%rsp)               # 10-byte Folded Reload
	fdivrp	%st(1)
.LBB1_222:                              # %if.end.336.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fld	%st(0)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	fstpt	(%rsp)
	callq	floorl
	fld	%st(0)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fldt	296(%rsp)               # 10-byte Folded Reload
	fsubp	%st(1)
.LBB1_253:                              # %if.end.336.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fld	%st(0)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	flds	.LCPI1_8(%rip)
	fldt	216(%rsp)               # 10-byte Folded Reload
	fdivr	%st(0), %st(1)
	fld	%st(1)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	fxch	%st(2)
	faddp	%st(1)
	fmulp	%st(1)
	fstpt	(%rsp)
	callq	floorl
	movb	$1, %dl
	testb	$16, %bl
	jne	.LBB1_257
# BB#254:                               # %lor.rhs.345.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$1, %dl
	cmpl	$0, 256(%rsp)           # 4-byte Folded Reload
	je	.LBB1_256
# BB#255:                               # %lor.rhs.348.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fldt	204(%rsp)               # 10-byte Folded Reload
	fucompi	%st(1)
	fstp	%st(0)
	seta	%al
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	sete	%dl
	andb	%al, %dl
	fldz
.LBB1_256:                              # %lor.end.353.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	xorb	$1, %dl
	fldz
.LBB1_257:                              # %lor.end.356.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	movq	232(%rsp), %rcx         # 8-byte Reload
	leal	(%r14,%rcx), %edi
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_261
# BB#258:                               # %if.else.363.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%edi, %r15d
	movb	%dl, 204(%rsp)          # 1-byte Spill
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movl	%ebp, 272(%rsp)         # 4-byte Spill
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %ebp
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	cmovel	%eax, %ebp
	xorl	%r13d, %r13d
	movl	%ecx, %ebx
	subl	%ebp, %ebx
	testl	%ebp, %ebp
	fldt	296(%rsp)               # 10-byte Folded Reload
	fldt	240(%rsp)               # 10-byte Folded Reload
	fldt	308(%rsp)               # 10-byte Folded Reload
	fstpt	308(%rsp)               # 10-byte Folded Spill
	jle	.LBB1_260
	.align	16, 0x90
.LBB1_259:                              # %for.body.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldt	308(%rsp)               # 10-byte Folded Reload
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fmul	%st(0), %st(1)
	fld	%st(1)
	fstpt	216(%rsp)               # 10-byte Folded Spill
	fmulp	%st(2)
	fxch	%st(1)
	fstpt	256(%rsp)               # 10-byte Folded Spill
	fldt	256(%rsp)               # 10-byte Folded Reload
	faddp	%st(1)
	fstpt	(%rsp)
	callq	floorl
	fldt	216(%rsp)               # 10-byte Folded Reload
	fsub	%st(1)
	fstpt	216(%rsp)               # 10-byte Folded Spill
	fldt	308(%rsp)               # 10-byte Folded Reload
	fstpt	16(%rsp)
	fstpt	(%rsp)
	callq	fmodl
	fldt	216(%rsp)               # 10-byte Folded Reload
	fnstcw	340(%rsp)
	movw	340(%rsp), %ax
	movw	$3199, 340(%rsp)        # imm = 0xC7F
	fldcw	340(%rsp)
	movw	%ax, 340(%rsp)
	fxch	%st(1)
	fistpl	416(%rsp)
	fldt	256(%rsp)               # 10-byte Folded Reload
	fldcw	340(%rsp)
	incl	%ebx
	cmpl	$0, 416(%rsp)
	cmovnel	%r13d, %ebx
	decl	%ebp
	fxch	%st(1)
	jne	.LBB1_259
.LBB1_260:                              # %for.end.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(1)
	fstp	%st(0)
	fldt	308(%rsp)               # 10-byte Folded Reload
	fstpt	308(%rsp)               # 10-byte Folded Spill
	movl	%r15d, %edi
	subl	%ebx, %edi
	leaq	4736(%rsp), %r13
	movq	192(%rsp), %r15         # 8-byte Reload
	movl	272(%rsp), %ebp         # 4-byte Reload
	movq	104(%rsp), %rbx         # 8-byte Reload
	movb	204(%rsp), %dl          # 1-byte Reload
.LBB1_261:                              # %if.end.388.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%dl, 204(%rsp)          # 1-byte Spill
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	sete	%al
	xorl	%r10d, %r10d
	testb	%dl, %dl
	movl	internalDecimalPointLength(%rip), %ecx
	cmovel	%r10d, %ecx
	movl	%ebx, %r9d
	andl	$4, %r9d
	movl	%ebx, %r8d
	andl	$2, %r8d
	testb	$6, %bl
	sete	%dl
	andb	%al, %dl
	movzbl	%dl, %edx
	xorl	$1, %edx
	addl	%edi, %edx
	addl	%ecx, %edx
	testl	$4194304, %ebx          # imm = 0x400000
	movl	164(%rsp), %ebx         # 4-byte Reload
	jne	.LBB1_263
# BB#262:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	jmp	.LBB1_275
.LBB1_263:                              # %if.then.407.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$1, %esi
	movl	132(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB1_274
# BB#264:                               # %cond.false.411.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$16, %ebx
	movl	%ebp, %ebx
	movl	$10, %eax
	cmovel	%eax, %ebx
	movl	%ecx, %eax
	incl	%eax
	je	.LBB1_265
# BB#270:                               # %if.else.i.744.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, 256(%rsp)         # 8-byte Spill
	movq	%r9, 168(%rsp)          # 8-byte Spill
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 408(%rsp)
	fldl	408(%rsp)
	fstpt	(%rsp)
	callq	log10l
	cmpl	$10, %ebx
	je	.LBB1_272
# BB#271:                               # %if.else.7.i.749.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 400(%rsp)
	fstpt	216(%rsp)               # 10-byte Folded Spill
	fldl	400(%rsp)
	fstpt	(%rsp)
	callq	log10l
	fldt	216(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	fstpt	216(%rsp)               # 10-byte Folded Spill
	fldt	216(%rsp)               # 10-byte Folded Reload
	jmp	.LBB1_272
.LBB1_265:                              # %cond.true.i.729.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_269
	jp	.LBB1_269
# BB#266:                               # %if.then.i.i.731.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_268
	jp	.LBB1_268
# BB#267:                               # %if.then.i.i.i.732.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_268:                              # %trio_pinf.exit.i.i.734.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
.LBB1_269:                              # %cond.end.i.741.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, 256(%rsp)         # 8-byte Spill
	movq	%r9, 168(%rsp)          # 8-byte Spill
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movsd	%xmm0, 392(%rsp)
	fldl	392(%rsp)
.LBB1_272:                              # %if.end.425.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$10, %ebp
	sete	%bl
	fstpt	(%rsp)
	callq	ceill
	fnstcw	338(%rsp)
	movw	338(%rsp), %ax
	movw	$3199, 338(%rsp)        # imm = 0xC7F
	fldcw	338(%rsp)
	movw	%ax, 338(%rsp)
	fistpl	388(%rsp)
	fldcw	338(%rsp)
	movl	388(%rsp), %esi
	cmpl	$1, %esi
	sete	%al
	andb	%bl, %al
	movl	%eax, 92(%rsp)          # 4-byte Spill
	testl	%esi, %esi
	jle	.LBB1_365
# BB#273:                               #   in Loop: Header=BB1_2 Depth=1
	movl	164(%rsp), %ebx         # 4-byte Reload
	movl	132(%rsp), %ecx         # 4-byte Reload
	movq	152(%rsp), %r8          # 8-byte Reload
	movq	168(%rsp), %r9          # 8-byte Reload
	movq	256(%rsp), %rdx         # 8-byte Reload
.LBB1_274:                              # %if.then.434.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	leal	(%rdx,%rsi), %eax
	movl	92(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %ecx
	leal	2(%rcx,%rax), %edx
	movb	$1, %r10b
	jmp	.LBB1_275
.LBB1_365:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%r10d, %r10d
	movl	164(%rsp), %ebx         # 4-byte Reload
	movq	152(%rsp), %r8          # 8-byte Reload
	movq	168(%rsp), %r9          # 8-byte Reload
	movq	256(%rsp), %rdx         # 8-byte Reload
.LBB1_275:                              # %if.end.441.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	2(%rdx), %eax
	cmpl	$16, %ebx
	cmovnel	%edx, %eax
	movl	%eax, 256(%rsp)         # 4-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	testb	$32, %ah
	jne	.LBB1_276
# BB#289:                               # %if.else.492.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r9, 168(%rsp)          # 8-byte Spill
	movq	%r8, 152(%rsp)          # 8-byte Spill
	movl	%r10d, 180(%rsp)        # 4-byte Spill
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movl	%ebp, 272(%rsp)         # 4-byte Spill
	movl	%ebx, %ebp
	testb	$8, %al
	jne	.LBB1_293
# BB#290:                               # %if.else.492.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	256(%rsp), %eax         # 4-byte Reload
	cmpl	200(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB1_293
# BB#291:                               # %for.body.499.i.i.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	200(%rsp), %ebx         # 4-byte Reload
	subl	256(%rsp), %ebx         # 4-byte Folded Reload
	.align	16, 0x90
.LBB1_292:                              # %for.body.499.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %esi
	movq	%r13, %rdi
	callq	*4736(%rsp)
	decl	%ebx
	jne	.LBB1_292
.LBB1_293:                              # %if.end.505.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_294
# BB#295:                               # %if.else.510.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	jne	.LBB1_296
# BB#297:                               # %if.else.516.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	$0, 152(%rsp)           # 8-byte Folded Reload
	je	.LBB1_300
# BB#298:                               # %if.then.519.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$32, %esi
	jmp	.LBB1_299
.LBB1_276:                              # %if.then.450.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_277
# BB#278:                               # %if.else.454.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testq	%r9, %r9
	jne	.LBB1_279
# BB#280:                               # %if.else.460.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r10d, 180(%rsp)        # 4-byte Spill
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	testq	%r8, %r8
	je	.LBB1_283
# BB#281:                               # %if.then.463.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$32, %esi
	jmp	.LBB1_282
.LBB1_294:                              # %if.then.507.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$45, %esi
	jmp	.LBB1_299
.LBB1_277:                              # %if.then.452.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r10d, 180(%rsp)        # 4-byte Spill
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movl	$45, %esi
	jmp	.LBB1_282
.LBB1_296:                              # %if.then.513.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$43, %esi
.LBB1_299:                              # %if.end.524.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, %rdi
	callq	*4736(%rsp)
.LBB1_300:                              # %if.end.524.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$16, %ebp
	jne	.LBB1_302
# BB#301:                               # %if.then.526.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$48, %esi
	movq	%r13, %rdi
	callq	*4736(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, %esi
	shrl	$10, %esi
	andl	$32, %esi
	xorl	$120, %esi
	movq	%r13, %rdi
	callq	*4736(%rsp)
	jmp	.LBB1_302
.LBB1_279:                              # %if.then.457.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r10d, 180(%rsp)        # 4-byte Spill
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movl	$43, %esi
.LBB1_282:                              # %if.end.468.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, %rdi
	callq	*4736(%rsp)
.LBB1_283:                              # %if.end.468.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebp, 272(%rsp)         # 4-byte Spill
	cmpl	$16, %ebx
	movq	104(%rsp), %rbx         # 8-byte Reload
	jne	.LBB1_285
# BB#284:                               # %if.then.470.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$48, %esi
	movq	%r13, %rdi
	callq	*4736(%rsp)
	movl	%ebx, %esi
	shrl	$10, %esi
	andl	$32, %esi
	xorl	$120, %esi
	movq	%r13, %rdi
	callq	*4736(%rsp)
.LBB1_285:                              # %if.end.478.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$8, %bl
	jne	.LBB1_302
# BB#286:                               # %if.end.478.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	256(%rsp), %eax         # 4-byte Reload
	cmpl	200(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB1_302
# BB#287:                               # %for.body.485.i.i.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	200(%rsp), %ebx         # 4-byte Reload
	subl	256(%rsp), %ebx         # 4-byte Folded Reload
	.align	16, 0x90
.LBB1_288:                              # %for.body.485.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$48, %esi
	movq	%r13, %rdi
	callq	*4736(%rsp)
	decl	%ebx
	jne	.LBB1_288
.LBB1_302:                              # %for.cond.536.preheader.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%r14d, %r14d
	jle	.LBB1_311
# BB#303:                               # %for.body.539.lr.ph.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fldt	276(%rsp)               # 10-byte Folded Reload
	fadds	.LCPI1_8(%rip)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	movslq	%r14d, %rax
	decl	%r14d
	shlq	$4, %rax
	leaq	.Lswitch.table.2-16(%rax), %rbp
	.align	16, 0x90
.LBB1_304:                              # %for.body.539.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$10, 272(%rsp)          # 4-byte Folded Reload
	jne	.LBB1_307
# BB#305:                               # %if.then.i.753.i.i
                                        #   in Loop: Header=BB1_304 Depth=2
	cmpl	$10, %r14d
	jae	.LBB1_306
# BB#308:                               # %switch.lookup.i.763.i.i
                                        #   in Loop: Header=BB1_304 Depth=2
	fldt	(%rbp)
	jmp	.LBB1_309
	.align	16, 0x90
.LBB1_307:                              # %if.else.i.760.i.i
                                        #   in Loop: Header=BB1_304 Depth=2
	movl	%r14d, 384(%rsp)
	fildl	384(%rsp)
	fldt	308(%rsp)               # 10-byte Folded Reload
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fstpt	(%rsp)
	fstpt	16(%rsp)
	callq	powl
	jmp	.LBB1_310
	.align	16, 0x90
.LBB1_306:                              # %sw.default.i.756.i.i
                                        #   in Loop: Header=BB1_304 Depth=2
	movl	%r14d, 380(%rsp)
	fildl	380(%rsp)
	flds	.LCPI1_7(%rip)
	fstpt	(%rsp)
	fstpt	16(%rsp)
	callq	powl
.LBB1_309:                              # %TrioPower.exit766.i.i
                                        #   in Loop: Header=BB1_304 Depth=2
	fldt	308(%rsp)               # 10-byte Folded Reload
	fstpt	308(%rsp)               # 10-byte Folded Spill
.LBB1_310:                              # %TrioPower.exit766.i.i
                                        #   in Loop: Header=BB1_304 Depth=2
	movq	4736(%rsp), %rbx
	fldt	276(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	fstpt	(%rsp)
	callq	floorl
	fldt	308(%rsp)               # 10-byte Folded Reload
	fstpt	16(%rsp)
	fstpt	(%rsp)
	callq	fmodl
	fnstcw	336(%rsp)
	movw	336(%rsp), %ax
	movw	$3199, 336(%rsp)        # imm = 0xC7F
	fldcw	336(%rsp)
	movw	%ax, 336(%rsp)
	fistpl	376(%rsp)
	fldcw	336(%rsp)
	movslq	376(%rsp), %rax
	movsbl	(%r15,%rax), %esi
	movq	%r13, %rdi
	callq	*%rbx
	decl	%r14d
	addq	$-16, %rbp
	cmpl	$-1, %r14d
	jne	.LBB1_304
.LBB1_311:                              # %for.end.562.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpb	$0, 204(%rsp)           # 1-byte Folded Reload
	je	.LBB1_312
# BB#316:                               # %if.then.564.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsbl	internalDecimalPoint(%rip), %esi
	testl	%esi, %esi
	je	.LBB1_317
# BB#366:                               # %if.then.566.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, %rdi
	callq	*4736(%rsp)
	jmp	.LBB1_312
.LBB1_317:                              # %for.cond.571.preheader.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, internalDecimalPointLength(%rip)
	movl	$0, %ebx
	jle	.LBB1_312
	.align	16, 0x90
.LBB1_318:                              # %for.body.574.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	internalDecimalPointString(%rbx), %esi
	movq	%r13, %rdi
	callq	*4736(%rsp)
	incq	%rbx
	movslq	internalDecimalPointLength(%rip), %rax
	cmpq	%rax, %rbx
	jl	.LBB1_318
.LBB1_312:                              # %for.cond.585.preheader.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, %r15
	xorl	%r13d, %r13d
	movq	232(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %r14d
	fldt	308(%rsp)               # 10-byte Folded Reload
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fld	%st(0)
	fstpt	308(%rsp)               # 10-byte Folded Spill
	fldt	240(%rsp)               # 10-byte Folded Reload
	jle	.LBB1_328
	.align	16, 0x90
.LBB1_313:                              # %if.else.596.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_321 Depth 3
	fmul	%st(1)
	fld	%st(0)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	fldt	296(%rsp)               # 10-byte Folded Reload
	fmulp	%st(2)
	fld	%st(1)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	faddp	%st(1)
	fstpt	(%rsp)
	callq	floorl
	fldt	276(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
	fucomi	%st(1)
	fsubr	%st(0), %st(1)
	fldz
	fldt	296(%rsp)               # 10-byte Folded Reload
	fcmovnbe	%st(1), %st(0)
	fstpt	296(%rsp)               # 10-byte Folded Spill
	fxch	%st(2)
	fcmovnbe	%st(2), %st(0)
	fstp	%st(2)
	fxch	%st(1)
	fstpt	240(%rsp)               # 10-byte Folded Spill
	fldt	308(%rsp)               # 10-byte Folded Reload
	fstpt	16(%rsp)
	fstpt	(%rsp)
	callq	fmodl
	fnstcw	334(%rsp)
	movw	334(%rsp), %ax
	movw	$3199, 334(%rsp)        # imm = 0xC7F
	fldcw	334(%rsp)
	movw	%ax, 334(%rsp)
	fistpl	372(%rsp)
	fldcw	334(%rsp)
	movl	372(%rsp), %eax
	testl	%eax, %eax
	je	.LBB1_319
# BB#314:                               # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB1_313 Depth=2
	movl	%eax, 276(%rsp)         # 4-byte Spill
	movq	4736(%rsp), %rax
	testl	%r13d, %r13d
	jle	.LBB1_315
# BB#320:                               # %while.body.lr.ph.i.i
                                        #   in Loop: Header=BB1_313 Depth=2
	movq	192(%rsp), %rcx         # 8-byte Reload
	movsbl	(%rcx), %ebp
	.align	16, 0x90
.LBB1_321:                              # %while.body.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	*%rax
	leal	-1(%r13), %ebx
	movq	4736(%rsp), %rax
	cmpl	$1, %r13d
	movl	%ebx, %r13d
	jg	.LBB1_321
	jmp	.LBB1_322
	.align	16, 0x90
.LBB1_319:                              # %if.then.611.i.i
                                        #   in Loop: Header=BB1_313 Depth=2
	incl	%r13d
	jmp	.LBB1_323
	.align	16, 0x90
.LBB1_315:                              #   in Loop: Header=BB1_313 Depth=2
	movl	%r13d, %ebx
.LBB1_322:                              # %while.end.i.i
                                        #   in Loop: Header=BB1_313 Depth=2
	movslq	276(%rsp), %rcx         # 4-byte Folded Reload
	movq	192(%rsp), %rdx         # 8-byte Reload
	movsbl	(%rdx,%rcx), %esi
	movq	%r15, %rdi
	callq	*%rax
	movl	%ebx, %r13d
.LBB1_323:                              # %for.inc.628.i.i
                                        #   in Loop: Header=BB1_313 Depth=2
	movq	232(%rsp), %rax         # 8-byte Reload
	incl	%r14d
	cmpl	%eax, %r14d
	fldt	308(%rsp)               # 10-byte Folded Reload
	fldt	240(%rsp)               # 10-byte Folded Reload
	jne	.LBB1_313
# BB#324:                               # %for.end.630.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(1)
	fstp	%st(0)
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	fldz
	fldz
	je	.LBB1_328
# BB#325:                               # %for.end.630.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(1)
	fstp	%st(0)
	testl	%r13d, %r13d
	fldz
	fldz
	jle	.LBB1_328
# BB#326:                               # %while.body.636.preheader.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(1)
	fstp	%st(0)
	movq	192(%rsp), %rax         # 8-byte Reload
	movsbl	(%rax), %ebp
	incl	%r13d
	fldz
	fldz
	.align	16, 0x90
.LBB1_327:                              # %while.body.636.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fstp	%st(1)
	fstp	%st(0)
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	*4736(%rsp)
	decl	%r13d
	cmpl	$1, %r13d
	fldz
	fldz
	jg	.LBB1_327
.LBB1_328:                              # %if.end.643.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(1)
	fstp	%st(0)
	movl	180(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	movq	%r15, %rdi
	movl	272(%rsp), %eax         # 4-byte Reload
	movl	132(%rsp), %ecx         # 4-byte Reload
	movq	216(%rsp), %r14         # 8-byte Reload
	fldz
	je	.LBB1_339
# BB#329:                               # %if.then.646.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	movl	%ecx, %r15d
	movl	%eax, %r13d
	movq	104(%rsp), %rax         # 8-byte Reload
	shrl	$10, %eax
	andl	$32, %eax
	cmpl	$16, 164(%rsp)          # 4-byte Folded Reload
	movl	$101, %esi
	movl	$112, %ecx
	cmovel	%ecx, %esi
	xorl	%eax, %esi
	movq	%rdi, %rbp
	callq	*4736(%rsp)
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	setne	%al
	movzbl	%al, %eax
	leal	43(%rax,%rax), %esi
	movq	%rbp, %rdi
	callq	*4736(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	je	.LBB1_331
# BB#330:                               # %if.then.665.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$48, %esi
	leaq	4736(%rsp), %rdi
	callq	*4736(%rsp)
.LBB1_331:                              # %if.end.668.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$16, 164(%rsp)          # 4-byte Folded Reload
	movl	$10, %eax
	movl	%r13d, %ebp
	cmovel	%eax, %ebp
	leal	-1(%r14), %eax
	cmpl	$10, %ebp
	jne	.LBB1_335
# BB#332:                               # %if.then.i.769.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$10, %eax
	jae	.LBB1_333
# BB#334:                               # %TrioPower.exit782.thread.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cltq
	shlq	$4, %rax
	fldt	.Lswitch.table.2(%rax)
	movl	%ebp, %esi
	movl	%r15d, %ebx
	leaq	4736(%rsp), %rax
	movq	%rax, %rdi
	movq	192(%rsp), %r15         # 8-byte Reload
	jmp	.LBB1_337
.LBB1_335:                              # %if.else.i.776.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebp, 364(%rsp)
	fildl	364(%rsp)
	movl	%eax, 368(%rsp)
	fildl	368(%rsp)
	fstpt	16(%rsp)
	fstpt	(%rsp)
	jmp	.LBB1_336
.LBB1_333:                              # %sw.default.i.772.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, 360(%rsp)
	fildl	360(%rsp)
	flds	.LCPI1_7(%rip)
	fstpt	(%rsp)
	fstpt	16(%rsp)
.LBB1_336:                              # %TrioPower.exit782.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	callq	powl
	testl	%r14d, %r14d
	movl	%ebp, %esi
	movl	%r15d, %ebx
	leaq	4736(%rsp), %rax
	movq	%rax, %rdi
	movq	192(%rsp), %r15         # 8-byte Reload
	jle	.LBB1_339
.LBB1_337:                              # %for.body.678.lr.ph.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fnstcw	332(%rsp)
	movw	332(%rsp), %ax
	movw	$3199, 332(%rsp)        # imm = 0xC7F
	fldcw	332(%rsp)
	movw	%ax, 332(%rsp)
	fistpl	356(%rsp)
	fldcw	332(%rsp)
	movl	356(%rsp), %ebp
	fldz
	.align	16, 0x90
.LBB1_338:                              # %for.body.678.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fstp	%st(0)
	movl	%esi, 272(%rsp)         # 4-byte Spill
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%ebp
	xorl	%edx, %edx
	divl	%esi
	movsbl	(%r15,%rdx), %esi
	movq	%rdi, %r13
	callq	*4736(%rsp)
	movl	272(%rsp), %esi         # 4-byte Reload
	movq	%r13, %rdi
	movl	%ebp, %eax
	cltd
	idivl	%esi
	decl	%r14d
	movl	%eax, %ebp
	fldz
	jne	.LBB1_338
.LBB1_339:                              # %if.end.689.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	movq	104(%rsp), %rax         # 8-byte Reload
	testb	$8, %al
	movq	%rdi, %r14
	movl	200(%rsp), %ebx         # 4-byte Reload
	je	.LBB1_361
# BB#340:                               # %if.end.689.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	%ebx, 256(%rsp)         # 4-byte Folded Reload
	jge	.LBB1_361
# BB#341:                               # %for.body.696.i.i.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	subl	256(%rsp), %ebx         # 4-byte Folded Reload
	.align	16, 0x90
.LBB1_342:                              # %for.body.696.i.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %esi
	movq	%r14, %rdi
	callq	*4736(%rsp)
	decl	%ebx
	jne	.LBB1_342
	jmp	.LBB1_361
.LBB1_227:                              # %if.then.i.700.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fxch	%st(1)
	fucomi	%st(1)
	jne	.LBB1_232
	jp	.LBB1_232
# BB#228:                               # %cond.true.i.702.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstpt	276(%rsp)               # 10-byte Folded Spill
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_234
	jp	.LBB1_234
# BB#229:                               # %if.then.i.i.704.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_231
	jp	.LBB1_231
# BB#230:                               # %if.then.i.i.i.705.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_231:                              # %trio_pinf.exit.i.i.707.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB1_234
.LBB1_246:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %ebp
	jmp	.LBB1_251
.LBB1_248:                              #   in Loop: Header=BB1_2 Depth=1
	fxch	%st(1)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	jmp	.LBB1_252
.LBB1_232:                              # %cond.false.i.709.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstpt	276(%rsp)               # 10-byte Folded Spill
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_234
	jp	.LBB1_234
# BB#233:                               # %if.then.i.7.i.711.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	movl	$.L.str.15, %edi
	callq	nan
	fldz
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB1_234:                              # %cond.end.i.714.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	%xmm0, 424(%rsp)
	fldl	424(%rsp)
.LBB1_237:                              # %TrioLogarithm.exit724.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fxch	%st(1)
.LBB1_238:                              # %TrioLogarithm.exit724.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	fnstcw	342(%rsp)
	movw	342(%rsp), %ax
	movw	$3199, 342(%rsp)        # imm = 0xC7F
	fldcw	342(%rsp)
	movw	%ax, 342(%rsp)
	fxch	%st(1)
	fistpl	420(%rsp)
	fldcw	342(%rsp)
	movl	420(%rsp), %r14d
	incl	%r14d
	fldt	276(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
.LBB1_239:                              # %cond.end.291.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testq	%r13, %r13
	fldt	296(%rsp)               # 10-byte Folded Reload
	je	.LBB1_240
# BB#241:                               # %if.then.295.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %bl
	leaq	4736(%rsp), %r13
	movq	232(%rsp), %rcx         # 8-byte Reload
	jne	.LBB1_243
# BB#242:                               #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	movl	%r15d, %ebp
	fxch	%st(1)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	jmp	.LBB1_252
.LBB1_240:                              #   in Loop: Header=BB1_2 Depth=1
	fstp	%st(0)
	movl	%r15d, %ebp
	jmp	.LBB1_251
.LBB1_243:                              # %if.then.298.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %ebp
	fldt	204(%rsp)               # 10-byte Folded Reload
	fld	%st(0)
	fstpt	204(%rsp)               # 10-byte Folded Spill
	fxch	%st(3)
	fucomi	%st(3)
	fstpt	276(%rsp)               # 10-byte Folded Spill
	movl	%r14d, %eax
	movl	$0, %edx
	cmovbel	%edx, %eax
	fxch	%st(2)
	fucompi	%st(2)
	fstp	%st(1)
	cmovael	%r14d, %eax
	subl	%eax, %ecx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	jmp	.LBB1_252
.LBB1_61:                               # %cond.true.i.394.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	fldt	68(%rsp)                # 10-byte Folded Reload
	fstpt	204(%rsp)               # 10-byte Folded Spill
	jne	.LBB1_83
	jp	.LBB1_83
# BB#62:                                # %if.then.i.i.396.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI1_10, %xmm0
	jne	.LBB1_64
	jp	.LBB1_64
# BB#63:                                # %if.then.i.i.i.397.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_64:                               # %trio_pinf.exit.i.i.399.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	xorpd	.LCPI1_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	fldt	68(%rsp)                # 10-byte Folded Reload
	jmp	.LBB1_82
.LBB1_362:                              # %TrioFormatProcess.exit
	movl	4784(%rsp), %eax
	testl	%eax, %eax
	cmovel	4772(%rsp), %eax
.LBB1_363:                              # %cleanup
	addq	$4792, %rsp             # imm = 0x12B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	TrioFormat, .Lfunc_end1-TrioFormat
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_33
	.quad	.LBB1_34
	.quad	.LBB1_26
	.quad	.LBB1_343
	.quad	.LBB1_344
	.quad	.LBB1_347
	.quad	.LBB1_361
	.quad	.LBB1_361
	.quad	.LBB1_357

	.text
	.align	16, 0x90
	.type	TrioOutStreamFile,@function
TrioOutStreamFile:                      # @TrioOutStreamFile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rax
	incl	36(%rbx)
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	fputc
	cmpl	$-1, %eax
	je	.LBB2_1
# BB#2:                                 # %if.else
	incl	40(%rbx)
	popq	%rbx
	retq
.LBB2_1:                                # %if.then
	movl	$-1, 48(%rbx)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	TrioOutStreamFile, .Lfunc_end2-TrioOutStreamFile
	.cfi_endproc

	.globl	trio_vprintf
	.align	16, 0x90
	.type	trio_vprintf,@function
trio_vprintf:                           # @trio_vprintf
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	stdout(%rip), %rdi
	xorl	%esi, %esi
	movl	$TrioOutStreamFile, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	jmp	TrioFormat              # TAILCALL
.Lfunc_end3:
	.size	trio_vprintf, .Lfunc_end3-trio_vprintf
	.cfi_endproc

	.globl	trio_printfv
	.align	16, 0x90
	.type	trio_printfv,@function
trio_printfv:                           # @trio_printfv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	stdout(%rip), %rdi
	xorl	%esi, %esi
	movl	$TrioOutStreamFile, %edx
	movl	$trio_printfv.unused, %r8d
	movq	%rax, %r9
	jmp	TrioFormat              # TAILCALL
.Lfunc_end4:
	.size	trio_printfv, .Lfunc_end4-trio_printfv
	.cfi_endproc

	.globl	trio_fprintf
	.align	16, 0x90
	.type	trio_fprintf,@function
trio_fprintf:                           # @trio_fprintf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 208
	movq	%rsi, %r10
	testb	%al, %al
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB5_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	176(%rsp), %r8
	xorl	%esi, %esi
	movl	$TrioOutStreamFile, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioFormat
	addq	$200, %rsp
	retq
.Lfunc_end5:
	.size	trio_fprintf, .Lfunc_end5-trio_fprintf
	.cfi_endproc

	.globl	trio_vfprintf
	.align	16, 0x90
	.type	trio_vfprintf,@function
trio_vfprintf:                          # @trio_vfprintf
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	xorl	%esi, %esi
	movl	$TrioOutStreamFile, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	jmp	TrioFormat              # TAILCALL
.Lfunc_end6:
	.size	trio_vfprintf, .Lfunc_end6-trio_vfprintf
	.cfi_endproc

	.globl	trio_fprintfv
	.align	16, 0x90
	.type	trio_fprintfv,@function
trio_fprintfv:                          # @trio_fprintfv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	xorl	%esi, %esi
	movl	$TrioOutStreamFile, %edx
	movl	$trio_fprintfv.unused, %r8d
	movq	%rax, %r9
	jmp	TrioFormat              # TAILCALL
.Lfunc_end7:
	.size	trio_fprintfv, .Lfunc_end7-trio_fprintfv
	.cfi_endproc

	.globl	trio_dprintf
	.align	16, 0x90
	.type	trio_dprintf,@function
trio_dprintf:                           # @trio_dprintf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$216, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 224
	movq	%rsi, %r10
	testb	%al, %al
	je	.LBB8_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB8_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movl	%edi, 212(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	212(%rsp), %rdi
	leaq	176(%rsp), %r8
	movl	$0, %esi
	movl	$TrioOutStreamFileDescriptor, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioFormat
	addq	$216, %rsp
	retq
.Lfunc_end8:
	.size	trio_dprintf, .Lfunc_end8-trio_dprintf
	.cfi_endproc

	.align	16, 0x90
	.type	TrioOutStreamFileDescriptor,@function
TrioOutStreamFileDescriptor:            # @TrioOutStreamFileDescriptor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 32
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rax
	movl	(%rax), %edi
	movb	%sil, 15(%rsp)
	incl	36(%rbx)
	leaq	15(%rsp), %rsi
	movl	$1, %edx
	callq	write
	cmpq	$-1, %rax
	je	.LBB9_1
# BB#2:                                 # %if.else
	incl	40(%rbx)
	jmp	.LBB9_3
.LBB9_1:                                # %if.then
	movl	$-8, 48(%rbx)
.LBB9_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	TrioOutStreamFileDescriptor, .Lfunc_end9-TrioOutStreamFileDescriptor
	.cfi_endproc

	.globl	trio_vdprintf
	.align	16, 0x90
	.type	trio_vdprintf,@function
trio_vdprintf:                          # @trio_vdprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	%edi, 4(%rsp)
	leaq	4(%rsp), %rdi
	xorl	%esi, %esi
	movl	$TrioOutStreamFileDescriptor, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	callq	TrioFormat
	popq	%rdx
	retq
.Lfunc_end10:
	.size	trio_vdprintf, .Lfunc_end10-trio_vdprintf
	.cfi_endproc

	.globl	trio_dprintfv
	.align	16, 0x90
	.type	trio_dprintfv,@function
trio_dprintfv:                          # @trio_dprintfv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	%edi, 4(%rsp)
	leaq	4(%rsp), %rdi
	xorl	%esi, %esi
	movl	$TrioOutStreamFileDescriptor, %edx
	movl	$trio_dprintfv.unused, %r8d
	movq	%rax, %r9
	callq	TrioFormat
	popq	%rdx
	retq
.Lfunc_end11:
	.size	trio_dprintfv, .Lfunc_end11-trio_dprintfv
	.cfi_endproc

	.globl	trio_sprintf
	.align	16, 0x90
	.type	trio_sprintf,@function
trio_sprintf:                           # @trio_sprintf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$216, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 224
	movq	%rsi, %r10
	testb	%al, %al
	je	.LBB12_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB12_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rdi, 208(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %r8
	movl	$0, %esi
	movl	$TrioOutStreamString, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioFormat
	movq	208(%rsp), %rcx
	movb	$0, (%rcx)
	addq	$216, %rsp
	retq
.Lfunc_end12:
	.size	trio_sprintf, .Lfunc_end12-trio_sprintf
	.cfi_endproc

	.align	16, 0x90
	.type	TrioOutStreamString,@function
TrioOutStreamString:                    # @TrioOutStreamString
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	movq	(%rax), %rcx
	movb	%sil, (%rcx)
	incq	(%rax)
	incl	36(%rdi)
	incl	40(%rdi)
	retq
.Lfunc_end13:
	.size	TrioOutStreamString, .Lfunc_end13-TrioOutStreamString
	.cfi_endproc

	.globl	trio_vsprintf
	.align	16, 0x90
	.type	trio_vsprintf,@function
trio_vsprintf:                          # @trio_vsprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, (%rsp)
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$TrioOutStreamString, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	callq	TrioFormat
	movq	(%rsp), %rcx
	movb	$0, (%rcx)
	popq	%rdx
	retq
.Lfunc_end14:
	.size	trio_vsprintf, .Lfunc_end14-trio_vsprintf
	.cfi_endproc

	.globl	trio_sprintfv
	.align	16, 0x90
	.type	trio_sprintfv,@function
trio_sprintfv:                          # @trio_sprintfv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, (%rsp)
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$TrioOutStreamString, %edx
	movl	$trio_sprintfv.unused, %r8d
	movq	%rax, %r9
	callq	TrioFormat
	movq	(%rsp), %rcx
	movb	$0, (%rcx)
	popq	%rdx
	retq
.Lfunc_end15:
	.size	trio_sprintfv, .Lfunc_end15-trio_sprintfv
	.cfi_endproc

	.globl	trio_snprintf
	.align	16, 0x90
	.type	trio_snprintf,@function
trio_snprintf:                          # @trio_snprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
	subq	$208, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 224
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	%rdx, %r10
	movq	%rsi, %rbx
	testb	%al, %al
	je	.LBB16_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB16_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdi, 200(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$24, 176(%rsp)
	leaq	-1(%rbx), %rsi
	testq	%rbx, %rbx
	cmoveq	%rbx, %rsi
	leaq	200(%rsp), %rdi
	leaq	176(%rsp), %r8
	movl	$TrioOutStreamStringMax, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioFormat
	testq	%rbx, %rbx
	je	.LBB16_4
# BB#3:                                 # %if.then
	movq	200(%rsp), %rcx
	movb	$0, (%rcx)
.LBB16_4:                               # %if.end
	addq	$208, %rsp
	popq	%rbx
	retq
.Lfunc_end16:
	.size	trio_snprintf, .Lfunc_end16-trio_snprintf
	.cfi_endproc

	.align	16, 0x90
	.type	TrioOutStreamStringMax,@function
TrioOutStreamStringMax:                 # @TrioOutStreamStringMax
	.cfi_startproc
# BB#0:                                 # %entry
	movl	36(%rdi), %eax
	cmpl	44(%rdi), %eax
	jge	.LBB17_2
# BB#1:                                 # %if.then
	movq	24(%rdi), %rax
	movq	(%rax), %rcx
	movb	%sil, (%rcx)
	incq	(%rax)
	incl	40(%rdi)
	movl	36(%rdi), %eax
.LBB17_2:                               # %if.end
	incl	%eax
	movl	%eax, 36(%rdi)
	retq
.Lfunc_end17:
	.size	TrioOutStreamStringMax, .Lfunc_end17-TrioOutStreamStringMax
	.cfi_endproc

	.globl	trio_vsnprintf
	.align	16, 0x90
	.type	trio_vsnprintf,@function
trio_vsnprintf:                         # @trio_vsnprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -16
	movq	%rcx, %rax
	movq	%rdx, %rcx
	movq	%rsi, %rbx
	movq	%rdi, 8(%rsp)
	leaq	-1(%rbx), %rsi
	testq	%rbx, %rbx
	cmoveq	%rbx, %rsi
	leaq	8(%rsp), %rdi
	movl	$TrioOutStreamStringMax, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	callq	TrioFormat
	testq	%rbx, %rbx
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	8(%rsp), %rcx
	movb	$0, (%rcx)
.LBB18_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end18:
	.size	trio_vsnprintf, .Lfunc_end18-trio_vsnprintf
	.cfi_endproc

	.globl	trio_snprintfv
	.align	16, 0x90
	.type	trio_snprintfv,@function
trio_snprintfv:                         # @trio_snprintfv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rcx, %rax
	movq	%rdx, %rcx
	movq	%rsi, %rbx
	movq	%rdi, 8(%rsp)
	leaq	-1(%rbx), %rsi
	testq	%rbx, %rbx
	cmoveq	%rbx, %rsi
	leaq	8(%rsp), %rdi
	movl	$TrioOutStreamStringMax, %edx
	movl	$trio_snprintfv.unused, %r8d
	movq	%rax, %r9
	callq	TrioFormat
	testq	%rbx, %rbx
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	8(%rsp), %rcx
	movb	$0, (%rcx)
.LBB19_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end19:
	.size	trio_snprintfv, .Lfunc_end19-trio_snprintfv
	.cfi_endproc

	.globl	trio_print_pointer
	.align	16, 0x90
	.type	trio_print_pointer,@function
trio_print_pointer:                     # @trio_print_pointer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB20_1
# BB#2:                                 # %if.else
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	$24592, %edx            # imm = 0x6010
	orq	8(%rax), %rdx
	movl	$18, %ecx
	movl	$-1, %r8d
	movl	$16, %r9d
	popq	%rbx
	jmp	TrioWriteNumber         # TAILCALL
.LBB20_1:                               # %while.cond.preheader
	movq	(%rbx), %rdi
	movl	$40, %esi
	callq	*(%rdi)
	movq	(%rbx), %rdi
	movl	$110, %esi
	callq	*(%rdi)
	movq	(%rbx), %rdi
	movl	$105, %esi
	callq	*(%rdi)
	movq	(%rbx), %rdi
	movl	$108, %esi
	callq	*(%rdi)
	movq	(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$41, %esi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end20:
	.size	trio_print_pointer, .Lfunc_end20-trio_print_pointer
	.cfi_endproc

	.align	16, 0x90
	.type	TrioWriteNumber,@function
TrioWriteNumber:                        # @TrioWriteNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$1144, %rsp             # imm = 0x478
.Ltmp43:
	.cfi_def_cfa_offset 1200
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdi, %r14
	movl	$internalDigitsUpper, %eax
	movl	$internalDigitsLower, %r10d
	testb	$-128, %dh
	cmovneq	%rax, %r10
	cmpl	$-1, %r9d
	movl	$10, %edi
	cmovnel	%r9d, %edi
	xorl	%r11d, %r11d
	testq	%rsi, %rsi
	jne	.LBB21_3
# BB#1:                                 # %entry
	testl	%r8d, %r8d
	jne	.LBB21_3
# BB#2:                                 # %land.rhs
	testb	$16, %dl
	sete	%al
	cmpl	$8, %edi
	setne	%r11b
	orb	%al, %r11b
.LBB21_3:                               # %land.end.11
	testb	$64, %dh
	jne	.LBB21_4
# BB#5:                                 # %if.else
	movq	%rsi, %rcx
	negq	%rcx
	cmovlq	%rsi, %rcx
	movq	%rsi, %rax
	shrq	$63, %rax
	movq	%rax, %r13
	jmp	.LBB21_6
.LBB21_4:                               # %if.then.14
	andq	$-5, %rdx
	xorl	%r13d, %r13d
	movq	%rsi, %rcx
.LBB21_6:                               # %if.end.21
	testw	$384, %dx               # imm = 0x180
	movq	%rdx, %r15
	movl	%ecx, %eax
	cmovneq	%rcx, %rax
	leaq	1136(%rsp), %r9
	leaq	1135(%rsp), %rdx
	movb	$0, 1136(%rsp)
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movslq	%edi, %rdi
	movl	$2, %ecx
	.align	16, 0x90
.LBB21_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rbp
	xorl	%edx, %edx
	divq	%rdi
	movslq	%edx, %rdx
	movb	(%r10,%rdx), %bl
	leaq	-1(%rbp), %rdx
	movb	%bl, (%rbp)
	testq	%rax, %rax
	je	.LBB21_9
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB21_7 Depth=1
	cmpl	$1089, %ecx             # imm = 0x441
	leal	1(%rcx), %ecx
	jl	.LBB21_7
.LBB21_9:                               # %for.end
	testb	%r11b, %r11b
	jne	.LBB21_11
# BB#10:                                # %if.then.45
	incl	%r12d
	subl	%r9d, %r12d
	addl	%edx, %r12d
.LBB21_11:                              # %if.end.50
	movq	%r15, %rdi
	movl	$-1, %r15d
	cmpl	$-1, %r8d
	je	.LBB21_12
# BB#13:                                # %if.then.53
	movl	%r11d, 16(%rsp)         # 4-byte Spill
	incl	%r8d
	subl	%r9d, %r8d
	xorl	%eax, %eax
	addl	%r8d, %edx
	cmovsl	%eax, %edx
	orq	$8192, %rdi             # imm = 0x2000
	movl	%edx, %r15d
	jmp	.LBB21_14
.LBB21_12:
	movl	%r11d, 16(%rsp)         # 4-byte Spill
.LBB21_14:                              # %if.end.65
	movq	%r13, %r8
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	testq	%rsi, %rsi
	sete	%al
	movl	%edi, %esi
	andl	$8, %esi
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	movl	%r15d, %r13d
	cmovnel	%ecx, %r13d
	cmpl	$-1, %r15d
	cmovel	%ecx, %r13d
	testl	%r8d, %r8d
	setne	%cl
	movl	%edi, %ebx
	andl	$4, %ebx
	movl	%edi, %r9d
	andl	$2, %r9d
	testb	$6, %dil
	setne	%dl
	orb	%cl, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %r12d
	testb	$16, %dil
	sete	%cl
	orb	%al, %cl
	movb	%cl, 23(%rsp)           # 1-byte Spill
	jne	.LBB21_20
# BB#15:                                # %if.then.84
	movl	36(%rsp), %eax          # 4-byte Reload
	cmpl	$16, %eax
	je	.LBB21_18
# BB#16:                                # %if.then.84
	cmpl	$8, %eax
	jne	.LBB21_17
# BB#19:                                # %sw.bb.86
	movq	40(%rsp), %rax          # 8-byte Reload
	testb	$32, %ah
	sete	%al
	testl	%r13d, %r13d
	sete	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	subl	%eax, %r12d
	jmp	.LBB21_20
.LBB21_17:                              # %if.then.84
	cmpl	$2, %eax
	jne	.LBB21_20
.LBB21_18:                              # %sw.bb
	addl	$-2, %r12d
.LBB21_20:                              # %if.end.95
	testq	%rsi, %rsi
	jne	.LBB21_28
# BB#21:                                # %lor.lhs.false.98
	movq	40(%rsp), %rax          # 8-byte Reload
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$-1, %r15d
	jne	.LBB21_23
# BB#22:                                # %lor.lhs.false.98
	testq	%rax, %rax
	jne	.LBB21_28
.LBB21_23:                              # %while.cond.preheader
	cmpl	%r13d, %r12d
	jle	.LBB21_24
# BB#25:                                # %while.body.lr.ph
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%r9, %rbx
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB21_26:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %esi
	movq	%r14, %rdi
	callq	*(%r14)
	decl	%r12d
	cmpl	%r13d, %r12d
	jg	.LBB21_26
# BB#27:                                # %while.cond.if.end.109.loopexit_crit_edge
	leal	-1(%r13), %r12d
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %r8            # 8-byte Reload
	movq	%rbx, %r9
	movq	(%rsp), %rbx            # 8-byte Reload
	jmp	.LBB21_28
.LBB21_24:
	decl	%r12d
.LBB21_28:                              # %if.end.109
	testl	%r8d, %r8d
	je	.LBB21_31
# BB#29:                                # %if.then.111
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	$45, %esi
	jmp	.LBB21_30
.LBB21_31:                              # %if.else.114
	testq	%rbx, %rbx
	jne	.LBB21_32
# BB#33:                                # %if.else.120
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	testq	%r9, %r9
	movl	36(%rsp), %eax          # 4-byte Reload
	movb	23(%rsp), %bl           # 1-byte Reload
	je	.LBB21_35
# BB#34:                                # %if.then.123
	movl	$32, %esi
	movq	%r14, %rdi
	callq	*(%r14)
	movl	36(%rsp), %eax          # 4-byte Reload
	jmp	.LBB21_35
.LBB21_32:                              # %if.then.117
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	$43, %esi
.LBB21_30:                              # %if.end.128
	movq	%r14, %rdi
	callq	*(%r14)
	movl	36(%rsp), %eax          # 4-byte Reload
	movb	23(%rsp), %bl           # 1-byte Reload
.LBB21_35:                              # %if.end.128
	testb	$1, %bl
	movq	40(%rsp), %rbx          # 8-byte Reload
	jne	.LBB21_45
# BB#36:                                # %if.then.133
	cmpl	$16, %eax
	je	.LBB21_43
# BB#37:                                # %if.then.133
	cmpl	$8, %eax
	jne	.LBB21_38
# BB#40:                                # %sw.bb.142
	testb	$32, %bh
	je	.LBB21_42
# BB#41:                                # %sw.bb.142
	testl	%r13d, %r13d
	jne	.LBB21_45
.LBB21_42:                              # %if.then.148
	movl	$48, %esi
	jmp	.LBB21_44
.LBB21_43:                              # %sw.bb.152
	movl	$48, %esi
	movq	%r14, %rdi
	callq	*(%r14)
	movl	%ebx, %esi
	shrl	$10, %esi
	andl	$32, %esi
	xorl	$120, %esi
	jmp	.LBB21_44
.LBB21_38:                              # %if.then.133
	cmpl	$2, %eax
	jne	.LBB21_45
# BB#39:                                # %sw.bb.134
	movl	$48, %esi
	movq	%r14, %rdi
	callq	*(%r14)
	movl	%ebx, %esi
	shrl	$10, %esi
	andl	$32, %esi
	xorl	$98, %esi
.LBB21_44:                              # %if.end.162
	movq	%r14, %rdi
	callq	*(%r14)
.LBB21_45:                              # %if.end.162
	testb	$32, %bh
	jne	.LBB21_47
# BB#46:
	movl	16(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB21_51
.LBB21_47:                              # %if.then.165
	cmpl	$-1, %r15d
	cmovel	%r12d, %r15d
	testl	%r15d, %r15d
	jle	.LBB21_48
# BB#49:                                # %while.body.174.lr.ph
	incl	%r15d
	movl	16(%rsp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB21_50:                              # %while.body.174
                                        # =>This Inner Loop Header: Depth=1
	movl	$48, %esi
	movq	%r14, %rdi
	callq	*(%r14)
	decl	%r12d
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB21_50
	jmp	.LBB21_51
.LBB21_48:
	movl	16(%rsp), %ebx          # 4-byte Reload
.LBB21_51:                              # %if.end.179
	testb	%bl, %bl
	jne	.LBB21_55
# BB#52:                                # %while.cond.182.preheader
	movb	(%rbp), %al
	testb	%al, %al
	je	.LBB21_55
# BB#53:                                # %while.body.185.lr.ph
	incq	%rbp
	.align	16, 0x90
.LBB21_54:                              # %while.body.185
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	*(%r14)
	movb	(%rbp), %al
	incq	%rbp
	testb	%al, %al
	jne	.LBB21_54
.LBB21_55:                              # %if.end.190
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	je	.LBB21_59
# BB#56:                                # %if.end.190
	testl	%r12d, %r12d
	jle	.LBB21_59
# BB#57:                                # %while.body.198.lr.ph
	incl	%r12d
	.align	16, 0x90
.LBB21_58:                              # %while.body.198
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %esi
	movq	%r14, %rdi
	callq	*(%r14)
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB21_58
.LBB21_59:                              # %if.end.202
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	TrioWriteNumber, .Lfunc_end21-TrioWriteNumber
	.cfi_endproc

	.globl	trio_locale_set_decimal_point
	.align	16, 0x90
	.type	trio_locale_set_decimal_point,@function
trio_locale_set_decimal_point:          # @trio_locale_set_decimal_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	strlen
	movl	%eax, internalDecimalPointLength(%rip)
	cmpl	$1, %eax
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movb	(%rbx), %al
	movb	%al, internalDecimalPoint(%rip)
	popq	%rbx
	retq
.LBB22_2:                               # %if.else
	movb	$0, internalDecimalPoint(%rip)
	movl	$internalDecimalPointString, %edi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	strncpy
	movb	$0, internalDecimalPointString+16(%rip)
	popq	%rbx
	retq
.Lfunc_end22:
	.size	trio_locale_set_decimal_point, .Lfunc_end22-trio_locale_set_decimal_point
	.cfi_endproc

	.globl	trio_locale_set_thousand_separator
	.align	16, 0x90
	.type	trio_locale_set_thousand_separator,@function
trio_locale_set_thousand_separator:     # @trio_locale_set_thousand_separator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movl	$internalThousandSeparator, %edi
	movl	$16, %edx
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, internalThousandSeparator+16(%rip)
	popq	%rax
	retq
.Lfunc_end23:
	.size	trio_locale_set_thousand_separator, .Lfunc_end23-trio_locale_set_thousand_separator
	.cfi_endproc

	.globl	trio_locale_set_grouping
	.align	16, 0x90
	.type	trio_locale_set_grouping,@function
trio_locale_set_grouping:               # @trio_locale_set_grouping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movl	$internalGrouping, %edi
	movl	$63, %edx
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, internalGrouping+63(%rip)
	popq	%rax
	retq
.Lfunc_end24:
	.size	trio_locale_set_grouping, .Lfunc_end24-trio_locale_set_grouping
	.cfi_endproc

	.globl	trio_scanf
	.align	16, 0x90
	.type	trio_scanf,@function
trio_scanf:                             # @trio_scanf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 208
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB25_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB25_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movq	stdin(%rip), %rdi
	leaq	176(%rsp), %r8
	movl	$TrioInStreamFile, %esi
	movl	$TrioUndoStreamFile, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioScan
	addq	$200, %rsp
	retq
.Lfunc_end25:
	.size	trio_scanf, .Lfunc_end25-trio_scanf
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI26_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI26_2:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_1:
	.quad	9218868437227405312     # double +Inf
.LCPI26_7:
	.quad	1602224128              # 0x5f800000
.LCPI26_8:
	.quad	0                       # double 0
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI26_3:
	.long	1098907648              # float 16
.LCPI26_4:
	.long	1031798784              # float 0.0625
.LCPI26_5:
	.long	1073741824              # float 2
.LCPI26_6:
	.long	1092616192              # float 10
	.text
	.align	16, 0x90
	.type	TrioScan,@function
TrioScan:                               # @TrioScan
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 56
	subq	$5400, %rsp             # imm = 0x1518
.Ltmp61:
	.cfi_def_cfa_offset 5456
.Ltmp62:
	.cfi_offset %rbx, -56
.Ltmp63:
	.cfi_offset %r12, -48
.Ltmp64:
	.cfi_offset %r13, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %r12
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %r14
	leaq	200(%rsp), %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset
	movq	%rbp, 208(%rsp)
	movq	%r13, 216(%rsp)
	movq	%r14, 224(%rsp)
	movq	$0, 244(%rsp)
	leaq	256(%rsp), %rdx
	movl	$2, %edi
	movq	%rbx, %rsi
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	TrioParse
	testl	%eax, %eax
	js	.LBB26_284
# BB#1:                                 # %if.end
	cmpb	$0, (%rbx)
	movl	$0, %ebp
	je	.LBB26_283
# BB#2:                                 # %if.end.i
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	leaq	200(%rsp), %rdi
	leaq	5384(%rsp), %rsi
	callq	*208(%rsp)
	leaq	192(%rsp), %r12
	flds	.LCPI26_5(%rip)
	fstpt	84(%rsp)                # 10-byte Folded Spill
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	jmp	.LBB26_3
	.align	16, 0x90
.LBB26_279:                             # %sw.epilog.i
                                        #   in Loop: Header=BB26_3 Depth=1
	addq	$2, %r15
	movl	232(%rsp), %eax
	movl	%eax, 5384(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	296(%rsp,%rax), %ebx
.LBB26_3:                               # %while.cond.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_4 Depth 2
                                        #     Child Loop BB26_7 Depth 2
                                        #       Child Loop BB26_19 Depth 3
                                        #     Child Loop BB26_204 Depth 2
                                        #     Child Loop BB26_246 Depth 2
                                        #     Child Loop BB26_250 Depth 2
                                        #     Child Loop BB26_225 Depth 2
                                        #     Child Loop BB26_48 Depth 2
                                        #     Child Loop BB26_66 Depth 2
                                        #     Child Loop BB26_101 Depth 2
                                        #     Child Loop BB26_115 Depth 2
                                        #     Child Loop BB26_131 Depth 2
                                        #     Child Loop BB26_173 Depth 2
                                        #     Child Loop BB26_177 Depth 2
                                        #     Child Loop BB26_189 Depth 2
                                        #     Child Loop BB26_140 Depth 2
                                        #     Child Loop BB26_149 Depth 2
                                        #     Child Loop BB26_166 Depth 2
	movslq	%r15d, %rax
	leaq	-1(%rax), %rcx
	shlq	$6, %rax
	leaq	(%rax,%r12), %r12
	movq	152(%rsp), %rsi         # 8-byte Reload
	.align	16, 0x90
.LBB26_4:                               # %while.cond.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r15
	movl	64(%r12), %eax
	addq	$64, %r12
	leaq	1(%r15), %rcx
	cmpl	$7, %eax
	je	.LBB26_4
# BB#5:                                 # %while.cond.5.preheader.i
                                        #   in Loop: Header=BB26_3 Depth=1
	shlq	$6, %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	cmpl	292(%rsp,%rcx), %ebx
	jge	.LBB26_13
# BB#6:                                 #   in Loop: Header=BB26_3 Depth=1
	movq	%r15, 112(%rsp)         # 8-byte Spill
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	leaq	292(%rsp,%rcx), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leaq	5392(%rsp), %rbp
	.align	16, 0x90
.LBB26_7:                               # %while.body.10.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_19 Depth 3
	movslq	%ebx, %rax
	movsbq	(%rsi,%rax), %r15
	cmpq	$37, %r15
	jne	.LBB26_17
# BB#8:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB26_7 Depth=2
	movzbl	1(%rax,%rsi), %eax
	cmpl	$37, %eax
	jne	.LBB26_17
# BB#9:                                 # %if.then.21.i
                                        #   in Loop: Header=BB26_7 Depth=2
	cmpl	$37, 5384(%rsp)
	jne	.LBB26_277
# BB#10:                                # %if.then.24.i
                                        #   in Loop: Header=BB26_7 Depth=2
	movq	%rsi, %r13
	leaq	200(%rsp), %rdi
	leaq	5384(%rsp), %rsi
	callq	*208(%rsp)
	addl	$2, %ebx
	jmp	.LBB26_11
	.align	16, 0x90
.LBB26_17:                              # %if.else.28.i
                                        #   in Loop: Header=BB26_7 Depth=2
	movl	%ebx, 152(%rsp)         # 4-byte Spill
	movq	%rsi, %r13
	callq	__ctype_b_loc
	movq	%rax, %r14
	movq	(%r14), %rcx
	testb	$32, 1(%rcx,%r15,2)
	jne	.LBB26_18
# BB#21:                                # %if.else.37.i
                                        #   in Loop: Header=BB26_7 Depth=2
	cmpl	%r15d, 5384(%rsp)
	jne	.LBB26_22
# BB#23:                                # %if.then.43.i
                                        #   in Loop: Header=BB26_7 Depth=2
	leaq	200(%rsp), %rdi
	leaq	5384(%rsp), %rsi
	callq	*208(%rsp)
	movl	152(%rsp), %ebx         # 4-byte Reload
	incl	%ebx
	jmp	.LBB26_11
	.align	16, 0x90
.LBB26_18:                              # %if.then.35.i
                                        #   in Loop: Header=BB26_7 Depth=2
	movq	%rbp, %r15
	movslq	232(%rsp), %rax
	movl	%eax, 4352(%rsp)
	testb	$32, 1(%rcx,%rax,2)
	leaq	200(%rsp), %rbx
	leaq	4352(%rsp), %rbp
	je	.LBB26_20
	.align	16, 0x90
.LBB26_19:                              # %while.body.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        #     Parent Loop BB26_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*208(%rsp)
	movslq	4352(%rsp), %rax
	movq	(%r14), %rcx
	testb	$32, 1(%rcx,%rax,2)
	jne	.LBB26_19
.LBB26_20:                              # %TrioSkipWhitespaces.exit.i
                                        #   in Loop: Header=BB26_7 Depth=2
	movl	%eax, 5384(%rsp)
	movl	152(%rsp), %ebx         # 4-byte Reload
	incl	%ebx
	movq	%r15, %rbp
.LBB26_11:                              # %while.cond.5.backedge.i
                                        #   in Loop: Header=BB26_7 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	(%rax), %ebx
	movq	%r13, %rsi
	jl	.LBB26_7
# BB#12:                                # %while.cond.5.while.end.50_crit_edge.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	(%r12), %eax
	movl	124(%rsp), %ebp         # 4-byte Reload
	movq	112(%rsp), %r15         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
.LBB26_13:                              # %while.end.50.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$-1, %eax
	leaq	192(%rsp), %r12
	je	.LBB26_281
# BB#14:                                # %if.end.57.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	5384(%rsp), %edx
	cmpl	$6, %eax
	je	.LBB26_24
# BB#15:                                # %if.end.57.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$-1, %edx
	je	.LBB26_16
.LBB26_24:                              # %if.end.69.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	264(%rsp,%rcx), %r13
	movl	272(%rsp,%rcx), %ecx
	testl	$131072, %r13d          # imm = 0x20000
	jne	.LBB26_26
# BB#25:                                #   in Loop: Header=BB26_3 Depth=1
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	jmp	.LBB26_27
	.align	16, 0x90
.LBB26_26:                              # %if.then.78.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movl	304(%rsp,%rcx), %ecx
.LBB26_27:                              # %if.end.83.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	128(%rsp), %rsi         # 8-byte Reload
	movl	284(%rsp,%rsi), %r8d
	cmpl	$-1, %r8d
	jne	.LBB26_30
# BB#28:                                # %if.else.92.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testl	$2097152, %r13d         # imm = 0x200000
	movq	128(%rsp), %rsi         # 8-byte Reload
	movl	280(%rsp,%rsi), %r8d
	je	.LBB26_30
# BB#29:                                # %if.then.95.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r8d, %rsi
	shlq	$6, %rsi
	movl	304(%rsp,%rsi), %r8d
	.align	16, 0x90
.LBB26_30:                              # %if.end.110.i
                                        #   in Loop: Header=BB26_3 Depth=1
	decl	%eax
	cmpl	$7, %eax
	ja	.LBB26_277
# BB#31:                                # %if.end.110.i
                                        #   in Loop: Header=BB26_3 Depth=1
	jmpq	*.LJTI26_0(,%rax,8)
.LBB26_32:                              # %sw.bb.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%ebp, %r14d
	testl	%r8d, %r8d
	movl	$10, %eax
	cmovel	%eax, %r8d
	leaq	200(%rsp), %rdi
	leaq	4352(%rsp), %rsi
	movq	%r13, %rdx
	callq	TrioReadNumber
	testl	%eax, %eax
	je	.LBB26_280
# BB#33:                                # %if.end.122.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testl	$67108864, %r13d        # imm = 0x4000000
	movq	%r13, %rcx
	movl	%r14d, %ebp
	jne	.LBB26_279
# BB#34:                                # %if.then.125.i
                                        #   in Loop: Header=BB26_3 Depth=1
	incl	%ebp
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	304(%rsp,%rax), %rax
	testb	$4, %ch
	jne	.LBB26_35
# BB#36:                                # %if.else.134.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$8, %ch
	jne	.LBB26_35
# BB#37:                                # %if.else.138.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$16, %ch
	jne	.LBB26_35
# BB#38:                                # %if.else.142.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$1, %ch
	jne	.LBB26_35
# BB#39:                                # %if.else.146.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$-128, %cl
	jne	.LBB26_35
# BB#40:                                # %if.else.150.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$32, %cl
	movq	4352(%rsp), %rcx
	je	.LBB26_278
# BB#41:                                # %if.then.153.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movw	%cx, (%rax)
	jmp	.LBB26_279
.LBB26_45:                              # %sw.bb.183.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	movq	%r15, 112(%rsp)         # 8-byte Spill
	leaq	5392(%rsp), %rbp
	movq	%r13, 64(%rsp)          # 8-byte Spill
	andq	$67108864, %r13         # imm = 0x4000000
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movl	$0, %eax
	movq	128(%rsp), %rdx         # 8-byte Reload
	jne	.LBB26_47
# BB#46:                                # %if.else.187.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	304(%rsp,%rdx), %rax
.LBB26_47:                              # %if.end.200.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movb	$0, 4352(%rsp)
	cmpl	$511, %ecx              # imm = 0x1FF
	movl	%ecx, %edx
	movl	$511, %eax              # imm = 0x1FF
	cmovgl	%eax, %edx
	testl	%ecx, %ecx
	cmovel	%eax, %edx
	movl	%edx, 136(%rsp)         # 4-byte Spill
	movslq	232(%rsp), %r15
	movl	%r15d, 5392(%rsp)
	callq	__ctype_b_loc
	movq	%rax, %r13
	movq	(%r13), %rax
	testb	$32, 1(%rax,%r15,2)
	leaq	200(%rsp), %rbx
	je	.LBB26_50
	.align	16, 0x90
.LBB26_48:                              # %while.body.i.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*208(%rsp)
	movslq	5392(%rsp), %rax
	movq	(%r13), %rcx
	testb	$32, 1(%rcx,%rax,2)
	jne	.LBB26_48
# BB#49:                                # %TrioSkipWhitespaces.exit.loopexit.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	232(%rsp), %r15d
.LBB26_50:                              # %TrioSkipWhitespaces.exit.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%r15d, 5388(%rsp)
	cmpl	$45, %r15d
	je	.LBB26_52
# BB#51:                                # %TrioSkipWhitespaces.exit.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%ebp, %ebp
	cmpl	$43, %r15d
	jne	.LBB26_53
.LBB26_52:                              # %if.then.5.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movb	%r15b, 4352(%rsp)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	decl	136(%rsp)               # 4-byte Folded Spill
	movl	$1, %ebp
	movl	5388(%rsp), %r15d
.LBB26_53:                              # %if.end.7.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	cmpl	$77, %r15d
	jle	.LBB26_54
# BB#57:                                # %if.end.7.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$110, %r15d
	je	.LBB26_61
# BB#58:                                # %if.end.7.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$105, %r15d
	movl	%ebp, %ebx
	je	.LBB26_63
# BB#59:                                # %if.end.7.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$78, %r15d
	jne	.LBB26_60
.LBB26_61:                              # %sw.bb.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	$1, %r14d
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.LBB26_63
# BB#62:                                #   in Loop: Header=BB26_3 Depth=1
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	jmp	.LBB26_98
.LBB26_263:                             # %sw.bb.303.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%r13, %rbx
	andq	$67108864, %rbx         # imm = 0x4000000
	movl	$0, %esi
	jne	.LBB26_265
# BB#264:                               # %cond.false.307.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	304(%rsp,%rax), %rsi
.LBB26_265:                             # %cond.end.312.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testl	%ecx, %ecx
	movl	$1, %eax
	cmovel	%eax, %ecx
	leaq	200(%rsp), %rdi
	movq	%r13, %rdx
	callq	TrioReadChar
	testl	%eax, %eax
	jne	.LBB26_266
	jmp	.LBB26_281
.LBB26_42:                              # %sw.bb.164.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%r13, %rbx
	andq	$67108864, %rbx         # imm = 0x4000000
	movl	$0, %esi
	jne	.LBB26_44
# BB#43:                                # %cond.false.168.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	304(%rsp,%rax), %rsi
.LBB26_44:                              # %cond.end.172.i
                                        #   in Loop: Header=BB26_3 Depth=1
	leaq	200(%rsp), %rdi
	movq	%r13, %rdx
	callq	TrioReadString
.LBB26_266:                             # %if.end.324.i
                                        #   in Loop: Header=BB26_3 Depth=1
	shrq	$26, %rbx
	xorl	$1, %ebx
	addl	%ebp, %ebx
	movl	%ebx, %ebp
	jmp	.LBB26_279
.LBB26_267:                             # %sw.bb.330.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	movq	%r15, 112(%rsp)         # 8-byte Spill
	leaq	5392(%rsp), %r15
	movq	%r13, %rbx
	andq	$67108864, %rbx         # imm = 0x4000000
	movl	$0, %r14d
	jne	.LBB26_269
# BB#268:                               # %cond.false.334.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	304(%rsp,%rax), %r14
.LBB26_269:                             # %cond.end.339.i
                                        #   in Loop: Header=BB26_3 Depth=1
	orq	$24592, %r13            # imm = 0x6010
	movl	$18, %ecx
	movl	$16, %r8d
	leaq	200(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	4352(%rsp), %rsi
	movq	%r13, %rdx
	callq	TrioReadNumber
	testl	%eax, %eax
	je	.LBB26_272
# BB#270:                               # %if.then.i.151.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testq	%r14, %r14
	movl	124(%rsp), %ecx         # 4-byte Reload
	je	.LBB26_276
# BB#271:                               # %if.then.2.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	4352(%rsp), %rax
	movq	%rax, (%r14)
	jmp	.LBB26_276
.LBB26_253:                             # %sw.bb.254.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	304(%rsp,%rax), %rax
	testq	%rax, %rax
	je	.LBB26_279
# BB#254:                               # %if.then.261.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	236(%rsp), %rsi
	cmpl	$-1, %edx
	movl	$0, %ecx
	movq	$-1, %rdx
	cmovneq	%rdx, %rcx
	addq	%rsi, %rcx
	movq	%r13, %rdx
	testb	$4, %dh
	jne	.LBB26_255
# BB#256:                               # %if.else.270.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$8, %dh
	jne	.LBB26_257
# BB#258:                               # %if.else.275.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$16, %dh
	jne	.LBB26_257
# BB#259:                               # %if.else.280.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$1, %dh
	jne	.LBB26_257
# BB#260:                               # %if.else.285.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$-128, %dl
	jne	.LBB26_257
# BB#261:                               # %if.else.290.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$32, %dl
	jne	.LBB26_262
.LBB26_278:                             # %if.else.295.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%ecx, (%rax)
	jmp	.LBB26_279
.LBB26_203:                             # %sw.bb.210.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	movq	%r15, 112(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	272(%rsp,%rax), %r14
	movslq	%ebx, %rbp
	movq	152(%rsp), %r15         # 8-byte Reload
	.align	16, 0x90
.LBB26_204:                             # %while.cond.211.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rbx
	leaq	1(%rbx), %rbp
	movzbl	(%r15,%rbx), %eax
	cmpl	$91, %eax
	jne	.LBB26_204
# BB#205:                               # %while.end.219.i
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%esi, %esi
	movl	$1028, %edx             # imm = 0x404
	leaq	4352(%rsp), %rdi
	callq	memset
	movslq	%ebp, %rax
	movzbl	(%r15,%rax), %eax
	movq	%r13, %rdx
	cmpl	$94, %eax
	jne	.LBB26_206
# BB#207:                               # %if.then.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	orq	$32, %rdx
	movslq	%ebx, %rbp
	movb	2(%r15,%rbp), %al
	addq	$2, %rbp
	jmp	.LBB26_208
.LBB26_206:                             #   in Loop: Header=BB26_3 Depth=1
	andq	$-33, %rdx
.LBB26_208:                             # %if.end.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movdqa	.LCPI26_0(%rip), %xmm2  # xmm2 = [1,1,1,1]
	movzbl	%al, %ecx
	cmpl	$93, %ecx
	jne	.LBB26_210
# BB#209:                               # %if.then.7.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	incl	4724(%rsp)
	movslq	%ebp, %rbp
	movb	1(%r15,%rbp), %al
	incq	%rbp
.LBB26_210:                             # %if.end.11.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movzbl	%al, %eax
	cmpl	$45, %eax
	jne	.LBB26_213
	jmp	.LBB26_211
.LBB26_35:                              # %if.then.133.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	4352(%rsp), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB26_279
.LBB26_54:                              # %if.end.7.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$48, %r15d
	jne	.LBB26_55
# BB#95:                                # %sw.bb.76.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	leaq	4352(%rsp), %rax
	leaq	(%rax,%rbp), %rax
	leaq	1(%rbp), %r14
	movb	$48, (%rax)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	movl	5388(%rsp), %r15d
	movl	%r15d, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB26_98
# BB#96:                                # %trio_to_upper.exit.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r15d, %rbx
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	cmpl	$88, (%rax,%rbx,4)
	jne	.LBB26_98
# BB#97:                                # %if.then.85.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	leal	2(%rbp), %ebx
	movb	%r15b, 4352(%rsp,%r14)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	movl	$1, 96(%rsp)            # 4-byte Folded Spill
	movl	5388(%rsp), %r15d
	movl	%ebx, %r14d
	jmp	.LBB26_98
.LBB26_272:                             # %if.else.i.157.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testq	%rbx, %rbx
	movq	%r15, %rsi
	movl	$0, %eax
	cmovneq	%rax, %rsi
	xorl	%edx, %edx
	movl	$5, %ecx
	movq	%rbp, %rdi
	movq	%r15, %rbp
	callq	TrioReadString
	movl	$internalNullString, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB26_273
# BB#274:                               # %if.then.10.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testq	%r14, %r14
	movl	124(%rsp), %ecx         # 4-byte Reload
	je	.LBB26_276
# BB#275:                               # %if.then.12.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	$0, (%r14)
.LBB26_276:                             # %if.end.344.i
                                        #   in Loop: Header=BB26_3 Depth=1
	shrq	$26, %rbx
	xorl	$1, %ebx
	addl	%ecx, %ebx
	movl	%ebx, %ebp
	movq	112(%rsp), %r15         # 8-byte Reload
	jmp	.LBB26_279
.LBB26_255:                             # %if.then.268.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%rcx, (%rax)
	jmp	.LBB26_279
.LBB26_257:                             # %if.then.273.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%ecx, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB26_279
.LBB26_55:                              # %if.end.7.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$73, %r15d
	movl	%ebp, %ebx
	jne	.LBB26_56
.LBB26_63:                              # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%ebx, %eax
	subl	%ebp, %eax
	cmpl	136(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB26_69
# BB#64:                                # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r15d, %rax
	movq	(%r13), %rcx
	movzwl	(%rcx,%rax,2), %eax
	andl	$1024, %eax             # imm = 0x400
	testw	%ax, %ax
	je	.LBB26_69
# BB#65:                                # %while.body.lr.ph.i.118.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	136(%rsp), %r14         # 4-byte Folded Reload
	movq	%rbp, %r12
	negq	%r12
	.align	16, 0x90
.LBB26_66:                              # %while.body.i.121.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%r15b, 4352(%rsp,%rbx)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	leaq	1(%r12,%rbx), %rax
	leaq	1(%rbx), %rbx
	cmpq	%r14, %rax
	jge	.LBB26_68
# BB#67:                                # %while.body.i.121.i
                                        #   in Loop: Header=BB26_66 Depth=2
	movslq	5388(%rsp), %r15
	movq	(%r13), %rax
	movzwl	(%rax,%r15,2), %eax
	andl	$1024, %eax             # imm = 0x400
	testw	%ax, %ax
	jne	.LBB26_66
.LBB26_68:                              # %while.cond.while.end_crit_edge.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	leaq	192(%rsp), %r12
.LBB26_69:                              # %while.end.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%ebx, %rax
	movb	$0, 4352(%rsp,%rax)
	leaq	4352(%rsp), %rax
	movq	%rbp, %rcx
	leaq	(%rcx,%rax), %rbp
	movq	%rcx, %rbx
	movl	$.L.str.13, %esi
	movq	%rbp, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	112(%rsp), %r15         # 8-byte Reload
	je	.LBB26_71
# BB#70:                                # %lor.lhs.false.30.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	$.L.str.16, %esi
	movq	%rbp, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB26_71
# BB#83:                                # %if.end.56.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	$.L.str.9, %esi
	leaq	4352(%rsp), %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB26_200
# BB#84:                                # %if.then.59.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	testb	$2, %ah
	jne	.LBB26_85
# BB#88:                                # %if.else.65.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	andl	$128, %eax
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI26_8, %xmm0
	jne	.LBB26_90
	jp	.LBB26_90
# BB#89:                                # %if.then.i.104.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	$.L.str.15, %edi
	movq	%rax, %rbp
	callq	nan
	movq	%rbp, %rax
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB26_90:                              # %trio_nan.exit105.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testq	%rax, %rax
	jne	.LBB26_91
# BB#93:                                # %if.else.70.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB26_94
.LBB26_71:                              # %if.then.35.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testl	%ebx, %ebx
	movq	64(%rsp), %rdx          # 8-byte Reload
	je	.LBB26_77
# BB#72:                                # %if.then.35.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movzbl	4352(%rsp), %eax
	cmpl	$45, %eax
	jne	.LBB26_77
# BB#73:                                # %cond.true.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI26_8, %xmm0
	movq	48(%rsp), %rcx          # 8-byte Reload
	jne	.LBB26_79
	jp	.LBB26_79
# BB#74:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI26_8, %xmm0
	jne	.LBB26_76
	jp	.LBB26_76
# BB#75:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI26_1(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB26_76:                              # %trio_pinf.exit.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	xorpd	.LCPI26_2(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
	jmp	.LBB26_79
.LBB26_77:                              # %cond.false.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI26_8, %xmm0
	movq	48(%rsp), %rcx          # 8-byte Reload
	jne	.LBB26_79
	jp	.LBB26_79
# BB#78:                                # %if.then.i.93.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI26_1(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB26_79:                              # %cond.end.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsd	%xmm0, 184(%rsp)
	fldl	184(%rsp)
	testb	$2, %dh
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	124(%rsp), %ebp         # 4-byte Reload
	jne	.LBB26_80
# BB#81:                                # %if.else.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$-128, %dl
	jne	.LBB26_82
# BB#201:                               # %if.else.52.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fstps	(%rax)
	jmp	.LBB26_202
.LBB26_80:                              # %if.then.47.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fstpt	(%rax)
	jmp	.LBB26_202
.LBB26_60:                              #   in Loop: Header=BB26_3 Depth=1
	movl	%ebp, %r14d
	jmp	.LBB26_98
.LBB26_56:                              #   in Loop: Header=BB26_3 Depth=1
	movl	%ebp, %r14d
.LBB26_98:                              # %while.cond.92.preheader.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$-1, %r15d
	je	.LBB26_107
# BB#99:                                # %while.cond.92.preheader.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%r14d, %eax
	subl	%ebp, %eax
	cmpl	136(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB26_107
# BB#100:                               # %while.body.100.lr.ph.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r14d, %rbx
	movl	%ebp, %r12d
	negl	%r12d
	.align	16, 0x90
.LBB26_101:                             # %while.body.100.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movslq	%r15d, %rax
	movq	(%r13), %rcx
	movzwl	(%rcx,%rax,2), %eax
	je	.LBB26_104
# BB#102:                               # %cond.true.102.i.i
                                        #   in Loop: Header=BB26_101 Depth=2
	testb	$16, %ah
	jne	.LBB26_105
	jmp	.LBB26_103
.LBB26_104:                             # %cond.false.109.i.i
                                        #   in Loop: Header=BB26_101 Depth=2
	testb	$8, %ah
	je	.LBB26_103
.LBB26_105:                             # %if.then.116.i.i
                                        #   in Loop: Header=BB26_101 Depth=2
	leaq	1(%rbx), %r14
	movb	%r15b, 4352(%rsp,%rbx)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	movl	5388(%rsp), %r15d
	leal	1(%r12,%rbx), %eax
	cmpl	136(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB26_107
# BB#106:                               # %if.then.116.i.i
                                        #   in Loop: Header=BB26_101 Depth=2
	cmpl	$-1, %r15d
	movq	%r14, %rbx
	jne	.LBB26_101
	jmp	.LBB26_107
.LBB26_103:                             # %cond.true.102.i.i.while.end.124.i.i.loopexit_crit_edge
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%ebx, %r14d
.LBB26_107:                             # %while.end.124.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$46, %r15d
	jne	.LBB26_108
# BB#114:                               # %if.then.127.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r14d, %rbx
	movb	$46, 4352(%rsp,%rbx)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	incl	%ebx
	movslq	%ebx, %r14
	movl	%ebp, %ebx
	negl	%ebx
	leaq	192(%rsp), %r12
	jmp	.LBB26_115
	.align	16, 0x90
.LBB26_120:                             # %while.body.154.i.i
                                        #   in Loop: Header=BB26_115 Depth=2
	movb	%r15b, 4352(%rsp,%r14)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	incq	%r14
.LBB26_115:                             # %while.cond.133.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movslq	5388(%rsp), %r15
	movq	(%r13), %rax
	movzwl	(%rax,%r15,2), %eax
	leal	(%rbx,%r14), %ecx
	je	.LBB26_118
# BB#116:                               # %cond.true.135.i.i
                                        #   in Loop: Header=BB26_115 Depth=2
	cmpl	136(%rsp), %ecx         # 4-byte Folded Reload
	jge	.LBB26_109
# BB#117:                               # %cond.true.135.i.i
                                        #   in Loop: Header=BB26_115 Depth=2
	andl	$4096, %eax             # imm = 0x1000
	jne	.LBB26_120
	jmp	.LBB26_109
	.align	16, 0x90
.LBB26_118:                             # %cond.false.142.i.i
                                        #   in Loop: Header=BB26_115 Depth=2
	cmpl	136(%rsp), %ecx         # 4-byte Folded Reload
	jge	.LBB26_109
# BB#119:                               # %cond.false.142.i.i
                                        #   in Loop: Header=BB26_115 Depth=2
	andl	$2048, %eax             # imm = 0x800
	jne	.LBB26_120
	jmp	.LBB26_109
.LBB26_108:                             #   in Loop: Header=BB26_3 Depth=1
	leaq	192(%rsp), %r12
.LBB26_109:                             # %if.end.161.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	%r15d, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	movl	%r15d, %eax
	ja	.LBB26_111
# BB#110:                               # %cond.true.i.i.i.110.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r15d, %rbx
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %eax
.LBB26_111:                             # %trio_to_upper.exit112.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	je	.LBB26_121
# BB#112:                               # %cond.true.163.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$80, %eax
	je	.LBB26_123
# BB#113:                               #   in Loop: Header=BB26_3 Depth=1
	movq	112(%rsp), %r15         # 8-byte Reload
	jmp	.LBB26_133
.LBB26_121:                             # %cond.false.167.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$69, %eax
	jne	.LBB26_122
.LBB26_123:                             # %if.then.171.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r14d, %rbx
	movb	%r15b, 4352(%rsp,%rbx)
	incq	%rbx
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	movl	5388(%rsp), %eax
	cmpl	$45, %eax
	je	.LBB26_125
# BB#124:                               # %if.then.171.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$43, %eax
	jne	.LBB26_126
.LBB26_125:                             # %if.then.182.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	addl	$2, %r14d
	movb	%al, 4352(%rsp,%rbx)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	movl	5388(%rsp), %eax
	movl	%r14d, %ebx
.LBB26_126:                             # %while.cond.189.preheader.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	112(%rsp), %r15         # 8-byte Reload
	movl	%ebx, %ecx
	subl	%ebp, %ecx
	cmpl	136(%rsp), %ecx         # 4-byte Folded Reload
	jge	.LBB26_127
# BB#128:                               # %while.cond.189.preheader.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%eax, %rcx
	movq	(%r13), %rdx
	movzwl	(%rdx,%rcx,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	testw	%cx, %cx
	je	.LBB26_129
# BB#130:                               # %while.body.201.lr.ph.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%ebx, %r14
	movl	%ebp, %ebx
	negl	%ebx
	.align	16, 0x90
.LBB26_131:                             # %while.body.201.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, 4352(%rsp,%r14)
	leaq	200(%rsp), %rdi
	leaq	5388(%rsp), %rsi
	callq	*208(%rsp)
	leal	1(%rbx,%r14), %eax
	incq	%r14
	cmpl	136(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB26_133
# BB#132:                               # %while.body.201.i.i
                                        #   in Loop: Header=BB26_131 Depth=2
	movslq	5388(%rsp), %rax
	movq	(%r13), %rcx
	movzwl	(%rcx,%rax,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	testw	%cx, %cx
	jne	.LBB26_131
	jmp	.LBB26_133
.LBB26_122:                             #   in Loop: Header=BB26_3 Depth=1
	movq	112(%rsp), %r15         # 8-byte Reload
	jmp	.LBB26_133
.LBB26_85:                              # %if.then.62.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	.LCPI26_8, %xmm0
	jne	.LBB26_87
	jp	.LBB26_87
# BB#86:                                # %if.then.i.101.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	$.L.str.15, %edi
	callq	nan
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB26_87:                              # %trio_nan.exit.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsd	%xmm0, 192(%rsp)
	fldl	192(%rsp)
	movq	56(%rsp), %rax          # 8-byte Reload
	fstpt	(%rax)
	jmp	.LBB26_92
.LBB26_127:                             #   in Loop: Header=BB26_3 Depth=1
	movl	%ebx, %r14d
	jmp	.LBB26_133
.LBB26_129:                             #   in Loop: Header=BB26_3 Depth=1
	movl	%ebx, %r14d
.LBB26_133:                             # %if.end.208.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	%ebp, %r14d
	je	.LBB26_200
# BB#134:                               # %if.end.208.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movb	4352(%rsp), %al
	testb	%al, %al
	je	.LBB26_200
# BB#135:                               # %if.end.217.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%r14d, %rax
	movb	$0, 4352(%rsp,%rax)
	movq	64(%rsp), %rax          # 8-byte Reload
	testb	$2, %ah
	jne	.LBB26_136
# BB#197:                               # %if.else.225.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%esi, %esi
	leaq	4352(%rsp), %rdi
	testb	$-128, %al
	jne	.LBB26_198
# BB#199:                               # %if.else.231.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	callq	strtof
.LBB26_94:                              # %if.end.204.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax)
	jmp	.LBB26_92
.LBB26_136:                             # %if.then.222.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	4352(%rsp), %eax
	movl	%eax, %edx
	shrl	$8, %edx
	movzbl	%al, %ecx
	cmpl	$48, %ecx
	jne	.LBB26_168
# BB#137:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	orb	$32, %dl
	movzbl	%dl, %ecx
	cmpl	$120, %ecx
	jne	.LBB26_138
# BB#139:                               # %if.then.i.115.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%r15, 112(%rsp)         # 8-byte Spill
	shrl	$16, %eax
	movsbq	%al, %rcx
	movq	(%r13), %r14
	movzwl	(%r14,%rcx,2), %ecx
	testb	$16, %ch
	leaq	4354(%rsp), %rbp
	fldz
	movq	128(%rsp), %r15         # 8-byte Reload
	je	.LBB26_146
.LBB26_140:                             # %while.body.i.116.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%al, %eax
	fmuls	.LCPI26_3(%rip)
	testb	$8, %ch
	jne	.LBB26_141
# BB#142:                               # %cond.false.i.i.i
                                        #   in Loop: Header=BB26_140 Depth=2
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB26_144
# BB#143:                               # %cond.true.i.i.i.122.i.i
                                        #   in Loop: Header=BB26_140 Depth=2
	movslq	%eax, %rbx
	fstpt	136(%rsp)               # 10-byte Folded Spill
	callq	__ctype_toupper_loc
	fldt	136(%rsp)               # 10-byte Folded Reload
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %eax
.LBB26_144:                             # %internal_to_upper.exit.i.i.i
                                        #   in Loop: Header=BB26_140 Depth=2
	addl	$-55, %eax
	jmp	.LBB26_145
.LBB26_141:                             # %cond.true.i.i.i
                                        #   in Loop: Header=BB26_140 Depth=2
	addl	$-48, %eax
.LBB26_145:                             # %cond.end.i.i.i
                                        #   in Loop: Header=BB26_140 Depth=2
	movl	%eax, 180(%rsp)
	fiaddl	180(%rsp)
	movsbq	1(%rbp), %rax
	incq	%rbp
	movzwl	(%r14,%rax,2), %ecx
	testb	$16, %ch
	jne	.LBB26_140
.LBB26_146:                             # %while.end.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fld	%st(0)
	fstpt	64(%rsp)                # 10-byte Folded Spill
	xorl	%r13d, %r13d
	movzbl	%al, %eax
	cmpl	$46, %eax
	jne	.LBB26_147
# BB#148:                               # %while.cond.31.preheader.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsbq	1(%rbp), %rax
	movzwl	(%r14,%rax,2), %ecx
	testb	$16, %ch
	fld1
	fldz
	je	.LBB26_156
.LBB26_149:                             # %while.body.39.i.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%al, %eax
	fxch	%st(1)
	fmuls	.LCPI26_4(%rip)
	testb	$8, %ch
	jne	.LBB26_150
# BB#151:                               # %cond.false.50.i.i.i
                                        #   in Loop: Header=BB26_149 Depth=2
	fxch	%st(1)
	fstpt	136(%rsp)               # 10-byte Folded Spill
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB26_152
# BB#153:                               # %cond.true.i.i.6.i.i.i
                                        #   in Loop: Header=BB26_149 Depth=2
	fstp	%st(1)
	movslq	%eax, %rbx
	fstpt	96(%rsp)                # 10-byte Folded Spill
	callq	__ctype_toupper_loc
	fldt	96(%rsp)                # 10-byte Folded Reload
	fldt	64(%rsp)                # 10-byte Folded Reload
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %eax
	fldt	136(%rsp)               # 10-byte Folded Reload
	jmp	.LBB26_154
.LBB26_150:                             # %cond.true.47.i.i.i
                                        #   in Loop: Header=BB26_149 Depth=2
	addl	$-48, %eax
	fxch	%st(2)
	fxch	%st(1)
	jmp	.LBB26_155
.LBB26_152:                             #   in Loop: Header=BB26_149 Depth=2
	fldt	136(%rsp)               # 10-byte Folded Reload
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
.LBB26_154:                             # %internal_to_upper.exit8.i.i.i
                                        #   in Loop: Header=BB26_149 Depth=2
	addl	$-55, %eax
.LBB26_155:                             # %cond.end.55.i.i.i
                                        #   in Loop: Header=BB26_149 Depth=2
	movl	%eax, 176(%rsp)
	fld	%st(2)
	fimull	176(%rsp)
	faddp	%st(1)
	movsbq	2(%rbp), %rax
	movzwl	(%r14,%rax,2), %ecx
	incq	%rbp
	testb	$16, %ch
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
	jne	.LBB26_149
.LBB26_156:                             # %while.end.61.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fstp	%st(1)
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$112, %eax
	jne	.LBB26_163
# BB#157:                               # %if.then.69.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%r12, %rbx
	movzbl	2(%rbp), %eax
	cmpl	$45, %eax
	je	.LBB26_160
# BB#158:                               # %if.then.69.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movzbl	%al, %ecx
	cmpl	$43, %ecx
	jne	.LBB26_159
.LBB26_160:                             # %if.then.78.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movzbl	%al, %eax
	cmpl	$45, %eax
	sete	%al
	movzbl	%al, %r12d
	movb	3(%rbp), %al
	addq	$3, %rbp
	jmp	.LBB26_161
.LBB26_198:                             # %if.then.228.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	callq	strtod
.LBB26_91:                              # %if.then.68.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
.LBB26_92:                              # %if.end.204.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	124(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB26_202
.LBB26_168:                             # %if.else.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$45, %ecx
	sete	%bl
	movzbl	%bl, %edi
	movl	124(%rsp), %ebp         # 4-byte Reload
	je	.LBB26_171
# BB#169:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpl	$43, %ecx
	jne	.LBB26_170
.LBB26_171:                             # %if.then.111.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	leaq	4353(%rsp), %rax
	jmp	.LBB26_172
.LBB26_82:                              # %if.then.50.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fstp	%st(0)
	movsd	%xmm0, (%rax)
	jmp	.LBB26_202
.LBB26_138:                             #   in Loop: Header=BB26_3 Depth=1
	movb	$48, %dl
	xorl	%edi, %edi
	leaq	4352(%rsp), %rax
	movl	124(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB26_172
.LBB26_147:                             #   in Loop: Header=BB26_3 Depth=1
	fldz
	jmp	.LBB26_163
.LBB26_170:                             #   in Loop: Header=BB26_3 Depth=1
	movb	%al, %dl
	leaq	4352(%rsp), %rax
.LBB26_172:                             # %while.cond.114.preheader.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsbq	%dl, %rsi
	movq	(%r13), %rcx
	testb	$8, 1(%rcx,%rsi,2)
	fldz
	je	.LBB26_174
	.align	16, 0x90
.LBB26_173:                             # %while.body.122.i.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%dl, %edx
	fmuls	.LCPI26_6(%rip)
	addl	$-48, %edx
	movl	%edx, 172(%rsp)
	fiaddl	172(%rsp)
	movsbq	1(%rax), %rdx
	incq	%rax
	testb	$8, 1(%rcx,%rdx,2)
	jne	.LBB26_173
.LBB26_174:                             # %while.end.129.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movzbl	%dl, %esi
	cmpl	$46, %esi
	movl	%edi, %r13d
	jne	.LBB26_175
# BB#176:                               # %while.cond.135.preheader.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsbq	1(%rax), %rdx
	incq	%rax
	testb	$8, 1(%rcx,%rdx,2)
	fld1
	fldz
	je	.LBB26_178
.LBB26_177:                             # %while.body.143.i.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%dl, %edx
	fxch	%st(1)
	fdivs	.LCPI26_6(%rip)
	addl	$-48, %edx
	movl	%edx, 168(%rsp)
	fld	%st(0)
	fimull	168(%rsp)
	faddp	%st(2)
	movsbq	1(%rax), %rdx
	incq	%rax
	testb	$8, 1(%rcx,%rdx,2)
	fxch	%st(1)
	jne	.LBB26_177
	jmp	.LBB26_178
.LBB26_175:                             #   in Loop: Header=BB26_3 Depth=1
	fldz
	fldz
	fxch	%st(1)
.LBB26_178:                             # %if.end.152.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fstp	%st(1)
	addb	$-68, %dl
	movzbl	%dl, %edx
	cmpl	$33, %edx
	jbe	.LBB26_180
# BB#179:                               #   in Loop: Header=BB26_3 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	faddp	%st(1)
	jmp	.LBB26_196
.LBB26_180:                             # %if.end.152.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movabsq	$12884901891, %rsi      # imm = 0x300000003
	btq	%rdx, %rsi
	jae	.LBB26_181
# BB#182:                               # %if.then.168.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movzbl	1(%rax), %esi
	cmpl	$45, %esi
	sete	%dl
	je	.LBB26_185
# BB#183:                               # %if.then.168.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movzbl	%sil, %edi
	cmpl	$43, %edi
	jne	.LBB26_184
.LBB26_185:                             # %if.then.180.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movb	2(%rax), %sil
	addq	$2, %rax
	jmp	.LBB26_186
.LBB26_181:                             #   in Loop: Header=BB26_3 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	faddp	%st(1)
	jmp	.LBB26_196
.LBB26_184:                             #   in Loop: Header=BB26_3 Depth=1
	incq	%rax
.LBB26_186:                             # %while.cond.183.preheader.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsbq	%sil, %rsi
	testb	$8, 1(%rcx,%rsi,2)
	jne	.LBB26_188
# BB#187:                               #   in Loop: Header=BB26_3 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	faddp	%st(1)
	jmp	.LBB26_196
.LBB26_188:                             # %while.body.191.i.i.i.preheader
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%r12, %rbx
	movzbl	%dl, %r12d
	incq	%rax
	xorl	%edx, %edx
	fldz
.LBB26_189:                             # %while.body.191.i.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fstp	%st(0)
	leaq	(%rdx,%rdx,4), %rdx
	leaq	-48(%rsi,%rdx,2), %rdx
	movsbq	(%rax), %rsi
	incq	%rax
	testb	$8, 1(%rcx,%rsi,2)
	flds	.LCPI26_6(%rip)
	jne	.LBB26_189
	jmp	.LBB26_190
.LBB26_262:                             # %if.then.293.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movw	%cx, (%rax)
	jmp	.LBB26_279
.LBB26_159:                             #   in Loop: Header=BB26_3 Depth=1
	addq	$2, %rbp
	xorl	%r12d, %r12d
.LBB26_161:                             # %while.cond.83.preheader.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsbq	%al, %rax
	xorl	%r13d, %r13d
	testb	$8, 1(%r14,%rax,2)
	jne	.LBB26_165
# BB#162:                               #   in Loop: Header=BB26_3 Depth=1
	movq	%rbx, %r12
.LBB26_163:                             # %if.end.202.thread91.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	112(%rsp), %r15         # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	124(%rsp), %ebp         # 4-byte Reload
	faddp	%st(1)
	jmp	.LBB26_196
.LBB26_165:                             # %while.body.91.i.i.i.preheader
                                        #   in Loop: Header=BB26_3 Depth=1
	incq	%rbp
	xorl	%edx, %edx
.LBB26_166:                             # %while.body.91.i.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rdx,%rdx,4), %rcx
	leaq	-48(%rax,%rcx,2), %rdx
	movsbq	(%rbp), %rax
	incq	%rbp
	xorl	%r13d, %r13d
	testb	$8, 1(%r14,%rax,2)
	jne	.LBB26_166
# BB#167:                               #   in Loop: Header=BB26_3 Depth=1
	fldt	84(%rsp)                # 10-byte Folded Reload
	movq	112(%rsp), %r15         # 8-byte Reload
	movl	124(%rsp), %ebp         # 4-byte Reload
.LBB26_190:                             # %if.end.202.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fxch	%st(2)
	faddp	%st(1)
	testq	%rdx, %rdx
	je	.LBB26_191
# BB#192:                               # %if.then.206.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fstpt	136(%rsp)               # 10-byte Folded Spill
	movq	%rdx, 160(%rsp)
	setns	%al
	movzbl	%al, %eax
	fildll	160(%rsp)
	fadds	.LCPI26_7(,%rax,4)
	fxch	%st(1)
	fstpt	(%rsp)
	fstpt	16(%rsp)
	callq	powl
	testl	%r12d, %r12d
	je	.LBB26_194
# BB#193:                               # %if.then.208.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fldt	136(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	jmp	.LBB26_195
.LBB26_191:                             #   in Loop: Header=BB26_3 Depth=1
	fstp	%st(1)
	jmp	.LBB26_195
.LBB26_194:                             # %if.else.212.i.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	fldt	136(%rsp)               # 10-byte Folded Reload
	fmulp	%st(1)
.LBB26_195:                             # %trio_to_long_double.exit.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%rbx, %r12
	movq	48(%rsp), %rcx          # 8-byte Reload
.LBB26_196:                             # %trio_to_long_double.exit.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%r13d, %r13d
	fld	%st(0)
	fchs
	fcmove	%st(1), %st(0)
	fstp	%st(1)
	fstpt	(%rax)
.LBB26_202:                             # %if.end.204.i
                                        #   in Loop: Header=BB26_3 Depth=1
	shrq	$26, %rcx
	xorl	$1, %ecx
	addl	%ebp, %ecx
	movl	%ecx, %ebp
	jmp	.LBB26_279
	.align	16, 0x90
.LBB26_211:                             # %if.then.17.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	incl	4532(%rsp)
.LBB26_212:                             # %for.cond.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	incl	%ebp
.LBB26_213:                             # %for.cond.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%ebp, %rcx
	movsbq	(%r15,%rcx), %rax
	cmpq	$45, %rax
	jne	.LBB26_214
# BB#217:                               # %sw.bb.i.128.i
                                        #   in Loop: Header=BB26_3 Depth=1
	leaq	1(%rcx), %rbp
	movsbq	1(%r15,%rcx), %rax
	cmpq	$93, %rax
	je	.LBB26_211
# BB#218:                               # %sw.bb.i.128.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	%al, %al
	je	.LBB26_219
# BB#236:                               # %if.end.50.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movsbq	-1(%rcx,%r15), %rcx
	cmpl	%eax, %ecx
	jg	.LBB26_237
# BB#238:                               # %for.body.65.lr.ph.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%rdx, %rsi
	cmpq	%rax, %rcx
	movq	%rax, %rdi
	cmovgeq	%rcx, %rdi
	movq	%rdi, %rdx
	subq	%rcx, %rdx
	cmpq	$-1, %rdx
	je	.LBB26_239
# BB#240:                               # %overflow.checked
                                        #   in Loop: Header=BB26_3 Depth=1
	incq	%rdi
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	andq	$-8, %rdx
	leaq	(%rdi,%rcx), %r8
	andq	$-8, %rdi
	je	.LBB26_248
# BB#241:                               # %vector.body.preheader
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovgeq	%rax, %rbx
	incq	%rbx
	subq	%rcx, %rbx
	addq	$-8, %rbx
	movq	%rbx, %rdi
	shrq	$3, %rdi
	btq	$3, %rbx
	jb	.LBB26_242
# BB#243:                               # %vector.body.prol
                                        #   in Loop: Header=BB26_3 Depth=1
	movdqu	4352(%rsp,%rcx,4), %xmm0
	movdqu	4368(%rsp,%rcx,4), %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm2, %xmm1
	movdqu	%xmm0, 4352(%rsp,%rcx,4)
	movdqu	%xmm1, 4368(%rsp,%rcx,4)
	leaq	8(%rcx), %rbx
	jmp	.LBB26_244
.LBB26_214:                             # %for.cond.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	%al, %al
	je	.LBB26_221
# BB#215:                               # %for.cond.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movzbl	%al, %ecx
	cmpl	$93, %ecx
	je	.LBB26_221
# BB#216:                               # %sw.default.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	incl	4352(%rsp,%rax,4)
	jmp	.LBB26_212
.LBB26_239:                             #   in Loop: Header=BB26_3 Depth=1
	movq	%rsi, %rdx
	jmp	.LBB26_249
.LBB26_242:                             #   in Loop: Header=BB26_3 Depth=1
	movq	%rcx, %rbx
.LBB26_244:                             # %vector.body.preheader.split
                                        #   in Loop: Header=BB26_3 Depth=1
	addq	%rcx, %rdx
	testq	%rdi, %rdi
	je	.LBB26_247
# BB#245:                               # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpq	%rcx, %rax
	movq	%rcx, %rdi
	cmovgeq	%rax, %rdi
	incq	%rdi
	subq	%rcx, %rdi
	andq	$-8, %rdi
	addq	%rcx, %rdi
	subq	%rbx, %rdi
	leaq	4400(%rsp), %rcx
	leaq	(%rcx,%rbx,4), %rcx
	.align	16, 0x90
.LBB26_246:                             # %vector.body
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rcx), %xmm0
	movdqu	-32(%rcx), %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm2, %xmm1
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm1, -32(%rcx)
	movdqu	-16(%rcx), %xmm0
	movdqu	(%rcx), %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm2, %xmm1
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm1, (%rcx)
	addq	$64, %rcx
	addq	$-16, %rdi
	jne	.LBB26_246
.LBB26_247:                             #   in Loop: Header=BB26_3 Depth=1
	movq	%rdx, %rcx
.LBB26_248:                             # %middle.block
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpq	%rcx, %r8
	movq	%rsi, %rdx
	je	.LBB26_212
.LBB26_249:                             # %for.body.65.i.i.preheader
                                        #   in Loop: Header=BB26_3 Depth=1
	decq	%rcx
	.align	16, 0x90
.LBB26_250:                             # %for.body.65.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	4356(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB26_250
	jmp	.LBB26_212
.LBB26_219:                             # %if.then.48.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	shll	$8, %ebp
	orl	$2, %ebp
	jmp	.LBB26_220
.LBB26_237:                             # %if.then.55.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	shll	$8, %ebp
	orl	$7, %ebp
.LBB26_220:                             # %TrioGetCharacterClass.exit.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testl	%ebp, %ebp
	jg	.LBB26_252
.LBB26_221:                             # %if.end.227.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	%r14, %rcx
	movq	%rdx, %r14
	andq	$67108864, %r14         # imm = 0x4000000
	movl	$0, %r12d
	jne	.LBB26_223
# BB#222:                               # %cond.false.231.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	304(%rsp,%rax), %r12
.LBB26_223:                             # %cond.end.236.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	(%rcx), %r13
	testq	%r13, %r13
	movl	232(%rsp), %eax
	movl	%eax, 5392(%rsp)
	movq	112(%rsp), %r15         # 8-byte Reload
	js	.LBB26_251
# BB#224:                               # %land.rhs.lr.ph.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	andl	$32, %edx
	cmpl	$-1, %eax
	movl	$0, %ecx
	movl	$0, %ebp
	je	.LBB26_232
	.align	16, 0x90
.LBB26_225:                             # %lor.rhs.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbp
	testq	%rdx, %rdx
	movq	%rdx, %rbx
	setne	%cl
	movslq	%eax, %rdx
	cmpl	$0, 4352(%rsp,%rdx,4)
	sete	%dl
	xorb	%cl, %dl
	jne	.LBB26_232
# BB#226:                               # %for.body.i.i
                                        #   in Loop: Header=BB26_225 Depth=2
	testq	%r12, %r12
	je	.LBB26_228
# BB#227:                               # %if.then.i.141.i
                                        #   in Loop: Header=BB26_225 Depth=2
	movb	%al, (%r12,%rbp)
.LBB26_228:                             # %if.end.i.145.i
                                        #   in Loop: Header=BB26_225 Depth=2
	leaq	200(%rsp), %rdi
	leaq	5392(%rsp), %rsi
	callq	*208(%rsp)
	leaq	1(%rbp), %rcx
	testl	%r13d, %r13d
	movq	%rbx, %rdx
	je	.LBB26_230
# BB#229:                               # %if.end.i.145.i
                                        #   in Loop: Header=BB26_225 Depth=2
	cmpq	%r13, %rcx
	jge	.LBB26_231
.LBB26_230:                             # %if.end.land.rhs_crit_edge.i.i
                                        #   in Loop: Header=BB26_225 Depth=2
	movl	5392(%rsp), %eax
	cmpl	$-1, %eax
	jne	.LBB26_225
.LBB26_231:                             # %for.end.i.i.loopexitsplit
                                        #   in Loop: Header=BB26_3 Depth=1
	incq	%rbp
.LBB26_232:                             # %for.end.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testl	%ebp, %ebp
	je	.LBB26_251
# BB#233:                               # %if.end.13.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	testq	%r12, %r12
	je	.LBB26_235
# BB#234:                               # %if.then.15.i.i
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	%ebp, %rax
	movb	$0, (%r12,%rax)
.LBB26_235:                             # %cleanup.251.i
                                        #   in Loop: Header=BB26_3 Depth=1
	shrq	$26, %r14
	xorl	$1, %r14d
	addl	124(%rsp), %r14d        # 4-byte Folded Reload
	movl	%r14d, %eax
	leaq	192(%rsp), %r12
	movl	%eax, %ebp
	jmp	.LBB26_279
.LBB26_277:                             # %if.else.i
	shll	$8, %ebx
	orl	$2, %ebx
	negl	%ebx
	movl	%ebx, %ebp
	jmp	.LBB26_281
.LBB26_22:
	movl	124(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB26_281
.LBB26_16:                              # %if.then.66.i
	testl	%ebp, %ebp
	movl	$-1, %eax
	cmovlel	%eax, %ebp
.LBB26_281:                             # %end.i
	movq	216(%rsp), %rax
	testq	%rax, %rax
	je	.LBB26_283
# BB#282:                               # %if.then.357.i
	leaq	200(%rsp), %rdi
	callq	*%rax
.LBB26_283:                             # %TrioScanProcess.exit
	movl	248(%rsp), %eax
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	movl	%ebp, %eax
.LBB26_284:                             # %cleanup
	addq	$5400, %rsp             # imm = 0x1518
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_251:                             # %TrioReadGroup.exit.thread.i
	movl	124(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB26_281
.LBB26_280:                             # %cleanup.i
	movl	%r14d, %ebp
	jmp	.LBB26_281
.LBB26_200:                             # %TrioReadDouble.exit.thread189.i
	movl	124(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB26_281
.LBB26_273:                             # %TrioReadPointer.exit.thread198.i
	movl	124(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB26_281
.LBB26_252:                             # %cleanup.251.thread.loopexit.i
	negl	%ebp
	jmp	.LBB26_281
.Lfunc_end26:
	.size	TrioScan, .Lfunc_end26-TrioScan
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI26_0:
	.quad	.LBB26_32
	.quad	.LBB26_45
	.quad	.LBB26_263
	.quad	.LBB26_42
	.quad	.LBB26_267
	.quad	.LBB26_253
	.quad	.LBB26_279
	.quad	.LBB26_203

	.text
	.align	16, 0x90
	.type	TrioInStreamFile,@function
TrioInStreamFile:                       # @TrioInStreamFile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 32
.Ltmp71:
	.cfi_offset %rbx, -32
.Ltmp72:
	.cfi_offset %r14, -24
.Ltmp73:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rbx), %r15
	movl	$0, 40(%rbx)
	cmpl	$-1, 32(%rbx)
	je	.LBB27_1
# BB#2:                                 # %if.else
	incl	36(%rbx)
	movl	$1, 40(%rbx)
	jmp	.LBB27_3
.LBB27_1:                               # %if.then
	movq	%r15, %rdi
	callq	ferror
	cmpl	$1, %eax
	sbbl	%eax, %eax
	orl	$-8, %eax
	movl	%eax, 48(%rbx)
.LBB27_3:                               # %if.end
	movq	%r15, %rdi
	callq	fgetc
	movl	%eax, 32(%rbx)
	testq	%r14, %r14
	je	.LBB27_5
# BB#4:                                 # %if.then.7
	movl	%eax, (%r14)
.LBB27_5:                               # %if.end.9
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end27:
	.size	TrioInStreamFile, .Lfunc_end27-TrioInStreamFile
	.cfi_endproc

	.align	16, 0x90
	.type	TrioUndoStreamFile,@function
TrioUndoStreamFile:                     # @TrioUndoStreamFile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 40(%rbx)
	jle	.LBB28_2
# BB#1:                                 # %if.then
	movq	24(%rbx), %rsi
	movl	32(%rbx), %edi
	callq	ungetc
	movl	%eax, 32(%rbx)
	movl	$0, 40(%rbx)
.LBB28_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end28:
	.size	TrioUndoStreamFile, .Lfunc_end28-TrioUndoStreamFile
	.cfi_endproc

	.globl	trio_vscanf
	.align	16, 0x90
	.type	trio_vscanf,@function
trio_vscanf:                            # @trio_vscanf
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	stdin(%rip), %rdi
	movl	$TrioInStreamFile, %esi
	movl	$TrioUndoStreamFile, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	jmp	TrioScan                # TAILCALL
.Lfunc_end29:
	.size	trio_vscanf, .Lfunc_end29-trio_vscanf
	.cfi_endproc

	.globl	trio_scanfv
	.align	16, 0x90
	.type	trio_scanfv,@function
trio_scanfv:                            # @trio_scanfv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	stdin(%rip), %rdi
	movl	$TrioInStreamFile, %esi
	movl	$TrioUndoStreamFile, %edx
	movl	$trio_scanfv.unused, %r8d
	movq	%rax, %r9
	jmp	TrioScan                # TAILCALL
.Lfunc_end30:
	.size	trio_scanfv, .Lfunc_end30-trio_scanfv
	.cfi_endproc

	.globl	trio_fscanf
	.align	16, 0x90
	.type	trio_fscanf,@function
trio_fscanf:                            # @trio_fscanf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 208
	movq	%rsi, %r10
	testb	%al, %al
	je	.LBB31_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB31_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	176(%rsp), %r8
	movl	$TrioInStreamFile, %esi
	movl	$TrioUndoStreamFile, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioScan
	addq	$200, %rsp
	retq
.Lfunc_end31:
	.size	trio_fscanf, .Lfunc_end31-trio_fscanf
	.cfi_endproc

	.globl	trio_vfscanf
	.align	16, 0x90
	.type	trio_vfscanf,@function
trio_vfscanf:                           # @trio_vfscanf
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	$TrioInStreamFile, %esi
	movl	$TrioUndoStreamFile, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	jmp	TrioScan                # TAILCALL
.Lfunc_end32:
	.size	trio_vfscanf, .Lfunc_end32-trio_vfscanf
	.cfi_endproc

	.globl	trio_fscanfv
	.align	16, 0x90
	.type	trio_fscanfv,@function
trio_fscanfv:                           # @trio_fscanfv
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	$TrioInStreamFile, %esi
	movl	$TrioUndoStreamFile, %edx
	movl	$trio_fscanfv.unused, %r8d
	movq	%rax, %r9
	jmp	TrioScan                # TAILCALL
.Lfunc_end33:
	.size	trio_fscanfv, .Lfunc_end33-trio_fscanfv
	.cfi_endproc

	.globl	trio_dscanf
	.align	16, 0x90
	.type	trio_dscanf,@function
trio_dscanf:                            # @trio_dscanf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$216, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 224
	movq	%rsi, %r10
	testb	%al, %al
	je	.LBB34_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB34_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movl	%edi, 212(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	212(%rsp), %rdi
	leaq	176(%rsp), %r8
	movl	$TrioInStreamFileDescriptor, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioScan
	addq	$216, %rsp
	retq
.Lfunc_end34:
	.size	trio_dscanf, .Lfunc_end34-trio_dscanf
	.cfi_endproc

	.align	16, 0x90
	.type	TrioInStreamFileDescriptor,@function
TrioInStreamFileDescriptor:             # @TrioInStreamFileDescriptor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 32
.Ltmp81:
	.cfi_offset %rbx, -24
.Ltmp82:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rbx), %rax
	movl	(%rax), %edi
	movl	$0, 40(%rbx)
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	read
	cmpl	$-1, %eax
	je	.LBB35_1
# BB#2:                                 # %if.else
	testl	%eax, %eax
	je	.LBB35_3
# BB#4:                                 # %if.then.9
	movzbl	7(%rsp), %eax
	movl	%eax, 32(%rbx)
	incl	40(%rbx)
	incl	36(%rbx)
	jmp	.LBB35_5
.LBB35_1:                               # %if.then
	movl	$-8, 48(%rbx)
.LBB35_3:                               # %if.end.thread
	movl	$-1, 32(%rbx)
	movl	$-1, %eax
.LBB35_5:                               # %if.end.13
	testq	%r14, %r14
	je	.LBB35_7
# BB#6:                                 # %if.then.16
	movl	%eax, (%r14)
.LBB35_7:                               # %if.end.18
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end35:
	.size	TrioInStreamFileDescriptor, .Lfunc_end35-TrioInStreamFileDescriptor
	.cfi_endproc

	.globl	trio_vdscanf
	.align	16, 0x90
	.type	trio_vdscanf,@function
trio_vdscanf:                           # @trio_vdscanf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	%edi, 4(%rsp)
	leaq	4(%rsp), %rdi
	movl	$TrioInStreamFileDescriptor, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	callq	TrioScan
	popq	%rdx
	retq
.Lfunc_end36:
	.size	trio_vdscanf, .Lfunc_end36-trio_vdscanf
	.cfi_endproc

	.globl	trio_dscanfv
	.align	16, 0x90
	.type	trio_dscanfv,@function
trio_dscanfv:                           # @trio_dscanfv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	%edi, 4(%rsp)
	leaq	4(%rsp), %rdi
	movl	$TrioInStreamFileDescriptor, %esi
	xorl	%edx, %edx
	movl	$trio_dscanfv.unused, %r8d
	movq	%rax, %r9
	callq	TrioScan
	popq	%rdx
	retq
.Lfunc_end37:
	.size	trio_dscanfv, .Lfunc_end37-trio_dscanfv
	.cfi_endproc

	.globl	trio_sscanf
	.align	16, 0x90
	.type	trio_sscanf,@function
trio_sscanf:                            # @trio_sscanf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$216, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 224
	movq	%rsi, %r10
	testb	%al, %al
	je	.LBB38_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB38_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rdi, 208(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %r8
	movl	$TrioInStreamString, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	TrioScan
	addq	$216, %rsp
	retq
.Lfunc_end38:
	.size	trio_sscanf, .Lfunc_end38-trio_sscanf
	.cfi_endproc

	.align	16, 0x90
	.type	TrioInStreamString,@function
TrioInStreamString:                     # @TrioInStreamString
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 40(%rdi)
	movq	24(%rdi), %rcx
	movq	(%rcx), %rdx
	movzbl	(%rdx), %eax
	testl	%eax, %eax
	movl	%eax, 32(%rdi)
	je	.LBB39_1
# BB#2:                                 # %if.else
	incq	%rdx
	movq	%rdx, (%rcx)
	incl	36(%rdi)
	movl	$1, 40(%rdi)
	jmp	.LBB39_3
.LBB39_1:                               # %if.then
	movl	$-1, 32(%rdi)
	movl	$-1, %eax
.LBB39_3:                               # %if.end
	testq	%rsi, %rsi
	je	.LBB39_5
# BB#4:                                 # %if.then.9
	movl	%eax, (%rsi)
.LBB39_5:                               # %if.end.11
	retq
.Lfunc_end39:
	.size	TrioInStreamString, .Lfunc_end39-TrioInStreamString
	.cfi_endproc

	.globl	trio_vsscanf
	.align	16, 0x90
	.type	trio_vsscanf,@function
trio_vsscanf:                           # @trio_vsscanf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, (%rsp)
	leaq	(%rsp), %rdi
	movl	$TrioInStreamString, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	callq	TrioScan
	popq	%rdx
	retq
.Lfunc_end40:
	.size	trio_vsscanf, .Lfunc_end40-trio_vsscanf
	.cfi_endproc

	.globl	trio_sscanfv
	.align	16, 0x90
	.type	trio_sscanfv,@function
trio_sscanfv:                           # @trio_sscanfv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, (%rsp)
	leaq	(%rsp), %rdi
	movl	$TrioInStreamString, %esi
	xorl	%edx, %edx
	movl	$trio_sscanfv.unused, %r8d
	movq	%rax, %r9
	callq	TrioScan
	popq	%rdx
	retq
.Lfunc_end41:
	.size	trio_sscanfv, .Lfunc_end41-trio_sscanfv
	.cfi_endproc

	.globl	trio_strerror
	.align	16, 0x90
	.type	trio_strerror,@function
trio_strerror:                          # @trio_strerror
	.cfi_startproc
# BB#0:                                 # %entry
	negl	%edi
	movzbl	%dil, %eax
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB42_2
# BB#1:                                 # %switch.lookup
	cltq
	movq	.Lswitch.table(,%rax,8), %rax
	retq
.LBB42_2:                               # %return
	movl	$.L.str.8, %eax
	retq
.Lfunc_end42:
	.size	trio_strerror, .Lfunc_end42-trio_strerror
	.cfi_endproc

	.align	16, 0x90
	.type	TrioParse,@function
TrioParse:                              # @TrioParse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp92:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 56
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp94:
	.cfi_def_cfa_offset 560
.Ltmp95:
	.cfi_offset %rbx, -56
.Ltmp96:
	.cfi_offset %r12, -48
.Ltmp97:
	.cfi_offset %r13, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movl	%edi, %ebx
	leaq	352(%rsp), %rdi
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	callq	__errno_location
	movl	(%rax), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	mblen
	movb	(%rbp), %cl
	testb	%cl, %cl
	je	.LBB43_1
# BB#2:                                 # %while.body.lr.ph.lr.ph
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movl	$-1, %ebx
	movq	%rbp, %rdi
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	xorl	%r11d, %r11d
.LBB43_3:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_4 Depth 2
                                        #     Child Loop BB43_16 Depth 2
                                        #     Child Loop BB43_102 Depth 2
	movl	%r11d, %r12d
	.align	16, 0x90
.LBB43_4:                               # %while.body
                                        #   Parent Loop BB43_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%cl, %cl
	js	.LBB43_5
# BB#8:                                 # %if.end
                                        #   in Loop: Header=BB43_4 Depth=2
	movslq	%r12d, %r14
	incq	%r14
	movzbl	%cl, %eax
	cmpl	$37, %eax
	jne	.LBB43_9
# BB#10:                                # %sw.bb
                                        #   in Loop: Header=BB43_4 Depth=2
	movzbl	(%rbp,%r14), %eax
	cmpl	$37, %eax
	jne	.LBB43_12
# BB#11:                                # %if.then.19
                                        #   in Loop: Header=BB43_4 Depth=2
	addl	$2, %r12d
	jmp	.LBB43_6
	.align	16, 0x90
.LBB43_5:                               # %if.then
                                        #   in Loop: Header=BB43_4 Depth=2
	movl	$16, %esi
	callq	mblen
	testl	%eax, %eax
	movl	$1, %ecx
	cmovlel	%ecx, %eax
	addl	%eax, %r12d
	jmp	.LBB43_6
	.align	16, 0x90
.LBB43_9:                               #   in Loop: Header=BB43_4 Depth=2
	movl	%r14d, %r12d
.LBB43_6:                               # %while.cond.backedge
                                        #   in Loop: Header=BB43_4 Depth=2
	movslq	%r12d, %rax
	leaq	(%rbp,%rax), %rdi
	movb	(%rbp,%rax), %cl
	testb	%cl, %cl
	jne	.LBB43_4
	jmp	.LBB43_7
.LBB43_12:                              # %if.end.21
                                        #   in Loop: Header=BB43_3 Depth=1
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	leaq	(%r14,%rbp), %rdi
	movl	$10, %edx
	leaq	496(%rsp), %rsi
	callq	strtol
	movl	$-1, 36(%rsp)           # 4-byte Folded Spill
	testl	%eax, %eax
	movl	%r14d, %r13d
	movl	$-1, 56(%rsp)           # 4-byte Folded Spill
	je	.LBB43_15
# BB#13:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movq	496(%rsp), %rcx
	subq	%rbp, %rcx
	movslq	%ecx, %rdx
	movzbl	(%rbp,%rdx), %edx
	cmpl	$36, %edx
	movl	%r14d, %r13d
	movl	$-1, 56(%rsp)           # 4-byte Folded Spill
	jne	.LBB43_15
# BB#14:                                # %if.then.i.i
                                        #   in Loop: Header=BB43_3 Depth=1
	incl	%ecx
	decl	%eax
	movl	%ecx, %r13d
	movl	%eax, 56(%rsp)          # 4-byte Spill
.LBB43_15:                              # %TrioGetPosition.exit.i
                                        #   in Loop: Header=BB43_3 Depth=1
	xorl	%ebx, %ebx
	movl	$-1, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$-1, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	jmp	.LBB43_16
.LBB43_67:                              # %sw.bb.110.i
                                        #   in Loop: Header=BB43_16 Depth=2
	leaq	(%r8,%rbp), %rdi
	orq	$65536, %rbx            # imm = 0x10000
	movl	$10, %edx
	leaq	488(%rsp), %rsi
	callq	strtol
	movq	%rax, %r10
	movl	488(%rsp), %r13d
	subl	%ebp, %r13d
.LBB43_16:                              # %while.cond.i.259
                                        #   Parent Loop BB43_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %r9d
	movslq	%r9d, %r8
	movb	(%rbp,%r8), %dl
	movsbl	%dl, %ecx
	leal	-32(%rcx), %esi
	cmpl	$62, %esi
	ja	.LBB43_17
# BB#19:                                # %while.cond.i.259
                                        #   in Loop: Header=BB43_16 Depth=2
	movabsq	$4901062085762313419, %rdi # imm = 0x4404120003FF6CCB
	btq	%rsi, %rdi
	jb	.LBB43_20
	.align	16, 0x90
.LBB43_17:                              # %while.cond.i.259
                                        #   in Loop: Header=BB43_16 Depth=2
	leal	-104(%rcx), %edi
	cmpl	$18, %edi
	ja	.LBB43_27
# BB#18:                                # %while.cond.i.259
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	%rbx, %rax
	movl	$299541, %ebx           # imm = 0x49215
	btl	%edi, %ebx
	movq	%rax, %rbx
	jae	.LBB43_27
.LBB43_20:                              # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	leaq	1(%r8), %r13
	cmpl	$89, %ecx
	jg	.LBB43_23
# BB#21:                                # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	cmpl	$44, %esi
	ja	.LBB43_25
# BB#22:                                # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	jmpq	*.LJTI43_0(,%rsi,8)
.LBB43_37:                              # %sw.bb.i.262
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$2, %rbx
	jmp	.LBB43_16
	.align	16, 0x90
.LBB43_23:                              # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	cmpl	$103, %ecx
	jg	.LBB43_30
# BB#24:                                # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	cmpl	$90, %ecx
	je	.LBB43_16
	jmp	.LBB43_25
.LBB43_30:                              # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	cmpl	$115, %ecx
	jg	.LBB43_33
# BB#31:                                # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	addl	$-104, %ecx
	cmpl	$9, %ecx
	ja	.LBB43_25
# BB#32:                                # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	jmpq	*.LJTI43_1(,%rcx,8)
.LBB43_68:                              # %sw.bb.123.i
                                        #   in Loop: Header=BB43_16 Depth=2
	testb	$64, %bl
	jne	.LBB43_25
# BB#69:                                # %if.else.131.i
                                        #   in Loop: Header=BB43_16 Depth=2
	testb	$32, %bl
	jne	.LBB43_70
# BB#71:                                # %if.else.138.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$32, %rbx
	jmp	.LBB43_16
.LBB43_33:                              # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	cmpl	$116, %ecx
	je	.LBB43_77
# BB#34:                                # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	cmpl	$119, %ecx
	jne	.LBB43_35
# BB#88:                                # %sw.bb.266.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$33554432, %rbx         # imm = 0x2000000
	jmp	.LBB43_16
.LBB43_77:                              # %sw.bb.171.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$2304, %rbx             # imm = 0x900
	jmp	.LBB43_16
.LBB43_35:                              # %while.body.i
                                        #   in Loop: Header=BB43_16 Depth=2
	cmpl	$122, %ecx
	jne	.LBB43_25
# BB#36:                                # %sw.bb.166.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$1280, %rbx             # imm = 0x500
	jmp	.LBB43_16
.LBB43_40:                              # %sw.bb.12.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$16, %rbx
	jmp	.LBB43_16
.LBB43_60:                              # %sw.bb.85.i
                                        #   in Loop: Header=BB43_16 Depth=2
	cmpl	$1, 84(%rsp)            # 4-byte Folded Reload
	jne	.LBB43_65
# BB#61:                                # %if.then.88.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	%r10, 8(%rsp)           # 8-byte Spill
	movslq	%r13d, %rax
	leaq	(%rax,%rbp), %rdi
	movl	$10, %edx
	leaq	496(%rsp), %rsi
	callq	strtol
	testl	%eax, %eax
	je	.LBB43_63
# BB#62:                                # %land.lhs.true.i.132.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	496(%rsp), %rcx
	subq	%rbp, %rcx
	movslq	%ecx, %rdx
	movzbl	(%rbp,%rdx), %edx
	cmpl	$36, %edx
	jne	.LBB43_63
# BB#64:                                # %if.then.95.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$196608, %rbx           # imm = 0x30000
	incl	%ecx
	decl	%eax
	movl	%eax, %r10d
	movl	%ecx, %r13d
	jmp	.LBB43_16
.LBB43_38:                              # %sw.bb.5.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$4, %rbx
	jmp	.LBB43_16
.LBB43_39:                              # %sw.bb.8.i
                                        #   in Loop: Header=BB43_16 Depth=2
	andq	$-8201, %rbx            # imm = 0xFFFFFFFFFFFFDFF7
	orq	$8, %rbx
	jmp	.LBB43_16
.LBB43_41:                              # %sw.bb.15.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB43_42
# BB#51:                                # %if.then.47.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	%r10, 8(%rsp)           # 8-byte Spill
	movzbl	(%rbp,%r13), %eax
	cmpl	$42, %eax
	jne	.LBB43_57
# BB#52:                                # %if.then.56.i
                                        #   in Loop: Header=BB43_16 Depth=2
	addl	$2, %r9d
	movslq	%r9d, %rax
	movl	%r9d, %r13d
	leaq	(%rax,%rbp), %rdi
	movl	$10, %edx
	leaq	496(%rsp), %rsi
	callq	strtol
	movl	$-1, %esi
	testl	%eax, %eax
	je	.LBB43_53
# BB#54:                                # %land.lhs.true.i.112.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	496(%rsp), %rcx
	subq	%rbp, %rcx
	movslq	%ecx, %rdx
	movzbl	(%rbp,%rdx), %edx
	cmpl	$36, %edx
	movq	8(%rsp), %r10           # 8-byte Reload
	jne	.LBB43_56
# BB#55:                                # %if.then.i.115.i
                                        #   in Loop: Header=BB43_16 Depth=2
	incl	%ecx
	decl	%eax
	movl	%ecx, %r13d
	movl	%eax, %esi
	jmp	.LBB43_56
.LBB43_66:                              # %sw.bb.102.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	%rbx, %rcx
	shlq	$10, %rcx
	notl	%ecx
	andl	$8192, %ecx             # imm = 0x2000
	orq	%rcx, %rbx
	jmp	.LBB43_67
.LBB43_80:                              # %sw.bb.184.i
                                        #   in Loop: Header=BB43_16 Depth=2
	testl	$838868960, %ebx        # imm = 0x32001FE0
	jne	.LBB43_25
# BB#81:                                # %if.end.200.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movb	(%rbp,%r13), %cl
	addb	$-49, %cl
	movzbl	%cl, %edx
	cmpl	$7, %edx
	ja	.LBB43_25
# BB#82:                                # %if.end.200.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movl	$1, %ecx
	jmpq	*.LJTI43_2(,%rdx,8)
.LBB43_85:                              # %land.lhs.true.237.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movl	$2, %ecx
	movzbl	2(%r8,%rbp), %eax
	cmpl	$54, %eax
	je	.LBB43_86
	jmp	.LBB43_25
.LBB43_76:                              # %sw.bb.163.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$512, %rbx              # imm = 0x200
	jmp	.LBB43_16
.LBB43_78:                              # %sw.bb.176.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$4352, %rbx             # imm = 0x1100
	jmp	.LBB43_16
.LBB43_72:                              # %sw.bb.143.i
                                        #   in Loop: Header=BB43_16 Depth=2
	testb	$1, %bh
	jne	.LBB43_25
# BB#73:                                # %if.else.151.i
                                        #   in Loop: Header=BB43_16 Depth=2
	testb	$-128, %bl
	jne	.LBB43_74
# BB#75:                                # %if.else.158.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$128, %rbx
	jmp	.LBB43_16
.LBB43_79:                              # %sw.bb.181.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$256, %rbx              # imm = 0x100
	jmp	.LBB43_16
.LBB43_65:                              # %if.else.98.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$67108864, %rbx         # imm = 0x4000000
	jmp	.LBB43_16
.LBB43_42:                              # %sw.bb.15.i
                                        #   in Loop: Header=BB43_16 Depth=2
	testl	%eax, %eax
	jne	.LBB43_25
# BB#43:                                # %if.then.i.264
                                        #   in Loop: Header=BB43_16 Depth=2
	movzbl	(%rbp,%r13), %eax
	movl	$1, 20(%rsp)            # 4-byte Folded Spill
	cmpl	$46, %eax
	je	.LBB43_16
# BB#44:                                # %if.then.i.264
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	%r10, 8(%rsp)           # 8-byte Spill
	movzbl	%al, %eax
	cmpl	$42, %eax
	jne	.LBB43_50
# BB#45:                                # %if.then.31.i
                                        #   in Loop: Header=BB43_16 Depth=2
	addl	$2, %r9d
	movslq	%r9d, %rax
	movl	%r9d, %r13d
	leaq	(%rax,%rbp), %rdi
	movl	$10, %edx
	leaq	496(%rsp), %rsi
	callq	strtol
	movl	$-1, %esi
	testl	%eax, %eax
	je	.LBB43_46
# BB#47:                                # %land.lhs.true.i.92.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	496(%rsp), %rcx
	subq	%rbp, %rcx
	movslq	%ecx, %rdx
	movzbl	(%rbp,%rdx), %edx
	cmpl	$36, %edx
	movq	8(%rsp), %r10           # 8-byte Reload
	jne	.LBB43_49
# BB#48:                                # %if.then.i.95.i
                                        #   in Loop: Header=BB43_16 Depth=2
	incl	%ecx
	decl	%eax
	movl	%ecx, %r13d
	movl	%eax, %esi
	jmp	.LBB43_49
.LBB43_70:                              # %if.then.135.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$64, %rbx
	jmp	.LBB43_16
.LBB43_74:                              # %if.then.155.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$256, %rbx              # imm = 0x100
	jmp	.LBB43_16
.LBB43_63:                              # %TrioGetPosition.exit137.thread.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$196608, %rbx           # imm = 0x30000
	movq	8(%rsp), %r10           # 8-byte Reload
	jmp	.LBB43_16
.LBB43_57:                              # %if.else.62.i
                                        #   in Loop: Header=BB43_16 Depth=2
	orq	$1048576, %rbx          # imm = 0x100000
	leaq	(%r13,%rbp), %rdi
	movl	$10, %edx
	leaq	488(%rsp), %rsi
	callq	strtol
	movq	%rax, 40(%rsp)          # 8-byte Spill
	cmpl	$36, %eax
	jg	.LBB43_58
# BB#59:                                # %if.end.73.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movl	488(%rsp), %r13d
	subl	%ebp, %r13d
	movl	$2, 20(%rsp)            # 4-byte Folded Spill
	movq	8(%rsp), %r10           # 8-byte Reload
	jmp	.LBB43_16
.LBB43_84:                              # %land.lhs.true.221.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movzbl	2(%r8,%rbp), %eax
	movl	$4, %ecx
	cmpl	$50, %eax
	je	.LBB43_86
	jmp	.LBB43_25
.LBB43_83:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movzbl	2(%r8,%rbp), %eax
	movl	$8, %ecx
	cmpl	$52, %eax
	jne	.LBB43_25
.LBB43_86:                              #   in Loop: Header=BB43_16 Depth=2
	movl	%r13d, %r9d
.LBB43_87:                              # %if.end.263.i
                                        #   in Loop: Header=BB43_16 Depth=2
	addl	$2, %r9d
	orq	$536870912, %rbx        # imm = 0x20000000
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%r9d, %r13d
	jmp	.LBB43_16
.LBB43_53:                              #   in Loop: Header=BB43_16 Depth=2
	movq	8(%rsp), %r10           # 8-byte Reload
.LBB43_56:                              # %TrioGetPosition.exit117.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	orq	$3145728, %rbx          # imm = 0x300000
	movl	$2, 20(%rsp)            # 4-byte Folded Spill
	jmp	.LBB43_16
.LBB43_50:                              # %if.else.i.265
                                        #   in Loop: Header=BB43_16 Depth=2
	leaq	(%r13,%rbp), %rdi
	orq	$262144, %rbx           # imm = 0x40000
	movl	$10, %edx
	leaq	488(%rsp), %rsi
	callq	strtol
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	488(%rsp), %r13d
	subl	%ebp, %r13d
	movq	8(%rsp), %r10           # 8-byte Reload
	jmp	.LBB43_16
.LBB43_46:                              #   in Loop: Header=BB43_16 Depth=2
	movq	8(%rsp), %r10           # 8-byte Reload
.LBB43_49:                              # %TrioGetPosition.exit97.i
                                        #   in Loop: Header=BB43_16 Depth=2
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	orq	$786432, %rbx           # imm = 0xC0000
	jmp	.LBB43_16
.LBB43_58:                              #   in Loop: Header=BB43_3 Depth=1
	movq	8(%rsp), %r10           # 8-byte Reload
.LBB43_25:                              # %TrioParseQualifiers.exit
                                        #   in Loop: Header=BB43_3 Depth=1
	shll	$8, %r13d
	orl	$2, %r13d
	testl	%r13d, %r13d
	jg	.LBB43_210
# BB#26:                                # %TrioParseQualifiers.exit.if.end.26_crit_edge
                                        #   in Loop: Header=BB43_3 Depth=1
	movb	(%rbp), %dl
	xorl	%r9d, %r9d
.LBB43_27:                              # %if.end.26
                                        #   in Loop: Header=BB43_3 Depth=1
	movslq	%r9d, %r11
	incq	%r11
	movsbl	%dl, %edx
	movl	$-1, %ecx
	leal	-83(%rdx), %esi
	cmpl	$37, %esi
	jbe	.LBB43_89
# BB#28:                                # %if.end.26
                                        #   in Loop: Header=BB43_3 Depth=1
	addl	$-65, %edx
	cmpl	$6, %edx
	ja	.LBB43_127
# BB#29:                                # %if.end.26
                                        #   in Loop: Header=BB43_3 Depth=1
	jmpq	*.LJTI43_3(,%rdx,8)
.LBB43_124:                             # %sw.bb.136.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$32768, %rbx            # imm = 0x8000
	jmp	.LBB43_125
.LBB43_89:                              # %if.end.26
                                        #   in Loop: Header=BB43_3 Depth=1
	movl	$1, %eax
	jmpq	*.LJTI43_4(,%rsi,8)
.LBB43_94:                              # %sw.bb.13.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$33554432, %rbx         # imm = 0x2000000
.LBB43_95:                              # %sw.bb.16.i
                                        #   in Loop: Header=BB43_3 Depth=1
	testb	$-128, %bl
	jne	.LBB43_96
# BB#97:                                # %if.else.23.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movq	%rbx, %rdx
	andq	$-33554433, %rdx        # imm = 0xFFFFFFFFFDFFFFFF
	testb	$32, %bl
	cmovneq	%rdx, %rbx
	movl	$4, %eax
	jmp	.LBB43_128
.LBB43_127:                             # %TrioParseSpecifier.exit
                                        #   in Loop: Header=BB43_3 Depth=1
	shll	$8, %r11d
	movl	%r11d, %r13d
	orl	$2, %r13d
	xorl	%eax, %eax
	testl	%r13d, %r13d
	movl	%r9d, %r11d
	jle	.LBB43_128
	jmp	.LBB43_210
.LBB43_125:                             # %sw.bb.139.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movl	$16, %ecx
	movl	$2, %eax
	jmp	.LBB43_128
.LBB43_90:                              # %sw.bb.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$33554432, %rbx         # imm = 0x2000000
.LBB43_91:                              # %sw.bb.1.i
                                        #   in Loop: Header=BB43_3 Depth=1
	testb	$-128, %bl
	jne	.LBB43_92
# BB#93:                                # %if.else.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movq	%rbx, %rdx
	andq	$-33554433, %rdx        # imm = 0xFFFFFFFFFDFFFFFF
	testb	$32, %bl
	cmovneq	%rdx, %rbx
	movl	$3, %eax
	jmp	.LBB43_128
.LBB43_116:                             # %sw.bb.111.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$32768, %rbx            # imm = 0x8000
.LBB43_117:                             # %sw.bb.114.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$4194304, %rbx          # imm = 0x400000
	movl	$2, %eax
	jmp	.LBB43_128
.LBB43_120:                             # %sw.bb.125.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$32768, %rbx            # imm = 0x8000
.LBB43_121:                             # %sw.bb.128.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movl	$2, %eax
	jmp	.LBB43_128
.LBB43_118:                             # %sw.bb.118.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$32768, %rbx            # imm = 0x8000
.LBB43_119:                             # %sw.bb.121.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$8388608, %rbx          # imm = 0x800000
	movl	$2, %eax
	jmp	.LBB43_128
.LBB43_92:                              # %if.then.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$33554432, %rbx         # imm = 0x2000000
	movl	$3, %eax
	jmp	.LBB43_128
.LBB43_114:                             # %sw.bb.103.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$32768, %rbx            # imm = 0x8000
.LBB43_115:                             # %sw.bb.106.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$16384, %rbx            # imm = 0x4000
	movl	$16, %ecx
	jmp	.LBB43_128
.LBB43_98:                              # %sw.bb.33.i
                                        #   in Loop: Header=BB43_3 Depth=1
	xorl	%eax, %eax
	cmpl	$2, 84(%rsp)            # 4-byte Folded Reload
	jne	.LBB43_128
# BB#99:                                # %if.then.35.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movzbl	(%rbp,%r11), %edx
	cmpl	$94, %edx
	jne	.LBB43_101
# BB#100:                               #   in Loop: Header=BB43_3 Depth=1
	addl	$2, %r9d
	movl	%r9d, %r11d
.LBB43_101:                             # %select.end
                                        #   in Loop: Header=BB43_3 Depth=1
	movslq	%r11d, %rax
	movzbl	(%rbp,%rax), %edx
	cmpl	$93, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%edx, %eax
	cltq
	movzbl	(%rbp,%rax), %edx
	cmpl	$45, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%edx, %eax
	movslq	%eax, %r11
	movl	$1, %edx
	jmp	.LBB43_102
.LBB43_110:                             # %if.end.86.i
                                        #   in Loop: Header=BB43_102 Depth=2
	incq	%r11
.LBB43_102:                             # %while.cond.i
                                        #   Parent Loop BB43_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp,%r11), %esi
	cmpl	$91, %esi
	je	.LBB43_109
# BB#103:                               # %while.cond.i
                                        #   in Loop: Header=BB43_102 Depth=2
	movzbl	%sil, %edi
	cmpl	$93, %edi
	jne	.LBB43_104
# BB#106:                               # %if.then.79.i
                                        #   in Loop: Header=BB43_102 Depth=2
	cmpl	$1, %edx
	jle	.LBB43_108
# BB#107:                               #   in Loop: Header=BB43_102 Depth=2
	decl	%edx
	incq	%r11
	jmp	.LBB43_102
.LBB43_109:                             # %if.then.71.i
                                        #   in Loop: Header=BB43_102 Depth=2
	incl	%edx
	jmp	.LBB43_110
.LBB43_104:                             # %while.cond.i
                                        #   in Loop: Header=BB43_102 Depth=2
	testb	%sil, %sil
	jne	.LBB43_110
# BB#105:                               # %sw.epilog.loopexit.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movl	$8, %eax
	jmp	.LBB43_128
.LBB43_112:                             # %sw.bb.95.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movl	$10, %ecx
	jmp	.LBB43_128
.LBB43_126:                             # %sw.bb.142.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movl	$9, %eax
	jmp	.LBB43_128
.LBB43_123:                             # %sw.bb.134.i
                                        #   in Loop: Header=BB43_3 Depth=1
	movl	$6, %eax
	jmp	.LBB43_128
.LBB43_113:                             # %sw.bb.98.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$16384, %rbx            # imm = 0x4000
	movl	$8, %ecx
	jmp	.LBB43_128
.LBB43_122:                             # %sw.bb.130.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$256, %rbx              # imm = 0x100
	movl	$5, %eax
	jmp	.LBB43_128
.LBB43_111:                             # %sw.bb.91.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$16384, %rbx            # imm = 0x4000
	jmp	.LBB43_128
.LBB43_96:                              # %if.then.20.i
                                        #   in Loop: Header=BB43_3 Depth=1
	orq	$33554432, %rbx         # imm = 0x2000000
	movl	$4, %eax
	jmp	.LBB43_128
.LBB43_108:                             # %if.then.82.i
                                        #   in Loop: Header=BB43_3 Depth=1
	incl	%r11d
	movl	$8, %eax
.LBB43_128:                             # %sw.epilog
                                        #   in Loop: Header=BB43_3 Depth=1
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%ecx, %r9d
	testl	$131072, %ebx           # imm = 0x20000
	jne	.LBB43_130
# BB#129:                               #   in Loop: Header=BB43_3 Depth=1
	movl	56(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %r13          # 8-byte Reload
	jmp	.LBB43_131
.LBB43_130:                             # %if.then.36
                                        #   in Loop: Header=BB43_3 Depth=1
	leal	1(%r10), %esi
	testl	%r10d, %r10d
	movq	%rbx, %rdx
	sete	%bl
	movl	56(%rsp), %eax          # 4-byte Reload
	cmovel	%eax, %esi
	movl	92(%rsp), %ecx          # 4-byte Reload
	cmovel	%ecx, %r10d
	cmpl	$-1, %eax
	cmovnel	%eax, %esi
	movzbl	%bl, %edi
	addl	%edi, %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movslq	%r10d, %rdi
	incw	352(%rsp,%rdi,2)
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %edi
	cmovgel	%edi, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %r10d
	movslq	%ecx, %rbx
	movq	%rbx, %rcx
	shlq	$6, %rcx
	movl	$7, (%r15,%rcx)
	movq	$0, 8(%r15,%rcx)
	movl	%ebx, 96(%rsp,%rdi,4)
	incl	%ebx
	movl	%ebx, %r13d
	movq	%rdx, %rbx
.LBB43_131:                             # %if.end.72
                                        #   in Loop: Header=BB43_3 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%r10, %r8
	testl	$524288, %ebx           # imm = 0x80000
	je	.LBB43_133
# BB#132:                               # %if.then.76
                                        #   in Loop: Header=BB43_3 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	leal	1(%rdi), %ecx
	cmpl	$-1, %edi
	movq	%rbx, %r10
	sete	%bl
	cmovel	%esi, %ecx
	movl	92(%rsp), %edx          # 4-byte Reload
	cmovel	%edx, %edi
	cmpl	$-1, 56(%rsp)           # 4-byte Folded Reload
	cmovel	%ecx, %esi
	movzbl	%bl, %ecx
	addl	%ecx, %edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movslq	%edi, %rcx
	incw	352(%rsp,%rcx,2)
	movl	60(%rsp), %edi          # 4-byte Reload
	cmpl	%edi, %ecx
	cmovgel	%ecx, %edi
	movl	%edi, 60(%rsp)          # 4-byte Spill
	movl	%r13d, %edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movslq	%r13d, %rdi
	movq	%rdi, %rbx
	shlq	$6, %rbx
	movl	$7, (%r15,%rbx)
	movq	$0, 8(%r15,%rbx)
	movq	%r10, %rbx
	movl	%edi, 96(%rsp,%rcx,4)
	incl	%edi
	movl	%edi, %r13d
.LBB43_133:                             # %if.end.113
                                        #   in Loop: Header=BB43_3 Depth=1
	movq	%rbx, %r10
	testl	$2097152, %ebx          # imm = 0x200000
	jne	.LBB43_135
# BB#134:                               #   in Loop: Header=BB43_3 Depth=1
	movl	92(%rsp), %edx          # 4-byte Reload
	jmp	.LBB43_136
.LBB43_135:                             # %if.then.117
                                        #   in Loop: Header=BB43_3 Depth=1
	leal	1(%rax), %ecx
	cmpl	$-1, %eax
	sete	%bl
	cmovel	%esi, %ecx
	movl	92(%rsp), %edx          # 4-byte Reload
	cmovel	%edx, %eax
	cmpl	$-1, 56(%rsp)           # 4-byte Folded Reload
	cmovel	%ecx, %esi
	movzbl	%bl, %ecx
	addl	%ecx, %edx
	movslq	%eax, %rcx
	incw	352(%rsp,%rcx,2)
	movl	60(%rsp), %edi          # 4-byte Reload
	cmpl	%edi, %ecx
	cmovgel	%ecx, %edi
	movl	%edi, 60(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	movslq	%r13d, %rdi
	movq	%rdi, %rbx
	shlq	$6, %rbx
	movl	$7, (%r15,%rbx)
	movq	$0, 8(%r15,%rbx)
	movl	%edi, 96(%rsp,%rcx,4)
	incl	%edi
	movl	%edi, %r13d
.LBB43_136:                             # %if.end.154
                                        #   in Loop: Header=BB43_3 Depth=1
	cmpl	$-1, %esi
	movl	%esi, %edi
	cmovel	%edx, %edi
	cmpl	$64, %edi
	jge	.LBB43_137
# BB#138:                               # %if.end.173
                                        #   in Loop: Header=BB43_3 Depth=1
	cmpl	$-1, %esi
	sete	%cl
	movl	60(%rsp), %ebx          # 4-byte Reload
	cmpl	%ebx, %edi
	cmovgel	%edi, %ebx
	movzbl	%cl, %ecx
	addl	%ecx, %edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movslq	%edi, %rcx
	movl	%r13d, 96(%rsp,%rcx,4)
	incw	352(%rsp,%rcx,2)
	cmpl	$-1, %eax
	movl	$10, %ecx
	cmovel	%ecx, %eax
	movslq	%r13d, %rcx
	shlq	$6, %rcx
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	%edx, (%r15,%rcx)
	movq	%r10, 8(%r15,%rcx)
	movl	%r8d, 16(%r15,%rcx)
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%edx, 20(%r15,%rcx)
	movl	%eax, 24(%r15,%rcx)
	movl	%r9d, 28(%r15,%rcx)
	movl	36(%rsp), %edx          # 4-byte Reload
	movl	%edx, 32(%r15,%rcx)
	movl	%r12d, 36(%r15,%rcx)
	movl	%r11d, 40(%r15,%rcx)
	movl	%edi, 44(%r15,%rcx)
	incl	%r13d
	movq	$0, 48(%r15,%rcx)
	movslq	%r11d, %rdx
	movb	(%rbp,%rdx), %cl
	leaq	(%rbp,%rdx), %rdi
	testb	%cl, %cl
	jne	.LBB43_3
	jmp	.LBB43_139
.LBB43_7:
	movl	%r12d, %r11d
.LBB43_139:                             # %while.end
	movslq	%r13d, %rcx
	shlq	$6, %rcx
	movl	$-1, (%r15,%rcx)
	movl	%r11d, 36(%r15,%rcx)
	xorl	%r13d, %r13d
	testl	%ebx, %ebx
	js	.LBB43_211
# BB#140:                               # %for.body.lr.ph
	movslq	%ebx, %rsi
	xorl	%eax, %eax
	movq	72(%rsp), %r9           # 8-byte Reload
	movq	%r9, %rcx
	movq	64(%rsp), %rbp          # 8-byte Reload
	movl	84(%rsp), %r10d         # 4-byte Reload
	jmp	.LBB43_141
	.align	16, 0x90
.LBB43_144:                             # %if.end.219
                                        #   in Loop: Header=BB43_141 Depth=1
	movslq	96(%rsp,%r13,4), %rdx
	shlq	$6, %rdx
	movl	(%r15,%rdx), %edi
	movq	8(%r15,%rdx), %rbx
	movl	%ebx, %eax
	andl	$67108864, %eax         # imm = 0x4000000
	cmpl	$7, %edi
	jne	.LBB43_145
# BB#188:                               # %sw.bb.608
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%rax, %rax
	jne	.LBB43_148
# BB#189:                               # %if.else.638
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_180
# BB#190:                               # %cond.false.654
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	jmp	.LBB43_183
	.align	16, 0x90
.LBB43_145:                             # %land.lhs.true
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%rax, %rax
	jne	.LBB43_207
# BB#146:                               # %if.end.233
                                        #   in Loop: Header=BB43_141 Depth=1
	movl	%edi, %eax
	cmpl	$9, %edi
	ja	.LBB43_207
# BB#147:                               # %if.end.233
                                        #   in Loop: Header=BB43_141 Depth=1
	jmpq	*.LJTI43_5(,%rax,8)
.LBB43_153:                             # %sw.bb.271
                                        #   in Loop: Header=BB43_141 Depth=1
	cmpl	$2, %r10d
	jne	.LBB43_156
# BB#154:                               # %if.then.274
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_149
# BB#155:                               # %if.else.293
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	movq	%rax, 48(%r15,%rdx)
	jmp	.LBB43_207
.LBB43_191:                             # %sw.bb.666
                                        #   in Loop: Header=BB43_141 Depth=1
	movl	%ebx, %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$2, %r10d
	jne	.LBB43_194
# BB#192:                               # %if.then.669
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%rax, %rax
	jne	.LBB43_148
# BB#193:                               # %if.else.698
                                        #   in Loop: Header=BB43_141 Depth=1
	testb	$-128, %bl
	.align	16, 0x90
.LBB43_148:                             # %sw.bb.237
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	movq	%rcx, %rax
	jne	.LBB43_152
	jmp	.LBB43_149
.LBB43_206:                             # %sw.bb.817
                                        #   in Loop: Header=BB43_141 Depth=1
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, 48(%r15,%rdx)
	jmp	.LBB43_207
.LBB43_156:                             # %if.else.329
                                        #   in Loop: Header=BB43_141 Depth=1
	testl	$805306368, %ebx        # imm = 0x30000000
	je	.LBB43_164
# BB#157:                               # %if.then.335
                                        #   in Loop: Header=BB43_141 Depth=1
	leaq	8(%r15,%rdx), %r8
	testl	$268435456, %ebx        # imm = 0x10000000
	movl	32(%r15,%rdx), %eax
	je	.LBB43_159
# BB#158:                               # %if.then.341
                                        #   in Loop: Header=BB43_141 Depth=1
	cltq
	shlq	$6, %rax
	movl	48(%r15,%rax), %eax
.LBB43_159:                             # %if.end.353
                                        #   in Loop: Header=BB43_141 Depth=1
	andq	$-7553, %rbx            # imm = 0xFFFFFFFFFFFFE27F
	movq	%rbx, (%r8)
	cmpl	$5, %eax
	jl	.LBB43_164
# BB#160:                               # %if.else.361
                                        #   in Loop: Header=BB43_141 Depth=1
	cmpl	$8, %eax
	jg	.LBB43_162
# BB#161:                               # %if.then.364
                                        #   in Loop: Header=BB43_141 Depth=1
	orq	$128, %rbx
	jmp	.LBB43_163
.LBB43_194:                             # %if.else.753
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%rax, %rax
	je	.LBB43_199
# BB#195:                               # %if.then.759
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_196
# BB#197:                               # %cond.false.766
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	jmp	.LBB43_198
.LBB43_199:                             # %if.else.774
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_200
# BB#204:                               # %if.else.791
                                        #   in Loop: Header=BB43_141 Depth=1
	testb	$32, %bl
	movq	(%rcx), %rax
	je	.LBB43_203
# BB#205:                               # %if.then.797
                                        #   in Loop: Header=BB43_141 Depth=1
	flds	(%rax)
	fstpt	48(%r15,%rdx)
	jmp	.LBB43_207
.LBB43_162:                             # %if.else.376
                                        #   in Loop: Header=BB43_141 Depth=1
	orq	$4096, %rbx             # imm = 0x1000
.LBB43_163:                             # %if.end.384
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	%rbx, (%r8)
.LBB43_164:                             # %if.end.384
                                        #   in Loop: Header=BB43_141 Depth=1
	testb	$4, %bh
	jne	.LBB43_165
# BB#167:                               # %if.else.415
                                        #   in Loop: Header=BB43_141 Depth=1
	testb	$8, %bh
	jne	.LBB43_168
# BB#170:                               # %if.else.446
                                        #   in Loop: Header=BB43_141 Depth=1
	testb	$16, %bh
	jne	.LBB43_171
# BB#173:                               # %if.else.477
                                        #   in Loop: Header=BB43_141 Depth=1
	testb	$1, %bh
	jne	.LBB43_174
# BB#176:                               # %if.else.508
                                        #   in Loop: Header=BB43_141 Depth=1
	testb	$-128, %bl
	jne	.LBB43_177
# BB#179:                               # %if.else.539
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_180
# BB#184:                               # %if.else.560
                                        #   in Loop: Header=BB43_141 Depth=1
	cmpl	$3, %edi
	jne	.LBB43_186
# BB#185:                               # %if.then.566
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	movsbq	(%rax), %rax
	movq	%rax, 48(%r15,%rdx)
	jmp	.LBB43_207
.LBB43_180:                             # %if.then.542
                                        #   in Loop: Header=BB43_141 Depth=1
	movslq	(%rbp), %rdi
	cmpq	$40, %rdi
	ja	.LBB43_182
# BB#181:                               # %vaarg.in_reg.546
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	%rdi, %rax
	addq	16(%rbp), %rax
	leal	8(%rdi), %edi
	movl	%edi, (%rbp)
	jmp	.LBB43_183
.LBB43_182:                             # %vaarg.in_mem.548
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	%rdi, 8(%rbp)
	.align	16, 0x90
.LBB43_183:                             # %vaarg.end.552
                                        #   in Loop: Header=BB43_141 Depth=1
	movslq	(%rax), %rax
	movq	%rax, 48(%r15,%rdx)
	jmp	.LBB43_207
.LBB43_165:                             # %if.then.390
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_149
# BB#166:                               # %cond.false.405
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	jmp	.LBB43_152
.LBB43_168:                             # %if.then.421
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_149
# BB#169:                               # %cond.false.436
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	jmp	.LBB43_152
.LBB43_171:                             # %if.then.452
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_149
# BB#172:                               # %cond.false.467
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	jmp	.LBB43_152
.LBB43_196:                             # %cond.true.762
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	8(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rdi
	movq	%rdi, 8(%rbp)
.LBB43_198:                             # %cond.end.769
                                        #   in Loop: Header=BB43_141 Depth=1
	fldt	(%rax)
	fstpt	48(%r15,%rdx)
	jmp	.LBB43_207
.LBB43_200:                             # %if.then.777
                                        #   in Loop: Header=BB43_141 Depth=1
	movslq	4(%rbp), %rdi
	cmpq	$160, %rdi
	ja	.LBB43_202
# BB#201:                               # %vaarg.in_reg.778
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	%rdi, %rax
	addq	16(%rbp), %rax
	leal	16(%rdi), %edi
	movl	%edi, 4(%rbp)
	jmp	.LBB43_203
.LBB43_174:                             # %if.then.483
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_149
# BB#175:                               # %cond.false.498
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	jmp	.LBB43_152
.LBB43_202:                             # %vaarg.in_mem.780
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	%rdi, 8(%rbp)
.LBB43_203:                             # %vaarg.end.784
                                        #   in Loop: Header=BB43_141 Depth=1
	fldl	(%rax)
	fstpt	48(%r15,%rdx)
	jmp	.LBB43_207
.LBB43_177:                             # %if.then.514
                                        #   in Loop: Header=BB43_141 Depth=1
	testq	%r9, %r9
	je	.LBB43_149
# BB#178:                               # %cond.false.529
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rcx), %rax
	jmp	.LBB43_152
.LBB43_149:                             # %cond.true.240
                                        #   in Loop: Header=BB43_141 Depth=1
	movslq	(%rbp), %rdi
	cmpq	$40, %rdi
	ja	.LBB43_151
# BB#150:                               # %vaarg.in_reg
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	%rdi, %rax
	addq	16(%rbp), %rax
	leal	8(%rdi), %edi
	movl	%edi, (%rbp)
	jmp	.LBB43_152
.LBB43_151:                             # %vaarg.in_mem
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	%rdi, 8(%rbp)
	.align	16, 0x90
.LBB43_152:                             # %cond.end.244
                                        #   in Loop: Header=BB43_141 Depth=1
	movq	(%rax), %rax
	movq	%rax, 48(%r15,%rdx)
.LBB43_207:                             # %for.inc
                                        #   in Loop: Header=BB43_141 Depth=1
	leaq	1(%r13), %rax
	addq	$8, %rcx
	cmpq	%rsi, %r13
	jl	.LBB43_141
	jmp	.LBB43_208
.LBB43_186:                             # %if.else.575
                                        #   in Loop: Header=BB43_141 Depth=1
	testb	$32, %bl
	movq	(%rcx), %rax
	je	.LBB43_183
# BB#187:                               # %if.then.581
                                        #   in Loop: Header=BB43_141 Depth=1
	movswq	(%rax), %rax
	movq	%rax, 48(%r15,%rdx)
	jmp	.LBB43_207
	.align	16, 0x90
.LBB43_141:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r13
	movzwl	352(%rsp,%r13,2), %eax
	cmpl	$1, %eax
	je	.LBB43_144
# BB#142:                               # %if.then.205
	shll	$8, %r13d
	testw	%ax, %ax
	je	.LBB43_143
# BB#209:                               # %if.else.215
	orl	$4, %r13d
	jmp	.LBB43_210
.LBB43_1:                               # %while.end.thread
	movl	$-1, (%r15)
	movl	$0, 36(%r15)
	xorl	%r13d, %r13d
	jmp	.LBB43_211
.LBB43_208:                             # %for.cond.cleanup.loopexit_crit_edge
	movl	%eax, %r13d
	jmp	.LBB43_211
.LBB43_143:                             # %if.then.211
	orl	$5, %r13d
.LBB43_210:                             # %cleanup.loopexit417
	negl	%r13d
.LBB43_211:                             # %cleanup
	movl	%r13d, %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB43_137:                             # %if.then.171
	shll	$8, %r14d
	orl	$3, %r14d
	negl	%r14d
	movl	%r14d, %r13d
	jmp	.LBB43_211
.Lfunc_end43:
	.size	TrioParse, .Lfunc_end43-TrioParse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI43_0:
	.quad	.LBB43_37
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_40
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_60
	.quad	.LBB43_38
	.quad	.LBB43_25
	.quad	.LBB43_39
	.quad	.LBB43_41
	.quad	.LBB43_25
	.quad	.LBB43_66
	.quad	.LBB43_67
	.quad	.LBB43_67
	.quad	.LBB43_67
	.quad	.LBB43_67
	.quad	.LBB43_67
	.quad	.LBB43_67
	.quad	.LBB43_67
	.quad	.LBB43_67
	.quad	.LBB43_67
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_80
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_76
.LJTI43_1:
	.quad	.LBB43_68
	.quad	.LBB43_25
	.quad	.LBB43_78
	.quad	.LBB43_25
	.quad	.LBB43_72
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_79
.LJTI43_2:
	.quad	.LBB43_85
	.quad	.LBB43_25
	.quad	.LBB43_84
	.quad	.LBB43_25
	.quad	.LBB43_25
	.quad	.LBB43_83
	.quad	.LBB43_25
	.quad	.LBB43_87
.LJTI43_3:
	.quad	.LBB43_124
	.quad	.LBB43_127
	.quad	.LBB43_90
	.quad	.LBB43_127
	.quad	.LBB43_116
	.quad	.LBB43_120
	.quad	.LBB43_118
.LJTI43_4:
	.quad	.LBB43_94
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_114
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_98
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_125
	.quad	.LBB43_127
	.quad	.LBB43_91
	.quad	.LBB43_112
	.quad	.LBB43_117
	.quad	.LBB43_121
	.quad	.LBB43_119
	.quad	.LBB43_127
	.quad	.LBB43_128
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_126
	.quad	.LBB43_123
	.quad	.LBB43_113
	.quad	.LBB43_122
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_95
	.quad	.LBB43_127
	.quad	.LBB43_111
	.quad	.LBB43_127
	.quad	.LBB43_127
	.quad	.LBB43_115
.LJTI43_5:
	.quad	.LBB43_148
	.quad	.LBB43_153
	.quad	.LBB43_191
	.quad	.LBB43_153
	.quad	.LBB43_148
	.quad	.LBB43_148
	.quad	.LBB43_148
	.quad	.LBB43_207
	.quad	.LBB43_148
	.quad	.LBB43_206

	.text
	.align	16, 0x90
	.type	TrioWriteStringCharacter,@function
TrioWriteStringCharacter:               # @TrioWriteStringCharacter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 32
.Ltmp104:
	.cfi_offset %rbx, -32
.Ltmp105:
	.cfi_offset %r14, -24
.Ltmp106:
	.cfi_offset %r15, -16
	movl	%esi, %ebx
	movq	%rdi, %r15
	testb	$16, %dl
	jne	.LBB44_1
# BB#18:                                # %if.else.41
	movq	(%r15), %rax
	jmp	.LBB44_19
.LBB44_1:                               # %if.then
	movslq	%ebx, %r14
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$64, 1(%rax,%r14,2)
	jne	.LBB44_16
# BB#2:                                 # %if.then.3
	movl	$92, %esi
	movq	%r15, %rdi
	callq	*(%r15)
	leal	-7(%rbx), %eax
	cmpl	$6, %eax
	jbe	.LBB44_5
# BB#3:                                 # %if.then.3
	cmpl	$92, %ebx
	je	.LBB44_4
# BB#15:                                # %sw.default
	movl	$120, %esi
	movq	%r15, %rdi
	callq	*(%r15)
	movl	$24576, %edx            # imm = 0x6000
	movl	$2, %ecx
	movl	$2, %r8d
	movl	$16, %r9d
	movq	%r15, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	TrioWriteNumber         # TAILCALL
.LBB44_16:                              # %if.else
	movq	(%r15), %rax
	cmpl	$92, %ebx
	jne	.LBB44_19
# BB#17:                                # %if.then.32
	movl	$92, %esi
	movq	%r15, %rdi
	callq	*%rax
.LBB44_4:                               # %sw.bb.25
	movq	(%r15), %rax
	movl	$92, %esi
.LBB44_7:                               # %sw.bb
	movq	%r15, %rdi
	jmp	.LBB44_8
.LBB44_19:                              # %if.else.37
	movq	%r15, %rdi
	movl	%ebx, %esi
.LBB44_8:                               # %sw.bb
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.LBB44_5:                               # %if.then.3
	jmpq	*.LJTI44_0(,%rax,8)
.LBB44_6:                               # %sw.bb
	movq	(%r15), %rax
	movl	$97, %esi
	jmp	.LBB44_7
.LBB44_9:                               # %sw.bb.7
	movq	(%r15), %rax
	movl	$98, %esi
	jmp	.LBB44_7
.LBB44_13:                              # %sw.bb.19
	movq	(%r15), %rax
	movl	$116, %esi
	jmp	.LBB44_7
.LBB44_11:                              # %sw.bb.13
	movq	(%r15), %rax
	movl	$110, %esi
	jmp	.LBB44_7
.LBB44_14:                              # %sw.bb.22
	movq	(%r15), %rax
	movl	$118, %esi
	jmp	.LBB44_7
.LBB44_10:                              # %sw.bb.10
	movq	(%r15), %rax
	movl	$102, %esi
	jmp	.LBB44_7
.LBB44_12:                              # %sw.bb.16
	movq	(%r15), %rax
	movl	$114, %esi
	jmp	.LBB44_7
.Lfunc_end44:
	.size	TrioWriteStringCharacter, .Lfunc_end44-TrioWriteStringCharacter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI44_0:
	.quad	.LBB44_6
	.quad	.LBB44_9
	.quad	.LBB44_13
	.quad	.LBB44_11
	.quad	.LBB44_14
	.quad	.LBB44_10
	.quad	.LBB44_12

	.text
	.align	16, 0x90
	.type	TrioWriteString,@function
TrioWriteString:                        # @TrioWriteString
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp109:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp110:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp111:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp113:
	.cfi_def_cfa_offset 64
.Ltmp114:
	.cfi_offset %rbx, -56
.Ltmp115:
	.cfi_offset %r12, -48
.Ltmp116:
	.cfi_offset %r13, -40
.Ltmp117:
	.cfi_offset %r14, -32
.Ltmp118:
	.cfi_offset %r15, -24
.Ltmp119:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rbx, %rbx
	je	.LBB45_1
# BB#2:                                 # %if.else
	testl	%ebp, %ebp
	je	.LBB45_3
# BB#4:                                 # %if.else.3
	movslq	%ebp, %rcx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB45_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx,%rax)
	je	.LBB45_7
# BB#6:                                 # %for.inc.i
                                        #   in Loop: Header=BB45_5 Depth=1
	incq	%rax
	cmpq	%rcx, %rax
	jb	.LBB45_5
	jmp	.LBB45_7
.LBB45_1:
	movl	$5, %eax
	xorl	%r13d, %r13d
	movl	$internalNullString, %ebx
	jmp	.LBB45_7
.LBB45_3:                               # %if.then.2
	movq	%rbx, %rdi
	callq	strlen
.LBB45_7:                               # %if.end.7
	cmpl	%ebp, %eax
	movl	%eax, %r12d
	cmovgl	%ebp, %r12d
	cmpl	$-1, %ebp
	cmovel	%eax, %r12d
	movl	%r13d, %ebp
	subl	%r12d, %ebp
	movq	%r14, %rax
	andq	$8, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	jne	.LBB45_10
# BB#8:                                 # %while.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB45_9
# BB#18:                                # %while.body.lr.ph
	subl	%r12d, %r13d
	movl	$-1, %ebp
	.align	16, 0x90
.LBB45_19:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %esi
	movq	%r15, %rdi
	callq	*(%r15)
	decl	%r13d
	jg	.LBB45_19
	jmp	.LBB45_10
.LBB45_9:
	decl	%ebp
.LBB45_10:                              # %while.cond.19.preheader
	testl	%r12d, %r12d
	jle	.LBB45_13
# BB#11:                                # %while.body.23.preheader
	incl	%r12d
	.align	16, 0x90
.LBB45_12:                              # %while.body.23
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %esi
	incq	%rbx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	TrioWriteStringCharacter
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB45_12
.LBB45_13:                              # %while.end.25
	cmpq	$0, (%rsp)              # 8-byte Folded Reload
	je	.LBB45_17
# BB#14:                                # %while.end.25
	testl	%ebp, %ebp
	jle	.LBB45_17
# BB#15:                                # %while.body.33.lr.ph
	incl	%ebp
	.align	16, 0x90
.LBB45_16:                              # %while.body.33
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %esi
	movq	%r15, %rdi
	callq	*(%r15)
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB45_16
.LBB45_17:                              # %if.end.37
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	TrioWriteString, .Lfunc_end45-TrioWriteString
	.cfi_endproc

	.align	16, 0x90
	.type	TrioReadNumber,@function
TrioReadNumber:                         # @TrioReadNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp121:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp123:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp124:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp126:
	.cfi_def_cfa_offset 96
.Ltmp127:
	.cfi_offset %rbx, -56
.Ltmp128:
	.cfi_offset %r12, -48
.Ltmp129:
	.cfi_offset %r13, -40
.Ltmp130:
	.cfi_offset %r14, -32
.Ltmp131:
	.cfi_offset %r15, -24
.Ltmp132:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movb	internalDigitsUnconverted(%rip), %al
	andb	$1, %al
	jne	.LBB46_4
# BB#1:                                 # %if.then
	movl	$internalDigitArray, %edi
	movl	$-1, %esi
	movl	$512, %edx              # imm = 0x200
	callq	memset
	xorl	%eax, %eax
	.align	16, 0x90
.LBB46_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbq	internalDigitsLower(%rax), %rcx
	movl	%eax, internalDigitArray(,%rcx,4)
	movsbq	internalDigitsUpper(%rax), %rcx
	movl	%eax, internalDigitArray(,%rcx,4)
	movsbq	internalDigitsLower+1(%rax), %rcx
	leal	1(%rax), %edx
	movl	%edx, internalDigitArray(,%rcx,4)
	movsbq	internalDigitsUpper+1(%rax), %rcx
	movl	%edx, internalDigitArray(,%rcx,4)
	addq	$2, %rax
	cmpq	$36, %rax
	jne	.LBB46_2
# BB#3:                                 # %for.end
	movb	$1, internalDigitsUnconverted(%rip)
.LBB46_4:                               # %if.end
	movslq	32(%rbx), %rbp
	movl	%ebp, 36(%rsp)
	callq	__ctype_b_loc
	movq	%rax, %r13
	movq	(%r13), %rax
	testb	$32, 1(%rax,%rbp,2)
	je	.LBB46_8
# BB#5:                                 # %while.body.lr.ph.i
	leaq	36(%rsp), %r14
	.align	16, 0x90
.LBB46_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*8(%rbx)
	movslq	36(%rsp), %rax
	movq	(%r13), %rcx
	testb	$32, 1(%rcx,%rax,2)
	jne	.LBB46_6
# BB#7:                                 # %TrioSkipWhitespaces.exit.loopexit
	movl	32(%rbx), %ebp
.LBB46_8:                               # %TrioSkipWhitespaces.exit
	cmpl	$45, %ebp
	jne	.LBB46_9
# BB#11:                                # %if.then.15
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movl	$1, %r14d
	jmp	.LBB46_12
.LBB46_9:                               # %TrioSkipWhitespaces.exit
	xorl	%r14d, %r14d
	cmpl	$43, %ebp
	jne	.LBB46_12
# BB#10:                                # %if.then.11
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*8(%rbx)
.LBB46_12:                              # %if.end.18
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	36(%rbx), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	testb	$16, %al
	je	.LBB46_24
# BB#13:                                # %if.then.20
	leal	1(%r15), %eax
	cmpl	$17, %eax
	ja	.LBB46_24
# BB#14:                                # %if.then.20
	movl	$131593, %ecx           # imm = 0x20209
	btl	%eax, %ecx
	jae	.LBB46_24
# BB#15:                                # %sw.bb
	xorl	%eax, %eax
	cmpl	$48, 32(%rbx)
	jne	.LBB46_36
# BB#16:                                # %if.then.24
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movslq	32(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB46_24
# BB#17:                                # %if.then.28
	cmpl	$2, %r15d
	jne	.LBB46_18
# BB#21:                                # %land.lhs.true.40
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB46_24
# BB#22:                                # %trio_to_upper.exit51
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	cmpl	$66, (%rax,%rbp,4)
	jne	.LBB46_24
	jmp	.LBB46_23
.LBB46_18:                              # %if.then.28
	cmpl	$16, %r15d
	jne	.LBB46_24
# BB#19:                                # %land.lhs.true
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB46_24
# BB#20:                                # %trio_to_upper.exit
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	cmpl	$88, (%rax,%rbp,4)
	jne	.LBB46_24
.LBB46_23:                              # %if.then.45
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*8(%rbx)
.LBB46_24:                              # %while.cond.preheader
	movslq	%r15d, %r14
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.LBB46_25
	.align	16, 0x90
.LBB46_32:                              # %if.end.84
                                        #   in Loop: Header=BB46_25 Depth=1
	imulq	%r14, %rbp
	addq	%rax, %rbp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movl	$1, %ecx
.LBB46_25:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%r12d, %r12d
	je	.LBB46_27
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB46_25 Depth=1
	movl	36(%rbx), %eax
	subl	32(%rsp), %eax          # 4-byte Folded Reload
	cmpl	%r12d, %eax
	jge	.LBB46_33
.LBB46_27:                              # %land.rhs
                                        #   in Loop: Header=BB46_25 Depth=1
	movslq	32(%rbx), %rax
	cmpq	$-1, %rax
	je	.LBB46_33
# BB#28:                                # %lor.rhs
                                        #   in Loop: Header=BB46_25 Depth=1
	cmpl	$127, %eax
	ja	.LBB46_33
# BB#29:                                # %lor.rhs
                                        #   in Loop: Header=BB46_25 Depth=1
	movq	(%r13), %rdx
	movzwl	(%rdx,%rax,2), %edx
	andl	$8192, %edx             # imm = 0x2000
	testw	%dx, %dx
	jne	.LBB46_33
# BB#30:                                # %if.then.72
                                        #   in Loop: Header=BB46_25 Depth=1
	movslq	internalDigitArray(,%rax,4), %rax
	cmpq	$-1, %rax
	je	.LBB46_33
# BB#31:                                # %if.then.72
                                        #   in Loop: Header=BB46_25 Depth=1
	cmpl	%r15d, %eax
	jl	.LBB46_32
.LBB46_33:                              # %while.end
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB46_36
# BB#34:                                # %if.end.90
	movl	$1, %eax
	movq	16(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB46_36
# BB#35:                                # %if.then.92
	movq	%rbp, %rcx
	negq	%rcx
	movq	8(%rsp), %rsi           # 8-byte Reload
	testl	%esi, %esi
	cmoveq	%rbp, %rcx
	movq	%rcx, (%rdx)
.LBB46_36:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end46:
	.size	TrioReadNumber, .Lfunc_end46-TrioReadNumber
	.cfi_endproc

	.align	16, 0x90
	.type	TrioReadString,@function
TrioReadString:                         # @TrioReadString
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp136:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp137:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp139:
	.cfi_def_cfa_offset 80
.Ltmp140:
	.cfi_offset %rbx, -56
.Ltmp141:
	.cfi_offset %r12, -48
.Ltmp142:
	.cfi_offset %r13, -40
.Ltmp143:
	.cfi_offset %r14, -32
.Ltmp144:
	.cfi_offset %r15, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movslq	32(%rbp), %r13
	movl	%r13d, 20(%rsp)
	callq	__ctype_b_loc
	movq	%rax, %rbx
	movq	(%rbx), %rax
	testb	$32, 1(%rax,%r13,2)
	je	.LBB47_3
# BB#1:                                 # %while.body.lr.ph.i
	leaq	20(%rsp), %r13
	.align	16, 0x90
.LBB47_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*8(%rbp)
	movslq	20(%rsp), %rax
	movq	(%rbx), %rcx
	testb	$32, 1(%rcx,%rax,2)
	jne	.LBB47_2
.LBB47_3:                               # %TrioSkipWhitespaces.exit
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	js	.LBB47_10
# BB#4:                                 # %land.rhs.lr.ph
	movslq	%r15d, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB47_5:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movslq	32(%rbp), %rax
	cmpq	$-1, %rax
	je	.LBB47_10
# BB#6:                                 # %lor.rhs
                                        #   in Loop: Header=BB47_5 Depth=1
	movq	(%rbx), %rcx
	testb	$32, 1(%rcx,%rax,2)
	jne	.LBB47_10
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB47_5 Depth=1
	leaq	(%r12,%r13), %rsi
	testq	%r12, %r12
	cmoveq	%r12, %rsi
	movl	$1, %ecx
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	TrioReadChar
	testl	%eax, %eax
	je	.LBB47_10
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB47_5 Depth=1
	incq	%r13
	testl	%r15d, %r15d
	je	.LBB47_5
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB47_5 Depth=1
	cmpq	8(%rsp), %r13           # 8-byte Folded Reload
	jl	.LBB47_5
.LBB47_10:                              # %for.end
	testq	%r12, %r12
	je	.LBB47_12
# BB#11:                                # %if.then.12
	movslq	%r13d, %rax
	movb	$0, (%r12,%rax)
.LBB47_12:                              # %if.end.15
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	TrioReadString, .Lfunc_end47-TrioReadString
	.cfi_endproc

	.align	16, 0x90
	.type	TrioReadChar,@function
TrioReadChar:                           # @TrioReadChar
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
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp152:
	.cfi_def_cfa_offset 80
.Ltmp153:
	.cfi_offset %rbx, -56
.Ltmp154:
	.cfi_offset %r12, -48
.Ltmp155:
	.cfi_offset %r13, -40
.Ltmp156:
	.cfi_offset %r14, -32
.Ltmp157:
	.cfi_offset %r15, -24
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1, %r13d
	testl	%ecx, %ecx
	jle	.LBB48_33
# BB#1:                                 # %entry
	movl	32(%r14), %ebp
	cmpl	$-1, %ebp
	je	.LBB48_33
# BB#2:                                 # %for.body.lr.ph
	movq	%rdx, %r13
	andl	$16, %r13d
	movq	%r13, (%rsp)            # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %eax
	jmp	.LBB48_3
.LBB48_16:                              # %sw.bb.11
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	$13, %bpl
	jmp	.LBB48_28
.LBB48_17:                              # %sw.bb.12
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	$9, %bpl
	jmp	.LBB48_28
.LBB48_18:                              # %sw.bb.13
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	$11, %bpl
	jmp	.LBB48_28
	.align	16, 0x90
.LBB48_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r12
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	*8(%r14)
	testq	%r13, %r13
	je	.LBB48_28
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB48_3 Depth=1
	movzbl	%bpl, %eax
	cmpl	$92, %eax
	jne	.LBB48_28
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB48_3 Depth=1
	movslq	32(%r14), %rbx
	cmpq	$101, %rbx
	jg	.LBB48_10
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	$92, %bpl
	cmpl	$92, %ebx
	je	.LBB48_28
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB48_3 Depth=1
	cmpl	$97, %ebx
	jne	.LBB48_8
# BB#14:                                # %sw.bb.7
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	$7, %bpl
	jmp	.LBB48_28
	.align	16, 0x90
.LBB48_10:                              # %if.then
                                        #   in Loop: Header=BB48_3 Depth=1
	leal	-110(%rbx), %eax
	cmpl	$8, %eax
	jbe	.LBB48_13
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB48_3 Depth=1
	cmpl	$102, %ebx
	jne	.LBB48_19
# BB#12:                                # %sw.bb.9
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	$12, %bpl
	jmp	.LBB48_28
.LBB48_13:                              # %if.then
                                        #   in Loop: Header=BB48_3 Depth=1
	jmpq	*.LJTI48_0(,%rax,8)
.LBB48_15:                              # %sw.bb.10
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	$10, %bpl
	jmp	.LBB48_28
.LBB48_8:                               # %if.then
                                        #   in Loop: Header=BB48_3 Depth=1
	cmpl	$98, %ebx
	jne	.LBB48_19
# BB#9:                                 # %sw.bb.8
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	$8, %bpl
	jmp	.LBB48_28
.LBB48_19:                              # %sw.default
                                        #   in Loop: Header=BB48_3 Depth=1
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$8, 1(%rax,%rbx,2)
	jne	.LBB48_20
# BB#23:                                # %if.else
                                        #   in Loop: Header=BB48_3 Depth=1
	movl	%ebx, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB48_26
# BB#24:                                # %trio_to_upper.exit
                                        #   in Loop: Header=BB48_3 Depth=1
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	cmpl	$88, (%rax,%rbx,4)
	jne	.LBB48_26
# BB#25:                                # %if.then.27
                                        #   in Loop: Header=BB48_3 Depth=1
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	*8(%r14)
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$16, %r8d
	jmp	.LBB48_21
.LBB48_20:                              # %if.then.18
                                        #   in Loop: Header=BB48_3 Depth=1
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$8, %r8d
.LBB48_21:                              # %if.then.18
                                        #   in Loop: Header=BB48_3 Depth=1
	movq	%r14, %rdi
	leaq	16(%rsp), %rsi
	callq	TrioReadNumber
	testl	%eax, %eax
	je	.LBB48_33
# BB#22:                                # %if.end
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	16(%rsp), %bpl
	jmp	.LBB48_27
.LBB48_26:                              # %if.else.34
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	%bl, %bpl
.LBB48_27:                              # %if.end.39
                                        #   in Loop: Header=BB48_3 Depth=1
	movq	(%rsp), %r13            # 8-byte Reload
	.align	16, 0x90
.LBB48_28:                              # %if.end.39
                                        #   in Loop: Header=BB48_3 Depth=1
	testq	%r15, %r15
	je	.LBB48_30
# BB#29:                                # %if.then.41
                                        #   in Loop: Header=BB48_3 Depth=1
	movb	%bpl, -1(%r15,%r12)
.LBB48_30:                              # %for.inc
                                        #   in Loop: Header=BB48_3 Depth=1
	cmpq	8(%rsp), %r12           # 8-byte Folded Reload
	jge	.LBB48_32
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB48_3 Depth=1
	movl	32(%r14), %ebp
	leaq	1(%r12), %rax
	cmpl	$-1, %ebp
	jne	.LBB48_3
.LBB48_32:                              # %for.cond.for.end_crit_edge
	decq	%r12
	addl	$2, %r12d
	movl	%r12d, %r13d
.LBB48_33:                              # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	TrioReadChar, .Lfunc_end48-TrioReadChar
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI48_0:
	.quad	.LBB48_15
	.quad	.LBB48_19
	.quad	.LBB48_19
	.quad	.LBB48_19
	.quad	.LBB48_16
	.quad	.LBB48_19
	.quad	.LBB48_17
	.quad	.LBB48_19
	.quad	.LBB48_18

	.type	trio_printfv.unused,@object # @trio_printfv.unused
	.local	trio_printfv.unused
	.comm	trio_printfv.unused,24,16
	.type	trio_fprintfv.unused,@object # @trio_fprintfv.unused
	.local	trio_fprintfv.unused
	.comm	trio_fprintfv.unused,24,16
	.type	trio_dprintfv.unused,@object # @trio_dprintfv.unused
	.local	trio_dprintfv.unused
	.comm	trio_dprintfv.unused,24,16
	.type	trio_sprintfv.unused,@object # @trio_sprintfv.unused
	.local	trio_sprintfv.unused
	.comm	trio_sprintfv.unused,24,16
	.type	trio_snprintfv.unused,@object # @trio_snprintfv.unused
	.local	trio_snprintfv.unused
	.comm	trio_snprintfv.unused,24,16
	.type	internalNullString,@object # @internalNullString
internalNullString:
	.asciz	"(nil)"
	.size	internalNullString, 6

	.type	internalDecimalPointLength,@object # @internalDecimalPointLength
	.data
	.align	4
internalDecimalPointLength:
	.long	1                       # 0x1
	.size	internalDecimalPointLength, 4

	.type	internalDecimalPoint,@object # @internalDecimalPoint
internalDecimalPoint:
	.byte	46                      # 0x2e
	.size	internalDecimalPoint, 1

	.type	internalDecimalPointString,@object # @internalDecimalPointString
	.align	16
internalDecimalPointString:
	.asciz	".\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	internalDecimalPointString, 17

	.type	internalThousandSeparator,@object # @internalThousandSeparator
	.align	16
internalThousandSeparator:
	.asciz	",\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	internalThousandSeparator, 17

	.type	internalGrouping,@object # @internalGrouping
	.align	16
internalGrouping:
	.asciz	"\177\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	internalGrouping, 64

	.type	trio_scanfv.unused,@object # @trio_scanfv.unused
	.local	trio_scanfv.unused
	.comm	trio_scanfv.unused,24,16
	.type	trio_fscanfv.unused,@object # @trio_fscanfv.unused
	.local	trio_fscanfv.unused
	.comm	trio_fscanfv.unused,24,16
	.type	trio_dscanfv.unused,@object # @trio_dscanfv.unused
	.local	trio_dscanfv.unused
	.comm	trio_dscanfv.unused,24,16
	.type	trio_sscanfv.unused,@object # @trio_sscanfv.unused
	.local	trio_sscanfv.unused
	.comm	trio_sscanfv.unused,24,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"End of file"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid argument"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Too many arguments"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Double reference"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Reference gap"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Out of memory"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid range"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Custom error"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Unknown"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"NAN"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"nan"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-INF"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"-inf"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"INF"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"inf"
	.size	.L.str.14, 4

	.type	internalDigitsUpper,@object # @internalDigitsUpper
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
internalDigitsUpper:
	.asciz	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.size	internalDigitsUpper, 37

	.type	internalDigitsLower,@object # @internalDigitsLower
	.align	16
internalDigitsLower:
	.asciz	"0123456789abcdefghijklmnopqrstuvwxyz"
	.size	internalDigitsLower, 37

	.type	trio_ninf.ninf_value,@object # @trio_ninf.ninf_value
	.local	trio_ninf.ninf_value
	.comm	trio_ninf.ninf_value,8,8
	.type	trio_pinf.pinf_value,@object # @trio_pinf.pinf_value
	.local	trio_pinf.pinf_value
	.comm	trio_pinf.pinf_value,8,8
	.type	trio_nan.nan_value,@object # @trio_nan.nan_value
	.local	trio_nan.nan_value
	.comm	trio_nan.nan_value,8,8
	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	internalDigitsUnconverted,@object # @internalDigitsUnconverted
	.local	internalDigitsUnconverted
	.comm	internalDigitsUnconverted,1,1
	.type	internalDigitArray,@object # @internalDigitArray
	.local	internalDigitArray
	.comm	internalDigitArray,512,16
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"INFINITE"
	.size	.L.str.16, 9

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.8
	.quad	.L.str.7
	.size	.Lswitch.table, 72

	.type	.Lswitch.table.1,@object # @switch.table.1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.Lswitch.table.1:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	3                       # 0x3
	.size	.Lswitch.table.1, 16

	.type	.Lswitch.table.2,@object # @switch.table.2
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table.2:
	.quad	-9223372036854775808    # x86_fp80 1
	.short	16383
	.zero	6
	.quad	-6917529027641081856    # x86_fp80 10
	.short	16386
	.zero	6
	.quad	-4035225266123964416    # x86_fp80 100
	.short	16389
	.zero	6
	.quad	-432345564227567616     # x86_fp80 1000
	.short	16392
	.zero	6
	.quad	-7187745005283311616    # x86_fp80 1.0E+4
	.short	16396
	.zero	6
	.quad	-4372995238176751616    # x86_fp80 1.0E+5
	.short	16399
	.zero	6
	.quad	-854558029293551616     # x86_fp80 1.0E+6
	.short	16402
	.zero	6
	.quad	-7451627795949551616    # x86_fp80 1.0E+7
	.short	16406
	.zero	6
	.quad	-4702848726509551616    # x86_fp80 1.0E+8
	.short	16409
	.zero	6
	.quad	-1266874889709551616    # x86_fp80 1.0E+9
	.short	16412
	.zero	6
	.size	.Lswitch.table.2, 160


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
