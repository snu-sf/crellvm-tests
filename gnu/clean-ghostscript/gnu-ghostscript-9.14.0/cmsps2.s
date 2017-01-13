	.text
	.file	"cmsps2.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4679239875398991872     # double 65535
.LCPI0_2:
	.quad	4611685880988434432     # double 1.999969482421875
.LCPI0_3:
	.quad	4602678819172646912     # double 0.5
.LCPI0_4:
	.quad	-4548635898522107904    # double -32767
.LCPI0_5:
	.quad	4771563805199040512     # double 103079215104
.LCPI0_6:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.quad	4611685880988434432     # double 1.999969e+00
	.quad	4611685880988434432     # double 1.999969e+00
	.text
	.globl	cmsGetPostScriptColorResource
	.align	16, 0x90
	.type	cmsGetPostScriptColorResource,@function
cmsGetPostScriptColorResource:          # @cmsGetPostScriptColorResource
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
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp6:
	.cfi_def_cfa_offset 752
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
	movq	%r9, %r14
	movl	%r8d, %r12d
	movl	%ecx, %ebp
	movq	%rdx, %r13
	movq	%rdi, %rbx
	testl	%esi, %esi
	je	.LBB0_1
# BB#67:                                # %sw.bb.1
	movl	%r12d, %r15d
	andl	$16777216, %r15d        # imm = 0x1000000
	jne	.LBB0_81
# BB#68:                                # %if.then.i.13
	movl	%ebp, 72(%rsp)          # 4-byte Spill
	leaq	656(%rsp), %rdi
	callq	time
	movl	$1684370275, %esi       # imm = 0x64657363
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, %rbp
	movl	$1668313716, %esi       # imm = 0x63707274
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, %rbx
	movb	$0, 655(%rsp)
	movb	$0, 400(%rsp)
	movb	$0, 399(%rsp)
	movb	$0, 144(%rsp)
	testq	%rbp, %rbp
	je	.LBB0_70
# BB#69:                                # %if.then.i.i.15
	leaq	400(%rsp), %rcx
	movl	$.L.str.79, %esi
	movl	$.L.str.79, %edx
	movl	$255, %r8d
	movq	%rbp, %rdi
	callq	cmsMLUgetASCII
.LBB0_70:                               # %if.end.i.i.16
	testq	%rbx, %rbx
	je	.LBB0_72
# BB#71:                                # %if.then.8.i.i
	leaq	144(%rsp), %rcx
	movl	$.L.str.79, %esi
	movl	$.L.str.79, %edx
	movl	$255, %r8d
	movq	%rbx, %rdi
	callq	cmsMLUgetASCII
.LBB0_72:                               # %if.end.11.i.i
	movl	$.L.str.80, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.81, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.82, %esi
	movl	$.L.str.76, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$RemoveCR.Buffer, %ebx
	leaq	400(%rsp), %rsi
	movl	$RemoveCR.Buffer, %edi
	movl	$2047, %edx             # imm = 0x7FF
	callq	strncpy
	movb	$0, RemoveCR.Buffer+2047(%rip)
	movl	72(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB0_73
	.align	16, 0x90
.LBB0_97:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=1
	incq	%rbx
.LBB0_73:                               # %for.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$10, %eax
	je	.LBB0_96
# BB#74:                                # %for.cond.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=1
	movzbl	%al, %ecx
	cmpl	$13, %ecx
	jne	.LBB0_75
.LBB0_96:                               # %if.then.i.i.i.20
                                        #   in Loop: Header=BB0_73 Depth=1
	movb	$32, (%rbx)
	jmp	.LBB0_97
.LBB0_75:                               # %for.cond.i.i.i
                                        #   in Loop: Header=BB0_73 Depth=1
	testb	%al, %al
	jne	.LBB0_97
# BB#76:                                # %RemoveCR.exit.i.i
	movl	$RemoveCR.Buffer, %ebx
	movl	$.L.str.83, %esi
	movl	$RemoveCR.Buffer, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	leaq	144(%rsp), %rsi
	movl	$RemoveCR.Buffer, %edi
	movl	$2047, %edx             # imm = 0x7FF
	callq	strncpy
	movb	$0, RemoveCR.Buffer+2047(%rip)
	jmp	.LBB0_77
	.align	16, 0x90
.LBB0_99:                               # %for.inc.i.6.i.i
                                        #   in Loop: Header=BB0_77 Depth=1
	incq	%rbx
.LBB0_77:                               # %for.cond.i.3.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$10, %eax
	je	.LBB0_98
# BB#78:                                # %for.cond.i.3.i.i
                                        #   in Loop: Header=BB0_77 Depth=1
	movzbl	%al, %ecx
	cmpl	$13, %ecx
	jne	.LBB0_79
.LBB0_98:                               # %if.then.i.4.i.i
                                        #   in Loop: Header=BB0_77 Depth=1
	movb	$32, (%rbx)
	jmp	.LBB0_99
.LBB0_79:                               # %for.cond.i.3.i.i
                                        #   in Loop: Header=BB0_77 Depth=1
	testb	%al, %al
	jne	.LBB0_99
# BB#80:                                # %EmitHeader.exit.i
	movl	$.L.str.84, %esi
	movl	$RemoveCR.Buffer, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	leaq	656(%rsp), %rdi
	callq	ctime
	movq	%rax, %rcx
	movl	$.L.str.85, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rcx, %rdx
	callq	_cmsIOPrintf
	movl	$.L.str.81, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.86, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
.LBB0_81:                               # %if.end.i
	movq	%r13, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1852662636, %eax       # imm = 0x6E6D636C
	jne	.LBB0_100
# BB#82:                                # %if.then.1.i
	movl	%r15d, 32(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	cmsFormatterForColorspaceOfProfile
	movl	%eax, %ebx
	movl	$10, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	movl	%r12d, %r9d
	callq	cmsCreateTransform
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_121
# BB#83:                                # %if.end.i.5.i
	movq	%rbp, %rdi
	callq	cmsGetNamedColorList
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB0_121
# BB#84:                                # %if.end.5.i.i.31
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.87, %esi
	movl	$.L.str.88, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r14, 64(%rsp)          # 8-byte Spill
	callq	_cmsIOPrintf
	movq	%r12, %rdi
	callq	cmsNamedColorCount
	movl	%eax, 72(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movq	%r12, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	jle	.LBB0_93
# BB#85:                                # %for.body.lr.ph.i.i.32
	shrl	$3, %ebx
	movl	%ebx, %eax
	andl	$15, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	-1(%rax), %eax
	movslq	%eax, %r15
	andl	$15, %ebx
	leaq	400(%rsp), %r14
	leaq	96(%rsp), %r12
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_86:                               # %for.body.i.i.35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_88 Depth 2
	movw	%r13w, 692(%rsp)
	movq	$0, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movl	%r13d, %esi
	leaq	144(%rsp), %rdx
	callq	cmsNamedColorInfo
	testl	%eax, %eax
	je	.LBB0_92
# BB#87:                                # %if.end.14.i.i.36
                                        #   in Loop: Header=BB0_86 Depth=1
	movl	$1, %ecx
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	692(%rsp), %rsi
	leaq	656(%rsp), %rdx
	callq	cmsDoTransform
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movb	$0, 400(%rsp)
	movl	$0, %ebp
	je	.LBB0_91
	.align	16, 0x90
.LBB0_88:                               # %for.body.i.i.i.39
                                        #   Parent Loop BB0_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	656(%rsp,%rbp,2), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI0_0(%rip), %xmm0
	movl	$.L.str.92, %esi
	movb	$1, %al
	movq	%r12, %rdi
	callq	sprintf
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	strcat
	cmpq	%r15, %rbp
	jge	.LBB0_90
# BB#89:                                # %if.then.8.i.i.i
                                        #   in Loop: Header=BB0_88 Depth=2
	movl	$.L.str.93, %esi
	movq	%r14, %rdi
	callq	strcat
.LBB0_90:                               # %for.inc.i.i.11.i
                                        #   in Loop: Header=BB0_88 Depth=2
	incq	%rbp
	cmpq	%rbp, %rbx
	jne	.LBB0_88
.LBB0_91:                               # %BuildColorantList.exit.i.i
                                        #   in Loop: Header=BB0_86 Depth=1
	movl	$.L.str.89, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdi          # 8-byte Reload
	leaq	144(%rsp), %rdx
	movq	%r14, %rcx
	callq	_cmsIOPrintf
	movq	48(%rsp), %rbp          # 8-byte Reload
.LBB0_92:                               # %cleanup.i.i.44
                                        #   in Loop: Header=BB0_86 Depth=1
	incl	%r13d
	cmpl	72(%rsp), %r13d         # 4-byte Folded Reload
	jne	.LBB0_86
.LBB0_93:                               # %for.end.i.i
	movl	$.L.str.90, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	32(%rsp), %ebx          # 4-byte Reload
	testl	%ebx, %ebx
	jne	.LBB0_95
# BB#94:                                # %if.then.26.i.i
	movl	$.L.str.91, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
.LBB0_95:                               # %WriteNamedColorCRD.exit.i
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	cmsDeleteTransform
	jmp	.LBB0_118
.LBB0_1:                                # %sw.bb
	movq	%r13, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1852662636, %eax       # imm = 0x6E6D636C
	jne	.LBB0_10
# BB#2:                                 # %if.then.i
	movq	8(%r14), %rdi
	movq	%r14, %r12
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	callq	cmsCreateLab4ProfileTHR
	movq	%rax, %rbx
	movl	$10, %esi
	movl	$4849688, %ecx          # imm = 0x4A0018
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movl	%ebp, %r8d
	callq	cmsCreateTransform
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB0_121
# BB#3:                                 # %if.end.i.i
	movq	%r14, %rdi
	callq	cmsGetNamedColorList
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB0_121
# BB#4:                                 # %if.end.5.i.i
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.3, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_cmsIOPrintf
	movq	%r13, %rdi
	callq	cmsNamedColorCount
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jle	.LBB0_9
# BB#5:                                 # %for.body.lr.ph.i.i
	leaq	96(%rsp), %r15
	.align	16, 0x90
.LBB0_6:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movw	%bp, 692(%rsp)
	movq	$0, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	callq	cmsNamedColorInfo
	testl	%eax, %eax
	je	.LBB0_8
# BB#7:                                 # %if.end.14.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, %ecx
	movq	%r14, %rdi
	leaq	692(%rsp), %rsi
	leaq	400(%rsp), %rdx
	callq	cmsDoTransform
	movsd	400(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	408(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	416(%rsp), %xmm2        # xmm2 = mem[0],zero
	movl	$.L.str.7, %esi
	movb	$3, %al
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_cmsIOPrintf
.LBB0_8:                                # %cleanup.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	incl	%ebp
	cmpl	%ebp, %ebx
	jne	.LBB0_6
.LBB0_9:                                # %if.end.25.thread.i
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_cmsIOPrintf
	movq	%r14, %rdi
	callq	cmsDeleteTransform
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	cmsCloseProfile
	movl	16(%r12), %r15d
	jmp	.LBB0_121
.LBB0_100:                              # %if.else.i.46
	movl	%r15d, 32(%rsp)         # 4-byte Spill
	movl	%ebp, %ebx
	movl	%r12d, 88(%rsp)
	movl	%r12d, 64(%rsp)         # 4-byte Spill
	movl	$655386, 692(%rsp)      # imm = 0xA001A
	movq	8(%r14), %rdi
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	callq	cmsCreateLab4ProfileTHR
	movq	%r14, %r12
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB0_121
# BB#101:                               # %if.end.i.21.i
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	cmsFormatterForColorspaceOfProfile
	movl	%eax, %ebp
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	movl	%ebp, 80(%rsp)
	movq	%r13, %rdi
	callq	cmsGetColorSpace
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	cmpl	$3, %eax
	movl	$1, %ebx
	cmovnel	%eax, %ebx
	movq	%r14, 144(%rsp)
	movq	%r13, 152(%rsp)
	movq	8(%r12), %rdi
	movl	$0, (%rsp)
	leaq	144(%rsp), %rsi
	movl	$2, %edx
	movl	$4849688, %ecx          # imm = 0x4A0018
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	cmsCreateMultiprofileTransformTHR
	movq	%r14, %rdi
	movq	%rax, %rbp
	callq	cmsCloseProfile
	testq	%rbp, %rbp
	je	.LBB0_102
# BB#103:                               # %if.end.15.i.i
	movq	112(%rbp), %rdi
	callq	cmsPipelineDup
	movq	%rax, 96(%rsp)
	testq	%rax, %rax
	je	.LBB0_121
# BB#104:                               # %if.end.19.i.i
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movl	64(%rsp), %r15d         # 4-byte Reload
	movl	%r15d, %r14d
	shrl	$2, %r14d
	notl	%r14d
	andl	$1, %r14d
	movl	56(%rsp), %eax          # 4-byte Reload
	shrl	$3, %eax
	andl	$15, %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	orl	$2, %eax
	movl	%eax, 88(%rsp)
	movq	8(%r12), %rdi
	leaq	96(%rsp), %rsi
	leaq	692(%rsp), %rcx
	leaq	80(%rsp), %r8
	leaq	88(%rsp), %r9
	movl	%ebx, %edx
	callq	_cmsOptimizePipeline
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.95, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_cmsIOPrintf
	leaq	656(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movl	72(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %edx
	callq	cmsDetectBlackPoint
	movsd	656(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	664(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	672(%rsp), %xmm2        # xmm2 = mem[0],zero
	movl	$.L.str.38, %esi
	movb	$3, %al
	movq	%r12, %rdi
	callq	_cmsIOPrintf
	callq	cmsD50_XYZ
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	$.L.str.39, %esi
	movb	$3, %al
	movq	%r12, %rdi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_cmsIOPrintf
	cmpl	$3, %ebx
	movq	%r12, %rbp
	jne	.LBB0_106
# BB#105:                               # %if.then.i.i.28.i
	leaq	400(%rsp), %rdi
	movq	%r13, %rsi
	callq	_cmsReadMediaWhitePoint
	movl	$.L.str.99, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.100, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movsd	400(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	408(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	416(%rsp), %xmm2        # xmm2 = mem[0],zero
	movl	$.L.str.101, %esi
	movb	$3, %al
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	jmp	.LBB0_110
.LBB0_10:                               # %if.else.i
	movq	%r13, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	je	.LBB0_13
# BB#11:                                # %if.else.i
	cmpl	$1482250784, %eax       # imm = 0x58595A20
	jne	.LBB0_12
.LBB0_13:                               # %if.end.7.i
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	_cmsReadInputLUT
	movq	%rax, %rdi
	xorl	%r15d, %r15d
	testq	%rdi, %rdi
	je	.LBB0_121
# BB#14:                                # %if.end.11.i
	movq	%r14, %r15
	leaq	80(%rsp), %r8
	leaq	88(%rsp), %r9
	movl	$2, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1835103334, %ecx       # imm = 0x6D617466
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	je	.LBB0_30
# BB#15:                                # %if.then.14.i
	movq	88(%rsp), %rbx
	movq	80(%rsp), %r14
	movq	%r13, %rdi
	callq	cmsGetColorSpace
	movl	%eax, %ebp
	leaq	144(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	callq	cmsDetectBlackPoint
	cmpl	$1380401696, %ebp       # imm = 0x52474220
	jne	.LBB0_16
# BB#18:                                # %if.then.5.i.i
	movq	48(%rbx), %rax
	movq	(%rax), %rsi
	leaq	400(%rsp), %rdi
	movl	$72, %edx
	callq	memmove
	movapd	.LCPI0_1(%rip), %xmm0   # xmm0 = [1.999969e+00,1.999969e+00]
	movapd	400(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 400(%rsp)
	movapd	416(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 416(%rsp)
	movapd	432(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 432(%rsp)
	mulpd	448(%rsp), %xmm0
	movapd	%xmm0, 448(%rsp)
	movsd	464(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI0_2(%rip), %xmm0
	movsd	%xmm0, 464(%rsp)
	movq	%r14, %rdi
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, %rbx
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	movq	%r15, %r14
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_27
# BB#19:                                # %for.inc.i.i.i.i
	movq	%r14, %rdi
	callq	Emit1Gamma
	movq	8(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB0_27
# BB#20:                                # %land.lhs.true.i.1.i.i.i
	movq	(%rbx), %rax
	movq	48(%rax), %rdi
	movq	48(%rbp), %rsi
	movslq	40(%rbp), %rdx
	addq	%rdx, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_22
# BB#21:                                # %if.else.i.1.i.i.i
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	Emit1Gamma
	jmp	.LBB0_23
.LBB0_102:                              # %if.then.13.i.i
	movq	8(%r12), %rdi
	movl	$9, %esi
	movl	$.L.str.94, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	xorl	%r15d, %r15d
	jmp	.LBB0_121
.LBB0_12:                               # %if.then.6.i
	xorl	%r15d, %r15d
	movl	$9, %esi
	movl	$.L.str.1, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	cmsSignalError
	jmp	.LBB0_121
.LBB0_106:                              # %if.end.i.i.i.59
	andl	$8192, %r15d            # imm = 0x2000
	movl	$.L.str.102, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.100, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	testl	%r15d, %r15d
	jne	.LBB0_108
# BB#107:                               # %if.then.7.i.i.i
	movl	$.L.str.103, %esi
	jmp	.LBB0_109
.LBB0_30:                               # %if.else.19.i
	movl	%r12d, 96(%rsp)
	movl	%r12d, 64(%rsp)         # 4-byte Spill
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	cmsFormatterForColorspaceOfProfile
	movl	%eax, %ebx
	movl	%ebx, 692(%rsp)
	leaq	144(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movl	%ebp, %r12d
	movl	%r12d, 72(%rsp)         # 4-byte Spill
	movl	%r12d, %edx
	callq	cmsDetectBlackPoint
	movq	%r15, %r14
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	cmsCreateLab4ProfileTHR
	movq	%rax, %rbp
	movq	%r13, 656(%rsp)
	movq	%rbp, 664(%rsp)
	leaq	656(%rsp), %rdi
	movl	$2, %esi
	movl	$4849688, %ecx          # imm = 0x4A0018
	xorl	%r9d, %r9d
	movl	%ebx, %edx
	movl	%r12d, %r8d
	callq	cmsCreateMultiprofileTransform
	movq	%rax, %r12
	movq	%rbp, %rdi
	callq	cmsCloseProfile
	testq	%r12, %r12
	je	.LBB0_31
# BB#32:                                # %if.end.i.33.i
	shrl	$3, %ebx
	andl	$15, %ebx
	leal	-3(%rbx), %eax
	cmpl	$2, %eax
	jae	.LBB0_33
# BB#42:                                # %sw.bb.10.i.i
	movl	$655386, 140(%rsp)      # imm = 0xA001A
	movq	112(%r12), %rdi
	callq	cmsPipelineDup
	movq	%rax, 400(%rsp)
	testq	%rax, %rax
	je	.LBB0_66
# BB#43:                                # %if.end.14.i.38.i
	movl	64(%rsp), %eax          # 4-byte Reload
	orl	$2, %eax
	movl	%eax, 96(%rsp)
	movq	8(%r14), %rdi
	leaq	400(%rsp), %rsi
	leaq	692(%rsp), %rcx
	leaq	140(%rsp), %r8
	leaq	96(%rsp), %r9
	movl	72(%rsp), %edx          # 4-byte Reload
	callq	_cmsOptimizePipeline
	movq	400(%rsp), %rax
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	cmsStageInputChannels
	cmpl	$4, %eax
	jne	.LBB0_44
# BB#46:                                # %sw.bb.2.i.i.i
	movl	$.L.str.56, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.54, %ebp
	movl	$.L.str.53, %r15d
	movl	$.L.str.16, %r13d
	movl	$.L.str.57, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB0_47
.LBB0_16:                               # %if.then.14.i
	cmpl	$1196573017, %ebp       # imm = 0x47524159
	jne	.LBB0_28
# BB#17:                                # %if.then.i.i
	movq	%r14, %rdi
	callq	_cmsStageGetPtrToCurveSet
	movq	(%rax), %rsi
	leaq	144(%rsp), %rdx
	movq	%r15, %r14
	movq	%r14, %rdi
	callq	EmitCIEBasedA
	jmp	.LBB0_63
.LBB0_108:                              # %if.else.i.i.i
	movl	$.L.str.104, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.105, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.106, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.107, %esi
.LBB0_109:                              # %EmitPQRStage.exit.i.i
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
.LBB0_110:                              # %EmitPQRStage.exit.i.i
	movl	56(%rsp), %r15d         # 4-byte Reload
	movl	48(%rsp), %ebx          # 4-byte Reload
	xorl	%r12d, %r12d
	movl	$.L.str.108, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.109, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.110, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.111, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.112, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.113, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.114, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.115, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.116, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.117, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	cmpl	$3, 72(%rsp)            # 4-byte Folded Reload
	cmovel	%r12d, %r14d
	movl	$.L.str.96, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movq	96(%rsp), %rdi
	callq	cmsPipelineGetPtrToFirstStage
	movl	%ebx, 8(%rsp)
	movl	%r14d, (%rsp)
	movl	$.L.str.53, %edx
	movl	$.L.str.54, %ecx
	movl	$.L.str.55, %r8d
	movl	$.L.str.55, %r9d
	movq	%rax, %rsi
	movq	%rbp, %rdi
	callq	WriteCLUT
	movl	$.L.str.97, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r15d, %edx
	callq	_cmsIOPrintf
	cmpl	$2, %r15d
	jb	.LBB0_113
# BB#111:
	movl	$1, %ebx
	.align	16, 0x90
.LBB0_112:                              # %for.body.i.31.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	incl	%ebx
	cmpl	%r15d, %ebx
	jl	.LBB0_112
.LBB0_113:                              # %for.end.i.32.i
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.44, %edx
	movl	72(%rsp), %r15d         # 4-byte Reload
	cmpl	$3, %r15d
	movq	40(%rsp), %rbx          # 8-byte Reload
	ja	.LBB0_115
# BB#114:                               # %switch.lookup.i.i.i
	movslq	%r15d, %rax
	movq	.Lswitch.table(,%rax,8), %rdx
.LBB0_115:                              # %EmitIntent.exit.i.i
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	testb	$1, 91(%rsp)
	jne	.LBB0_117
# BB#116:                               # %if.then.40.i.i
	movl	$.L.str.98, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
.LBB0_117:                              # %if.end.42.i.i
	movq	96(%rsp), %rdi
	callq	cmsPipelineFree
	movq	%rbx, %rdi
	callq	cmsDeleteTransform
	movl	32(%rsp), %ebx          # 4-byte Reload
.LBB0_118:                              # %if.end.10.i
	testl	%ebx, %ebx
	jne	.LBB0_120
# BB#119:                               # %if.then.13.i
	movl	$.L.str.77, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.78, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
.LBB0_120:                              # %if.end.16.i
	movl	16(%rbp), %r15d
	jmp	.LBB0_121
.LBB0_28:                               # %Error.thread66.i
	movq	8(%r15), %rdi
	movl	$9, %esi
	movl	$.L.str.9, %edx
	jmp	.LBB0_29
.LBB0_31:                               # %if.then.i.32.i
	movq	8(%r14), %rdi
	movl	$9, %esi
	movl	$.L.str.50, %edx
.LBB0_29:                               # %if.then.30.i
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB0_66:                               # %if.then.30.i
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	cmsPipelineFree
	xorl	%r15d, %r15d
	jmp	.LBB0_121
.LBB0_33:                               # %if.end.i.33.i
	cmpl	$1, %ebx
	jne	.LBB0_65
# BB#34:                                # %sw.bb.i.i
	movq	8(%r14), %rbp
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, %rbx
	callq	cmsCreateXYZProfile
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$256, (%rsp)            # imm = 0x100
	movl	$196617, %edx           # imm = 0x30009
	movl	$4784152, %r8d          # imm = 0x490018
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rax, %rcx
	movl	72(%rsp), %r9d          # 4-byte Reload
	callq	cmsCreateTransformTHR
	movq	%rax, %rbp
	testq	%rbx, %rbx
	je	.LBB0_41
# BB#35:                                # %for.cond.preheader.i.i.i
	xorl	%r15d, %r15d
	leaq	140(%rsp), %r13
	leaq	400(%rsp), %r14
.LBB0_36:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movb	%r15b, 140(%rsp)
	movl	$1, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	cmsDoTransform
	movsd	408(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI0_0(%rip), %xmm0
	addsd	.LCPI0_3(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB0_37
# BB#38:                                # %if.end.i.i.i.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI0_0(%rip), %xmm0
	jae	.LBB0_40
# BB#39:                                # %if.end.3.i.i.i.i
                                        #   in Loop: Header=BB0_36 Depth=1
	addsd	.LCPI0_4(%rip), %xmm0
	addsd	.LCPI0_5(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB0_40
.LBB0_37:                               #   in Loop: Header=BB0_36 Depth=1
	xorl	%eax, %eax
.LBB0_40:                               # %_cmsQuickSaturateWord.exit.i.i.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movq	48(%rbx), %rcx
	movw	%ax, (%rcx,%r15,2)
	incq	%r15
	cmpq	$256, %r15              # imm = 0x100
	jne	.LBB0_36
.LBB0_41:                               # %ExtractGray2Y.exit.i.i
	movq	%rbp, %rdi
	callq	cmsDeleteTransform
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	cmsCloseProfile
	leaq	144(%rsp), %rdx
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	EmitCIEBasedA
	movq	%rbx, %rdi
	callq	cmsFreeToneCurve
	jmp	.LBB0_62
.LBB0_44:                               # %if.end.14.i.38.i
	cmpl	$3, %eax
	jne	.LBB0_64
# BB#45:                                # %sw.bb.i.i.i
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.55, %r15d
	movl	$.L.str.54, %r13d
	movl	$.L.str.53, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$.L.str.55, %ebp
.LBB0_47:                               # %sw.epilog.i.i.i
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movq	%rbx, %rdi
	callq	cmsStageType
	cmpl	$1668707188, %eax       # imm = 0x63767374
	jne	.LBB0_57
# BB#48:                                # %if.then.i.i.i
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r14, %r13
	callq	_cmsIOPrintf
	movq	%rbx, %rdi
	callq	cmsStageOutputChannels
	movl	%eax, %ebp
	movq	%rbx, %rdi
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, %rbx
	testl	%ebp, %ebp
	jle	.LBB0_56
# BB#49:                                # %for.body.lr.ph.i.i.i.i
	movslq	%ebp, %r15
	xorl	%ebp, %ebp
.LBB0_50:                               # %for.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rbp,8), %r14
	testq	%r14, %r14
	je	.LBB0_56
# BB#51:                                # %if.end.i.i.30.i.i
                                        #   in Loop: Header=BB0_50 Depth=1
	testq	%rbp, %rbp
	jle	.LBB0_54
# BB#52:                                # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-8(%rbx,%rbp,8), %rax
	movq	48(%rax), %rdi
	movq	48(%r14), %rsi
	movslq	40(%r14), %rdx
	addq	%rdx, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_53
.LBB0_54:                               # %if.else.i.i.i.i
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	Emit1Gamma
	jmp	.LBB0_55
.LBB0_53:                               # %if.then.10.i.i.i.i
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_cmsIOPrintf
.LBB0_55:                               # %for.inc.i.i.i.41.i
                                        #   in Loop: Header=BB0_50 Depth=1
	incq	%rbp
	cmpq	%r15, %rbp
	jl	.LBB0_50
.LBB0_56:                               # %EmitNGamma.exit.i.i.i
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r13, %r14
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	56(%rbx), %rbx
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB0_57:                               # %if.end.i.i.i
	movq	%rbx, %rdi
	callq	cmsStageType
	cmpl	$1668052340, %eax       # imm = 0x636C7574
	jne	.LBB0_59
# BB#58:                                # %if.then.12.i.i.i
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%r13, %rcx
	movq	%r15, %r8
	movq	%rbp, %r9
	callq	WriteCLUT
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
.LBB0_59:                               # %if.end.15.i.i.i
	movl	$.L.str.65, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.66, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.68, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.69, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.72, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.73, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.75, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	160(%rsp), %xmm2        # xmm2 = mem[0],zero
	movl	$.L.str.38, %esi
	movb	$3, %al
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	callq	cmsD50_XYZ
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	$.L.str.39, %esi
	movb	$3, %al
	movq	%r14, %rdi
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_cmsIOPrintf
	movl	$.L.str.44, %edx
	movl	72(%rsp), %eax          # 4-byte Reload
	cmpl	$3, %eax
	ja	.LBB0_61
# BB#60:                                # %switch.lookup.i.i.i.i
	cltq
	movq	.Lswitch.table(,%rax,8), %rdx
.LBB0_61:                               # %EmitIntent.exit.i.i.i
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movq	400(%rsp), %rdi
	callq	cmsPipelineFree
.LBB0_62:                               # %sw.epilog.i.i
	movq	%r12, %rdi
	callq	cmsDeleteTransform
	jmp	.LBB0_63
.LBB0_22:                               # %if.then.10.i.1.i.i.i
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
.LBB0_23:                               # %for.inc.i.1.i.i.i
	movq	16(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB0_27
# BB#24:                                # %land.lhs.true.i.2.i.i.i
	movq	8(%rbx), %rax
	movq	48(%rax), %rdi
	movq	48(%rbp), %rsi
	movslq	40(%rbp), %rdx
	addq	%rdx, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_26
# BB#25:                                # %if.else.i.2.i.i.i
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	Emit1Gamma
	jmp	.LBB0_27
.LBB0_65:                               # %sw.default.i.i
	movq	8(%r14), %rdi
	movl	$9, %esi
	movl	$.L.str.51, %edx
	xorl	%eax, %eax
	movl	%ebx, %ecx
	callq	cmsSignalError
	jmp	.LBB0_66
.LBB0_26:                               # %if.then.10.i.2.i.i.i
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
.LBB0_27:                               # %EmitCIEBasedABC.exit.i.i
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.48, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movsd	400(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	424(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	448(%rsp), %xmm2        # xmm2 = mem[0],zero
	movl	$.L.str.49, %esi
	movb	$3, %al
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movsd	408(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	432(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	456(%rsp), %xmm2        # xmm2 = mem[0],zero
	movl	$.L.str.49, %esi
	movb	$3, %al
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movsd	416(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	440(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	464(%rsp), %xmm2        # xmm2 = mem[0],zero
	movl	$.L.str.49, %esi
	movb	$3, %al
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	160(%rsp), %xmm2        # xmm2 = mem[0],zero
	movl	$.L.str.38, %esi
	movb	$3, %al
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	callq	cmsD50_XYZ
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	$.L.str.39, %esi
	movb	$3, %al
	movq	%r14, %rdi
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_cmsIOPrintf
	movl	$.L.str.45, %esi
	movl	$.L.str.40, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
.LBB0_63:                               # %if.then.27.i
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	16(%r14), %r15d
	callq	cmsPipelineFree
.LBB0_121:                              # %sw.epilog
	movl	%r15d, %eax
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_64:                               # %EmitCIEBasedDEF.exit.i.i
	movq	400(%rsp), %rdi
	callq	cmsPipelineFree
	jmp	.LBB0_66
.Lfunc_end0:
	.size	cmsGetPostScriptColorResource, .Lfunc_end0-cmsGetPostScriptColorResource
	.cfi_endproc

	.globl	cmsGetPostScriptCRD
	.align	16, 0x90
	.type	cmsGetPostScriptCRD,@function
cmsGetPostScriptCRD:                    # @cmsGetPostScriptCRD
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
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbp
	testq	%r8, %r8
	je	.LBB1_1
# BB#2:                                 # %if.else
	movl	$.L.str, %ecx
	movq	%rbp, %rdi
	movq	%r8, %rsi
	movl	%r9d, %edx
	callq	cmsOpenIOhandlerFromMem
	jmp	.LBB1_3
.LBB1_1:                                # %if.then
	movq	%rbp, %rdi
	callq	cmsOpenIOhandlerFromNULL
.LBB1_3:                                # %if.end
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_5
# BB#4:                                 # %if.end.3
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movq	%rbx, %r9
	callq	cmsGetPostScriptColorResource
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	cmsCloseIOhandler
	movl	%ebp, %eax
	jmp	.LBB1_6
.LBB1_5:                                # %cleanup
	xorl	%eax, %eax
.LBB1_6:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmsGetPostScriptCRD, .Lfunc_end1-cmsGetPostScriptCRD
	.cfi_endproc

	.globl	cmsGetPostScriptCSA
	.align	16, 0x90
	.type	cmsGetPostScriptCSA,@function
cmsGetPostScriptCSA:                    # @cmsGetPostScriptCSA
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
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbp
	testq	%r8, %r8
	je	.LBB2_1
# BB#2:                                 # %if.else
	movl	$.L.str, %ecx
	movq	%rbp, %rdi
	movq	%r8, %rsi
	movl	%r9d, %edx
	callq	cmsOpenIOhandlerFromMem
	jmp	.LBB2_3
.LBB2_1:                                # %if.then
	movq	%rbp, %rdi
	callq	cmsOpenIOhandlerFromNULL
.LBB2_3:                                # %if.end
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_5
# BB#4:                                 # %if.end.3
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movq	%rbx, %r9
	callq	cmsGetPostScriptColorResource
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	cmsCloseIOhandler
	movl	%ebp, %eax
	jmp	.LBB2_6
.LBB2_5:                                # %cleanup
	xorl	%eax, %eax
.LBB2_6:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cmsGetPostScriptCSA, .Lfunc_end2-cmsGetPostScriptCSA
	.cfi_endproc

	.align	16, 0x90
	.type	EmitCIEBasedA,@function
EmitCIEBasedA:                          # @EmitCIEBasedA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 48
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	callq	_cmsIOPrintf
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_cmsIOPrintf
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	Emit1Gamma
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_cmsIOPrintf
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r14), %xmm2         # xmm2 = mem[0],zero
	movl	$.L.str.38, %esi
	movb	$3, %al
	movq	%rbx, %rdi
	callq	_cmsIOPrintf
	callq	cmsD50_XYZ
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	$.L.str.39, %esi
	movb	$3, %al
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_cmsIOPrintf
	movl	$.L.str.45, %esi
	movl	$.L.str.40, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_cmsIOPrintf            # TAILCALL
.Lfunc_end3:
	.size	EmitCIEBasedA, .Lfunc_end3-EmitCIEBasedA
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4562254508917369340     # double 0.001
	.text
	.align	16, 0x90
	.type	Emit1Gamma,@function
Emit1Gamma:                             # @Emit1Gamma
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB4_8
# BB#1:                                 # %if.end
	cmpl	$0, 40(%rbx)
	je	.LBB4_8
# BB#2:                                 # %if.end.3
	movq	%rbx, %rdi
	callq	cmsIsToneCurveLinear
	testl	%eax, %eax
	je	.LBB4_3
.LBB4_8:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_3:                                # %if.end.5
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cmsEstimateGamma
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_4
# BB#9:                                 # %if.then.8
	movl	$.L.str.17, %esi
	movb	$1, %al
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_cmsIOPrintf            # TAILCALL
.LBB4_4:                                # %if.end.10
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.37, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	cmpl	$0, 40(%rbx)
	je	.LBB4_7
# BB#5:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	48(%rbx), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	incl	%ebp
	cmpl	40(%rbx), %ebp
	jb	.LBB4_6
.LBB4_7:                                # %for.end
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_cmsIOPrintf
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_cmsIOPrintf            # TAILCALL
.Lfunc_end4:
	.size	Emit1Gamma, .Lfunc_end4-Emit1Gamma
	.cfi_endproc

	.align	16, 0x90
	.type	WriteCLUT,@function
WriteCLUT:                              # @WriteCLUT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 128
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%rcx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	136(%rsp), %eax
	movl	128(%rsp), %ecx
	movq	$-1, 24(%rsp)
	movq	48(%r12), %rbx
	movq	%rbx, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r15, 56(%rsp)
	movl	%ecx, 64(%rsp)
	movl	%eax, 68(%rsp)
	xorl	%ebp, %ebp
	movl	$.L.str.57, %esi
	xorl	%eax, %eax
	callq	_cmsIOPrintf
	movq	8(%rbx), %rax
	cmpl	$0, 12(%rax)
	je	.LBB5_2
	.align	16, 0x90
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	movl	20(%rax,%rcx,4), %edx
	movl	$.L.str.61, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_cmsIOPrintf
	incl	%ebp
	movq	8(%rbx), %rax
	cmpl	12(%rax), %ebp
	jb	.LBB5_1
.LBB5_2:                                # %for.end
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_cmsIOPrintf
	leaq	8(%rsp), %rdx
	movl	$OutputValueSampler, %esi
	movl	$16777216, %ecx         # imm = 0x1000000
	movq	%r12, %rdi
	callq	cmsStageSampleCLut16bit
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_cmsIOPrintf
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_cmsIOPrintf
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_cmsIOPrintf
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	WriteCLUT, .Lfunc_end5-WriteCLUT
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643228808005025792     # double 257
.LCPI6_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	OutputValueSampler,@function
OutputValueSampler:                     # @OutputValueSampler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp64:
	.cfi_def_cfa_offset 80
.Ltmp65:
	.cfi_offset %rbx, -48
.Ltmp66:
	.cfi_offset %r12, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	$0, 56(%r12)
	je	.LBB6_13
# BB#1:                                 # %if.then
	movzwl	(%r15), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jne	.LBB6_13
# BB#2:                                 # %if.then.2
	movzwl	2(%r15), %eax
	addl	$-30720, %eax           # imm = 0xFFFFFFFFFFFF8800
	movzwl	%ax, %eax
	cmpl	$4096, %eax             # imm = 0x1000
	ja	.LBB6_13
# BB#3:                                 # %land.lhs.true.11
	movzwl	4(%r15), %eax
	addl	$-30720, %eax           # imm = 0xFFFFFFFFFFFF8800
	movzwl	%ax, %eax
	cmpl	$4096, %eax             # imm = 0x1000
	ja	.LBB6_13
# BB#4:                                 # %if.then.21
	movl	60(%r12), %edi
	leaq	16(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	_cmsEndPointsBySpace
	testl	%eax, %eax
	je	.LBB6_26
# BB#5:                                 # %for.cond.preheader
	movl	12(%rsp), %ebp
	testq	%rbp, %rbp
	je	.LBB6_13
# BB#6:                                 # %for.body.lr.ph
	movq	16(%rsp), %rcx
	movl	%ebp, %esi
	andl	$15, %esi
	xorl	%edx, %edx
	cmpl	%esi, %ebp
	je	.LBB6_11
# BB#7:                                 # %vector.memcheck
	leaq	-2(%rcx,%rbp,2), %rax
	xorl	%edx, %edx
	cmpq	%r14, %rax
	jb	.LBB6_9
# BB#8:                                 # %vector.memcheck
	leaq	-2(%r14,%rbp,2), %rax
	cmpq	%rax, %rcx
	jbe	.LBB6_11
.LBB6_9:                                # %vector.body.preheader
	movq	%rbp, %rdx
	subq	%rsi, %rdx
	leaq	16(%rcx), %rsi
	leaq	16(%r14), %rdi
	movl	%ebp, %ebx
	andl	$15, %ebx
	movq	%rbp, %rax
	subq	%rbx, %rax
.LBB6_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	-16(%rsi), %xmm0
	movups	(%rsi), %xmm1
	movupd	%xmm0, -16(%rdi)
	movups	%xmm1, (%rdi)
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$-16, %rax
	jne	.LBB6_10
.LBB6_11:                               # %middle.block
	cmpq	%rdx, %rbp
	je	.LBB6_13
	.align	16, 0x90
.LBB6_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rcx,%rdx,2), %ax
	movw	%ax, (%r14,%rdx,2)
	incq	%rdx
	cmpq	%rbp, %rdx
	jb	.LBB6_12
.LBB6_13:                               # %if.end.33
	movzwl	(%r15), %ecx
	movl	16(%r12), %eax
	cmpl	%eax, %ecx
	je	.LBB6_17
# BB#14:                                # %if.then.38
	cmpl	$-1, %eax
	je	.LBB6_16
# BB#15:                                # %if.then.42
	movq	8(%r12), %rdi
	movq	48(%r12), %rsi
	xorl	%eax, %eax
	callq	_cmsIOPrintf
	movl	$-1, 20(%r12)
	movq	8(%r12), %rdi
	movq	32(%r12), %rsi
	xorl	%eax, %eax
	callq	_cmsIOPrintf
.LBB6_16:                               # %if.end.46
	movl	$0, _cmsPSActualColumn(%rip)
	movq	8(%r12), %rdi
	movq	24(%r12), %rsi
	xorl	%eax, %eax
	callq	_cmsIOPrintf
	movzwl	(%r15), %eax
	movl	%eax, 16(%r12)
.LBB6_17:                               # %if.end.52
	movzwl	2(%r15), %ecx
	movl	20(%r12), %eax
	cmpl	%eax, %ecx
	je	.LBB6_21
# BB#18:                                # %if.then.58
	cmpl	$-1, %eax
	je	.LBB6_20
# BB#19:                                # %if.then.62
	movq	8(%r12), %rdi
	movq	48(%r12), %rsi
	xorl	%eax, %eax
	callq	_cmsIOPrintf
.LBB6_20:                               # %if.end.66
	movq	8(%r12), %rdi
	movq	40(%r12), %rsi
	xorl	%eax, %eax
	callq	_cmsIOPrintf
	movzwl	2(%r15), %eax
	movl	%eax, 20(%r12)
.LBB6_21:                               # %for.cond.73.preheader
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movl	$1, %r15d
	cmpl	$0, 16(%rax)
	je	.LBB6_27
# BB#22:                                # %for.body.77.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB6_23:                               # %for.body.77
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movzwl	(%r14,%rax,2), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI6_0(%rip), %xmm0
	addsd	.LCPI6_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	8(%r12), %rbp
	movzbl	%al, %edx
	movl	$.L.str.63, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	_cmsPSActualColumn(%rip), %eax
	addl	$2, %eax
	movl	%eax, _cmsPSActualColumn(%rip)
	cmpl	$61, %eax
	jl	.LBB6_25
# BB#24:                                # %if.then.i
                                        #   in Loop: Header=BB6_23 Depth=1
	movl	$.L.str.64, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	_cmsIOPrintf
	movl	$0, _cmsPSActualColumn(%rip)
.LBB6_25:                               # %WriteByte.exit
                                        #   in Loop: Header=BB6_23 Depth=1
	incl	%ebx
	movq	(%r12), %rax
	movq	8(%rax), %rax
	cmpl	16(%rax), %ebx
	jb	.LBB6_23
	jmp	.LBB6_27
.LBB6_26:                               # %cleanup.85.critedge
	xorl	%r15d, %r15d
.LBB6_27:                               # %cleanup.85
	movl	%r15d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	OutputValueSampler, .Lfunc_end6-OutputValueSampler
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"w"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid output color space"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"<<\n"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(colorlistcomment) (%s)\n"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Named color CSA"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(Prefix) [ (Pantone ) (PANTONE ) ]\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(Suffix) [ ( CV) ( CVC) ( C) ]\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"  (%s) [ %.3f %.3f %.3f ]\n"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	">>\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Profile is not suitable for CSA. Unsupported colorspace."
	.size	.L.str.9, 57

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"[ /CIEBasedA\n"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"  <<\n"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/DecodeA "
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" \n"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/MatrixA [ 0.9642 1.0000 0.8249 ]\n"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/RangeLMN [ 0.0 0.9642 0.0 1.0000 0.0 0.8249 ]\n"
	.size	.L.str.15, 48

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"]\n"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"{ %g exp } bind "
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"{ "
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" ["
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%d "
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"] "
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"dup "
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"length 1 sub "
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"3 -1 roll "
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"mul "
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"floor cvi "
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"exch "
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"ceiling cvi "
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"3 index "
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"get "
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"4 -1 roll "
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"3 1 roll "
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"sub "
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"add "
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"65535 div "
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	" } bind "
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"dup 0.0 lt { pop 0.0 } if dup 1.0 gt { pop 1.0 } if "
	.size	.L.str.37, 53

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/BlackPoint [%f %f %f]\n"
	.size	.L.str.38, 24

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/WhitePoint [%f %f %f]\n"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Perceptual"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"RelativeColorimetric"
	.size	.L.str.41, 21

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"AbsoluteColorimetric"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Saturation"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Undefined"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"/RenderingIntent (%s)\n"
	.size	.L.str.45, 23

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"[ /CIEBasedABC\n"
	.size	.L.str.46, 16

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"/DecodeABC [ "
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/MatrixABC [ "
	.size	.L.str.48, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%.6f %.6f %.6f "
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Cannot create transform Profile -> Lab"
	.size	.L.str.50, 39

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Only 3, 4 channels supported for CSA. This profile has %d channels."
	.size	.L.str.51, 68

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"[ /CIEBasedDEF\n"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"<"
	.size	.L.str.53, 2

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	">\n"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.zero	1
	.size	.L.str.55, 1

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"[ /CIEBasedDEFG\n"
	.size	.L.str.56, 17

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"["
	.size	.L.str.57, 2

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"/DecodeDEF [ "
	.size	.L.str.58, 14

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"/Table "
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"   >>\n"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	" %d "
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	" [\n"
	.size	.L.str.62, 4

	.type	_cmsPSActualColumn,@object # @_cmsPSActualColumn
	.local	_cmsPSActualColumn
	.comm	_cmsPSActualColumn,4,4
	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"%02x"
	.size	.L.str.63, 5

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\n"
	.size	.L.str.64, 2

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"/RangeABC [ 0 1 0 1 0 1]\n"
	.size	.L.str.65, 26

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"/DecodeABC [\n"
	.size	.L.str.66, 14

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"{100 mul  16 add 116 div } bind\n"
	.size	.L.str.67, 33

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"{255 mul 128 sub 500 div } bind\n"
	.size	.L.str.68, 33

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"{255 mul 128 sub 200 div } bind\n"
	.size	.L.str.69, 33

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"/MatrixABC [ 1 1 1 1 0 0 0 0 -1]\n"
	.size	.L.str.70, 34

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"/RangeLMN [ -0.236 1.254 0 1 -0.635 1.640 ]\n"
	.size	.L.str.71, 45

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"/DecodeLMN [\n"
	.size	.L.str.72, 14

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse 0.964200 mul} bind\n"
	.size	.L.str.73, 93

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse } bind\n"
	.size	.L.str.74, 81

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse 0.824900 mul} bind\n"
	.size	.L.str.75, 93

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Color Rendering Dictionary (CRD)"
	.size	.L.str.76, 33

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"%%%%EndResource\n"
	.size	.L.str.77, 17

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"\n%% CRD End\n"
	.size	.L.str.78, 13

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata,"a",@progbits
.L.str.79:
	.zero	3
	.size	.L.str.79, 3

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"%%!PS-Adobe-3.0\n"
	.size	.L.str.80, 17

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"%%\n"
	.size	.L.str.81, 4

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"%% %s\n"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"%% Source: %s\n"
	.size	.L.str.83, 15

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"%%         %s\n"
	.size	.L.str.84, 15

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%% Created: %s"
	.size	.L.str.85, 15

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"%%%%BeginResource\n"
	.size	.L.str.86, 19

	.type	RemoveCR.Buffer,@object # @RemoveCR.Buffer
	.local	RemoveCR.Buffer
	.comm	RemoveCR.Buffer,2048,16
	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"(colorlistcomment) (%s) \n"
	.size	.L.str.87, 26

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Named profile"
	.size	.L.str.88, 14

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"  (%s) [ %s ]\n"
	.size	.L.str.89, 15

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"   >>"
	.size	.L.str.90, 6

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	" /Current exch /HPSpotTable defineresource pop\n"
	.size	.L.str.91, 48

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"%.3f"
	.size	.L.str.92, 5

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	" "
	.size	.L.str.93, 2

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Cannot create transform Lab -> Profile in CRD creation"
	.size	.L.str.94, 55

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"/ColorRenderingType 1\n"
	.size	.L.str.95, 23

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"/RenderTable "
	.size	.L.str.96, 14

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	" %d {} bind "
	.size	.L.str.97, 13

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"/Current exch /ColorRendering defineresource pop\n"
	.size	.L.str.98, 50

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"/MatrixPQR [1 0 0 0 1 0 0 0 1 ]\n"
	.size	.L.str.99, 33

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"/RangePQR [ -0.5 2 -0.5 2 -0.5 2 ]\n"
	.size	.L.str.100, 36

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"%% Absolute colorimetric -- encode to relative to maximize LUT usage\n/TransformPQR [\n{0.9642 mul %g div exch pop exch pop exch pop exch pop} bind\n{1.0000 mul %g div exch pop exch pop exch pop exch pop} bind\n{0.8249 mul %g div exch pop exch pop exch pop exch pop} bind\n]\n"
	.size	.L.str.101, 271

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"%% Bradford Cone Space\n/MatrixPQR [0.8951 -0.7502 0.0389 0.2664 1.7135 -0.0685 -0.1614 0.0367 1.0296 ] \n"
	.size	.L.str.102, 105

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"%% VonKries-like transform in Bradford Cone Space\n/TransformPQR [\n{exch pop exch 3 get mul exch pop exch 3 get div} bind\n{exch pop exch 4 get mul exch pop exch 4 get div} bind\n{exch pop exch 5 get mul exch pop exch 5 get div} bind\n]\n"
	.size	.L.str.103, 234

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"%% VonKries-like transform in Bradford Cone Space plus BPC\n/TransformPQR [\n"
	.size	.L.str.104, 76

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"{4 index 3 get div 2 index 3 get mul 2 index 3 get 2 index 3 get sub mul 2 index 3 get 4 index 3 get 3 index 3 get sub mul sub 3 index 3 get 3 index 3 get exch sub div exch pop exch pop exch pop exch pop } bind\n"
	.size	.L.str.105, 212

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"{4 index 4 get div 2 index 4 get mul 2 index 4 get 2 index 4 get sub mul 2 index 4 get 4 index 4 get 3 index 4 get sub mul sub 3 index 4 get 3 index 4 get exch sub div exch pop exch pop exch pop exch pop } bind\n"
	.size	.L.str.106, 212

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"{4 index 5 get div 2 index 5 get mul 2 index 5 get 2 index 5 get sub mul 2 index 5 get 4 index 5 get 3 index 5 get sub mul sub 3 index 5 get 3 index 5 get exch sub div exch pop exch pop exch pop exch pop } bind\n]\n"
	.size	.L.str.107, 214

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"/RangeLMN [ -0.635 2.0 0 2 -0.635 2.0 ]\n"
	.size	.L.str.108, 41

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"/EncodeLMN [\n"
	.size	.L.str.109, 14

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"{ 0.964200  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n"
	.size	.L.str.110, 87

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"{ 1.000000  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n"
	.size	.L.str.111, 87

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"{ 0.824900  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n"
	.size	.L.str.112, 87

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"/MatrixABC [ 0 1 0 1 -1 1 0 0 -1 ]\n"
	.size	.L.str.113, 36

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"/EncodeABC [\n"
	.size	.L.str.114, 14

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"{ 116 mul  16 sub 100 div  } bind\n"
	.size	.L.str.115, 35

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"{ 500 mul 128 add 256 div  } bind\n"
	.size	.L.str.116, 35

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"{ 200 mul 128 add 256 div  } bind\n"
	.size	.L.str.117, 35

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.43
	.quad	.L.str.42
	.size	.Lswitch.table, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
