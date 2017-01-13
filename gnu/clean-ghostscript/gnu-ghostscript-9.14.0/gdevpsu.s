	.text
	.file	"gdevpsu.bc"
	.globl	psw_print_lines
	.align	16, 0x90
	.type	psw_print_lines,@function
psw_print_lines:                        # @psw_print_lines
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB0_4
# BB#1:                                 # %for.body.preheader
	addq	$8, %rbx
	.align	16, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB0_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	(%rbx), %rdx
	addq	$8, %rbx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	jne	.LBB0_3
.LBB0_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	psw_print_lines, .Lfunc_end0-psw_print_lines
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1073741824              # float 2
.LCPI1_1:
	.long	1069547520              # float 1.5
.LCPI1_2:
	.long	1092616192              # float 10
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_3:
	.quad	4602678819172646912     # double 0.5
.LCPI1_4:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	psw_begin_file_header
	.align	16, 0x90
	.type	psw_begin_file_header,@function
psw_begin_file_header:                  # @psw_begin_file_header
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
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp11:
	.cfi_def_cfa_offset 560
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
	movl	%r8d, %r12d
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$psw_eps_header, %ebx
	cmpl	$0, 4(%rcx)
	jne	.LBB1_2
# BB#1:                                 # %select.mid
	movl	$psw_ps_header, %ebx
.LBB1_2:                                # %select.end
	movq	(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB1_6
# BB#3:                                 # %for.body.i.preheader
	addq	$8, %rbx
	.align	16, 0x90
.LBB1_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_6
# BB#4:                                 # %for.cond.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	(%rbx), %rdx
	addq	$8, %rbx
	testq	%rdx, %rdx
	jne	.LBB1_5
.LBB1_6:                                # %psw_print_lines.exit
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	movq	%r15, 40(%rsp)          # 8-byte Spill
	testq	%rbp, %rbp
	je	.LBB1_8
# BB#7:                                 # %if.then
	movsd	(%rbp), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r13d
	movsd	8(%rbp), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	16(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r15d
	movsd	24(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r9d
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	callq	fprintf
	movsd	(%rbp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rbp), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbp), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rbp), %xmm3         # xmm3 = mem[0],zero
	movl	$.L.str.41, %esi
	movb	$4, %al
	movq	%r14, %rdi
	callq	fprintf
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	$0, 16(%rbx)
	movq	40(%rsp), %r15          # 8-byte Reload
	movl	36(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB1_13
.LBB1_8:                                # %if.else
	movq	%r14, %rdi
	callq	fileno
	leaq	152(%rsp), %rdx
	movl	$1, %edi
	movl	%eax, %esi
	callq	__fxstat64
	testl	%eax, %eax
	movq	40(%rsp), %r15          # 8-byte Reload
	movl	36(%rsp), %r12d         # 4-byte Reload
	jne	.LBB1_10
# BB#9:                                 # %is_seekable.exit
	movl	176(%rsp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$32768, %eax            # imm = 0x8000
	jne	.LBB1_10
# BB#11:                                # %if.else.8
	movq	%r14, %rdi
	callq	gp_ftell_64
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rax, 16(%rbx)
	movl	$.L.str.3, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.3, %edi
	jmp	.LBB1_12
.LBB1_10:                               # %if.then.4
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	$-1, 16(%rbx)
	movl	$.L.str.1, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.2, %edi
.LBB1_12:                               # %if.end.13
	movq	%r14, %rsi
	callq	fputs
.LBB1_13:                               # %if.end.13
	movq	gs_product(%rip), %rdx
	movq	gs_revision(%rip), %rcx
	movq	16(%r15), %r8
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	leaq	152(%rsp), %rbp
	movq	%rbp, %rdi
	callq	time
	movq	%rbp, %rdi
	callq	localtime
	movq	(%rax), %rsi
	movq	8(%rax), %r9
	movq	%rsi, %rdi
	shrq	$32, %rdi
	movq	%r9, %r8
	shrq	$32, %r8
	movq	16(%rax), %rdx
	leal	1(%rdx), %ecx
	shrq	$32, %rdx
	addl	$1900, %edx             # imm = 0x76C
	movl	%esi, 8(%rsp)
	movl	%edi, (%rsp)
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%r12d, %r12d
	je	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$.L.str.6, %edi
	movq	%r14, %rsi
	callq	fputs
.LBB1_15:                               # %if.end.22
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jae	.LBB1_16
# BB#17:                                # %if.else.28
	ucomiss	.LCPI1_1(%rip), %xmm0
	jne	.LBB1_19
	jp	.LBB1_19
# BB#18:                                # %if.then.33
	movl	$.L.str.8, %edi
	movq	%r14, %rsi
	callq	fputs
	jmp	.LBB1_19
.LBB1_16:                               # %if.then.24
	cvttss2si	%xmm0, %edx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_19:                               # %for.body.i.64.preheader
	movl	$.L.str, %esi
	movl	$.L.str.42, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_21
# BB#20:                                # %for.cond.i.59
	movl	$.L.str, %esi
	movl	$.L.str.43, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_21
# BB#29:                                # %for.cond.i.59.1
	movl	$.L.str, %esi
	movl	$.L.str.44, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_21:                               # %psw_print_lines.exit66
	movq	gs_copyright(%rip), %rdx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.10, %edi
	movq	%r14, %rsi
	callq	fputs
	movq	%r14, %rdi
	callq	fflush
	movq	24(%r15), %rsi
	leaq	152(%rsp), %rbp
	movq	%rbp, %rdi
	callq	s_init
	leaq	48(%rsp), %r12
	movl	$100, %ecx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	swrite_file
	movq	16(%r15), %rdx
	movl	$.L.str.56, %esi
	movq	%rbp, %rdi
	callq	pprints1
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %edx
	mulss	.LCPI1_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	imulq	$1717986919, %rcx, %rax # imm = 0x66666667
	movq	%rax, %rsi
	shrq	$63, %rsi
	sarq	$34, %rax
	addl	%esi, %eax
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ecx
	movl	8(%rbx), %r8d
	movl	$.L.str.57, %esi
	movq	%rbp, %rdi
	callq	pprintd3
	movq	%rbp, %rdi
	callq	*360(%rsp)
	movl	8(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI1_4(%rip), %xmm0
	movl	$.L.str.11, %esi
	xorl	%edx, %edx
	movb	$1, %al
	movq	%r14, %rdi
	callq	fprintf
	movq	%r14, %rdi
	callq	fflush
	movq	24(%r15), %rsi
	leaq	152(%rsp), %rbp
	movq	%rbp, %rdi
	callq	s_init
	movl	$100, %ecx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	swrite_file
	movq	16(%r15), %rdx
	movl	$.L.str.56, %esi
	movq	%rbp, %rdi
	callq	pprints1
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %edx
	mulss	.LCPI1_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	imulq	$1717986919, %rcx, %rax # imm = 0x66666667
	movq	%rax, %rsi
	shrq	$63, %rsi
	sarq	$34, %rax
	addl	%esi, %eax
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ecx
	movl	8(%rbx), %r8d
	movl	$.L.str.57, %esi
	movq	%rbp, %rdi
	callq	pprintd3
	movq	%rbp, %rdi
	callq	*360(%rsp)
	movl	$.L.str.12, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str, %esi
	movl	$.L.str.45, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_28
# BB#22:                                # %for.cond.i.88
	movl	$.L.str, %esi
	movl	$.L.str.46, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_28
# BB#23:                                # %for.cond.i.88.1
	movl	$.L.str, %esi
	movl	$.L.str.47, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_28
# BB#24:                                # %for.cond.i.88.2
	movl	$.L.str, %esi
	movl	$.L.str.48, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_28
# BB#25:                                # %for.cond.i.88.3
	movl	$.L.str, %esi
	movl	$.L.str.49, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_28
# BB#26:                                # %for.cond.i.88.4
	movl	$.L.str, %esi
	movl	$.L.str.50, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB1_28
# BB#27:                                # %for.cond.i.88.5
	movl	$.L.str, %esi
	movl	$.L.str.51, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_28:                               # %psw_print_lines.exit95
	movq	%r14, %rdi
	callq	fflush
	movq	%r14, %rdi
	callq	ferror
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	psw_begin_file_header, .Lfunc_end1-psw_begin_file_header
	.cfi_endproc

	.globl	psw_end_file_header
	.align	16, 0x90
	.type	psw_end_file_header,@function
psw_end_file_header:                    # @psw_end_file_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	movl	$.L.str.52, %edx
	xorl	%eax, %eax
	callq	fprintf
	testl	%eax, %eax
	js	.LBB2_4
# BB#1:                                 # %for.cond.i
	movl	$.L.str, %esi
	movl	$.L.str.53, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB2_4
# BB#2:                                 # %for.cond.i.1
	movl	$.L.str, %esi
	movl	$.L.str.54, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:                                 # %for.cond.i.2
	movl	$.L.str, %esi
	movl	$.L.str.55, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	sarl	$31, %eax
	andl	$-12, %eax
	popq	%rbx
	retq
.LBB2_4:                                # %psw_print_lines.exit
	movl	$-12, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	psw_end_file_header, .Lfunc_end2-psw_end_file_header
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4634766966517661696     # double 72
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	psw_end_file
	.align	16, 0x90
	.type	psw_end_file,@function
psw_end_file:                           # @psw_end_file
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
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 80
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB3_17
# BB#1:                                 # %if.end
	movslq	%r8d, %rdx
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movq	%rbx, %rdi
	callq	ferror
	movl	$-12, %ebp
	testl	%eax, %eax
	jne	.LBB3_17
# BB#2:                                 # %if.end.3
	cmpq	$0, 928(%r13)
	jle	.LBB3_14
# BB#3:                                 # %land.lhs.true
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_14
# BB#4:                                 # %if.then.8
	js	.LBB3_13
# BB#5:                                 # %if.then.12
	movq	%rbx, %rdi
	callq	gp_ftell_64
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	16(%r14), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gp_fseek_64
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r12), %xmm3          # xmm3 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB3_10
	jp	.LBB3_10
# BB#6:                                 # %if.then.12
	ucomisd	%xmm1, %xmm3
	jne	.LBB3_10
	jp	.LBB3_10
# BB#7:                                 # %land.lhs.true.22
	movsd	16(%r12), %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm2
	jne	.LBB3_10
	jp	.LBB3_10
# BB#8:                                 # %land.lhs.true.26
	movsd	24(%r12), %xmm2         # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jne	.LBB3_10
	jp	.LBB3_10
# BB#9:                                 # %if.then.31
	cvtsi2sdl	832(%r13), %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	884(%r13), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	888(%r13), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI3_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	836(%r13), %xmm0
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	xorpd	%xmm0, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r13d
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r9d
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r12d, %edx
	movl	%r12d, %ecx
	movl	%r13d, %r8d
	callq	fprintf
	movl	$.L.str.41, %esi
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movb	$4, %al
	movq	%rbx, %rdi
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jmp	.LBB3_11
.LBB3_10:                               # %if.else
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r15d
	movsd	16(%r12), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r13d
	movsd	24(%r12), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r9d
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	16(%rsp), %edx          # 4-byte Reload
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	callq	fprintf
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r12), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%r12), %xmm3         # xmm3 = mem[0],zero
	movl	$.L.str.41, %esi
	movb	$4, %al
	movq	%rbx, %rdi
.LBB3_11:                               # %if.end.55
	callq	fprintf
	movl	$37, %edi
	movq	%rbx, %rsi
	callq	fputc
	movq	%rbx, %rdi
	callq	ferror
	testl	%eax, %eax
	jne	.LBB3_17
# BB#12:                                # %if.end.60
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	gp_fseek_64
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.62
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r15d
	movsd	8(%r12), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r13d
	movsd	16(%r12), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	movsd	24(%r12), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r9d
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r15d, %edx
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	callq	fprintf
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r12), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%r12), %xmm3         # xmm3 = mem[0],zero
	movl	$.L.str.41, %esi
	movb	$4, %al
	movq	%rbx, %rdi
	callq	fprintf
.LBB3_14:                               # %if.end.64
	cmpl	$0, 4(%r14)
	jne	.LBB3_16
# BB#15:                                # %if.then.66
	movl	$.L.str.14, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB3_16:                               # %if.end.68
	movq	%rbx, %rdi
	callq	ferror
	testl	%eax, %eax
	movl	$-12, %ebp
	cmovel	%eax, %ebp
.LBB3_17:                               # %return
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	psw_end_file, .Lfunc_end3-psw_end_file
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4634766966517661696     # double 72
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_2:
	.long	1092616192              # float 10
	.text
	.globl	psw_write_page_header
	.align	16, 0x90
	.type	psw_write_page_header,@function
psw_write_page_header:                  # @psw_write_page_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 64
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	928(%r14), %rdx
	incq	%rdx
	cvtsi2sdl	832(%r14), %xmm0
	movsd	.LCPI4_0(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movss	884(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	888(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebp
	xorps	%xmm0, %xmm0
	cvtsi2sdl	836(%r14), %xmm0
	mulsd	%xmm3, %xmm0
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r13d
	movl	$.L.str.15, %esi
	movq	%r8, %rcx
	callq	pprintld2
	cmpl	$0, 4(%r15)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movslq	%ebp, %rdx
	movslq	%r13d, %rcx
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	pprintld2
.LBB4_2:                                # %if.end
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	16(%r14), %rdx
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	callq	pprints1
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %edx
	mulss	.LCPI4_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI4_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	imulq	$1717986919, %rcx, %rax # imm = 0x66666667
	movq	%rax, %rsi
	shrq	$63, %rsi
	sarq	$34, %rax
	addl	%esi, %eax
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ecx
	movl	8(%r15), %r8d
	movl	$.L.str.57, %esi
	movq	%rbx, %rdi
	callq	pprintd3
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	cmpl	$0, 4(%r15)
	jne	.LBB4_8
# BB#3:                                 # %while.cond.preheader
	leal	-787(%rbp), %eax
	cmpl	$10, %eax
	movl	$psw_write_page_header.sizes, %r15d
	ja	.LBB4_5
# BB#4:                                 # %while.cond.preheader
	leal	-1219(%r13), %eax
	cmpl	$11, %eax
	jb	.LBB4_7
.LBB4_5:                                # %while.cond.backedge
	leal	-837(%rbp), %eax
	cmpl	$10, %eax
	movl	$psw_write_page_header.sizes+16, %r15d
	ja	.LBB4_13
# BB#6:                                 # %while.cond.backedge
	leal	-1186(%r13), %eax
	cmpl	$10, %eax
	jbe	.LBB4_7
.LBB4_13:                               # %while.cond.backedge.1
	leal	-590(%rbp), %eax
	cmpl	$10, %eax
	movl	$psw_write_page_header.sizes+32, %r15d
	ja	.LBB4_15
# BB#14:                                # %while.cond.backedge.1
	leal	-837(%r13), %eax
	cmpl	$11, %eax
	jb	.LBB4_7
.LBB4_15:                               # %while.cond.backedge.2
	leal	-496(%rbp), %eax
	cmpl	$10, %eax
	movl	$psw_write_page_header.sizes+48, %r15d
	ja	.LBB4_17
# BB#16:                                # %while.cond.backedge.2
	leal	-704(%r13), %eax
	cmpl	$11, %eax
	jb	.LBB4_7
.LBB4_17:                               # %while.cond.backedge.3
	leal	-1219(%rbp), %ecx
	leal	-787(%r13), %eax
	cmpl	$10, %ecx
	movl	$psw_write_page_header.sizes+64, %r15d
	ja	.LBB4_19
# BB#18:                                # %while.cond.backedge.3
	cmpl	$11, %eax
	jb	.LBB4_7
.LBB4_19:                               # %while.cond.backedge.4
	leal	-607(%rbp), %ecx
	cmpl	$10, %ecx
	ja	.LBB4_22
# BB#20:                                # %if.then.32.5
	leal	-1003(%r13), %ecx
	movl	$psw_write_page_header.sizes+80, %r15d
	cmpl	$11, %ecx
	jb	.LBB4_7
# BB#21:                                # %if.then.32.6
	movl	$psw_write_page_header.sizes+96, %r15d
	cmpl	$11, %eax
	jb	.LBB4_7
.LBB4_22:                               # %while.cond.backedge.6
	movl	$psw_write_page_header.sizes+112, %r15d
.LBB4_7:                                # %while.end
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movl	%r13d, %ecx
	callq	pprintd2
	movq	(%r15), %rdx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	pprints1
.LBB4_8:                                # %if.end.50
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	movl	%r12d, %edx
	callq	pprintd1
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	je	.LBB4_10
# BB#9:                                 # %if.then.53
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r14), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	movl	$.L.str.30, %esi
	movq	%rbx, %rdi
	callq	pprintg2
.LBB4_10:                               # %if.end.63
	movl	$.L.str.31, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movzwl	152(%rbx), %ecx
	movl	$-12, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	je	.LBB4_12
# BB#11:                                # %select.mid
	xorl	%eax, %eax
.LBB4_12:                               # %select.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	psw_write_page_header, .Lfunc_end4-psw_write_page_header
	.cfi_endproc

	.globl	psw_write_page_trailer
	.align	16, 0x90
	.type	psw_write_page_trailer,@function
psw_write_page_trailer:                 # @psw_write_page_trailer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpl	$1, %ebp
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
.LBB5_2:                                # %if.end
	testl	%r14d, %r14d
	movl	$.L.str.35, %eax
	movl	$.L.str.36, %edx
	cmovneq	%rax, %rdx
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movq	%rbx, %rdi
	callq	fflush
	movq	%rbx, %rdi
	callq	ferror
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	psw_write_page_trailer, .Lfunc_end5-psw_write_page_trailer
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.type	psw_eps_header,@object  # @psw_eps_header
	.section	.rodata,"a",@progbits
	.align	16
psw_eps_header:
	.quad	.L.str.37
	.quad	0
	.size	psw_eps_header, 16

	.type	psw_ps_header,@object   # @psw_ps_header
	.align	16
psw_ps_header:
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	0
	.size	psw_ps_header, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%%BoundingBox: (atend)\n"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%%HiResBoundingBox: (atend)\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%...............................................................\n"
	.size	.L.str.3, 66

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%%%%Creator: %s %ld (%s)\n"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%%%%CreationDate: %d/%02d/%02d %02d:%02d:%02d\n"
	.size	.L.str.5, 47

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%%DocumentData: Clean7Bit\n"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%%%%LanguageLevel: %d\n"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%%Extensions: CMYK\n"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%% %s\n"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%%BeginResource: procset "
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	" %5.3lf %d\n/"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" 80 dict dup begin\n"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%%%%Trailer\n%%%%Pages: %ld\n"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%%EOF\n"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%%%%Page: %ld %ld\n"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%%%%PageBoundingBox: 0 0 %ld %ld\n"
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%%BeginPageSetup\n"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" begin\n"
	.size	.L.str.18, 8

	.type	psw_write_page_header.sizes,@object # @psw_write_page_header.sizes
	.section	.rodata,"a",@progbits
	.align	16
psw_write_page_header.sizes:
	.quad	.L.str.19
	.long	792                     # 0x318
	.long	1224                    # 0x4c8
	.quad	.L.str.20
	.long	842                     # 0x34a
	.long	1191                    # 0x4a7
	.quad	.L.str.21
	.long	595                     # 0x253
	.long	842                     # 0x34a
	.quad	.L.str.22
	.long	501                     # 0x1f5
	.long	709                     # 0x2c5
	.quad	.L.str.23
	.long	1224                    # 0x4c8
	.long	792                     # 0x318
	.quad	.L.str.24
	.long	612                     # 0x264
	.long	1008                    # 0x3f0
	.quad	.L.str.25
	.long	612                     # 0x264
	.long	792                     # 0x318
	.quad	.L.str.26
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	psw_write_page_header.sizes, 128

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"/11x17"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"/a3"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/a4"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/b5"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/ledger"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/legal"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/letter"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"null"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%d %d "
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s setpagesize\n"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/pagesave save store %d dict begin\n"
	.size	.L.str.29, 36

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%g %g scale\n"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%%EndPageSetup\ngsave mark\n"
	.size	.L.str.31, 27

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"cleartomark end end pagesave restore\n"
	.size	.L.str.32, 38

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"userdict /#copies %d put\n"
	.size	.L.str.33, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	" %s\n%%%%PageTrailer\n"
	.size	.L.str.34, 21

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"showpage"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"copypage"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%!PS-Adobe-3.0 EPSF-3.0"
	.size	.L.str.37, 24

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%!PS-Adobe-3.0"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%%Pages: (atend)"
	.size	.L.str.39, 17

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%%%%BoundingBox: %d %d %d %d\n"
	.size	.L.str.40, 30

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%%%%HiResBoundingBox: %f %f %f %f\n"
	.size	.L.str.41, 35

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%%EndComments"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%%BeginProlog"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"% This copyright applies to everything between here and the %%EndProlog:"
	.size	.L.str.44, 73

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"/PageSize 2 array def/setpagesize{ PageSize aload pop 3 index eq exch"
	.size	.L.str.45, 70

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"4 index eq and{ pop pop pop}{ PageSize dup  1"
	.size	.L.str.46, 46

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"5 -1 roll put 0 4 -1 roll put dup null eq {false} {dup where} ifelse{ exch get exec}"
	.size	.L.str.47, 85

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"{ pop/setpagedevice where"
	.size	.L.str.48, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"{ pop 1 dict dup /PageSize PageSize put setpagedevice}"
	.size	.L.str.49, 55

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"{ /setpage where{ pop PageSize aload pop pageparams 3 {exch pop} repeat"
	.size	.L.str.50, 72

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"setpage}if}ifelse}ifelse}ifelse} bind def"
	.size	.L.str.51, 42

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"end def"
	.size	.L.str.52, 8

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%%EndResource"
	.size	.L.str.53, 14

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"/pagesave null def"
	.size	.L.str.54, 19

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%%EndProlog"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"GS_%s"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"_%d_%d_%d"
	.size	.L.str.57, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
