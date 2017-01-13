	.text
	.file	"cmsvirt.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4616527388026811187     # double 4.2999999999999998
	.text
	.globl	cmsCreateRGBProfileTHR
	.align	16, 0x90
	.type	cmsCreateRGBProfileTHR,@function
cmsCreateRGBProfileTHR:                 # @cmsCreateRGBProfileTHR
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
	subq	$264, %rsp              # imm = 0x108
.Ltmp6:
	.cfi_def_cfa_offset 320
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
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_27
# BB#1:                                 # %if.end
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cmsSetProfileVersion
	movl	$1835955314, %esi       # imm = 0x6D6E7472
	movq	%rbx, %rdi
	callq	cmsSetDeviceClass
	movl	$1380401696, %esi       # imm = 0x52474220
	movq	%rbx, %rdi
	callq	cmsSetColorSpace
	movl	$1482250784, %esi       # imm = 0x58595A20
	movq	%rbx, %rdi
	callq	cmsSetPCS
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmsSetHeaderRenderingIntent
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB0_26
# BB#2:                                 # %if.end.4
	testq	%r12, %r12
	je	.LBB0_3
# BB#4:                                 # %if.then.6
	callq	cmsD50_XYZ
	movl	$2004119668, %esi       # imm = 0x77747074
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB0_26
# BB#5:                                 # %if.end.11
	leaq	(%rsp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	cmsxyY2XYZ
	callq	cmsD50_XYZ
	leaq	24(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%rax, %rcx
	callq	_cmsAdaptationMatrix
	movl	$1667785060, %esi       # imm = 0x63686164
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB0_26
# BB#6:                                 # %if.end.18
	testq	%r14, %r14
	je	.LBB0_7
# BB#8:                                 # %if.then.21
	movupd	(%r12), %xmm0
	movapd	%xmm0, 96(%rsp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 112(%rsp)
	leaq	192(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	%r14, %rdx
	callq	_cmsBuildRGB2XYZtransferMatrix
	testl	%eax, %eax
	je	.LBB0_26
# BB#9:                                 # %if.end.27
	movq	192(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	120(%rsp), %rdx
	movl	$1918392666, %esi       # imm = 0x7258595A
	movq	%rbx, %rdi
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB0_26
# BB#10:                                # %if.end.78
	leaq	168(%rsp), %rdx
	movl	$1649957210, %esi       # imm = 0x6258595A
	movq	%rbx, %rdi
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB0_26
# BB#11:                                # %if.end.83
	leaq	144(%rsp), %rdx
	movl	$1733843290, %esi       # imm = 0x6758595A
	movq	%rbx, %rdi
	callq	cmsWriteTag
	movb	$1, %bpl
	testl	%eax, %eax
	jne	.LBB0_12
	jmp	.LBB0_26
.LBB0_3:                                # %if.end.18.thread
	testq	%r14, %r14
	setne	%bpl
	jmp	.LBB0_12
.LBB0_7:
	xorl	%ebp, %ebp
.LBB0_12:                               # %if.end.89
	testq	%r15, %r15
	je	.LBB0_22
# BB#13:                                # %if.then.91
	movq	(%r15), %rdx
	movl	$1918128707, %esi       # imm = 0x72545243
	movq	%rbx, %rdi
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB0_26
# BB#14:                                # %if.end.96
	movq	8(%r15), %rdx
	cmpq	(%r15), %rdx
	je	.LBB0_15
# BB#16:                                # %if.else
	movl	$1733579331, %esi       # imm = 0x67545243
	movq	%rbx, %rdi
	callq	cmsWriteTag
	jmp	.LBB0_17
.LBB0_15:                               # %if.then.99
	movl	$1733579331, %esi       # imm = 0x67545243
	movl	$1918128707, %edx       # imm = 0x72545243
	movq	%rbx, %rdi
	callq	cmsLinkTag
.LBB0_17:                               # %if.else
	testl	%eax, %eax
	je	.LBB0_26
# BB#18:                                # %if.end.109
	movq	16(%r15), %rdx
	cmpq	(%r15), %rdx
	je	.LBB0_19
# BB#20:                                # %if.else.118
	movl	$1649693251, %esi       # imm = 0x62545243
	movq	%rbx, %rdi
	callq	cmsWriteTag
	jmp	.LBB0_21
.LBB0_19:                               # %if.then.113
	movl	$1649693251, %esi       # imm = 0x62545243
	movl	$1918128707, %edx       # imm = 0x72545243
	movq	%rbx, %rdi
	callq	cmsLinkTag
.LBB0_21:                               # %if.else.118
	testl	%eax, %eax
	je	.LBB0_26
.LBB0_22:                               # %if.end.125
	testb	%bpl, %bpl
	je	.LBB0_23
# BB#24:                                # %if.then.127
	movl	$1667789421, %esi       # imm = 0x6368726D
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB0_26
# BB#25:
	movq	%rbx, %rax
	jmp	.LBB0_27
.LBB0_26:                               # %if.then.134
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB0_27:                               # %cleanup
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_23:
	movq	%rbx, %rax
	jmp	.LBB0_27
.Lfunc_end0:
	.size	cmsCreateRGBProfileTHR, .Lfunc_end0-cmsCreateRGBProfileTHR
	.cfi_endproc

	.align	16, 0x90
	.type	SetTextTags,@function
SetTextTags:                            # @SetTextTags
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
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %r13
	movq	%rdi, %r12
	callq	cmsGetProfileContextID
	movq	%rax, %rbp
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	cmsMLUalloc
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	cmsMLUalloc
	movq	%rax, %r14
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB1_6
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB1_6
# BB#2:                                 # %if.end
	movl	$.L.str.16, %esi
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movq	%r13, %rcx
	callq	cmsMLUsetWide
	testl	%eax, %eax
	je	.LBB1_6
# BB#3:                                 # %if.end.6
	movl	$.L.str.16, %esi
	movl	$.L.str.17, %edx
	movl	$.L.str.18, %ecx
	movq	%r14, %rdi
	callq	cmsMLUsetWide
	testl	%eax, %eax
	je	.LBB1_6
# BB#4:                                 # %if.end.10
	movl	$1684370275, %esi       # imm = 0x64657363
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB1_6
# BB#5:                                 # %if.end.14
	movl	$1668313716, %esi       # imm = 0x63707274
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r15d
.LBB1_6:                                # %Error
	testq	%rbx, %rbx
	je	.LBB1_8
# BB#7:                                 # %if.then.20
	movq	%rbx, %rdi
	callq	cmsMLUfree
.LBB1_8:                                # %if.end.21
	testq	%r14, %r14
	je	.LBB1_10
# BB#9:                                 # %if.then.23
	movq	%r14, %rdi
	callq	cmsMLUfree
.LBB1_10:                               # %if.end.24
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SetTextTags, .Lfunc_end1-SetTextTags
	.cfi_endproc

	.globl	cmsCreateRGBProfile
	.align	16, 0x90
	.type	cmsCreateRGBProfile,@function
cmsCreateRGBProfile:                    # @cmsCreateRGBProfile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	xorl	%edi, %edi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	jmp	cmsCreateRGBProfileTHR  # TAILCALL
.Lfunc_end2:
	.size	cmsCreateRGBProfile, .Lfunc_end2-cmsCreateRGBProfile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4616527388026811187     # double 4.2999999999999998
	.text
	.globl	cmsCreateGrayProfileTHR
	.align	16, 0x90
	.type	cmsCreateGrayProfileTHR,@function
cmsCreateGrayProfileTHR:                # @cmsCreateGrayProfileTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 64
.Ltmp31:
	.cfi_offset %rbx, -40
.Ltmp32:
	.cfi_offset %r12, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB3_9
# BB#1:                                 # %if.end
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cmsSetProfileVersion
	movl	$1835955314, %esi       # imm = 0x6D6E7472
	movq	%rbx, %rdi
	callq	cmsSetDeviceClass
	movl	$1196573017, %esi       # imm = 0x47524159
	movq	%rbx, %rdi
	callq	cmsSetColorSpace
	movl	$1482250784, %esi       # imm = 0x58595A20
	movq	%rbx, %rdi
	callq	cmsSetPCS
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmsSetHeaderRenderingIntent
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB3_8
# BB#2:                                 # %if.end.4
	testq	%r15, %r15
	je	.LBB3_4
# BB#3:                                 # %if.then.6
	leaq	(%rsp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	cmsxyY2XYZ
	movl	$2004119668, %esi       # imm = 0x77747074
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB3_8
.LBB3_4:                                # %if.end.11
	testq	%r14, %r14
	je	.LBB3_5
# BB#6:                                 # %if.then.13
	movl	$1800688195, %esi       # imm = 0x6B545243
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB3_8
# BB#7:
	movq	%rbx, %rax
	jmp	.LBB3_9
.LBB3_8:                                # %if.then.20
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
	jmp	.LBB3_9
.LBB3_5:
	movq	%rbx, %rax
.LBB3_9:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	cmsCreateGrayProfileTHR, .Lfunc_end3-cmsCreateGrayProfileTHR
	.cfi_endproc

	.globl	cmsCreateGrayProfile
	.align	16, 0x90
	.type	cmsCreateGrayProfile,@function
cmsCreateGrayProfile:                   # @cmsCreateGrayProfile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edi, %edi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmp	cmsCreateGrayProfileTHR # TAILCALL
.Lfunc_end4:
	.size	cmsCreateGrayProfile, .Lfunc_end4-cmsCreateGrayProfile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4616527388026811187     # double 4.2999999999999998
	.text
	.globl	cmsCreateLinearizationDeviceLinkTHR
	.align	16, 0x90
	.type	cmsCreateLinearizationDeviceLinkTHR,@function
cmsCreateLinearizationDeviceLinkTHR:    # @cmsCreateLinearizationDeviceLinkTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -48
.Ltmp41:
	.cfi_offset %r12, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %r12
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB5_8
# BB#1:                                 # %if.end
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cmsSetProfileVersion
	movl	$1818848875, %esi       # imm = 0x6C696E6B
	movq	%rbx, %rdi
	callq	cmsSetDeviceClass
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	cmsSetColorSpace
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	cmsSetPCS
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmsSetHeaderRenderingIntent
	movl	%ebp, %edi
	callq	cmsChannelsOf
	movl	%eax, %ebp
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%ebp, %edx
	callq	cmsPipelineAlloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB5_7
# BB#2:                                 # %if.end.4
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	callq	cmsStageAllocToneCurves
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB5_7
# BB#3:                                 # %if.end.9
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB5_7
# BB#4:                                 # %if.end.13
	movl	$1093812784, %esi       # imm = 0x41324230
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB5_7
# BB#5:                                 # %if.end.17
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	SetSeqDescTag
	testl	%eax, %eax
	je	.LBB5_7
# BB#6:                                 # %if.end.21
	movq	%r14, %rdi
	callq	cmsPipelineFree
	movq	%rbx, %rax
	jmp	.LBB5_8
.LBB5_7:                                # %Error
	movq	%r14, %rdi
	callq	cmsPipelineFree
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB5_8:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cmsCreateLinearizationDeviceLinkTHR, .Lfunc_end5-cmsCreateLinearizationDeviceLinkTHR
	.cfi_endproc

	.align	16, 0x90
	.type	SetSeqDescTag,@function
SetSeqDescTag:                          # @SetSeqDescTag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %rbx, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	cmsGetProfileContextID
	movl	$1, %esi
	movq	%rax, %rdi
	callq	cmsAllocProfileSequenceDescription
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB6_2
# BB#1:                                 # %if.end
	movq	16(%rbx), %rax
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	movq	40(%rax), %rdi
	movl	$.L.str.19, %esi
	movl	$.L.str.19, %edx
	movl	$.L.str.20, %ecx
	callq	cmsMLUsetASCII
	movq	16(%rbx), %rax
	movq	48(%rax), %rdi
	movl	$.L.str.19, %esi
	movl	$.L.str.19, %edx
	movq	%r15, %rcx
	callq	cmsMLUsetASCII
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsWriteProfileSequence
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebp
	movq	%rbx, %rdi
	callq	cmsFreeProfileSequenceDescription
.LBB6_2:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	SetSeqDescTag, .Lfunc_end6-SetSeqDescTag
	.cfi_endproc

	.globl	cmsCreateLinearizationDeviceLink
	.align	16, 0x90
	.type	cmsCreateLinearizationDeviceLink,@function
cmsCreateLinearizationDeviceLink:       # @cmsCreateLinearizationDeviceLink
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	%edi, %ecx
	xorl	%edi, %edi
	movl	%ecx, %esi
	movq	%rax, %rdx
	jmp	cmsCreateLinearizationDeviceLinkTHR # TAILCALL
.Lfunc_end7:
	.size	cmsCreateLinearizationDeviceLink, .Lfunc_end7-cmsCreateLinearizationDeviceLink
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4645744490609377280     # double 400
.LCPI8_1:
	.quad	4616527388026811187     # double 4.2999999999999998
.LCPI8_2:
	.quad	0                       # double 0
	.text
	.globl	cmsCreateInkLimitingDeviceLinkTHR
	.align	16, 0x90
	.type	cmsCreateInkLimitingDeviceLinkTHR,@function
cmsCreateInkLimitingDeviceLinkTHR:      # @cmsCreateInkLimitingDeviceLinkTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 64
.Ltmp60:
	.cfi_offset %rbx, -48
.Ltmp61:
	.cfi_offset %r12, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movsd	%xmm0, 8(%rsp)
	cmpl	$1129142603, %esi       # imm = 0x434D594B
	jne	.LBB8_1
# BB#2:                                 # %if.end
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB8_4
# BB#3:                                 # %if.end
	ucomisd	.LCPI8_0(%rip), %xmm0
	jbe	.LBB8_8
.LBB8_4:                                # %if.then.3
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	cmsSignalError
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_6
# BB#5:                                 # %if.end.6.thread
	movq	$0, 8(%rsp)
	jmp	.LBB8_8
.LBB8_1:                                # %if.then
	xorl	%ebp, %ebp
	movl	$9, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	cmsSignalError
	jmp	.LBB8_21
.LBB8_6:                                # %if.end.6
	ucomisd	.LCPI8_0(%rip), %xmm0
	jbe	.LBB8_8
# BB#7:                                 # %if.then.8
	movabsq	$4645744490609377280, %rax # imm = 0x4079000000000000
	movq	%rax, 8(%rsp)
.LBB8_8:                                # %if.end.10
	movq	%rbx, %rdi
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %r14
	xorl	%ebp, %ebp
	testq	%r14, %r14
	je	.LBB8_21
# BB#9:                                 # %if.end.12
	movsd	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	cmsSetProfileVersion
	movl	$1818848875, %esi       # imm = 0x6C696E6B
	movq	%r14, %rdi
	callq	cmsSetDeviceClass
	movl	$1129142603, %esi       # imm = 0x434D594B
	movq	%r14, %rdi
	callq	cmsSetColorSpace
	movl	$1129142603, %esi       # imm = 0x434D594B
	movq	%r14, %rdi
	callq	cmsSetPCS
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	cmsSetHeaderRenderingIntent
	movl	$4, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB8_20
# BB#10:                                # %if.end.16
	movl	$1129142603, %edi       # imm = 0x434D594B
	callq	cmsChannelsOf
	movl	%eax, %r12d
	movl	$17, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%r12d, %edx
	movl	%r12d, %ecx
	callq	cmsStageAllocCLut16bit
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB8_19
# BB#11:                                # %if.end.21
	leaq	8(%rsp), %rdx
	movl	$InkLimitingSampler, %esi
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	callq	cmsStageSampleCLut16bit
	testl	%eax, %eax
	je	.LBB8_19
# BB#12:                                # %if.end.25
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_cmsStageAllocIdentityCurves
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB8_19
# BB#13:                                # %lor.lhs.false.29
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB8_19
# BB#14:                                # %lor.lhs.false.32
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_cmsStageAllocIdentityCurves
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB8_19
# BB#15:                                # %if.end.37
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB8_19
# BB#16:                                # %if.end.41
	movl	$1093812784, %esi       # imm = 0x41324230
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB8_19
# BB#17:                                # %if.end.45
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	SetSeqDescTag
	testl	%eax, %eax
	je	.LBB8_19
# BB#18:                                # %if.end.49
	movq	%r15, %rdi
	callq	cmsPipelineFree
	movq	%r14, %rbp
	jmp	.LBB8_21
.LBB8_19:                               # %if.then.51
	movq	%r15, %rdi
	callq	cmsPipelineFree
.LBB8_20:                               # %if.then.54
	movq	%r14, %rdi
	callq	cmsCloseProfile
	xorl	%ebp, %ebp
.LBB8_21:                               # %cleanup
	movq	%rbp, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cmsCreateInkLimitingDeviceLinkTHR, .Lfunc_end8-cmsCreateInkLimitingDeviceLinkTHR
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4648975735381085389     # double 655.35000000000002
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4602678819172646912     # double 0.5
.LCPI9_3:
	.quad	4679239875398991872     # double 65535
.LCPI9_4:
	.quad	-4548635898522107904    # double -32767
.LCPI9_5:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	InkLimitingSampler,@function
InkLimitingSampler:                     # @InkLimitingSampler
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI9_0(%rip), %xmm0
	movzwl	(%rdi), %eax
	movzwl	2(%rdi), %ecx
	addl	%eax, %ecx
	movzwl	4(%rdi), %edx
	addl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm2
	movzwl	6(%rdi), %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_1
# BB#2:                                 # %if.then
	subsd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_4
# BB#3:                                 # %if.then.15
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_4
.LBB9_1:
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB9_4:                                # %if.end.16
	movzwl	%ax, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI9_2(%rip), %xmm2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	jae	.LBB9_5
# BB#6:                                 # %if.end.i
	movw	$-1, %ax
	ucomisd	.LCPI9_3(%rip), %xmm2
	jae	.LBB9_8
# BB#7:                                 # %if.end.3.i
	addsd	.LCPI9_4(%rip), %xmm2
	addsd	.LCPI9_5(%rip), %xmm2
	movd	%xmm2, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB9_8
.LBB9_5:
	xorl	%eax, %eax
.LBB9_8:                                # %_cmsQuickSaturateWord.exit
	movw	%ax, (%rsi)
	movzwl	2(%rdi), %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI9_2(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jae	.LBB9_9
# BB#10:                                # %if.end.i.38
	movw	$-1, %ax
	ucomisd	.LCPI9_3(%rip), %xmm2
	jae	.LBB9_12
# BB#11:                                # %if.end.3.i.45
	addsd	.LCPI9_4(%rip), %xmm2
	addsd	.LCPI9_5(%rip), %xmm2
	movd	%xmm2, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB9_12
.LBB9_9:
	xorl	%eax, %eax
.LBB9_12:                               # %_cmsQuickSaturateWord.exit47
	movw	%ax, 2(%rsi)
	movzwl	4(%rdi), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	.LCPI9_2(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB9_13
# BB#14:                                # %if.end.i.25
	movw	$-1, %ax
	ucomisd	.LCPI9_3(%rip), %xmm0
	jae	.LBB9_16
# BB#15:                                # %if.end.3.i.32
	addsd	.LCPI9_4(%rip), %xmm0
	addsd	.LCPI9_5(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB9_16
.LBB9_13:
	xorl	%eax, %eax
.LBB9_16:                               # %_cmsQuickSaturateWord.exit34
	movw	%ax, 4(%rsi)
	movw	6(%rdi), %ax
	movw	%ax, 6(%rsi)
	movl	$1, %eax
	retq
.Lfunc_end9:
	.size	InkLimitingSampler, .Lfunc_end9-InkLimitingSampler
	.cfi_endproc

	.globl	cmsCreateInkLimitingDeviceLink
	.align	16, 0x90
	.type	cmsCreateInkLimitingDeviceLink,@function
cmsCreateInkLimitingDeviceLink:         # @cmsCreateInkLimitingDeviceLink
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	xorl	%edi, %edi
	movl	%eax, %esi
	jmp	cmsCreateInkLimitingDeviceLinkTHR # TAILCALL
.Lfunc_end10:
	.size	cmsCreateInkLimitingDeviceLink, .Lfunc_end10-cmsCreateInkLimitingDeviceLink
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4611911198408756429     # double 2.1000000000000001
	.text
	.globl	cmsCreateLab2ProfileTHR
	.align	16, 0x90
	.type	cmsCreateLab2ProfileTHR,@function
cmsCreateLab2ProfileTHR:                # @cmsCreateLab2ProfileTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 48
.Ltmp70:
	.cfi_offset %rbx, -40
.Ltmp71:
	.cfi_offset %r12, -32
.Ltmp72:
	.cfi_offset %r14, -24
.Ltmp73:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%rsi, %rsi
	jne	.LBB11_2
# BB#1:                                 # %cond.true
	callq	cmsD50_xyY
	movq	%rax, %rsi
.LBB11_2:                               # %cond.end
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	cmsCreateRGBProfileTHR
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB11_10
# BB#3:                                 # %if.end
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	cmsSetProfileVersion
	movl	$1633842036, %esi       # imm = 0x61627374
	movq	%r12, %rdi
	callq	cmsSetDeviceClass
	movl	$1281450528, %esi       # imm = 0x4C616220
	movq	%r12, %rdi
	callq	cmsSetColorSpace
	movl	$1281450528, %esi       # imm = 0x4C616220
	movq	%r12, %rdi
	callq	cmsSetPCS
	movl	$.L.str.8, %esi
	movq	%r12, %rdi
	callq	SetTextTags
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB11_10
# BB#4:                                 # %if.end.5
	movl	$3, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB11_9
# BB#5:                                 # %if.end.9
	movl	$3, %esi
	movq	%r14, %rdi
	callq	_cmsStageAllocIdentityCLut
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB11_8
# BB#6:                                 # %if.end.14
	movl	$1093812784, %esi       # imm = 0x41324230
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB11_8
# BB#7:                                 # %if.end.18
	movq	%r15, %rdi
	callq	cmsPipelineFree
	movq	%r12, %rbx
	jmp	.LBB11_10
.LBB11_8:                               # %if.then.20
	movq	%r15, %rdi
	callq	cmsPipelineFree
.LBB11_9:                               # %if.then.23
	movq	%r12, %rdi
	callq	cmsCloseProfile
	xorl	%ebx, %ebx
.LBB11_10:                              # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	cmsCreateLab2ProfileTHR, .Lfunc_end11-cmsCreateLab2ProfileTHR
	.cfi_endproc

	.globl	cmsCreateLab2Profile
	.align	16, 0x90
	.type	cmsCreateLab2Profile,@function
cmsCreateLab2Profile:                   # @cmsCreateLab2Profile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	xorl	%edi, %edi
	movq	%rax, %rsi
	jmp	cmsCreateLab2ProfileTHR # TAILCALL
.Lfunc_end12:
	.size	cmsCreateLab2Profile, .Lfunc_end12-cmsCreateLab2Profile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4616527388026811187     # double 4.2999999999999998
	.text
	.globl	cmsCreateLab4ProfileTHR
	.align	16, 0x90
	.type	cmsCreateLab4ProfileTHR,@function
cmsCreateLab4ProfileTHR:                # @cmsCreateLab4ProfileTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp78:
	.cfi_def_cfa_offset 48
.Ltmp79:
	.cfi_offset %rbx, -40
.Ltmp80:
	.cfi_offset %r12, -32
.Ltmp81:
	.cfi_offset %r14, -24
.Ltmp82:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%rsi, %rsi
	jne	.LBB13_2
# BB#1:                                 # %cond.true
	callq	cmsD50_xyY
	movq	%rax, %rsi
.LBB13_2:                               # %cond.end
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	cmsCreateRGBProfileTHR
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB13_10
# BB#3:                                 # %if.end
	movsd	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	cmsSetProfileVersion
	movl	$1633842036, %esi       # imm = 0x61627374
	movq	%r12, %rdi
	callq	cmsSetDeviceClass
	movl	$1281450528, %esi       # imm = 0x4C616220
	movq	%r12, %rdi
	callq	cmsSetColorSpace
	movl	$1281450528, %esi       # imm = 0x4C616220
	movq	%r12, %rdi
	callq	cmsSetPCS
	movl	$.L.str.8, %esi
	movq	%r12, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB13_9
# BB#4:                                 # %if.end.5
	movl	$3, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB13_9
# BB#5:                                 # %if.end.9
	movl	$3, %esi
	movq	%r14, %rdi
	callq	_cmsStageAllocIdentityCurves
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB13_8
# BB#6:                                 # %if.end.14
	movl	$1093812784, %esi       # imm = 0x41324230
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB13_8
# BB#7:                                 # %if.end.18
	movq	%r15, %rdi
	callq	cmsPipelineFree
	movq	%r12, %rbx
	jmp	.LBB13_10
.LBB13_8:                               # %if.then.20
	movq	%r15, %rdi
	callq	cmsPipelineFree
.LBB13_9:                               # %if.then.23
	movq	%r12, %rdi
	callq	cmsCloseProfile
	xorl	%ebx, %ebx
.LBB13_10:                              # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	cmsCreateLab4ProfileTHR, .Lfunc_end13-cmsCreateLab4ProfileTHR
	.cfi_endproc

	.globl	cmsCreateLab4Profile
	.align	16, 0x90
	.type	cmsCreateLab4Profile,@function
cmsCreateLab4Profile:                   # @cmsCreateLab4Profile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	xorl	%edi, %edi
	movq	%rax, %rsi
	jmp	cmsCreateLab4ProfileTHR # TAILCALL
.Lfunc_end14:
	.size	cmsCreateLab4Profile, .Lfunc_end14-cmsCreateLab4Profile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4616527388026811187     # double 4.2999999999999998
	.text
	.globl	cmsCreateXYZProfileTHR
	.align	16, 0x90
	.type	cmsCreateXYZProfileTHR,@function
cmsCreateXYZProfileTHR:                 # @cmsCreateXYZProfileTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 48
.Ltmp88:
	.cfi_offset %rbx, -40
.Ltmp89:
	.cfi_offset %r12, -32
.Ltmp90:
	.cfi_offset %r14, -24
.Ltmp91:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	callq	cmsD50_xyY
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	cmsCreateRGBProfileTHR
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB15_8
# BB#1:                                 # %if.end
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	cmsSetProfileVersion
	movl	$1633842036, %esi       # imm = 0x61627374
	movq	%r12, %rdi
	callq	cmsSetDeviceClass
	movl	$1482250784, %esi       # imm = 0x58595A20
	movq	%r12, %rdi
	callq	cmsSetColorSpace
	movl	$1482250784, %esi       # imm = 0x58595A20
	movq	%r12, %rdi
	callq	cmsSetPCS
	movl	$.L.str.9, %esi
	movq	%r12, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB15_7
# BB#2:                                 # %if.end.4
	movl	$3, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB15_7
# BB#3:                                 # %if.end.8
	movl	$3, %esi
	movq	%r14, %rdi
	callq	_cmsStageAllocIdentityCurves
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB15_6
# BB#4:                                 # %if.end.13
	movl	$1093812784, %esi       # imm = 0x41324230
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB15_6
# BB#5:                                 # %if.end.17
	movq	%r15, %rdi
	callq	cmsPipelineFree
	movq	%r12, %rbx
	jmp	.LBB15_8
.LBB15_6:                               # %if.then.19
	movq	%r15, %rdi
	callq	cmsPipelineFree
.LBB15_7:                               # %if.then.22
	movq	%r12, %rdi
	callq	cmsCloseProfile
	xorl	%ebx, %ebx
.LBB15_8:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	cmsCreateXYZProfileTHR, .Lfunc_end15-cmsCreateXYZProfileTHR
	.cfi_endproc

	.globl	cmsCreateXYZProfile
	.align	16, 0x90
	.type	cmsCreateXYZProfile,@function
cmsCreateXYZProfile:                    # @cmsCreateXYZProfile
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edi, %edi
	jmp	cmsCreateXYZProfileTHR  # TAILCALL
.Lfunc_end16:
	.size	cmsCreateXYZProfile, .Lfunc_end16-cmsCreateXYZProfile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4663873238328147968     # double 6504
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_1:
	.quad	4612586738352862003     # double 2.400000e+00
	.quad	4606712849170623328     # double 9.478673e-01
.LCPI17_2:
	.quad	4587673935106099715     # double 5.213270e-02
	.quad	4590241633823995264     # double 7.739938e-02
	.text
	.globl	cmsCreate_sRGBProfileTHR
	.align	16, 0x90
	.type	cmsCreate_sRGBProfileTHR,@function
cmsCreate_sRGBProfileTHR:               # @cmsCreate_sRGBProfileTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 16
	subq	$176, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 192
.Ltmp94:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	.LcmsCreate_sRGBProfileTHR.Rec709Primaries+64(%rip), %rax
	movq	%rax, 96(%rsp)
	movups	.LcmsCreate_sRGBProfileTHR.Rec709Primaries+48(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	.LcmsCreate_sRGBProfileTHR.Rec709Primaries+32(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	.LcmsCreate_sRGBProfileTHR.Rec709Primaries+16(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	.LcmsCreate_sRGBProfileTHR.Rec709Primaries(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	104(%rsp), %rdi
	movsd	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	cmsWhitePointFromTemp
	movaps	.LCPI17_1(%rip), %xmm0  # xmm0 = [2.400000e+00,9.478673e-01]
	movaps	%xmm0, 128(%rsp)
	movaps	.LCPI17_2(%rip), %xmm0  # xmm0 = [5.213270e-02,7.739938e-02]
	movaps	%xmm0, 144(%rsp)
	movabsq	$4585990280393462802, %rax # imm = 0x3FA4B5DCC63F1412
	movq	%rax, 160(%rsp)
	leaq	128(%rsp), %rdx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	cmsBuildParametricToneCurve
	movq	%rax, %rcx
	movq	%rcx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rcx, (%rsp)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB17_5
# BB#1:                                 # %if.end
	leaq	104(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	(%rsp), %rcx
	movq	%rbx, %rdi
	callq	cmsCreateRGBProfileTHR
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	callq	cmsFreeToneCurve
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB17_5
# BB#2:                                 # %if.end.9
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB17_4
# BB#3:
	movq	%rbx, %rax
	jmp	.LBB17_5
.LBB17_4:                               # %if.then.11
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB17_5:                               # %cleanup
	addq	$176, %rsp
	popq	%rbx
	retq
.Lfunc_end17:
	.size	cmsCreate_sRGBProfileTHR, .Lfunc_end17-cmsCreate_sRGBProfileTHR
	.cfi_endproc

	.globl	cmsCreate_sRGBProfile
	.align	16, 0x90
	.type	cmsCreate_sRGBProfile,@function
cmsCreate_sRGBProfile:                  # @cmsCreate_sRGBProfile
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edi, %edi
	jmp	cmsCreate_sRGBProfileTHR # TAILCALL
.Lfunc_end18:
	.size	cmsCreate_sRGBProfile, .Lfunc_end18-cmsCreate_sRGBProfile
	.cfi_endproc

	.globl	cmsCreateBCHSWabstractProfileTHR
	.align	16, 0x90
	.type	cmsCreateBCHSWabstractProfileTHR,@function
cmsCreateBCHSWabstractProfileTHR:       # @cmsCreateBCHSWabstractProfileTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp100:
	.cfi_def_cfa_offset 192
.Ltmp101:
	.cfi_offset %rbx, -48
.Ltmp102:
	.cfi_offset %r12, -40
.Ltmp103:
	.cfi_offset %r14, -32
.Ltmp104:
	.cfi_offset %r15, -24
.Ltmp105:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movl	%esi, %r12d
	movq	%rdi, %r15
	movsd	%xmm0, 64(%rsp)
	movsd	%xmm1, 72(%rsp)
	movsd	%xmm2, 80(%rsp)
	movsd	%xmm3, 88(%rsp)
	cvtsi2sdl	%edx, %xmm0
	leaq	40(%rsp), %rbp
	movq	%rbp, %rdi
	callq	cmsWhitePointFromTemp
	leaq	96(%rsp), %rdi
	movq	%rbp, %rsi
	callq	cmsxyY2XYZ
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movq	%rbp, %rdi
	callq	cmsWhitePointFromTemp
	leaq	120(%rsp), %rdi
	movq	%rbp, %rsi
	callq	cmsxyY2XYZ
	movq	%r15, %rdi
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB19_9
# BB#1:                                 # %if.end
	movl	$1633842036, %esi       # imm = 0x61627374
	movq	%rbx, %rdi
	callq	cmsSetDeviceClass
	movl	$1281450528, %esi       # imm = 0x4C616220
	movq	%rbx, %rdi
	callq	cmsSetColorSpace
	movl	$1281450528, %esi       # imm = 0x4C616220
	movq	%rbx, %rdi
	callq	cmsSetPCS
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmsSetHeaderRenderingIntent
	movl	$3, %esi
	movl	$3, %edx
	movq	%r15, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB19_8
# BB#2:                                 # %for.cond.preheader
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, (%rsp)
	movdqa	%xmm0, 16(%rsp)
	xorl	%ebp, %ebp
	leaq	(%rsp), %rsi
	movl	$3, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	cmsStageAllocCLut16bitGranular
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB19_9
# BB#3:                                 # %if.end.18
	leaq	64(%rsp), %rdx
	movl	$bchswSampler, %esi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	cmsStageSampleCLut16bit
	testl	%eax, %eax
	je	.LBB19_7
# BB#4:                                 # %if.end.22
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB19_7
# BB#5:                                 # %if.end.26
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	SetTextTags
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB19_9
# BB#6:                                 # %if.end.30
	callq	cmsD50_XYZ
	movl	$2004119668, %esi       # imm = 0x77747074
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsWriteTag
	movl	$1093812784, %esi       # imm = 0x41324230
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	cmsWriteTag
	movq	%r14, %rdi
	callq	cmsPipelineFree
	movq	%rbx, %rbp
	jmp	.LBB19_9
.LBB19_7:                               # %Error
	movq	%r14, %rdi
	callq	cmsPipelineFree
.LBB19_8:                               # %cleanup
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%ebp, %ebp
.LBB19_9:                               # %cleanup
	movq	%rbp, %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cmsCreateBCHSWabstractProfileTHR, .Lfunc_end19-cmsCreateBCHSWabstractProfileTHR
	.cfi_endproc

	.align	16, 0x90
	.type	bchswSampler,@function
bchswSampler:                           # @bchswSampler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 176
.Ltmp111:
	.cfi_offset %rbx, -40
.Ltmp112:
	.cfi_offset %r12, -32
.Ltmp113:
	.cfi_offset %r14, -24
.Ltmp114:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %rax
	leaq	112(%rsp), %r15
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	cmsLabEncoded2Float
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	callq	cmsLab2LCh
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	8(%rbx), %xmm0
	movhpd	72(%rsp), %xmm0
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movhpd	24(%rbx), %xmm1
	addpd	%xmm0, %xmm1
	movapd	%xmm1, 32(%rsp)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	16(%rbx), %xmm0
	movsd	%xmm0, 48(%rsp)
	leaq	88(%rsp), %r15
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	cmsLCh2Lab
	leaq	32(%rbx), %rdi
	leaq	8(%rsp), %r12
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	cmsLab2XYZ
	leaq	56(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	cmsXYZ2Lab
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	cmsFloat2LabEncoded
	movl	$1, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	bchswSampler, .Lfunc_end20-bchswSampler
	.cfi_endproc

	.globl	cmsCreateBCHSWabstractProfile
	.align	16, 0x90
	.type	cmsCreateBCHSWabstractProfile,@function
cmsCreateBCHSWabstractProfile:          # @cmsCreateBCHSWabstractProfile
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	movl	%esi, %ecx
	movl	%edi, %edx
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	jmp	cmsCreateBCHSWabstractProfileTHR # TAILCALL
.Lfunc_end21:
	.size	cmsCreateBCHSWabstractProfile, .Lfunc_end21-cmsCreateBCHSWabstractProfile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4616527388026811187     # double 4.2999999999999998
	.text
	.globl	cmsCreateNULLProfileTHR
	.align	16, 0x90
	.type	cmsCreateNULLProfileTHR,@function
cmsCreateNULLProfileTHR:                # @cmsCreateNULLProfileTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp118:
	.cfi_def_cfa_offset 48
.Ltmp119:
	.cfi_offset %rbx, -32
.Ltmp120:
	.cfi_offset %r14, -24
.Ltmp121:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$0, 4(%rsp)
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB22_9
# BB#1:                                 # %if.end
	movsd	.LCPI22_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cmsSetProfileVersion
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB22_8
# BB#2:                                 # %if.end.4
	movl	$1886549106, %esi       # imm = 0x70727472
	movq	%rbx, %rdi
	callq	cmsSetDeviceClass
	movl	$1196573017, %esi       # imm = 0x47524159
	movq	%rbx, %rdi
	callq	cmsSetColorSpace
	movl	$1281450528, %esi       # imm = 0x4C616220
	movq	%rbx, %rdi
	callq	cmsSetPCS
	movl	$1, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB22_8
# BB#3:                                 # %if.end.7
	leaq	4(%rsp), %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, 8(%rsp)
	leaq	8(%rsp), %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	callq	cmsStageAllocToneCurves
	movq	%rax, %r14
	movq	8(%rsp), %rdi
	callq	cmsFreeToneCurve
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB22_7
# BB#4:                                 # %if.end.13
	movl	$1110589744, %esi       # imm = 0x42324130
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB22_7
# BB#5:                                 # %if.end.17
	callq	cmsD50_XYZ
	movl	$2004119668, %esi       # imm = 0x77747074
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB22_7
# BB#6:                                 # %if.end.22
	movq	%r15, %rdi
	callq	cmsPipelineFree
	movq	%rbx, %rax
	jmp	.LBB22_9
.LBB22_7:                               # %if.then.24
	movq	%r15, %rdi
	callq	cmsPipelineFree
.LBB22_8:                               # %if.then.27
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB22_9:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	cmsCreateNULLProfileTHR, .Lfunc_end22-cmsCreateNULLProfileTHR
	.cfi_endproc

	.globl	cmsCreateNULLProfile
	.align	16, 0x90
	.type	cmsCreateNULLProfile,@function
cmsCreateNULLProfile:                   # @cmsCreateNULLProfile
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edi, %edi
	jmp	cmsCreateNULLProfileTHR # TAILCALL
.Lfunc_end23:
	.size	cmsCreateNULLProfile, .Lfunc_end23-cmsCreateNULLProfile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4616189618054758400     # double 4
	.text
	.globl	cmsTransform2DeviceLink
	.align	16, 0x90
	.type	cmsTransform2DeviceLink,@function
cmsTransform2DeviceLink:                # @cmsTransform2DeviceLink
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 160
.Ltmp129:
	.cfi_offset %rbx, -56
.Ltmp130:
	.cfi_offset %r12, -48
.Ltmp131:
	.cfi_offset %r13, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movl	%esi, %r12d
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movl	%r12d, 96(%rsp)
	movq	$0, 80(%rsp)
	callq	cmsGetTransformContextID
	movq	%rax, %r15
	testq	%rbp, %rbp
	je	.LBB24_97
# BB#1:                                 # %cond.end
	movq	112(%rbp), %rdi
	callq	cmsPipelineGetPtrToFirstStage
	testq	%rax, %rax
	je	.LBB24_13
# BB#2:                                 # %if.then
	movq	%rax, %rdi
	callq	cmsStageType
	cmpl	$1852009504, %eax       # imm = 0x6E636C20
	jne	.LBB24_13
# BB#3:                                 # %if.then.5
	movq	232(%rbp), %rdi
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %r12
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB24_96
# BB#4:                                 # %if.end.i
	movl	$1852662636, %esi       # imm = 0x6E6D636C
	movq	%r12, %rdi
	callq	cmsSetDeviceClass
	movl	148(%rbp), %esi
	movq	%r12, %rdi
	callq	cmsSetColorSpace
	movl	$1281450528, %esi       # imm = 0x4C616220
	movq	%r12, %rdi
	callq	cmsSetPCS
	movl	$.L.str.21, %esi
	movq	%r12, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	je	.LBB24_12
# BB#5:                                 # %if.end.3.i
	movq	%rbp, %rdi
	callq	cmsGetNamedColorList
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB24_12
# BB#6:                                 # %if.end.7.i
	movq	%rbx, %rdi
	callq	cmsNamedColorCount
	movl	%eax, %r15d
	movq	%rbx, %rdi
	callq	cmsDupNamedColorList
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB24_12
# BB#7:                                 # %if.end.12.i
	movq	112(%rbp), %rdi
	callq	cmsPipelineOutputChannels
	movl	%eax, 8(%rbx)
	movl	148(%rbp), %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, %r14d
	shll	$16, %r14d
	movl	148(%rbp), %edi
	callq	cmsChannelsOf
	shll	$3, %eax
	orl	%r14d, %eax
	leal	2(%rax), %edx
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	cmsChangeBuffersFormat
	movl	$0, 100(%rsp)
	testl	%r15d, %r15d
	jle	.LBB24_10
# BB#8:                                 # %for.body.lr.ph.i
	xorl	%eax, %eax
	leaq	100(%rsp), %r14
	.align	16, 0x90
.LBB24_9:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cltq
	movq	80(%rbx), %rcx
	imulq	$294, %rax, %rax        # imm = 0x126
	leaq	262(%rcx,%rax), %rdx
	movl	$1, %ecx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	cmsDoTransform
	movl	100(%rsp), %eax
	incl	%eax
	movl	%eax, 100(%rsp)
	cmpl	%r15d, %eax
	jl	.LBB24_9
.LBB24_10:                              # %for.end.i
	movl	$1852009522, %esi       # imm = 0x6E636C32
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB24_12
# BB#11:                                # %if.end.26.i
	movq	%rbx, %rdi
	callq	cmsFreeNamedColorList
	movq	%r12, %r14
	jmp	.LBB24_96
.LBB24_13:                              # %if.end.7
	movq	112(%rbp), %rdi
	callq	cmsPipelineDup
	movq	%rax, %rbx
	movq	%rbx, 80(%rsp)
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB24_96
# BB#14:                                # %if.end.12
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	64(%rsp), %xmm0         # 8-byte Folded Reload
	jbe	.LBB24_17
# BB#15:                                # %if.end.12
	cmpl	$1281450528, 144(%rbp)  # imm = 0x4C616220
	jne	.LBB24_17
# BB#16:                                # %if.then.15
	movq	%r15, %rdi
	callq	_cmsStageAllocLabV2ToV4curves
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	testl	%eax, %eax
	je	.LBB24_92
.LBB24_17:                              # %if.end.20
	ucomisd	64(%rsp), %xmm0         # 8-byte Folded Reload
	jbe	.LBB24_20
# BB#18:                                # %if.end.20
	cmpl	$1281450528, 148(%rbp)  # imm = 0x4C616220
	jne	.LBB24_20
# BB#19:                                # %if.then.24
	movq	%r15, %rdi
	callq	_cmsStageAllocLabV4ToV2
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB24_92
.LBB24_20:                              # %if.end.30
	movq	%r15, %rdi
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %r14
	xorl	%r13d, %r13d
	testq	%r14, %r14
	je	.LBB24_92
# BB#21:                                # %if.end.34
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cmsSetProfileVersion
	movl	144(%rbp), %ebx
	movl	148(%rbp), %r13d
	testb	$32, %r12b
	je	.LBB24_32
# BB#22:                                # %if.then.i
	cmpl	$1482250784, %ebx       # imm = 0x58595A20
	je	.LBB24_24
# BB#23:                                # %if.then.i
	cmpl	$1281450528, %ebx       # imm = 0x4C616220
	jne	.LBB24_28
.LBB24_24:                              # %land.lhs.true.i
	movq	%r15, 40(%rsp)          # 8-byte Spill
	cmpl	$1482250784, %r13d      # imm = 0x58595A20
	je	.LBB24_26
# BB#25:                                # %land.lhs.true.i
	cmpl	$1281450528, %r13d      # imm = 0x4C616220
	jne	.LBB24_27
.LBB24_26:                              # %if.then.4.i
	movl	$1633842036, %esi       # imm = 0x61627374
	jmp	.LBB24_33
.LBB24_12:                              # %if.then.28.i
	movq	%r12, %rdi
	jmp	.LBB24_95
.LBB24_28:                              # %if.end.11.i
	cmpl	$1482250784, %r13d      # imm = 0x58595A20
	je	.LBB24_30
# BB#29:                                # %if.end.11.i
	cmpl	$1281450528, %r13d      # imm = 0x4C616220
	jne	.LBB24_32
.LBB24_30:                              # %switch.early.test.i
	cmpl	$1482250784, %ebx       # imm = 0x58595A20
	jne	.LBB24_31
.LBB24_32:                              # %if.end.19.i
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movl	$1818848875, %esi       # imm = 0x6C696E6B
.LBB24_33:                              # %FixColorSpaces.exit
	movq	%r14, %rdi
	callq	cmsSetDeviceClass
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	cmsSetColorSpace
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	cmsSetPCS
.LBB24_34:                              # %FixColorSpaces.exit
	movl	144(%rbp), %edi
	callq	cmsChannelsOf
	movl	%eax, %r13d
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movl	148(%rbp), %edi
	callq	cmsChannelsOf
	movl	%eax, %r15d
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	144(%rbp), %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, %ebx
	movl	148(%rbp), %edi
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	callq	_cmsLCMScolorSpace
	shll	$16, %ebx
	leal	(,%r13,8), %ecx
	orl	%ebx, %ecx
	orl	$2, %ecx
	movl	%ecx, 92(%rsp)
	shll	$16, %eax
	leal	(,%r15,8), %ecx
	orl	%eax, %ecx
	orl	$2, %ecx
	movl	%ecx, 88(%rsp)
	movq	%r14, %rdi
	movq	%r14, 32(%rsp)          # 8-byte Spill
	callq	cmsGetDeviceClass
	movl	%eax, 12(%rsp)          # 4-byte Spill
	cmpl	$1886549106, %eax       # imm = 0x70727472
	movl	$1110589744, %eax       # imm = 0x42324130
	movl	$1093812784, %ecx       # imm = 0x41324230
	cmovel	%eax, %ecx
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	testb	$2, %r12b
	jne	.LBB24_46
# BB#35:                                # %if.else.57
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI24_0(%rip), %xmm0
	setae	%al
	movzbl	%al, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	movl	$AllowedLUTTypes+16, %r12d
	.align	16, 0x90
.LBB24_36:                              # %for.body.i.70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_41 Depth 2
	leaq	(%r15,%r15,8), %rax
	movl	76(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, AllowedLUTTypes(,%rax,4)
	jne	.LBB24_45
# BB#37:                                # %if.end.i.71
                                        #   in Loop: Header=BB24_36 Depth=1
	leaq	-4(%r15), %rcx
	cmpq	$6, %rcx
	ja	.LBB24_39
# BB#38:                                # %land.lhs.true.i.72
                                        #   in Loop: Header=BB24_36 Depth=1
	movl	72(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, AllowedLUTTypes+4(,%rax,4)
	jne	.LBB24_45
.LBB24_39:                              # %if.end.9.i
                                        #   in Loop: Header=BB24_36 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	movslq	AllowedLUTTypes+12(,%rax,4), %r14
	je	.LBB24_44
# BB#40:                                # %for.body.i.preheader.i
                                        #   in Loop: Header=BB24_36 Depth=1
	movq	%r12, %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB24_41:                              # %for.body.i.i
                                        #   Parent Loop BB24_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %rbp
	jg	.LBB24_45
# BB#42:                                # %if.end.i.i
                                        #   in Loop: Header=BB24_41 Depth=2
	movq	%rbx, %rdi
	callq	cmsStageType
	cmpl	(%r13), %eax
	jne	.LBB24_45
# BB#43:                                # %for.inc.i.i
                                        #   in Loop: Header=BB24_41 Depth=2
	incq	%rbp
	movq	56(%rbx), %rbx
	addq	$4, %r13
	testq	%rbx, %rbx
	jne	.LBB24_41
.LBB24_44:                              # %cleanup.i
                                        #   in Loop: Header=BB24_36 Depth=1
	cmpl	%r14d, %ebp
	je	.LBB24_75
.LBB24_45:                              # %for.inc.i
                                        #   in Loop: Header=BB24_36 Depth=1
	incq	%r15
	addq	$36, %r12
	cmpq	$11, %r15
	jb	.LBB24_36
.LBB24_46:                              # %if.then.63
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	224(%rax), %edx
	leaq	80(%rsp), %rsi
	leaq	92(%rsp), %rcx
	leaq	88(%rsp), %r8
	leaq	96(%rsp), %r9
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	_cmsOptimizePipeline
	movq	80(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI24_0(%rip), %xmm0
	setae	%al
	movzbl	%al, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	movl	$AllowedLUTTypes+16, %r13d
	.align	16, 0x90
.LBB24_47:                              # %for.body.i.79
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_52 Depth 2
	leaq	(%rbp,%rbp,8), %rax
	movl	76(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, AllowedLUTTypes(,%rax,4)
	jne	.LBB24_56
# BB#48:                                # %if.end.i.81
                                        #   in Loop: Header=BB24_47 Depth=1
	leaq	-4(%rbp), %rcx
	cmpq	$6, %rcx
	ja	.LBB24_50
# BB#49:                                # %land.lhs.true.i.84
                                        #   in Loop: Header=BB24_47 Depth=1
	movl	72(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, AllowedLUTTypes+4(,%rax,4)
	jne	.LBB24_56
.LBB24_50:                              # %if.end.9.i.88
                                        #   in Loop: Header=BB24_47 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	movslq	AllowedLUTTypes+12(,%rax,4), %r15
	je	.LBB24_55
# BB#51:                                # %for.body.i.preheader.i.89
                                        #   in Loop: Header=BB24_47 Depth=1
	movq	%r13, %r14
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB24_52:                              # %for.body.i.i.93
                                        #   Parent Loop BB24_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, %r12
	jg	.LBB24_56
# BB#53:                                # %if.end.i.i.97
                                        #   in Loop: Header=BB24_52 Depth=2
	movq	%rbx, %rdi
	callq	cmsStageType
	cmpl	(%r14), %eax
	jne	.LBB24_56
# BB#54:                                # %for.inc.i.i.102
                                        #   in Loop: Header=BB24_52 Depth=2
	incq	%r12
	movq	56(%rbx), %rbx
	addq	$4, %r14
	testq	%rbx, %rbx
	jne	.LBB24_52
.LBB24_55:                              # %cleanup.i.106
                                        #   in Loop: Header=BB24_47 Depth=1
	cmpl	%r15d, %r12d
	je	.LBB24_75
.LBB24_56:                              # %for.inc.i.109
                                        #   in Loop: Header=BB24_47 Depth=1
	incq	%rbp
	addq	$36, %r13
	cmpq	$11, %rbp
	jb	.LBB24_47
# BB#57:                                # %if.then.71
	orb	$2, 96(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	224(%rax), %edx
	leaq	80(%rsp), %rsi
	leaq	92(%rsp), %rcx
	leaq	88(%rsp), %r8
	leaq	96(%rsp), %r9
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	_cmsOptimizePipeline
	movq	80(%rsp), %rdi
	callq	cmsPipelineGetPtrToFirstStage
	cmpl	$1668707188, 8(%rax)    # imm = 0x63767374
	je	.LBB24_60
# BB#58:                                # %if.then.78
	movq	80(%rsp), %rbx
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	_cmsStageAllocIdentityCurves
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB24_59
.LBB24_60:                              # %if.end.84
	movq	80(%rsp), %rdi
	callq	cmsPipelineGetPtrToLastStage
	cmpl	$1668707188, 8(%rax)    # imm = 0x63767374
	je	.LBB24_63
# BB#61:                                # %if.then.89
	movq	80(%rsp), %rbx
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	_cmsStageAllocIdentityCurves
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB24_62
.LBB24_63:                              # %if.end.95
	movq	80(%rsp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$AllowedLUTTypes+16, %r12d
	.align	16, 0x90
.LBB24_64:                              # %for.body.i.117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_69 Depth 2
	leaq	(%r13,%r13,8), %rax
	movl	76(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, AllowedLUTTypes(,%rax,4)
	jne	.LBB24_73
# BB#65:                                # %if.end.i.119
                                        #   in Loop: Header=BB24_64 Depth=1
	leaq	-4(%r13), %rcx
	cmpq	$6, %rcx
	ja	.LBB24_67
# BB#66:                                # %land.lhs.true.i.122
                                        #   in Loop: Header=BB24_64 Depth=1
	movl	72(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, AllowedLUTTypes+4(,%rax,4)
	jne	.LBB24_73
.LBB24_67:                              # %if.end.9.i.126
                                        #   in Loop: Header=BB24_64 Depth=1
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	movslq	AllowedLUTTypes+12(,%rax,4), %r15
	je	.LBB24_72
# BB#68:                                # %for.body.i.preheader.i.127
                                        #   in Loop: Header=BB24_64 Depth=1
	movq	%r12, %rbp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB24_69:                              # %for.body.i.i.131
                                        #   Parent Loop BB24_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, %r14
	jg	.LBB24_73
# BB#70:                                # %if.end.i.i.135
                                        #   in Loop: Header=BB24_69 Depth=2
	movq	%rbx, %rdi
	callq	cmsStageType
	cmpl	(%rbp), %eax
	jne	.LBB24_73
# BB#71:                                # %for.inc.i.i.140
                                        #   in Loop: Header=BB24_69 Depth=2
	incq	%r14
	movq	56(%rbx), %rbx
	addq	$4, %rbp
	testq	%rbx, %rbx
	jne	.LBB24_69
.LBB24_72:                              # %cleanup.i.144
                                        #   in Loop: Header=BB24_64 Depth=1
	cmpl	%r15d, %r14d
	je	.LBB24_75
.LBB24_73:                              # %for.inc.i.147
                                        #   in Loop: Header=BB24_64 Depth=1
	incq	%r13
	addq	$36, %r12
	cmpq	$11, %r13
	jb	.LBB24_64
# BB#74:
	movq	32(%rsp), %r13          # 8-byte Reload
	jmp	.LBB24_92
.LBB24_75:                              # %if.end.103
	testb	$8, 96(%rsp)
	je	.LBB24_77
# BB#76:                                # %if.then.106
	movq	80(%rsp), %rdi
	movl	$1, %esi
	callq	cmsPipelineSetSaveAs8bitsFlag
.LBB24_77:                              # %if.end.108
	movl	$.L.str.15, %esi
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	callq	SetTextTags
	testl	%eax, %eax
	movq	48(%rsp), %rbp          # 8-byte Reload
	je	.LBB24_91
# BB#78:                                # %if.end.112
	movq	80(%rsp), %rdx
	movq	%r14, %rdi
	movl	72(%rsp), %esi          # 4-byte Reload
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB24_91
# BB#79:                                # %if.end.116
	movq	128(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB24_81
# BB#80:                                # %if.then.119
	movl	$1668051572, %esi       # imm = 0x636C7274
	movq	%r14, %rdi
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB24_91
.LBB24_81:                              # %if.end.125
	movq	136(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB24_83
# BB#82:                                # %if.then.128
	movl	$1668050804, %esi       # imm = 0x636C6F74
	movq	%r14, %rdi
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB24_91
.LBB24_83:                              # %if.end.134
	movl	12(%rsp), %eax          # 4-byte Reload
	cmpl	$1935896178, %eax       # imm = 0x73636E72
	jne	.LBB24_84
# BB#90:                                # %if.then.149
	leaq	152(%rbp), %rdx
	jmp	.LBB24_88
.LBB24_59:
	movq	32(%rsp), %r13          # 8-byte Reload
	jmp	.LBB24_92
.LBB24_62:
	movq	32(%rsp), %r13          # 8-byte Reload
	jmp	.LBB24_92
.LBB24_27:                              # %if.then.10.i
	movl	$1886549106, %esi       # imm = 0x70727472
	movq	%r14, %rdi
	callq	cmsSetDeviceClass
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	cmsSetPCS
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	cmsSetColorSpace
	jmp	.LBB24_34
.LBB24_31:                              # %if.then.17.i
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movl	$1935896178, %esi       # imm = 0x73636E72
	jmp	.LBB24_33
.LBB24_84:                              # %if.end.134
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	jne	.LBB24_87
# BB#85:                                # %land.lhs.true.137
	movq	200(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB24_87
# BB#86:                                # %if.then.140
	movq	%r14, %rdi
	callq	_cmsWriteProfileSequence
	testl	%eax, %eax
	je	.LBB24_91
.LBB24_87:                              # %if.else.154
	leaq	176(%rbp), %rdx
.LBB24_88:                              # %if.else.154
	movl	$2004119668, %esi       # imm = 0x77747074
	movq	%r14, %rdi
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB24_91
# BB#89:                                # %if.end.159
	movl	224(%rbp), %esi
	movq	%r14, %rdi
	callq	cmsSetHeaderRenderingIntent
	movq	80(%rsp), %rdi
	callq	cmsPipelineFree
	jmp	.LBB24_96
.LBB24_91:
	movq	%r14, %r13
.LBB24_92:                              # %Error
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB24_94
# BB#93:                                # %if.then.163
	callq	cmsPipelineFree
.LBB24_94:                              # %if.end.164
	movq	%r13, %rdi
.LBB24_95:                              # %cleanup
	callq	cmsCloseProfile
	xorl	%r14d, %r14d
.LBB24_96:                              # %cleanup
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_97:                              # %cond.false
	movl	$.L.str.13, %edi
	movl	$.L.str.14, %esi
	movl	$1058, %edx             # imm = 0x422
	movl	$.L__PRETTY_FUNCTION__.cmsTransform2DeviceLink, %ecx
	callq	__assert_fail
.Lfunc_end24:
	.size	cmsTransform2DeviceLink, .Lfunc_end24-cmsTransform2DeviceLink
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.align	4
.L.str:
	.long	82                      # 0x52
	.long	71                      # 0x47
	.long	66                      # 0x42
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str, 52

	.type	.L.str.1,@object        # @.str.1
	.align	4
.L.str.1:
	.long	103                     # 0x67
	.long	114                     # 0x72
	.long	97                      # 0x61
	.long	121                     # 0x79
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.1, 56

	.type	.L.str.2,@object        # @.str.2
	.align	4
.L.str.2:
	.long	76                      # 0x4c
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	101                     # 0x65
	.long	97                      # 0x61
	.long	114                     # 0x72
	.long	105                     # 0x69
	.long	122                     # 0x7a
	.long	97                      # 0x61
	.long	116                     # 0x74
	.long	105                     # 0x69
	.long	111                     # 0x6f
	.long	110                     # 0x6e
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.2, 92

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Linearization built-in"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"InkLimiting: Only CMYK currently supported"
	.size	.L.str.4, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"InkLimiting: Limit should be between 0..400"
	.size	.L.str.5, 44

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str4.4,"aMS",@progbits,4
	.align	4
.L.str.6:
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	107                     # 0x6b
	.long	45                      # 0x2d
	.long	108                     # 0x6c
	.long	105                     # 0x69
	.long	109                     # 0x6d
	.long	105                     # 0x69
	.long	116                     # 0x74
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	103                     # 0x67
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.6, 88

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"ink-limiting built-in"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str4.4,"aMS",@progbits,4
	.align	4
.L.str.8:
	.long	76                      # 0x4c
	.long	97                      # 0x61
	.long	98                      # 0x62
	.long	32                      # 0x20
	.long	105                     # 0x69
	.long	100                     # 0x64
	.long	101                     # 0x65
	.long	110                     # 0x6e
	.long	116                     # 0x74
	.long	105                     # 0x69
	.long	116                     # 0x74
	.long	121                     # 0x79
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.8, 88

	.type	.L.str.9,@object        # @.str.9
	.align	4
.L.str.9:
	.long	88                      # 0x58
	.long	89                      # 0x59
	.long	90                      # 0x5a
	.long	32                      # 0x20
	.long	105                     # 0x69
	.long	100                     # 0x64
	.long	101                     # 0x65
	.long	110                     # 0x6e
	.long	116                     # 0x74
	.long	105                     # 0x69
	.long	116                     # 0x74
	.long	121                     # 0x79
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.9, 88

	.type	.LcmsCreate_sRGBProfileTHR.Rec709Primaries,@object # @cmsCreate_sRGBProfileTHR.Rec709Primaries
	.section	.rodata,"a",@progbits
	.align	8
.LcmsCreate_sRGBProfileTHR.Rec709Primaries:
	.quad	4603939827068310651     # double 0.64000000000000001
	.quad	4599616371426034975     # double 0.33000000000000002
	.quad	4607182418800017408     # double 1
	.quad	4599075939470750515     # double 0.29999999999999999
	.quad	4603579539098121011     # double 0.59999999999999998
	.quad	4607182418800017408     # double 1
	.quad	4594572339843380019     # double 0.14999999999999999
	.quad	4588807732320345784     # double 0.059999999999999998
	.quad	4607182418800017408     # double 1
	.size	.LcmsCreate_sRGBProfileTHR.Rec709Primaries, 72

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str4.4,"aMS",@progbits,4
	.align	4
.L.str.10:
	.long	115                     # 0x73
	.long	82                      # 0x52
	.long	71                      # 0x47
	.long	66                      # 0x42
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.10, 56

	.type	.L.str.11,@object       # @.str.11
	.align	4
.L.str.11:
	.long	66                      # 0x42
	.long	67                      # 0x43
	.long	72                      # 0x48
	.long	83                      # 0x53
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.11, 56

	.type	.L.str.12,@object       # @.str.12
	.align	4
.L.str.12:
	.long	78                      # 0x4e
	.long	85                      # 0x55
	.long	76                      # 0x4c
	.long	76                      # 0x4c
	.long	32                      # 0x20
	.long	112                     # 0x70
	.long	114                     # 0x72
	.long	111                     # 0x6f
	.long	102                     # 0x66
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	101                     # 0x65
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	105                     # 0x69
	.long	108                     # 0x6c
	.long	116                     # 0x74
	.long	45                      # 0x2d
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.12, 88

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"(hTransform != ((void*)0))"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"./lcms2/src/cmsvirt.c"
	.size	.L.str.14, 22

	.type	.L__PRETTY_FUNCTION__.cmsTransform2DeviceLink,@object # @__PRETTY_FUNCTION__.cmsTransform2DeviceLink
.L__PRETTY_FUNCTION__.cmsTransform2DeviceLink:
	.asciz	"cmsHPROFILE cmsTransform2DeviceLink(cmsHTRANSFORM, cmsFloat64Number, cmsUInt32Number)"
	.size	.L__PRETTY_FUNCTION__.cmsTransform2DeviceLink, 86

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str4.4,"aMS",@progbits,4
	.align	4
.L.str.15:
	.long	100                     # 0x64
	.long	101                     # 0x65
	.long	118                     # 0x76
	.long	105                     # 0x69
	.long	99                      # 0x63
	.long	101                     # 0x65
	.long	108                     # 0x6c
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	107                     # 0x6b
	.long	0                       # 0x0
	.size	.L.str.15, 44

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"en"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"US"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str4.4,"aMS",@progbits,4
	.align	4
.L.str.18:
	.long	78                      # 0x4e
	.long	111                     # 0x6f
	.long	32                      # 0x20
	.long	99                      # 0x63
	.long	111                     # 0x6f
	.long	112                     # 0x70
	.long	121                     # 0x79
	.long	114                     # 0x72
	.long	105                     # 0x69
	.long	103                     # 0x67
	.long	104                     # 0x68
	.long	116                     # 0x74
	.long	44                      # 0x2c
	.long	32                      # 0x20
	.long	117                     # 0x75
	.long	115                     # 0x73
	.long	101                     # 0x65
	.long	32                      # 0x20
	.long	102                     # 0x66
	.long	114                     # 0x72
	.long	101                     # 0x65
	.long	101                     # 0x65
	.long	108                     # 0x6c
	.long	121                     # 0x79
	.long	0                       # 0x0
	.size	.L.str.18, 100

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata,"a",@progbits
.L.str.19:
	.zero	3
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Little CMS"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str4.4,"aMS",@progbits,4
	.align	4
.L.str.21:
	.long	78                      # 0x4e
	.long	97                      # 0x61
	.long	109                     # 0x6d
	.long	101                     # 0x65
	.long	100                     # 0x64
	.long	32                      # 0x20
	.long	99                      # 0x63
	.long	111                     # 0x6f
	.long	108                     # 0x6c
	.long	111                     # 0x6f
	.long	114                     # 0x72
	.long	32                      # 0x20
	.long	100                     # 0x64
	.long	101                     # 0x65
	.long	118                     # 0x76
	.long	105                     # 0x69
	.long	99                      # 0x63
	.long	101                     # 0x65
	.long	108                     # 0x6c
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	107                     # 0x6b
	.long	0                       # 0x0
	.size	.L.str.21, 92

	.type	AllowedLUTTypes,@object # @AllowedLUTTypes
	.section	.rodata,"a",@progbits
	.align	16
AllowedLUTTypes:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1835430962              # 0x6d667432
	.long	4                       # 0x4
	.long	1835103334              # 0x6d617466
	.long	1668707188              # 0x63767374
	.long	1668052340              # 0x636c7574
	.long	1668707188              # 0x63767374
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1835430962              # 0x6d667432
	.long	3                       # 0x3
	.long	1668707188              # 0x63767374
	.long	1668052340              # 0x636c7574
	.long	1668707188              # 0x63767374
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1835430962              # 0x6d667432
	.long	2                       # 0x2
	.long	1668707188              # 0x63767374
	.long	1668052340              # 0x636c7574
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1832993312              # 0x6d414220
	.long	1                       # 0x1
	.long	1668707188              # 0x63767374
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1093812784              # 0x41324230
	.long	1832993312              # 0x6d414220
	.long	3                       # 0x3
	.long	1668707188              # 0x63767374
	.long	1835103334              # 0x6d617466
	.long	1668707188              # 0x63767374
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1093812784              # 0x41324230
	.long	1832993312              # 0x6d414220
	.long	3                       # 0x3
	.long	1668707188              # 0x63767374
	.long	1668052340              # 0x636c7574
	.long	1668707188              # 0x63767374
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1093812784              # 0x41324230
	.long	1832993312              # 0x6d414220
	.long	5                       # 0x5
	.long	1668707188              # 0x63767374
	.long	1668052340              # 0x636c7574
	.long	1668707188              # 0x63767374
	.long	1835103334              # 0x6d617466
	.long	1668707188              # 0x63767374
	.long	1                       # 0x1
	.long	1110589744              # 0x42324130
	.long	1833058592              # 0x6d424120
	.long	1                       # 0x1
	.long	1668707188              # 0x63767374
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1110589744              # 0x42324130
	.long	1833058592              # 0x6d424120
	.long	3                       # 0x3
	.long	1668707188              # 0x63767374
	.long	1835103334              # 0x6d617466
	.long	1668707188              # 0x63767374
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1110589744              # 0x42324130
	.long	1833058592              # 0x6d424120
	.long	3                       # 0x3
	.long	1668707188              # 0x63767374
	.long	1668052340              # 0x636c7574
	.long	1668707188              # 0x63767374
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1110589744              # 0x42324130
	.long	1833058592              # 0x6d424120
	.long	5                       # 0x5
	.long	1668707188              # 0x63767374
	.long	1835103334              # 0x6d617466
	.long	1668707188              # 0x63767374
	.long	1668052340              # 0x636c7574
	.long	1668707188              # 0x63767374
	.size	AllowedLUTTypes, 396


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
