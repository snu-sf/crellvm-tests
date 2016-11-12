	.text
	.file	"gscie.bc"
	.globl	a_identity
	.align	16, 0x90
	.type	a_identity,@function
a_identity:                             # @a_identity
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	a_identity, .Lfunc_end0-a_identity
	.cfi_endproc

	.globl	abc_identity
	.align	16, 0x90
	.type	abc_identity,@function
abc_identity:                           # @abc_identity
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end1:
	.size	abc_identity, .Lfunc_end1-abc_identity
	.cfi_endproc

	.globl	common_identity
	.align	16, 0x90
	.type	common_identity,@function
common_identity:                        # @common_identity
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end2:
	.size	common_identity, .Lfunc_end2-common_identity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	gs_cie_cached_value
	.align	16, 0x90
	.type	gs_cie_cached_value,@function
gs_cie_cached_value:                    # @gs_cie_cached_value
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	8(%rdi), %xmm0
	mulsd	16(%rdi), %xmm0
	addsd	.LCPI3_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB3_2
# BB#1:                                 # %cond.false
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB3_2:                                # %cond.end.7
	movss	40(%rdi,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end3:
	.size	gs_cie_cached_value, .Lfunc_end3-gs_cie_cached_value
	.cfi_endproc

	.align	16, 0x90
	.type	defg_identity,@function
defg_identity:                          # @defg_identity
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end4:
	.size	defg_identity, .Lfunc_end4-defg_identity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	defg_from_cache_0,@function
defg_from_cache_0:                      # @defg_from_cache_0
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	31488(%rdi), %xmm0
	mulsd	31496(%rdi), %xmm0
	addsd	.LCPI5_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB5_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB5_2:                                # %gs_cie_cached_value.exit
	movss	31520(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end5:
	.size	defg_from_cache_0, .Lfunc_end5-defg_from_cache_0
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	defg_from_cache_1,@function
defg_from_cache_1:                      # @defg_from_cache_1
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	33576(%rdi), %xmm0
	mulsd	33584(%rdi), %xmm0
	addsd	.LCPI6_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB6_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB6_2:                                # %gs_cie_cached_value.exit
	movss	33608(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end6:
	.size	defg_from_cache_1, .Lfunc_end6-defg_from_cache_1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	defg_from_cache_2,@function
defg_from_cache_2:                      # @defg_from_cache_2
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	35664(%rdi), %xmm0
	mulsd	35672(%rdi), %xmm0
	addsd	.LCPI7_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB7_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB7_2:                                # %gs_cie_cached_value.exit
	movss	35696(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end7:
	.size	defg_from_cache_2, .Lfunc_end7-defg_from_cache_2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	defg_from_cache_3,@function
defg_from_cache_3:                      # @defg_from_cache_3
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	37752(%rdi), %xmm0
	mulsd	37760(%rdi), %xmm0
	addsd	.LCPI8_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB8_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB8_2:                                # %gs_cie_cached_value.exit
	movss	37784(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end8:
	.size	defg_from_cache_3, .Lfunc_end8-defg_from_cache_3
	.cfi_endproc

	.align	16, 0x90
	.type	def_identity,@function
def_identity:                           # @def_identity
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end9:
	.size	def_identity, .Lfunc_end9-def_identity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	def_from_cache_0,@function
def_from_cache_0:                       # @def_from_cache_0
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	31464(%rdi), %xmm0
	mulsd	31472(%rdi), %xmm0
	addsd	.LCPI10_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB10_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB10_2:                               # %gs_cie_cached_value.exit
	movss	31496(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end10:
	.size	def_from_cache_0, .Lfunc_end10-def_from_cache_0
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	def_from_cache_1,@function
def_from_cache_1:                       # @def_from_cache_1
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	33552(%rdi), %xmm0
	mulsd	33560(%rdi), %xmm0
	addsd	.LCPI11_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB11_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB11_2:                               # %gs_cie_cached_value.exit
	movss	33584(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end11:
	.size	def_from_cache_1, .Lfunc_end11-def_from_cache_1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	def_from_cache_2,@function
def_from_cache_2:                       # @def_from_cache_2
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	35640(%rdi), %xmm0
	mulsd	35648(%rdi), %xmm0
	addsd	.LCPI12_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB12_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB12_2:                               # %gs_cie_cached_value.exit
	movss	35672(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end12:
	.size	def_from_cache_2, .Lfunc_end12-def_from_cache_2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	abc_from_cache_0,@function
abc_from_cache_0:                       # @abc_from_cache_0
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	6520(%rdi), %xmm0
	mulsd	6528(%rdi), %xmm0
	addsd	.LCPI13_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB13_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB13_2:                               # %gs_cie_cached_value.exit
	movss	6552(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end13:
	.size	abc_from_cache_0, .Lfunc_end13-abc_from_cache_0
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	abc_from_cache_1,@function
abc_from_cache_1:                       # @abc_from_cache_1
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	14792(%rdi), %xmm0
	mulsd	14800(%rdi), %xmm0
	addsd	.LCPI14_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB14_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB14_2:                               # %gs_cie_cached_value.exit
	movss	14824(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end14:
	.size	abc_from_cache_1, .Lfunc_end14-abc_from_cache_1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	abc_from_cache_2,@function
abc_from_cache_2:                       # @abc_from_cache_2
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	23064(%rdi), %xmm0
	mulsd	23072(%rdi), %xmm0
	addsd	.LCPI15_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB15_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB15_2:                               # %gs_cie_cached_value.exit
	movss	23096(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end15:
	.size	abc_from_cache_2, .Lfunc_end15-abc_from_cache_2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	lmn_from_cache_0,@function
lmn_from_cache_0:                       # @lmn_from_cache_0
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	136(%rdi), %xmm0
	mulsd	144(%rdi), %xmm0
	addsd	.LCPI16_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB16_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB16_2:                               # %gs_cie_cached_value.exit
	movss	168(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end16:
	.size	lmn_from_cache_0, .Lfunc_end16-lmn_from_cache_0
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	lmn_from_cache_1,@function
lmn_from_cache_1:                       # @lmn_from_cache_1
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	2224(%rdi), %xmm0
	mulsd	2232(%rdi), %xmm0
	addsd	.LCPI17_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB17_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB17_2:                               # %gs_cie_cached_value.exit
	movss	2256(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end17:
	.size	lmn_from_cache_1, .Lfunc_end17-lmn_from_cache_1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	lmn_from_cache_2,@function
lmn_from_cache_2:                       # @lmn_from_cache_2
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	4312(%rdi), %xmm0
	mulsd	4320(%rdi), %xmm0
	addsd	.LCPI18_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB18_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB18_2:                               # %gs_cie_cached_value.exit
	movss	4344(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end18:
	.size	lmn_from_cache_2, .Lfunc_end18-lmn_from_cache_2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	a_from_cache,@function
a_from_cache:                           # @a_from_cache
	.cfi_startproc
# BB#0:                                 # %entry
	subsd	6456(%rdi), %xmm0
	mulsd	6464(%rdi), %xmm0
	addsd	.LCPI19_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB19_2
# BB#1:                                 # %cond.false.i
	cmpl	$511, %eax              # imm = 0x1FF
	movl	$511, %ecx              # imm = 0x1FF
	cmovlel	%eax, %ecx
	movslq	%ecx, %rcx
.LBB19_2:                               # %gs_cie_cached_value.exit
	movss	6488(%rdi,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end19:
	.size	a_from_cache, .Lfunc_end19-a_from_cache
	.cfi_endproc

	.globl	gx_init_CIE
	.align	16, 0x90
	.type	gx_init_CIE,@function
gx_init_CIE:                            # @gx_init_CIE
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
	callq	gx_init_paint_4
	movq	(%rbx), %rax
	movq	40(%rax), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end20:
	.size	gx_init_CIE, .Lfunc_end20-gx_init_CIE
	.cfi_endproc

	.globl	gx_restrict_CIEDEFG
	.align	16, 0x90
	.type	gx_restrict_CIEDEFG,@function
gx_restrict_CIEDEFG:                    # @gx_restrict_CIEDEFG
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rsi), %rax
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	31352(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB21_2
# BB#1:                                 # %if.else.i
	movss	31356(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB21_3
.LBB21_2:                               # %if.then.3.i
	movss	%xmm1, 8(%rdi)
.LBB21_3:                               # %cie_restrict.exit
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31360(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB21_5
# BB#4:                                 # %if.else.i.29
	movss	31364(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB21_6
.LBB21_5:                               # %if.then.3.i.30
	movss	%xmm1, 12(%rdi)
.LBB21_6:                               # %cie_restrict.exit31
	movss	16(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31368(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB21_8
# BB#7:                                 # %if.else.i.21
	movss	31372(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB21_9
.LBB21_8:                               # %if.then.3.i.22
	movss	%xmm1, 16(%rdi)
.LBB21_9:                               # %cie_restrict.exit23
	movss	20(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31376(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB21_11
# BB#10:                                # %if.else.i.13
	movss	31380(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB21_12
.LBB21_11:                              # %if.then.3.i.14
	movss	%xmm1, 20(%rdi)
.LBB21_12:                              # %cie_restrict.exit15
	retq
.Lfunc_end21:
	.size	gx_restrict_CIEDEFG, .Lfunc_end21-gx_restrict_CIEDEFG
	.cfi_endproc

	.globl	gx_restrict_CIEDEF
	.align	16, 0x90
	.type	gx_restrict_CIEDEF,@function
gx_restrict_CIEDEF:                     # @gx_restrict_CIEDEF
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rsi), %rax
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	31352(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB22_2
# BB#1:                                 # %if.else.i
	movss	31356(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB22_3
.LBB22_2:                               # %if.then.3.i
	movss	%xmm1, 8(%rdi)
.LBB22_3:                               # %cie_restrict.exit
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31360(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB22_5
# BB#4:                                 # %if.else.i.19
	movss	31364(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB22_6
.LBB22_5:                               # %if.then.3.i.20
	movss	%xmm1, 12(%rdi)
.LBB22_6:                               # %cie_restrict.exit21
	movss	16(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31368(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB22_8
# BB#7:                                 # %if.else.i.11
	movss	31372(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB22_9
.LBB22_8:                               # %if.then.3.i.12
	movss	%xmm1, 16(%rdi)
.LBB22_9:                               # %cie_restrict.exit13
	retq
.Lfunc_end22:
	.size	gx_restrict_CIEDEF, .Lfunc_end22-gx_restrict_CIEDEF
	.cfi_endproc

	.globl	gx_restrict_CIEABC
	.align	16, 0x90
	.type	gx_restrict_CIEABC,@function
gx_restrict_CIEABC:                     # @gx_restrict_CIEABC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rsi), %rax
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	6416(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB23_2
# BB#1:                                 # %if.else.i
	movss	6420(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB23_3
.LBB23_2:                               # %if.then.3.i
	movss	%xmm1, 8(%rdi)
.LBB23_3:                               # %cie_restrict.exit
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	6424(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB23_5
# BB#4:                                 # %if.else.i.19
	movss	6428(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB23_6
.LBB23_5:                               # %if.then.3.i.20
	movss	%xmm1, 12(%rdi)
.LBB23_6:                               # %cie_restrict.exit21
	movss	16(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	6432(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB23_8
# BB#7:                                 # %if.else.i.11
	movss	6436(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB23_9
.LBB23_8:                               # %if.then.3.i.12
	movss	%xmm1, 16(%rdi)
.LBB23_9:                               # %cie_restrict.exit13
	retq
.Lfunc_end23:
	.size	gx_restrict_CIEABC, .Lfunc_end23-gx_restrict_CIEABC
	.cfi_endproc

	.globl	gx_restrict_CIEA
	.align	16, 0x90
	.type	gx_restrict_CIEA,@function
gx_restrict_CIEA:                       # @gx_restrict_CIEA
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rsi), %rax
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	6416(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB24_2
# BB#1:                                 # %if.else.i
	movss	6420(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB24_3
.LBB24_2:                               # %if.then.3.i
	movss	%xmm1, 8(%rdi)
.LBB24_3:                               # %cie_restrict.exit
	retq
.Lfunc_end24:
	.size	gx_restrict_CIEA, .Lfunc_end24-gx_restrict_CIEA
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI25_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_install_cie_abc
	.align	16, 0x90
	.type	gx_install_cie_abc,@function
gx_install_cie_abc:                     # @gx_install_cie_abc
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
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 80
.Ltmp11:
	.cfi_offset %rbx, -48
.Ltmp12:
	.cfi_offset %r12, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movss	6464(%r12), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI25_0(%rip), %xmm0
	jne	.LBB25_9
	jp	.LBB25_9
# BB#1:                                 # %land.lhs.true.i
	movss	6468(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB25_9
	jp	.LBB25_9
# BB#2:                                 # %land.lhs.true.6.i
	movss	6472(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB25_9
	jp	.LBB25_9
# BB#3:                                 # %land.lhs.true.11.i
	movss	6480(%r12), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI25_0(%rip), %xmm0
	jne	.LBB25_9
	jp	.LBB25_9
# BB#4:                                 # %land.lhs.true.16.i
	movss	6476(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB25_9
	jp	.LBB25_9
# BB#5:                                 # %land.lhs.true.22.i
	movss	6484(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB25_9
	jp	.LBB25_9
# BB#6:                                 # %land.lhs.true.28.i
	movss	6496(%r12), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI25_0(%rip), %xmm0
	jne	.LBB25_9
	jp	.LBB25_9
# BB#7:                                 # %land.rhs.i
	movss	6488(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB25_9
	jp	.LBB25_9
# BB#8:                                 # %land.rhs.38.i
	cmpeqss	6492(%r12), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB25_9:                               # %cie_matrix_init.exit
	movzbl	%al, %eax
	movl	%eax, 6500(%r12)
	leaq	6512(%r12), %rdi
	leaq	6416(%r12), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	24(%rsp), %r15
	testq	%r15, %r15
	js	.LBB25_12
# BB#10:                                # %for.body.9.lr.ph
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB25_11:                              # %for.body.9
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	12(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	8(%rsp), %xmm1          # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	4(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	*6440(%r12)
	movss	%xmm0, 6552(%r12,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r15
	jge	.LBB25_11
.LBB25_12:                              # %for.end
	movl	$abc_identity, %eax
	cmpq	%rax, 6440(%r12)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 6512(%r12)
	leaq	14784(%r12), %rdi
	leaq	6424(%r12), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	24(%rsp), %r15
	testq	%r15, %r15
	js	.LBB25_15
# BB#13:                                # %for.body.9.lr.ph.1
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB25_14:                              # %for.body.9.1
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	12(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	8(%rsp), %xmm1          # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	4(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	*6448(%r12)
	movss	%xmm0, 14824(%r12,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r15
	jge	.LBB25_14
.LBB25_15:                              # %for.end.1
	movl	$abc_identity, %eax
	cmpq	%rax, 6448(%r12)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 14784(%r12)
	leaq	23056(%r12), %rdi
	leaq	6432(%r12), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	24(%rsp), %r15
	testq	%r15, %r15
	js	.LBB25_18
# BB#16:                                # %for.body.9.lr.ph.2
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB25_17:                              # %for.body.9.2
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	12(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	8(%rsp), %xmm1          # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	4(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	*6456(%r12)
	movss	%xmm0, 23096(%r12,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r15
	jge	.LBB25_17
.LBB25_18:                              # %for.end.2
	movl	$abc_identity, %eax
	cmpq	%rax, 6456(%r12)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 23056(%r12)
	movq	%r12, %rdi
	callq	gx_cie_load_common_cache
	movq	%r12, %rdi
	callq	gs_cie_abc_complete
	movq	1008(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB25_21
# BB#19:                                # %lor.lhs.false.i.i
	cmpq	$1, 24(%rbx)
	jg	.LBB25_21
# BB#20:                                # %lor.lhs.false.4.i.i
	movq	32(%rbx), %rax
	cmpq	8(%r14), %rax
	je	.LBB25_27
.LBB25_21:                              # %if.then.i.i
	movq	8(%r14), %rdi
	movl	$st_joint_caches, %esi
	movl	$.L.str.6, %edx
	callq	*72(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB25_28
# BB#22:                                # %do.body.14.i.i
	movq	$1, 24(%rcx)
	movq	8(%r14), %rdx
	movq	%rdx, 32(%rcx)
	movq	$rc_free_struct_only, 40(%rcx)
	movq	1008(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB25_24
# BB#23:                                # %do.end.31.i.i
	decq	24(%rdx)
.LBB25_24:                              # %do.end.41.i.i
	movq	%rcx, 1008(%r14)
	cmpq	%rbx, %rcx
	je	.LBB25_26
# BB#25:                                # %if.then.44.i.i
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	%rcx, %rbx
	jmp	.LBB25_27
.LBB25_26:                              # %gx_unshare_cie_caches.exit.i
	testq	%rbx, %rbx
	je	.LBB25_28
.LBB25_27:                              # %if.end.i
	movl	$0, 20(%rbx)
	xorl	%eax, %eax
.LBB25_28:                              # %gs_cie_cs_complete.exit
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gx_install_cie_abc, .Lfunc_end25-gx_install_cie_abc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI26_0:
	.long	3288301568              # float -511
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI26_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI26_3:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_2:
	.quad	4647697223260307456     # double 511
.LCPI26_4:
	.quad	4158027847206421152     # double 1.0000000000000001E-30
.LCPI26_5:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gs_cie_cache_init
	.align	16, 0x90
	.type	gs_cie_cache_init,@function
gs_cie_cache_init:                      # @gs_cie_cache_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 64
.Ltmp21:
	.cfi_offset %rbx, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movss	(%rdx), %xmm7           # xmm7 = mem[0],zero,zero,zero
	movss	4(%rdx), %xmm6          # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm0
	subss	%xmm7, %xmm0
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	ucomiss	%xmm7, %xmm0
	jbe	.LBB26_6
# BB#1:                                 # %entry
	ucomiss	%xmm0, %xmm6
	jb	.LBB26_6
# BB#2:                                 # %if.then
	movss	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	movaps	%xmm7, (%rsp)           # 16-byte Spill
	addss	%xmm6, %xmm1
	movss	%xmm6, 16(%rsp)         # 4-byte Spill
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.LBB26_4
# BB#3:                                 # %cond.true
	callq	floor
	jmp	.LBB26_5
.LBB26_4:                               # %cond.false
	callq	ceil
.LBB26_5:                               # %cond.end
	cvttsd2si	%xmm0, %ebp
	movaps	(%rsp), %xmm1           # 16-byte Reload
	xorps	.LCPI26_1(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movl	$511, %ebx              # imm = 0x1FF
	subl	%ebp, %ebx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	movss	16(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	maxsd	%xmm1, %xmm0
	leaq	20(%rsp), %rdi
	callq	frexp
	movl	$15, %edi
	callq	ldexp
	callq	ceil
	movl	20(%rsp), %edi
	addl	$-15, %edi
	callq	ldexp
	negl	%ebp
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebp, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm7
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm6
	movaps	%xmm6, %xmm0
	subss	%xmm7, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
.LBB26_6:                               # %if.end
	movsd	.LCPI26_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvtss2sd	%xmm7, %xmm3
	movsd	%xmm3, 8(%r14)
	movapd	.LCPI26_3(%rip), %xmm3  # xmm3 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	movapd	%xmm2, %xmm5
	cmpltsd	%xmm4, %xmm5
	movapd	%xmm5, %xmm4
	andnpd	%xmm2, %xmm4
	andpd	%xmm3, %xmm5
	orpd	%xmm4, %xmm5
	divsd	%xmm1, %xmm0
	cmpltsd	.LCPI26_4(%rip), %xmm5
	movsd	.LCPI26_5(%rip), %xmm1  # xmm1 = mem[0],zero
	andpd	%xmm5, %xmm1
	andnpd	%xmm0, %xmm5
	orpd	%xmm1, %xmm5
	movsd	%xmm5, 16(%r14)
	movss	%xmm7, (%r15)
	movss	%xmm6, 4(%r15)
	movl	$511, 8(%r15)           # imm = 0x1FF
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gs_cie_cache_init, .Lfunc_end26-gs_cie_cache_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI27_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_cie_load_common_cache
	.align	16, 0x90
	.type	gx_cie_load_common_cache,@function
gx_cie_load_common_cache:               # @gx_cie_load_common_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 80
.Ltmp30:
	.cfi_offset %rbx, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movss	64(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI27_0(%rip), %xmm0
	jne	.LBB27_9
	jp	.LBB27_9
# BB#1:                                 # %land.lhs.true.i
	movss	68(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB27_9
	jp	.LBB27_9
# BB#2:                                 # %land.lhs.true.6.i
	movss	72(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB27_9
	jp	.LBB27_9
# BB#3:                                 # %land.lhs.true.11.i
	movss	80(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI27_0(%rip), %xmm0
	jne	.LBB27_9
	jp	.LBB27_9
# BB#4:                                 # %land.lhs.true.16.i
	movss	76(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB27_9
	jp	.LBB27_9
# BB#5:                                 # %land.lhs.true.22.i
	movss	84(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB27_9
	jp	.LBB27_9
# BB#6:                                 # %land.lhs.true.28.i
	movss	96(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI27_0(%rip), %xmm0
	jne	.LBB27_9
	jp	.LBB27_9
# BB#7:                                 # %land.rhs.i
	movss	88(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB27_9
	jp	.LBB27_9
# BB#8:                                 # %land.rhs.38.i
	cmpeqss	92(%r15), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB27_9:                               # %cie_matrix_init.exit
	movzbl	%al, %eax
	movl	%eax, 100(%r15)
	movq	%r15, %rdi
	subq	$-128, %rdi
	leaq	16(%r15), %rdx
	leaq	24(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %r14
	testq	%r14, %r14
	js	.LBB27_12
# BB#10:                                # %for.body.8.lr.ph
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB27_11:                              # %for.body.8
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	20(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	16(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	12(%rsp), %xmm1         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r15, %rdi
	callq	*40(%r15)
	movss	%xmm0, 168(%r15,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r14
	jge	.LBB27_11
.LBB27_12:                              # %for.end
	movl	$common_identity, %eax
	cmpq	%rax, 40(%r15)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 128(%r15)
	leaq	2216(%r15), %rdi
	leaq	24(%r15), %rdx
	leaq	24(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %r14
	testq	%r14, %r14
	js	.LBB27_15
# BB#13:                                # %for.body.8.lr.ph.1
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB27_14:                              # %for.body.8.1
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	20(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	16(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	12(%rsp), %xmm1         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r15, %rdi
	callq	*48(%r15)
	movss	%xmm0, 2256(%r15,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r14
	jge	.LBB27_14
.LBB27_15:                              # %for.end.1
	movl	$common_identity, %eax
	cmpq	%rax, 48(%r15)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 2216(%r15)
	leaq	4304(%r15), %rdi
	leaq	32(%r15), %rdx
	leaq	24(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %r14
	testq	%r14, %r14
	js	.LBB27_18
# BB#16:                                # %for.body.8.lr.ph.2
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB27_17:                              # %for.body.8.2
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	20(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	16(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	12(%rsp), %xmm1         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r15, %rdi
	callq	*56(%r15)
	movss	%xmm0, 4344(%r15,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r14
	jge	.LBB27_17
.LBB27_18:                              # %for.end.2
	movl	$common_identity, %eax
	cmpq	%rax, 56(%r15)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4304(%r15)
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gx_cie_load_common_cache, .Lfunc_end27-gx_cie_load_common_cache
	.cfi_endproc

	.globl	gs_cie_abc_complete
	.align	16, 0x90
	.type	gs_cie_abc_complete,@function
gs_cie_abc_complete:                    # @gs_cie_abc_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -24
.Ltmp38:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	6512(%rbx), %r14
	movq	%r14, %rdi
	callq	cache3_set_linear
	leaq	6464(%rbx), %rsi
	movq	%r14, %rdi
	movq	%r14, %rdx
	callq	cie_cache_mult
	leaq	14784(%rbx), %rdi
	leaq	6476(%rbx), %rsi
	movq	%rdi, %rdx
	callq	cie_cache_mult
	leaq	23056(%rbx), %rdi
	leaq	6488(%rbx), %rsi
	movq	%rdi, %rdx
	callq	cie_cache_mult
	movss	8612(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	8616(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	16884(%rbx), %xmm0
	maxss	16888(%rbx), %xmm1
	minss	25156(%rbx), %xmm0
	maxss	25160(%rbx), %xmm1
	movss	%xmm0, 31328(%rbx)
	movss	%xmm1, 31332(%rbx)
	movss	8620(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	8624(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	16892(%rbx), %xmm0
	maxss	16896(%rbx), %xmm1
	minss	25164(%rbx), %xmm0
	maxss	25168(%rbx), %xmm1
	movss	%xmm0, 31336(%rbx)
	movss	%xmm1, 31340(%rbx)
	movss	8628(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	8632(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	16900(%rbx), %xmm0
	maxss	16904(%rbx), %xmm1
	minss	25172(%rbx), %xmm0
	maxss	25176(%rbx), %xmm1
	movss	%xmm0, 31344(%rbx)
	movss	%xmm1, 31348(%rbx)
	movl	6512(%rbx), %eax
	andl	6500(%rbx), %eax
	andl	14784(%rbx), %eax
	andl	23056(%rbx), %eax
	movl	%eax, 6504(%rbx)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_cie_common_complete  # TAILCALL
.Lfunc_end28:
	.size	gs_cie_abc_complete, .Lfunc_end28-gs_cie_abc_complete
	.cfi_endproc

	.globl	gs_cie_cs_complete
	.align	16, 0x90
	.type	gs_cie_cs_complete,@function
gs_cie_cs_complete:                     # @gs_cie_cs_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	1008(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB29_3
# BB#1:                                 # %lor.lhs.false.i
	cmpq	$1, 24(%rbp)
	jg	.LBB29_3
# BB#2:                                 # %lor.lhs.false.4.i
	movq	32(%rbp), %rax
	cmpq	8(%rbx), %rax
	je	.LBB29_9
.LBB29_3:                               # %if.then.i
	movq	8(%rbx), %rdi
	movl	$st_joint_caches, %esi
	movl	$.L.str.6, %edx
	callq	*72(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB29_10
# BB#4:                                 # %do.body.14.i
	movq	$1, 24(%rcx)
	movq	8(%rbx), %rdx
	movq	%rdx, 32(%rcx)
	movq	$rc_free_struct_only, 40(%rcx)
	movq	1008(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB29_6
# BB#5:                                 # %do.end.31.i
	decq	24(%rdx)
.LBB29_6:                               # %do.end.41.i
	movq	%rcx, 1008(%rbx)
	cmpq	%rbp, %rcx
	je	.LBB29_8
# BB#7:                                 # %if.then.44.i
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	%rcx, %rbp
	jmp	.LBB29_9
.LBB29_8:                               # %gx_unshare_cie_caches.exit
	testq	%rbp, %rbp
	je	.LBB29_10
.LBB29_9:                               # %if.end
	testl	%r14d, %r14d
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 20(%rbp)
	xorl	%eax, %eax
.LBB29_10:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gs_cie_cs_complete, .Lfunc_end29-gs_cie_cs_complete
	.cfi_endproc

	.globl	gx_install_CIEDEFG
	.align	16, 0x90
	.type	gx_install_CIEDEFG,@function
gx_install_CIEDEFG:                     # @gx_install_CIEDEFG
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
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 128
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	72(%rdi), %rbx
	leaq	31520(%rbx), %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB30_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_4 Depth 2
	imulq	$2088, %rbp, %rax       # imm = 0x828
	leaq	31480(%rbx,%rax), %r13
	leaq	31352(%rbx,%rbp,8), %rdx
	movq	%r13, %rdi
	leaq	56(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	64(%rsp), %r14
	testq	%r14, %r14
	js	.LBB30_2
# BB#3:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movss	56(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	movss	60(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	leaq	31384(%rbx,%rbp,8), %r15
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	movq	%r12, %r13
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	%r14d, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB30_4:                               # %for.body.8
                                        #   Parent Loop BB30_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r12d, %xmm0
	mulss	52(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebp, %xmm1
	mulss	48(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	44(%rsp), %xmm1         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%rbx, %rdi
	callq	*(%r15)
	movss	%xmm0, (%r13)
	incq	%rbp
	decl	%r12d
	addq	$4, %r13
	cmpq	%rbp, %r14
	jge	.LBB30_4
# BB#5:                                 #   in Loop: Header=BB30_1 Depth=1
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
	jmp	.LBB30_6
	.align	16, 0x90
.LBB30_2:                               # %for.body.for.end_crit_edge
                                        #   in Loop: Header=BB30_1 Depth=1
	leaq	31384(%rbx,%rbp,8), %r15
.LBB30_6:                               # %for.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	(%r15), %rax
	cmpq	DecodeDEFG_default(,%rbp,8), %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%r13)
	incq	%rbp
	addq	$2088, %r12             # imm = 0x828
	cmpq	$4, %rbp
	jne	.LBB30_1
# BB#7:                                 # %for.end.33
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_install_cie_abc      # TAILCALL
.Lfunc_end30:
	.size	gx_install_CIEDEFG, .Lfunc_end30-gx_install_CIEDEFG
	.cfi_endproc

	.globl	gx_install_CIEDEF
	.align	16, 0x90
	.type	gx_install_CIEDEF,@function
gx_install_CIEDEF:                      # @gx_install_CIEDEF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 80
.Ltmp64:
	.cfi_offset %rbx, -48
.Ltmp65:
	.cfi_offset %r12, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	72(%rdi), %r12
	leaq	31456(%r12), %rdi
	leaq	31352(%r12), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	24(%rsp), %r15
	testq	%r15, %r15
	js	.LBB31_3
# BB#1:                                 # %for.body.8.lr.ph
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB31_2:                               # %for.body.8
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	12(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	8(%rsp), %xmm1          # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	4(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	*31376(%r12)
	movss	%xmm0, 31496(%r12,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r15
	jge	.LBB31_2
.LBB31_3:                               # %for.end
	movl	$def_identity, %eax
	cmpq	%rax, 31376(%r12)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 31456(%r12)
	leaq	33544(%r12), %rdi
	leaq	31360(%r12), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	24(%rsp), %r15
	testq	%r15, %r15
	js	.LBB31_6
# BB#4:                                 # %for.body.8.lr.ph.1
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB31_5:                               # %for.body.8.1
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	12(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	8(%rsp), %xmm1          # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	4(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	*31384(%r12)
	movss	%xmm0, 33584(%r12,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r15
	jge	.LBB31_5
.LBB31_6:                               # %for.end.1
	movl	$def_identity, %eax
	cmpq	%rax, 31384(%r12)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 33544(%r12)
	leaq	35632(%r12), %rdi
	leaq	31368(%r12), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	24(%rsp), %r15
	testq	%r15, %r15
	js	.LBB31_9
# BB#7:                                 # %for.body.8.lr.ph.2
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB31_8:                               # %for.body.8.2
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	12(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	8(%rsp), %xmm1          # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	4(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	*31392(%r12)
	movss	%xmm0, 35672(%r12,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r15
	jge	.LBB31_8
.LBB31_9:                               # %for.end.2
	movl	$def_identity, %eax
	cmpq	%rax, 31392(%r12)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 35632(%r12)
	movq	%r12, %rdi
	movq	%r14, %rsi
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_install_cie_abc      # TAILCALL
.Lfunc_end31:
	.size	gx_install_CIEDEF, .Lfunc_end31-gx_install_CIEDEF
	.cfi_endproc

	.globl	gx_install_CIEABC
	.align	16, 0x90
	.type	gx_install_CIEABC,@function
gx_install_CIEABC:                      # @gx_install_CIEABC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rdi
	jmp	gx_install_cie_abc      # TAILCALL
.Lfunc_end32:
	.size	gx_install_CIEABC, .Lfunc_end32-gx_install_CIEABC
	.cfi_endproc

	.globl	gx_install_CIEA
	.align	16, 0x90
	.type	gx_install_CIEA,@function
gx_install_CIEA:                        # @gx_install_CIEA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp74:
	.cfi_def_cfa_offset 80
.Ltmp75:
	.cfi_offset %rbx, -48
.Ltmp76:
	.cfi_offset %r12, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	72(%rdi), %r12
	leaq	6448(%r12), %rdi
	leaq	6416(%r12), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	24(%rsp), %r15
	testq	%r15, %r15
	js	.LBB33_3
# BB#1:                                 # %for.body.lr.ph
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB33_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	12(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	8(%rsp), %xmm1          # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	4(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	*6424(%r12)
	movss	%xmm0, 6488(%r12,%rbx,4)
	incq	%rbx
	decl	%ebp
	cmpq	%rbx, %r15
	jge	.LBB33_2
.LBB33_3:                               # %for.end
	movq	%r12, %rdi
	callq	gx_cie_load_common_cache
	movq	%r12, %rdi
	callq	gs_cie_a_complete
	movq	1008(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB33_6
# BB#4:                                 # %lor.lhs.false.i.i
	cmpq	$1, 24(%rbx)
	jg	.LBB33_6
# BB#5:                                 # %lor.lhs.false.4.i.i
	movq	32(%rbx), %rax
	cmpq	8(%r14), %rax
	je	.LBB33_12
.LBB33_6:                               # %if.then.i.i
	movq	8(%r14), %rdi
	movl	$st_joint_caches, %esi
	movl	$.L.str.6, %edx
	callq	*72(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB33_13
# BB#7:                                 # %do.body.14.i.i
	movq	$1, 24(%rcx)
	movq	8(%r14), %rdx
	movq	%rdx, 32(%rcx)
	movq	$rc_free_struct_only, 40(%rcx)
	movq	1008(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB33_9
# BB#8:                                 # %do.end.31.i.i
	decq	24(%rdx)
.LBB33_9:                               # %do.end.41.i.i
	movq	%rcx, 1008(%r14)
	cmpq	%rbx, %rcx
	je	.LBB33_11
# BB#10:                                # %if.then.44.i.i
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	%rcx, %rbx
	jmp	.LBB33_12
.LBB33_11:                              # %gx_unshare_cie_caches.exit.i
	testq	%rbx, %rbx
	je	.LBB33_13
.LBB33_12:                              # %if.end.i
	movl	$0, 20(%rbx)
	xorl	%eax, %eax
.LBB33_13:                              # %gs_cie_cs_complete.exit
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gx_install_CIEA, .Lfunc_end33-gx_install_CIEA
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4647697223260307456     # double 511
.LCPI34_1:
	.quad	4562146422526312448     # double 9.765625E-4
.LCPI34_3:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI34_2:
	.long	3212836864              # float -1
	.text
	.globl	gs_cie_a_complete
	.align	16, 0x90
	.type	gs_cie_a_complete,@function
gs_cie_a_complete:                      # @gs_cie_a_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 64
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
.Ltmp86:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	leaq	6448(%r15), %r14
	leaq	6432(%r15), %rsi
	movq	%r14, %rdi
	movq	%r14, %rdx
	callq	cie_cache_mult
	cmpl	$0, 6448(%r15)
	je	.LBB34_2
# BB#1:                                 # %do.end.i
	movl	$1, 6472(%r15)
	movl	$0, 6480(%r15)
	movl	$1065353216, 6476(%r15) # imm = 0x3F800000
	jmp	.LBB34_8
.LBB34_2:                               # %if.else.i
	movss	6488(%r15), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	movss	8532(%r15), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	divsd	.LCPI34_0(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movl	$1624, %ebx             # imm = 0x658
	.align	16, 0x90
.LBB34_3:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movss	-4(%r15,%rbx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI34_1(%rip), %xmm0
	jae	.LBB34_4
# BB#9:                                 # %for.cond.i.i
                                        #   in Loop: Header=BB34_3 Depth=1
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	16(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movss	(%r15,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI34_1(%rip), %xmm0
	jae	.LBB34_4
# BB#10:                                # %for.cond.i.i.1
                                        #   in Loop: Header=BB34_3 Depth=1
	addq	$2, %rbx
	leal	-1623(%rbx), %eax
	cmpl	$511, %eax              # imm = 0x1FF
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jb	.LBB34_3
# BB#5:                                 # %if.then.9.i
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	6456(%r15), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 6480(%r15)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	6464(%r15), %xmm0
	divsd	.LCPI34_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 6476(%r15)
	movl	$1, 6472(%r15)
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB34_8
	jp	.LBB34_8
# BB#6:                                 # %land.lhs.true.i
	addss	.LCPI34_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI34_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB34_8
# BB#7:                                 # %if.then.19.i
	movl	$1, (%r14)
	jmp	.LBB34_8
.LBB34_4:                               # %cache_is_linear.exit.thread.i
	movl	$0, 6472(%r15)
.LBB34_8:                               # %cache_set_linear.exit
	movq	%r15, %rdi
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gx_cie_common_complete  # TAILCALL
.Lfunc_end34:
	.size	gs_cie_a_complete, .Lfunc_end34-gs_cie_a_complete
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4647697223260307456     # double 511
.LCPI35_1:
	.quad	4562146422526312448     # double 9.765625E-4
.LCPI35_3:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI35_2:
	.long	3212836864              # float -1
.LCPI35_4:
	.long	0                       # float 0
	.text
	.globl	gx_cie_common_complete
	.align	16, 0x90
	.type	gx_cie_common_complete,@function
gx_cie_common_complete:                 # @gx_cie_common_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 112
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	176(%r14), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB35_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_4 Depth 2
	imulq	$2088, %rbx, %r13       # imm = 0x828
	cmpl	$0, 128(%r14,%r13)
	leaq	152(%r14,%r13), %rax
	je	.LBB35_3
# BB#2:                                 # %do.end.i
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	$1, (%rax)
	movq	$1065353216, 156(%r14,%r13) # imm = 0x3F800000
	jmp	.LBB35_9
	.align	16, 0x90
.LBB35_3:                               # %if.else.i
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	128(%r14,%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movss	168(%r14,%r13), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movss	2212(%r14,%r13), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	divsd	.LCPI35_0(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movl	$1, %r12d
	movq	%rbp, %r15
	.align	16, 0x90
.LBB35_4:                               # %for.body.i.i
                                        #   Parent Loop BB35_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movss	-4(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI35_1(%rip), %xmm0
	jae	.LBB35_5
# BB#11:                                # %for.cond.i.i
                                        #   in Loop: Header=BB35_4 Depth=2
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	40(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI35_1(%rip), %xmm0
	jae	.LBB35_5
# BB#12:                                # %for.cond.i.i.1
                                        #   in Loop: Header=BB35_4 Depth=2
	addl	$2, %r12d
	addq	$8, %r15
	cmpl	$511, %r12d             # imm = 0x1FF
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jb	.LBB35_4
# BB#6:                                 # %if.then.9.i
                                        #   in Loop: Header=BB35_1 Depth=1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	136(%r14,%r13), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 160(%r14,%r13)
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	144(%r14,%r13), %xmm0
	divsd	.LCPI35_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 156(%r14,%r13)
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$1, (%rax)
	ucomiss	.LCPI35_4, %xmm1
	jne	.LBB35_9
	jp	.LBB35_9
# BB#7:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB35_1 Depth=1
	addss	.LCPI35_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI35_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_9
# BB#8:                                 # %if.then.19.i
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	$1, (%rax)
	jmp	.LBB35_9
	.align	16, 0x90
.LBB35_5:                               # %cache_is_linear.exit.thread.i
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
.LBB35_9:                               # %cache_set_linear.exit
                                        #   in Loop: Header=BB35_1 Depth=1
	incq	%rbx
	addq	$2088, %rbp             # imm = 0x828
	cmpq	$3, %rbx
	jne	.LBB35_1
# BB#10:                                # %for.end
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gx_cie_common_complete, .Lfunc_end35-gx_cie_common_complete
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gs_cie_defg_complete
	.align	16, 0x90
	.type	gs_cie_defg_complete,@function
gs_cie_defg_complete:                   # @gs_cie_defg_complete
	.cfi_startproc
# BB#0:                                 # %entry
	movl	31452(%rdi), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	.LCPI36_0(%rip), %xmm0
	movss	31416(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	31420(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	decl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	xorl	%eax, %eax
	jmp	.LBB36_1
	.align	16, 0x90
.LBB36_5:                               # %cond.end.17.for.body_crit_edge.i
                                        #   in Loop: Header=BB36_1 Depth=1
	incq	%rax
	movss	31416(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
.LBB36_1:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	31520(%rdi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm2
	jae	.LBB36_4
# BB#2:                                 # %cond.false.i
                                        #   in Loop: Header=BB36_1 Depth=1
	ucomiss	31420(%rdi), %xmm3
	movapd	%xmm1, %xmm4
	jae	.LBB36_4
# BB#3:                                 # %cond.false.13.i
                                        #   in Loop: Header=BB36_1 Depth=1
	subss	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
.LBB36_4:                               # %cond.end.17.i
                                        #   in Loop: Header=BB36_1 Depth=1
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 31520(%rdi,%rax,4)
	cmpq	$511, %rax              # imm = 0x1FF
	jne	.LBB36_5
# BB#6:                                 # %gs_cie_defx_scale.exit
	movl	31456(%rdi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	.LCPI36_0(%rip), %xmm0
	movss	31424(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	31428(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	decl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	xorl	%eax, %eax
	jmp	.LBB36_7
	.align	16, 0x90
.LBB36_11:                              # %cond.end.17.for.body_crit_edge.i.1
                                        #   in Loop: Header=BB36_7 Depth=1
	incq	%rax
	movss	31424(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
.LBB36_7:                               # %for.body.i.1
                                        # =>This Inner Loop Header: Depth=1
	movss	33608(%rdi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm2
	jae	.LBB36_10
# BB#8:                                 # %cond.false.i.1
                                        #   in Loop: Header=BB36_7 Depth=1
	ucomiss	31428(%rdi), %xmm3
	movapd	%xmm1, %xmm4
	jae	.LBB36_10
# BB#9:                                 # %cond.false.13.i.1
                                        #   in Loop: Header=BB36_7 Depth=1
	subss	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
.LBB36_10:                              # %cond.end.17.i.1
                                        #   in Loop: Header=BB36_7 Depth=1
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 33608(%rdi,%rax,4)
	cmpq	$511, %rax              # imm = 0x1FF
	jne	.LBB36_11
# BB#12:                                # %gs_cie_defx_scale.exit.1
	movl	31460(%rdi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	.LCPI36_0(%rip), %xmm0
	movss	31432(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	31436(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	decl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	xorl	%eax, %eax
	jmp	.LBB36_13
	.align	16, 0x90
.LBB36_17:                              # %cond.end.17.for.body_crit_edge.i.2
                                        #   in Loop: Header=BB36_13 Depth=1
	incq	%rax
	movss	31432(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
.LBB36_13:                              # %for.body.i.2
                                        # =>This Inner Loop Header: Depth=1
	movss	35696(%rdi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm2
	jae	.LBB36_16
# BB#14:                                # %cond.false.i.2
                                        #   in Loop: Header=BB36_13 Depth=1
	ucomiss	31436(%rdi), %xmm3
	movapd	%xmm1, %xmm4
	jae	.LBB36_16
# BB#15:                                # %cond.false.13.i.2
                                        #   in Loop: Header=BB36_13 Depth=1
	subss	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
.LBB36_16:                              # %cond.end.17.i.2
                                        #   in Loop: Header=BB36_13 Depth=1
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 35696(%rdi,%rax,4)
	cmpq	$511, %rax              # imm = 0x1FF
	jne	.LBB36_17
# BB#18:                                # %gs_cie_defx_scale.exit.2
	movl	31464(%rdi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	.LCPI36_0(%rip), %xmm0
	movss	31440(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	31444(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	decl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	xorl	%eax, %eax
	jmp	.LBB36_19
	.align	16, 0x90
.LBB36_23:                              # %cond.end.17.for.body_crit_edge.i.3
                                        #   in Loop: Header=BB36_19 Depth=1
	incq	%rax
	movss	31440(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
.LBB36_19:                              # %for.body.i.3
                                        # =>This Inner Loop Header: Depth=1
	movss	37784(%rdi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm2
	jae	.LBB36_22
# BB#20:                                # %cond.false.i.3
                                        #   in Loop: Header=BB36_19 Depth=1
	ucomiss	31444(%rdi), %xmm3
	movapd	%xmm1, %xmm4
	jae	.LBB36_22
# BB#21:                                # %cond.false.13.i.3
                                        #   in Loop: Header=BB36_19 Depth=1
	subss	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
.LBB36_22:                              # %cond.end.17.i.3
                                        #   in Loop: Header=BB36_19 Depth=1
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 37784(%rdi,%rax,4)
	cmpq	$511, %rax              # imm = 0x1FF
	jne	.LBB36_23
# BB#24:                                # %gs_cie_defx_scale.exit.3
	jmp	gs_cie_abc_complete     # TAILCALL
.Lfunc_end36:
	.size	gs_cie_defg_complete, .Lfunc_end36-gs_cie_defg_complete
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gs_cie_def_complete
	.align	16, 0x90
	.type	gs_cie_def_complete,@function
gs_cie_def_complete:                    # @gs_cie_def_complete
	.cfi_startproc
# BB#0:                                 # %entry
	movl	31428(%rdi), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	.LCPI37_0(%rip), %xmm0
	movss	31400(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	31404(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	decl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	xorl	%eax, %eax
	jmp	.LBB37_1
	.align	16, 0x90
.LBB37_5:                               # %cond.end.17.for.body_crit_edge.i
                                        #   in Loop: Header=BB37_1 Depth=1
	incq	%rax
	movss	31400(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
.LBB37_1:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	31496(%rdi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm2
	jae	.LBB37_4
# BB#2:                                 # %cond.false.i
                                        #   in Loop: Header=BB37_1 Depth=1
	ucomiss	31404(%rdi), %xmm3
	movapd	%xmm1, %xmm4
	jae	.LBB37_4
# BB#3:                                 # %cond.false.13.i
                                        #   in Loop: Header=BB37_1 Depth=1
	subss	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
.LBB37_4:                               # %cond.end.17.i
                                        #   in Loop: Header=BB37_1 Depth=1
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 31496(%rdi,%rax,4)
	cmpq	$511, %rax              # imm = 0x1FF
	jne	.LBB37_5
# BB#6:                                 # %gs_cie_defx_scale.exit
	movl	31432(%rdi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	.LCPI37_0(%rip), %xmm0
	movss	31408(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	31412(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	decl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	xorl	%eax, %eax
	jmp	.LBB37_7
	.align	16, 0x90
.LBB37_11:                              # %cond.end.17.for.body_crit_edge.i.1
                                        #   in Loop: Header=BB37_7 Depth=1
	incq	%rax
	movss	31408(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
.LBB37_7:                               # %for.body.i.1
                                        # =>This Inner Loop Header: Depth=1
	movss	33584(%rdi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm2
	jae	.LBB37_10
# BB#8:                                 # %cond.false.i.1
                                        #   in Loop: Header=BB37_7 Depth=1
	ucomiss	31412(%rdi), %xmm3
	movapd	%xmm1, %xmm4
	jae	.LBB37_10
# BB#9:                                 # %cond.false.13.i.1
                                        #   in Loop: Header=BB37_7 Depth=1
	subss	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
.LBB37_10:                              # %cond.end.17.i.1
                                        #   in Loop: Header=BB37_7 Depth=1
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 33584(%rdi,%rax,4)
	cmpq	$511, %rax              # imm = 0x1FF
	jne	.LBB37_11
# BB#12:                                # %gs_cie_defx_scale.exit.1
	movl	31436(%rdi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	.LCPI37_0(%rip), %xmm0
	movss	31416(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	31420(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	decl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	xorl	%eax, %eax
	jmp	.LBB37_13
	.align	16, 0x90
.LBB37_17:                              # %cond.end.17.for.body_crit_edge.i.2
                                        #   in Loop: Header=BB37_13 Depth=1
	incq	%rax
	movss	31416(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
.LBB37_13:                              # %for.body.i.2
                                        # =>This Inner Loop Header: Depth=1
	movss	35672(%rdi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm2
	jae	.LBB37_16
# BB#14:                                # %cond.false.i.2
                                        #   in Loop: Header=BB37_13 Depth=1
	ucomiss	31420(%rdi), %xmm3
	movapd	%xmm1, %xmm4
	jae	.LBB37_16
# BB#15:                                # %cond.false.13.i.2
                                        #   in Loop: Header=BB37_13 Depth=1
	subss	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
.LBB37_16:                              # %cond.end.17.i.2
                                        #   in Loop: Header=BB37_13 Depth=1
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 35672(%rdi,%rax,4)
	cmpq	$511, %rax              # imm = 0x1FF
	jne	.LBB37_17
# BB#18:                                # %gs_cie_defx_scale.exit.2
	jmp	gs_cie_abc_complete     # TAILCALL
.Lfunc_end37:
	.size	gs_cie_def_complete, .Lfunc_end37-gs_cie_def_complete
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI38_0:
	.quad	4647697223260307456     # double 511
.LCPI38_1:
	.quad	4562146422526312448     # double 9.765625E-4
.LCPI38_3:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI38_2:
	.long	3212836864              # float -1
	.text
	.align	16, 0x90
	.type	cache3_set_linear,@function
cache3_set_linear:                      # @cache3_set_linear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 64
.Ltmp103:
	.cfi_offset %rbx, -24
.Ltmp104:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	cmpl	$0, (%r14)
	je	.LBB38_2
# BB#1:                                 # %do.end.i
	movl	$1, 24(%r14)
	movl	$0, 32(%r14)
	movl	$1065353216, 28(%r14)   # imm = 0x3F800000
	jmp	.LBB38_8
.LBB38_2:                               # %if.else.i
	movss	40(%r14), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movss	2084(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	divsd	.LCPI38_0(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movl	$12, %ebx
	.align	16, 0x90
.LBB38_3:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movss	-4(%r14,%rbx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI38_1(%rip), %xmm0
	jae	.LBB38_4
# BB#29:                                # %for.cond.i.i
                                        #   in Loop: Header=BB38_3 Depth=1
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	24(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movss	(%r14,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI38_1(%rip), %xmm0
	jae	.LBB38_4
# BB#30:                                # %for.cond.i.i.1
                                        #   in Loop: Header=BB38_3 Depth=1
	addq	$2, %rbx
	leal	-11(%rbx), %eax
	cmpl	$511, %eax              # imm = 0x1FF
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jb	.LBB38_3
# BB#5:                                 # %if.then.9.i
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	8(%r14), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 32(%r14)
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	16(%r14), %xmm0
	divsd	.LCPI38_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 28(%r14)
	movl	$1, 24(%r14)
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB38_8
	jp	.LBB38_8
# BB#6:                                 # %land.lhs.true.i
	addss	.LCPI38_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI38_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB38_8
# BB#7:                                 # %if.then.19.i
	movl	$1, (%r14)
	jmp	.LBB38_8
.LBB38_4:                               # %cache_is_linear.exit.thread.i
	movl	$0, 24(%r14)
.LBB38_8:                               # %cache_set_linear.exit
	cmpl	$0, 8272(%r14)
	je	.LBB38_10
# BB#9:                                 # %do.end.i.9
	movl	$1, 8296(%r14)
	movl	$0, 8304(%r14)
	movl	$1065353216, 8300(%r14) # imm = 0x3F800000
	jmp	.LBB38_16
.LBB38_10:                              # %if.else.i.16
	movss	8312(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movss	10356(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	divsd	.LCPI38_0(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movl	$2080, %ebx             # imm = 0x820
	.align	16, 0x90
.LBB38_11:                              # %for.body.i.i.28
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movss	-4(%r14,%rbx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI38_1(%rip), %xmm0
	jae	.LBB38_12
# BB#27:                                # %for.cond.i.i.18
                                        #   in Loop: Header=BB38_11 Depth=1
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	24(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movss	(%r14,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI38_1(%rip), %xmm0
	jae	.LBB38_12
# BB#28:                                # %for.cond.i.i.18.1
                                        #   in Loop: Header=BB38_11 Depth=1
	addq	$2, %rbx
	leal	-2079(%rbx), %eax
	cmpl	$511, %eax              # imm = 0x1FF
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jb	.LBB38_11
# BB#13:                                # %if.then.9.i.42
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	8280(%r14), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 8304(%r14)
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	8288(%r14), %xmm0
	divsd	.LCPI38_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8300(%r14)
	movl	$1, 8296(%r14)
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB38_16
	jp	.LBB38_16
# BB#14:                                # %land.lhs.true.i.47
	addss	.LCPI38_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI38_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB38_16
# BB#15:                                # %if.then.19.i.48
	movl	$1, 8272(%r14)
	jmp	.LBB38_16
.LBB38_12:                              # %cache_is_linear.exit.thread.i.30
	movl	$0, 8296(%r14)
.LBB38_16:                              # %cache_set_linear.exit49
	cmpl	$0, 16544(%r14)
	je	.LBB38_18
# BB#17:                                # %do.end.i.56
	movl	$1, 16568(%r14)
	movl	$0, 16576(%r14)
	movl	$1065353216, 16572(%r14) # imm = 0x3F800000
	jmp	.LBB38_24
.LBB38_18:                              # %if.else.i.63
	movss	16584(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movss	18628(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	divsd	.LCPI38_0(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movl	$4148, %ebx             # imm = 0x1034
	.align	16, 0x90
.LBB38_19:                              # %for.body.i.i.75
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movss	-4(%r14,%rbx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI38_1(%rip), %xmm0
	jae	.LBB38_20
# BB#25:                                # %for.cond.i.i.65
                                        #   in Loop: Header=BB38_19 Depth=1
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	24(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movss	(%r14,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	callq	fabs
	ucomisd	.LCPI38_1(%rip), %xmm0
	jae	.LBB38_20
# BB#26:                                # %for.cond.i.i.65.1
                                        #   in Loop: Header=BB38_19 Depth=1
	addq	$2, %rbx
	leal	-4147(%rbx), %eax
	cmpl	$511, %eax              # imm = 0x1FF
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jb	.LBB38_19
# BB#21:                                # %if.then.9.i.89
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	16552(%r14), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 16576(%r14)
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	16560(%r14), %xmm0
	divsd	.LCPI38_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16572(%r14)
	movl	$1, 16568(%r14)
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB38_24
	jp	.LBB38_24
# BB#22:                                # %land.lhs.true.i.94
	addss	.LCPI38_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI38_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB38_24
# BB#23:                                # %if.then.19.i.95
	movl	$1, 16544(%r14)
	jmp	.LBB38_24
.LBB38_20:                              # %cache_is_linear.exit.thread.i.77
	movl	$0, 16568(%r14)
.LBB38_24:                              # %cache_set_linear.exit96
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end38:
	.size	cache3_set_linear, .Lfunc_end38-cache3_set_linear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI39_0:
	.quad	4647697223260307456     # double 511
.LCPI39_2:
	.quad	4562254508917369340     # double 0.001
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI39_1:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI39_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	cie_cache_mult,@function
cie_cache_mult:                         # @cie_cache_mult
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp109:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp111:
	.cfi_def_cfa_offset 160
.Ltmp112:
	.cfi_offset %rbx, -56
.Ltmp113:
	.cfi_offset %r12, -48
.Ltmp114:
	.cfi_offset %r13, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	8(%rsi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movsd	8(%rdx), %xmm3          # xmm3 = mem[0],zero
	cvtsd2ss	%xmm3, %xmm4
	movss	%xmm4, 2088(%r13)
	movsd	16(%rdx), %xmm4         # xmm4 = mem[0],zero
	cvtsd2ss	%xmm4, %xmm5
	movss	%xmm5, 2092(%r13)
	movsd	.LCPI39_0(%rip), %xmm5  # xmm5 = mem[0],zero
	divsd	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm5, %xmm3
	movss	%xmm3, 2096(%r13)
	leaq	2124(%r13), %rcx
	leaq	2084(%rdx), %rsi
	xorl	%r8d, %r8d
	cmpq	%rsi, %rcx
	ja	.LBB39_2
# BB#1:                                 # %entry
	leaq	8264(%r13), %rcx
	leaq	40(%rdx), %rsi
	cmpq	%rcx, %rsi
	movl	$0, %edi
	jbe	.LBB39_4
.LBB39_2:                               # %vector.ph
	movaps	%xmm0, %xmm9
	shufps	$0, %xmm9, %xmm9        # xmm9 = xmm9[0,0,0,0]
	movaps	%xmm1, %xmm10
	shufps	$0, %xmm10, %xmm10      # xmm10 = xmm10[0,0,0,0]
	movaps	%xmm2, %xmm5
	shufps	$0, %xmm5, %xmm5        # xmm5 = xmm5[0,0,0,0]
	leaq	2132(%r13), %rcx
	xorl	%esi, %esi
	movl	$1, %eax
	movd	%rax, %xmm6
	pslldq	$8, %xmm6               # xmm6 = zero,zero,zero,zero,zero,zero,zero,zero,xmm6[0,1,2,3,4,5,6,7]
	movdqa	.LCPI39_1(%rip), %xmm8  # xmm8 = [2,3]
	movl	$512, %r8d              # imm = 0x200
	.align	16, 0x90
.LBB39_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rsi, %xmm7
	pshufd	$68, %xmm7, %xmm7       # xmm7 = xmm7[0,1,0,1]
	movdqa	%xmm7, %xmm3
	paddq	%xmm6, %xmm3
	paddq	%xmm8, %xmm7
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rdi
	movd	%xmm7, %rbp
	pshufd	$78, %xmm7, %xmm3       # xmm3 = xmm7[2,3,0,1]
	movd	%xmm3, %rax
	movups	40(%rdx,%rsi,4), %xmm7
	movaps	%xmm9, %xmm4
	mulps	%xmm7, %xmm4
	leaq	(%rdi,%rdi,2), %rbx
	leaq	(%rbp,%rbp,2), %rbp
	leaq	(%rax,%rax,2), %rdi
	movss	%xmm4, -8(%rcx)
	movaps	%xmm4, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	movss	%xmm3, 2124(%r13,%rbx,4)
	movaps	%xmm4, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movss	%xmm3, 2124(%r13,%rbp,4)
	shufps	$231, %xmm4, %xmm4      # xmm4 = xmm4[3,1,2,3]
	movss	%xmm4, 2124(%r13,%rdi,4)
	movaps	%xmm10, %xmm3
	mulps	%xmm7, %xmm3
	movss	%xmm3, -4(%rcx)
	movaps	%xmm3, %xmm4
	shufps	$229, %xmm4, %xmm4      # xmm4 = xmm4[1,1,2,3]
	movss	%xmm4, 2128(%r13,%rbx,4)
	movaps	%xmm3, %xmm4
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	movss	%xmm4, 2128(%r13,%rbp,4)
	shufps	$231, %xmm3, %xmm3      # xmm3 = xmm3[3,1,2,3]
	movss	%xmm3, 2128(%r13,%rdi,4)
	mulps	%xmm5, %xmm7
	movss	%xmm7, (%rcx)
	movaps	%xmm7, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	movss	%xmm3, 2132(%r13,%rbx,4)
	movaps	%xmm7, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movss	%xmm3, 2132(%r13,%rbp,4)
	shufps	$231, %xmm7, %xmm7      # xmm7 = xmm7[3,1,2,3]
	movss	%xmm7, 2132(%r13,%rdi,4)
	addq	$4, %rsi
	addq	$48, %rcx
	movb	$1, %dil
	cmpq	$512, %rsi              # imm = 0x200
	jne	.LBB39_3
.LBB39_4:                               # %middle.block
	testb	%dil, %dil
	jne	.LBB39_7
# BB#5:                                 # %for.body.preheader.split.split
	leaq	(%r8,%r8,2), %rax
	leaq	2144(%r13,%rax,4), %rcx
	.align	16, 0x90
.LBB39_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	40(%rdx,%r8,4), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, -20(%rcx)
	movaps	%xmm1, %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, -16(%rcx)
	mulss	%xmm2, %xmm3
	movss	%xmm3, -12(%rcx)
	movss	44(%rdx,%r8,4), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, -8(%rcx)
	movaps	%xmm1, %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, -4(%rcx)
	mulss	%xmm2, %xmm3
	movss	%xmm3, (%rcx)
	addq	$2, %r8
	addq	$24, %rcx
	cmpq	$512, %r8               # imm = 0x200
	jne	.LBB39_6
.LBB39_7:                               # %for.end
	movss	2088(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movss	2092(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rsp)           # 4-byte Spill
	movss	2124(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2128(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, 64(%rsp)         # 16-byte Spill
	movss	2132(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, 48(%rsp)         # 16-byte Spill
	leaq	2136(%r13), %rbp
	movl	$512, %eax              # imm = 0x200
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$-1, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$-1, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$512, %ebx              # imm = 0x200
	movl	$-1, %r15d
	movl	$512, %r12d             # imm = 0x200
	movss	%xmm0, 100(%rsp)        # 4-byte Spill
	jmp	.LBB39_8
	.align	16, 0x90
.LBB39_21:                              # %check_interpolation_required.exit48.i.for.body.22.i_crit_edge
                                        #   in Loop: Header=BB39_8 Depth=1
	incq	%r14
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addq	$12, %rbp
	movaps	64(%rsp), %xmm1         # 16-byte Reload
	movaps	%xmm1, 48(%rsp)         # 16-byte Spill
	movaps	80(%rsp), %xmm1         # 16-byte Reload
	movaps	%xmm1, 64(%rsp)         # 16-byte Spill
.LBB39_8:                               # %for.body.22.i
                                        # =>This Inner Loop Header: Depth=1
	movss	100(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movss	%xmm0, 100(%rsp)        # 4-byte Spill
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movss	100(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ja	.LBB39_10
# BB#9:                                 # %for.body.22.i
                                        #   in Loop: Header=BB39_8 Depth=1
	movss	100(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB39_10:                              # %for.body.22.i
                                        #   in Loop: Header=BB39_8 Depth=1
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	mulsd	.LCPI39_2(%rip), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB39_12
# BB#11:                                # %if.then.i.i
                                        #   in Loop: Header=BB39_8 Depth=1
	movslq	%r12d, %r12
	leal	-1(%r14), %eax
	cmpq	%r14, %r12
	cmovgel	%eax, %r12d
	movslq	%r15d, %r15
	cmpq	%r14, %r15
	cmovll	%r14d, %r15d
.LBB39_12:                              # %check_interpolation_required.exit.i
                                        #   in Loop: Header=BB39_8 Depth=1
	movaps	64(%rsp), %xmm1         # 16-byte Reload
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, 80(%rsp)         # 16-byte Spill
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movaps	64(%rsp), %xmm2         # 16-byte Reload
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movaps	%xmm2, %xmm0
	unpcklps	80(%rsp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	cvtps2pd	%xmm0, %xmm0
	andpd	.LCPI39_3(%rip), %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	ucomisd	%xmm0, %xmm1
	ja	.LBB39_14
# BB#13:                                # %check_interpolation_required.exit.i
                                        #   in Loop: Header=BB39_8 Depth=1
	movaps	80(%rsp), %xmm2         # 16-byte Reload
.LBB39_14:                              # %check_interpolation_required.exit.i
                                        #   in Loop: Header=BB39_8 Depth=1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	callq	fabs
	mulsd	.LCPI39_2(%rip), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB39_16
# BB#15:                                # %if.then.i.17.i
                                        #   in Loop: Header=BB39_8 Depth=1
	movslq	%ebx, %rbx
	leal	-1(%r14), %eax
	cmpq	%r14, %rbx
	cmovgel	%eax, %ebx
	movq	8(%rsp), %rax           # 8-byte Reload
	cltq
	cmpq	%r14, %rax
	cmovll	%r14d, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB39_16:                              # %check_interpolation_required.exit24.i
                                        #   in Loop: Header=BB39_8 Depth=1
	movaps	48(%rsp), %xmm1         # 16-byte Reload
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, 64(%rsp)         # 16-byte Spill
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movaps	48(%rsp), %xmm2         # 16-byte Reload
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movaps	%xmm2, %xmm0
	unpcklps	64(%rsp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	cvtps2pd	%xmm0, %xmm0
	andpd	.LCPI39_3(%rip), %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	ucomisd	%xmm0, %xmm1
	ja	.LBB39_18
# BB#17:                                # %check_interpolation_required.exit24.i
                                        #   in Loop: Header=BB39_8 Depth=1
	movaps	64(%rsp), %xmm2         # 16-byte Reload
.LBB39_18:                              # %check_interpolation_required.exit24.i
                                        #   in Loop: Header=BB39_8 Depth=1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	callq	fabs
	mulsd	.LCPI39_2(%rip), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB39_20
# BB#19:                                # %if.then.i.41.i
                                        #   in Loop: Header=BB39_8 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movslq	%ecx, %rcx
	leal	-1(%r14), %eax
	cmpq	%r14, %rcx
	cmovgel	%eax, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	cltq
	cmpq	%r14, %rax
	cmovll	%r14d, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB39_20:                              # %check_interpolation_required.exit48.i
                                        #   in Loop: Header=BB39_8 Depth=1
	cmpq	$511, %r14              # imm = 0x1FF
	jne	.LBB39_21
# BB#22:                                # %cie_cache_set_interpolation.exit
	movss	(%rsp), %xmm0           # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r12d, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	4(%rsp), %xmm2          # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm1
	movss	%xmm1, 2100(%r13)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r15d, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 2104(%r13)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebx, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 2108(%r13)
	movq	8(%rsp), %rax           # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 2112(%r13)
	movq	16(%rsp), %rax          # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 2116(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 2120(%r13)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	cie_cache_mult, .Lfunc_end39-cie_cache_mult
	.cfi_endproc

	.globl	gs_setcolorrendering
	.align	16, 0x90
	.type	gs_setcolorrendering,@function
gs_setcolorrendering:                   # @gs_setcolorrendering
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp122:
	.cfi_def_cfa_offset 48
.Ltmp123:
	.cfi_offset %rbx, -40
.Ltmp124:
	.cfi_offset %r14, -32
.Ltmp125:
	.cfi_offset %r15, -24
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%r15, %rdi
	callq	gs_cie_render_complete
	movq	400(%r14), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	movl	$0, %ebp
	je	.LBB40_11
# BB#1:                                 # %land.lhs.true
	movq	32(%r15), %rcx
	cmpq	32(%rbx), %rcx
	je	.LBB40_30
# BB#2:                                 # %land.lhs.true.7
	leaq	48(%r15), %rdi
	leaq	48(%rbx), %rsi
	movl	$12, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB40_4
# BB#3:
	xorl	%ebp, %ebp
	jmp	.LBB40_11
.LBB40_4:                               # %land.lhs.true.11
	leaq	60(%r15), %rdi
	leaq	60(%rbx), %rsi
	movl	$12, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB40_6
# BB#5:
	xorl	%ebp, %ebp
	jmp	.LBB40_11
.LBB40_6:                               # %land.lhs.true.17
	leaq	72(%r15), %rdi
	leaq	72(%rbx), %rsi
	movl	$40, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB40_8
# BB#7:
	xorl	%ebp, %ebp
	jmp	.LBB40_11
.LBB40_8:                               # %land.lhs.true.21
	leaq	112(%r15), %rdi
	leaq	112(%rbx), %rsi
	movl	$24, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB40_10
# BB#9:
	xorl	%ebp, %ebp
	jmp	.LBB40_11
.LBB40_10:                              # %land.rhs
	leaq	136(%r15), %rdi
	leaq	136(%rbx), %rsi
	movl	$40, %edx
	callq	memcmp
	testl	%eax, %eax
	sete	%bpl
.LBB40_11:                              # %land.end
	cmpq	%r15, %rbx
	je	.LBB40_18
# BB#12:                                # %do.body.31
	testq	%r15, %r15
	je	.LBB40_14
# BB#13:                                # %do.body.34
	incq	8(%r15)
.LBB40_14:                              # %do.body.41
	testq	%rbx, %rbx
	je	.LBB40_17
# BB#15:                                # %do.end.48
	decq	8(%rbx)
	jne	.LBB40_17
# BB#16:                                # %do.end.62
	movq	16(%rbx), %rdi
	movl	$.L.str.5, %edx
	movq	%rbx, %rsi
	callq	*24(%rbx)
.LBB40_17:                              # %do.end.79
	movq	%r15, 400(%r14)
.LBB40_18:                              # %do.end.83
	xorl	%eax, %eax
	testb	%bpl, %bpl
	jne	.LBB40_29
# BB#19:                                # %if.then.85
	movq	1008(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_22
# BB#20:                                # %lor.lhs.false.i.i
	cmpq	$1, 24(%rbx)
	jg	.LBB40_22
# BB#21:                                # %lor.lhs.false.4.i.i
	movq	32(%rbx), %rax
	cmpq	8(%r14), %rax
	je	.LBB40_28
.LBB40_22:                              # %if.then.i.i
	movq	8(%r14), %rdi
	movl	$st_joint_caches, %esi
	movl	$.L.str.6, %edx
	callq	*72(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB40_29
# BB#23:                                # %do.body.14.i.i
	movq	$1, 24(%rcx)
	movq	8(%r14), %rdx
	movq	%rdx, 32(%rcx)
	movq	$rc_free_struct_only, 40(%rcx)
	movq	1008(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB40_25
# BB#24:                                # %do.end.31.i.i
	decq	24(%rdx)
.LBB40_25:                              # %do.end.41.i.i
	movq	%rcx, 1008(%r14)
	cmpq	%rbx, %rcx
	je	.LBB40_27
# BB#26:                                # %if.then.44.i.i
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	%rcx, %rbx
	jmp	.LBB40_28
.LBB40_27:                              # %gx_unshare_cie_caches.exit.i
	testq	%rbx, %rbx
	je	.LBB40_29
.LBB40_28:                              # %if.end.i
	movl	$0, 20(%rbx)
	xorl	%eax, %eax
.LBB40_29:                              # %if.end.87
	movq	1760(%r14), %rcx
	movq	$gx_dc_type_data_none, (%rcx)
.LBB40_30:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gs_setcolorrendering, .Lfunc_end40-gs_setcolorrendering
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI41_0:
	.long	1149239296              # float 1024
.LCPI41_1:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI41_2:
	.quad	4535125924542218256     # double 1.526252e-05
	.quad	4535125924542218256     # double 1.526252e-05
.LCPI41_3:
	.quad	4674734214187319296     # double 3.276000e+04
	.quad	4674734214187319296     # double 3.276000e+04
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI41_4:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI41_5:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gs_cie_render_complete
	.align	16, 0x90
	.type	gs_cie_render_complete,@function
gs_cie_render_complete:                 # @gs_cie_render_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp128:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp130:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp131:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp133:
	.cfi_def_cfa_offset 96
.Ltmp134:
	.cfi_offset %rbx, -56
.Ltmp135:
	.cfi_offset %r12, -48
.Ltmp136:
	.cfi_offset %r13, -40
.Ltmp137:
	.cfi_offset %r14, -32
.Ltmp138:
	.cfi_offset %r15, -24
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$2, (%rbx)
	ja	.LBB41_39
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	gs_cie_render_sample
	leaq	464(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	296(%rbx), %rax
	movq	%rax, 496(%rbx)
	movups	264(%rbx), %xmm0
	movdqu	280(%rbx), %xmm1
	movdqu	%xmm1, 480(%rbx)
	movups	%xmm0, 464(%rbx)
	leaq	628(%rbx), %r14
	leaq	25468(%rbx), %r10
	leaq	25464(%rbx), %r8
	leaq	25472(%rbx), %r12
	leaq	27556(%rbx), %r11
	leaq	27554(%rbx), %rcx
	xorl	%r13d, %r13d
	xorps	%xmm0, %xmm0
	movsd	.LCPI41_4(%rip), %xmm8  # xmm8 = mem[0],zero
	movsd	.LCPI41_5(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	.LCPI41_2(%rip), %xmm3  # xmm3 = [1.526252e-05,1.526252e-05]
	movapd	.LCPI41_3(%rip), %xmm4  # xmm4 = [3.276000e+04,3.276000e+04]
	movss	.LCPI41_0(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	xorl	%edx, %edx
	.align	16, 0x90
.LBB41_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_3 Depth 2
                                        #     Child Loop BB41_11 Depth 2
                                        #     Child Loop BB41_35 Depth 2
                                        #     Child Loop BB41_19 Depth 2
                                        #     Child Loop BB41_29 Depth 2
                                        #     Child Loop BB41_32 Depth 2
	imulq	$4176, %rdx, %r9        # imm = 0x1050
	leaq	27552(%rbx,%r9), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	28574(%rbx,%r9), %rax
	leaq	25464(%rbx,%r9), %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	leaq	27508(%rbx,%r9), %rbp
	movl	$512, %esi              # imm = 0x200
	movq	%r14, %rdi
	.align	16, 0x90
.LBB41_3:                               # %for.body.i
                                        #   Parent Loop BB41_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rdi), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movss	240(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm7
	ja	.LBB41_5
# BB#4:                                 # %if.else.i
                                        #   in Loop: Header=BB41_3 Depth=2
	movss	244(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	ucomiss	%xmm7, %xmm6
	jbe	.LBB41_6
.LBB41_5:                               # %if.then.7.i
                                        #   in Loop: Header=BB41_3 Depth=2
	movss	%xmm7, -4(%rdi)
.LBB41_6:                               # %if.end.12.i
                                        #   in Loop: Header=BB41_3 Depth=2
	movss	(%rdi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	movss	240(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm7
	ja	.LBB41_8
# BB#7:                                 # %if.else.i.1
                                        #   in Loop: Header=BB41_3 Depth=2
	movss	244(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	ucomiss	%xmm7, %xmm6
	jbe	.LBB41_9
.LBB41_8:                               # %if.then.i.1
                                        #   in Loop: Header=BB41_3 Depth=2
	movss	%xmm7, (%rdi)
.LBB41_9:                               # %if.end.12.i.1
                                        #   in Loop: Header=BB41_3 Depth=2
	addq	$8, %rdi
	addq	$-2, %rsi
	jne	.LBB41_3
# BB#10:                                # %cie_cache_restrict.exit
                                        #   in Loop: Header=BB41_2 Depth=1
	movl	$512, %esi              # imm = 0x200
	movq	%r10, %rdi
	.align	16, 0x90
.LBB41_11:                              # %for.body.i.85
                                        #   Parent Loop BB41_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%rdi), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movss	328(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm7
	ja	.LBB41_13
# BB#12:                                # %if.else.i.88
                                        #   in Loop: Header=BB41_11 Depth=2
	movss	332(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	ucomiss	%xmm7, %xmm6
	jbe	.LBB41_14
.LBB41_13:                              # %if.then.7.i.89
                                        #   in Loop: Header=BB41_11 Depth=2
	movss	%xmm7, -4(%rdi)
.LBB41_14:                              # %if.end.12.i.92
                                        #   in Loop: Header=BB41_11 Depth=2
	movss	(%rdi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	movss	328(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm7
	ja	.LBB41_16
# BB#15:                                # %if.else.i.88.1
                                        #   in Loop: Header=BB41_11 Depth=2
	movss	332(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	ucomiss	%xmm7, %xmm6
	jbe	.LBB41_17
.LBB41_16:                              # %if.then.i.86.1
                                        #   in Loop: Header=BB41_11 Depth=2
	movss	%xmm7, (%rdi)
.LBB41_17:                              # %if.end.12.i.92.1
                                        #   in Loop: Header=BB41_11 Depth=2
	addq	$8, %rdi
	addq	$-2, %rsi
	jne	.LBB41_11
# BB#18:                                # %cie_cache_restrict.exit93
                                        #   in Loop: Header=BB41_2 Depth=1
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	25424(%rbx,%r9), %r15
	cmpq	$0, 376(%rbx)
	movl	$0, %esi
	je	.LBB41_19
# BB#34:                                # %if.else
                                        #   in Loop: Header=BB41_2 Depth=1
	movl	356(%rbx,%rdx,4), %esi
	leal	-1(%rsi), %eax
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%eax, %xmm6
	movss	332(%rbx,%rdx,8), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movss	328(%rbx,%rdx,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	subss	%xmm7, %xmm1
	divss	%xmm1, %xmm6
	shll	$10, %esi
	leal	-1(%rsi), %ecx
	movss	25464(%rbx,%r9), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm7, %xmm1
	mulss	%xmm6, %xmm1
	mulss	%xmm5, %xmm1
	cvttss2si	%xmm1, %eax
	testl	%eax, %eax
	movl	%ecx, %ebp
	cmovsl	%r13d, %ebp
	cmpl	%esi, %eax
	cmovbl	%eax, %ebp
	movl	%ebp, 27552(%rbx,%r9)
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB41_35:                              # %cond.end.54.for.body.36_crit_edge
                                        #   Parent Loop BB41_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r10,%rbp,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	328(%rbx,%rdx,8), %xmm1
	mulss	%xmm6, %xmm1
	mulss	%xmm5, %xmm1
	cvttss2si	%xmm1, %eax
	testl	%eax, %eax
	movl	%ecx, %edi
	cmovsl	%r13d, %edi
	cmpl	%esi, %eax
	cmovbl	%eax, %edi
	movl	%edi, 2088(%r10,%rbp,4)
	incq	%rbp
	cmpq	$511, %rbp              # imm = 0x1FF
	jne	.LBB41_35
# BB#36:                                # %for.end
                                        #   in Loop: Header=BB41_2 Depth=1
	movq	32(%r15), %rax
	movq	%rax, 27544(%rbx,%r9)
	movdqu	(%r15), %xmm1
	movups	16(%r15), %xmm6
	movups	%xmm6, 27528(%rbx,%r9)
	movdqu	%xmm1, 27512(%rbx,%r9)
	movl	$0, 27512(%rbx,%r9)
	movq	32(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB41_37
	.align	16, 0x90
.LBB41_19:                              # %for.body.i.97
                                        #   Parent Loop BB41_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-4(%r10,%rsi,4), %xmm6  # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm0
	jbe	.LBB41_21
# BB#20:                                # %if.then.i.98
                                        #   in Loop: Header=BB41_19 Depth=2
	movl	$0, -4(%r10,%rsi,4)
	jmp	.LBB41_23
	.align	16, 0x90
.LBB41_21:                              # %if.else.i.100
                                        #   in Loop: Header=BB41_19 Depth=2
	ucomiss	.LCPI41_1(%rip), %xmm6
	jbe	.LBB41_23
# BB#22:                                # %if.then.7.i.101
                                        #   in Loop: Header=BB41_19 Depth=2
	movl	$1065353216, -4(%r10,%rsi,4) # imm = 0x3F800000
.LBB41_23:                              # %if.end.12.i.104
                                        #   in Loop: Header=BB41_19 Depth=2
	movss	(%r10,%rsi,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm0
	jbe	.LBB41_24
# BB#40:                                # %if.then.i.98.1
                                        #   in Loop: Header=BB41_19 Depth=2
	movl	$0, (%r10,%rsi,4)
	jmp	.LBB41_41
	.align	16, 0x90
.LBB41_24:                              # %if.else.i.100.1
                                        #   in Loop: Header=BB41_19 Depth=2
	ucomiss	.LCPI41_1(%rip), %xmm6
	jbe	.LBB41_41
# BB#25:                                # %if.then.7.i.101.1
                                        #   in Loop: Header=BB41_19 Depth=2
	movl	$1065353216, (%r10,%rsi,4) # imm = 0x3F800000
.LBB41_41:                              # %if.end.12.i.104.1
                                        #   in Loop: Header=BB41_19 Depth=2
	addq	$2, %rsi
	cmpq	$512, %rsi              # imm = 0x200
	jne	.LBB41_19
# BB#26:                                # %cie_cache_restrict.exit105
                                        #   in Loop: Header=BB41_2 Depth=1
	movq	%r12, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	cmpq	%rbp, 24(%rsp)          # 8-byte Folded Reload
	ja	.LBB41_27
# BB#28:                                # %cie_cache_restrict.exit105
                                        #   in Loop: Header=BB41_2 Depth=1
	movq	%r8, %rcx
	cmpq	%rax, 16(%rsp)          # 8-byte Folded Reload
	movl	$512, %esi              # imm = 0x200
	movq	%r11, %rbp
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	$0, %r8d
	jbe	.LBB41_30
	jmp	.LBB41_29
.LBB41_27:                              #   in Loop: Header=BB41_2 Depth=1
	movq	%r8, %rcx
	movl	$512, %esi              # imm = 0x200
	movq	%r11, %rbp
	movq	8(%rsp), %rdi           # 8-byte Reload
	.align	16, 0x90
.LBB41_29:                              # %vector.body
                                        #   Parent Loop BB41_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cvtps2pd	-8(%rdi), %xmm6
	cvtps2pd	(%rdi), %xmm7
	addpd	%xmm3, %xmm6
	addpd	%xmm3, %xmm7
	mulpd	%xmm4, %xmm6
	mulpd	%xmm4, %xmm7
	cvttsd2si	%xmm6, %rax
	movd	%rax, %xmm1
	shufpd	$1, %xmm6, %xmm6        # xmm6 = xmm6[1,0]
	cvttsd2si	%xmm6, %rax
	movd	%rax, %xmm6
	punpcklqdq	%xmm6, %xmm1    # xmm1 = xmm1[0],xmm6[0]
	cvttsd2si	%xmm7, %rax
	movd	%rax, %xmm6
	shufpd	$1, %xmm7, %xmm7        # xmm7 = xmm7[1,0]
	cvttsd2si	%xmm7, %rax
	movd	%rax, %xmm7
	punpcklqdq	%xmm7, %xmm6    # xmm6 = xmm6[0],xmm7[0]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	movd	%xmm1, -4(%rbp)
	pshufd	$232, %xmm6, %xmm1      # xmm1 = xmm6[0,2,2,3]
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	movd	%xmm1, (%rbp)
	addq	$16, %rdi
	addq	$8, %rbp
	addq	$-4, %rsi
	movb	$1, %r8b
	movl	$512, %r12d             # imm = 0x200
	jne	.LBB41_29
.LBB41_30:                              # %middle.block
                                        #   in Loop: Header=BB41_2 Depth=1
	leaq	27512(%rbx,%r9), %r9
	testb	%r8b, %r8b
	movq	%rcx, %r8
	movq	32(%rsp), %rcx          # 8-byte Reload
	jne	.LBB41_33
# BB#31:                                # %for.body.i.111.preheader.split.split
                                        #   in Loop: Header=BB41_2 Depth=1
	leaq	(%r8,%r12,4), %rsi
	leaq	(%rcx,%r12,2), %rdi
	movl	$512, %ebp              # imm = 0x200
	subq	%r12, %rbp
	.align	16, 0x90
.LBB41_32:                              # %for.body.i.111
                                        #   Parent Loop BB41_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm8, %xmm1
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, -2(%rdi)
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm8, %xmm1
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, (%rdi)
	addq	$8, %rsi
	addq	$4, %rdi
	addq	$-2, %rbp
	jne	.LBB41_32
.LBB41_33:                              # %gs_cie_cache_to_fracs.exit
                                        #   in Loop: Header=BB41_2 Depth=1
	movq	32(%r15), %rax
	movq	%rax, 32(%r9)
	movdqu	(%r15), %xmm1
	movups	16(%r15), %xmm6
	movups	%xmm6, 16(%r9)
	movdqu	%xmm1, (%r9)
	movl	$0, (%r9)
	movq	8(%rsp), %r12           # 8-byte Reload
.LBB41_37:                              # %if.end.69
                                        #   in Loop: Header=BB41_2 Depth=1
	incq	%rdx
	addq	$8272, %r14             # imm = 0x2050
	addq	$4176, %r10             # imm = 0x1050
	addq	$4176, %r12             # imm = 0x1050
	addq	$4176, %r11             # imm = 0x1050
	addq	$4176, %r8              # imm = 0x1050
	addq	$4176, %rcx             # imm = 0x1050
	cmpq	$3, %rdx
	jne	.LBB41_2
# BB#38:                                # %for.end.72
	leaq	584(%rbx), %rdi
	movsd	25440(%rbx), %xmm0      # xmm0 = mem[0],zero
	movss	464(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 464(%rbx)
	leaq	476(%rbx), %r14
	movss	476(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 476(%rbx)
	leaq	488(%rbx), %r15
	movss	488(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 488(%rbx)
	mulsd	25432(%rbx), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 504(%rbx)
	movsd	29616(%rbx), %xmm0      # xmm0 = mem[0],zero
	movss	468(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 468(%rbx)
	movss	480(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 480(%rbx)
	movss	492(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 492(%rbx)
	mulsd	29608(%rbx), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 508(%rbx)
	movsd	33792(%rbx), %xmm0      # xmm0 = mem[0],zero
	movss	472(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 472(%rbx)
	movss	484(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 484(%rbx)
	movss	496(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 496(%rbx)
	mulsd	33784(%rbx), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 512(%rbx)
	movl	$0, 500(%rbx)
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%rdi, %rdx
	callq	cie_cache_mult
	leaq	8856(%rbx), %rdi
	movq	%r14, %rsi
	movq	%rdi, %rdx
	callq	cie_cache_mult
	leaq	17128(%rbx), %rdi
	movq	%r15, %rsi
	movq	%rdi, %rdx
	callq	cie_cache_mult
	movss	2684(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2688(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10956(%rbx), %xmm0
	maxss	10960(%rbx), %xmm1
	minss	19228(%rbx), %xmm0
	maxss	19232(%rbx), %xmm1
	movss	%xmm0, 25400(%rbx)
	movss	%xmm1, 25404(%rbx)
	movss	2692(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2696(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10964(%rbx), %xmm0
	maxss	10968(%rbx), %xmm1
	minss	19236(%rbx), %xmm0
	maxss	19240(%rbx), %xmm1
	movss	%xmm0, 25408(%rbx)
	movss	%xmm1, 25412(%rbx)
	movss	2700(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2704(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10972(%rbx), %xmm0
	maxss	10976(%rbx), %xmm1
	minss	19244(%rbx), %xmm0
	maxss	19248(%rbx), %xmm1
	movss	%xmm0, 25416(%rbx)
	movss	%xmm1, 25420(%rbx)
	movl	$3, (%rbx)
.LBB41_39:                              # %cleanup
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gs_cie_render_complete, .Lfunc_end41-gs_cie_render_complete
	.cfi_endproc

	.globl	gs_currentcolorrendering
	.align	16, 0x90
	.type	gs_currentcolorrendering,@function
gs_currentcolorrendering:               # @gs_currentcolorrendering
	.cfi_startproc
# BB#0:                                 # %entry
	movq	400(%rdi), %rax
	retq
.Lfunc_end42:
	.size	gs_currentcolorrendering, .Lfunc_end42-gs_currentcolorrendering
	.cfi_endproc

	.globl	gx_unshare_cie_caches
	.align	16, 0x90
	.type	gx_unshare_cie_caches,@function
gx_unshare_cie_caches:                  # @gx_unshare_cie_caches
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp142:
	.cfi_def_cfa_offset 32
.Ltmp143:
	.cfi_offset %rbx, -24
.Ltmp144:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	1008(%rbx), %r14
	testq	%r14, %r14
	je	.LBB43_4
# BB#1:                                 # %lor.lhs.false
	cmpq	$1, 24(%r14)
	jg	.LBB43_4
# BB#2:                                 # %lor.lhs.false.4
	movq	32(%r14), %rax
	cmpq	8(%rbx), %rax
	je	.LBB43_3
.LBB43_4:                               # %if.then
	movq	8(%rbx), %rdi
	movl	$st_joint_caches, %esi
	movl	$.L.str.6, %edx
	callq	*72(%rdi)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB43_9
# BB#5:                                 # %do.body.14
	movq	$1, 24(%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 32(%rax)
	movq	$rc_free_struct_only, 40(%rax)
	movq	1008(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB43_7
# BB#6:                                 # %do.end.31
	decq	24(%rcx)
.LBB43_7:                               # %do.end.41
	movq	%rax, 1008(%rbx)
	cmpq	%r14, %rax
	movq	%r14, %rcx
	je	.LBB43_9
# BB#8:                                 # %if.then.44
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	%rax, %rcx
	jmp	.LBB43_9
.LBB43_3:
	movq	%r14, %rcx
.LBB43_9:                               # %cleanup.47
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end43:
	.size	gx_unshare_cie_caches, .Lfunc_end43-gx_unshare_cie_caches
	.cfi_endproc

	.globl	gx_currentciecaches
	.align	16, 0x90
	.type	gx_currentciecaches,@function
gx_currentciecaches:                    # @gx_currentciecaches
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1008(%rdi), %rax
	retq
.Lfunc_end44:
	.size	gx_currentciecaches, .Lfunc_end44-gx_currentciecaches
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI45_0:
	.long	1065353216              # float 1
	.text
	.globl	gs_cie_render_init
	.align	16, 0x90
	.type	gs_cie_render_init,@function
gs_cie_render_init:                     # @gs_cie_render_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp146:
	.cfi_def_cfa_offset 64
.Ltmp147:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, (%rbx)
	jne	.LBB45_29
# BB#1:                                 # %do.end
	movss	176(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm0
	jne	.LBB45_10
	jp	.LBB45_10
# BB#2:                                 # %land.lhs.true.i
	movss	180(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_10
	jp	.LBB45_10
# BB#3:                                 # %land.lhs.true.6.i
	movss	184(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_10
	jp	.LBB45_10
# BB#4:                                 # %land.lhs.true.11.i
	movss	192(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm0
	jne	.LBB45_10
	jp	.LBB45_10
# BB#5:                                 # %land.lhs.true.16.i
	movss	188(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_10
	jp	.LBB45_10
# BB#6:                                 # %land.lhs.true.22.i
	movss	196(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_10
	jp	.LBB45_10
# BB#7:                                 # %land.lhs.true.28.i
	movss	208(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm0
	jne	.LBB45_10
	jp	.LBB45_10
# BB#8:                                 # %land.rhs.i
	movss	200(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_10
	jp	.LBB45_10
# BB#9:                                 # %land.rhs.38.i
	cmpeqss	204(%rbx), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB45_10:                              # %cie_matrix_init.exit
	movzbl	%al, %eax
	movl	%eax, 212(%rbx)
	movss	264(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm0
	jne	.LBB45_19
	jp	.LBB45_19
# BB#11:                                # %land.lhs.true.i.285
	movss	268(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_19
	jp	.LBB45_19
# BB#12:                                # %land.lhs.true.6.i.288
	movss	272(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_19
	jp	.LBB45_19
# BB#13:                                # %land.lhs.true.11.i.291
	movss	280(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm0
	jne	.LBB45_19
	jp	.LBB45_19
# BB#14:                                # %land.lhs.true.16.i.294
	movss	276(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_19
	jp	.LBB45_19
# BB#15:                                # %land.lhs.true.22.i.297
	movss	284(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_19
	jp	.LBB45_19
# BB#16:                                # %land.lhs.true.28.i.300
	movss	296(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm0
	jne	.LBB45_19
	jp	.LBB45_19
# BB#17:                                # %land.rhs.i.303
	movss	288(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_19
	jp	.LBB45_19
# BB#18:                                # %land.rhs.38.i.306
	cmpeqss	292(%rbx), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB45_19:                              # %cie_matrix_init.exit309
	leaq	176(%rbx), %rdi
	movzbl	%al, %eax
	movl	%eax, 300(%rbx)
	movss	72(%rbx), %xmm12        # xmm12 = mem[0],zero,zero,zero
	movss	76(%rbx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm12
	jne	.LBB45_28
	jp	.LBB45_28
# BB#20:                                # %cie_matrix_init.exit309
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm4
	jne	.LBB45_28
	jp	.LBB45_28
# BB#21:                                # %land.lhs.true.6.i.330
	movss	80(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_28
	jp	.LBB45_28
# BB#22:                                # %land.lhs.true.11.i.333
	movss	88(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm0
	jne	.LBB45_28
	jp	.LBB45_28
# BB#23:                                # %land.lhs.true.16.i.336
	movss	84(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_28
	jp	.LBB45_28
# BB#24:                                # %land.lhs.true.22.i.339
	movss	92(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_28
	jp	.LBB45_28
# BB#25:                                # %land.lhs.true.28.i.342
	movss	104(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI45_0(%rip), %xmm0
	jne	.LBB45_28
	jp	.LBB45_28
# BB#26:                                # %land.rhs.i.345
	movss	96(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB45_28
	jp	.LBB45_28
# BB#27:                                # %land.rhs.38.i.348
	cmpeqss	100(%rbx), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB45_28:                              # %cie_matrix_init.exit351
	movzbl	%al, %eax
	movl	%eax, 108(%rbx)
	movss	88(%rbx), %xmm9         # xmm9 = mem[0],zero,zero,zero
	movss	104(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm9, %xmm0
	mulss	%xmm3, %xmm0
	movss	100(%rbx), %xmm14       # xmm14 = mem[0],zero,zero,zero
	movss	92(%rbx), %xmm15        # xmm15 = mem[0],zero,zero,zero
	movaps	%xmm14, %xmm1
	mulss	%xmm15, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm8
	movss	80(%rbx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm14, %xmm2
	mulss	%xmm5, %xmm2
	movaps	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	subss	%xmm0, %xmm2
	movaps	%xmm4, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movaps	%xmm15, %xmm4
	mulss	%xmm0, %xmm4
	cvtss2sd	%xmm12, %xmm11
	movss	96(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm15, %xmm7
	movaps	%xmm3, %xmm13
	mulss	%xmm12, %xmm3
	mulss	%xmm12, %xmm15
	movaps	%xmm14, %xmm6
	movaps	%xmm1, %xmm10
	mulss	%xmm9, %xmm10
	mulss	%xmm12, %xmm14
	mulss	%xmm9, %xmm12
	mulss	%xmm5, %xmm9
	subss	%xmm9, %xmm4
	movss	84(%rbx), %xmm9         # xmm9 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movapd	%xmm8, %xmm0
	mulsd	%xmm0, %xmm11
	cvtss2sd	%xmm9, %xmm8
	mulsd	%xmm2, %xmm8
	addsd	%xmm11, %xmm8
	xorps	%xmm11, %xmm11
	cvtss2sd	%xmm4, %xmm11
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm1, %xmm4
	mulsd	%xmm11, %xmm4
	addsd	%xmm8, %xmm4
	divsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsp)
	divsd	%xmm4, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 12(%rsp)
	divsd	%xmm4, %xmm11
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm11, %xmm0
	movss	%xmm0, 16(%rsp)
	mulss	%xmm1, %xmm7
	mulss	%xmm9, %xmm13
	subss	%xmm13, %xmm7
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm7, %xmm0
	divsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rsp)
	movaps	%xmm1, %xmm0
	mulss	%xmm5, %xmm0
	subss	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	divsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rsp)
	mulss	%xmm9, %xmm5
	subss	%xmm15, %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	divsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 28(%rsp)
	mulss	%xmm9, %xmm6
	subss	%xmm10, %xmm6
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm6, %xmm0
	divsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 32(%rsp)
	movss	4(%rsp), %xmm2          # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	subss	%xmm14, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	divsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 36(%rsp)
	mulss	%xmm2, %xmm9
	subss	%xmm9, %xmm12
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm12, %xmm0
	divsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rsp)
	movl	%eax, 44(%rsp)
	leaq	516(%rbx), %rdx
	leaq	8(%rsp), %rsi
	callq	cie_matrix_mult3
	movss	516(%rbx), %xmm6        # xmm6 = mem[0],zero,zero,zero
	movss	528(%rbx), %xmm5        # xmm5 = mem[0],zero,zero,zero
	movss	540(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	112(%rbx), %xmm11       # xmm11 = mem[0],zero,zero,zero
	movss	116(%rbx), %xmm9        # xmm9 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm4
	mulss	%xmm11, %xmm4
	mulss	%xmm9, %xmm6
	movss	120(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm5, %xmm7
	mulss	%xmm1, %xmm7
	movss	124(%rbx), %xmm10       # xmm10 = mem[0],zero,zero,zero
	mulss	%xmm10, %xmm5
	movss	128(%rbx), %xmm12       # xmm12 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm3
	mulss	%xmm12, %xmm3
	movss	132(%rbx), %xmm8        # xmm8 = mem[0],zero,zero,zero
	mulss	%xmm8, %xmm0
	movaps	%xmm6, %xmm2
	minss	%xmm4, %xmm2
	maxss	%xmm6, %xmm4
	movaps	%xmm5, %xmm6
	minss	%xmm7, %xmm6
	maxss	%xmm5, %xmm7
	movaps	%xmm0, %xmm5
	minss	%xmm3, %xmm5
	maxss	%xmm0, %xmm3
	addss	%xmm2, %xmm6
	addss	%xmm5, %xmm6
	movss	%xmm6, 416(%rbx)
	addss	%xmm4, %xmm7
	addss	%xmm3, %xmm7
	movss	%xmm7, 420(%rbx)
	movss	520(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	532(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	544(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm4
	mulss	%xmm11, %xmm4
	mulss	%xmm9, %xmm0
	movaps	%xmm2, %xmm5
	mulss	%xmm1, %xmm5
	mulss	%xmm10, %xmm2
	movaps	%xmm3, %xmm6
	mulss	%xmm12, %xmm6
	mulss	%xmm8, %xmm3
	movaps	%xmm0, %xmm7
	minss	%xmm4, %xmm7
	maxss	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	minss	%xmm5, %xmm0
	maxss	%xmm2, %xmm5
	movaps	%xmm3, %xmm2
	minss	%xmm6, %xmm2
	maxss	%xmm3, %xmm6
	addss	%xmm7, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 424(%rbx)
	addss	%xmm4, %xmm5
	addss	%xmm6, %xmm5
	movss	%xmm5, 428(%rbx)
	movss	524(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	536(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	548(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm11
	mulss	%xmm9, %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm10, %xmm2
	mulss	%xmm3, %xmm12
	mulss	%xmm8, %xmm3
	movaps	%xmm0, %xmm4
	minss	%xmm11, %xmm4
	maxss	%xmm0, %xmm11
	movaps	%xmm2, %xmm0
	minss	%xmm1, %xmm0
	maxss	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	minss	%xmm12, %xmm2
	maxss	%xmm3, %xmm12
	addss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 432(%rbx)
	addss	%xmm11, %xmm1
	addss	%xmm12, %xmm1
	movss	%xmm1, 436(%rbx)
	movss	264(%rbx), %xmm7        # xmm7 = mem[0],zero,zero,zero
	movss	276(%rbx), %xmm5        # xmm5 = mem[0],zero,zero,zero
	movss	288(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	240(%rbx), %xmm11       # xmm11 = mem[0],zero,zero,zero
	movss	244(%rbx), %xmm8        # xmm8 = mem[0],zero,zero,zero
	movaps	%xmm7, %xmm6
	mulss	%xmm11, %xmm6
	mulss	%xmm8, %xmm7
	movss	248(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm5, %xmm3
	mulss	%xmm1, %xmm3
	movss	252(%rbx), %xmm9        # xmm9 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm5
	movss	256(%rbx), %xmm12       # xmm12 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm4
	mulss	%xmm12, %xmm4
	movss	260(%rbx), %xmm10       # xmm10 = mem[0],zero,zero,zero
	mulss	%xmm10, %xmm0
	movaps	%xmm7, %xmm2
	minss	%xmm6, %xmm2
	maxss	%xmm7, %xmm6
	movaps	%xmm5, %xmm7
	minss	%xmm3, %xmm7
	maxss	%xmm5, %xmm3
	movaps	%xmm0, %xmm5
	minss	%xmm4, %xmm5
	maxss	%xmm0, %xmm4
	addss	%xmm2, %xmm7
	addss	%xmm5, %xmm7
	movss	%xmm7, 440(%rbx)
	addss	%xmm6, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 444(%rbx)
	movss	268(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	280(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	292(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm4
	mulss	%xmm11, %xmm4
	mulss	%xmm8, %xmm0
	movaps	%xmm2, %xmm5
	mulss	%xmm1, %xmm5
	mulss	%xmm9, %xmm2
	movaps	%xmm3, %xmm6
	mulss	%xmm12, %xmm6
	mulss	%xmm10, %xmm3
	movaps	%xmm0, %xmm7
	minss	%xmm4, %xmm7
	maxss	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	minss	%xmm5, %xmm0
	maxss	%xmm2, %xmm5
	movaps	%xmm3, %xmm2
	minss	%xmm6, %xmm2
	maxss	%xmm3, %xmm6
	addss	%xmm7, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 448(%rbx)
	addss	%xmm4, %xmm5
	addss	%xmm6, %xmm5
	movss	%xmm5, 452(%rbx)
	movss	272(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	284(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	296(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm11
	mulss	%xmm8, %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm9, %xmm2
	mulss	%xmm3, %xmm12
	mulss	%xmm10, %xmm3
	movaps	%xmm0, %xmm4
	minss	%xmm11, %xmm4
	maxss	%xmm0, %xmm11
	movaps	%xmm2, %xmm0
	minss	%xmm1, %xmm0
	maxss	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	minss	%xmm12, %xmm2
	maxss	%xmm3, %xmm12
	addss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 456(%rbx)
	addss	%xmm11, %xmm1
	addss	%xmm12, %xmm1
	movss	%xmm1, 460(%rbx)
	movss	48(%rbx), %xmm12        # xmm12 = mem[0],zero,zero,zero
	movss	52(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	56(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	72(%rbx), %xmm10        # xmm10 = mem[0],zero,zero,zero
	movaps	%xmm12, %xmm2
	mulss	%xmm10, %xmm2
	movss	84(%rbx), %xmm11        # xmm11 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm4
	mulss	%xmm11, %xmm4
	addss	%xmm2, %xmm4
	movss	96(%rbx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm3, %xmm2
	addss	%xmm4, %xmm2
	movss	%xmm2, 556(%rbx)
	movss	76(%rbx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	88(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm12, %xmm5
	mulss	%xmm4, %xmm5
	movaps	%xmm0, %xmm6
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm6
	movss	100(%rbx), %xmm5        # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm7
	mulss	%xmm5, %xmm7
	addss	%xmm6, %xmm7
	movss	%xmm7, 560(%rbx)
	movss	80(%rbx), %xmm9         # xmm9 = mem[0],zero,zero,zero
	movss	92(%rbx), %xmm8         # xmm8 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm12
	mulss	%xmm8, %xmm0
	addss	%xmm12, %xmm0
	movss	104(%rbx), %xmm12       # xmm12 = mem[0],zero,zero,zero
	mulss	%xmm12, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 564(%rbx)
	movss	60(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	64(%rbx), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movss	68(%rbx), %xmm7         # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm10
	mulss	%xmm6, %xmm11
	addss	%xmm10, %xmm11
	mulss	%xmm7, %xmm3
	addss	%xmm11, %xmm3
	movss	%xmm3, 568(%rbx)
	mulss	%xmm0, %xmm4
	mulss	%xmm6, %xmm2
	addss	%xmm4, %xmm2
	mulss	%xmm7, %xmm5
	addss	%xmm2, %xmm5
	movss	%xmm5, 572(%rbx)
	mulss	%xmm9, %xmm0
	mulss	%xmm8, %xmm6
	addss	%xmm0, %xmm6
	mulss	%xmm12, %xmm7
	addss	%xmm6, %xmm7
	movss	%xmm7, 576(%rbx)
	movl	$1, (%rbx)
.LBB45_29:                              # %cleanup
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end45:
	.size	gs_cie_render_init, .Lfunc_end45-gs_cie_render_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI46_0:
	.long	1065353216              # float 1
	.text
	.globl	cie_matrix_mult3
	.align	16, 0x90
	.type	cie_matrix_mult3,@function
cie_matrix_mult3:                       # @cie_matrix_mult3
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	%rsi, %rdx
	leaq	-40(%rsp), %rcx
	movq	%rdx, %r8
	cmoveq	%rcx, %r8
	cmpq	%rdi, %rdx
	cmoveq	%rcx, %r8
	movss	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	8(%rsi), %xmm11         # xmm11 = mem[0],zero,zero,zero
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm0, %xmm3
	movss	24(%rdi), %xmm8         # xmm8 = mem[0],zero,zero,zero
	mulss	%xmm11, %xmm8
	addss	%xmm3, %xmm8
	movss	%xmm8, (%r8)
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	16(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm0, %xmm3
	movss	28(%rdi), %xmm10        # xmm10 = mem[0],zero,zero,zero
	mulss	%xmm11, %xmm10
	addss	%xmm3, %xmm10
	movss	%xmm10, 4(%r8)
	mulss	8(%rdi), %xmm2
	mulss	20(%rdi), %xmm1
	addss	%xmm2, %xmm1
	mulss	32(%rdi), %xmm11
	addss	%xmm1, %xmm11
	movss	%xmm11, 8(%r8)
	movss	12(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movss	16(%rsi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	20(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	movss	12(%rdi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm5
	addss	%xmm0, %xmm5
	movss	24(%rdi), %xmm12        # xmm12 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm12
	addss	%xmm5, %xmm12
	movss	%xmm12, 12(%r8)
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	movss	16(%rdi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm5
	addss	%xmm0, %xmm5
	movss	28(%rdi), %xmm6         # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm6
	addss	%xmm5, %xmm6
	movss	%xmm6, 16(%r8)
	mulss	8(%rdi), %xmm3
	mulss	20(%rdi), %xmm2
	addss	%xmm3, %xmm2
	mulss	32(%rdi), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 20(%r8)
	movss	24(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	28(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movss	32(%rsi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	movss	12(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	addss	%xmm2, %xmm4
	movss	24(%rdi), %xmm7         # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm7
	addss	%xmm4, %xmm7
	movss	%xmm7, 24(%r8)
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	movss	16(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	addss	%xmm2, %xmm4
	movss	28(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm2
	addss	%xmm4, %xmm2
	movss	%xmm2, 28(%r8)
	mulss	8(%rdi), %xmm0
	mulss	20(%rdi), %xmm3
	addss	%xmm0, %xmm3
	mulss	32(%rdi), %xmm5
	addss	%xmm3, %xmm5
	movss	%xmm5, 32(%r8)
	movss	.LCPI46_0(%rip), %xmm9  # xmm9 = mem[0],zero,zero,zero
	ucomiss	%xmm9, %xmm8
	setnp	%sil
	sete	%cl
	andb	%sil, %cl
	xorps	%xmm8, %xmm8
	ucomiss	%xmm8, %xmm10
	setnp	%sil
	sete	%al
	andb	%sil, %al
	andb	%cl, %al
	ucomiss	%xmm8, %xmm11
	setnp	%sil
	sete	%cl
	andb	%sil, %cl
	andb	%al, %cl
	ucomiss	%xmm9, %xmm6
	setnp	%sil
	sete	%al
	andb	%sil, %al
	andb	%cl, %al
	ucomiss	%xmm8, %xmm12
	setnp	%sil
	sete	%cl
	andb	%sil, %cl
	andb	%al, %cl
	ucomiss	%xmm8, %xmm1
	setnp	%sil
	sete	%al
	andb	%sil, %al
	andb	%cl, %al
	ucomiss	%xmm9, %xmm5
	setnp	%sil
	sete	%cl
	andb	%sil, %cl
	andb	%al, %cl
	ucomiss	%xmm8, %xmm7
	setnp	%sil
	sete	%al
	andb	%sil, %al
	andb	%cl, %al
	ucomiss	%xmm8, %xmm2
	setnp	%sil
	sete	%cl
	andb	%sil, %cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 36(%r8)
	cmpq	%rdx, %r8
	je	.LBB46_2
# BB#1:                                 # %if.then
	movq	32(%r8), %rax
	movq	%rax, 32(%rdx)
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
.LBB46_2:                               # %if.end
	retq
.Lfunc_end46:
	.size	cie_matrix_mult3, .Lfunc_end46-cie_matrix_mult3
	.cfi_endproc

	.globl	cie_mult3
	.align	16, 0x90
	.type	cie_mult3,@function
cie_mult3:                              # @cie_mult3
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	(%rsi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	12(%rsi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	24(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, (%rdx)
	movss	4(%rsi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	16(%rsi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	28(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 4(%rdx)
	mulss	8(%rsi), %xmm2
	mulss	20(%rsi), %xmm0
	addss	%xmm2, %xmm0
	mulss	32(%rsi), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 8(%rdx)
	retq
.Lfunc_end47:
	.size	cie_mult3, .Lfunc_end47-cie_mult3
	.cfi_endproc

	.globl	gs_cie_render_sample
	.align	16, 0x90
	.type	gs_cie_render_sample,@function
gs_cie_render_sample:                   # @gs_cie_render_sample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 96
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	cmpl	$1, (%r13)
	ja	.LBB48_29
# BB#1:                                 # %if.end
	movq	%r13, %rdi
	callq	gs_cie_render_init
	leaq	584(%r13), %r14
	leaq	416(%r13), %rdx
	leaq	24(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %r15
	testq	%r15, %r15
	js	.LBB48_4
# BB#2:                                 # %for.body.12.lr.ph
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, %r12d
	.align	16, 0x90
.LBB48_3:                               # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r12d, %xmm0
	mulss	16(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	12(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	8(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r13, %rdi
	callq	*216(%r13)
	movss	%xmm0, 624(%r13,%rbx,4)
	incq	%rbx
	decl	%r12d
	cmpq	%rbx, %r15
	jge	.LBB48_3
.LBB48_4:                               # %for.end
	movq	Encode_default(%rip), %rax
	cmpq	%rax, 216(%r13)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 584(%r13)
	leaq	8856(%r13), %rdi
	leaq	424(%r13), %rdx
	leaq	24(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %r12
	testq	%r12, %r12
	js	.LBB48_7
# BB#5:                                 # %for.body.12.lr.ph.1
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r12d, %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r12d, %r15d
	.align	16, 0x90
.LBB48_6:                               # %for.body.12.1
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	mulss	16(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	12(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	8(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r13, %rdi
	callq	*224(%r13)
	movss	%xmm0, 8896(%r13,%rbx,4)
	incq	%rbx
	decl	%r15d
	cmpq	%rbx, %r12
	jge	.LBB48_6
.LBB48_7:                               # %for.end.1
	movq	Encode_default+8(%rip), %r12
	cmpq	%r12, 224(%r13)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 8856(%r13)
	leaq	17128(%r13), %rdi
	leaq	432(%r13), %rdx
	leaq	24(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %rbp
	testq	%rbp, %rbp
	js	.LBB48_10
# BB#8:                                 # %for.body.12.lr.ph.2
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%ebp, %r15d
	.align	16, 0x90
.LBB48_9:                               # %for.body.12.2
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	mulss	16(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	12(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	8(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r13, %rdi
	callq	*232(%r13)
	movss	%xmm0, 17168(%r13,%rbx,4)
	incq	%rbx
	decl	%r15d
	cmpq	%rbx, %rbp
	jge	.LBB48_9
.LBB48_10:                              # %for.end.2
	movq	Encode_default+16(%rip), %rbp
	cmpq	%rbp, 232(%r13)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 17128(%r13)
	movq	%r14, %rdi
	callq	cache3_set_linear
	leaq	25424(%r13), %rdi
	leaq	440(%r13), %rdx
	leaq	24(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %r14
	testq	%r14, %r14
	js	.LBB48_13
# BB#11:                                # %for.body.65.lr.ph
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r14d, %r15d
	.align	16, 0x90
.LBB48_12:                              # %for.body.65
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	mulss	16(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	12(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	8(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r13, %rdi
	callq	*304(%r13)
	movss	%xmm0, 25464(%r13,%rbx,4)
	incq	%rbx
	decl	%r15d
	cmpq	%rbx, %r14
	jge	.LBB48_12
.LBB48_13:                              # %for.end.93
	movq	Encode_default(%rip), %rax
	cmpq	%rax, 304(%r13)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 25424(%r13)
	leaq	29600(%r13), %rdi
	leaq	448(%r13), %rdx
	leaq	24(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %r14
	testq	%r14, %r14
	js	.LBB48_16
# BB#14:                                # %for.body.65.lr.ph.1
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r14d, %r15d
	.align	16, 0x90
.LBB48_15:                              # %for.body.65.1
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	mulss	16(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	12(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	8(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r13, %rdi
	callq	*312(%r13)
	movss	%xmm0, 29640(%r13,%rbx,4)
	incq	%rbx
	decl	%r15d
	cmpq	%rbx, %r14
	jge	.LBB48_15
.LBB48_16:                              # %for.end.93.1
	cmpq	%r12, 312(%r13)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 29600(%r13)
	leaq	33776(%r13), %rdi
	leaq	456(%r13), %rdx
	leaq	24(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	32(%rsp), %r14
	testq	%r14, %r14
	js	.LBB48_19
# BB#17:                                # %for.body.65.lr.ph.2
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	movl	%r14d, %r15d
	.align	16, 0x90
.LBB48_18:                              # %for.body.65.2
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	mulss	16(%rsp), %xmm0         # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	12(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	8(%rsp), %xmm1          # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r13, %rdi
	callq	*320(%r13)
	movss	%xmm0, 33816(%r13,%rbx,4)
	incq	%rbx
	decl	%r15d
	cmpq	%rbx, %r14
	jge	.LBB48_18
.LBB48_19:                              # %for.end.93.2
	cmpq	%rbp, 320(%r13)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 33776(%r13)
	cmpq	$0, 376(%r13)
	je	.LBB48_28
# BB#20:                                # %if.then.111
	movl	372(%r13), %r12d
	movl	$1, %ebx
	testl	%r12d, %r12d
	jle	.LBB48_23
# BB#21:                                # %for.body.122.preheader
	leaq	37952(%r13), %r14
	movl	$1, %ebx
	xorl	%ebp, %ebp
	leaq	24(%rsp), %r15
	.align	16, 0x90
.LBB48_22:                              # %for.body.122
                                        # =>This Inner Loop Header: Depth=1
	movl	$Range3_default, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gs_cie_cache_init
	movq	384(%r13,%rbp,8), %rax
	cmpq	RenderTableT_default(,%rbp,8), %rax
	sete	%al
	movzbl	%al, %eax
	andl	%eax, %ebx
	incq	%rbp
	addq	$2088, %r14             # imm = 0x828
	cmpl	%ebp, %r12d
	jne	.LBB48_22
.LBB48_23:                              # %for.end.137
	movl	%ebx, 46304(%r13)
	xorl	%r14d, %r14d
	movl	$37992, %eax            # imm = 0x9468
	movq	%rax, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB48_24:                              # %for.body.142
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_26 Depth 2
	testl	%r12d, %r12d
	jle	.LBB48_27
# BB#25:                                #   in Loop: Header=BB48_24 Depth=1
	movl	%r14d, %ebp
	shrl	%ebp
	movq	16(%rsp), %rbx          # 8-byte Reload
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB48_26:                              # %for.body.147
                                        #   Parent Loop BB48_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%bpl, %edi
	movq	%r13, %rsi
	callq	*384(%r13,%r15,8)
	movw	%ax, (%r13,%rbx)
	incq	%r15
	addq	$2088, %rbx             # imm = 0x828
	cmpl	%r15d, %r12d
	jne	.LBB48_26
.LBB48_27:                              # %for.end.167
                                        #   in Loop: Header=BB48_24 Depth=1
	incq	%r14
	addq	$2, 16(%rsp)            # 8-byte Folded Spill
	cmpq	$512, %r14              # imm = 0x200
	jne	.LBB48_24
.LBB48_28:                              # %if.end.171
	movl	$2, (%r13)
.LBB48_29:                              # %cleanup
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gs_cie_render_sample, .Lfunc_end48-gs_cie_render_sample
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI49_0:
	.quad	4535125924542218256     # double 1.526252e-05
	.quad	4535125924542218256     # double 1.526252e-05
.LCPI49_1:
	.quad	4674734214187319296     # double 3.276000e+04
	.quad	4674734214187319296     # double 3.276000e+04
	.text
	.globl	gs_cie_cache_to_fracs
	.align	16, 0x90
	.type	gs_cie_cache_to_fracs,@function
gs_cie_cache_to_fracs:                  # @gs_cie_cache_to_fracs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movapd	.LCPI49_0(%rip), %xmm0  # xmm0 = [1.526252e-05,1.526252e-05]
	movapd	.LCPI49_1(%rip), %xmm1  # xmm1 = [3.276000e+04,3.276000e+04]
	.align	16, 0x90
.LBB49_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	40(%rdi,%rax,4), %xmm2
	cvtps2pd	48(%rdi,%rax,4), %xmm3
	addpd	%xmm0, %xmm2
	addpd	%xmm0, %xmm3
	mulpd	%xmm1, %xmm2
	mulpd	%xmm1, %xmm3
	cvttsd2si	%xmm2, %rcx
	movd	%rcx, %xmm4
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	cvttsd2si	%xmm2, %rcx
	movd	%rcx, %xmm2
	punpcklqdq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0]
	cvttsd2si	%xmm3, %rcx
	movd	%rcx, %xmm2
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	cvttsd2si	%xmm3, %rcx
	movd	%rcx, %xmm3
	punpcklqdq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	movd	%xmm3, 40(%rsi,%rax,2)
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm2, 44(%rsi,%rax,2)
	addq	$4, %rax
	cmpq	$512, %rax              # imm = 0x200
	jne	.LBB49_1
# BB#2:                                 # %for.end
	movq	32(%rdi), %rax
	movq	%rax, 32(%rsi)
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end49:
	.size	gs_cie_cache_to_fracs, .Lfunc_end49-gs_cie_cache_to_fracs
	.cfi_endproc

	.globl	gs_cie_cs_common
	.align	16, 0x90
	.type	gs_cie_cs_common,@function
gs_cie_cs_common:                       # @gs_cie_cs_common
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbx, -16
	movq	1744(%rdi), %rax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB50_1:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	addl	$-5, %ecx
	cmpl	$3, %ecx
	jbe	.LBB50_2
# BB#4:                                 # %sw.default.i
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	%rax, %rdi
	callq	gs_cspace_base_space
	testq	%rax, %rax
	jne	.LBB50_1
	jmp	.LBB50_5
.LBB50_2:                               # %do.body.i
	jmpq	*.LJTI50_0(,%rcx,8)
.LBB50_3:                               # %sw.bb.13.i
	movq	72(%rax), %rbx
.LBB50_5:                               # %cie_cs_common_abc.exit
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end50:
	.size	gs_cie_cs_common, .Lfunc_end50-gs_cie_cs_common
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI50_0:
	.quad	.LBB50_3
	.quad	.LBB50_3
	.quad	.LBB50_3
	.quad	.LBB50_3

	.text
	.globl	gs_cie_jc_complete
	.align	16, 0x90
	.type	gs_cie_jc_complete,@function
gs_cie_jc_complete:                     # @gs_cie_jc_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp166:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp167:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp168:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp169:
	.cfi_def_cfa_offset 288
.Ltmp170:
	.cfi_offset %rbx, -56
.Ltmp171:
	.cfi_offset %r12, -48
.Ltmp172:
	.cfi_offset %r13, -40
.Ltmp173:
	.cfi_offset %r14, -32
.Ltmp174:
	.cfi_offset %r15, -24
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbp
	xorl	%ebx, %ebx
	movq	%r12, %rax
	.align	16, 0x90
.LBB51_1:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	addl	$-5, %ecx
	cmpl	$3, %ecx
	jbe	.LBB51_2
# BB#5:                                 # %sw.default.i
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	%rax, %rdi
	callq	gs_cspace_base_space
	testq	%rax, %rax
	movl	$0, %ecx
	jne	.LBB51_1
	jmp	.LBB51_6
.LBB51_2:                               # %do.body.i
	jmpq	*.LJTI51_0(,%rcx,8)
.LBB51_3:                               # %sw.bb.i
	movq	72(%rax), %rbx
	movq	%rbx, %rcx
	jmp	.LBB51_6
.LBB51_4:                               # %sw.bb.13.i
	movq	72(%rax), %rcx
	xorl	%ebx, %ebx
.LBB51_6:                               # %cie_cs_common_abc.exit
	movq	400(%rbp), %r15
	movq	1008(%rbp), %r14
	movq	(%r14), %rax
	cmpq	32(%r12), %rax
	jne	.LBB51_9
# BB#7:                                 # %land.lhs.true
	movq	8(%r14), %rax
	cmpq	32(%r15), %rax
	jne	.LBB51_9
# BB#8:                                 # %if.then
	movl	16(%r14), %eax
	movl	%eax, 20(%r14)
.LBB51_9:                               # %if.end
	movl	20(%r14), %eax
	xorl	%r13d, %r13d
	cmpl	$1, %eax
	je	.LBB51_25
# BB#10:                                # %if.end
	testl	%eax, %eax
	jne	.LBB51_67
# BB#11:                                # %sw.bb
	movl	112(%rcx), %eax
	movl	%eax, 24912(%r14)
	movq	104(%rcx), %rax
	movq	%rax, 24904(%r14)
	movss	24904(%r14), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	24908(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	24912(%r14), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	72(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	84(%r15), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	96(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 24916(%r14)
	movss	76(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	88(%r15), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	100(%r15), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 24920(%r14)
	mulss	80(%r15), %xmm2
	mulss	92(%r15), %xmm0
	addss	%xmm2, %xmm0
	mulss	104(%r15), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 24924(%r14)
	movl	124(%rcx), %eax
	movl	%eax, 24936(%r14)
	movq	116(%rcx), %rax
	movq	%rax, 24928(%r14)
	movss	24928(%r14), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	24932(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	24936(%r14), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	72(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	84(%r15), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	96(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 24940(%r14)
	movss	76(%r15), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	88(%r15), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	100(%r15), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 24944(%r14)
	mulss	80(%r15), %xmm2
	mulss	92(%r15), %xmm0
	addss	%xmm2, %xmm0
	mulss	104(%r15), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 24948(%r14)
	movl	56(%r15), %eax
	movl	%eax, 24960(%r14)
	movq	48(%r15), %rax
	movq	%rax, 24952(%r14)
	movl	564(%r15), %eax
	movl	%eax, 24972(%r14)
	movq	556(%r15), %rax
	movq	%rax, 24964(%r14)
	movl	68(%r15), %eax
	movl	%eax, 24984(%r14)
	movq	60(%r15), %rax
	movq	%rax, 24976(%r14)
	movl	576(%r15), %eax
	movl	%eax, 24996(%r14)
	movq	568(%r15), %rax
	movq	%rax, 24988(%r14)
	movq	136(%r15), %rax
	cmpq	TransformPQR_from_cache(%rip), %rax
	je	.LBB51_25
# BB#12:                                # %if.end.i
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r12, 32(%rsp)          # 8-byte Spill
	leaq	24904(%r14), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	cmpq	TransformPQR_default(%rip), %rax
	sete	%bl
	leaq	25008(%r14), %rdi
	leaq	112(%r15), %rdx
	leaq	192(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	200(%rsp), %rbp
	testq	%rbp, %rbp
	js	.LBB51_16
# BB#13:                                # %for.body.12.lr.ph.i
	movss	192(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	movss	196(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	xorl	%r12d, %r12d
	movl	%ebp, %r13d
	.align	16, 0x90
.LBB51_14:                              # %for.body.12.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r13d, %xmm0
	mulss	52(%rsp), %xmm0         # 4-byte Folded Reload
	cvtsi2ssl	%r12d, %xmm1
	mulss	48(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	44(%rsp), %xmm1         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	xorl	%edi, %edi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	leaq	144(%rsp), %rcx
	callq	*136(%r15)
	testl	%eax, %eax
	js	.LBB51_68
# BB#15:                                # %for.inc.i
                                        #   in Loop: Header=BB51_14 Depth=1
	movl	144(%rsp), %eax
	movl	%eax, 25048(%r14,%r12,4)
	incq	%r12
	decl	%r13d
	cmpq	%r12, %rbp
	jge	.LBB51_14
.LBB51_16:                              # %for.inc.47.i
	movzbl	%bl, %r13d
	movl	%r13d, 25008(%r14)
	leaq	33280(%r14), %rdi
	leaq	120(%r15), %rdx
	leaq	192(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	200(%rsp), %r12
	testq	%r12, %r12
	js	.LBB51_20
# BB#17:                                # %for.body.12.lr.ph.1.i
	movss	192(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	movss	196(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r12d, %xmm0
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	xorl	%ebp, %ebp
	movl	%r12d, %ebx
	.align	16, 0x90
.LBB51_18:                              # %for.body.12.1.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	52(%rsp), %xmm0         # 4-byte Folded Reload
	cvtsi2ssl	%ebp, %xmm1
	mulss	48(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	44(%rsp), %xmm1         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movl	$1, %edi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	leaq	144(%rsp), %rcx
	callq	*136(%r15)
	testl	%eax, %eax
	js	.LBB51_68
# BB#19:                                # %for.inc.1.i
                                        #   in Loop: Header=BB51_18 Depth=1
	movl	144(%rsp), %eax
	movl	%eax, 33320(%r14,%rbp,4)
	incq	%rbp
	decl	%ebx
	cmpq	%rbp, %r12
	jge	.LBB51_18
.LBB51_20:                              # %for.inc.47.1.i
	movl	%r13d, 33280(%r14)
	leaq	41552(%r14), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%r15, %rdx
	subq	$-128, %rdx
	leaq	192(%rsp), %rsi
	callq	gs_cie_cache_init
	movslq	200(%rsp), %rbp
	testq	%rbp, %rbp
	js	.LBB51_24
# BB#21:                                # %for.body.12.lr.ph.2.i
	movss	192(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	movss	196(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	xorl	%r12d, %r12d
	movl	%ebp, %ebx
	.align	16, 0x90
.LBB51_22:                              # %for.body.12.2.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	52(%rsp), %xmm0         # 4-byte Folded Reload
	cvtsi2ssl	%r12d, %xmm1
	mulss	48(%rsp), %xmm1         # 4-byte Folded Reload
	addss	%xmm0, %xmm1
	divss	44(%rsp), %xmm1         # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movl	$2, %edi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	leaq	144(%rsp), %rcx
	callq	*136(%r15)
	testl	%eax, %eax
	js	.LBB51_68
# BB#23:                                # %for.inc.2.i
                                        #   in Loop: Header=BB51_22 Depth=1
	movl	144(%rsp), %eax
	movl	%eax, 41592(%r14,%r12,4)
	incq	%r12
	decl	%ebx
	cmpq	%r12, %rbp
	jge	.LBB51_22
.LBB51_24:                              # %for.inc.47.2.i
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%r13d, (%rax)
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB51_25:                              # %sw.bb.8
	movq	$gx_cie_real_remap_finish, 48(%r14)
	cmpl	$0, 584(%r15)
	je	.LBB51_29
# BB#26:                                # %land.lhs.true.i
	cmpl	$0, 8856(%r15)
	je	.LBB51_29
# BB#27:                                # %land.lhs.true.10.i
	cmpl	$0, 17128(%r15)
	je	.LBB51_29
# BB#28:                                # %do.end.i
	movq	%rcx, %rbp
	leaq	464(%r15), %rdi
	leaq	516(%r15), %rsi
	leaq	192(%rsp), %rdx
	callq	cie_matrix_mult3
	movl	$1, 49848(%r14)
	jmp	.LBB51_30
.LBB51_29:                              # %do.end.21.i
	movq	%rcx, %rbp
	movq	548(%r15), %rax
	movq	%rax, 224(%rsp)
	movups	516(%r15), %xmm0
	movups	532(%r15), %xmm1
	movaps	%xmm1, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movl	$0, 49848(%r14)
.LBB51_30:                              # %if.end.i.25
	leaq	25008(%r14), %r13
	movq	%r13, %rdi
	callq	cache3_set_linear
	leaq	72(%r15), %rdi
	leaq	64(%rbp), %rsi
	leaq	104(%rsp), %rdx
	callq	cie_matrix_mult3
	movl	33280(%r14), %eax
	andl	25008(%r14), %eax
	testl	41552(%r14), %eax
	je	.LBB51_35
# BB#31:                                # %do.end.47.i
	leaq	192(%rsp), %rdi
	leaq	104(%rsp), %rsi
	leaq	144(%rsp), %rdx
	callq	cie_matrix_mult3
	movl	$1, 25000(%r14)
	jmp	.LBB51_32
.LBB51_35:                              # %do.end.51.i
	movq	136(%rsp), %rax
	movq	%rax, 176(%rsp)
	movups	104(%rsp), %xmm0
	movups	120(%rsp), %xmm1
	movaps	%xmm1, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB51_36:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	25048(%r14,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	112(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB51_38
# BB#37:                                # %if.else.i.i
                                        #   in Loop: Header=BB51_36 Depth=1
	movss	116(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB51_39
.LBB51_38:                              # %if.then.7.i.i
                                        #   in Loop: Header=BB51_36 Depth=1
	movss	%xmm1, 25048(%r14,%rax,4)
.LBB51_39:                              # %if.end.12.i.i
                                        #   in Loop: Header=BB51_36 Depth=1
	movss	25052(%r14,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	112(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB51_41
# BB#40:                                # %if.else.i.i.1
                                        #   in Loop: Header=BB51_36 Depth=1
	movss	116(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB51_42
.LBB51_41:                              # %if.then.i.i.1
                                        #   in Loop: Header=BB51_36 Depth=1
	movss	%xmm1, 25052(%r14,%rax,4)
.LBB51_42:                              # %if.end.12.i.i.1
                                        #   in Loop: Header=BB51_36 Depth=1
	addq	$2, %rax
	cmpq	$512, %rax              # imm = 0x200
	jne	.LBB51_36
# BB#43:                                # %cie_cache_restrict.exit.i
	xorl	%eax, %eax
	.align	16, 0x90
.LBB51_44:                              # %for.body.i.1.i
                                        # =>This Inner Loop Header: Depth=1
	movss	33320(%r14,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	120(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB51_46
# BB#45:                                # %if.else.i.1.i
                                        #   in Loop: Header=BB51_44 Depth=1
	movss	124(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB51_47
.LBB51_46:                              # %if.then.i.1.i
                                        #   in Loop: Header=BB51_44 Depth=1
	movss	%xmm1, 33320(%r14,%rax,4)
.LBB51_47:                              # %if.end.12.i.1.i
                                        #   in Loop: Header=BB51_44 Depth=1
	movss	33324(%r14,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	120(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB51_49
# BB#48:                                # %if.else.i.1.i.1
                                        #   in Loop: Header=BB51_44 Depth=1
	movss	124(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB51_50
.LBB51_49:                              # %if.then.i.1.i.1
                                        #   in Loop: Header=BB51_44 Depth=1
	movss	%xmm1, 33324(%r14,%rax,4)
.LBB51_50:                              # %if.end.12.i.1.i.1
                                        #   in Loop: Header=BB51_44 Depth=1
	addq	$2, %rax
	cmpq	$512, %rax              # imm = 0x200
	jne	.LBB51_44
# BB#51:                                # %cie_cache_restrict.exit.1.i
	xorl	%eax, %eax
	.align	16, 0x90
.LBB51_52:                              # %for.body.i.2.i
                                        # =>This Inner Loop Header: Depth=1
	movss	41592(%r14,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	128(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB51_54
# BB#53:                                # %if.else.i.2.i
                                        #   in Loop: Header=BB51_52 Depth=1
	movss	132(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB51_55
.LBB51_54:                              # %if.then.i.2.i
                                        #   in Loop: Header=BB51_52 Depth=1
	movss	%xmm1, 41592(%r14,%rax,4)
.LBB51_55:                              # %if.end.12.i.2.i
                                        #   in Loop: Header=BB51_52 Depth=1
	movss	41596(%r14,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	128(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB51_57
# BB#56:                                # %if.else.i.2.i.1
                                        #   in Loop: Header=BB51_52 Depth=1
	movss	132(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB51_58
.LBB51_57:                              # %if.then.i.2.i.1
                                        #   in Loop: Header=BB51_52 Depth=1
	movss	%xmm1, 41596(%r14,%rax,4)
.LBB51_58:                              # %if.end.12.i.2.i.1
                                        #   in Loop: Header=BB51_52 Depth=1
	addq	$2, %rax
	cmpq	$512, %rax              # imm = 0x200
	jne	.LBB51_52
# BB#59:                                # %cie_cache_restrict.exit.2.i
	leaq	192(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r13, %rdx
	callq	cie_cache_mult
	leaq	33280(%r14), %rdi
	leaq	204(%rsp), %rsi
	movq	%rdi, %rdx
	callq	cie_cache_mult
	leaq	41552(%r14), %rdi
	leaq	216(%rsp), %rsi
	movq	%rdi, %rdx
	callq	cie_cache_mult
	movss	27108(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	27112(%r14), %xmm1      # xmm1 = mem[0],zero,zero,zero
	minss	35380(%r14), %xmm0
	maxss	35384(%r14), %xmm1
	minss	43652(%r14), %xmm0
	maxss	43656(%r14), %xmm1
	movss	%xmm0, 49824(%r14)
	movss	%xmm1, 49828(%r14)
	movss	27116(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	27120(%r14), %xmm1      # xmm1 = mem[0],zero,zero,zero
	minss	35388(%r14), %xmm0
	maxss	35392(%r14), %xmm1
	minss	43660(%r14), %xmm0
	maxss	43664(%r14), %xmm1
	movss	%xmm0, 49832(%r14)
	movss	%xmm1, 49836(%r14)
	movss	27124(%r14), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	27128(%r14), %xmm1      # xmm1 = mem[0],zero,zero,zero
	minss	35396(%r14), %xmm0
	maxss	35400(%r14), %xmm1
	minss	43668(%r14), %xmm0
	maxss	43672(%r14), %xmm1
	movss	%xmm0, 49840(%r14)
	movss	%xmm1, 49844(%r14)
	movl	$0, 25000(%r14)
.LBB51_32:                              # %if.end.60.i
	xorl	%r13d, %r13d
	movl	2216(%rbp), %eax
	andl	128(%rbp), %eax
	testl	4304(%rbp), %eax
	je	.LBB51_33
# BB#60:                                # %do.end.84.i
	testq	%rbx, %rbx
	je	.LBB51_61
# BB#65:                                # %if.else.108.i
	leaq	6464(%rbx), %rsi
	leaq	144(%rsp), %rdi
	leaq	64(%rsp), %rbp
	movq	%rbp, %rdx
	callq	cie_matrix_mult3
	leaq	64(%r14), %rdi
	leaq	6512(%rbx), %rdx
	movq	%rbp, %rsi
	callq	cie_cache_mult
	leaq	8336(%r14), %rdi
	leaq	76(%rsp), %rsi
	leaq	14784(%rbx), %rdx
	callq	cie_cache_mult
	leaq	16608(%r14), %rdi
	leaq	88(%rsp), %rsi
	addq	$23056, %rbx            # imm = 0x5A10
	movq	%rbx, %rdx
	callq	cie_cache_mult
	movss	2164(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2168(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10436(%r14), %xmm0
	maxss	10440(%r14), %xmm1
	minss	18708(%r14), %xmm0
	maxss	18712(%r14), %xmm1
	movss	%xmm0, 24880(%r14)
	movss	%xmm1, 24884(%r14)
	movss	2172(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2176(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10444(%r14), %xmm0
	maxss	10448(%r14), %xmm1
	minss	18716(%r14), %xmm0
	maxss	18720(%r14), %xmm1
	movss	%xmm0, 24888(%r14)
	movss	%xmm1, 24892(%r14)
	movss	2180(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2184(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10452(%r14), %xmm0
	maxss	10456(%r14), %xmm1
	minss	18724(%r14), %xmm0
	maxss	18728(%r14), %xmm1
	movss	%xmm0, 24896(%r14)
	movss	%xmm1, 24900(%r14)
	movq	$1, 56(%r14)
	jmp	.LBB51_66
.LBB51_33:                              # %for.cond.135.preheader.i
	leaq	64(%r14), %rdi
	movq	%rbp, %rdx
	subq	$-128, %rdx
	leaq	144(%rsp), %rsi
	callq	cie_cache_mult
	leaq	8336(%r14), %rdi
	leaq	156(%rsp), %rsi
	leaq	2216(%rbp), %rdx
	callq	cie_cache_mult
	leaq	16608(%r14), %rdi
	leaq	168(%rsp), %rsi
	addq	$4304, %rbp             # imm = 0x10D0
	movq	%rbp, %rdx
	callq	cie_cache_mult
	movss	2164(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2168(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10436(%r14), %xmm0
	maxss	10440(%r14), %xmm1
	minss	18708(%r14), %xmm0
	maxss	18712(%r14), %xmm1
	movss	%xmm0, 24880(%r14)
	movss	%xmm1, 24884(%r14)
	movss	2172(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2176(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10444(%r14), %xmm0
	maxss	10448(%r14), %xmm1
	minss	18716(%r14), %xmm0
	maxss	18720(%r14), %xmm1
	movss	%xmm0, 24888(%r14)
	movss	%xmm1, 24892(%r14)
	movss	2180(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2184(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10452(%r14), %xmm0
	maxss	10456(%r14), %xmm1
	minss	18724(%r14), %xmm0
	maxss	18728(%r14), %xmm1
	movss	%xmm0, 24896(%r14)
	movss	%xmm1, 24900(%r14)
	movl	$0, 60(%r14)
	testq	%rbx, %rbx
	je	.LBB51_34
# BB#63:                                # %land.rhs.i
	cmpl	$0, 6504(%rbx)
	setne	%al
	jmp	.LBB51_64
.LBB51_61:                              # %if.then.86.i
	movl	180(%rsp), %eax
	movl	%eax, 60(%r14)
	movl	$0, 56(%r14)
	testl	%eax, %eax
	jne	.LBB51_66
# BB#62:                                # %for.cond.91.preheader.i
	leaq	64(%r14), %rdi
	movq	%rbp, %rdx
	subq	$-128, %rdx
	leaq	144(%rsp), %rsi
	callq	cie_cache_mult
	leaq	8336(%r14), %rdi
	leaq	156(%rsp), %rsi
	leaq	2216(%rbp), %rdx
	callq	cie_cache_mult
	leaq	16608(%r14), %rdi
	leaq	168(%rsp), %rsi
	addq	$4304, %rbp             # imm = 0x10D0
	movq	%rbp, %rdx
	callq	cie_cache_mult
	movss	2164(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2168(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10436(%r14), %xmm0
	maxss	10440(%r14), %xmm1
	minss	18708(%r14), %xmm0
	maxss	18712(%r14), %xmm1
	movss	%xmm0, 24880(%r14)
	movss	%xmm1, 24884(%r14)
	movss	2172(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2176(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10444(%r14), %xmm0
	maxss	10448(%r14), %xmm1
	minss	18716(%r14), %xmm0
	maxss	18720(%r14), %xmm1
	movss	%xmm0, 24888(%r14)
	movss	%xmm1, 24892(%r14)
	movss	2180(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2184(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10452(%r14), %xmm0
	maxss	10456(%r14), %xmm1
	minss	18724(%r14), %xmm0
	maxss	18728(%r14), %xmm1
	movss	%xmm0, 24896(%r14)
	movss	%xmm1, 24900(%r14)
	jmp	.LBB51_66
.LBB51_68:                              # %cie_joint_caches_init.exit.thread31
	movl	%eax, %r13d
	jmp	.LBB51_67
.LBB51_34:
	xorl	%eax, %eax
.LBB51_64:                              # %land.end.i
	movzbl	%al, %eax
	movl	%eax, 56(%r14)
.LBB51_66:                              # %cie_joint_caches_complete.exit
	movq	32(%r12), %rax
	movq	%rax, (%r14)
	movq	32(%r15), %rax
	movq	%rax, 8(%r14)
	movabsq	$8589934594, %rax       # imm = 0x200000002
	movq	%rax, 16(%r14)
.LBB51_67:                              # %cleanup.15
	movl	%r13d, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gs_cie_jc_complete, .Lfunc_end51-gs_cie_jc_complete
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI51_0:
	.quad	.LBB51_3
	.quad	.LBB51_3
	.quad	.LBB51_3
	.quad	.LBB51_4

	.text
	.globl	gs_cie_compute_points_sd
	.align	16, 0x90
	.type	gs_cie_compute_points_sd,@function
gs_cie_compute_points_sd:               # @gs_cie_compute_points_sd
	.cfi_startproc
# BB#0:                                 # %entry
	movl	112(%rsi), %eax
	movl	%eax, 24912(%rdi)
	movq	104(%rsi), %rax
	movq	%rax, 24904(%rdi)
	movss	24904(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	24908(%rdi), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	24912(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	72(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	84(%rdx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	96(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 24916(%rdi)
	movss	76(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	88(%rdx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	100(%rdx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 24920(%rdi)
	mulss	80(%rdx), %xmm2
	mulss	92(%rdx), %xmm0
	addss	%xmm2, %xmm0
	mulss	104(%rdx), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 24924(%rdi)
	movl	124(%rsi), %eax
	movl	%eax, 24936(%rdi)
	movq	116(%rsi), %rax
	movq	%rax, 24928(%rdi)
	movss	24928(%rdi), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	24932(%rdi), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	24936(%rdi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	72(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	84(%rdx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	96(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 24940(%rdi)
	movss	76(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	88(%rdx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	addss	%xmm3, %xmm4
	movss	100(%rdx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm4, %xmm3
	movss	%xmm3, 24944(%rdi)
	mulss	80(%rdx), %xmm2
	mulss	92(%rdx), %xmm0
	addss	%xmm2, %xmm0
	mulss	104(%rdx), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 24948(%rdi)
	movl	56(%rdx), %eax
	movl	%eax, 24960(%rdi)
	movq	48(%rdx), %rax
	movq	%rax, 24952(%rdi)
	movl	564(%rdx), %eax
	movl	%eax, 24972(%rdi)
	movq	556(%rdx), %rax
	movq	%rax, 24964(%rdi)
	movl	68(%rdx), %eax
	movl	%eax, 24984(%rdi)
	movq	60(%rdx), %rax
	movq	%rax, 24976(%rdi)
	movl	576(%rdx), %eax
	movl	%eax, 24996(%rdi)
	movq	568(%rdx), %rax
	movq	%rax, 24988(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end52:
	.size	gs_cie_compute_points_sd, .Lfunc_end52-gs_cie_compute_points_sd
	.cfi_endproc

	.globl	gx_cie_to_xyz_alloc
	.align	16, 0x90
	.type	gx_cie_to_xyz_alloc,@function
gx_cie_to_xyz_alloc:                    # @gx_cie_to_xyz_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp179:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp180:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp182:
	.cfi_def_cfa_offset 80
.Ltmp183:
	.cfi_offset %rbx, -56
.Ltmp184:
	.cfi_offset %r12, -48
.Ltmp185:
	.cfi_offset %r13, -40
.Ltmp186:
	.cfi_offset %r14, -32
.Ltmp187:
	.cfi_offset %r15, -24
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movl	$st_imager_state, %esi
	movl	$.L.str.10, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %r12
	xorl	%r15d, %r15d
	movq	%rbp, %rax
	.align	16, 0x90
.LBB53_1:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	addl	$-5, %ecx
	cmpl	$3, %ecx
	jbe	.LBB53_2
# BB#5:                                 # %sw.default.i
                                        #   in Loop: Header=BB53_1 Depth=1
	movq	%rax, %rdi
	callq	gs_cspace_base_space
	testq	%rax, %rax
	movl	$0, %ebp
	jne	.LBB53_1
	jmp	.LBB53_6
.LBB53_2:                               # %do.body.i
	jmpq	*.LJTI53_0(,%rcx,8)
.LBB53_3:                               # %sw.bb.i
	movq	72(%rax), %r15
	movq	%r15, %rbp
	jmp	.LBB53_6
.LBB53_4:                               # %sw.bb.13.i
	movq	72(%rax), %rbp
	xorl	%r15d, %r15d
.LBB53_6:                               # %cie_cs_common_abc.exit
	movl	$-25, %r14d
	testq	%r12, %r12
	je	.LBB53_11
# BB#7:                                 # %if.end
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	xorl	%esi, %esi
	movl	$1616, %edx             # imm = 0x650
	movq	%r12, %rdi
	callq	memset
	movq	%r13, 8(%r12)
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	gs_imager_state_initialize
	movl	$st_joint_caches, %esi
	movl	$.L.str.11, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB53_12
# BB#8:                                 # %for.cond.preheader
	leaq	64(%rbx), %rdi
	leaq	64(%rbp), %rsi
	movq	%rbp, %rdx
	subq	$-128, %rdx
	callq	cie_cache_mult
	leaq	8336(%rbx), %rdi
	leaq	76(%rbp), %rsi
	leaq	2216(%rbp), %rdx
	callq	cie_cache_mult
	movq	%rbx, %rdi
	addq	$16608, %rdi            # imm = 0x40E0
	leaq	88(%rbp), %rsi
	addq	$4304, %rbp             # imm = 0x10D0
	movq	%rbp, %rdx
	callq	cie_cache_mult
	movss	2164(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2168(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10436(%rbx), %xmm0
	maxss	10440(%rbx), %xmm1
	minss	18708(%rbx), %xmm0
	maxss	18712(%rbx), %xmm1
	movss	%xmm0, 24880(%rbx)
	movss	%xmm1, 24884(%rbx)
	movss	2172(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2176(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10444(%rbx), %xmm0
	maxss	10448(%rbx), %xmm1
	minss	18716(%rbx), %xmm0
	maxss	18720(%rbx), %xmm1
	movss	%xmm0, 24888(%rbx)
	movss	%xmm1, 24892(%rbx)
	movss	2180(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	2184(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	minss	10452(%rbx), %xmm0
	maxss	10456(%rbx), %xmm1
	minss	18724(%rbx), %xmm0
	maxss	18728(%rbx), %xmm1
	movss	%xmm0, 24896(%rbx)
	movss	%xmm1, 24900(%rbx)
	movl	$0, 60(%rbx)
	xorl	%r14d, %r14d
	testq	%r15, %r15
	movl	$0, %eax
	je	.LBB53_10
# BB#9:                                 # %land.rhs
	cmpl	$0, 6504(%r15)
	setne	%al
.LBB53_10:                              # %land.end
	movzbl	%al, %eax
	movl	%eax, 56(%rbx)
	movq	$gx_cie_xyz_remap_finish, 48(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	32(%rax), %rax
	movq	%rax, (%rbx)
	movl	$2, 20(%rbx)
	movq	%rbx, 1008(%r12)
	movl	$1, 408(%r12)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%r12, (%rax)
	jmp	.LBB53_11
.LBB53_12:                              # %if.then.8
	movl	$.L.str.10, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*24(%r13)
.LBB53_11:                              # %cleanup
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gx_cie_to_xyz_alloc, .Lfunc_end53-gx_cie_to_xyz_alloc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI53_0:
	.quad	.LBB53_3
	.quad	.LBB53_3
	.quad	.LBB53_3
	.quad	.LBB53_4

	.text
	.globl	gx_cie_to_xyz_free
	.align	16, 0x90
	.type	gx_cie_to_xyz_free,@function
gx_cie_to_xyz_free:                     # @gx_cie_to_xyz_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp189:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp191:
	.cfi_def_cfa_offset 32
.Ltmp192:
	.cfi_offset %rbx, -24
.Ltmp193:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %r14
	movq	1008(%rbx), %rsi
	movl	$.L.str.11, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	344(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB54_3
# BB#1:                                 # %do.end
	decq	16(%rsi)
	jne	.LBB54_3
# BB#2:                                 # %do.end.16
	movq	24(%rsi), %rdi
	movl	$.L.str.12, %edx
	callq	*32(%rsi)
	movq	$0, 344(%rbx)
.LBB54_3:                               # %if.end.32
	movq	336(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB54_6
# BB#4:                                 # %do.end.42
	decq	88(%rsi)
	jne	.LBB54_6
# BB#5:                                 # %do.end.57
	movq	96(%rsi), %rdi
	movl	$.L.str.12, %edx
	callq	*104(%rsi)
	movq	$0, 336(%rbx)
.LBB54_6:                               # %if.end.76
	movq	352(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB54_9
# BB#7:                                 # %do.end.86
	decq	16(%rsi)
	jne	.LBB54_9
# BB#8:                                 # %do.end.101
	movq	24(%rsi), %rdi
	movl	$.L.str.12, %edx
	callq	*32(%rsi)
	movq	$0, 352(%rbx)
.LBB54_9:                               # %if.end.120
	movq	24(%r14), %rax
	movl	$.L.str.13, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end54:
	.size	gx_cie_to_xyz_free, .Lfunc_end54-gx_cie_to_xyz_free
	.cfi_endproc

	.globl	cie_matrix_transpose3
	.align	16, 0x90
	.type	cie_matrix_transpose3,@function
cie_matrix_transpose3:                  # @cie_matrix_transpose3
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rdi), %eax
	movl	%eax, (%rsi)
	movl	12(%rdi), %eax
	movl	%eax, 4(%rsi)
	movl	24(%rdi), %eax
	movl	%eax, 8(%rsi)
	movl	4(%rdi), %eax
	movl	%eax, 12(%rsi)
	movl	16(%rdi), %eax
	movl	%eax, 16(%rsi)
	movl	28(%rdi), %eax
	movl	%eax, 20(%rsi)
	movl	8(%rdi), %eax
	movl	%eax, 24(%rsi)
	movl	20(%rdi), %eax
	movl	%eax, 28(%rsi)
	movl	32(%rdi), %eax
	movl	%eax, 32(%rsi)
	retq
.Lfunc_end55:
	.size	cie_matrix_transpose3, .Lfunc_end55-cie_matrix_transpose3
	.cfi_endproc

	.globl	gx_color_space_needs_cie_caches
	.align	16, 0x90
	.type	gx_color_space_needs_cie_caches,@function
gx_color_space_needs_cie_caches:        # @gx_color_space_needs_cie_caches
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	movl	$3608, %ecx             # imm = 0xE18
	jmp	.LBB56_1
	.align	16, 0x90
.LBB56_6:                               # %sw.bb.2
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	40(%rdi), %rdi
.LBB56_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rdx
	movl	(%rdx), %edx
	cmpl	$11, %edx
	ja	.LBB56_4
# BB#2:                                 # %tailrecurse
                                        #   in Loop: Header=BB56_1 Depth=1
	btl	%edx, %ecx
	jb	.LBB56_6
# BB#3:                                 # %tailrecurse
	movl	$480, %ecx              # imm = 0x1E0
	btl	%edx, %ecx
	jb	.LBB56_5
.LBB56_4:                               # %return.loopexit3
	xorl	%eax, %eax
.LBB56_5:                               # %return
	retq
.Lfunc_end56:
	.size	gx_color_space_needs_cie_caches, .Lfunc_end56-gx_color_space_needs_cie_caches
	.cfi_endproc

	.type	Range3_default,@object  # @Range3_default
	.section	.rodata,"a",@progbits
	.globl	Range3_default
	.align	4
Range3_default:
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	1065353216              # float 1
	.size	Range3_default, 24

	.type	Range4_default,@object  # @Range4_default
	.globl	Range4_default
	.align	4
Range4_default:
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	1065353216              # float 1
	.size	Range4_default, 32

	.type	DecodeDEFG_default,@object # @DecodeDEFG_default
	.globl	DecodeDEFG_default
	.align	8
DecodeDEFG_default:
	.quad	defg_identity
	.quad	defg_identity
	.quad	defg_identity
	.quad	defg_identity
	.size	DecodeDEFG_default, 32

	.type	DecodeDEFG_from_cache,@object # @DecodeDEFG_from_cache
	.globl	DecodeDEFG_from_cache
	.align	8
DecodeDEFG_from_cache:
	.quad	defg_from_cache_0
	.quad	defg_from_cache_1
	.quad	defg_from_cache_2
	.quad	defg_from_cache_3
	.size	DecodeDEFG_from_cache, 32

	.type	DecodeDEF_default,@object # @DecodeDEF_default
	.globl	DecodeDEF_default
	.align	8
DecodeDEF_default:
	.quad	def_identity
	.quad	def_identity
	.quad	def_identity
	.size	DecodeDEF_default, 24

	.type	DecodeDEF_from_cache,@object # @DecodeDEF_from_cache
	.globl	DecodeDEF_from_cache
	.align	8
DecodeDEF_from_cache:
	.quad	def_from_cache_0
	.quad	def_from_cache_1
	.quad	def_from_cache_2
	.size	DecodeDEF_from_cache, 24

	.type	DecodeABC_default,@object # @DecodeABC_default
	.globl	DecodeABC_default
	.align	8
DecodeABC_default:
	.quad	abc_identity
	.quad	abc_identity
	.quad	abc_identity
	.size	DecodeABC_default, 24

	.type	DecodeABC_from_cache,@object # @DecodeABC_from_cache
	.globl	DecodeABC_from_cache
	.align	8
DecodeABC_from_cache:
	.quad	abc_from_cache_0
	.quad	abc_from_cache_1
	.quad	abc_from_cache_2
	.size	DecodeABC_from_cache, 24

	.type	DecodeLMN_default,@object # @DecodeLMN_default
	.globl	DecodeLMN_default
	.align	8
DecodeLMN_default:
	.quad	common_identity
	.quad	common_identity
	.quad	common_identity
	.size	DecodeLMN_default, 24

	.type	DecodeLMN_from_cache,@object # @DecodeLMN_from_cache
	.globl	DecodeLMN_from_cache
	.align	8
DecodeLMN_from_cache:
	.quad	lmn_from_cache_0
	.quad	lmn_from_cache_1
	.quad	lmn_from_cache_2
	.size	DecodeLMN_from_cache, 24

	.type	Matrix3_default,@object # @Matrix3_default
	.globl	Matrix3_default
	.align	4
Matrix3_default:
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	1                       # 0x1
	.size	Matrix3_default, 40

	.type	RangeA_default,@object  # @RangeA_default
	.globl	RangeA_default
	.align	4
RangeA_default:
	.long	0                       # float 0
	.long	1065353216              # float 1
	.size	RangeA_default, 8

	.type	DecodeA_default,@object # @DecodeA_default
	.globl	DecodeA_default
	.align	8
DecodeA_default:
	.quad	a_identity
	.size	DecodeA_default, 8

	.type	DecodeA_from_cache,@object # @DecodeA_from_cache
	.globl	DecodeA_from_cache
	.align	8
DecodeA_from_cache:
	.quad	a_from_cache
	.size	DecodeA_from_cache, 8

	.type	MatrixA_default,@object # @MatrixA_default
	.globl	MatrixA_default
	.align	4
MatrixA_default:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.size	MatrixA_default, 12

	.type	BlackPoint_default,@object # @BlackPoint_default
	.globl	BlackPoint_default
	.align	4
BlackPoint_default:
	.zero	12
	.size	BlackPoint_default, 12

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gs_setcolorrendering"
	.size	.L.str.5, 21

	.type	st_joint_caches,@object # @st_joint_caches
	.section	.rodata,"a",@progbits
	.align	8
st_joint_caches:
	.long	49856                   # 0xc2c0
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_joint_caches, 64

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"gx_unshare_cie_caches"
	.size	.L.str.6, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_cie_to_xyz_alloc(imager state)"
	.size	.L.str.10, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_cie_to_xyz_free(joint caches)"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gx_cie_to_xyz_free"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gx_cie_to_xyz_free(imager state)"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gx_cie_joint_caches"
	.size	.L.str.14, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
