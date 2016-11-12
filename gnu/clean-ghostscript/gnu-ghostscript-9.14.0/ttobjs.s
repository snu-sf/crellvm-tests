	.text
	.file	"ttobjs.bc"
	.globl	Goto_CodeRange
	.align	16, 0x90
	.type	Goto_CodeRange,@function
Goto_CodeRange:                         # @Goto_CodeRange
	.cfi_startproc
# BB#0:                                 # %entry
	leal	-1(%rsi), %ecx
	movl	$1028, %eax             # imm = 0x404
	cmpl	$2, %ecx
	ja	.LBB0_4
# BB#1:                                 # %if.end
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	movq	368(%rdi,%rcx), %r8
	movl	$1039, %eax             # imm = 0x40F
	testq	%r8, %r8
	je	.LBB0_4
# BB#2:                                 # %if.end.4
	movl	376(%rdi,%rcx), %ecx
	movl	$1027, %eax             # imm = 0x403
	cmpl	%edx, %ecx
	jl	.LBB0_4
# BB#3:                                 # %if.end.7
	movq	%r8, 16(%rdi)
	movl	%ecx, 28(%rdi)
	movl	%edx, 24(%rdi)
	movl	%esi, 12(%rdi)
	xorl	%eax, %eax
.LBB0_4:                                # %cleanup
	retq
.Lfunc_end0:
	.size	Goto_CodeRange, .Lfunc_end0-Goto_CodeRange
	.cfi_endproc

	.globl	Unset_CodeRange
	.align	16, 0x90
	.type	Unset_CodeRange,@function
Unset_CodeRange:                        # @Unset_CodeRange
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 16(%rdi)
	movl	$0, 28(%rdi)
	retq
.Lfunc_end1:
	.size	Unset_CodeRange, .Lfunc_end1-Unset_CodeRange
	.cfi_endproc

	.globl	Get_CodeRange
	.align	16, 0x90
	.type	Get_CodeRange,@function
Get_CodeRange:                          # @Get_CodeRange
	.cfi_startproc
# BB#0:                                 # %entry
	decl	%esi
	movslq	%esi, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	leaq	368(%rdi,%rdx), %rcx
	cmovbeq	%rcx, %rax
	retq
.Lfunc_end2:
	.size	Get_CodeRange, .Lfunc_end2-Get_CodeRange
	.cfi_endproc

	.globl	Set_CodeRange
	.align	16, 0x90
	.type	Set_CodeRange,@function
Set_CodeRange:                          # @Set_CodeRange
	.cfi_startproc
# BB#0:                                 # %entry
	decl	%esi
	movl	$1028, %eax             # imm = 0x404
	cmpl	$2, %esi
	ja	.LBB3_2
# BB#1:                                 # %if.end
	movslq	%esi, %rax
	shlq	$4, %rax
	movq	%rdx, 368(%rdi,%rax)
	movl	%ecx, 376(%rdi,%rax)
	xorl	%eax, %eax
.LBB3_2:                                # %return
	retq
.Lfunc_end3:
	.size	Set_CodeRange, .Lfunc_end3-Set_CodeRange
	.cfi_endproc

	.globl	Clear_CodeRange
	.align	16, 0x90
	.type	Clear_CodeRange,@function
Clear_CodeRange:                        # @Clear_CodeRange
	.cfi_startproc
# BB#0:                                 # %entry
	decl	%esi
	movl	$1028, %eax             # imm = 0x404
	cmpl	$2, %esi
	ja	.LBB4_2
# BB#1:                                 # %if.end
	movslq	%esi, %rax
	shlq	$4, %rax
	movq	$0, 368(%rdi,%rax)
	movl	$0, 376(%rdi,%rax)
	xorl	%eax, %eax
.LBB4_2:                                # %return
	retq
.Lfunc_end4:
	.size	Clear_CodeRange, .Lfunc_end4-Clear_CodeRange
	.cfi_endproc

	.globl	Context_Destroy
	.align	16, 0x90
	.type	Context_Destroy,@function
Context_Destroy:                        # @Context_Destroy
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
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB5_4
# BB#1:                                 # %if.end
	decl	1404(%rbx)
	jne	.LBB5_4
# BB#2:                                 # %if.end.3
	movq	1408(%rbx), %r14
	testq	%r14, %r14
	je	.LBB5_4
# BB#3:                                 # %if.end.6
	movq	832(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 832(%rbx)
	movq	824(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 824(%rbx)
	movq	816(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 816(%rbx)
	movq	808(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 808(%rbx)
	movq	840(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 840(%rbx)
	movq	848(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 848(%rbx)
	movq	$0, 800(%rbx)
	movq	896(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 896(%rbx)
	movq	888(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 888(%rbx)
	movq	880(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 880(%rbx)
	movq	872(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 872(%rbx)
	movq	864(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 864(%rbx)
	movq	904(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 904(%rbx)
	movq	$0, 856(%rbx)
	movq	440(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 440(%rbx)
	movl	$0, 432(%rbx)
	movq	360(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 360(%rbx)
	movl	$0, 352(%rbx)
	movl	$0, 348(%rbx)
	movl	$0, 344(%rbx)
	movl	$0, 1400(%rbx)
	movq	$0, (%rbx)
.LBB5_4:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	Context_Destroy, .Lfunc_end5-Context_Destroy
	.cfi_endproc

	.globl	Context_Create
	.align	16, 0x90
	.type	Context_Create,@function
Context_Create:                         # @Context_Create
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
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	8(%r15), %rax
	movq	160(%rax), %rax
	movq	32(%rax), %rbx
	movq	%rbx, 1408(%r13)
	movzwl	40(%r15), %ebp
	movl	100(%r15), %eax
	addl	$2, %eax
	movzwl	32(%r15), %r12d
	cmpl	$100, %eax
	movl	$100, %r14d
	cmovgel	%eax, %r14d
	cmpl	$31, 352(%r13)
	jg	.LBB6_2
# BB#1:                                 # %cond.false
	movq	360(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	movl	$512, %esi              # imm = 0x200
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 360(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
.LBB6_2:                                # %lor.lhs.false
	addl	$32, %ebp
	cmpl	%ebp, 432(%r13)
	jge	.LBB6_4
# BB#3:                                 # %cond.false.15
	movq	440(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%rbp,8), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 440(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
.LBB6_4:                                # %lor.lhs.false.24
	movl	1396(%r13), %eax
	cmpl	%r14d, %eax
	jge	.LBB6_7
# BB#5:                                 # %cond.false.29
	movq	808(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%r14,4), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 808(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#6:                                 # %cond.false.29.lor.lhs.false.39_crit_edge
	movl	1396(%r13), %eax
.LBB6_7:                                # %lor.lhs.false.39
	cmpl	%r14d, %eax
	jge	.LBB6_10
# BB#8:                                 # %cond.false.44
	movq	816(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%r14,4), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 816(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#9:                                 # %cond.false.44.lor.lhs.false.55_crit_edge
	movl	1396(%r13), %eax
.LBB6_10:                               # %lor.lhs.false.55
	cmpl	%r14d, %eax
	jge	.LBB6_13
# BB#11:                                # %cond.false.60
	movq	824(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%r14,4), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 824(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#12:                                # %cond.false.60.lor.lhs.false.71_crit_edge
	movl	1396(%r13), %eax
.LBB6_13:                               # %lor.lhs.false.71
	cmpl	%r14d, %eax
	jge	.LBB6_16
# BB#14:                                # %cond.false.76
	movq	832(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%r14,4), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 832(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#15:                                # %cond.false.76.lor.lhs.false.87_crit_edge
	movl	1396(%r13), %eax
.LBB6_16:                               # %lor.lhs.false.87
	cmpl	%r14d, %eax
	jge	.LBB6_18
# BB#17:                                # %cond.false.92
	movq	840(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 840(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
.LBB6_18:                               # %lor.lhs.false.103
	movl	856(%r13), %eax
	cmpl	%r12d, %eax
	jge	.LBB6_21
# BB#19:                                # %cond.false.108
	movq	864(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%r12,4), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 864(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#20:                                # %cond.false.108.lor.lhs.false.120_crit_edge
	movl	856(%r13), %eax
.LBB6_21:                               # %lor.lhs.false.120
	cmpl	%r12d, %eax
	jge	.LBB6_24
# BB#22:                                # %cond.false.126
	movq	872(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%r12,4), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 872(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#23:                                # %cond.false.126.lor.lhs.false.138_crit_edge
	movl	856(%r13), %eax
.LBB6_24:                               # %lor.lhs.false.138
	cmpl	%r12d, %eax
	jge	.LBB6_27
# BB#25:                                # %cond.false.144
	movq	880(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%r12,4), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 880(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#26:                                # %cond.false.144.lor.lhs.false.156_crit_edge
	movl	856(%r13), %eax
.LBB6_27:                               # %lor.lhs.false.156
	cmpl	%r12d, %eax
	jge	.LBB6_30
# BB#28:                                # %cond.false.162
	movq	888(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	leal	(,%r12,4), %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 888(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#29:                                # %cond.false.162.lor.lhs.false.174_crit_edge
	movl	856(%r13), %eax
.LBB6_30:                               # %lor.lhs.false.174
	cmpl	%r12d, %eax
	jge	.LBB6_32
# BB#31:                                # %cond.false.180
	movq	896(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 896(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
.LBB6_32:                               # %lor.lhs.false.192
	movl	1392(%r13), %eax
	movl	104(%r15), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_35
# BB#33:                                # %cond.false.196
	movq	848(%r13), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*16(%rbx)
	movl	104(%r15), %esi
	addl	%esi, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 848(%r13)
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB6_36
# BB#34:                                # %cond.false.196.if.end.209_crit_edge
	movl	1392(%r13), %eax
	movl	104(%r15), %ecx
.LBB6_35:                               # %if.end.209
	movl	352(%r13), %edx
	cmpl	$31, %edx
	movl	$32, %esi
	cmovgl	%edx, %esi
	movl	%esi, 352(%r13)
	movl	432(%r13), %edx
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	movl	%ebp, 432(%r13)
	movl	856(%r13), %edx
	cmpl	%r12d, %edx
	cmovgel	%edx, %r12d
	movl	%r12d, 856(%r13)
	movl	1400(%r13), %edx
	movzwl	42(%r15), %esi
	cmpl	%esi, %edx
	cmovgel	%edx, %esi
	movl	%esi, 1400(%r13)
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 1392(%r13)
	movl	1396(%r13), %eax
	cmpl	%r14d, %eax
	cmovgel	%eax, %r14d
	movl	%r14d, 1396(%r13)
	incl	1404(%r13)
	xorl	%eax, %eax
.LBB6_36:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Context_Create, .Lfunc_end6-Context_Create
	.cfi_endproc

	.globl	Context_Load
	.align	16, 0x90
	.type	Context_Load,@function
Context_Load:                           # @Context_Load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	%rax, (%rbx)
	movl	144(%r14), %eax
	movl	%eax, 44(%rbx)
	movl	160(%r14), %eax
	movl	%eax, 56(%rbx)
	movq	152(%r14), %rax
	movq	%rax, 48(%rbx)
	movq	168(%r14), %rax
	movq	%rax, 64(%rbx)
	movl	176(%r14), %eax
	movl	%eax, 72(%rbx)
	leaq	76(%rbx), %rdi
	leaq	180(%r14), %rsi
	movl	$256, %edx              # imm = 0x100
	callq	memcpy
	movups	128(%r14), %xmm0
	movups	%xmm0, 584(%rbx)
	movups	112(%r14), %xmm0
	movups	%xmm0, 568(%rbx)
	movups	96(%r14), %xmm0
	movups	%xmm0, 552(%rbx)
	movups	80(%r14), %xmm0
	movups	%xmm0, 536(%rbx)
	movups	16(%r14), %xmm0
	movups	32(%r14), %xmm1
	movups	48(%r14), %xmm2
	movups	64(%r14), %xmm3
	movups	%xmm3, 520(%rbx)
	movups	%xmm2, 504(%rbx)
	movups	%xmm1, 488(%rbx)
	movups	%xmm0, 472(%rbx)
	movups	440(%r14), %xmm0
	movups	%xmm0, 368(%rbx)
	movups	456(%r14), %xmm0
	movups	%xmm0, 384(%rbx)
	movups	472(%r14), %xmm0
	movups	%xmm0, 400(%rbx)
	movl	$0, 800(%rbx)
	movl	$0, 804(%rbx)
	movl	$0, 912(%rbx)
	movq	568(%r14), %rax
	movq	%rax, 1000(%rbx)
	movups	552(%r14), %xmm0
	movups	%xmm0, 984(%rbx)
	movups	488(%r14), %xmm0
	movups	504(%r14), %xmm1
	movups	520(%r14), %xmm2
	movups	536(%r14), %xmm3
	movups	%xmm3, 968(%rbx)
	movups	%xmm2, 952(%rbx)
	movups	%xmm1, 936(%rbx)
	movups	%xmm0, 920(%rbx)
	movl	664(%r14), %eax
	movl	%eax, 1100(%rbx)
	movq	672(%r14), %rax
	movq	%rax, 1104(%rbx)
	movl	680(%r14), %eax
	movl	%eax, 416(%rbx)
	movq	688(%r14), %rax
	movq	%rax, 424(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	Context_Load, .Lfunc_end7-Context_Load
	.cfi_endproc

	.globl	Context_Save
	.align	16, 0x90
	.type	Context_Save,@function
Context_Save:                           # @Context_Save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movups	368(%rbx), %xmm0
	movups	%xmm0, 440(%r14)
	movq	$0, 368(%rbx)
	movl	$0, 376(%rbx)
	movups	384(%rbx), %xmm0
	movups	%xmm0, 456(%r14)
	movq	$0, 384(%rbx)
	movl	$0, 392(%rbx)
	movups	400(%rbx), %xmm0
	movups	%xmm0, 472(%r14)
	movq	$0, 400(%rbx)
	movl	$0, 408(%rbx)
	movl	$0, 44(%rbx)
	movl	$0, 56(%rbx)
	leaq	180(%r14), %rdi
	leaq	76(%rbx), %rsi
	movl	$256, %edx              # imm = 0x100
	callq	memcpy
	movl	72(%rbx), %eax
	movl	%eax, 176(%r14)
	movl	$0, 72(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 1100(%rbx)
	movq	$0, 1104(%rbx)
	movl	$0, 416(%rbx)
	movq	$0, 424(%rbx)
	movq	$0, (%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	Context_Save, .Lfunc_end8-Context_Save
	.cfi_endproc

	.globl	Context_Run
	.align	16, 0x90
	.type	Context_Run,@function
Context_Run:                            # @Context_Run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	400(%rbx), %rcx
	movl	$1039, %eax             # imm = 0x40F
	testq	%rcx, %rcx
	je	.LBB9_4
# BB#1:                                 # %if.end.4.i
	movl	408(%rbx), %edx
	movl	$1027, %eax             # imm = 0x403
	testl	%edx, %edx
	js	.LBB9_4
# BB#2:                                 # %if.end
	movq	%rcx, 16(%rbx)
	movl	%edx, 28(%rbx)
	movl	$0, 24(%rbx)
	movl	$3, 12(%rbx)
	movq	848(%rbx), %rax
	movq	%rax, 680(%rbx)
	movups	800(%rbx), %xmm0
	movups	816(%rbx), %xmm1
	movups	832(%rbx), %xmm2
	movups	%xmm2, 664(%rbx)
	movups	%xmm1, 648(%rbx)
	movups	%xmm0, 632(%rbx)
	movq	848(%rbx), %rax
	movq	%rax, 736(%rbx)
	movups	800(%rbx), %xmm0
	movups	816(%rbx), %xmm1
	movups	832(%rbx), %xmm2
	movups	%xmm2, 720(%rbx)
	movups	%xmm1, 704(%rbx)
	movups	%xmm0, 688(%rbx)
	movq	848(%rbx), %rax
	movq	%rax, 792(%rbx)
	movups	800(%rbx), %xmm0
	movups	816(%rbx), %xmm1
	movups	832(%rbx), %xmm2
	movups	%xmm2, 776(%rbx)
	movups	%xmm1, 760(%rbx)
	movups	%xmm0, 744(%rbx)
	movl	$1, 996(%rbx)
	movl	$1, 1000(%rbx)
	movl	$1, 1004(%rbx)
	movl	$16384, 936(%rbx)       # imm = 0x4000
	movl	$16384, 940(%rbx)       # imm = 0x4000
	movl	$16384, 932(%rbx)       # imm = 0x4000
	movl	$1, 956(%rbx)
	movq	$1, 944(%rbx)
	movl	$0, 436(%rbx)
	movl	$0, 348(%rbx)
	xorl	%eax, %eax
	testl	%esi, %esi
	jne	.LBB9_4
# BB#3:                                 # %if.then.17
	movq	%rbx, %rdi
	callq	RunIns
	movq	$0, 16(%rbx)
	movl	$0, 28(%rbx)
.LBB9_4:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end9:
	.size	Context_Run, .Lfunc_end9-Context_Run
	.cfi_endproc

	.globl	Instance_Destroy
	.align	16, 0x90
	.type	Instance_Destroy,@function
Instance_Destroy:                       # @Instance_Destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB10_3
# BB#1:                                 # %if.end
	movq	(%rbx), %rcx
	movl	$256, %eax              # imm = 0x100
	testq	%rcx, %rcx
	je	.LBB10_3
# BB#2:                                 # %if.end.3
	movq	8(%rcx), %rax
	movq	160(%rax), %rax
	movq	32(%rax), %r14
	movq	672(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 672(%rbx)
	movl	$0, 664(%rbx)
	movq	152(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 152(%rbx)
	movq	168(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 168(%rbx)
	movq	688(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 688(%rbx)
	movl	$0, 144(%rbx)
	movl	$0, 160(%rbx)
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	xorl	%eax, %eax
.LBB10_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	Instance_Destroy, .Lfunc_end10-Instance_Destroy
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.long	640                     # 0x280
	.long	96                      # 0x60
	.long	96                      # 0x60
	.long	0                       # 0x0
	.text
	.globl	Instance_Create
	.align	16, 0x90
	.type	Instance_Create,@function
Instance_Create:                        # @Instance_Create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	8(%rbp), %rax
	movq	160(%rax), %rax
	movq	32(%rax), %r14
	movq	$0, 152(%rbx)
	movq	$0, 168(%rbx)
	movq	$0, 672(%rbx)
	movq	$0, 688(%rbx)
	movq	%rbp, (%rbx)
	movl	$0, 8(%rbx)
	movzwl	36(%rbp), %eax
	movl	%eax, 144(%rbx)
	movzwl	38(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	movl	%eax, 160(%rbx)
	movl	$0, 176(%rbx)
	jb	.LBB11_2
# BB#1:                                 # %if.then
	movw	$255, 38(%rbp)
.LBB11_2:                               # %if.end
	leaq	180(%rbx), %rdi
	movzbl	%al, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	144(%rbx), %eax
	cmpl	$49, %eax
	jg	.LBB11_4
# BB#3:                                 # %if.then.13
	movl	$50, 144(%rbx)
	movl	$50, %eax
.LBB11_4:                               # %if.end.15
	movl	80(%rbp), %ecx
	movl	%ecx, 664(%rbx)
	movaps	.LCPI11_0(%rip), %xmm0  # xmm0 = [640,96,96,0]
	movups	%xmm0, 16(%rbx)
	movl	$0, 32(%rbx)
	movl	$0, 136(%rbx)
	movl	$0, 140(%rbx)
	movzwl	34(%rbp), %ecx
	movl	%ecx, 680(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 120(%rbx)
	testl	%eax, %eax
	jle	.LBB11_6
# BB#5:                                 # %cond.false
	movq	152(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movl	144(%rbx), %esi
	shll	$4, %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*(%r14)
	movq	%rax, 152(%rbx)
	testq	%rax, %rax
	je	.LBB11_13
.LBB11_6:                               # %lor.lhs.false
	cmpl	$0, 160(%rbx)
	jle	.LBB11_8
# BB#7:                                 # %cond.false.41
	movq	168(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movl	160(%rbx), %esi
	shll	$4, %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*(%r14)
	movq	%rax, 168(%rbx)
	testq	%rax, %rax
	je	.LBB11_13
.LBB11_8:                               # %lor.lhs.false.52
	cmpl	$0, 664(%rbx)
	jle	.LBB11_10
# BB#9:                                 # %cond.false.57
	movq	672(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movl	664(%rbx), %esi
	shll	$3, %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*(%r14)
	movq	%rax, 672(%rbx)
	testq	%rax, %rax
	je	.LBB11_13
.LBB11_10:                              # %lor.lhs.false.68
	cmpl	$0, 680(%rbx)
	jle	.LBB11_12
# BB#11:                                # %cond.false.73
	movq	688(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movl	680(%rbx), %esi
	shll	$3, %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*(%r14)
	movq	%rax, 688(%rbx)
	testq	%rax, %rax
	je	.LBB11_13
.LBB11_12:                              # %if.end.85
	movq	152(%rbx), %rdi
	movslq	144(%rbx), %rdx
	shlq	$4, %rdx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	memset
	movq	168(%rbx), %rdi
	movslq	160(%rbx), %rdx
	shlq	$4, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	Default_GraphicsState+80(%rip), %rax
	movq	%rax, 568(%rbx)
	movups	Default_GraphicsState+64(%rip), %xmm0
	movups	%xmm0, 552(%rbx)
	movups	Default_GraphicsState+48(%rip), %xmm0
	movups	%xmm0, 536(%rbx)
	movups	Default_GraphicsState+32(%rip), %xmm0
	movups	%xmm0, 520(%rbx)
	movups	Default_GraphicsState+16(%rip), %xmm0
	movups	%xmm0, 504(%rbx)
	movups	Default_GraphicsState(%rip), %xmm0
	movups	%xmm0, 488(%rbx)
	jmp	.LBB11_15
.LBB11_13:                              # %if.end.i
	movq	(%rbx), %rax
	movl	$256, %r14d             # imm = 0x100
	testq	%rax, %rax
	je	.LBB11_15
# BB#14:                                # %if.end.3.i
	movq	8(%rax), %rax
	movq	160(%rax), %rax
	movq	32(%rax), %rbp
	movq	672(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	$0, 672(%rbx)
	movl	$0, 664(%rbx)
	movq	152(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	$0, 152(%rbx)
	movq	168(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	$0, 168(%rbx)
	movq	688(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	$0, 688(%rbx)
	movl	$0, 144(%rbx)
	movl	$0, 160(%rbx)
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
.LBB11_15:                              # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Instance_Create, .Lfunc_end11-Instance_Create
	.cfi_endproc

	.globl	Instance_Init
	.align	16, 0x90
	.type	Instance_Init,@function
Instance_Init:                          # @Instance_Init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 96
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	(%r14), %rbp
	movq	8(%rbp), %rax
	movq	152(%rax), %rbx
	movq	Default_GraphicsState+80(%rip), %rax
	movq	%rax, 568(%r14)
	movups	Default_GraphicsState+64(%rip), %xmm0
	movups	%xmm0, 552(%r14)
	movups	Default_GraphicsState+48(%rip), %xmm0
	movups	%xmm0, 536(%r14)
	movups	Default_GraphicsState+32(%rip), %xmm0
	movups	%xmm0, 520(%r14)
	movups	Default_GraphicsState+16(%rip), %xmm0
	movups	%xmm0, 504(%r14)
	movups	Default_GraphicsState(%rip), %xmm0
	movups	%xmm0, 488(%r14)
	movq	%rbp, (%rbx)
	movl	144(%r14), %eax
	movl	%eax, 44(%rbx)
	movl	160(%r14), %eax
	movl	%eax, 56(%rbx)
	movq	152(%r14), %rax
	movq	%rax, 48(%rbx)
	movq	168(%r14), %rax
	movq	%rax, 64(%rbx)
	movl	176(%r14), %eax
	movl	%eax, 72(%rbx)
	leaq	76(%rbx), %r15
	leaq	180(%r14), %r12
	movl	$256, %edx              # imm = 0x100
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movups	128(%r14), %xmm0
	movups	%xmm0, 584(%rbx)
	movups	112(%r14), %xmm0
	movups	%xmm0, 568(%rbx)
	movups	96(%r14), %xmm0
	movups	%xmm0, 552(%rbx)
	movups	80(%r14), %xmm0
	movups	%xmm0, 536(%rbx)
	movups	16(%r14), %xmm0
	movups	32(%r14), %xmm1
	movups	48(%r14), %xmm2
	movups	64(%r14), %xmm3
	movups	%xmm3, 520(%rbx)
	movups	%xmm2, 504(%rbx)
	movups	%xmm1, 488(%rbx)
	movups	%xmm0, 472(%rbx)
	leaq	368(%rbx), %r8
	leaq	440(%r14), %rsi
	movups	440(%r14), %xmm0
	movups	%xmm0, 368(%rbx)
	leaq	384(%rbx), %rdi
	leaq	456(%r14), %r9
	movups	456(%r14), %xmm0
	movups	%xmm0, 384(%rbx)
	leaq	400(%rbx), %r10
	leaq	472(%r14), %r13
	movups	472(%r14), %xmm0
	movups	%xmm0, 400(%rbx)
	movl	$0, 800(%rbx)
	movl	$0, 804(%rbx)
	movl	$0, 912(%rbx)
	movq	568(%r14), %rax
	movq	%rax, 1000(%rbx)
	movups	552(%r14), %xmm0
	movups	%xmm0, 984(%rbx)
	movups	488(%r14), %xmm0
	movups	504(%r14), %xmm1
	movups	520(%r14), %xmm2
	movups	536(%r14), %xmm3
	movups	%xmm3, 968(%rbx)
	movups	%xmm2, 952(%rbx)
	movups	%xmm1, 936(%rbx)
	movups	%xmm0, 920(%rbx)
	movl	664(%r14), %eax
	movq	672(%r14), %rcx
	movl	680(%r14), %edx
	movl	%edx, 416(%rbx)
	movq	688(%r14), %rdx
	movq	%rdx, 424(%rbx)
	movl	$0, 348(%rbx)
	movl	$0, 436(%rbx)
	movl	$64, 456(%rbx)
	movl	$0, 460(%rbx)
	movl	$0, 464(%rbx)
	movl	$0, 484(%rbx)
	movl	$0, 488(%rbx)
	movl	$0, 472(%rbx)
	movl	$1, %edx
	movd	%rdx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 496(%rbx)
	movdqu	%xmm0, 512(%rbx)
	movl	$0, 544(%rbx)
	movq	$1, 568(%rbx)
	movl	$65536, %edx            # imm = 0x10000
	movd	%rdx, %xmm0
	movups	%xmm0, 552(%rbx)
	movl	$0, 912(%rbx)
	movl	%eax, 1100(%rbx)
	movq	%rcx, 1104(%rbx)
	movq	$65536, 1112(%rbx)      # imm = 0x10000
	movq	56(%rbp), %rax
	movl	52(%rbp), %ecx
	movq	%rax, 368(%rbx)
	movl	%ecx, 376(%rbx)
	movq	$0, 384(%rbx)
	movl	$0, 392(%rbx)
	movq	$0, 400(%rbx)
	movl	$0, 408(%rbx)
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	jle	.LBB12_3
# BB#1:                                 # %if.then
	movl	$1039, %ebp             # imm = 0x40F
	testq	%rax, %rax
	je	.LBB12_3
# BB#2:                                 # %if.end
	movq	%rax, 16(%rbx)
	movl	%ecx, 28(%rbx)
	movl	$0, 24(%rbx)
	movl	$1, 12(%rbx)
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, %rbp
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%r8, %r15
	movq	%r9, %r12
	movq	%r10, 8(%rsp)           # 8-byte Spill
	callq	RunIns
	movq	8(%rsp), %r10           # 8-byte Reload
	movq	%r12, %r9
	movq	%r15, %r8
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	movl	%eax, %ebp
	movq	$0, 16(%rbx)
	movl	$0, 28(%rbx)
.LBB12_3:                               # %Fin
	movups	(%r8), %xmm0
	movups	%xmm0, (%rsi)
	movq	$0, 368(%rbx)
	movl	$0, 376(%rbx)
	movups	(%rdi), %xmm0
	movups	%xmm0, (%r9)
	movq	$0, 384(%rbx)
	movl	$0, 392(%rbx)
	movups	(%r10), %xmm0
	movups	%xmm0, (%r13)
	movq	$0, 400(%rbx)
	movl	$0, 408(%rbx)
	movl	$0, 44(%rbx)
	movl	$0, 56(%rbx)
	movl	$256, %edx              # imm = 0x100
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	72(%rbx), %eax
	movl	%eax, 176(%r14)
	movl	$0, 72(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 1100(%rbx)
	movq	$0, 1104(%rbx)
	movl	$0, 416(%rbx)
	movq	$0, 424(%rbx)
	movq	$0, (%rbx)
	movl	$0, 8(%r14)
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Instance_Init, .Lfunc_end12-Instance_Init
	.cfi_endproc

	.globl	Instance_Reset
	.align	16, 0x90
	.type	Instance_Reset,@function
Instance_Reset:                         # @Instance_Reset
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
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 96
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
	movq	%rdi, %rbx
	movl	$2, %ebp
	testq	%rbx, %rbx
	je	.LBB13_34
# BB#1:                                 # %if.end
	xorl	%ebp, %ebp
	cmpl	$0, 8(%rbx)
	jne	.LBB13_34
# BB#2:                                 # %if.end.3
	movl	28(%rbx), %edx
	movl	$13, %ebp
	testl	%edx, %edx
	jle	.LBB13_34
# BB#3:                                 # %lor.lhs.false
	movl	32(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB13_34
# BB#4:                                 # %if.end.9
	movq	(%rbx), %r15
	movq	8(%r15), %rcx
	movq	152(%rcx), %r14
	cmpl	%eax, %edx
	jge	.LBB13_5
# BB#6:                                 # %if.else
	movups	56(%rbx), %xmm0
	movups	%xmm0, 104(%rbx)
	movl	%eax, 88(%rbx)
	movl	$65536, %esi            # imm = 0x10000
	movl	%edx, %edi
	movl	%eax, %edx
	callq	MulDiv_Round
	cltq
	movq	%rax, 72(%rbx)
	movl	$65536, %eax            # imm = 0x10000
	jmp	.LBB13_7
.LBB13_5:                               # %if.then.15
	movups	40(%rbx), %xmm0
	movups	%xmm0, 104(%rbx)
	movl	%edx, 88(%rbx)
	movq	$65536, 72(%rbx)        # imm = 0x10000
	movl	$65536, %esi            # imm = 0x10000
	movl	%eax, %edi
	callq	MulDiv_Round
	cltq
.LBB13_7:                               # %for.cond.preheader
	movq	%rax, 80(%rbx)
	cmpl	$0, 664(%rbx)
	jle	.LBB13_8
# BB#9:                                 # %for.body.lr.ph
	leaq	672(%rbx), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB13_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%r15), %rax
	movswl	(%rax,%rbp,2), %edi
	movl	104(%rbx), %esi
	movl	112(%rbx), %edx
	callq	MulDiv_Round
	cltq
	movq	672(%rbx), %rcx
	movq	%rax, (%rcx,%rbp,8)
	incq	%rbp
	movslq	664(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB13_10
	jmp	.LBB13_11
.LBB13_8:                               # %for.cond.preheader.for.end_crit_edge
	leaq	672(%rbx), %r13
.LBB13_11:                              # %for.end
	movq	Default_GraphicsState+80(%rip), %rax
	movq	%rax, 568(%rbx)
	movups	Default_GraphicsState+64(%rip), %xmm0
	movups	%xmm0, 552(%rbx)
	movups	Default_GraphicsState+48(%rip), %xmm0
	movups	%xmm0, 536(%rbx)
	movups	Default_GraphicsState+32(%rip), %xmm0
	movups	%xmm0, 520(%rbx)
	movups	Default_GraphicsState+16(%rip), %xmm0
	movups	%xmm0, 504(%rbx)
	movups	Default_GraphicsState(%rip), %xmm0
	movups	%xmm0, 488(%rbx)
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	movl	144(%rbx), %eax
	movl	%eax, 44(%r14)
	movl	160(%rbx), %eax
	movl	%eax, 56(%r14)
	movq	152(%rbx), %rax
	movq	%rax, 48(%r14)
	movq	168(%rbx), %rax
	movq	%rax, 64(%r14)
	movl	176(%rbx), %eax
	movl	%eax, 72(%r14)
	leaq	76(%r14), %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leaq	180(%rbx), %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	$256, %edx              # imm = 0x100
	callq	memcpy
	movups	128(%rbx), %xmm0
	movups	%xmm0, 584(%r14)
	movups	112(%rbx), %xmm0
	movups	%xmm0, 568(%r14)
	movups	96(%rbx), %xmm0
	movups	%xmm0, 552(%r14)
	movups	80(%rbx), %xmm0
	movups	%xmm0, 536(%r14)
	movups	16(%rbx), %xmm0
	movups	32(%rbx), %xmm1
	movups	48(%rbx), %xmm2
	movups	64(%rbx), %xmm3
	movups	%xmm3, 520(%r14)
	movups	%xmm2, 504(%r14)
	movups	%xmm1, 488(%r14)
	movups	%xmm0, 472(%r14)
	movups	440(%rbx), %xmm0
	movups	%xmm0, 368(%r14)
	movups	456(%rbx), %xmm0
	movups	%xmm0, 384(%r14)
	movups	472(%rbx), %xmm0
	movups	%xmm0, 400(%r14)
	movl	$0, 800(%r14)
	movl	$0, 804(%r14)
	movl	$0, 912(%r14)
	movq	568(%rbx), %rax
	movq	%rax, 1000(%r14)
	movups	552(%rbx), %xmm0
	movups	%xmm0, 984(%r14)
	movups	488(%rbx), %xmm0
	movups	504(%rbx), %xmm1
	movups	520(%rbx), %xmm2
	movups	536(%rbx), %xmm3
	movups	%xmm3, 968(%r14)
	movups	%xmm2, 952(%r14)
	movups	%xmm1, 936(%r14)
	movups	%xmm0, 920(%r14)
	movl	664(%rbx), %eax
	movl	%eax, 1100(%r14)
	movq	(%r13), %rax
	movq	%rax, 1104(%r14)
	movslq	680(%rbx), %rdx
	testq	%rdx, %rdx
	movl	%edx, 416(%r14)
	movq	688(%rbx), %rsi
	movq	%rsi, 424(%r14)
	movq	72(%r15), %r10
	movl	64(%r15), %ecx
	movq	%r10, 384(%r14)
	movl	%ecx, 392(%r14)
	movq	$0, 400(%r14)
	movl	$0, 408(%r14)
	jle	.LBB13_23
# BB#12:                                # %for.body.70.lr.ph
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB13_22
# BB#13:                                # %overflow.checked
	xorl	%eax, %eax
	movq	%rdx, %r9
	andq	$-4, %r9
	je	.LBB13_21
# BB#14:                                # %vector.body.preheader
	leaq	-4(%rdx), %r8
	movl	%r8d, %eax
	shrl	$2, %eax
	incl	%eax
	xorl	%edi, %edi
	testb	$3, %al
	je	.LBB13_17
# BB#15:                                # %vector.body.prol.preheader
	leal	-4(%rdx), %eax
	shrl	$2, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB13_16:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rsi,%rdi,8)
	movups	%xmm0, 16(%rsi,%rdi,8)
	addq	$4, %rdi
	incq	%rax
	jne	.LBB13_16
.LBB13_17:                              # %vector.body.preheader.split
	cmpq	$12, %r8
	jb	.LBB13_20
# BB#18:                                # %vector.body.preheader.split.split
	movq	%rdx, %rax
	andq	$-4, %rax
	subq	%rdi, %rax
	leaq	112(%rsi,%rdi,8), %rdi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB13_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rdi)
	movups	%xmm0, -96(%rdi)
	movups	%xmm0, -80(%rdi)
	movups	%xmm0, -64(%rdi)
	movups	%xmm0, -48(%rdi)
	movups	%xmm0, -32(%rdi)
	movups	%xmm0, -16(%rdi)
	movups	%xmm0, (%rdi)
	subq	$-128, %rdi
	addq	$-16, %rax
	jne	.LBB13_19
.LBB13_20:
	movq	%r9, %rax
.LBB13_21:                              # %middle.block
	cmpq	%rax, %rdx
	je	.LBB13_23
	.align	16, 0x90
.LBB13_22:                              # %for.body.70
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rsi,%rax,8)
	incq	%rax
	cmpq	%rdx, %rax
	jl	.LBB13_22
.LBB13_23:                              # %for.end.75
	movl	$0, 912(%r14)
	movl	$0, 436(%r14)
	movl	$0, 348(%r14)
	cmpl	$0, 856(%r14)
	jle	.LBB13_27
# BB#24:                                # %for.body.79.lr.ph
	movq	864(%r14), %rax
	movq	872(%r14), %rcx
	movq	880(%r14), %rdx
	movq	888(%r14), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB13_25:                              # %for.body.79
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax,%rdi,4)
	movl	$0, (%rcx,%rdi,4)
	movl	$0, (%rdx,%rdi,4)
	movl	$0, (%rsi,%rdi,4)
	incq	%rdi
	movslq	856(%r14), %rbp
	cmpq	%rbp, %rdi
	jl	.LBB13_25
# BB#26:                                # %for.cond.76.for.end.94_crit_edge
	movl	64(%r15), %ecx
.LBB13_27:                              # %for.end.94
	leaq	368(%r14), %r13
	leaq	440(%rbx), %r15
	leaq	384(%r14), %r12
	leaq	456(%rbx), %rsi
	leaq	400(%r14), %r8
	leaq	472(%rbx), %rdi
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	jle	.LBB13_31
# BB#28:                                # %if.then.98
	movl	$1039, %ebp             # imm = 0x40F
	testq	%r10, %r10
	je	.LBB13_32
# BB#29:                                # %if.end.4.i
	movl	392(%r14), %eax
	movl	$1027, %ebp             # imm = 0x403
	testl	%eax, %eax
	js	.LBB13_32
# BB#30:                                # %if.end.102
	movq	%r10, 16(%r14)
	movl	%eax, 28(%r14)
	movl	$0, 24(%r14)
	movl	$2, 12(%r14)
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rsi, %rbp
	callq	RunIns
	movq	%rbp, %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %r8            # 8-byte Reload
	movl	%eax, %ebp
	movq	$0, 16(%r14)
	movl	$0, 28(%r14)
.LBB13_31:                              # %if.end.105
	leaq	488(%rbx), %rax
	leaq	920(%r14), %rcx
	movq	80(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
.LBB13_32:                              # %Fin
	movups	(%r13), %xmm0
	movups	%xmm0, (%r15)
	movq	$0, 368(%r14)
	movl	$0, 376(%r14)
	movups	(%r12), %xmm0
	movups	%xmm0, (%rsi)
	movq	$0, 384(%r14)
	movl	$0, 392(%r14)
	movups	(%r8), %xmm0
	movups	%xmm0, (%rdi)
	movq	$0, 400(%r14)
	movl	$0, 408(%r14)
	movl	$0, 44(%r14)
	movl	$0, 56(%r14)
	movl	$256, %edx              # imm = 0x100
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movl	72(%r14), %eax
	movl	%eax, 176(%rbx)
	movl	$0, 72(%r14)
	movq	$0, 48(%r14)
	movq	$0, 64(%r14)
	movl	$0, 1100(%r14)
	movq	$0, 1104(%r14)
	movl	$0, 416(%r14)
	movq	$0, 424(%r14)
	movq	$0, (%r14)
	testl	%ebp, %ebp
	jne	.LBB13_34
# BB#33:                                # %if.then.110
	movl	$1, 8(%rbx)
	xorl	%ebp, %ebp
.LBB13_34:                              # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Instance_Reset, .Lfunc_end13-Instance_Reset
	.cfi_endproc

	.globl	Face_Destroy
	.align	16, 0x90
	.type	Face_Destroy,@function
Face_Destroy:                           # @Face_Destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
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
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	8(%rbx), %rax
	movq	88(%rbx), %rsi
	movq	160(%rax), %rax
	movq	32(%rax), %r14
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 88(%rbx)
	movl	$0, 80(%rbx)
	movq	56(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 56(%rbx)
	movq	72(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
	movq	$0, 72(%rbx)
	movl	$0, 52(%rbx)
	movl	$0, 64(%rbx)
.LBB14_2:                               # %if.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	Face_Destroy, .Lfunc_end14-Face_Destroy
	.cfi_endproc

	.globl	Face_Create
	.align	16, 0x90
	.type	Face_Create,@function
Face_Create:                            # @Face_Create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 32
.Ltmp75:
	.cfi_offset %rbx, -32
.Ltmp76:
	.cfi_offset %r14, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	Load_TrueType_MaxProfile
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jne	.LBB15_3
# BB#1:                                 # %lor.lhs.false
	movq	%rbx, %rdi
	callq	Load_TrueType_CVT
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jne	.LBB15_3
# BB#2:                                 # %lor.lhs.false.3
	movq	%rbx, %rdi
	callq	Load_TrueType_Programs
	movl	%eax, %r14d
	xorl	%eax, %eax
	testl	%r14d, %r14d
	je	.LBB15_6
.LBB15_3:                               # %Fail
	testq	%rbx, %rbx
	je	.LBB15_5
# BB#4:                                 # %if.then.i
	movq	8(%rbx), %rax
	movq	88(%rbx), %rsi
	movq	160(%rax), %rax
	movq	32(%rax), %rbp
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	$0, 88(%rbx)
	movl	$0, 80(%rbx)
	movq	56(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	$0, 56(%rbx)
	movq	72(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*16(%rbp)
	movq	$0, 72(%rbx)
	movl	$0, 52(%rbx)
	movl	$0, 64(%rbx)
.LBB15_5:                               # %cleanup
	movl	%r14d, %eax
.LBB15_6:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Face_Create, .Lfunc_end15-Face_Create
	.cfi_endproc

	.globl	Scale_X
	.align	16, 0x90
	.type	Scale_X,@function
Scale_X:                                # @Scale_X
	.cfi_startproc
# BB#0:                                 # %entry
	movl	24(%rdi), %eax
	movl	32(%rdi), %edx
	movl	%esi, %edi
	movl	%eax, %esi
	jmp	MulDiv_Round            # TAILCALL
.Lfunc_end16:
	.size	Scale_X, .Lfunc_end16-Scale_X
	.cfi_endproc

	.globl	Scale_Y
	.align	16, 0x90
	.type	Scale_Y,@function
Scale_Y:                                # @Scale_Y
	.cfi_startproc
# BB#0:                                 # %entry
	movl	40(%rdi), %eax
	movl	48(%rdi), %edx
	movl	%esi, %edi
	movl	%eax, %esi
	jmp	MulDiv_Round            # TAILCALL
.Lfunc_end17:
	.size	Scale_Y, .Lfunc_end17-Scale_Y
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ttobjs.c"
	.size	.L.str, 9

	.type	Default_GraphicsState,@object # @Default_GraphicsState
	.section	.rodata,"a",@progbits
	.globl	Default_GraphicsState
	.align	8
Default_GraphicsState:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.short	16384                   # 0x4000
	.short	0                       # 0x0
	.short	16384                   # 0x4000
	.short	0                       # 0x0
	.short	16384                   # 0x4000
	.short	0                       # 0x0
	.quad	1                       # 0x1
	.long	64                      # 0x40
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	68                      # 0x44
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	9                       # 0x9
	.long	3                       # 0x3
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	Default_GraphicsState, 88


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
