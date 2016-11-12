	.text
	.file	"gdevpxut.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	px_write_file_header
	.align	16, 0x90
	.type	px_write_file_header,@function
px_write_file_header:                   # @px_write_file_header
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
	movl	$.L.str, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	cmpl	$1, 100(%r14)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$.L.str.1, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.1, %esi
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movl	$.L.str.2, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.2, %esi
.LBB0_3:                                # %if.end
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.3, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rax
	cmpl	$1199, %eax             # imm = 0x4AF
	jg	.LBB0_7
# BB#4:                                 # %if.end
	cmpl	$150, %eax
	jne	.LBB0_5
# BB#10:                                # %if.then.12
	movl	$.L.str.4, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.4, %esi
	jmp	.LBB0_13
.LBB0_7:                                # %if.end
	cmpl	$1200, %eax             # imm = 0x4B0
	jne	.LBB0_8
# BB#11:                                # %if.then.34
	movl	$.L.str.7, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.7, %esi
	jmp	.LBB0_13
.LBB0_5:                                # %if.end
	cmpl	$300, %eax              # imm = 0x12C
	jne	.LBB0_12
# BB#6:                                 # %if.then.23
	movl	$.L.str.5, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.5, %esi
	jmp	.LBB0_13
.LBB0_8:                                # %if.end
	cmpl	$2400, %eax             # imm = 0x960
	jne	.LBB0_12
# BB#9:                                 # %if.then.45
	movl	$.L.str.8, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.8, %esi
	jmp	.LBB0_13
.LBB0_12:                               # %if.else.48
	movl	$.L.str.6, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.6, %esi
.LBB0_13:                               # %if.end.54
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rcx
	cmpl	%ecx, %eax
	je	.LBB0_25
# BB#14:                                # %if.then.67
	movl	$.L.str.10, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movss	888(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rax
	cmpl	$1199, %eax             # imm = 0x4AF
	jg	.LBB0_18
# BB#15:                                # %if.then.67
	cmpl	$150, %eax
	jne	.LBB0_16
# BB#21:                                # %if.then.77
	movl	$.L.str.4, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.4, %esi
	jmp	.LBB0_24
.LBB0_18:                               # %if.then.67
	cmpl	$1200, %eax             # imm = 0x4B0
	jne	.LBB0_19
# BB#22:                                # %if.then.99
	movl	$.L.str.7, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.7, %esi
	jmp	.LBB0_24
.LBB0_16:                               # %if.then.67
	cmpl	$300, %eax              # imm = 0x12C
	jne	.LBB0_23
# BB#17:                                # %if.then.88
	movl	$.L.str.5, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.5, %esi
	jmp	.LBB0_24
.LBB0_19:                               # %if.then.67
	cmpl	$2400, %eax             # imm = 0x960
	jne	.LBB0_23
# BB#20:                                # %if.then.110
	movl	$.L.str.8, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.8, %esi
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.113
	movl	$.L.str.6, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.6, %esi
.LBB0_24:                               # %if.end.120
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB0_25:                               # %if.end.120
	movl	$.L.str.9, %edi
	callq	strlen
	leal	2(%rax), %edx
	leaq	4(%rsp), %rcx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	sputs
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rsi
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rdx
	movq	%rbx, %rdi
	callq	px_put_usp
	leaq	4(%rsp), %rcx
	movl	$px_write_file_header.stream_header, %esi
	movl	$20, %edx
	movq	%rbx, %rdi
	callq	sputs
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	px_write_file_header, .Lfunc_end0-px_write_file_header
	.cfi_endproc

	.globl	px_put_bytes
	.align	16, 0x90
	.type	px_put_bytes,@function
px_put_bytes:                           # @px_put_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 16
	leaq	4(%rsp), %rcx
	callq	sputs
	popq	%rax
	retq
.Lfunc_end1:
	.size	px_put_bytes, .Lfunc_end1-px_put_bytes
	.cfi_endproc

	.globl	px_put_usp
	.align	16, 0x90
	.type	px_put_usp,@function
px_put_usp:                             # @px_put_usp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$209, %esi
	callq	spputc
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB2_2
# BB#1:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB2_3:                                # %cond.end.i
	movl	%ebp, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%ebp, %ebp
	cmovnsl	%ebp, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB2_5
# BB#4:                                 # %cond.true.20.i
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.29.i
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	callq	spputc
.LBB2_6:                                # %px_put_s.exit
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB2_8
# BB#7:                                 # %cond.true.i.6
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%r14b, 1(%rax)
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false.i.9
	movzbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB2_9:                                # %cond.end.i.14
	movl	%r14d, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%r14d, %r14d
	cmovnsl	%r14d, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB2_11
# BB#10:                                # %px_put_s.exit23
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB2_11:                               # %cond.false.29.i.22
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end2:
	.size	px_put_usp, .Lfunc_end2-px_put_usp
	.cfi_endproc

	.globl	px_write_page_header
	.align	16, 0x90
	.type	px_write_page_header,@function
px_write_page_header:                   # @px_write_page_header
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	px_write_page_header, .Lfunc_end3-px_write_page_header
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4587366580439587226     # double 0.050000000000000003
	.text
	.globl	px_write_select_media
	.align	16, 0x90
	.type	px_write_select_media,@function
px_write_select_media:                  # @px_write_select_media
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 112
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	movl	%r8d, %ebx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r14
	movl	112(%rsp), %ebp
	cvtsi2ssl	832(%rsi), %xmm0
	divss	884(%rsi), %xmm0
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	836(%rsi), %xmm0
	divss	888(%rsi), %xmm0
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	movl	$43, %r12d
	movl	$px_write_select_media.media_sizes+1028, %r13d
	.align	16, 0x90
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	subss	52(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movss	(%r13), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_6
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movaps	%xmm2, %xmm0
	subss	44(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	movss	%xmm2, 32(%rsp)         # 4-byte Spill
	callq	fabs
	movss	32(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_6
# BB#3:                                 # %land.lhs.true.19
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%r13), %r15d
	cmpl	$22, %r15d
	jb	.LBB4_4
.LBB4_6:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	subss	52(%rsp), %xmm2         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	callq	fabs
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_9
# BB#7:                                 # %land.lhs.true.35
                                        #   in Loop: Header=BB4_1 Depth=1
	movss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	subss	44(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_9
# BB#8:                                 # %land.lhs.true.44
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%r13), %r15d
	movb	$1, %al
	cmpl	$22, %r15d
	jb	.LBB4_5
.LBB4_9:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%r12
	addq	$-24, %r13
	cmpq	$1, %r12
	jg	.LBB4_1
# BB#10:                                # %if.else.57
	movl	%ebp, %r13d
	movl	%ebx, 48(%rsp)          # 4-byte Spill
	xorl	%esi, %esi
	movl	$40, %edx
	movq	%r14, %rdi
	callq	px_put_uba
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	44(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movl	$47, %esi
	movq	%r14, %rdi
	callq	px_put_rpa
	xorl	%esi, %esi
	movl	$48, %edx
	movq	%r14, %rdi
	callq	px_put_uba
	movl	$96, %r15d
	jmp	.LBB4_11
.LBB4_4:
	xorl	%eax, %eax
.LBB4_5:                                # %if.then.55
	movl	%ebp, %r13d
	movl	%ebx, 48(%rsp)          # 4-byte Spill
	movzbl	%al, %esi
	movl	$40, %edx
	movq	%r14, %rdi
	callq	px_put_uba
	movzbl	%r15b, %esi
	movl	$37, %edx
	movq	%r14, %rdi
	callq	px_put_uba
.LBB4_11:                               # %if.end.60
	movl	28(%rsp), %ebp          # 4-byte Reload
	movl	120(%rsp), %r12d
	movq	16(%rsp), %rax          # 8-byte Reload
	movb	$1, %bl
	testq	%rax, %rax
	je	.LBB4_13
# BB#12:                                # %if.then.63
	movb	(%rax), %bl
.LBB4_13:                               # %if.end.64
	testl	%r12d, %r12d
	je	.LBB4_15
# BB#14:                                # %if.end.64
	movzbl	%bl, %eax
	cmpl	$1, %eax
	je	.LBB4_16
.LBB4_15:                               # %if.then.69
	movzbl	%bl, %esi
	movl	$38, %edx
	movq	%r14, %rdi
	callq	px_put_uba
.LBB4_16:                               # %if.end.70
	testl	%r12d, %r12d
	je	.LBB4_20
# BB#17:                                # %if.then.72
	movzbl	%bl, %eax
	cmpl	$1, %eax
	je	.LBB4_19
# BB#18:                                # %lor.lhs.false.76
	movq	128(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB4_20
.LBB4_19:                               # %if.then.79
	movq	128(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	$39, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	px_put_ubaa
.LBB4_20:                               # %do.end
	testl	%ebp, %ebp
	je	.LBB4_28
# BB#21:                                # %if.then.85
	testl	%r13d, %r13d
	je	.LBB4_23
# BB#22:                                # %if.then.87
	xorl	%esi, %esi
	jmp	.LBB4_24
.LBB4_28:                               # %if.else.94
	xorl	%esi, %esi
	movl	$52, %edx
	jmp	.LBB4_29
.LBB4_23:                               # %if.else.88
	movl	$1, %esi
.LBB4_24:                               # %if.end.89
	movl	$53, %edx
	movq	%r14, %rdi
	callq	px_put_uba
	movl	48(%rsp), %r12d         # 4-byte Reload
	testb	$1, %r12b
	jne	.LBB4_25
# BB#27:                                # %if.else.92
	movl	$1, %esi
	movl	$54, %edx
	jmp	.LBB4_29
.LBB4_25:                               # %if.then.91
	xorl	%esi, %esi
	movl	$54, %edx
.LBB4_29:                               # %if.end.95
	movq	%r14, %rdi
	callq	px_put_uba
	movq	8(%rsp), %rax           # 8-byte Reload
	testq	%rax, %rax
	je	.LBB4_31
# BB#30:                                # %if.then.97
	movl	%r15d, (%rax)
.LBB4_31:                               # %if.end.98
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	px_write_select_media, .Lfunc_end4-px_write_select_media
	.cfi_endproc

	.globl	px_put_uba
	.align	16, 0x90
	.type	px_put_uba,@function
px_put_uba:                             # @px_put_uba
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 32
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB5_2
# BB#1:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-64, 1(%rax)
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false.i
	movl	$192, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB5_3:                                # %cond.end.i
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB5_5
# BB#4:                                 # %cond.true.16.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false.24.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB5_6:                                # %px_put_ub.exit
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB5_8
# BB#7:                                 # %cond.true.i.4
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-8, 1(%rax)
	jmp	.LBB5_9
.LBB5_8:                                # %cond.false.i.6
	movl	$248, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB5_9:                                # %cond.end.i.8
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB5_11
# BB#10:                                # %px_put_a.exit
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%r14b, 1(%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_11:                               # %cond.false.24.i.11
	movzbl	%r14b, %esi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end5:
	.size	px_put_uba, .Lfunc_end5-px_put_uba
	.cfi_endproc

	.globl	px_put_rpa
	.align	16, 0x90
	.type	px_put_rpa,@function
px_put_rpa:                             # @px_put_rpa
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 48
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movl	$213, %esi
	callq	spputc
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	px_put_r
	movq	%rbx, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	px_put_r
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB6_2
# BB#1:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-8, 1(%rax)
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false.i
	movl	$248, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB6_3:                                # %cond.end.i
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB6_5
# BB#4:                                 # %px_put_a.exit
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB6_5:                                # %cond.false.24.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end6:
	.size	px_put_rpa, .Lfunc_end6-px_put_rpa
	.cfi_endproc

	.globl	px_put_ubaa
	.align	16, 0x90
	.type	px_put_ubaa,@function
px_put_ubaa:                            # @px_put_ubaa
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
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 48
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$200, %esi
	callq	spputc
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	px_put_us
	leaq	4(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB7_2
# BB#1:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-8, 1(%rax)
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false.i
	movl	$248, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB7_3:                                # %cond.end.i
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB7_5
# BB#4:                                 # %cond.true.16.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%r14b, 1(%rax)
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false.24.i
	movzbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB7_6:                                # %px_put_a.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	px_put_ubaa, .Lfunc_end7-px_put_ubaa
	.cfi_endproc

	.globl	px_write_file_trailer
	.align	16, 0x90
	.type	px_write_file_trailer,@function
px_write_file_trailer:                  # @px_write_file_trailer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movl	$px_write_file_trailer.file_trailer, %edi
	movl	$1, %esi
	movl	$11, %edx
	movq	%rax, %rcx
	callq	fwrite
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end8:
	.size	px_write_file_trailer, .Lfunc_end8-px_write_file_trailer
	.cfi_endproc

	.globl	px_put_a
	.align	16, 0x90
	.type	px_put_a,@function
px_put_a:                               # @px_put_a
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB9_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-8, 1(%rax)
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movl	$248, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB9_3:                                # %cond.end
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB9_5
# BB#4:                                 # %cond.end.27
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB9_5:                                # %cond.false.24
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end9:
	.size	px_put_a, .Lfunc_end9-px_put_a
	.cfi_endproc

	.globl	px_put_ac
	.align	16, 0x90
	.type	px_put_ac,@function
px_put_ac:                              # @px_put_ac
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 32
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB10_2
# BB#1:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-8, 1(%rax)
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false.i
	movl	$248, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB10_3:                               # %cond.end.i
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB10_5
# BB#4:                                 # %cond.true.16.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false.24.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB10_6:                               # %px_put_a.exit
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB10_8
# BB#7:                                 # %cond.end
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%r14b, 1(%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_8:                               # %cond.false
	movzbl	%r14b, %esi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end10:
	.size	px_put_ac, .Lfunc_end10-px_put_ac
	.cfi_endproc

	.globl	px_put_ub
	.align	16, 0x90
	.type	px_put_ub,@function
px_put_ub:                              # @px_put_ub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB11_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-64, 1(%rax)
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movl	$192, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB11_3:                               # %cond.end
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB11_5
# BB#4:                                 # %cond.end.26
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB11_5:                               # %cond.false.24
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end11:
	.size	px_put_ub, .Lfunc_end11-px_put_ub
	.cfi_endproc

	.globl	px_put_s
	.align	16, 0x90
	.type	px_put_s,@function
px_put_s:                               # @px_put_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB12_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB12_3:                               # %cond.end
	movl	%ebp, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%ebp, %ebp
	cmovnsl	%ebp, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB12_5
# BB#4:                                 # %cond.end.33
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB12_5:                               # %cond.false.29
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end12:
	.size	px_put_s, .Lfunc_end12-px_put_s
	.cfi_endproc

	.globl	px_put_us
	.align	16, 0x90
	.type	px_put_us,@function
px_put_us:                              # @px_put_us
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 32
.Ltmp70:
	.cfi_offset %rbx, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB13_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-63, 1(%rax)
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movl	$193, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB13_3:                               # %cond.end
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB13_5
# BB#4:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB13_6:                               # %cond.end.i
	movl	%ebp, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%ebp, %ebp
	cmovnsl	%ebp, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB13_8
# BB#7:                                 # %px_put_s.exit
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB13_8:                               # %cond.false.29.i
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end13:
	.size	px_put_us, .Lfunc_end13-px_put_us
	.cfi_endproc

	.globl	px_put_usa
	.align	16, 0x90
	.type	px_put_usa,@function
px_put_usa:                             # @px_put_usa
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	callq	px_put_us
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB14_2
# BB#1:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-8, 1(%rax)
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false.i
	movl	$248, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB14_3:                               # %cond.end.i
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB14_5
# BB#4:                                 # %px_put_a.exit
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB14_5:                               # %cond.false.24.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end14:
	.size	px_put_usa, .Lfunc_end14-px_put_usa
	.cfi_endproc

	.globl	px_put_u
	.align	16, 0x90
	.type	px_put_u,@function
px_put_u:                               # @px_put_u
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp79:
	.cfi_def_cfa_offset 32
.Ltmp80:
	.cfi_offset %rbx, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$255, %ebp
	ja	.LBB15_6
# BB#1:                                 # %if.then
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB15_3
# BB#2:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-64, 1(%rax)
	jmp	.LBB15_4
.LBB15_6:                               # %if.else
	movq	%rbx, %rdi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	px_put_us               # TAILCALL
.LBB15_3:                               # %cond.false.i
	movl	$192, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB15_4:                               # %cond.end.i
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB15_5
# BB#7:                                 # %if.end
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB15_5:                               # %cond.false.24.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end15:
	.size	px_put_u, .Lfunc_end15-px_put_u
	.cfi_endproc

	.globl	px_put_usq_fixed
	.align	16, 0x90
	.type	px_put_usq_fixed,@function
px_put_usq_fixed:                       # @px_put_usq_fixed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 48
.Ltmp87:
	.cfi_offset %rbx, -48
.Ltmp88:
	.cfi_offset %r12, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$225, %esi
	callq	spputc
	sarl	$8, %ebp
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB16_2
# BB#1:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB16_3:                               # %cond.end.i
	movl	%ebp, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%ebp, %ebp
	cmovnsl	%ebp, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB16_5
# BB#4:                                 # %cond.true.20.i
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	jmp	.LBB16_6
.LBB16_5:                               # %cond.false.29.i
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	callq	spputc
.LBB16_6:                               # %px_put_s.exit
	sarl	$8, %r12d
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB16_8
# BB#7:                                 # %cond.true.i.8
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%r12b, 1(%rax)
	jmp	.LBB16_9
.LBB16_8:                               # %cond.false.i.11
	movzbl	%r12b, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB16_9:                               # %cond.end.i.16
	movl	%r12d, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%r12d, %r12d
	cmovnsl	%r12d, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB16_11
# BB#10:                                # %cond.true.20.i.20
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	jmp	.LBB16_12
.LBB16_11:                              # %cond.false.29.i.24
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	callq	spputc
.LBB16_12:                              # %px_put_s.exit25
	sarl	$8, %r15d
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB16_14
# BB#13:                                # %cond.true.i.29
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%r15b, 1(%rax)
	jmp	.LBB16_15
.LBB16_14:                              # %cond.false.i.32
	movzbl	%r15b, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB16_15:                              # %cond.end.i.37
	movl	%r15d, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%r15d, %r15d
	cmovnsl	%r15d, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB16_17
# BB#16:                                # %cond.true.20.i.41
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	jmp	.LBB16_18
.LBB16_17:                              # %cond.false.29.i.45
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	callq	spputc
.LBB16_18:                              # %px_put_s.exit46
	sarl	$8, %r14d
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB16_20
# BB#19:                                # %cond.true.i.50
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%r14b, 1(%rax)
	jmp	.LBB16_21
.LBB16_20:                              # %cond.false.i.53
	movzbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB16_21:                              # %cond.end.i.58
	movl	%r14d, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%r14d, %r14d
	cmovnsl	%r14d, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB16_23
# BB#22:                                # %px_put_s.exit67
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_23:                              # %cond.false.29.i.66
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end16:
	.size	px_put_usq_fixed, .Lfunc_end16-px_put_usq_fixed
	.cfi_endproc

	.globl	px_put_ss
	.align	16, 0x90
	.type	px_put_ss,@function
px_put_ss:                              # @px_put_ss
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp94:
	.cfi_def_cfa_offset 32
.Ltmp95:
	.cfi_offset %rbx, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB17_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-61, 1(%rax)
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	movl	$195, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB17_3:                               # %cond.end
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB17_5
# BB#4:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB17_6
.LBB17_5:                               # %cond.false.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB17_6:                               # %cond.end.i
	movl	%ebp, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%ebp, %ebp
	cmovnsl	%ebp, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB17_8
# BB#7:                                 # %px_put_s.exit
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB17_8:                               # %cond.false.29.i
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end17:
	.size	px_put_ss, .Lfunc_end17-px_put_ss
	.cfi_endproc

	.globl	px_put_ssp
	.align	16, 0x90
	.type	px_put_ssp,@function
px_put_ssp:                             # @px_put_ssp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 32
.Ltmp100:
	.cfi_offset %rbx, -32
.Ltmp101:
	.cfi_offset %r14, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB18_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-45, 1(%rax)
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movl	$211, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB18_3:                               # %cond.end
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB18_5
# BB#4:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%bpl, 1(%rax)
	jmp	.LBB18_6
.LBB18_5:                               # %cond.false.i
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB18_6:                               # %cond.end.i
	movl	%ebp, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%ebp, %ebp
	cmovnsl	%ebp, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB18_8
# BB#7:                                 # %cond.true.20.i
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false.29.i
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	callq	spputc
.LBB18_9:                               # %px_put_s.exit
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB18_11
# BB#10:                                # %cond.true.i.9
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%r14b, 1(%rax)
	jmp	.LBB18_12
.LBB18_11:                              # %cond.false.i.12
	movzbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB18_12:                              # %cond.end.i.17
	movl	%r14d, %eax
	orl	$32768, %eax            # imm = 0x8000
	testl	%r14d, %r14d
	cmovnsl	%r14d, %eax
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB18_14
# BB#13:                                # %px_put_s.exit26
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%ah, 1(%rcx)  # NOREX
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB18_14:                              # %cond.false.29.i.25
	movzbl	%ah, %esi  # NOREX
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end18:
	.size	px_put_ssp, .Lfunc_end18-px_put_ssp
	.cfi_endproc

	.globl	px_put_l
	.align	16, 0x90
	.type	px_put_l,@function
px_put_l:                               # @px_put_l
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp105:
	.cfi_def_cfa_offset 32
.Ltmp106:
	.cfi_offset %rbx, -24
.Ltmp107:
	.cfi_offset %r14, -16
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB19_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	spputc
	movq	%r14, %rdx
.LBB19_3:                               # %cond.end
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB19_5
# BB#4:                                 # %cond.true.18
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false.27
	movzbl	%dh, %esi  # NOREX
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	spputc
	movq	%r14, %rdx
.LBB19_6:                               # %cond.end.31
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB19_8
# BB#7:                                 # %cond.true.41
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movb	%cl, 1(%rax)
	jmp	.LBB19_9
.LBB19_8:                               # %cond.false.51
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	spputc
	movq	%r14, %rdx
.LBB19_9:                               # %cond.end.55
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB19_11
# BB#10:                                # %cond.end.79
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	shrq	$24, %rdx
	movb	%dl, 1(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB19_11:                              # %cond.false.75
	shrl	$24, %edx
	movq	%rbx, %rdi
	movl	%edx, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	spputc                  # TAILCALL
.Lfunc_end19:
	.size	px_put_l, .Lfunc_end19-px_put_l
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4715268809856909312     # double 16777216
	.text
	.globl	px_put_r
	.align	16, 0x90
	.type	px_put_r,@function
px_put_r:                               # @px_put_r
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp110:
	.cfi_def_cfa_offset 32
.Ltmp111:
	.cfi_offset %rbx, -24
.Ltmp112:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	4(%rsp), %rdi
	callq	frexp
	movl	4(%rsp), %eax
	cmpl	$-127, %eax
	jg	.LBB20_2
# BB#1:                                 # %if.end.thread
	movl	$0, 4(%rsp)
	xorl	%ebx, %ebx
	jmp	.LBB20_4
.LBB20_2:                               # %if.end
	mulsd	.LCPI20_0(%rip), %xmm0
	cvttsd2si	%xmm0, %rbx
	testq	%rbx, %rbx
	jns	.LBB20_4
# BB#3:                                 # %if.then.4
	subl	$-128, %eax
	movl	%eax, 4(%rsp)
	negq	%rbx
.LBB20_4:                               # %if.end.5
	movzbl	%bl, %esi
	movq	%r14, %rdi
	callq	spputc
	movzbl	%bh, %esi  # NOREX
	movq	%r14, %rdi
	callq	spputc
	movl	4(%rsp), %eax
	shll	$7, %eax
	shrl	$16, %ebx
	andl	$127, %ebx
	orl	%eax, %ebx
	movzbl	%bl, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	4(%rsp), %eax
	addl	$126, %eax
	shrl	%eax
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end20:
	.size	px_put_r, .Lfunc_end20-px_put_r
	.cfi_endproc

	.globl	px_put_rl
	.align	16, 0x90
	.type	px_put_rl,@function
px_put_rl:                              # @px_put_rl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp114:
	.cfi_def_cfa_offset 32
.Ltmp115:
	.cfi_offset %rbx, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movl	$197, %esi
	callq	spputc
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbx
	jmp	px_put_r                # TAILCALL
.Lfunc_end21:
	.size	px_put_rl, .Lfunc_end21-px_put_rl
	.cfi_endproc

	.globl	px_put_rp
	.align	16, 0x90
	.type	px_put_rp,@function
px_put_rp:                              # @px_put_rp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 32
.Ltmp118:
	.cfi_offset %rbx, -16
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movl	$213, %esi
	callq	spputc
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	px_put_r
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbx
	jmp	px_put_r                # TAILCALL
.Lfunc_end22:
	.size	px_put_rp, .Lfunc_end22-px_put_rp
	.cfi_endproc

	.globl	px_put_data_length
	.align	16, 0x90
	.type	px_put_data_length,@function
px_put_data_length:                     # @px_put_data_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp121:
	.cfi_def_cfa_offset 32
.Ltmp122:
	.cfi_offset %rbx, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$256, %ebp              # imm = 0x100
	jb	.LBB23_2
# BB#1:                                 # %if.then
	movl	$250, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	%ebp, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	px_put_l                # TAILCALL
.LBB23_2:                               # %if.else
	movl	$251, %esi
	movq	%rbx, %rdi
	callq	spputc
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end23:
	.size	px_put_data_length, .Lfunc_end23-px_put_data_length
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033%-12345X@PJL SET RENDERMODE="
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GRAYSCALE"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"COLOR"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n@PJL SET RESOLUTION="
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"150"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"300"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"600"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1200"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"2400"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata,"a",@progbits
.L.str.9:
	.asciz	"\n@PJL ENTER LANGUAGE = PCLXL\n) HP-PCL XL;1;1;Comment Copyright Artifex Sofware, Inc. 2005\000\n"
	.size	.L.str.9, 92

	.type	px_write_file_header.stream_header,@object # @px_write_file_header.stream_header
	.align	16
px_write_file_header.stream_header:
	.ascii	"\370\211\300\000\370\206\300\003\370\217A\300\000\370\210\300\001\370\202H"
	.size	px_write_file_header.stream_header, 20

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"x"
	.size	.L.str.10, 2

	.type	px_write_select_media.media_sizes,@object # @px_write_select_media.media_sizes
	.section	.rodata,"a",@progbits
	.align	16
px_write_select_media.media_sizes:
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str.11
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.long	1091043328              # float 8.5
	.long	1093664768              # float 11
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.13
	.long	1091043328              # float 8.5
	.long	1096810496              # float 14
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.14
	.long	1090798660              # float 8.26666641
	.long	1094388285              # float 11.6899996
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.long	1088946176              # float 7.25
	.long	1093140480              # float 10.5
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.16
	.long	1093664768              # float 11
	.long	1099431936              # float 17
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.17
	.long	1094388285              # float 11.6899996
	.long	1099187268              # float 16.5333328
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.18
	.long	1082389081              # float 4.12333345
	.long	1092091904              # float 9.5
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.19
	.long	1081599153              # float 3.87333322
	.long	1089470464              # float 7.5
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.20
	.long	1087114663              # float 6.37666655
	.long	1091581597              # float 9.01333332
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.21
	.long	1082822492              # float 4.32999992
	.long	1091211100              # float 8.65999985
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.22
	.long	1092738526              # float 10.1166668
	.long	1097156526              # float 14.3299999
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.23
	.long	1092738526              # float 10.1166668
	.long	1097156526              # float 14.3299999
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.24
	.long	1088771413              # float 7.16666651
	.long	1092738526              # float 10.1166668
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.25
	.long	1088771413              # float 7.16666651
	.long	1092738526              # float 10.1166668
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.26
	.long	1088268097              # float 6.92666674
	.long	1092448420              # float 9.84000015
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.27
	.long	1088771413              # float 7.16666651
	.long	1092738526              # float 10.1166668
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.28
	.long	1081864793              # float 3.93666673
	.long	1085961230              # float 5.82666683
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.29
	.long	1090253401              # float 7.87333345
	.long	1085961230              # float 5.82666683
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.30
	.long	1085961230              # float 5.82666683
	.long	1090798660              # float 8.26666641
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.31
	.long	1082410052              # float 4.13333321
	.long	1085961230              # float 5.82666683
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.32
	.long	1084311470              # float 5.03999996
	.long	1088771413              # float 7.16666651
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.33
	.long	1093154461              # float 10.5133333
	.long	1098229569              # float 15.3533335
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.34
	.long	1089840961              # float 7.67666674
	.long	1093154461              # float 10.5133333
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.35
	.long	1091046823              # float 8.50333309
	.long	1095754929              # float 12.9933329
	.long	201                     # 0xc9
	.zero	4
	.quad	.L.str.36
	.long	1084311470              # float 5.03999996
	.long	1088771413              # float 7.16666651
	.long	202                     # 0xca
	.zero	4
	.quad	.L.str.37
	.long	1083144055              # float 4.48333311
	.long	1087107673              # float 6.37333345
	.long	203                     # 0xcb
	.zero	4
	.quad	.L.str.38
	.long	1093154461              # float 10.5133333
	.long	1098236559              # float 15.3599997
	.long	204                     # 0xcc
	.zero	4
	.quad	.L.str.39
	.long	1089847951              # float 7.67999983
	.long	1093154461              # float 10.5133333
	.long	205                     # 0xcd
	.zero	4
	.quad	.L.str.40
	.long	1094713344              # float 12
	.long	1099956224              # float 18
	.long	212                     # 0xd4
	.zero	4
	.quad	.L.str.41
	.long	1095761920              # float 13
	.long	1100581874              # float 19.1933327
	.long	213                     # 0xd5
	.zero	4
	.quad	.L.str.42
	.long	1095761920              # float 13
	.long	1100480512              # float 19
	.long	214                     # 0xd6
	.zero	4
	.quad	.L.str.43
	.long	1095338994              # float 12.5966663
	.long	1100581874              # float 19.1933327
	.long	215                     # 0xd7
	.zero	4
	.quad	.L.str.44
	.long	1095338994              # float 12.5966663
	.long	1100218368              # float 18.5
	.long	216                     # 0xd8
	.zero	4
	.quad	.L.str.45
	.long	1095761920              # float 13
	.long	1099956224              # float 18
	.long	217                     # 0xd9
	.zero	4
	.quad	.L.str.46
	.long	1095338994              # float 12.5966663
	.long	1099809423              # float 17.7199993
	.long	218                     # 0xda
	.zero	4
	.quad	.L.str.47
	.long	1091420815              # float 8.85999965
	.long	1095338994              # float 12.5966663
	.long	219                     # 0xdb
	.zero	4
	.quad	.L.str.48
	.long	1091462758              # float 8.89999961
	.long	1094930050              # float 12.2066669
	.long	220                     # 0xdc
	.zero	4
	.quad	.L.str.49
	.long	1094930050              # float 12.2066669
	.long	1099438927              # float 17.0133343
	.long	221                     # 0xdd
	.zero	4
	.quad	.L.str.50
	.long	1090519040              # float 8
	.long	1092616192              # float 10
	.long	222                     # 0xde
	.zero	4
	.quad	.L.str.51
	.long	1093664768              # float 11
	.long	1096810496              # float 14
	.long	223                     # 0xdf
	.zero	4
	.quad	.L.str.52
	.long	1093664768              # float 11
	.long	1097859072              # float 15
	.long	224                     # 0xe0
	.zero	4
	.quad	.L.str.53
	.long	1092616192              # float 10
	.long	1096810496              # float 14
	.long	225                     # 0xe1
	.zero	4
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.size	px_write_select_media.media_sizes, 1056

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"defaultpaper"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"letter"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"legal"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"a4"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"executive"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ledger"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"a3"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"com10"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"monarch"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"c5"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"dl"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"jisb4"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"jis b4"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"jisb5"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"jis b5"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"b5"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"b5paper"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"jpost"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"jpostd"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"a5"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"a6"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"jisb6"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"jis8K"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"jis16K"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"jisexec"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"B6 (JIS)"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"C6"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"8Kai"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"16Kai"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"12x18"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"13x19.2"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"13x19"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"12.6x19.2"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"12.6x18.5"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"13x18"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"SRA3"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"SRA4"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"226x310"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"310x432"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"EngQuatro"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"11x14"
	.size	.L.str.51, 6

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"11x15"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"10x14"
	.size	.L.str.53, 6

	.type	px_write_file_trailer.file_trailer,@object # @px_write_file_trailer.file_trailer
	.section	.rodata,"a",@progbits
px_write_file_trailer.file_trailer:
	.ascii	"IB\033%-12345X"
	.size	px_write_file_trailer.file_trailer, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
