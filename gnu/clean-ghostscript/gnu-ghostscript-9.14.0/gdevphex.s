	.text
	.file	"gdevphex.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4634766966517661696     # double 72
.LCPI0_1:
	.quad	4654048002422341632     # double 1440
	.text
	.align	16, 0x90
	.type	photoex_print_page,@function
photoex_print_page:                     # @photoex_print_page
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
	subq	$184, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 240
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
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	cvttss2si	888(%rdi), %r14d
	cvttss2si	884(%rdi), %r13d
	cmpl	$360, %r14d             # imm = 0x168
	jne	.LBB0_2
# BB#1:                                 # %entry
	cmpl	$360, %r13d             # imm = 0x168
	je	.LBB0_4
.LBB0_2:                                # %lor.lhs.false
	cmpl	$720, %r13d             # imm = 0x2D0
	sete	%al
	cmpl	$1440, %r13d            # imm = 0x5A0
	sete	%cl
	movl	$-15, %ebx
	cmpl	$720, %r14d             # imm = 0x2D0
	jne	.LBB0_148
# BB#3:                                 # %lor.lhs.false
	orb	%cl, %al
	je	.LBB0_148
.LBB0_4:                                # %if.end
	xorl	%esi, %esi
	movq	%rdi, %rbx
	callq	gx_device_raster
	movq	%rbx, %rsi
	movl	%eax, %ebp
	shrl	$3, %ebp
	cmpl	$720, %r13d             # imm = 0x2D0
	sete	%al
	movzbl	%al, %edi
	incl	%edi
	cmpl	$360, %r13d             # imm = 0x168
	cvtsi2ssl	836(%rsi), %xmm1
	divss	888(%rsi), %xmm1
	movss	908(%rsi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI0_0(%rip), %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$4, %ecx
	cmovnel	%edi, %ecx
	movl	%ebp, %eax
	imull	%ecx, %eax
	leal	(%rax,%rdx), %eax
	cmpl	$16501, %eax            # imm = 0x4075
	movl	%ebp, %r15d
	jl	.LBB0_6
# BB#5:                                 # %if.then.37
	movl	$16500, %eax            # imm = 0x4074
	subl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r15d
	movl	$-15, %ebx
	testl	%r15d, %r15d
	jle	.LBB0_148
.LBB0_6:                                # %if.end.43
	movss	%xmm1, 160(%rsp)        # 4-byte Spill
	movl	%r14d, 168(%rsp)        # 4-byte Spill
	movl	%edi, 152(%rsp)         # 4-byte Spill
	movq	24(%rsi), %rax
	movq	%rsi, %r14
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$3673880, %edx          # imm = 0x380F18
	movl	$.L.str.9, %ecx
	callq	*88(%rdi)
	movl	$-25, %ebx
	testq	%rax, %rax
	je	.LBB0_148
# BB#7:                                 # %if.end.48
	movq	24(%r14), %rcx
	movq	200(%rcx), %rdi
	movl	$8, %edx
	movq	%rax, %r12
	movl	$.L.str.9, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%r12, %rcx
	movq	%rax, 40(%rcx)
	testq	%rax, %rax
	je	.LBB0_8
# BB#9:                                 # %if.end.63
	movss	160(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	movq	%r14, %r12
	movq	%r12, (%rcx)
	movl	168(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, 16(%rcx)
	movl	%r13d, 20(%rcx)
	movl	%r15d, 28(%rcx)
	movl	836(%r12), %eax
	movl	%eax, 32(%rcx)
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, 8(%rcx)
	movl	18492(%r12), %eax
	movl	%eax, 36(%rcx)
	movl	$27, %edi
	movq	%rbx, %rsi
	movq	%rcx, %r13
	callq	fputc
	movl	$64, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$64, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$71, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	cmpl	$360, %ebp              # imm = 0x168
	movl	$720, %r14d             # imm = 0x2D0
	cmovel	%ebp, %r14d
	movl	$3600, %eax             # imm = 0xE10
	xorl	%edx, %edx
	divl	%r14d
	movl	%eax, %r15d
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$85, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r15d, %edi
	movq	%rbx, %rsi
	callq	fputc
	cvtsi2ssl	836(%r12), %xmm0
	divss	888(%r12), %xmm0
	cvtsi2ssl	%r14d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ebp
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$67, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$2, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movss	912(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	920(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	160(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r14d, %xmm0
	mulsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %r14d
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ebp
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$99, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$4, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%r14b, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r14d, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movl	18508(%r12), %ebp
	testl	%ebp, %ebp
	movq	%r12, %r14
	movq	%r13, 88(%rsp)          # 8-byte Spill
	je	.LBB0_11
# BB#10:                                # %if.then.99
	movq	%r14, (%rsp)            # 8-byte Spill
	jmp	.LBB0_12
.LBB0_8:                                # %if.then.57
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.9, %edx
	movq	%rcx, %rsi
	callq	*24(%rdi)
	jmp	.LBB0_148
.LBB0_11:                               # %if.else.101
	movq	%r14, (%rsp)            # 8-byte Spill
	cmpl	$360, 168(%rsp)         # 4-byte Folded Reload
                                        # imm = 0x168
	movl	$3, %eax
	movl	152(%rsp), %ebp         # 4-byte Reload
	cmovel	%eax, %ebp
.LBB0_12:                               # %if.end.111
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$101, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$2, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$105, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$85, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	movq	(%r13), %rax
	movslq	18480(%rax), %rcx
	shlq	$5, %rcx
	movq	%r13, %rdi
	callq	*htable(%rcx)
	movl	%eax, 48(%r13)
	notl	%eax
	movl	%eax, 52(%r13)
	movl	$-1, 204(%r13)
	movl	20(%r13), %eax
	movl	%eax, 60(%r13)
	movl	32(%r13), %eax
	movl	%eax, 56(%r13)
	leaq	72(%r13), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	3657376(%r13), %rbx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	leaq	462504(%r13), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	462505(%r13), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$-1, %eax
	leaq	176(%rsp), %r14
	movl	$-1, %r15d
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_146:                              # %for.end.152.do.body_crit_edge.i
                                        #   in Loop: Header=BB0_13 Depth=1
	addl	68(%r13), %r12d
	movl	204(%r13), %eax
	leaq	176(%rsp), %r14
.LBB0_13:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #     Child Loop BB0_62 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_85 Depth 2
                                        #     Child Loop BB0_87 Depth 2
                                        #       Child Loop BB0_89 Depth 3
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_101 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_124 Depth 4
	cmpl	$-1, %eax
	jne	.LBB0_22
# BB#14:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, 204(%r13)
	movl	60(%r13), %eax
	cmpl	$1440, %eax             # imm = 0x5A0
	je	.LBB0_19
# BB#15:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$720, %eax              # imm = 0x2D0
	jne	.LBB0_16
# BB#18:                                # %sw.bb.2.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, 200(%r13)
	movabsq	$137438953503, %rax     # imm = 0x200000001F
	jmp	.LBB0_20
.LBB0_19:                               # %sw.bb.6.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, 200(%r13)
	movabsq	$137438953485, %rax     # imm = 0x200000000D
	jmp	.LBB0_20
.LBB0_16:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$360, %eax              # imm = 0x168
	jne	.LBB0_21
# BB#17:                                # %sw.bb.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, 200(%r13)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	.align	16, 0x90
.LBB0_20:                               # %vector.body
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%rax, 60(%r13)
.LBB0_21:                               # %vector.body
                                        #   in Loop: Header=BB0_13 Depth=1
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 72(%r13)
	movdqu	%xmm0, 88(%r13)
	movdqu	%xmm0, 104(%r13)
	movdqu	%xmm0, 120(%r13)
	movdqu	%xmm0, 136(%r13)
	movdqu	%xmm0, 152(%r13)
	movdqu	%xmm0, 168(%r13)
	movdqu	%xmm0, 184(%r13)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 212(%r13)
	movdqu	%xmm0, 228(%r13)
	movdqu	%xmm0, 244(%r13)
	movdqu	%xmm0, 260(%r13)
	movdqu	%xmm0, 276(%r13)
	movdqu	%xmm0, 292(%r13)
	movdqu	%xmm0, 308(%r13)
	movdqu	%xmm0, 324(%r13)
	movdqu	%xmm0, 340(%r13)
	movdqu	%xmm0, 356(%r13)
	movdqu	%xmm0, 372(%r13)
	movdqu	%xmm0, 388(%r13)
	movdqu	%xmm0, 404(%r13)
	movdqu	%xmm0, 420(%r13)
	movdqu	%xmm0, 436(%r13)
	movdqu	%xmm0, 452(%r13)
	movl	$0, 208(%r13)
.LBB0_22:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$1, 64(%r13)
	jne	.LBB0_24
# BB#23:                                # %if.then.2.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	204(%r13), %eax
	movl	%eax, 72(%r13)
	movl	$1, 68(%r13)
	incl	%eax
	movl	%eax, 204(%r13)
	cmpl	56(%r13), %eax
	sete	%al
.LBB0_68:                               # %ScheduleLines.exit.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movzbl	%al, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	jmp	.LBB0_84
	.align	16, 0x90
.LBB0_24:                               # %if.end.7.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	204(%r13), %eax
	movl	208(%r13), %ecx
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_25:                               # %for.body.i.i
                                        #   in Loop: Header=BB0_26 Depth=2
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	(%rax,%rcx), %eax
	andl	$-256, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movslq	%edx, %rax
	movb	$0, 212(%r13,%rax)
	incl	%ecx
	movl	204(%r13), %eax
.LBB0_26:                               # %for.body.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%eax, %ecx
	jl	.LBB0_25
# BB#27:                                # %for.end.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	%eax, 208(%r13)
	movl	60(%r13), %edx
	cmpl	$7, %eax
	jg	.LBB0_53
# BB#28:                                # %if.then.18.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$31, %edx
	jne	.LBB0_38
# BB#29:                                # %if.then.i.55.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cltq
	shlq	$7, %rax
	leaq	start_720(%rax), %rsi
	movl	$128, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_30:                               # %for.body.i.57.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	72(%r13,%rax,4), %ecx
	cmpl	$-1, %ecx
	je	.LBB0_32
# BB#31:                                # %if.then.7.i.i.i
                                        #   in Loop: Header=BB0_30 Depth=2
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-256, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movb	$1, 212(%r13,%rcx)
.LBB0_32:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB0_30 Depth=2
	movl	76(%r13,%rax,4), %ecx
	cmpl	$-1, %ecx
	je	.LBB0_34
# BB#33:                                # %if.then.7.i.i.i.1
                                        #   in Loop: Header=BB0_30 Depth=2
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-256, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movb	$1, 212(%r13,%rcx)
.LBB0_34:                               # %for.inc.i.i.i.1
                                        #   in Loop: Header=BB0_30 Depth=2
	addq	$2, %rax
	cmpq	$32, %rax
	jne	.LBB0_30
# BB#35:                                # %for.end.i.63.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	204(%r13), %eax
	cmpl	$7, %eax
	jne	.LBB0_37
# BB#36:                                # %if.then.15.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$24, 68(%r13)
	movl	$31, 204(%r13)
	jmp	.LBB0_83
	.align	16, 0x90
.LBB0_53:                               # %if.end.19.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	leal	256(%rax,%rdx), %ecx
	cmpl	56(%r13), %ecx
	jle	.LBB0_69
# BB#54:                                # %if.then.25.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$2, 68(%r13)
	jl	.LBB0_56
# BB#55:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, 200(%r13)
.LBB0_56:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$31, %edx
	jne	.LBB0_58
# BB#57:                                # %if.then.2.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, 200(%r13)
	movl	$1, 68(%r13)
	movl	$1, %ecx
	jmp	.LBB0_61
.LBB0_38:                               # %if.else.22.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, 200(%r13)
	cltq
	je	.LBB0_46
# BB#39:                                # %if.then.23.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	shlq	$7, %rax
	leaq	start_1440(%rax), %rsi
	movl	$128, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_40:                               # %for.body.33.i.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	72(%r13,%rax,4), %ecx
	cmpl	$-1, %ecx
	je	.LBB0_42
# BB#41:                                # %if.then.38.i.i.i
                                        #   in Loop: Header=BB0_40 Depth=2
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-256, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movb	$1, 212(%r13,%rcx)
.LBB0_42:                               # %for.inc.47.i.i.i
                                        #   in Loop: Header=BB0_40 Depth=2
	movl	76(%r13,%rax,4), %ecx
	cmpl	$-1, %ecx
	je	.LBB0_44
# BB#43:                                # %if.then.38.i.i.i.1
                                        #   in Loop: Header=BB0_40 Depth=2
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-256, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movb	$1, 212(%r13,%rcx)
.LBB0_44:                               # %for.inc.47.i.i.i.1
                                        #   in Loop: Header=BB0_40 Depth=2
	addq	$2, %rax
	cmpq	$32, %rax
	jne	.LBB0_40
# BB#45:                                # %for.end.49.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, 200(%r13)
	movl	$0, 68(%r13)
	jmp	.LBB0_83
.LBB0_69:                               # %if.end.33.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	xorl	%ecx, %ecx
	cmpl	$31, %edx
	movl	$0, %edx
	movl	$0, %esi
	jne	.LBB0_75
	.align	16, 0x90
.LBB0_70:                               # %for.body.i.i.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	leal	(%rdx,%rax), %edx
	andl	$-256, %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movslq	%esi, %rdx
	testb	$1, 212(%r13,%rdx)
	jne	.LBB0_71
# BB#72:                                # %if.else.i.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=2
	movl	%eax, 72(%r13,%rcx,4)
	orb	$1, 212(%r13,%rdx)
	jmp	.LBB0_73
	.align	16, 0x90
.LBB0_71:                               # %if.then.i.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=2
	movl	$-1, 72(%r13,%rcx,4)
.LBB0_73:                               # %for.inc.i.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=2
	incq	%rcx
	addl	$8, %eax
	cmpq	$32, %rcx
	jne	.LBB0_70
# BB#74:                                # %ScheduleBand.exit.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$31, 68(%r13)
	movl	204(%r13), %eax
	addl	$31, %eax
	jmp	.LBB0_82
	.align	16, 0x90
.LBB0_75:                               # %for.body.i.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%rax,%rcx), %r9d
	movl	%r9d, %edi
	sarl	$31, %edi
	shrl	$24, %edi
	leal	(%rdi,%r9), %r8d
	andl	$-256, %r8d
	leal	8(%rax,%rcx), %r11d
	movl	%r11d, %ebp
	sarl	$31, %ebp
	shrl	$24, %ebp
	leal	8(%rbp,%r9), %r10d
	movl	%r9d, %ebp
	subl	%r8d, %ebp
	movslq	%ebp, %rbp
	movzbl	212(%r13,%rbp), %ebp
	movl	%ebp, %edi
	andl	$1, %edi
	addl	%esi, %edi
	andl	$2, %ebp
	addl	%edx, %ebp
	andl	$-256, %r10d
	subl	%r10d, %r11d
	movslq	%r11d, %rdx
	movzbl	212(%r13,%rdx), %edx
	movl	%edx, %esi
	andl	$1, %esi
	addl	%edi, %esi
	andl	$2, %edx
	addl	%ebp, %edx
	addl	$16, %ecx
	cmpl	$256, %ecx              # imm = 0x100
	jne	.LBB0_75
# BB#76:                                # %for.end.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	sarl	%edx
	cmpl	%edx, %esi
	setg	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 200(%r13)
	incl	%ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_77:                               # %for.body.i.35.i.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	leal	(%rsi,%rax), %esi
	andl	$-256, %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movslq	%edi, %rsi
	movzbl	212(%r13,%rsi), %edi
	testl	%ecx, %edi
	je	.LBB0_79
# BB#78:                                # %if.then.i.36.i.i.i
                                        #   in Loop: Header=BB0_77 Depth=2
	movl	$-1, 72(%r13,%rdx,4)
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_79:                               # %if.else.i.40.i.i.i
                                        #   in Loop: Header=BB0_77 Depth=2
	movl	%eax, 72(%r13,%rdx,4)
	movzbl	212(%r13,%rsi), %edi
	orl	%ecx, %edi
	movb	%dil, 212(%r13,%rsi)
.LBB0_80:                               # %for.inc.i.44.i.i.i
                                        #   in Loop: Header=BB0_77 Depth=2
	incq	%rdx
	addl	$8, %eax
	cmpq	$32, %rdx
	jne	.LBB0_77
# BB#81:                                # %ScheduleBand.exit45.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$13, 68(%r13)
	movl	204(%r13), %eax
	addl	$13, %eax
	jmp	.LBB0_82
.LBB0_37:                               # %if.else.i.64.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, 68(%r13)
	incl	%eax
.LBB0_82:                               # %ScheduleMiddle.exit.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	%eax, 204(%r13)
	jmp	.LBB0_83
.LBB0_58:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, 200(%r13)
	je	.LBB0_60
# BB#59:                                # %if.then.6.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, 200(%r13)
	movl	$0, 68(%r13)
	movl	$1, %ecx
	jmp	.LBB0_61
.LBB0_46:                               # %if.else.52.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	shlq	$7, %rax
	leaq	start_1440+1024(%rax), %rsi
	movl	$128, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_47:                               # %for.body.62.i.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	72(%r13,%rax,4), %ecx
	cmpl	$-1, %ecx
	je	.LBB0_49
# BB#48:                                # %if.then.67.i.i.i
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-256, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	orb	$2, 212(%r13,%rcx)
.LBB0_49:                               # %for.inc.77.i.i.i
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	76(%r13,%rax,4), %ecx
	cmpl	$-1, %ecx
	je	.LBB0_51
# BB#50:                                # %if.then.67.i.i.i.1
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-256, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	orb	$2, 212(%r13,%rcx)
.LBB0_51:                               # %for.inc.77.i.i.i.1
                                        #   in Loop: Header=BB0_47 Depth=2
	addq	$2, %rax
	cmpq	$32, %rax
	jne	.LBB0_47
# BB#52:                                # %for.end.79.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	204(%r13), %eax
	leal	1(%rax), %ecx
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax,4), %eax
	movl	$13, %edx
	cmovel	%edx, %ecx
	movl	%eax, 68(%r13)
	movl	%ecx, 204(%r13)
	movl	$1, 200(%r13)
	.align	16, 0x90
.LBB0_83:                               # %ScheduleLines.exit.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
.LBB0_84:                               # %ScheduleLines.exit.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$35, %eax
	.align	16, 0x90
.LBB0_85:                               # %land.rhs.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	56(%r13,%rax,4), %ebp
	cmpl	$-1, %ebp
	jne	.LBB0_86
# BB#149:                               # %for.cond.i
                                        #   in Loop: Header=BB0_85 Depth=2
	movl	52(%r13,%rax,4), %ebp
	cmpl	$-1, %ebp
	jne	.LBB0_86
# BB#150:                               # %for.cond.i.1
                                        #   in Loop: Header=BB0_85 Depth=2
	movl	48(%r13,%rax,4), %ebp
	cmpl	$-1, %ebp
	jne	.LBB0_86
# BB#151:                               # %for.cond.i.2
                                        #   in Loop: Header=BB0_85 Depth=2
	movl	44(%r13,%rax,4), %ebp
	cmpl	$-1, %ebp
	jne	.LBB0_86
# BB#152:                               # %for.cond.i.3
                                        #   in Loop: Header=BB0_85 Depth=2
	addq	$-4, %rax
	cmpq	$3, %rax
	jg	.LBB0_85
	jmp	.LBB0_99
	.align	16, 0x90
.LBB0_86:                               # %while.cond.preheader.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	%r15d, %ebp
	jle	.LBB0_99
	.align	16, 0x90
.LBB0_87:                               # %while.body.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_89 Depth 3
	incl	%r15d
	movq	(%r13), %rdi
	movq	40(%r13), %rdx
	movl	%r15d, %esi
	movq	%r14, %rcx
	callq	gdev_prn_get_bits
	movl	28(%r13), %eax
	testl	%eax, %eax
	jle	.LBB0_91
# BB#88:                                # %for.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_87 Depth=2
	movq	176(%rsp), %rdx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_89:                               # %for.body.i.i.102.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_87 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, (%rdx,%rcx,8)
	jne	.LBB0_94
# BB#90:                                # %for.inc.i.i.105.i
                                        #   in Loop: Header=BB0_89 Depth=3
	incq	%rcx
	cmpl	%eax, %ecx
	jl	.LBB0_89
.LBB0_91:                               # %if.then.i.107.i
                                        #   in Loop: Header=BB0_87 Depth=2
	movl	%r15d, %eax
	subl	52(%r13), %eax
	cmpl	48(%r13), %eax
	jle	.LBB0_93
# BB#92:                                # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB0_87 Depth=2
	movl	%r15d, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	(%rax,%r15), %eax
	andl	$-256, %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	$1040, %rax, %rax       # imm = 0x410
	movl	$1032, 462496(%r13,%rax) # imm = 0x408
	movl	$0, 462500(%r13,%rax)
	movl	$1032, 2059936(%r13,%rax) # imm = 0x408
	movl	$0, 2059940(%r13,%rax)
	movl	$1032, 728736(%r13,%rax) # imm = 0x408
	movl	$0, 728740(%r13,%rax)
	movl	$1032, 2326176(%r13,%rax) # imm = 0x408
	movl	$0, 2326180(%r13,%rax)
	movl	$1032, 994976(%r13,%rax) # imm = 0x408
	movl	$0, 994980(%r13,%rax)
	movl	$1032, 2592416(%r13,%rax) # imm = 0x408
	movl	$0, 2592420(%r13,%rax)
	movl	$1032, 1261216(%r13,%rax) # imm = 0x408
	movl	$0, 1261220(%r13,%rax)
	movl	$1032, 2858656(%r13,%rax) # imm = 0x408
	movl	$0, 2858660(%r13,%rax)
	movl	$1032, 1527456(%r13,%rax) # imm = 0x408
	movl	$0, 1527460(%r13,%rax)
	movl	$1032, 3124896(%r13,%rax) # imm = 0x408
	movl	$0, 3124900(%r13,%rax)
	movl	$1032, 1793696(%r13,%rax) # imm = 0x408
	movl	$0, 1793700(%r13,%rax)
	movq	$1032, 3391136(%r13,%rax) # imm = 0x408
	jmp	.LBB0_97
	.align	16, 0x90
.LBB0_93:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_87 Depth=2
	movq	176(%rsp), %rdx
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	HalftoneLine
	jmp	.LBB0_97
	.align	16, 0x90
.LBB0_94:                               # %if.else.30.i.i
                                        #   in Loop: Header=BB0_87 Depth=2
	movl	%r15d, %eax
	subl	52(%r13), %eax
	cmpl	48(%r13), %eax
	jl	.LBB0_96
# BB#95:                                # %if.then.35.i.i
                                        #   in Loop: Header=BB0_87 Depth=2
	movq	(%r13), %rax
	movslq	18480(%rax), %rax
	shlq	$5, %rax
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	*htable+8(%rax)
	movq	176(%rsp), %rdx
.LBB0_96:                               # %if.end.36.i.i
                                        #   in Loop: Header=BB0_87 Depth=2
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	HalftoneLine
	movl	%r15d, 52(%r13)
.LBB0_97:                               # %RenderLine.exit.i
                                        #   in Loop: Header=BB0_87 Depth=2
	cmpl	%ebp, %r15d
	jne	.LBB0_87
# BB#98:                                #   in Loop: Header=BB0_13 Depth=1
	movl	%ebp, %r15d
.LBB0_99:                               # %while.end.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movslq	200(%r13), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	imulq	$1597440, %rax, %r10    # imm = 0x186000
	movq	%r10, 152(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r10), %r8
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r10), %r9
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_100:                              # %for.cond.18.preheader.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_101 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_124 Depth 4
	movslq	64(%r13), %rax
	movl	$1032, %r14d            # imm = 0x408
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_101:                              # %land.rhs.20.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rax, %rcx
	jge	.LBB0_105
# BB#102:                               # %for.body.24.i
                                        #   in Loop: Header=BB0_101 Depth=3
	movl	72(%r13,%rcx,4), %edx
	cmpl	$-1, %edx
	je	.LBB0_104
# BB#103:                               # %if.then.30.i
                                        #   in Loop: Header=BB0_101 Depth=3
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	leal	(%rsi,%rdx), %esi
	andl	$-256, %esi
	subl	%esi, %edx
	movslq	%edx, %rdx
	leaq	(%r13,%r10), %rsi
	imulq	$266240, 160(%rsp), %rdi # 8-byte Folded Reload
                                        # imm = 0x41000
	addq	%rsi, %rdi
	imulq	$1040, %rdx, %rdx       # imm = 0x410
	movl	462496(%rdx,%rdi), %esi
	movl	462500(%rdx,%rdi), %edx
	cmpl	%r14d, %esi
	cmovlel	%esi, %r14d
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
.LBB0_104:                              # %for.inc.68.i
                                        #   in Loop: Header=BB0_101 Depth=3
	incq	%rcx
	cmpq	$32, %rcx
	jl	.LBB0_101
.LBB0_105:                              # %for.end.70.i
                                        #   in Loop: Header=BB0_100 Depth=2
	cmpl	%ebp, %r14d
	jg	.LBB0_144
# BB#106:                               # %if.then.72.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r8, 72(%rsp)           # 8-byte Spill
	testl	%r12d, %r12d
	je	.LBB0_108
# BB#107:                               # %if.then.74.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	8(%r13), %r15
	movl	$27, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	$118, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	$2, %edi
	movq	%r15, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	fputc
	movzbl	%r12b, %edi
	movq	%r15, %rsi
	callq	fputc
	movq	%r12, %rax
	movzbl	%ah, %edi  # NOREX
	movq	%r15, %rsi
	callq	fputc
.LBB0_108:                              # %if.end.75.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	leal	1(%rbp), %r12d
	movq	8(%r13), %rbp
	movl	$27, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$114, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$2, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movq	160(%rsp), %rax         # 8-byte Reload
	movl	SendColour.ccode(,%rax,4), %eax
	movzbl	%al, %edi
	movl	%eax, %r15d
	movq	%rbp, %rsi
	callq	fputc
	movl	%r15d, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	movl	20(%r13), %eax
	cmpl	$360, %eax              # imm = 0x168
	jne	.LBB0_110
# BB#109:                               # %if.then.79.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	8(%r13), %rdi
	movl	%r14d, %esi
	shll	$5, %esi
	jmp	.LBB0_113
	.align	16, 0x90
.LBB0_110:                              # %if.else.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	8(%r13), %rdi
	cmpl	$720, %eax              # imm = 0x2D0
	jne	.LBB0_112
# BB#111:                               # %if.then.83.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	%r14d, %esi
	shll	$4, %esi
	jmp	.LBB0_113
.LBB0_112:                              # %if.else.86.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r14,8), %esi
.LBB0_113:                              # %if.end.90.i
                                        #   in Loop: Header=BB0_100 Depth=2
	callq	SendRight
	movq	8(%r13), %rbp
	movl	20(%r13), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	16(%r13), %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	64(%r13), %r15d
	movl	%r15d, 168(%rsp)        # 4-byte Spill
	subl	%r14d, %r12d
	movl	$27, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$46, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbp, %rsi
	callq	fputc
	cmpl	$1, %r15d
	jne	.LBB0_115
# BB#114:                               # %if.then.i.129.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$3600, %eax             # imm = 0xE10
	xorl	%edx, %edx
	idivl	136(%rsp)               # 4-byte Folded Reload
	movl	%eax, %edi
	jmp	.LBB0_116
	.align	16, 0x90
.LBB0_115:                              # %if.else.i.131.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$40, %edi
.LBB0_116:                              # %if.end.i.132.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	%rbp, %rsi
	callq	fputc
	leal	(,%r12,8), %r15d
	movl	144(%rsp), %ecx         # 4-byte Reload
	cmpl	$721, %ecx              # imm = 0x2D1
	jl	.LBB0_118
# BB#117:                               # %if.then.4.i.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$5, %edi
	jmp	.LBB0_119
	.align	16, 0x90
.LBB0_118:                              # %if.else.6.i.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$3600, %eax             # imm = 0xE10
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %edi
.LBB0_119:                              # %SendData.exit.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	%rbp, %rsi
	callq	fputc
	movl	168(%rsp), %edi         # 4-byte Reload
	movq	%rbp, %rsi
	callq	fputc
	andl	$248, %r15d
	movl	%r15d, %edi
	movq	%rbp, %rsi
	callq	fputc
	movq	%r12, 120(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	shrl	$5, %eax
	movzbl	%al, %edi
	movq	%rbp, %rsi
	callq	fputc
	cmpl	$0, 64(%r13)
	jle	.LBB0_143
# BB#120:                               # %for.body.101.lr.ph.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movslq	%r14d, %r15
	movq	%r15, 144(%rsp)         # 8-byte Spill
	movl	%r14d, %eax
	notl	%eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	leaq	10(%r15,%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r15), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r15), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	subl	%r14d, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_121:                              # %for.body.101.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_124 Depth 4
	movl	72(%r13,%rbp,4), %eax
	cmpl	$-1, %eax
	je	.LBB0_123
# BB#122:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_121 Depth=3
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-256, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rcx
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %rdx
	imulq	$266240, 160(%rsp), %rax # 8-byte Folded Reload
                                        # imm = 0x41000
	addq	%rdx, %rax
	imulq	$1040, %rcx, %rcx       # imm = 0x410
	movl	462500(%rcx,%rax), %edx
	cmpl	462496(%rcx,%rax), %edx
	jge	.LBB0_130
.LBB0_123:                              # %if.then.126.i
                                        #   in Loop: Header=BB0_121 Depth=3
	xorl	%eax, %eax
	cmpl	$129, %r12d
	movl	%r12d, %ecx
	movq	%rbx, %rdx
	jl	.LBB0_126
	.align	16, 0x90
.LBB0_124:                              # %for.body.i.137.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        #       Parent Loop BB0_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, %rdx
	movb	$-128, (%rbx,%rdx)
	movb	$0, 1(%rbx,%rdx)
	addl	$-129, %ecx
	leaq	2(%rdx), %rax
	cmpl	$128, %ecx
	jg	.LBB0_124
# BB#125:                               #   in Loop: Header=BB0_121 Depth=3
	leaq	2(%rbx,%rdx), %rdx
.LBB0_126:                              # %for.end.i.139.i
                                        #   in Loop: Header=BB0_121 Depth=3
	cmpl	$2, %ecx
	jl	.LBB0_128
# BB#127:                               # %if.then.4.i.141.i
                                        #   in Loop: Header=BB0_121 Depth=3
	movl	$257, %esi              # imm = 0x101
	subl	%ecx, %esi
	movb	%sil, (%rdx)
	movb	$0, 1(%rdx)
	addl	$2, %eax
	jmp	.LBB0_142
	.align	16, 0x90
.LBB0_128:                              # %if.else.i.142.i
                                        #   in Loop: Header=BB0_121 Depth=3
	testl	%ecx, %ecx
	je	.LBB0_142
# BB#129:                               # %if.then.10.i.i
                                        #   in Loop: Header=BB0_121 Depth=3
	movw	$0, (%rdx)
	addl	$2, %eax
	jmp	.LBB0_142
	.align	16, 0x90
.LBB0_130:                              # %if.else.128.i
                                        #   in Loop: Header=BB0_121 Depth=3
	leaq	(%rax,%rcx), %rdx
	leaq	462504(%r15,%rdx), %rdi
	xorl	%r14d, %r14d
	cmpl	$2, %r12d
	jl	.LBB0_131
# BB#132:                               # %for.body.21.lr.ph.i.i
                                        #   in Loop: Header=BB0_121 Depth=3
	leaq	462496(%rcx,%rax), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movb	(%rdi), %al
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx), %r14
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r12
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	%rbx, %r15
	movq	128(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB0_133:                              # %for.body.21.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        #       Parent Loop BB0_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r12,%r13), %ecx
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	jne	.LBB0_135
# BB#134:                               # %if.then.26.i.i
                                        #   in Loop: Header=BB0_133 Depth=4
	leaq	(%r14,%r13), %rcx
	testq	%rsi, %rsi
	cmoveq	%rcx, %rsi
	jmp	.LBB0_139
	.align	16, 0x90
.LBB0_135:                              # %if.else.31.i.i
                                        #   in Loop: Header=BB0_133 Depth=4
	testq	%rsi, %rsi
	je	.LBB0_138
# BB#136:                               # %if.then.33.i.i
                                        #   in Loop: Header=BB0_133 Depth=4
	leaq	(%r12,%r13), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	cmpq	$4, %rax
	jl	.LBB0_138
# BB#137:                               # %if.else.37.i.i
                                        #   in Loop: Header=BB0_133 Depth=4
	movq	%r15, %rcx
	callq	RleFlush
	cltq
	addq	%rax, %r15
	movq	168(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	movq	%r15, %rdi
	movq	%rax, 168(%rsp)         # 8-byte Spill
.LBB0_138:                              # %if.end.42.i.i
                                        #   in Loop: Header=BB0_133 Depth=4
	movb	(%r15), %al
	xorl	%esi, %esi
.LBB0_139:                              # %for.inc.44.i.i
                                        #   in Loop: Header=BB0_133 Depth=4
	incq	%r13
	cmpl	%r13d, %ebx
	jne	.LBB0_133
# BB#140:                               # %for.cond.18.for.end.46_crit_edge.i.i
                                        #   in Loop: Header=BB0_121 Depth=3
	movq	136(%rsp), %rdx         # 8-byte Reload
	addq	112(%rsp), %rdx         # 8-byte Folded Reload
	movq	88(%rsp), %r13          # 8-byte Reload
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	120(%rsp), %r12         # 8-byte Reload
	movq	168(%rsp), %r14         # 8-byte Reload
	jmp	.LBB0_141
.LBB0_131:                              #   in Loop: Header=BB0_121 Depth=3
	leaq	462505(%r15,%rdx), %rdx
	xorl	%esi, %esi
	movq	%rbx, %r15
.LBB0_141:                              # %RleCompress.exit148.i
                                        #   in Loop: Header=BB0_121 Depth=3
	movq	%r15, %rcx
	callq	RleFlush
	addl	%r14d, %eax
	movq	144(%rsp), %r15         # 8-byte Reload
.LBB0_142:                              # %if.end.139.i
                                        #   in Loop: Header=BB0_121 Depth=3
	movslq	%eax, %rsi
	movq	8(%r13), %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	fwrite
	incq	%rbp
	movslq	64(%r13), %rax
	cmpq	%rax, %rbp
	jl	.LBB0_121
.LBB0_143:                              # %for.end.146.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	8(%r13), %rsi
	movl	$13, %edi
	callq	fputc
	xorl	%r12d, %r12d
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	152(%rsp), %r10         # 8-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
.LBB0_144:                              # %for.inc.150.i
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	160(%rsp), %rax         # 8-byte Reload
	incq	%rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	addq	$266240, %r8            # imm = 0x41000
	addq	$266240, %r9            # imm = 0x41000
	cmpq	$6, %rax
	jne	.LBB0_100
# BB#145:                               # %for.end.152.i
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB0_146
	jmp	.LBB0_147
.LBB0_60:                               # %if.else.9.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, 200(%r13)
	movl	$1, 68(%r13)
	movl	$2, %ecx
.LBB0_61:                               # %if.end.13.i.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_62:                               # %for.body.i.i.41.i.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	leal	(%rsi,%rax), %esi
	andl	$-256, %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movslq	%edi, %rsi
	movzbl	212(%r13,%rsi), %edi
	testl	%ecx, %edi
	je	.LBB0_64
# BB#63:                                # %if.then.i.i.42.i.i
                                        #   in Loop: Header=BB0_62 Depth=2
	movl	$-1, 72(%r13,%rdx,4)
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_64:                               # %if.else.i.i.44.i.i
                                        #   in Loop: Header=BB0_62 Depth=2
	movl	%eax, 72(%r13,%rdx,4)
	movzbl	212(%r13,%rsi), %edi
	orl	%ecx, %edi
	movb	%dil, 212(%r13,%rsi)
.LBB0_65:                               # %for.inc.i.i.48.i.i
                                        #   in Loop: Header=BB0_62 Depth=2
	incq	%rdx
	addl	$8, %eax
	cmpq	$32, %rdx
	jne	.LBB0_62
# BB#66:                                # %ScheduleTrailing.exit.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	68(%r13), %ecx
	movl	204(%r13), %eax
	addl	%ecx, %eax
	movl	%eax, 204(%r13)
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	testl	%ecx, %ecx
	je	.LBB0_84
# BB#67:                                # %if.then.27.i.i
                                        #   in Loop: Header=BB0_13 Depth=1
	addl	$248, %eax
	cmpl	56(%r13), %eax
	setge	%al
	jmp	.LBB0_68
.LBB0_147:                              # %RenderPage.exit
	movl	$12, %edi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputc
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$64, %edi
	movq	%rbx, %rsi
	callq	fputc
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movq	40(%r13), %rsi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.9, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	xorl	%ebx, %ebx
.LBB0_148:                              # %cleanup
	movl	%ebx, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	photoex_print_page, .Lfunc_end0-photoex_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4622708578515377193     # double 11.58
.LCPI1_1:
	.quad	-4600663458339398615    # double -11.58
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_2:
	.long	1039516303              # float 0.119999997
	.text
	.align	16, 0x90
	.type	photoex_open,@function
photoex_open:                           # @photoex_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvtsi2ssl	832(%rbx), %xmm0
	divss	884(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$1039516303, (%rsp)     # imm = 0x3DF5C28F
	movl	$1056964608, 4(%rsp)    # imm = 0x3F000000
	movl	$1039516303, 8(%rsp)    # imm = 0x3DF5C28F
	ucomisd	.LCPI1_0(%rip), %xmm0
	ja	.LBB1_1
# BB#2:                                 # %entry
	movss	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_3
.LBB1_1:
	addsd	.LCPI1_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
.LBB1_3:                                # %entry
	movss	%xmm0, 12(%rsp)
	leaq	(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	callq	gdev_prn_open
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	photoex_open, .Lfunc_end1-photoex_open
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4605380978949069210     # double 0.80000000000000004
	.text
	.align	16, 0x90
	.type	photoex_map_rgb_color,@function
photoex_map_rgb_color:                  # @photoex_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %edx
	movzwl	2(%rsi), %r9d
	movl	%r9d, %edi
	andl	%edx, %edi
	movzwl	4(%rsi), %esi
	andl	%esi, %edi
	xorl	%eax, %eax
	cmpl	$65535, %edi            # imm = 0xFFFF
	je	.LBB2_17
# BB#1:                                 # %if.end
	movl	%r9d, %edi
	orl	%edx, %edi
	movl	$180, %eax
	movw	%si, %cx
	orw	%di, %cx
	je	.LBB2_17
# BB#2:                                 # %if.end.17
	shrl	$8, %edx
	xorl	$255, %edx
	shrl	$8, %r9d
	xorl	$255, %r9d
	shrl	$8, %esi
	xorl	$255, %esi
	cmpl	%esi, %r9d
	movl	%esi, %eax
	cmovbl	%r9d, %eax
	cmpl	%eax, %edx
	cmovlel	%edx, %eax
	movl	%eax, %eax
	movzbl	xtrans(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI2_0(%rip), %xmm0
	cvttsd2si	%xmm0, %r8d
	subl	%r8d, %edx
	subl	%r8d, %r9d
	subl	%r8d, %esi
	cmpl	%r9d, %esi
	movl	%r9d, %r11d
	cmovgel	%esi, %r11d
	movl	%esi, %edi
	cmovgl	%r9d, %edi
	cmpl	%r11d, %edx
	cmovgel	%edx, %r11d
	cmpl	%edx, %edi
	cmovgl	%edx, %edi
	subl	%edi, %esi
	jne	.LBB2_5
# BB#3:                                 # %if.end.17
	cmpl	%edi, %edx
	jne	.LBB2_5
# BB#4:                                 # %if.end.17
	xorl	%eax, %eax
	cmpl	%edi, %r9d
	je	.LBB2_14
.LBB2_5:                                # %if.end.i
	subl	%edi, %edx
	subl	%edi, %r9d
	cmpl	%esi, %r9d
	movl	%esi, %ecx
	cmovgel	%r9d, %ecx
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	imull	$255, %edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r10d
	imull	$255, %r9d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r9d
	imull	$255, %esi, %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	cmpl	$255, %r10d
	jne	.LBB2_7
# BB#6:                                 # %if.then.36.i
	movl	$1530, %eax             # imm = 0x5FA
	subl	%edx, %eax
	testl	%edx, %edx
	cmovel	%r9d, %eax
	jmp	.LBB2_14
.LBB2_7:                                # %if.else.41.i
	testl	%r9d, %r9d
	jne	.LBB2_8
# BB#12:                                # %if.then.51.i
	addl	$1020, %r10d            # imm = 0x3FC
	movl	%r10d, %eax
	jmp	.LBB2_14
.LBB2_8:                                # %if.else.41.i
	cmpl	$255, %r9d
	jne	.LBB2_13
# BB#9:                                 # %if.then.43.i
	testl	%r10d, %r10d
	je	.LBB2_10
# BB#11:                                # %if.else.46.i
	movl	$510, %eax              # imm = 0x1FE
	subl	%r10d, %eax
	jmp	.LBB2_14
.LBB2_13:                               # %if.else.53.i
	movl	$1020, %eax             # imm = 0x3FC
	subl	%r9d, %eax
	jmp	.LBB2_14
.LBB2_10:                               # %if.then.45.i
	addl	$510, %edx              # imm = 0x1FE
	movl	%edx, %eax
.LBB2_14:                               # %Cmy2A.exit
	xorl	%ecx, %ecx
	movl	$ctable+20, %edx
	.align	16, 0x90
.LBB2_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %edi
	incq	%rcx
	addq	$20, %rdx
	cmpl	%edi, %eax
	jg	.LBB2_15
# BB#16:                                # %for.end
	movq	%rcx, %rdx
	shlq	$32, %rdx
	movabsq	$-4294967296, %rsi      # imm = 0xFFFFFFFF00000000
	addq	%rdx, %rsi
	sarq	$32, %rsi
	leaq	(%rsi,%rsi,4), %rsi
	movl	ctable(,%rsi,4), %edx
	subl	%edx, %eax
	shll	$16, %eax
	subl	%edx, %edi
	cltd
	idivl	%edi
	movl	ctable+8(,%rsi,4), %edx
	leaq	(%rcx,%rcx,4), %r9
	movl	ctable+8(,%r9,4), %ecx
	subl	%edx, %ecx
	shll	$16, %edx
	imull	%eax, %ecx
	addl	%edx, %ecx
	shrl	$16, %ecx
	movl	ctable+12(,%rsi,4), %edi
	movl	ctable+12(,%r9,4), %edx
	subl	%edi, %edx
	shll	$16, %edi
	imull	%eax, %edx
	addl	%edi, %edx
	shrl	$16, %edx
	movl	ctable+16(,%rsi,4), %edi
	movl	ctable+16(,%r9,4), %esi
	subl	%edi, %esi
	shll	$16, %edi
	imull	%eax, %esi
	addl	%edi, %esi
	shrl	$16, %esi
	movslq	%r11d, %rax
	movzbl	xtrans(%rax), %eax
	imull	%eax, %ecx
	imull	%eax, %edx
	imull	%eax, %esi
	shll	$16, %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shll	$8, %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	andl	$65280, %esi            # imm = 0xFF00
	movzbl	%r8b, %eax
	orq	%rdx, %rax
	orq	%rcx, %rax
	orq	%rsi, %rax
.LBB2_17:                               # %cleanup
	retq
.Lfunc_end2:
	.size	photoex_map_rgb_color, .Lfunc_end2-photoex_map_rgb_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4643176031446892544     # double 255
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	photoex_map_color_rgb,@function
photoex_map_color_rgb:                  # @photoex_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rcx
	movzbl	%cl, %esi
	movzbl	%ch, %eax  # NOREX
	movl	%ecx, %edi
	shrl	$16, %edi
	movzbl	%dil, %edi
	shrl	$24, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI3_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	.LCPI3_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm3
	subsd	%xmm1, %xmm3
	movsd	.LCPI3_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm3
	cvtsi2sdl	%esi, %xmm4
	divsd	%xmm2, %xmm4
	movapd	%xmm0, %xmm5
	subsd	%xmm4, %xmm5
	mulsd	%xmm5, %xmm3
	cvttsd2si	%xmm3, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%edi, %xmm3
	divsd	%xmm2, %xmm3
	movapd	%xmm0, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm1, %xmm4
	mulsd	%xmm5, %xmm4
	cvttsd2si	%xmm4, %esi
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm5, %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%cx, (%rdx)
	movw	%si, 2(%rdx)
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	photoex_map_color_rgb, .Lfunc_end3-photoex_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	photoex_get_params,@function
photoex_get_params:                     # @photoex_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB4_7
# BB#1:                                 # %GetInt.exit
	leaq	18476(%rbx), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_7
# BB#2:                                 # %GetInt.exit28
	leaq	18472(%rbx), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_7
# BB#3:                                 # %GetInt.exit33
	leaq	18480(%rbx), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_7
# BB#4:                                 # %GetInt.exit38
	leaq	18484(%rbx), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_7
# BB#5:                                 # %GetInt.exit43
	leaq	18488(%rbx), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_7
# BB#6:                                 # %GetInt.exit48
	leaq	18496(%rbx), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_7
# BB#8:                                 # %if.end.i.51
	addq	$18508, %rbx            # imm = 0x484C
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_int         # TAILCALL
.LBB4_7:                                # %GetInt.exit53
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	photoex_get_params, .Lfunc_end4-photoex_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	photoex_put_params,@function
photoex_put_params:                     # @photoex_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18476(%r14), %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB5_1
# BB#3:                                 # %sw.bb.1.i
	movl	4(%rsp), %eax
	cmpl	$3, %eax
	jb	.LBB5_5
# BB#4:                                 # %if.then.3.i
	movq	(%rbx), %rax
	movl	$.L.str.2, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB5_6
.LBB5_1:                                # %entry
	cmpl	$1, %eax
	je	.LBB5_6
	jmp	.LBB5_2
.LBB5_5:                                # %if.else.i
	movl	%eax, 18476(%r14)
.LBB5_6:                                # %if.end.i
	leaq	4(%rsp), %rdx
	movl	18472(%r14), %eax
	movl	%eax, 4(%rsp)
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB5_11
# BB#7:                                 # %if.end.i
	testl	%eax, %eax
	jne	.LBB5_2
# BB#8:                                 # %sw.bb.1.i.31
	movl	4(%rsp), %eax
	cmpl	$3, %eax
	jb	.LBB5_10
# BB#9:                                 # %if.then.3.i.35
	movq	(%rbx), %rax
	movl	$.L.str.3, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.i.36
	movl	%eax, 18472(%r14)
.LBB5_11:                               # %if.end.i.42
	leaq	4(%rsp), %rdx
	movl	18480(%r14), %eax
	movl	%eax, 4(%rsp)
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB5_16
# BB#12:                                # %if.end.i.42
	testl	%eax, %eax
	jne	.LBB5_2
# BB#13:                                # %sw.bb.1.i.47
	movl	4(%rsp), %eax
	cmpl	$3, %eax
	jb	.LBB5_15
# BB#14:                                # %if.then.3.i.51
	movq	(%rbx), %rax
	movl	$.L.str.4, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.i.52
	movl	%eax, 18480(%r14)
.LBB5_16:                               # %if.end.i.58
	leaq	4(%rsp), %rdx
	movl	18484(%r14), %eax
	movl	%eax, 4(%rsp)
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB5_21
# BB#17:                                # %if.end.i.58
	testl	%eax, %eax
	jne	.LBB5_2
# BB#18:                                # %sw.bb.1.i.63
	movl	4(%rsp), %eax
	cmpl	$51, %eax
	jb	.LBB5_20
# BB#19:                                # %if.then.3.i.67
	movq	(%rbx), %rax
	movl	$.L.str.5, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.i.68
	movl	%eax, 18484(%r14)
.LBB5_21:                               # %if.end.i.74
	leaq	4(%rsp), %rdx
	movl	18488(%r14), %eax
	movl	%eax, 4(%rsp)
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB5_26
# BB#22:                                # %if.end.i.74
	testl	%eax, %eax
	jne	.LBB5_2
# BB#23:                                # %sw.bb.1.i.79
	movl	4(%rsp), %eax
	cmpl	$26, %eax
	jb	.LBB5_25
# BB#24:                                # %if.then.3.i.83
	movq	(%rbx), %rax
	movl	$.L.str.6, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB5_26
.LBB5_25:                               # %if.else.i.84
	movl	%eax, 18488(%r14)
.LBB5_26:                               # %if.end.i.90
	leaq	4(%rsp), %rdx
	movl	18496(%r14), %eax
	movl	%eax, 4(%rsp)
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB5_31
# BB#27:                                # %if.end.i.90
	testl	%eax, %eax
	jne	.LBB5_2
# BB#28:                                # %sw.bb.1.i.95
	movl	4(%rsp), %eax
	cmpl	$2, %eax
	jb	.LBB5_30
# BB#29:                                # %if.then.3.i.99
	movq	(%rbx), %rax
	movl	$.L.str.7, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB5_31
.LBB5_30:                               # %if.else.i.100
	movl	%eax, 18496(%r14)
.LBB5_31:                               # %if.end.i.106
	leaq	4(%rsp), %rdx
	movl	18508(%r14), %eax
	movl	%eax, 4(%rsp)
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB5_36
# BB#32:                                # %if.end.i.106
	testl	%eax, %eax
	jne	.LBB5_2
# BB#33:                                # %sw.bb.1.i.111
	movl	4(%rsp), %eax
	cmpl	$5, %eax
	jb	.LBB5_35
# BB#34:                                # %if.then.3.i.115
	movq	(%rbx), %rax
	movl	$.L.str.8, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB5_36
.LBB5_2:                                # %PutInt.exit118
	testl	%eax, %eax
	jns	.LBB5_36
	jmp	.LBB5_37
.LBB5_35:                               # %if.else.i.116
	movl	%eax, 18508(%r14)
.LBB5_36:                               # %if.else
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
.LBB5_37:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	photoex_put_params, .Lfunc_end5-photoex_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	SendRight,@function
SendRight:                              # @SendRight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$27, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$40, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$92, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$4, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$160, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$5, %edi
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	fputc                   # TAILCALL
.Lfunc_end6:
	.size	SendRight, .Lfunc_end6-SendRight
	.cfi_endproc

	.align	16, 0x90
	.type	FloydSThold,@function
FloydSThold:                            # @FloydSThold
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$5, %eax
	retq
.Lfunc_end7:
	.size	FloydSThold, .Lfunc_end7-FloydSThold
	.cfi_endproc

	.align	16, 0x90
	.type	FloydSStart,@function
FloydSStart:                            # @FloydSStart
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	468(%r14), %rbx
	xorl	%esi, %esi
	movl	$66000, %edx            # imm = 0x101D0
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, 396472(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	FloydSStart, .Lfunc_end8-FloydSStart
	.cfi_endproc

	.align	16, 0x90
	.type	FloydSEol,@function
FloydSEol:                              # @FloydSEol
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end9:
	.size	FloydSEol, .Lfunc_end9-FloydSEol
	.cfi_endproc

	.align	16, 0x90
	.type	FloydSLine,@function
FloydSLine:                             # @FloydSLine
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
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %r11
	movl	28(%rax), %r8d
	movq	24(%rdi), %r14
	movq	32(%rdi), %rsi
	movl	56(%rdi), %ebx
	leal	256(%rbx), %r10d
	shrl	$31, %r10d
	movq	40(%rdi), %rax
	movq	(%rax), %rcx
	movw	2(%rcx), %dx
	movw	4(%rcx), %ax
	movl	$0, 2(%rcx)
	testl	%r8d, %r8d
	jle	.LBB10_11
# BB#1:                                 # %for.body.lr.ph
	movl	%ebx, %r9d
	shrl	$31, %r9d
	addl	%ebx, %r9d
	sarl	%r9d
	leal	256(%rbx,%r10), %r10d
	sarl	%r10d
	addq	$6, %rcx
	.align	16, 0x90
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%r14)
	movzbl	(%r11), %ebx
	shll	$4, %ebx
	movswl	%dx, %edx
	addl	%ebx, %edx
	movzwl	(%rcx), %ebp
	movl	%edx, %r15d
	andl	$15, %r15d
	addl	%ebp, %r15d
	movw	$0, (%rcx)
	sarl	$4, %edx
	testq	%rsi, %rsi
	je	.LBB10_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r9d, %edx
	jl	.LBB10_8
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_2 Depth=1
	movb	(%rsi), %bl
	testb	%bl, %bl
	je	.LBB10_5
	jmp	.LBB10_8
	.align	16, 0x90
.LBB10_7:                               # %lor.lhs.false
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r9d, %edx
	jge	.LBB10_5
.LBB10_8:                               # %if.then
                                        #   in Loop: Header=BB10_2 Depth=1
	movb	$0, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB10_10
	.align	16, 0x90
.LBB10_5:                               # %if.else
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r10d, %edx
	jge	.LBB10_6
# BB#9:                                 # %if.else.24
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	56(%rdi), %ebp
	movb	%bpl, (%r14)
	jmp	.LBB10_10
	.align	16, 0x90
.LBB10_6:                               # %if.then.23
                                        #   in Loop: Header=BB10_2 Depth=1
	movb	$-1, (%r14)
	movl	$255, %ebp
.LBB10_10:                              # %if.end.27
                                        #   in Loop: Header=BB10_2 Depth=1
	movzbl	%bpl, %ebx
	subl	%ebx, %edx
	imull	$7, %edx, %ebx
	addl	%ebx, %eax
	leal	(%rdx,%rdx,2), %ebx
	movzwl	-6(%rcx), %ebp
	addl	%ebx, %ebp
	movw	%bp, -6(%rcx)
	leal	(%rdx,%rdx,4), %ebx
	movzwl	-4(%rcx), %ebp
	addl	%ebx, %ebp
	movw	%bp, -4(%rcx)
	movzwl	-2(%rcx), %ebx
	addl	%edx, %ebx
	incq	%r14
	leaq	1(%rsi), %rbp
	testq	%rsi, %rsi
	movw	%ax, %dx
	movw	%bx, -2(%rcx)
	cmovneq	%rbp, %rsi
	movslq	16(%rdi), %rax
	addq	%rax, %r11
	addq	$2, %rcx
	decl	%r8d
	movw	%r15w, %ax
	jne	.LBB10_2
.LBB10_11:                              # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	FloydSLine, .Lfunc_end10-FloydSLine
	.cfi_endproc

	.align	16, 0x90
	.type	DitherThold,@function
DitherThold:                            # @DitherThold
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	DitherThold, .Lfunc_end11-DitherThold
	.cfi_endproc

	.align	16, 0x90
	.type	DitherStart,@function
DitherStart:                            # @DitherStart
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end12:
	.size	DitherStart, .Lfunc_end12-DitherStart
	.cfi_endproc

	.align	16, 0x90
	.type	DitherEol,@function
DitherEol:                              # @DitherEol
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end13:
	.size	DitherEol, .Lfunc_end13-DitherEol
	.cfi_endproc

	.align	16, 0x90
	.type	DitherLine,@function
DitherLine:                             # @DitherLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	movl	28(%rax), %r9d
	testl	%r9d, %r9d
	jle	.LBB14_18
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	leal	(%rax,%rsi), %eax
	andl	$-16, %eax
	subl	%eax, %esi
	movslq	%esi, %r8
	movq	32(%rdi), %rsi
	movq	8(%rdi), %r10
	movq	24(%rdi), %rcx
	xorl	%r11d, %r11d
	shlq	$4, %r8
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB14_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%rcx)
	movzbl	(%r10), %eax
	movl	56(%rdi), %ebp
	movl	%eax, %edx
	subl	%ebp, %edx
	jle	.LBB14_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpl	$127, %ebp
	jne	.LBB14_5
# BB#4:                                 # %if.then.10
                                        #   in Loop: Header=BB14_2 Depth=1
	leal	-1(%rdx,%rdx), %eax
	shrl	$31, %eax
	leal	-1(%rax,%rdx,2), %eax
	sarl	%eax
	movl	$255, %ebp
	movl	$127, %r14d
	jmp	.LBB14_11
	.align	16, 0x90
.LBB14_6:                               # %if.else.19
                                        #   in Loop: Header=BB14_2 Depth=1
	xorl	%r14d, %r14d
	cmpl	$255, %ebp
	jne	.LBB14_8
# BB#7:                                 #   in Loop: Header=BB14_2 Depth=1
	movl	$255, %ebp
	jmp	.LBB14_11
	.align	16, 0x90
.LBB14_5:                               # %if.else
                                        #   in Loop: Header=BB14_2 Depth=1
	imull	$255, %edx, %eax
	movl	$255, %r14d
	subl	%ebp, %r14d
	cltd
	idivl	%r14d
	movl	%ebp, %r14d
	movl	$255, %ebp
	jmp	.LBB14_11
	.align	16, 0x90
.LBB14_8:                               # %if.else.19
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpl	$127, %ebp
	jne	.LBB14_10
# BB#9:                                 # %if.then.28
                                        #   in Loop: Header=BB14_2 Depth=1
	addl	%eax, %eax
	movl	$127, %ebp
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.31
                                        #   in Loop: Header=BB14_2 Depth=1
	imull	$255, %eax, %eax
	xorl	%edx, %edx
	idivl	%ebp
	.align	16, 0x90
.LBB14_11:                              # %if.end.37
                                        #   in Loop: Header=BB14_2 Depth=1
	testq	%rsi, %rsi
	je	.LBB14_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpb	$0, (%rsi)
	je	.LBB14_14
# BB#13:                                # %if.then.40
                                        #   in Loop: Header=BB14_2 Depth=1
	movb	$0, (%rcx)
	jmp	.LBB14_17
	.align	16, 0x90
.LBB14_14:                              # %if.else.41
                                        #   in Loop: Header=BB14_2 Depth=1
	movslq	%ebx, %rdx
	movzbl	dmatrix(%r8,%rdx), %edx
	cmpl	%edx, %eax
	jge	.LBB14_15
# BB#16:                                # %if.else.49
                                        #   in Loop: Header=BB14_2 Depth=1
	movb	%r14b, (%rcx)
	jmp	.LBB14_17
	.align	16, 0x90
.LBB14_15:                              # %if.then.47
                                        #   in Loop: Header=BB14_2 Depth=1
	movb	%bpl, (%rcx)
.LBB14_17:                              # %if.end.52
                                        #   in Loop: Header=BB14_2 Depth=1
	incq	%rcx
	incl	%ebx
	cmpl	$16, %ebx
	cmovel	%r11d, %ebx
	leaq	1(%rsi), %rax
	testq	%rsi, %rsi
	cmovneq	%rax, %rsi
	movslq	16(%rdi), %rax
	addq	%rax, %r10
	decl	%r9d
	jne	.LBB14_2
.LBB14_18:                              # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	DitherLine, .Lfunc_end14-DitherLine
	.cfi_endproc

	.align	16, 0x90
	.type	BendorThold,@function
BendorThold:                            # @BendorThold
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$5, %eax
	retq
.Lfunc_end15:
	.size	BendorThold, .Lfunc_end15-BendorThold
	.cfi_endproc

	.align	16, 0x90
	.type	BendorStart,@function
BendorStart:                            # @BendorStart
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -24
.Ltmp54:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	468(%rbx), %r14
	xorl	%esi, %esi
	movl	$132000, %edx           # imm = 0x203A0
	movq	%r14, %rdi
	callq	memset
	movq	%r14, 396472(%rbx)
	leaq	132468(%rbx), %rax
	movq	%rax, 396480(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	BendorStart, .Lfunc_end16-BendorStart
	.cfi_endproc

	.align	16, 0x90
	.type	BendorEol,@function
BendorEol:                              # @BendorEol
	.cfi_startproc
# BB#0:                                 # %entry
	movq	396472(%rdi), %rax
	movq	396480(%rdi), %rcx
	movq	%rcx, 396472(%rdi)
	movq	%rax, 396480(%rdi)
	retq
.Lfunc_end17:
	.size	BendorEol, .Lfunc_end17-BendorEol
	.cfi_endproc

	.align	16, 0x90
	.type	BendorLine,@function
BendorLine:                             # @BendorLine
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
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %r10
	movq	(%rax), %rcx
	movl	18484(%rcx), %r8d
	movl	28(%rax), %r9d
	movq	24(%rdi), %r12
	movq	32(%rdi), %r13
	movl	56(%rdi), %ecx
	leal	256(%rcx), %esi
	shrl	$31, %esi
	movq	40(%rdi), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movw	4(%rdx), %r14w
	movw	6(%rdx), %r15w
	movl	$0, 4(%rdx)
	testl	%r9d, %r9d
	jle	.LBB18_16
# BB#1:                                 # %for.body.lr.ph
	movl	%ecx, %ebp
	shrl	$31, %ebp
	addl	%ecx, %ebp
	sarl	%ebp
	movl	%ebp, -4(%rsp)          # 4-byte Spill
	leal	256(%rcx,%rsi), %ecx
	sarl	%ecx
	movl	%ecx, -8(%rsp)          # 4-byte Spill
	addq	$8, %rax
	addq	$8, %rdx
	.align	16, 0x90
.LBB18_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%r12)
	movzbl	(%r10), %ecx
	shll	$7, %ecx
	movswl	%r14w, %ebx
	addl	%ecx, %ebx
	movzwl	(%rdx), %ebp
	movl	%ebx, %r11d
	andl	$127, %r11d
	movw	$0, (%rdx)
	sarl	$7, %ebx
	testq	%r13, %r13
	je	.LBB18_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_2 Depth=1
	cmpl	-4(%rsp), %ebx          # 4-byte Folded Reload
	jl	.LBB18_8
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_2 Depth=1
	movb	(%r13), %cl
	testb	%cl, %cl
	je	.LBB18_5
	jmp	.LBB18_8
	.align	16, 0x90
.LBB18_7:                               # %lor.lhs.false
                                        #   in Loop: Header=BB18_2 Depth=1
	cmpl	-4(%rsp), %ebx          # 4-byte Folded Reload
	jge	.LBB18_5
.LBB18_8:                               # %if.then
                                        #   in Loop: Header=BB18_2 Depth=1
	movb	$0, (%r12)
	xorl	%esi, %esi
	jmp	.LBB18_10
	.align	16, 0x90
.LBB18_5:                               # %if.else
                                        #   in Loop: Header=BB18_2 Depth=1
	cmpl	-8(%rsp), %ebx          # 4-byte Folded Reload
	jge	.LBB18_6
# BB#9:                                 # %if.else.31
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	56(%rdi), %esi
	movb	%sil, (%r12)
	jmp	.LBB18_10
	.align	16, 0x90
.LBB18_6:                               # %if.then.30
                                        #   in Loop: Header=BB18_2 Depth=1
	movb	$-1, (%r12)
	movl	$255, %esi
.LBB18_10:                              # %if.end.34
                                        #   in Loop: Header=BB18_2 Depth=1
	addl	%ebp, %r11d
	movzbl	%sil, %ecx
	subl	%ecx, %ebx
	testl	%r8d, %r8d
	je	.LBB18_12
# BB#11:                                # %if.then.37
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	%ebx, %ecx
	imull	%r8d, %ecx
	movslq	%ecx, %rcx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	movq	%rcx, %rsi
	shrq	$63, %rsi
	sarq	$37, %rcx
	addl	%esi, %ecx
	subl	%ecx, %ebx
.LBB18_12:                              # %if.end.40
                                        #   in Loop: Header=BB18_2 Depth=1
	movzwl	-8(%rdx), %ecx
	leal	(%rcx,%rbx,4), %ecx
	movw	%cx, -8(%rdx)
	movzwl	(%rdx), %ecx
	leal	(%rcx,%rbx,4), %ecx
	movw	%cx, (%rdx)
	imull	$14, %ebx, %esi
	movzwl	-6(%rdx), %ecx
	leal	(%rcx,%rbx,8), %ecx
	movw	%cx, -6(%rdx)
	movzwl	-2(%rdx), %ecx
	leal	(%rcx,%rbx,8), %ecx
	movw	%cx, -2(%rdx)
	movzwl	-8(%rax), %ecx
	leal	(%rcx,%rbx,8), %ecx
	movw	%cx, -8(%rax)
	movzwl	(%rax), %ecx
	leal	(%rcx,%rbx,8), %ecx
	movw	%cx, (%rax)
	leal	(%rbx,%rbx), %ecx
	leal	(%rcx,%rcx,4), %ecx
	movzwl	-4(%rdx), %ebp
	addl	%ecx, %ebp
	movw	%bp, -4(%rdx)
	addl	%ecx, %r11d
	shll	$2, %ebx
	leal	(%rbx,%rbx,4), %ebx
	movzwl	-4(%rax), %ecx
	addl	%ebx, %ecx
	movw	%cx, -4(%rax)
	movzwl	%r15w, %r14d
	addl	%ebx, %r14d
	movzwl	-6(%rax), %ebx
	addl	%esi, %ebx
	movw	%bx, -6(%rax)
	movzwl	-2(%rax), %ebp
	addl	%esi, %ebp
	movw	%bp, -2(%rax)
	testl	%r8d, %r8d
	je	.LBB18_15
# BB#13:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB18_2 Depth=1
	movzbl	(%r12), %esi
	testl	%esi, %esi
	je	.LBB18_15
# BB#14:                                # %if.then.99
                                        #   in Loop: Header=BB18_2 Depth=1
	imull	%r8d, %esi
	subl	%esi, %ebx
	movw	%bx, -6(%rax)
	subl	%esi, %ebp
	movw	%bp, -2(%rax)
	movl	%esi, %ebx
	sarl	%ebx
	addl	%esi, %ebx
	subl	%ebx, %r14d
	subl	%ebx, %ecx
	movw	%cx, -4(%rax)
.LBB18_15:                              # %if.end.119
                                        #   in Loop: Header=BB18_2 Depth=1
	incq	%r12
	leaq	1(%r13), %rcx
	testq	%r13, %r13
	cmovneq	%rcx, %r13
	movslq	16(%rdi), %rcx
	addq	%rcx, %r10
	addq	$2, %rax
	addq	$2, %rdx
	decl	%r9d
	movw	%r11w, %r15w
	jne	.LBB18_2
.LBB18_16:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	BendorLine, .Lfunc_end18-BendorLine
	.cfi_endproc

	.align	16, 0x90
	.type	HalftoneLine,@function
HalftoneLine:                           # @HalftoneLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp71:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 144
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	(%r15), %r12
	movslq	18480(%r12), %rax
	shlq	$5, %rax
	movl	18492(%r12), %ecx
	movl	$99000, %edx            # imm = 0x182B8
	movq	396472(%r15), %rsi
	addq	%rdx, %rsi
	movq	%rsi, (%rsp)
	movq	396480(%r15), %rsi
	addq	%rdx, %rsi
	movq	%rsi, 8(%rsp)
	addq	396488(%r15), %rdx
	cmpl	$0, %ecx
	movq	htable+24(%rax), %rbp
	movq	%rdx, 16(%rsp)
	movq	%r15, 24(%rsp)
	je	.LBB19_2
# BB#1:                                 # %for.cond.preheader
	addq	$3, %r13
	movq	%r13, 32(%rsp)
	movl	$1, 40(%rsp)
	leaq	445996(%r15), %rbx
	movq	%rbx, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 64(%rsp)
	movl	$255, 80(%rsp)
	jmp	.LBB19_9
.LBB19_2:                               # %for.cond.17.preheader
	movl	$8, 40(%rsp)
	leaq	3(%r13), %rax
	movq	%rax, 32(%rsp)
	leaq	445996(%r15), %rbx
	movq	%rbx, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 64(%rsp)
	movl	$255, 80(%rsp)
	leaq	24(%rsp), %rdi
	movl	%r14d, %esi
	callq	*%rbp
	movl	$66000, %eax            # imm = 0x101D0
	movq	396472(%r15), %rcx
	addq	%rax, %rcx
	movq	%rcx, (%rsp)
	movq	396480(%r15), %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%rsp)
	addq	396488(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	movl	$8, 40(%rsp)
	leaq	2(%r13), %rax
	movq	%rax, 32(%rsp)
	leaq	429496(%r15), %rax
	movq	%rax, 48(%rsp)
	cmpl	$0, 18496(%r12)
	movq	%rbx, %rax
	jne	.LBB19_4
# BB#3:                                 # %select.mid
	xorl	%eax, %eax
.LBB19_4:                               # %select.end
	movq	%rax, 56(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 64(%rsp)
	movl	$255, 80(%rsp)
	leaq	24(%rsp), %rdi
	movl	%r14d, %esi
	callq	*%rbp
	movq	396472(%r15), %rax
	movq	%rax, (%rsp)
	movq	396480(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	396488(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	%r13, 32(%rsp)
	leaq	396496(%r15), %rax
	movq	%rax, 48(%rsp)
	cmpl	$0, 18496(%r12)
	movq	%rbx, %rax
	jne	.LBB19_6
# BB#5:                                 # %select.mid1441
	xorl	%eax, %eax
.LBB19_6:                               # %select.end1440
	movq	%rax, 56(%rsp)
	movl	18500(%r12), %eax
	movl	%eax, 80(%rsp)
	leaq	24(%rsp), %rdi
	movl	%r14d, %esi
	callq	*%rbp
	movl	$33000, %eax            # imm = 0x80E8
	movq	396472(%r15), %rcx
	addq	%rax, %rcx
	movq	%rcx, (%rsp)
	movq	396480(%r15), %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%rsp)
	addq	396488(%r15), %rax
	movq	%rax, 16(%rsp)
	incq	%r13
	movq	%r13, 32(%rsp)
	leaq	412996(%r15), %rax
	movq	%rax, 48(%rsp)
	cmpl	$0, 18496(%r12)
	movq	%rbx, %rax
	jne	.LBB19_8
# BB#7:                                 # %select.mid1473
	xorl	%eax, %eax
.LBB19_8:                               # %select.end1472
	movq	%rax, 56(%rsp)
	movl	18504(%r12), %eax
	movl	%eax, 80(%rsp)
.LBB19_9:                               # %if.end
	leaq	24(%rsp), %rdi
	movl	%r14d, %esi
	callq	*%rbp
	movl	%r14d, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	(%rax,%r14), %eax
	andl	$-256, %eax
	movl	%r14d, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	$1040, %rax, %r8        # imm = 0x410
	cmpl	$0, 18492(%r12)
	movl	20(%r15), %eax
	movl	28(%r15), %esi
	leaq	462496(%r15,%r8), %r10
	movq	$8250, 462496(%r15,%r8) # imm = 0x203A
	leaq	462500(%r15,%r8), %r9
	je	.LBB19_57
# BB#10:                                # %if.then.134
	cmpl	$1440, %eax             # imm = 0x5A0
	jne	.LBB19_43
# BB#11:                                # %if.then.136
	testl	%esi, %esi
	jle	.LBB19_29
# BB#12:                                # %for.body.lr.ph.i
	leaq	462504(%r15,%r8), %r11
	movl	$128, %edx
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB19_13:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB19_15
# BB#14:                                #   in Loop: Header=BB19_13 Depth=1
	movzbl	%cl, %ecx
	orl	%edx, %ecx
.LBB19_15:                              # %select.end1256
                                        #   in Loop: Header=BB19_13 Depth=1
	sarl	%edx
	jne	.LBB19_22
# BB#16:                                # %if.then.5.i
                                        #   in Loop: Header=BB19_13 Depth=1
	testb	%cl, %cl
	je	.LBB19_21
# BB#17:                                # %if.then.7.i
                                        #   in Loop: Header=BB19_13 Depth=1
	cmpl	%edi, (%r10)
	jle	.LBB19_19
# BB#18:                                # %if.then.11.i
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	%edi, (%r10)
.LBB19_19:                              # %if.end.13.i
                                        #   in Loop: Header=BB19_13 Depth=1
	cmpl	%edi, (%r9)
	jge	.LBB19_21
# BB#20:                                # %if.then.17.i
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	%edi, (%r9)
.LBB19_21:                              # %if.end.20.i
                                        #   in Loop: Header=BB19_13 Depth=1
	movb	%cl, (%r11)
	incq	%r11
	incl	%edi
	movl	$128, %edx
	xorl	%ecx, %ecx
.LBB19_22:                              # %for.inc.i
                                        #   in Loop: Header=BB19_13 Depth=1
	addq	$2, %rbp
	cmpl	%esi, %ebp
	jl	.LBB19_13
# BB#23:                                # %for.end.i
	cmpl	$128, %edx
	je	.LBB19_29
# BB#24:                                # %if.then.24.i
	movb	%cl, (%r11)
	testb	%cl, %cl
	je	.LBB19_29
# BB#25:                                # %if.then.26.i
	cmpl	%edi, (%r10)
	jle	.LBB19_27
# BB#26:                                # %if.then.30.i
	movl	%edi, (%r10)
.LBB19_27:                              # %if.end.32.i
	cmpl	%edi, (%r9)
	jge	.LBB19_29
# BB#28:                                # %if.then.36.i
	movl	%edi, (%r9)
.LBB19_29:                              # %PackLine.exit
	movl	28(%r15), %esi
	movl	$8250, 2059936(%r15,%r8) # imm = 0x203A
	movl	$0, 2059940(%r15,%r8)
	cmpl	$2, %esi
	jl	.LBB19_379
# BB#30:                                # %for.body.lr.ph.i.146
	decl	%esi
	leaq	2059936(%r15,%r8), %r10
	leaq	2059940(%r15,%r8), %r9
	leaq	2059944(%r15,%r8), %rdi
	movl	$128, %ecx
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_31:                              # %for.body.i.161
                                        # =>This Inner Loop Header: Depth=1
	movzbl	445997(%r15,%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB19_33
# BB#32:                                #   in Loop: Header=BB19_31 Depth=1
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
.LBB19_33:                              # %select.end1265
                                        #   in Loop: Header=BB19_31 Depth=1
	sarl	%ecx
	jne	.LBB19_40
# BB#34:                                # %if.then.5.i.163
                                        #   in Loop: Header=BB19_31 Depth=1
	testb	%bl, %bl
	je	.LBB19_39
# BB#35:                                # %if.then.7.i.165
                                        #   in Loop: Header=BB19_31 Depth=1
	cmpl	%eax, (%r10)
	jle	.LBB19_37
# BB#36:                                # %if.then.11.i.166
                                        #   in Loop: Header=BB19_31 Depth=1
	movl	%eax, (%r10)
.LBB19_37:                              # %if.end.13.i.168
                                        #   in Loop: Header=BB19_31 Depth=1
	cmpl	%eax, (%r9)
	jge	.LBB19_39
# BB#38:                                # %if.then.17.i.169
                                        #   in Loop: Header=BB19_31 Depth=1
	movl	%eax, (%r9)
.LBB19_39:                              # %if.end.20.i.172
                                        #   in Loop: Header=BB19_31 Depth=1
	movb	%bl, (%rdi)
	incq	%rdi
	incl	%eax
	movl	$128, %ecx
	xorl	%ebx, %ebx
.LBB19_40:                              # %for.inc.i.180
                                        #   in Loop: Header=BB19_31 Depth=1
	addq	$2, %rbp
	cmpl	%esi, %ebp
	jl	.LBB19_31
# BB#41:                                # %for.end.i.182
	cmpl	$128, %ecx
	je	.LBB19_379
# BB#42:                                # %if.then.24.i.184
	movb	%bl, (%rdi)
	testb	%bl, %bl
	jne	.LBB19_375
	jmp	.LBB19_379
.LBB19_57:                              # %if.else.169
	cmpl	$1440, %eax             # imm = 0x5A0
	jne	.LBB19_270
# BB#58:                                # %if.then.172
	testl	%esi, %esi
	jle	.LBB19_76
# BB#59:                                # %for.body.lr.ph.i.1046
	leaq	462504(%r15,%r8), %r11
	movl	$128, %edx
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB19_60:                              # %for.body.i.1061
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB19_62
# BB#61:                                #   in Loop: Header=BB19_60 Depth=1
	movzbl	%cl, %ecx
	orl	%edx, %ecx
.LBB19_62:                              # %select.end1269
                                        #   in Loop: Header=BB19_60 Depth=1
	sarl	%edx
	jne	.LBB19_69
# BB#63:                                # %if.then.5.i.1063
                                        #   in Loop: Header=BB19_60 Depth=1
	testb	%cl, %cl
	je	.LBB19_68
# BB#64:                                # %if.then.7.i.1065
                                        #   in Loop: Header=BB19_60 Depth=1
	cmpl	%edi, (%r10)
	jle	.LBB19_66
# BB#65:                                # %if.then.11.i.1066
                                        #   in Loop: Header=BB19_60 Depth=1
	movl	%edi, (%r10)
.LBB19_66:                              # %if.end.13.i.1068
                                        #   in Loop: Header=BB19_60 Depth=1
	cmpl	%edi, (%r9)
	jge	.LBB19_68
# BB#67:                                # %if.then.17.i.1069
                                        #   in Loop: Header=BB19_60 Depth=1
	movl	%edi, (%r9)
.LBB19_68:                              # %if.end.20.i.1072
                                        #   in Loop: Header=BB19_60 Depth=1
	movb	%cl, (%r11)
	incq	%r11
	incl	%edi
	movl	$128, %edx
	xorl	%ecx, %ecx
.LBB19_69:                              # %for.inc.i.1080
                                        #   in Loop: Header=BB19_60 Depth=1
	addq	$2, %rbp
	cmpl	%esi, %ebp
	jl	.LBB19_60
# BB#70:                                # %for.end.i.1082
	cmpl	$128, %edx
	je	.LBB19_76
# BB#71:                                # %if.then.24.i.1084
	movb	%cl, (%r11)
	testb	%cl, %cl
	je	.LBB19_76
# BB#72:                                # %if.then.26.i.1086
	cmpl	%edi, (%r10)
	jle	.LBB19_74
# BB#73:                                # %if.then.30.i.1087
	movl	%edi, (%r10)
.LBB19_74:                              # %if.end.32.i.1089
	cmpl	%edi, (%r9)
	jge	.LBB19_76
# BB#75:                                # %if.then.36.i.1090
	movl	%edi, (%r9)
.LBB19_76:                              # %PackLine.exit1091
	movl	28(%r15), %edi
	movl	$8250, 2059936(%r15,%r8) # imm = 0x203A
	movl	$0, 2059940(%r15,%r8)
	cmpl	$2, %edi
	jl	.LBB19_94
# BB#77:                                # %for.body.lr.ph.i.996
	decl	%edi
	leaq	2059936(%r15,%r8), %r10
	leaq	2059940(%r15,%r8), %r9
	leaq	2059944(%r15,%r8), %rax
	movl	$128, %ecx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_78:                              # %for.body.i.1011
                                        # =>This Inner Loop Header: Depth=1
	movzbl	445997(%r15,%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB19_80
# BB#79:                                #   in Loop: Header=BB19_78 Depth=1
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
.LBB19_80:                              # %select.end1278
                                        #   in Loop: Header=BB19_78 Depth=1
	sarl	%ecx
	jne	.LBB19_87
# BB#81:                                # %if.then.5.i.1013
                                        #   in Loop: Header=BB19_78 Depth=1
	testb	%bl, %bl
	je	.LBB19_86
# BB#82:                                # %if.then.7.i.1015
                                        #   in Loop: Header=BB19_78 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_84
# BB#83:                                # %if.then.11.i.1016
                                        #   in Loop: Header=BB19_78 Depth=1
	movl	%esi, (%r10)
.LBB19_84:                              # %if.end.13.i.1018
                                        #   in Loop: Header=BB19_78 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_86
# BB#85:                                # %if.then.17.i.1019
                                        #   in Loop: Header=BB19_78 Depth=1
	movl	%esi, (%r9)
.LBB19_86:                              # %if.end.20.i.1022
                                        #   in Loop: Header=BB19_78 Depth=1
	movb	%bl, (%rax)
	incq	%rax
	incl	%esi
	movl	$128, %ecx
	xorl	%ebx, %ebx
.LBB19_87:                              # %for.inc.i.1030
                                        #   in Loop: Header=BB19_78 Depth=1
	addq	$2, %rbp
	cmpl	%edi, %ebp
	jl	.LBB19_78
# BB#88:                                # %for.end.i.1032
	cmpl	$128, %ecx
	je	.LBB19_94
# BB#89:                                # %if.then.24.i.1034
	movb	%bl, (%rax)
	testb	%bl, %bl
	je	.LBB19_94
# BB#90:                                # %if.then.26.i.1036
	cmpl	%esi, (%r10)
	jle	.LBB19_92
# BB#91:                                # %if.then.30.i.1037
	movl	%esi, (%r10)
.LBB19_92:                              # %if.end.32.i.1039
	cmpl	%esi, (%r9)
	jge	.LBB19_94
# BB#93:                                # %if.then.36.i.1040
	movl	%esi, (%r9)
.LBB19_94:                              # %PackLine.exit1041
	movl	28(%r15), %eax
	movl	$8250, 728736(%r15,%r8) # imm = 0x203A
	movl	$0, 728740(%r15,%r8)
	testl	%eax, %eax
	jle	.LBB19_112
# BB#95:                                # %for.body.lr.ph.i.946
	leaq	728736(%r15,%r8), %r10
	leaq	728740(%r15,%r8), %r9
	leaq	728744(%r15,%r8), %rdi
	movl	$128, %ecx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_96:                              # %for.body.i.961
                                        # =>This Inner Loop Header: Depth=1
	movzbl	396496(%r15,%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB19_98
# BB#97:                                #   in Loop: Header=BB19_96 Depth=1
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
.LBB19_98:                              # %select.end1287
                                        #   in Loop: Header=BB19_96 Depth=1
	sarl	%ecx
	jne	.LBB19_105
# BB#99:                                # %if.then.5.i.963
                                        #   in Loop: Header=BB19_96 Depth=1
	testb	%bl, %bl
	je	.LBB19_104
# BB#100:                               # %if.then.7.i.965
                                        #   in Loop: Header=BB19_96 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_102
# BB#101:                               # %if.then.11.i.966
                                        #   in Loop: Header=BB19_96 Depth=1
	movl	%esi, (%r10)
.LBB19_102:                             # %if.end.13.i.968
                                        #   in Loop: Header=BB19_96 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_104
# BB#103:                               # %if.then.17.i.969
                                        #   in Loop: Header=BB19_96 Depth=1
	movl	%esi, (%r9)
.LBB19_104:                             # %if.end.20.i.972
                                        #   in Loop: Header=BB19_96 Depth=1
	movb	%bl, (%rdi)
	incq	%rdi
	incl	%esi
	movl	$128, %ecx
	xorl	%ebx, %ebx
.LBB19_105:                             # %for.inc.i.980
                                        #   in Loop: Header=BB19_96 Depth=1
	addq	$2, %rbp
	cmpl	%eax, %ebp
	jl	.LBB19_96
# BB#106:                               # %for.end.i.982
	cmpl	$128, %ecx
	je	.LBB19_112
# BB#107:                               # %if.then.24.i.984
	movb	%bl, (%rdi)
	testb	%bl, %bl
	je	.LBB19_112
# BB#108:                               # %if.then.26.i.986
	cmpl	%esi, (%r10)
	jle	.LBB19_110
# BB#109:                               # %if.then.30.i.987
	movl	%esi, (%r10)
.LBB19_110:                             # %if.end.32.i.989
	cmpl	%esi, (%r9)
	jge	.LBB19_112
# BB#111:                               # %if.then.36.i.990
	movl	%esi, (%r9)
.LBB19_112:                             # %PackLine.exit991
	movl	28(%r15), %edi
	movl	$8250, 2326176(%r15,%r8) # imm = 0x203A
	movl	$0, 2326180(%r15,%r8)
	cmpl	$2, %edi
	jl	.LBB19_130
# BB#113:                               # %for.body.lr.ph.i.896
	decl	%edi
	leaq	2326176(%r15,%r8), %r10
	leaq	2326180(%r15,%r8), %r9
	leaq	2326184(%r15,%r8), %rax
	movl	$128, %ecx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_114:                             # %for.body.i.911
                                        # =>This Inner Loop Header: Depth=1
	movzbl	396497(%r15,%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB19_116
# BB#115:                               #   in Loop: Header=BB19_114 Depth=1
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
.LBB19_116:                             # %select.end1296
                                        #   in Loop: Header=BB19_114 Depth=1
	sarl	%ecx
	jne	.LBB19_123
# BB#117:                               # %if.then.5.i.913
                                        #   in Loop: Header=BB19_114 Depth=1
	testb	%bl, %bl
	je	.LBB19_122
# BB#118:                               # %if.then.7.i.915
                                        #   in Loop: Header=BB19_114 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_120
# BB#119:                               # %if.then.11.i.916
                                        #   in Loop: Header=BB19_114 Depth=1
	movl	%esi, (%r10)
.LBB19_120:                             # %if.end.13.i.918
                                        #   in Loop: Header=BB19_114 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_122
# BB#121:                               # %if.then.17.i.919
                                        #   in Loop: Header=BB19_114 Depth=1
	movl	%esi, (%r9)
.LBB19_122:                             # %if.end.20.i.922
                                        #   in Loop: Header=BB19_114 Depth=1
	movb	%bl, (%rax)
	incq	%rax
	incl	%esi
	movl	$128, %ecx
	xorl	%ebx, %ebx
.LBB19_123:                             # %for.inc.i.930
                                        #   in Loop: Header=BB19_114 Depth=1
	addq	$2, %rbp
	cmpl	%edi, %ebp
	jl	.LBB19_114
# BB#124:                               # %for.end.i.932
	cmpl	$128, %ecx
	je	.LBB19_130
# BB#125:                               # %if.then.24.i.934
	movb	%bl, (%rax)
	testb	%bl, %bl
	je	.LBB19_130
# BB#126:                               # %if.then.26.i.936
	cmpl	%esi, (%r10)
	jle	.LBB19_128
# BB#127:                               # %if.then.30.i.937
	movl	%esi, (%r10)
.LBB19_128:                             # %if.end.32.i.939
	cmpl	%esi, (%r9)
	jge	.LBB19_130
# BB#129:                               # %if.then.36.i.940
	movl	%esi, (%r9)
.LBB19_130:                             # %PackLine.exit941
	movl	28(%r15), %eax
	movl	$8250, 994976(%r15,%r8) # imm = 0x203A
	movl	$0, 994980(%r15,%r8)
	testl	%eax, %eax
	jle	.LBB19_148
# BB#131:                               # %for.body.lr.ph.i.846
	leaq	994976(%r15,%r8), %r10
	leaq	994980(%r15,%r8), %r9
	leaq	994984(%r15,%r8), %rdi
	movl	$128, %ecx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_132:                             # %for.body.i.861
                                        # =>This Inner Loop Header: Depth=1
	movzbl	412996(%r15,%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB19_134
# BB#133:                               #   in Loop: Header=BB19_132 Depth=1
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
.LBB19_134:                             # %select.end1305
                                        #   in Loop: Header=BB19_132 Depth=1
	sarl	%ecx
	jne	.LBB19_141
# BB#135:                               # %if.then.5.i.863
                                        #   in Loop: Header=BB19_132 Depth=1
	testb	%bl, %bl
	je	.LBB19_140
# BB#136:                               # %if.then.7.i.865
                                        #   in Loop: Header=BB19_132 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_138
# BB#137:                               # %if.then.11.i.866
                                        #   in Loop: Header=BB19_132 Depth=1
	movl	%esi, (%r10)
.LBB19_138:                             # %if.end.13.i.868
                                        #   in Loop: Header=BB19_132 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_140
# BB#139:                               # %if.then.17.i.869
                                        #   in Loop: Header=BB19_132 Depth=1
	movl	%esi, (%r9)
.LBB19_140:                             # %if.end.20.i.872
                                        #   in Loop: Header=BB19_132 Depth=1
	movb	%bl, (%rdi)
	incq	%rdi
	incl	%esi
	movl	$128, %ecx
	xorl	%ebx, %ebx
.LBB19_141:                             # %for.inc.i.880
                                        #   in Loop: Header=BB19_132 Depth=1
	addq	$2, %rbp
	cmpl	%eax, %ebp
	jl	.LBB19_132
# BB#142:                               # %for.end.i.882
	cmpl	$128, %ecx
	je	.LBB19_148
# BB#143:                               # %if.then.24.i.884
	movb	%bl, (%rdi)
	testb	%bl, %bl
	je	.LBB19_148
# BB#144:                               # %if.then.26.i.886
	cmpl	%esi, (%r10)
	jle	.LBB19_146
# BB#145:                               # %if.then.30.i.887
	movl	%esi, (%r10)
.LBB19_146:                             # %if.end.32.i.889
	cmpl	%esi, (%r9)
	jge	.LBB19_148
# BB#147:                               # %if.then.36.i.890
	movl	%esi, (%r9)
.LBB19_148:                             # %PackLine.exit891
	movl	28(%r15), %edi
	movl	$8250, 2592416(%r15,%r8) # imm = 0x203A
	movl	$0, 2592420(%r15,%r8)
	cmpl	$2, %edi
	jl	.LBB19_166
# BB#149:                               # %for.body.lr.ph.i.796
	decl	%edi
	leaq	2592416(%r15,%r8), %r10
	leaq	2592420(%r15,%r8), %r9
	leaq	2592424(%r15,%r8), %rax
	movl	$128, %ecx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_150:                             # %for.body.i.811
                                        # =>This Inner Loop Header: Depth=1
	movzbl	412997(%r15,%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB19_152
# BB#151:                               #   in Loop: Header=BB19_150 Depth=1
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
.LBB19_152:                             # %select.end1314
                                        #   in Loop: Header=BB19_150 Depth=1
	sarl	%ecx
	jne	.LBB19_159
# BB#153:                               # %if.then.5.i.813
                                        #   in Loop: Header=BB19_150 Depth=1
	testb	%bl, %bl
	je	.LBB19_158
# BB#154:                               # %if.then.7.i.815
                                        #   in Loop: Header=BB19_150 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_156
# BB#155:                               # %if.then.11.i.816
                                        #   in Loop: Header=BB19_150 Depth=1
	movl	%esi, (%r10)
.LBB19_156:                             # %if.end.13.i.818
                                        #   in Loop: Header=BB19_150 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_158
# BB#157:                               # %if.then.17.i.819
                                        #   in Loop: Header=BB19_150 Depth=1
	movl	%esi, (%r9)
.LBB19_158:                             # %if.end.20.i.822
                                        #   in Loop: Header=BB19_150 Depth=1
	movb	%bl, (%rax)
	incq	%rax
	incl	%esi
	movl	$128, %ecx
	xorl	%ebx, %ebx
.LBB19_159:                             # %for.inc.i.830
                                        #   in Loop: Header=BB19_150 Depth=1
	addq	$2, %rbp
	cmpl	%edi, %ebp
	jl	.LBB19_150
# BB#160:                               # %for.end.i.832
	cmpl	$128, %ecx
	je	.LBB19_166
# BB#161:                               # %if.then.24.i.834
	movb	%bl, (%rax)
	testb	%bl, %bl
	je	.LBB19_166
# BB#162:                               # %if.then.26.i.836
	cmpl	%esi, (%r10)
	jle	.LBB19_164
# BB#163:                               # %if.then.30.i.837
	movl	%esi, (%r10)
.LBB19_164:                             # %if.end.32.i.839
	cmpl	%esi, (%r9)
	jge	.LBB19_166
# BB#165:                               # %if.then.36.i.840
	movl	%esi, (%r9)
.LBB19_166:                             # %PackLine.exit841
	movl	28(%r15), %eax
	movl	$8250, 1261216(%r15,%r8) # imm = 0x203A
	movl	$0, 1261220(%r15,%r8)
	testl	%eax, %eax
	jle	.LBB19_184
# BB#167:                               # %for.body.lr.ph.i.746
	leaq	1261216(%r15,%r8), %r10
	leaq	1261220(%r15,%r8), %r9
	leaq	1261224(%r15,%r8), %rdi
	movl	$128, %ecx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_168:                             # %for.body.i.761
                                        # =>This Inner Loop Header: Depth=1
	movzbl	429496(%r15,%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB19_170
# BB#169:                               #   in Loop: Header=BB19_168 Depth=1
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
.LBB19_170:                             # %select.end1323
                                        #   in Loop: Header=BB19_168 Depth=1
	sarl	%ecx
	jne	.LBB19_177
# BB#171:                               # %if.then.5.i.763
                                        #   in Loop: Header=BB19_168 Depth=1
	testb	%bl, %bl
	je	.LBB19_176
# BB#172:                               # %if.then.7.i.765
                                        #   in Loop: Header=BB19_168 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_174
# BB#173:                               # %if.then.11.i.766
                                        #   in Loop: Header=BB19_168 Depth=1
	movl	%esi, (%r10)
.LBB19_174:                             # %if.end.13.i.768
                                        #   in Loop: Header=BB19_168 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_176
# BB#175:                               # %if.then.17.i.769
                                        #   in Loop: Header=BB19_168 Depth=1
	movl	%esi, (%r9)
.LBB19_176:                             # %if.end.20.i.772
                                        #   in Loop: Header=BB19_168 Depth=1
	movb	%bl, (%rdi)
	incq	%rdi
	incl	%esi
	movl	$128, %ecx
	xorl	%ebx, %ebx
.LBB19_177:                             # %for.inc.i.780
                                        #   in Loop: Header=BB19_168 Depth=1
	addq	$2, %rbp
	cmpl	%eax, %ebp
	jl	.LBB19_168
# BB#178:                               # %for.end.i.782
	cmpl	$128, %ecx
	je	.LBB19_184
# BB#179:                               # %if.then.24.i.784
	movb	%bl, (%rdi)
	testb	%bl, %bl
	je	.LBB19_184
# BB#180:                               # %if.then.26.i.786
	cmpl	%esi, (%r10)
	jle	.LBB19_182
# BB#181:                               # %if.then.30.i.787
	movl	%esi, (%r10)
.LBB19_182:                             # %if.end.32.i.789
	cmpl	%esi, (%r9)
	jge	.LBB19_184
# BB#183:                               # %if.then.36.i.790
	movl	%esi, (%r9)
.LBB19_184:                             # %PackLine.exit791
	movl	28(%r15), %edi
	movl	$8250, 2858656(%r15,%r8) # imm = 0x203A
	movl	$0, 2858660(%r15,%r8)
	cmpl	$2, %edi
	jl	.LBB19_202
# BB#185:                               # %for.body.lr.ph.i.696
	decl	%edi
	leaq	2858656(%r15,%r8), %r10
	leaq	2858660(%r15,%r8), %r9
	leaq	2858664(%r15,%r8), %rax
	movl	$128, %ecx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_186:                             # %for.body.i.711
                                        # =>This Inner Loop Header: Depth=1
	movzbl	429497(%r15,%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB19_188
# BB#187:                               #   in Loop: Header=BB19_186 Depth=1
	movzbl	%bl, %ebx
	orl	%ecx, %ebx
.LBB19_188:                             # %select.end1332
                                        #   in Loop: Header=BB19_186 Depth=1
	sarl	%ecx
	jne	.LBB19_195
# BB#189:                               # %if.then.5.i.713
                                        #   in Loop: Header=BB19_186 Depth=1
	testb	%bl, %bl
	je	.LBB19_194
# BB#190:                               # %if.then.7.i.715
                                        #   in Loop: Header=BB19_186 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_192
# BB#191:                               # %if.then.11.i.716
                                        #   in Loop: Header=BB19_186 Depth=1
	movl	%esi, (%r10)
.LBB19_192:                             # %if.end.13.i.718
                                        #   in Loop: Header=BB19_186 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_194
# BB#193:                               # %if.then.17.i.719
                                        #   in Loop: Header=BB19_186 Depth=1
	movl	%esi, (%r9)
.LBB19_194:                             # %if.end.20.i.722
                                        #   in Loop: Header=BB19_186 Depth=1
	movb	%bl, (%rax)
	incq	%rax
	incl	%esi
	movl	$128, %ecx
	xorl	%ebx, %ebx
.LBB19_195:                             # %for.inc.i.730
                                        #   in Loop: Header=BB19_186 Depth=1
	addq	$2, %rbp
	cmpl	%edi, %ebp
	jl	.LBB19_186
# BB#196:                               # %for.end.i.732
	cmpl	$128, %ecx
	je	.LBB19_202
# BB#197:                               # %if.then.24.i.734
	movb	%bl, (%rax)
	testb	%bl, %bl
	je	.LBB19_202
# BB#198:                               # %if.then.26.i.736
	cmpl	%esi, (%r10)
	jle	.LBB19_200
# BB#199:                               # %if.then.30.i.737
	movl	%esi, (%r10)
.LBB19_200:                             # %if.end.32.i.739
	cmpl	%esi, (%r9)
	jge	.LBB19_202
# BB#201:                               # %if.then.36.i.740
	movl	%esi, (%r9)
.LBB19_202:                             # %PackLine.exit741
	movl	28(%r15), %eax
	movl	18500(%r12), %r11d
	movq	$8250, 1527456(%r15,%r8) # imm = 0x203A
	testl	%eax, %eax
	jle	.LBB19_220
# BB#203:                               # %for.body.lr.ph.i.646
	leaq	1527456(%r15,%r8), %r10
	leaq	1527460(%r15,%r8), %r9
	leaq	1527464(%r15,%r8), %rbp
	movl	$128, %edx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB19_204:                             # %for.body.i.661
                                        # =>This Inner Loop Header: Depth=1
	movzbl	396496(%r15,%rbx), %edi
	cmpl	%r11d, %edi
	jne	.LBB19_206
# BB#205:                               #   in Loop: Header=BB19_204 Depth=1
	movzbl	%cl, %ecx
	orl	%edx, %ecx
.LBB19_206:                             # %select.end1341
                                        #   in Loop: Header=BB19_204 Depth=1
	sarl	%edx
	jne	.LBB19_213
# BB#207:                               # %if.then.5.i.663
                                        #   in Loop: Header=BB19_204 Depth=1
	testb	%cl, %cl
	je	.LBB19_212
# BB#208:                               # %if.then.7.i.665
                                        #   in Loop: Header=BB19_204 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_210
# BB#209:                               # %if.then.11.i.666
                                        #   in Loop: Header=BB19_204 Depth=1
	movl	%esi, (%r10)
.LBB19_210:                             # %if.end.13.i.668
                                        #   in Loop: Header=BB19_204 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_212
# BB#211:                               # %if.then.17.i.669
                                        #   in Loop: Header=BB19_204 Depth=1
	movl	%esi, (%r9)
.LBB19_212:                             # %if.end.20.i.672
                                        #   in Loop: Header=BB19_204 Depth=1
	movb	%cl, (%rbp)
	incq	%rbp
	incl	%esi
	movl	$128, %edx
	xorl	%ecx, %ecx
.LBB19_213:                             # %for.inc.i.680
                                        #   in Loop: Header=BB19_204 Depth=1
	addq	$2, %rbx
	cmpl	%eax, %ebx
	jl	.LBB19_204
# BB#214:                               # %for.end.i.682
	cmpl	$128, %edx
	je	.LBB19_220
# BB#215:                               # %if.then.24.i.684
	movb	%cl, (%rbp)
	testb	%cl, %cl
	je	.LBB19_220
# BB#216:                               # %if.then.26.i.686
	cmpl	%esi, (%r10)
	jle	.LBB19_218
# BB#217:                               # %if.then.30.i.687
	movl	%esi, (%r10)
.LBB19_218:                             # %if.end.32.i.689
	cmpl	%esi, (%r9)
	jge	.LBB19_220
# BB#219:                               # %if.then.36.i.690
	movl	%esi, (%r9)
.LBB19_220:                             # %PackLine.exit691
	movl	28(%r15), %edi
	movl	18500(%r12), %r11d
	movq	$8250, 3124896(%r15,%r8) # imm = 0x203A
	cmpl	$2, %edi
	jl	.LBB19_238
# BB#221:                               # %for.body.lr.ph.i.596
	decl	%edi
	leaq	3124896(%r15,%r8), %r10
	leaq	3124900(%r15,%r8), %r9
	leaq	3124904(%r15,%r8), %rbp
	movl	$128, %edx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB19_222:                             # %for.body.i.611
                                        # =>This Inner Loop Header: Depth=1
	movzbl	396497(%r15,%rbx), %eax
	cmpl	%r11d, %eax
	jne	.LBB19_224
# BB#223:                               #   in Loop: Header=BB19_222 Depth=1
	movzbl	%cl, %ecx
	orl	%edx, %ecx
.LBB19_224:                             # %select.end1353
                                        #   in Loop: Header=BB19_222 Depth=1
	sarl	%edx
	jne	.LBB19_231
# BB#225:                               # %if.then.5.i.613
                                        #   in Loop: Header=BB19_222 Depth=1
	testb	%cl, %cl
	je	.LBB19_230
# BB#226:                               # %if.then.7.i.615
                                        #   in Loop: Header=BB19_222 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_228
# BB#227:                               # %if.then.11.i.616
                                        #   in Loop: Header=BB19_222 Depth=1
	movl	%esi, (%r10)
.LBB19_228:                             # %if.end.13.i.618
                                        #   in Loop: Header=BB19_222 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_230
# BB#229:                               # %if.then.17.i.619
                                        #   in Loop: Header=BB19_222 Depth=1
	movl	%esi, (%r9)
.LBB19_230:                             # %if.end.20.i.622
                                        #   in Loop: Header=BB19_222 Depth=1
	movb	%cl, (%rbp)
	incq	%rbp
	incl	%esi
	movl	$128, %edx
	xorl	%ecx, %ecx
.LBB19_231:                             # %for.inc.i.630
                                        #   in Loop: Header=BB19_222 Depth=1
	addq	$2, %rbx
	cmpl	%edi, %ebx
	jl	.LBB19_222
# BB#232:                               # %for.end.i.632
	cmpl	$128, %edx
	je	.LBB19_238
# BB#233:                               # %if.then.24.i.634
	movb	%cl, (%rbp)
	testb	%cl, %cl
	je	.LBB19_238
# BB#234:                               # %if.then.26.i.636
	cmpl	%esi, (%r10)
	jle	.LBB19_236
# BB#235:                               # %if.then.30.i.637
	movl	%esi, (%r10)
.LBB19_236:                             # %if.end.32.i.639
	cmpl	%esi, (%r9)
	jge	.LBB19_238
# BB#237:                               # %if.then.36.i.640
	movl	%esi, (%r9)
.LBB19_238:                             # %PackLine.exit641
	movl	28(%r15), %eax
	movl	18504(%r12), %r11d
	movq	$8250, 1793696(%r15,%r8) # imm = 0x203A
	testl	%eax, %eax
	jle	.LBB19_256
# BB#239:                               # %for.body.lr.ph.i.546
	leaq	1793696(%r15,%r8), %r10
	leaq	1793700(%r15,%r8), %r9
	leaq	1793704(%r15,%r8), %rbp
	movl	$128, %edx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB19_240:                             # %for.body.i.561
                                        # =>This Inner Loop Header: Depth=1
	movzbl	412996(%r15,%rbx), %edi
	cmpl	%r11d, %edi
	jne	.LBB19_242
# BB#241:                               #   in Loop: Header=BB19_240 Depth=1
	movzbl	%cl, %ecx
	orl	%edx, %ecx
.LBB19_242:                             # %select.end1362
                                        #   in Loop: Header=BB19_240 Depth=1
	sarl	%edx
	jne	.LBB19_249
# BB#243:                               # %if.then.5.i.563
                                        #   in Loop: Header=BB19_240 Depth=1
	testb	%cl, %cl
	je	.LBB19_248
# BB#244:                               # %if.then.7.i.565
                                        #   in Loop: Header=BB19_240 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_246
# BB#245:                               # %if.then.11.i.566
                                        #   in Loop: Header=BB19_240 Depth=1
	movl	%esi, (%r10)
.LBB19_246:                             # %if.end.13.i.568
                                        #   in Loop: Header=BB19_240 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_248
# BB#247:                               # %if.then.17.i.569
                                        #   in Loop: Header=BB19_240 Depth=1
	movl	%esi, (%r9)
.LBB19_248:                             # %if.end.20.i.572
                                        #   in Loop: Header=BB19_240 Depth=1
	movb	%cl, (%rbp)
	incq	%rbp
	incl	%esi
	movl	$128, %edx
	xorl	%ecx, %ecx
.LBB19_249:                             # %for.inc.i.580
                                        #   in Loop: Header=BB19_240 Depth=1
	addq	$2, %rbx
	cmpl	%eax, %ebx
	jl	.LBB19_240
# BB#250:                               # %for.end.i.582
	cmpl	$128, %edx
	je	.LBB19_256
# BB#251:                               # %if.then.24.i.584
	movb	%cl, (%rbp)
	testb	%cl, %cl
	je	.LBB19_256
# BB#252:                               # %if.then.26.i.586
	cmpl	%esi, (%r10)
	jle	.LBB19_254
# BB#253:                               # %if.then.30.i.587
	movl	%esi, (%r10)
.LBB19_254:                             # %if.end.32.i.589
	cmpl	%esi, (%r9)
	jge	.LBB19_256
# BB#255:                               # %if.then.36.i.590
	movl	%esi, (%r9)
.LBB19_256:                             # %PackLine.exit591
	movl	28(%r15), %esi
	movl	18504(%r12), %r11d
	movq	$8250, 3391136(%r15,%r8) # imm = 0x203A
	cmpl	$2, %esi
	jl	.LBB19_379
# BB#257:                               # %for.body.lr.ph.i.496
	decl	%esi
	leaq	3391136(%r15,%r8), %r10
	leaq	3391140(%r15,%r8), %r9
	leaq	3391144(%r15,%r8), %rbp
	movl	$128, %edx
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB19_258:                             # %for.body.i.511
                                        # =>This Inner Loop Header: Depth=1
	movzbl	412997(%r15,%rbx), %edi
	cmpl	%r11d, %edi
	jne	.LBB19_260
# BB#259:                               #   in Loop: Header=BB19_258 Depth=1
	movzbl	%cl, %ecx
	orl	%edx, %ecx
.LBB19_260:                             # %select.end1374
                                        #   in Loop: Header=BB19_258 Depth=1
	sarl	%edx
	jne	.LBB19_267
# BB#261:                               # %if.then.5.i.513
                                        #   in Loop: Header=BB19_258 Depth=1
	testb	%cl, %cl
	je	.LBB19_266
# BB#262:                               # %if.then.7.i.515
                                        #   in Loop: Header=BB19_258 Depth=1
	cmpl	%eax, (%r10)
	jle	.LBB19_264
# BB#263:                               # %if.then.11.i.516
                                        #   in Loop: Header=BB19_258 Depth=1
	movl	%eax, (%r10)
.LBB19_264:                             # %if.end.13.i.518
                                        #   in Loop: Header=BB19_258 Depth=1
	cmpl	%eax, (%r9)
	jge	.LBB19_266
# BB#265:                               # %if.then.17.i.519
                                        #   in Loop: Header=BB19_258 Depth=1
	movl	%eax, (%r9)
.LBB19_266:                             # %if.end.20.i.522
                                        #   in Loop: Header=BB19_258 Depth=1
	movb	%cl, (%rbp)
	incq	%rbp
	incl	%eax
	movl	$128, %edx
	xorl	%ecx, %ecx
.LBB19_267:                             # %for.inc.i.530
                                        #   in Loop: Header=BB19_258 Depth=1
	addq	$2, %rbx
	cmpl	%esi, %ebx
	jl	.LBB19_258
# BB#268:                               # %for.end.i.532
	cmpl	$128, %edx
	je	.LBB19_379
# BB#269:                               # %if.then.24.i.534
	movb	%cl, (%rbp)
	jmp	.LBB19_374
.LBB19_43:                              # %if.else.156
	testl	%esi, %esi
	jle	.LBB19_379
# BB#44:                                # %for.body.lr.ph.i.1096
	leaq	462504(%r15,%r8), %rdi
	movl	$128, %ecx
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB19_45:                              # %for.body.i.1111
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	cmpl	$255, %edx
	jne	.LBB19_47
# BB#46:                                #   in Loop: Header=BB19_45 Depth=1
	movzbl	%bpl, %ebp
	orl	%ecx, %ebp
.LBB19_47:                              # %select.end1267
                                        #   in Loop: Header=BB19_45 Depth=1
	sarl	%ecx
	jne	.LBB19_54
# BB#48:                                # %if.then.5.i.1113
                                        #   in Loop: Header=BB19_45 Depth=1
	testb	%bpl, %bpl
	je	.LBB19_53
# BB#49:                                # %if.then.7.i.1115
                                        #   in Loop: Header=BB19_45 Depth=1
	cmpl	%eax, (%r10)
	jle	.LBB19_51
# BB#50:                                # %if.then.11.i.1116
                                        #   in Loop: Header=BB19_45 Depth=1
	movl	%eax, (%r10)
.LBB19_51:                              # %if.end.13.i.1118
                                        #   in Loop: Header=BB19_45 Depth=1
	cmpl	%eax, (%r9)
	jge	.LBB19_53
# BB#52:                                # %if.then.17.i.1119
                                        #   in Loop: Header=BB19_45 Depth=1
	movl	%eax, (%r9)
.LBB19_53:                              # %if.end.20.i.1122
                                        #   in Loop: Header=BB19_45 Depth=1
	movb	%bpl, (%rdi)
	incq	%rdi
	incl	%eax
	movl	$128, %ecx
	xorl	%ebp, %ebp
.LBB19_54:                              # %for.inc.i.1130
                                        #   in Loop: Header=BB19_45 Depth=1
	incq	%rbx
	decl	%esi
	jne	.LBB19_45
# BB#55:                                # %for.end.i.1132
	cmpl	$128, %ecx
	je	.LBB19_379
# BB#56:                                # %if.then.24.i.1134
	movb	%bpl, (%rdi)
	testb	%bpl, %bpl
	jne	.LBB19_375
	jmp	.LBB19_379
.LBB19_270:                             # %if.else.321
	testl	%esi, %esi
	jle	.LBB19_288
# BB#271:                               # %for.body.lr.ph.i.446
	leaq	462504(%r15,%r8), %rax
	movl	$128, %ecx
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB19_272:                             # %for.body.i.461
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	cmpl	$255, %edx
	jne	.LBB19_274
# BB#273:                               #   in Loop: Header=BB19_272 Depth=1
	movzbl	%bpl, %ebp
	orl	%ecx, %ebp
.LBB19_274:                             # %select.end1376
                                        #   in Loop: Header=BB19_272 Depth=1
	sarl	%ecx
	jne	.LBB19_281
# BB#275:                               # %if.then.5.i.463
                                        #   in Loop: Header=BB19_272 Depth=1
	testb	%bpl, %bpl
	je	.LBB19_280
# BB#276:                               # %if.then.7.i.465
                                        #   in Loop: Header=BB19_272 Depth=1
	cmpl	%edi, (%r10)
	jle	.LBB19_278
# BB#277:                               # %if.then.11.i.466
                                        #   in Loop: Header=BB19_272 Depth=1
	movl	%edi, (%r10)
.LBB19_278:                             # %if.end.13.i.468
                                        #   in Loop: Header=BB19_272 Depth=1
	cmpl	%edi, (%r9)
	jge	.LBB19_280
# BB#279:                               # %if.then.17.i.469
                                        #   in Loop: Header=BB19_272 Depth=1
	movl	%edi, (%r9)
.LBB19_280:                             # %if.end.20.i.472
                                        #   in Loop: Header=BB19_272 Depth=1
	movb	%bpl, (%rax)
	incq	%rax
	incl	%edi
	movl	$128, %ecx
	xorl	%ebp, %ebp
.LBB19_281:                             # %for.inc.i.480
                                        #   in Loop: Header=BB19_272 Depth=1
	incq	%rbx
	decl	%esi
	jne	.LBB19_272
# BB#282:                               # %for.end.i.482
	cmpl	$128, %ecx
	je	.LBB19_288
# BB#283:                               # %if.then.24.i.484
	movb	%bpl, (%rax)
	testb	%bpl, %bpl
	je	.LBB19_288
# BB#284:                               # %if.then.26.i.486
	cmpl	%edi, (%r10)
	jle	.LBB19_286
# BB#285:                               # %if.then.30.i.487
	movl	%edi, (%r10)
.LBB19_286:                             # %if.end.32.i.489
	cmpl	%edi, (%r9)
	jge	.LBB19_288
# BB#287:                               # %if.then.36.i.490
	movl	%edi, (%r9)
.LBB19_288:                             # %PackLine.exit491
	movq	%r12, %r13
	leaq	396496(%r15), %rdi
	movl	28(%r15), %ebp
	movl	$8250, 728736(%r15,%r8) # imm = 0x203A
	movl	$0, 728740(%r15,%r8)
	testl	%ebp, %ebp
	jle	.LBB19_306
# BB#289:                               # %for.body.lr.ph.i.396
	leaq	728736(%r15,%r8), %r10
	leaq	728740(%r15,%r8), %r9
	leaq	728744(%r15,%r8), %r11
	movl	$128, %edx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movq	%rdi, %rcx
	.align	16, 0x90
.LBB19_290:                             # %for.body.i.411
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB19_292
# BB#291:                               #   in Loop: Header=BB19_290 Depth=1
	movzbl	%bl, %ebx
	orl	%edx, %ebx
.LBB19_292:                             # %select.end1382
                                        #   in Loop: Header=BB19_290 Depth=1
	sarl	%edx
	jne	.LBB19_299
# BB#293:                               # %if.then.5.i.413
                                        #   in Loop: Header=BB19_290 Depth=1
	testb	%bl, %bl
	je	.LBB19_298
# BB#294:                               # %if.then.7.i.415
                                        #   in Loop: Header=BB19_290 Depth=1
	cmpl	%esi, (%r10)
	jle	.LBB19_296
# BB#295:                               # %if.then.11.i.416
                                        #   in Loop: Header=BB19_290 Depth=1
	movl	%esi, (%r10)
.LBB19_296:                             # %if.end.13.i.418
                                        #   in Loop: Header=BB19_290 Depth=1
	cmpl	%esi, (%r9)
	jge	.LBB19_298
# BB#297:                               # %if.then.17.i.419
                                        #   in Loop: Header=BB19_290 Depth=1
	movl	%esi, (%r9)
.LBB19_298:                             # %if.end.20.i.422
                                        #   in Loop: Header=BB19_290 Depth=1
	movb	%bl, (%r11)
	incq	%r11
	incl	%esi
	movl	$128, %edx
	xorl	%ebx, %ebx
.LBB19_299:                             # %for.inc.i.430
                                        #   in Loop: Header=BB19_290 Depth=1
	incq	%rcx
	decl	%ebp
	jne	.LBB19_290
# BB#300:                               # %for.end.i.432
	cmpl	$128, %edx
	je	.LBB19_306
# BB#301:                               # %if.then.24.i.434
	movb	%bl, (%r11)
	testb	%bl, %bl
	je	.LBB19_306
# BB#302:                               # %if.then.26.i.436
	cmpl	%esi, (%r10)
	jle	.LBB19_304
# BB#303:                               # %if.then.30.i.437
	movl	%esi, (%r10)
.LBB19_304:                             # %if.end.32.i.439
	cmpl	%esi, (%r9)
	jge	.LBB19_306
# BB#305:                               # %if.then.36.i.440
	movl	%esi, (%r9)
.LBB19_306:                             # %PackLine.exit441
	movq	%r14, %r12
	leaq	412996(%r15), %r11
	movl	28(%r15), %eax
	movl	$8250, 994976(%r15,%r8) # imm = 0x203A
	movl	$0, 994980(%r15,%r8)
	testl	%eax, %eax
	jle	.LBB19_324
# BB#307:                               # %for.body.lr.ph.i.346
	leaq	994976(%r15,%r8), %r10
	leaq	994980(%r15,%r8), %r9
	leaq	994984(%r15,%r8), %r14
	movl	$128, %ebp
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movq	%r11, %rdx
	.align	16, 0x90
.LBB19_308:                             # %for.body.i.361
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %ebx
	cmpl	$255, %ebx
	jne	.LBB19_310
# BB#309:                               #   in Loop: Header=BB19_308 Depth=1
	movzbl	%sil, %esi
	orl	%ebp, %esi
.LBB19_310:                             # %select.end1387
                                        #   in Loop: Header=BB19_308 Depth=1
	sarl	%ebp
	jne	.LBB19_317
# BB#311:                               # %if.then.5.i.363
                                        #   in Loop: Header=BB19_308 Depth=1
	testb	%sil, %sil
	je	.LBB19_316
# BB#312:                               # %if.then.7.i.365
                                        #   in Loop: Header=BB19_308 Depth=1
	cmpl	%ecx, (%r10)
	jle	.LBB19_314
# BB#313:                               # %if.then.11.i.366
                                        #   in Loop: Header=BB19_308 Depth=1
	movl	%ecx, (%r10)
.LBB19_314:                             # %if.end.13.i.368
                                        #   in Loop: Header=BB19_308 Depth=1
	cmpl	%ecx, (%r9)
	jge	.LBB19_316
# BB#315:                               # %if.then.17.i.369
                                        #   in Loop: Header=BB19_308 Depth=1
	movl	%ecx, (%r9)
.LBB19_316:                             # %if.end.20.i.372
                                        #   in Loop: Header=BB19_308 Depth=1
	movb	%sil, (%r14)
	incq	%r14
	incl	%ecx
	movl	$128, %ebp
	xorl	%esi, %esi
.LBB19_317:                             # %for.inc.i.380
                                        #   in Loop: Header=BB19_308 Depth=1
	incq	%rdx
	decl	%eax
	jne	.LBB19_308
# BB#318:                               # %for.end.i.382
	cmpl	$128, %ebp
	je	.LBB19_324
# BB#319:                               # %if.then.24.i.384
	movb	%sil, (%r14)
	testb	%sil, %sil
	je	.LBB19_324
# BB#320:                               # %if.then.26.i.386
	cmpl	%ecx, (%r10)
	jle	.LBB19_322
# BB#321:                               # %if.then.30.i.387
	movl	%ecx, (%r10)
.LBB19_322:                             # %if.end.32.i.389
	cmpl	%ecx, (%r9)
	jge	.LBB19_324
# BB#323:                               # %if.then.36.i.390
	movl	%ecx, (%r9)
.LBB19_324:                             # %PackLine.exit391
	movl	28(%r15), %ebx
	movl	$8250, 1261216(%r15,%r8) # imm = 0x203A
	movl	$0, 1261220(%r15,%r8)
	testl	%ebx, %ebx
	jle	.LBB19_342
# BB#325:                               # %for.body.lr.ph.i.296
	leaq	1261216(%r15,%r8), %r10
	leaq	1261220(%r15,%r8), %r9
	leaq	429496(%r15), %rsi
	leaq	1261224(%r15,%r8), %r14
	movl	$128, %edx
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB19_326:                             # %for.body.i.311
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %eax
	cmpl	$255, %eax
	jne	.LBB19_328
# BB#327:                               #   in Loop: Header=BB19_326 Depth=1
	movzbl	%bpl, %ebp
	orl	%edx, %ebp
.LBB19_328:                             # %select.end1392
                                        #   in Loop: Header=BB19_326 Depth=1
	sarl	%edx
	jne	.LBB19_335
# BB#329:                               # %if.then.5.i.313
                                        #   in Loop: Header=BB19_326 Depth=1
	testb	%bpl, %bpl
	je	.LBB19_334
# BB#330:                               # %if.then.7.i.315
                                        #   in Loop: Header=BB19_326 Depth=1
	cmpl	%ecx, (%r10)
	jle	.LBB19_332
# BB#331:                               # %if.then.11.i.316
                                        #   in Loop: Header=BB19_326 Depth=1
	movl	%ecx, (%r10)
.LBB19_332:                             # %if.end.13.i.318
                                        #   in Loop: Header=BB19_326 Depth=1
	cmpl	%ecx, (%r9)
	jge	.LBB19_334
# BB#333:                               # %if.then.17.i.319
                                        #   in Loop: Header=BB19_326 Depth=1
	movl	%ecx, (%r9)
.LBB19_334:                             # %if.end.20.i.322
                                        #   in Loop: Header=BB19_326 Depth=1
	movb	%bpl, (%r14)
	incq	%r14
	incl	%ecx
	movl	$128, %edx
	xorl	%ebp, %ebp
.LBB19_335:                             # %for.inc.i.330
                                        #   in Loop: Header=BB19_326 Depth=1
	incq	%rsi
	decl	%ebx
	jne	.LBB19_326
# BB#336:                               # %for.end.i.332
	cmpl	$128, %edx
	je	.LBB19_342
# BB#337:                               # %if.then.24.i.334
	movb	%bpl, (%r14)
	testb	%bpl, %bpl
	je	.LBB19_342
# BB#338:                               # %if.then.26.i.336
	cmpl	%ecx, (%r10)
	jle	.LBB19_340
# BB#339:                               # %if.then.30.i.337
	movl	%ecx, (%r10)
.LBB19_340:                             # %if.end.32.i.339
	cmpl	%ecx, (%r9)
	jge	.LBB19_342
# BB#341:                               # %if.then.36.i.340
	movl	%ecx, (%r9)
.LBB19_342:                             # %PackLine.exit341
	movl	28(%r15), %ebx
	movl	18500(%r13), %r14d
	movq	$8250, 1527456(%r15,%r8) # imm = 0x203A
	testl	%ebx, %ebx
	jle	.LBB19_360
# BB#343:                               # %for.body.lr.ph.i.246
	leaq	1527456(%r15,%r8), %r10
	leaq	1527460(%r15,%r8), %r9
	leaq	1527464(%r15,%r8), %rsi
	movl	$128, %edx
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB19_344:                             # %for.body.i.261
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	cmpl	%r14d, %eax
	jne	.LBB19_346
# BB#345:                               #   in Loop: Header=BB19_344 Depth=1
	movzbl	%bpl, %ebp
	orl	%edx, %ebp
.LBB19_346:                             # %select.end1397
                                        #   in Loop: Header=BB19_344 Depth=1
	sarl	%edx
	jne	.LBB19_353
# BB#347:                               # %if.then.5.i.263
                                        #   in Loop: Header=BB19_344 Depth=1
	testb	%bpl, %bpl
	je	.LBB19_352
# BB#348:                               # %if.then.7.i.265
                                        #   in Loop: Header=BB19_344 Depth=1
	cmpl	%ecx, (%r10)
	jle	.LBB19_350
# BB#349:                               # %if.then.11.i.266
                                        #   in Loop: Header=BB19_344 Depth=1
	movl	%ecx, (%r10)
.LBB19_350:                             # %if.end.13.i.268
                                        #   in Loop: Header=BB19_344 Depth=1
	cmpl	%ecx, (%r9)
	jge	.LBB19_352
# BB#351:                               # %if.then.17.i.269
                                        #   in Loop: Header=BB19_344 Depth=1
	movl	%ecx, (%r9)
.LBB19_352:                             # %if.end.20.i.272
                                        #   in Loop: Header=BB19_344 Depth=1
	movb	%bpl, (%rsi)
	incq	%rsi
	incl	%ecx
	movl	$128, %edx
	xorl	%ebp, %ebp
.LBB19_353:                             # %for.inc.i.280
                                        #   in Loop: Header=BB19_344 Depth=1
	incq	%rdi
	decl	%ebx
	jne	.LBB19_344
# BB#354:                               # %for.end.i.282
	cmpl	$128, %edx
	je	.LBB19_360
# BB#355:                               # %if.then.24.i.284
	movb	%bpl, (%rsi)
	testb	%bpl, %bpl
	je	.LBB19_360
# BB#356:                               # %if.then.26.i.286
	cmpl	%ecx, (%r10)
	jle	.LBB19_358
# BB#357:                               # %if.then.30.i.287
	movl	%ecx, (%r10)
.LBB19_358:                             # %if.end.32.i.289
	cmpl	%ecx, (%r9)
	jge	.LBB19_360
# BB#359:                               # %if.then.36.i.290
	movl	%ecx, (%r9)
.LBB19_360:                             # %PackLine.exit291
	movl	28(%r15), %edi
	movl	18504(%r13), %ebp
	movq	$8250, 1793696(%r15,%r8) # imm = 0x203A
	testl	%edi, %edi
	movq	%r12, %r14
	jle	.LBB19_379
# BB#361:                               # %for.body.lr.ph.i.196
	leaq	1793696(%r15,%r8), %r10
	leaq	1793700(%r15,%r8), %r9
	leaq	1793704(%r15,%r8), %rbx
	movl	$128, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB19_362:                             # %for.body.i.211
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r11), %esi
	cmpl	%ebp, %esi
	jne	.LBB19_364
# BB#363:                               #   in Loop: Header=BB19_362 Depth=1
	movzbl	%cl, %ecx
	orl	%edx, %ecx
.LBB19_364:                             # %select.end1402
                                        #   in Loop: Header=BB19_362 Depth=1
	sarl	%edx
	jne	.LBB19_371
# BB#365:                               # %if.then.5.i.213
                                        #   in Loop: Header=BB19_362 Depth=1
	testb	%cl, %cl
	je	.LBB19_370
# BB#366:                               # %if.then.7.i.215
                                        #   in Loop: Header=BB19_362 Depth=1
	cmpl	%eax, (%r10)
	jle	.LBB19_368
# BB#367:                               # %if.then.11.i.216
                                        #   in Loop: Header=BB19_362 Depth=1
	movl	%eax, (%r10)
.LBB19_368:                             # %if.end.13.i.218
                                        #   in Loop: Header=BB19_362 Depth=1
	cmpl	%eax, (%r9)
	jge	.LBB19_370
# BB#369:                               # %if.then.17.i.219
                                        #   in Loop: Header=BB19_362 Depth=1
	movl	%eax, (%r9)
.LBB19_370:                             # %if.end.20.i.222
                                        #   in Loop: Header=BB19_362 Depth=1
	movb	%cl, (%rbx)
	incq	%rbx
	incl	%eax
	movl	$128, %edx
	xorl	%ecx, %ecx
.LBB19_371:                             # %for.inc.i.230
                                        #   in Loop: Header=BB19_362 Depth=1
	incq	%r11
	decl	%edi
	jne	.LBB19_362
# BB#372:                               # %for.end.i.232
	cmpl	$128, %edx
	je	.LBB19_379
# BB#373:                               # %if.then.24.i.234
	movb	%cl, (%rbx)
.LBB19_374:                             # %if.then.24.i.234
	testb	%cl, %cl
	je	.LBB19_379
.LBB19_375:                             # %if.then.26.i.236
	cmpl	%eax, (%r10)
	jle	.LBB19_377
# BB#376:                               # %if.then.30.i.237
	movl	%eax, (%r10)
.LBB19_377:                             # %if.end.32.i.239
	cmpl	%eax, (%r9)
	jge	.LBB19_379
# BB#378:                               # %if.then.36.i.240
	movl	%eax, (%r9)
.LBB19_379:                             # %if.end.391
	movq	(%r15), %rax
	movslq	18480(%rax), %rax
	shlq	$5, %rax
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	*htable+16(%rax)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	HalftoneLine, .Lfunc_end19-HalftoneLine
	.cfi_endproc

	.align	16, 0x90
	.type	RleFlush,@function
RleFlush:                               # @RleFlush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 64
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r13
	xorl	%r12d, %r12d
	testq	%r13, %r13
	je	.LBB20_14
# BB#1:                                 # %if.end
	testq	%r14, %r14
	cmoveq	%rdx, %r14
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%r14, %r15
	subq	%r13, %r15
	xorl	%r12d, %r12d
	jmp	.LBB20_2
	.align	16, 0x90
.LBB20_10:                              # %while.cond.backedge
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%r14, %r15
	subq	%r13, %r15
.LBB20_2:                               # %if.end
                                        # =>This Inner Loop Header: Depth=1
	testl	%r15d, %r15d
	je	.LBB20_3
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB20_2 Depth=1
	cmpl	$129, %r15d
	jl	.LBB20_9
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB20_2 Depth=1
	leaq	1(%rbx), %rdi
	movb	$127, (%rbx)
	movl	$128, %edx
	movq	%r13, %rsi
	callq	memcpy
	addq	$129, %rbx
	subq	$-128, %r13
	addl	$129, %r12d
	jmp	.LBB20_10
	.align	16, 0x90
.LBB20_9:                               # %if.else
                                        #   in Loop: Header=BB20_2 Depth=1
	leal	255(%r15), %eax
	leaq	1(%rbx), %rdi
	movb	%al, (%rbx)
	movslq	%r15d, %rbp
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	leal	1(%r12,%r15), %r12d
	addq	%rbp, %r13
	leaq	1(%rbx,%rbp), %rbx
	jmp	.LBB20_10
.LBB20_3:                               # %while.cond.18.preheader
	movq	(%rsp), %rdx            # 8-byte Reload
	movl	%edx, %eax
	subl	%r14d, %eax
	je	.LBB20_14
# BB#4:                                 # %while.body.24.preheader
	incq	%rbx
	.align	16, 0x90
.LBB20_5:                               # %while.body.24
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$129, %eax
	jl	.LBB20_11
# BB#6:                                 # %if.then.27
                                        #   in Loop: Header=BB20_5 Depth=1
	movb	$-128, -1(%rbx)
	movb	(%r14), %al
	movb	%al, (%rbx)
	addq	$129, %r14
	jmp	.LBB20_13
	.align	16, 0x90
.LBB20_11:                              # %if.else.32
                                        #   in Loop: Header=BB20_5 Depth=1
	cmpl	$1, %eax
	jne	.LBB20_15
# BB#12:                                # %if.then.35
                                        #   in Loop: Header=BB20_5 Depth=1
	movb	$0, -1(%rbx)
	movb	(%r14), %al
	movb	%al, (%rbx)
	incq	%r14
	jmp	.LBB20_13
	.align	16, 0x90
.LBB20_15:                              # %if.else.40
                                        #   in Loop: Header=BB20_5 Depth=1
	movl	$257, %ecx              # imm = 0x101
	subl	%eax, %ecx
	movb	%cl, -1(%rbx)
	movb	(%r14), %al
	movb	%al, (%rbx)
	movq	%rdx, %r14
.LBB20_13:                              # %while.cond.18.backedge
                                        #   in Loop: Header=BB20_5 Depth=1
	addl	$2, %r12d
	addq	$2, %rbx
	movl	%edx, %eax
	subl	%r14d, %eax
	jne	.LBB20_5
.LBB20_14:                              # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	RleFlush, .Lfunc_end20-RleFlush
	.cfi_endproc

	.type	photoex_device_procs,@object # @photoex_device_procs
	.section	.rodata,"a",@progbits
	.align	8
photoex_device_procs:
	.quad	photoex_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	photoex_map_rgb_color
	.quad	photoex_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	photoex_get_params
	.quad	photoex_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	photoex_device_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"photoex"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	gs_photoex_device,@object # @gs_photoex_device
	.data
	.globl	gs_photoex_device
	.align	8
gs_photoex_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	photoex_device_procs
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
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
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
	.long	6120                    # 0x17e8
	.long	7920                    # 0x1ef0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	3266104525              # float -8.640000e+01
	.long	3266104525              # float -8.640000e+01
	.long	1091190129              # float 8.640000e+00
	.long	1108344832              # float 3.600000e+01
	.long	1091190129              # float 8.640000e+00
	.long	1091190129              # float 8.640000e+00
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
	.quad	photoex_print_page
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	127                     # 0x7f
	.long	127                     # 0x7f
	.long	0                       # 0x0
	.size	gs_photoex_device, 18512

	.type	xtrans,@object          # @xtrans
	.section	.rodata,"a",@progbits
	.align	16
xtrans:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\002\002\002\002\002\002\002\002\002\003\003\003\003\003\003\003\004\004\004\004\004\004\005\005\005\005\005\006\006\006\006\006\007\007\007\007\b\b\b\b\t\t\t\n\n\n\013\013\013\f\f\f\r\r\r\016\016\016\017\017\020\020\021\021\021\022\022\023\023\024\024\025\025\026\026\027\027\030\030\031\032\032\033\033\034\035\035\036\036\037  !\"\"#$%%&'(()*+,,-./01233456789:;<=>?@ACDEFGHIJLMNOPRSTVWXY[\\^_`bcefgijlmoprtuwxz|}\177\201\202\204\206\210\211\213\215\217\221\222\224\226\230\232\234\236\240\242\244\246\250\252\254\256\260\262\264"
	.size	xtrans, 256

	.type	ctable,@object          # @ctable
	.align	16
ctable:
	.long	4294967041              # 0xffffff01
	.long	4294967041              # 0xffffff01
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	102                     # 0x66
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	560                     # 0x230
	.long	512                     # 0x200
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	765                     # 0x2fd
	.long	765                     # 0x2fd
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	1045                    # 0x415
	.long	1020                    # 0x3fc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1275                    # 0x4fb
	.long	1275                    # 0x4fb
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1632                    # 0x660
	.long	1530                    # 0x5fa
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	ctable, 160

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Depletion"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Shingling"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Render"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Splash"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Leakage"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Binhibit"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DotSize"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"PhotoEX"
	.size	.L.str.9, 8

	.type	htable,@object          # @htable
	.section	.rodata,"a",@progbits
	.align	16
htable:
	.quad	FloydSThold
	.quad	FloydSStart
	.quad	FloydSEol
	.quad	FloydSLine
	.quad	DitherThold
	.quad	DitherStart
	.quad	DitherEol
	.quad	DitherLine
	.quad	BendorThold
	.quad	BendorStart
	.quad	BendorEol
	.quad	BendorLine
	.size	htable, 96

	.type	dmatrix,@object         # @dmatrix
	.align	16
dmatrix:
	.ascii	"\016\216.\256\006\206&\246\f\214,\254\004\204$\244"
	.ascii	"\316N\356n\306F\346f\314L\354l\304D\344d"
	.ascii	">\276\036\2366\266\026\226<\274\034\2344\264\024\224"
	.ascii	"\376~\336^\366v\326V\374|\334\\\364t\324T"
	.ascii	"\001\201!\241\t\211)\251\003\203#\243\013\213+\253"
	.ascii	"\301A\341a\311I\351i\303C\343c\313K\353k"
	.ascii	"1\261\021\2219\271\031\2313\263\023\223;\273\033\233"
	.ascii	"\361q\321Q\371y\331Y\363s\323S\373{\333["
	.ascii	"\r\215-\255\005\205%\245\017\217/\257\007\207'\247"
	.ascii	"\315M\355m\305E\345e\317O\357o\307G\347g"
	.ascii	"=\275\035\2355\265\025\225?\277\037\2377\267\027\227"
	.ascii	"\375}\335]\365u\325U\377\177\337_\367w\327W"
	.ascii	"\002\202\"\242\n\212*\252\001\200 \240\b\210(\250"
	.ascii	"\302B\342b\312J\352j\300@\340`\310H\350h"
	.ascii	"2\262\022\222:\272\032\2320\260\020\2208\270\030\230"
	.ascii	"\362r\322R\372z\332Z\360p\320P\370x\330X"
	.size	dmatrix, 256

	.type	start_720,@object       # @start_720
	.align	16
start_720:
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	40                      # 0x28
	.long	48                      # 0x30
	.long	56                      # 0x38
	.long	64                      # 0x40
	.long	72                      # 0x48
	.long	80                      # 0x50
	.long	88                      # 0x58
	.long	96                      # 0x60
	.long	104                     # 0x68
	.long	112                     # 0x70
	.long	120                     # 0x78
	.long	128                     # 0x80
	.long	136                     # 0x88
	.long	144                     # 0x90
	.long	152                     # 0x98
	.long	160                     # 0xa0
	.long	168                     # 0xa8
	.long	176                     # 0xb0
	.long	184                     # 0xb8
	.long	192                     # 0xc0
	.long	200                     # 0xc8
	.long	208                     # 0xd0
	.long	216                     # 0xd8
	.long	224                     # 0xe0
	.long	232                     # 0xe8
	.long	240                     # 0xf0
	.long	248                     # 0xf8
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	17                      # 0x11
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	41                      # 0x29
	.long	49                      # 0x31
	.long	57                      # 0x39
	.long	65                      # 0x41
	.long	73                      # 0x49
	.long	81                      # 0x51
	.long	89                      # 0x59
	.long	97                      # 0x61
	.long	105                     # 0x69
	.long	113                     # 0x71
	.long	121                     # 0x79
	.long	129                     # 0x81
	.long	137                     # 0x89
	.long	145                     # 0x91
	.long	153                     # 0x99
	.long	161                     # 0xa1
	.long	169                     # 0xa9
	.long	177                     # 0xb1
	.long	185                     # 0xb9
	.long	193                     # 0xc1
	.long	201                     # 0xc9
	.long	209                     # 0xd1
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	10                      # 0xa
	.long	18                      # 0x12
	.long	26                      # 0x1a
	.long	34                      # 0x22
	.long	42                      # 0x2a
	.long	50                      # 0x32
	.long	58                      # 0x3a
	.long	66                      # 0x42
	.long	74                      # 0x4a
	.long	82                      # 0x52
	.long	90                      # 0x5a
	.long	98                      # 0x62
	.long	106                     # 0x6a
	.long	114                     # 0x72
	.long	122                     # 0x7a
	.long	130                     # 0x82
	.long	138                     # 0x8a
	.long	146                     # 0x92
	.long	154                     # 0x9a
	.long	162                     # 0xa2
	.long	170                     # 0xaa
	.long	178                     # 0xb2
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	11                      # 0xb
	.long	19                      # 0x13
	.long	27                      # 0x1b
	.long	35                      # 0x23
	.long	43                      # 0x2b
	.long	51                      # 0x33
	.long	59                      # 0x3b
	.long	67                      # 0x43
	.long	75                      # 0x4b
	.long	83                      # 0x53
	.long	91                      # 0x5b
	.long	99                      # 0x63
	.long	107                     # 0x6b
	.long	115                     # 0x73
	.long	123                     # 0x7b
	.long	131                     # 0x83
	.long	139                     # 0x8b
	.long	147                     # 0x93
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4                       # 0x4
	.long	12                      # 0xc
	.long	20                      # 0x14
	.long	28                      # 0x1c
	.long	36                      # 0x24
	.long	44                      # 0x2c
	.long	52                      # 0x34
	.long	60                      # 0x3c
	.long	68                      # 0x44
	.long	76                      # 0x4c
	.long	84                      # 0x54
	.long	92                      # 0x5c
	.long	100                     # 0x64
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	5                       # 0x5
	.long	13                      # 0xd
	.long	21                      # 0x15
	.long	29                      # 0x1d
	.long	37                      # 0x25
	.long	45                      # 0x2d
	.long	53                      # 0x35
	.long	61                      # 0x3d
	.long	69                      # 0x45
	.long	77                      # 0x4d
	.long	85                      # 0x55
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	22                      # 0x16
	.long	30                      # 0x1e
	.long	38                      # 0x26
	.long	46                      # 0x2e
	.long	54                      # 0x36
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	7                       # 0x7
	.long	15                      # 0xf
	.long	23                      # 0x17
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	start_720, 1024

	.type	start_1440,@object      # @start_1440
	.align	16
start_1440:
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	40                      # 0x28
	.long	48                      # 0x30
	.long	56                      # 0x38
	.long	64                      # 0x40
	.long	72                      # 0x48
	.long	80                      # 0x50
	.long	88                      # 0x58
	.long	96                      # 0x60
	.long	104                     # 0x68
	.long	112                     # 0x70
	.long	120                     # 0x78
	.long	128                     # 0x80
	.long	136                     # 0x88
	.long	144                     # 0x90
	.long	152                     # 0x98
	.long	160                     # 0xa0
	.long	168                     # 0xa8
	.long	176                     # 0xb0
	.long	184                     # 0xb8
	.long	192                     # 0xc0
	.long	200                     # 0xc8
	.long	208                     # 0xd0
	.long	216                     # 0xd8
	.long	224                     # 0xe0
	.long	232                     # 0xe8
	.long	240                     # 0xf0
	.long	248                     # 0xf8
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	17                      # 0x11
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	41                      # 0x29
	.long	49                      # 0x31
	.long	57                      # 0x39
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	10                      # 0xa
	.long	18                      # 0x12
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	11                      # 0xb
	.long	19                      # 0x13
	.long	27                      # 0x1b
	.long	35                      # 0x23
	.long	43                      # 0x2b
	.long	51                      # 0x33
	.long	59                      # 0x3b
	.long	67                      # 0x43
	.long	75                      # 0x4b
	.long	83                      # 0x53
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4                       # 0x4
	.long	12                      # 0xc
	.long	20                      # 0x14
	.long	28                      # 0x1c
	.long	36                      # 0x24
	.long	44                      # 0x2c
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	5                       # 0x5
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	22                      # 0x16
	.long	30                      # 0x1e
	.long	38                      # 0x26
	.long	46                      # 0x2e
	.long	54                      # 0x36
	.long	62                      # 0x3e
	.long	70                      # 0x46
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	7                       # 0x7
	.long	15                      # 0xf
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	40                      # 0x28
	.long	48                      # 0x30
	.long	56                      # 0x38
	.long	64                      # 0x40
	.long	72                      # 0x48
	.long	80                      # 0x50
	.long	88                      # 0x58
	.long	96                      # 0x60
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	17                      # 0x11
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	41                      # 0x29
	.long	49                      # 0x31
	.long	57                      # 0x39
	.long	65                      # 0x41
	.long	73                      # 0x49
	.long	81                      # 0x51
	.long	89                      # 0x59
	.long	97                      # 0x61
	.long	105                     # 0x69
	.long	113                     # 0x71
	.long	121                     # 0x79
	.long	129                     # 0x81
	.long	137                     # 0x89
	.long	145                     # 0x91
	.long	153                     # 0x99
	.long	161                     # 0xa1
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	10                      # 0xa
	.long	18                      # 0x12
	.long	26                      # 0x1a
	.long	34                      # 0x22
	.long	42                      # 0x2a
	.long	50                      # 0x32
	.long	58                      # 0x3a
	.long	66                      # 0x42
	.long	74                      # 0x4a
	.long	82                      # 0x52
	.long	90                      # 0x5a
	.long	98                      # 0x62
	.long	106                     # 0x6a
	.long	114                     # 0x72
	.long	122                     # 0x7a
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	11                      # 0xb
	.long	19                      # 0x13
	.long	27                      # 0x1b
	.long	35                      # 0x23
	.long	43                      # 0x2b
	.long	51                      # 0x33
	.long	59                      # 0x3b
	.long	67                      # 0x43
	.long	75                      # 0x4b
	.long	83                      # 0x53
	.long	91                      # 0x5b
	.long	99                      # 0x63
	.long	107                     # 0x6b
	.long	115                     # 0x73
	.long	123                     # 0x7b
	.long	131                     # 0x83
	.long	139                     # 0x8b
	.long	147                     # 0x93
	.long	155                     # 0x9b
	.long	163                     # 0xa3
	.long	171                     # 0xab
	.long	179                     # 0xb3
	.long	187                     # 0xbb
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4                       # 0x4
	.long	12                      # 0xc
	.long	20                      # 0x14
	.long	28                      # 0x1c
	.long	36                      # 0x24
	.long	44                      # 0x2c
	.long	52                      # 0x34
	.long	60                      # 0x3c
	.long	68                      # 0x44
	.long	76                      # 0x4c
	.long	84                      # 0x54
	.long	92                      # 0x5c
	.long	100                     # 0x64
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	124                     # 0x7c
	.long	132                     # 0x84
	.long	140                     # 0x8c
	.long	148                     # 0x94
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	5                       # 0x5
	.long	13                      # 0xd
	.long	21                      # 0x15
	.long	29                      # 0x1d
	.long	37                      # 0x25
	.long	45                      # 0x2d
	.long	53                      # 0x35
	.long	61                      # 0x3d
	.long	69                      # 0x45
	.long	77                      # 0x4d
	.long	85                      # 0x55
	.long	93                      # 0x5d
	.long	101                     # 0x65
	.long	109                     # 0x6d
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	22                      # 0x16
	.long	30                      # 0x1e
	.long	38                      # 0x26
	.long	46                      # 0x2e
	.long	54                      # 0x36
	.long	62                      # 0x3e
	.long	70                      # 0x46
	.long	78                      # 0x4e
	.long	86                      # 0x56
	.long	94                      # 0x5e
	.long	102                     # 0x66
	.long	110                     # 0x6e
	.long	118                     # 0x76
	.long	126                     # 0x7e
	.long	134                     # 0x86
	.long	142                     # 0x8e
	.long	150                     # 0x96
	.long	158                     # 0x9e
	.long	166                     # 0xa6
	.long	174                     # 0xae
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	7                       # 0x7
	.long	15                      # 0xf
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	39                      # 0x27
	.long	47                      # 0x2f
	.long	55                      # 0x37
	.long	63                      # 0x3f
	.long	71                      # 0x47
	.long	79                      # 0x4f
	.long	87                      # 0x57
	.long	95                      # 0x5f
	.long	103                     # 0x67
	.long	111                     # 0x6f
	.long	119                     # 0x77
	.long	127                     # 0x7f
	.long	135                     # 0x87
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	start_1440, 2048

	.type	SendColour.ccode,@object # @SendColour.ccode
	.align	16
SendColour.ccode:
	.long	0                       # 0x0
	.long	512                     # 0x200
	.long	256                     # 0x100
	.long	1024                    # 0x400
	.long	513                     # 0x201
	.long	257                     # 0x101
	.size	SendColour.ccode, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
