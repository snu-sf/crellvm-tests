	.text
	.file	"cmscgats.bc"
	.globl	cmsIT8Free
	.align	16, 0x90
	.type	cmsIT8Free,@function
cmsIT8Free:                             # @cmsIT8Free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB0_8
# BB#1:                                 # %if.end
	movq	271328(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB0_5
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_4
# BB#3:                                 # %if.then.5
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	272864(%r14), %rdi
	callq	_cmsFree
.LBB0_4:                                # %if.end.7
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	272864(%r14), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	testq	%r15, %r15
	movq	%r15, %rbx
	jne	.LBB0_2
.LBB0_5:                                # %if.end.9
	movq	272728(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB0_7
# BB#6:                                 # %if.then.11
	movq	272864(%r14), %rdi
	callq	_cmsFree
.LBB0_7:                                # %if.end.14
	movq	272864(%r14), %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_cmsFree                # TAILCALL
.LBB0_8:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	cmsIT8Free, .Lfunc_end0-cmsIT8Free
	.cfi_endproc

	.globl	cmsIT8SetTable
	.align	16, 0x90
	.type	cmsIT8SetTable,@function
cmsIT8SetTable:                         # @cmsIT8SetTable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 16
	movl	%esi, %ecx
	cmpl	%ecx, (%rdi)
	ja	.LBB1_3
# BB#1:                                 # %if.then
	jne	.LBB1_5
# BB#2:                                 # %if.then.3
	movl	%ecx, %eax
	imulq	$1064, %rax, %rax       # imm = 0x428
	movq	$0, 1048(%rdi,%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1056(%rdi,%rax)
	incl	(%rdi)
.LBB1_3:                                # %if.end.4
	movl	%ecx, 4(%rdi)
	jmp	.LBB1_4
.LBB1_5:                                # %if.else
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	callq	SynError
	movl	$-1, %ecx
.LBB1_4:                                # %cleanup
	movl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end1:
	.size	cmsIT8SetTable, .Lfunc_end1-cmsIT8SetTable
	.cfi_endproc

	.align	16, 0x90
	.type	SynError,@function
SynError:                               # @SynError
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
	subq	$1488, %rsp             # imm = 0x5D0
.Ltmp10:
	.cfi_def_cfa_offset 1520
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %r15, -16
	movq	%rsi, %r10
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB2_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB2_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	1520(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	1232(%rsp), %r14
	leaq	176(%rsp), %rcx
	movl	$255, %esi
	movq	%r14, %rdi
	movq	%r10, %rdx
	callq	vsnprintf
	movb	$0, 1487(%rsp)
	movslq	272720(%rbx), %rax
	movq	272560(%rbx,%rax,8), %rcx
	movl	272552(%rbx), %r8d
	leaq	208(%rsp), %r15
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.17, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %r9
	callq	snprintf
	movb	$0, 1231(%rsp)
	movl	$8, 271352(%rbx)
	movq	272864(%rbx), %rdi
	movl	$12, %esi
	movl	$.L.str.18, %edx
	xorl	%eax, %eax
	movq	%r15, %rcx
	callq	cmsSignalError
	addq	$1488, %rsp             # imm = 0x5D0
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	SynError, .Lfunc_end2-SynError
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	32                      # 0x20
	.text
	.globl	cmsIT8Alloc
	.align	16, 0x90
	.type	cmsIT8Alloc,@function
cmsIT8Alloc:                            # @cmsIT8Alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 48
.Ltmp19:
	.cfi_offset %rbx, -48
.Ltmp20:
	.cfi_offset %r12, -40
.Ltmp21:
	.cfi_offset %r13, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$272872, %esi           # imm = 0x429E8
	callq	_cmsMallocZero
	movq	%rax, %r13
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.LBB3_9
# BB#1:                                 # %if.end
	movl	(%r13), %eax
	imulq	$1064, %rax, %rax       # imm = 0x428
	movq	$0, 1048(%r13,%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1056(%r13,%rax)
	incl	(%r13)
	movq	$0, 272728(%r13)
	movq	$0, 271328(%r13)
	movl	$0, 4(%r13)
	movq	%r14, 272864(%r13)
	movq	$0, 271336(%r13)
	movups	%xmm0, 272528(%r13)
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [0,0,0,32]
	movups	%xmm0, 271344(%r13)
	movq	$0, 272544(%r13)
	movl	$0, 271360(%r13)
	movq	$0, 271368(%r13)
	movl	$264, %esi              # imm = 0x108
	movq	%r13, %rdi
	callq	AllocChunk
	movq	%rax, 272560(%r13)
	movl	$0, 272720(%r13)
	movl	$1, 272552(%r13)
	leaq	272736(%r13), %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	movl	4(%r13), %edx
	cmpl	(%r13), %edx
	jae	.LBB3_2
# BB#3:                                 # %if.end.i.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r13,%rax), %r12
	jmp	.LBB3_4
.LBB3_2:                                # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	SynError
	leaq	8(%r13), %r12
.LBB3_4:                                # %cmsIT8SetSheetType.exit
	leaq	272528(%r13), %r15
	movq	%r13, %r14
	addq	$272536, %r14           # imm = 0x42898
	movl	$.L.str.2, %esi
	movl	$1023, %edx             # imm = 0x3FF
	movq	%r12, %rdi
	callq	strncpy
	movb	$0, 1023(%r12)
	movq	$-416, %rbx             # imm = 0xFFFFFFFFFFFFFE60
	.align	16, 0x90
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	PredefinedProperties+416(%rbx), %rdx
	movl	PredefinedProperties+424(%rbx), %r9d
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	AddToList
	addq	$16, %rbx
	jne	.LBB3_5
# BB#6:
	movq	$-320, %rbx             # imm = 0xFFFFFFFFFFFFFEC0
	.align	16, 0x90
.LBB3_7:                                # %for.body.17
                                        # =>This Inner Loop Header: Depth=1
	movq	PredefinedSampleID+320(%rbx), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	AddToList
	addq	$8, %rbx
	jne	.LBB3_7
# BB#8:
	movq	%r13, %rax
.LBB3_9:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	cmsIT8Alloc, .Lfunc_end3-cmsIT8Alloc
	.cfi_endproc

	.align	16, 0x90
	.type	AllocChunk,@function
AllocChunk:                             # @AllocChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	271344(%r14), %eax
	movl	271348(%r14), %edx
	movl	%eax, %ecx
	subl	%edx, %ecx
	addl	$7, %ebx
	andl	$-8, %ebx
	cmpl	%ecx, %ebx
	jbe	.LBB4_1
# BB#2:                                 # %if.then
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$20480, %esi            # imm = 0x5000
	cmovnel	%ecx, %esi
	cmpl	%ebx, %esi
	cmovbl	%ebx, %esi
	movl	%esi, 271344(%r14)
	movl	$0, 271348(%r14)
	movq	272864(%r14), %rdi
	callq	_cmsMallocZero
	movq	%rax, %r15
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.LBB4_6
# BB#3:                                 # %if.then.i
	movq	272864(%r14), %rdi
	movl	$16, %esi
	callq	_cmsMallocZero
	testq	%rax, %rax
	je	.LBB4_4
# BB#5:                                 # %if.end.i
	movq	%r15, 8(%rax)
	movq	271328(%r14), %rcx
	movq	%rcx, (%rax)
	movq	%rax, 271328(%r14)
	movq	%r15, %rcx
	jmp	.LBB4_6
.LBB4_1:                                # %entry.if.end.26_crit_edge
	movq	271336(%r14), %rcx
	jmp	.LBB4_7
.LBB4_4:                                # %if.then.4.i
	movq	272864(%r14), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	xorl	%ecx, %ecx
.LBB4_6:                                # %AllocBigBlock.exit
	movq	%rcx, 271336(%r14)
	movl	271348(%r14), %edx
.LBB4_7:                                # %if.end.26
	movl	%edx, %eax
	addq	%rcx, %rax
	addl	%edx, %ebx
	movl	%ebx, 271348(%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	AllocChunk, .Lfunc_end4-AllocChunk
	.cfi_endproc

	.globl	cmsIT8SetSheetType
	.align	16, 0x90
	.type	cmsIT8SetSheetType,@function
cmsIT8SetSheetType:                     # @cmsIT8SetSheetType
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB5_1
# BB#2:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rbx
	jmp	.LBB5_3
.LBB5_1:                                # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	addq	$8, %rbx
.LBB5_3:                                # %GetTable.exit
	movl	$1023, %edx             # imm = 0x3FF
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strncpy
	movb	$0, 1023(%rbx)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	cmsIT8SetSheetType, .Lfunc_end5-cmsIT8SetSheetType
	.cfi_endproc

	.globl	cmsIT8GetSheetType
	.align	16, 0x90
	.type	cmsIT8GetSheetType,@function
cmsIT8GetSheetType:                     # @cmsIT8GetSheetType
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB6_1
# BB#2:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rbx
	jmp	.LBB6_3
.LBB6_1:                                # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	addq	$8, %rbx
.LBB6_3:                                # %GetTable.exit
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end6:
	.size	cmsIT8GetSheetType, .Lfunc_end6-cmsIT8GetSheetType
	.cfi_endproc

	.globl	cmsIT8SetComment
	.align	16, 0x90
	.type	cmsIT8SetComment,@function
cmsIT8SetComment:                       # @cmsIT8SetComment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -24
.Ltmp41:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB7_6
# BB#1:                                 # %if.end
	cmpb	$0, (%rbx)
	je	.LBB7_6
# BB#2:                                 # %if.end.3
	movl	4(%r14), %edx
	cmpl	(%r14), %edx
	jae	.LBB7_3
# BB#4:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r14,%rax), %rsi
	jmp	.LBB7_5
.LBB7_3:                                # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	SynError
	leaq	8(%r14), %rsi
.LBB7_5:                                # %GetTable.exit
	addq	$1040, %rsi             # imm = 0x410
	movl	$.L.str.3, %edx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbx, %r8
	callq	AddToList
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.LBB7_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	cmsIT8SetComment, .Lfunc_end7-cmsIT8SetComment
	.cfi_endproc

	.align	16, 0x90
	.type	AddToList,@function
AddToList:                              # @AddToList
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 96
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movq	(%rsi), %r13
	testq	%r13, %r13
	je	.LBB8_1
# BB#2:
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rax
	.align	16, 0x90
.LBB8_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r13
	movzbl	(%r15), %eax
	cmpl	$35, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.6.i
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	8(%r13), %rsi
	movq	%r15, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB8_7
.LBB8_5:                                # %for.inc.i
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	(%r13), %rax
	testq	%rax, %rax
	jne	.LBB8_3
# BB#6:                                 # %if.else.loopexit59
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	jmp	.LBB8_13
.LBB8_1:
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	jmp	.LBB8_13
.LBB8_7:                                # %if.end.15.i
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	testq	%r14, %r14
	je	.LBB8_8
# BB#9:
	movq	%r13, %rbp
	.align	16, 0x90
.LBB8_10:                               # %for.body.23.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_12
# BB#11:                                # %if.end.28.i
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	%r14, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	movq	%rbp, %r13
	je	.LBB8_29
.LBB8_12:                               # %for.inc.38.i
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB8_10
.LBB8_13:                               # %if.else
	movl	$48, %esi
	movq	%rbx, %rdi
	callq	AllocChunk
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB8_14
# BB#15:                                # %if.end
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rax, %rbx
	leal	1(%rbx), %esi
	callq	AllocChunk
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB8_17
# BB#16:                                # %if.then.i
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	strncpy
.LBB8_17:                               # %AllocString.exit
	movq	%r12, 8(%rbp)
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB8_20
# BB#18:                                # %cond.false
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	leal	1(%rbx), %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	AllocChunk
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB8_20
# BB#19:                                # %if.then.i.25
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncpy
	movq	%r15, %rax
.LBB8_20:                               # %cond.end
	movq	%rax, 24(%rbp)
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpq	$0, (%rax)
	movq	8(%rsp), %r12           # 8-byte Reload
	je	.LBB8_21
# BB#22:                                # %if.else.10
	testq	%r14, %r14
	je	.LBB8_26
# BB#23:                                # %if.else.10
	testq	%r13, %r13
	je	.LBB8_26
# BB#24:                                # %if.then.13
	movq	%rbp, 16(%r13)
	movq	%r13, %rax
	movq	16(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB8_25:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	jne	.LBB8_25
	jmp	.LBB8_27
.LBB8_14:                               # %if.then.2
	xorl	%ebp, %ebp
	movl	$.L.str.85, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	jmp	.LBB8_34
.LBB8_21:                               # %if.then.9
	movq	%rbp, (%rax)
	movq	16(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB8_28
.LBB8_26:                               # %if.end.16
	testq	%r13, %r13
	movq	16(%rsp), %rbx          # 8-byte Reload
	je	.LBB8_28
.LBB8_27:                               # %if.then.18
	movq	%rbp, (%r13)
.LBB8_28:                               # %if.end.21
	movq	$0, (%rbp)
	movq	$0, 16(%rbp)
.LBB8_29:                               # %if.end.24
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 40(%rbp)
	testq	%r12, %r12
	je	.LBB8_33
# BB#30:                                # %if.then.27
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r14
	leal	1(%r14), %esi
	movq	%rbx, %rdi
	callq	AllocChunk
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_32
# BB#31:                                # %if.then.i.34
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r14
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	strncpy
.LBB8_32:                               # %AllocString.exit35
	movq	%rbx, 32(%rbp)
	jmp	.LBB8_34
.LBB8_33:                               # %if.else.29
	movq	$0, 32(%rbp)
.LBB8_34:                               # %cleanup
	movq	%rbp, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_8:
	movq	%r13, %rbp
	jmp	.LBB8_29
.Lfunc_end8:
	.size	AddToList, .Lfunc_end8-AddToList
	.cfi_endproc

	.globl	cmsIT8SetPropertyStr
	.align	16, 0x90
	.type	cmsIT8SetPropertyStr,@function
cmsIT8SetPropertyStr:                   # @cmsIT8SetPropertyStr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 32
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
.Ltmp60:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB9_6
# BB#1:                                 # %if.end
	cmpb	$0, (%rbx)
	je	.LBB9_6
# BB#2:                                 # %if.end.3
	movl	4(%r15), %edx
	cmpl	(%r15), %edx
	jae	.LBB9_3
# BB#4:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r15,%rax), %rsi
	jmp	.LBB9_5
.LBB9_3:                                # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	SynError
	leaq	8(%r15), %rsi
.LBB9_5:                                # %GetTable.exit
	addq	$1040, %rsi             # imm = 0x410
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%rbx, %r8
	callq	AddToList
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.LBB9_6:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	cmsIT8SetPropertyStr, .Lfunc_end9-cmsIT8SetPropertyStr
	.cfi_endproc

	.globl	cmsIT8SetPropertyDbl
	.align	16, 0x90
	.type	cmsIT8SetPropertyDbl,@function
cmsIT8SetPropertyDbl:                   # @cmsIT8SetPropertyDbl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 24
	subq	$1032, %rsp             # imm = 0x408
.Ltmp63:
	.cfi_def_cfa_offset 1056
.Ltmp64:
	.cfi_offset %rbx, -24
.Ltmp65:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	272736(%rbx), %rsi
	leaq	(%rsp), %rdi
	movb	$1, %al
	callq	sprintf
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB10_1
# BB#2:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rsi
	jmp	.LBB10_3
.LBB10_1:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	leaq	8(%rbx), %rsi
.LBB10_3:                               # %GetTable.exit
	addq	$1040, %rsi             # imm = 0x410
	leaq	(%rsp), %r8
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	AddToList
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	cmsIT8SetPropertyDbl, .Lfunc_end10-cmsIT8SetPropertyDbl
	.cfi_endproc

	.globl	cmsIT8SetPropertyHex
	.align	16, 0x90
	.type	cmsIT8SetPropertyHex,@function
cmsIT8SetPropertyHex:                   # @cmsIT8SetPropertyHex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 24
	subq	$1032, %rsp             # imm = 0x408
.Ltmp68:
	.cfi_def_cfa_offset 1056
.Ltmp69:
	.cfi_offset %rbx, -24
.Ltmp70:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	(%rsp), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	sprintf
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB11_1
# BB#2:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rsi
	jmp	.LBB11_3
.LBB11_1:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	leaq	8(%rbx), %rsi
.LBB11_3:                               # %GetTable.exit
	addq	$1040, %rsi             # imm = 0x410
	leaq	(%rsp), %r8
	xorl	%ecx, %ecx
	movl	$2, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	AddToList
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	cmsIT8SetPropertyHex, .Lfunc_end11-cmsIT8SetPropertyHex
	.cfi_endproc

	.globl	cmsIT8SetPropertyUncooked
	.align	16, 0x90
	.type	cmsIT8SetPropertyUncooked,@function
cmsIT8SetPropertyUncooked:              # @cmsIT8SetPropertyUncooked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 32
.Ltmp74:
	.cfi_offset %rbx, -32
.Ltmp75:
	.cfi_offset %r14, -24
.Ltmp76:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB12_1
# BB#2:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rsi
	jmp	.LBB12_3
.LBB12_1:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	leaq	8(%rbx), %rsi
.LBB12_3:                               # %GetTable.exit
	addq	$1040, %rsi             # imm = 0x410
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	AddToList
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	cmsIT8SetPropertyUncooked, .Lfunc_end12-cmsIT8SetPropertyUncooked
	.cfi_endproc

	.globl	cmsIT8SetPropertyMulti
	.align	16, 0x90
	.type	cmsIT8SetPropertyMulti,@function
cmsIT8SetPropertyMulti:                 # @cmsIT8SetPropertyMulti
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 48
.Ltmp82:
	.cfi_offset %rbx, -40
.Ltmp83:
	.cfi_offset %r12, -32
.Ltmp84:
	.cfi_offset %r14, -24
.Ltmp85:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB13_1
# BB#2:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rsi
	jmp	.LBB13_3
.LBB13_1:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	leaq	8(%rbx), %rsi
.LBB13_3:                               # %GetTable.exit
	addq	$1040, %rsi             # imm = 0x410
	movl	$4, %r9d
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	AddToList
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	cmsIT8SetPropertyMulti, .Lfunc_end13-cmsIT8SetPropertyMulti
	.cfi_endproc

	.globl	cmsIT8GetProperty
	.align	16, 0x90
	.type	cmsIT8GetProperty,@function
cmsIT8GetProperty:                      # @cmsIT8GetProperty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 32
.Ltmp89:
	.cfi_offset %rbx, -32
.Ltmp90:
	.cfi_offset %r14, -24
.Ltmp91:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	4(%r14), %edx
	cmpl	(%r14), %edx
	jae	.LBB14_1
# BB#2:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r14,%rax), %r14
	jmp	.LBB14_3
.LBB14_1:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	SynError
	addq	$8, %r14
.LBB14_3:                               # %GetTable.exit
	movq	1040(%r14), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB14_9
# BB#4:
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB14_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	cmpl	$35, %eax
	je	.LBB14_7
# BB#6:                                 # %if.then.6.i
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	8(%rbx), %rsi
	movq	%r15, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB14_8
.LBB14_7:                               # %for.inc.i
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB14_5
	jmp	.LBB14_9
.LBB14_8:                               # %if.then
	movq	32(%rbx), %r14
.LBB14_9:                               # %cleanup
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	cmsIT8GetProperty, .Lfunc_end14-cmsIT8GetProperty
	.cfi_endproc

	.globl	cmsIT8GetPropertyDbl
	.align	16, 0x90
	.type	cmsIT8GetPropertyDbl,@function
cmsIT8GetPropertyDbl:                   # @cmsIT8GetPropertyDbl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 32
.Ltmp95:
	.cfi_offset %rbx, -32
.Ltmp96:
	.cfi_offset %r14, -24
.Ltmp97:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	4(%r14), %edx
	cmpl	(%r14), %edx
	jae	.LBB15_1
# BB#2:                                 # %if.end.i.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r14,%rax), %r14
	jmp	.LBB15_3
.LBB15_1:                               # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	SynError
	addq	$8, %r14
.LBB15_3:                               # %GetTable.exit.i
	movq	1040(%r14), %rbx
	jmp	.LBB15_4
	.align	16, 0x90
.LBB15_7:                               # %for.inc.i.i
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	(%rbx), %rbx
.LBB15_4:                               # %GetTable.exit.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB15_9
# BB#5:                                 # %for.body.i.i
                                        #   in Loop: Header=BB15_4 Depth=1
	movzbl	(%r15), %eax
	cmpl	$35, %eax
	je	.LBB15_7
# BB#6:                                 # %if.then.6.i.i
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	8(%rbx), %rsi
	movq	%r15, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	jne	.LBB15_7
# BB#8:                                 # %cmsIT8GetProperty.exit
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_9
# BB#10:                                # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	ParseFloatNumber        # TAILCALL
.LBB15_9:                               # %cleanup
	xorps	%xmm0, %xmm0
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	cmsIT8GetPropertyDbl, .Lfunc_end15-cmsIT8GetPropertyDbl
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
.LCPI16_2:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI16_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	-4616189618054758400    # double -1.000000e+00
	.text
	.align	16, 0x90
	.type	ParseFloatNumber,@function
ParseFloatNumber:                       # @ParseFloatNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp101:
	.cfi_def_cfa_offset 64
.Ltmp102:
	.cfi_offset %rbx, -32
.Ltmp103:
	.cfi_offset %r14, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorpd	%xmm0, %xmm0
	testq	%rbx, %rbx
	je	.LBB16_31
# BB#1:                                 # %if.end
	movzbl	(%rbx), %ebp
	cmpl	$45, %ebp
	je	.LBB16_4
# BB#2:                                 # %if.end
	movzbl	%bpl, %eax
	cmpl	$43, %eax
	jne	.LBB16_3
.LBB16_4:                               # %if.then.6
	movzbl	%bpl, %eax
	cmpl	$45, %eax
	sete	%al
	movzbl	%al, %eax
	movsd	.LCPI16_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movb	1(%rbx), %bpl
	incq	%rbx
	jmp	.LBB16_5
.LBB16_3:
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
.LBB16_5:                               # %while.cond.preheader
	xorpd	%xmm2, %xmm2
	testb	%bpl, %bpl
	je	.LBB16_30
# BB#6:                                 # %land.rhs.lr.ph
	callq	__ctype_b_loc
	movq	(%rax), %rax
	xorpd	%xmm2, %xmm2
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB16_7:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bpl, %rcx
	testb	$8, 1(%rax,%rcx,2)
	je	.LBB16_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB16_7 Depth=1
	movsbl	%bpl, %ecx
	mulsd	%xmm0, %xmm2
	addl	$-48, %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm1, %xmm2
	movb	1(%rbx), %bpl
	incq	%rbx
	testb	%bpl, %bpl
	jne	.LBB16_7
	jmp	.LBB16_30
.LBB16_9:                               # %while.end
	movzbl	%bpl, %ecx
	cmpl	$46, %ecx
	jne	.LBB16_16
# BB#10:                                # %while.cond.29.preheader
	movb	1(%rbx), %dl
	xorpd	%xmm3, %xmm3
	xorl	%ecx, %ecx
	testb	%dl, %dl
	je	.LBB16_11
	.align	16, 0x90
.LBB16_12:                              # %land.rhs.32
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%dl, %rsi
	testb	$8, 1(%rax,%rsi,2)
	je	.LBB16_14
# BB#13:                                # %while.body.41
                                        #   in Loop: Header=BB16_12 Depth=1
	movsbl	%dl, %edx
	movapd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	addl	$-48, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm1, %xmm3
	movb	2(%rbx,%rcx), %dl
	incq	%rcx
	testb	%dl, %dl
	jne	.LBB16_12
.LBB16_14:                              # %land.rhs.32.if.end.54.loopexit_crit_edge
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	leaq	1(%rbx,%rcx), %rbx
	jmp	.LBB16_15
.LBB16_11:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	incq	%rbx
.LBB16_15:                              # %if.end.54
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	pow
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	movb	(%rbx), %bpl
	testb	%bpl, %bpl
	je	.LBB16_30
.LBB16_16:                              # %land.lhs.true
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsbq	%bpl, %rbp
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	cmpl	$69, (%rax,%rbp,4)
	jne	.LBB16_17
# BB#18:                                # %if.then.63
	movzbl	1(%rbx), %eax
	movl	$1, %ebp
	cmpl	$43, %eax
	jne	.LBB16_19
# BB#22:                                # %if.then.83
	addq	$2, %rbx
	jmp	.LBB16_23
.LBB16_17:
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB16_30
.LBB16_19:                              # %if.then.63
	movzbl	%al, %eax
	cmpl	$45, %eax
	jne	.LBB16_20
# BB#21:                                # %if.then.75
	addq	$2, %rbx
	movl	$-1, %ebp
	jmp	.LBB16_23
.LBB16_20:
	incq	%rbx
.LBB16_23:                              # %if.end.87
	movb	(%rbx), %r14b
	xorl	%eax, %eax
	testb	%r14b, %r14b
	je	.LBB16_29
# BB#24:                                # %land.rhs.91.lr.ph
	callq	__ctype_b_loc
	movq	(%rax), %rcx
	incq	%rbx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB16_25:                              # %land.rhs.91
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%r14b, %rdx
	testb	$8, 1(%rcx,%rdx,2)
	je	.LBB16_29
# BB#26:                                # %while.body.100
                                        #   in Loop: Header=BB16_25 Depth=1
	movslq	%eax, %rdx
	addq	%rdx, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	cmpq	$2147483646, %rdx       # imm = 0x7FFFFFFE
	jg	.LBB16_28
# BB#27:                                # %if.then.105
                                        #   in Loop: Header=BB16_25 Depth=1
	movsbl	%r14b, %edx
	leal	(%rax,%rax,4), %eax
	leal	-48(%rdx,%rax,2), %eax
.LBB16_28:                              # %if.end.110
                                        #   in Loop: Header=BB16_25 Depth=1
	movb	(%rbx), %r14b
	incq	%rbx
	testb	%r14b, %r14b
	jne	.LBB16_25
.LBB16_29:                              # %while.end.115
	imull	%ebp, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	pow
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
.LBB16_30:                              # %if.end.119
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
.LBB16_31:                              # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ParseFloatNumber, .Lfunc_end16-ParseFloatNumber
	.cfi_endproc

	.globl	cmsIT8GetPropertyMulti
	.align	16, 0x90
	.type	cmsIT8GetPropertyMulti,@function
cmsIT8GetPropertyMulti:                 # @cmsIT8GetPropertyMulti
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp109:
	.cfi_def_cfa_offset 48
.Ltmp110:
	.cfi_offset %rbx, -40
.Ltmp111:
	.cfi_offset %r12, -32
.Ltmp112:
	.cfi_offset %r14, -24
.Ltmp113:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	4(%r15), %edx
	cmpl	(%r15), %edx
	jae	.LBB17_1
# BB#2:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r15,%rax), %r15
	jmp	.LBB17_3
.LBB17_1:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	SynError
	addq	$8, %r15
.LBB17_3:                               # %GetTable.exit
	movq	1040(%r15), %rbx
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB17_14
# BB#4:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB17_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	cmpl	$35, %eax
	je	.LBB17_7
# BB#6:                                 # %if.then.6.i
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	8(%rbx), %rsi
	movq	%r12, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB17_8
.LBB17_7:                               # %for.inc.i
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB17_5
	jmp	.LBB17_14
.LBB17_8:                               # %if.end.15.i
	testq	%r14, %r14
	je	.LBB17_13
# BB#9:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB17_10:                              # %for.body.23.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB17_12
# BB#11:                                # %if.end.28.i
                                        #   in Loop: Header=BB17_10 Depth=1
	movq	%r14, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB17_13
.LBB17_12:                              # %for.inc.38.i
                                        #   in Loop: Header=BB17_10 Depth=1
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB17_10
	jmp	.LBB17_14
.LBB17_13:                              # %if.then
	movq	32(%rbx), %r15
.LBB17_14:                              # %cleanup
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	cmsIT8GetPropertyMulti, .Lfunc_end17-cmsIT8GetPropertyMulti
	.cfi_endproc

	.globl	cmsIT8SetDataFormat
	.align	16, 0x90
	.type	cmsIT8SetDataFormat,@function
cmsIT8SetDataFormat:                    # @cmsIT8SetDataFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp115:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp117:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp118:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp120:
	.cfi_def_cfa_offset 64
.Ltmp121:
	.cfi_offset %rbx, -56
.Ltmp122:
	.cfi_offset %r12, -48
.Ltmp123:
	.cfi_offset %r13, -40
.Ltmp124:
	.cfi_offset %r14, -32
.Ltmp125:
	.cfi_offset %r15, -24
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB18_1
# BB#2:                                 # %if.end.i.8
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rbp
	jmp	.LBB18_3
.LBB18_1:                               # %if.then.i.7
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	leaq	8(%rbx), %rbp
.LBB18_3:                               # %GetTable.exit
	cmpq	$0, 1048(%rbp)
	jne	.LBB18_5
# BB#4:                                 # %if.then.i
	movq	%rbx, %rdi
	callq	AllocateDataFormat
.LBB18_5:                               # %if.end.i
	cmpl	%r15d, 1024(%rbp)
	jge	.LBB18_7
# BB#6:                                 # %if.then.1.i
	xorl	%r13d, %r13d
	movl	$.L.str.86, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	jmp	.LBB18_11
.LBB18_7:                               # %if.end.3.i
	movl	$1, %r13d
	cmpq	$0, 1048(%rbp)
	je	.LBB18_11
# BB#8:                                 # %if.then.6.i
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r12
	leal	1(%r12), %esi
	movq	%rbx, %rdi
	callq	AllocChunk
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB18_10
# BB#9:                                 # %if.then.i.4
	movl	%r12d, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strncpy
.LBB18_10:                              # %AllocString.exit
	movslq	%r15d, %rax
	movq	1048(%rbp), %rcx
	movq	%rbx, (%rcx,%rax,8)
.LBB18_11:                              # %SetDataFormat.exit
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	cmsIT8SetDataFormat, .Lfunc_end18-cmsIT8SetDataFormat
	.cfi_endproc

	.globl	cmsIT8SaveToFile
	.align	16, 0x90
	.type	cmsIT8SaveToFile,@function
cmsIT8SaveToFile:                       # @cmsIT8SaveToFile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp130:
	.cfi_def_cfa_offset 64
.Ltmp131:
	.cfi_offset %rbx, -32
.Ltmp132:
	.cfi_offset %r14, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	%rax, (%rsp)
	testq	%rax, %rax
	je	.LBB19_6
# BB#1:                                 # %for.cond.preheader
	cmpl	$0, (%rbx)
	je	.LBB19_5
# BB#2:                                 # %cmsIT8SetTable.exit.lr.ph
	xorl	%ebp, %ebp
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB19_3:                               # %cmsIT8SetTable.exit
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, 4(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteHeader
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	WriteDataFormat
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	WriteData
	incl	%ebp
	cmpl	(%rbx), %ebp
	jb	.LBB19_3
# BB#4:                                 # %for.cond.for.end_crit_edge
	movq	(%rsp), %rax
.LBB19_5:                               # %for.end
	movq	%rax, %rdi
	callq	fclose
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebp
.LBB19_6:                               # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cmsIT8SaveToFile, .Lfunc_end19-cmsIT8SaveToFile
	.cfi_endproc

	.align	16, 0x90
	.type	WriteHeader,@function
WriteHeader:                            # @WriteHeader
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp137:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp138:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp140:
	.cfi_def_cfa_offset 64
.Ltmp141:
	.cfi_offset %rbx, -56
.Ltmp142:
	.cfi_offset %r12, -48
.Ltmp143:
	.cfi_offset %r13, -40
.Ltmp144:
	.cfi_offset %r14, -32
.Ltmp145:
	.cfi_offset %r15, -24
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	4(%r14), %edx
	cmpl	(%r14), %edx
	jb	.LBB20_2
# BB#1:                                 # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB20_2:                               # %GetTable.exit
	imulq	$1064, %rdx, %rbx       # imm = 0x428
	leaq	8(%r14,%rbx), %rsi
	movq	%r12, %rdi
	callq	WriteStr
	movl	$.L.str.87, %esi
	movq	%r12, %rdi
	callq	WriteStr
	movq	1048(%r14,%rbx), %r13
	testq	%r13, %r13
	je	.LBB20_31
# BB#3:                                 # %for.body.lr.ph
	leaq	272528(%r14), %r15
	.align	16, 0x90
.LBB20_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_12 Depth 2
                                        #     Child Loop BB20_7 Depth 2
	movq	8(%r13), %rbx
	movzbl	(%rbx), %eax
	cmpl	$35, %eax
	jne	.LBB20_11
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB20_4 Depth=1
	movl	$.L.str.88, %esi
	movq	%r12, %rdi
	callq	WriteStr
	movq	32(%r13), %rbx
	movb	(%rbx), %al
	testb	%al, %al
	je	.LBB20_10
# BB#6:                                 # %for.body.4.preheader
                                        #   in Loop: Header=BB20_4 Depth=1
	incq	%rbx
	.align	16, 0x90
.LBB20_7:                               # %for.body.4
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%al, %edx
	movl	$.L.str.89, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	Writef
	movzbl	-1(%rbx), %eax
	cmpl	$10, %eax
	jne	.LBB20_9
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB20_7 Depth=2
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	WriteStr
.LBB20_9:                               # %for.inc
                                        #   in Loop: Header=BB20_7 Depth=2
	movb	(%rbx), %al
	incq	%rbx
	testb	%al, %al
	jne	.LBB20_7
.LBB20_10:                              # %for.end
                                        #   in Loop: Header=BB20_4 Depth=1
	movl	$.L.str.90, %esi
	jmp	.LBB20_30
	.align	16, 0x90
.LBB20_11:                              # %if.end.10
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	(%r15), %rbp
	testq	%rbp, %rbp
	jne	.LBB20_12
	jmp	.LBB20_17
	.align	16, 0x90
.LBB20_15:                              # %for.inc.i.for.body.i_crit_edge
                                        #   in Loop: Header=BB20_12 Depth=2
	movb	(%rbx), %al
.LBB20_12:                              # %for.body.i
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%al, %eax
	cmpl	$35, %eax
	je	.LBB20_14
# BB#13:                                # %if.then.6.i
                                        #   in Loop: Header=BB20_12 Depth=2
	movq	8(%rbp), %rsi
	movq	%rbx, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB20_18
.LBB20_14:                              # %for.inc.i
                                        #   in Loop: Header=BB20_12 Depth=2
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB20_15
# BB#16:                                # %if.then.14.loopexit
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	8(%r13), %rbx
.LBB20_17:                              # %if.then.14
                                        #   in Loop: Header=BB20_4 Depth=1
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	AddToList
.LBB20_18:                              # %if.end.17
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	8(%r13), %rsi
	movq	%r12, %rdi
	callq	WriteStr
	movq	32(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB20_29
# BB#19:                                # %if.then.21
                                        #   in Loop: Header=BB20_4 Depth=1
	movl	40(%r13), %edx
	cmpq	$4, %rdx
	ja	.LBB20_27
# BB#20:                                # %if.then.21
                                        #   in Loop: Header=BB20_4 Depth=1
	jmpq	*.LJTI20_0(,%rdx,8)
.LBB20_21:                              # %sw.bb
                                        #   in Loop: Header=BB20_4 Depth=1
	movl	$.L.str.91, %esi
	jmp	.LBB20_22
.LBB20_23:                              # %sw.bb.23
                                        #   in Loop: Header=BB20_4 Depth=1
	movl	$.L.str.92, %esi
.LBB20_22:                              # %if.end.35
                                        #   in Loop: Header=BB20_4 Depth=1
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%rcx, %rdx
	callq	Writef
	jmp	.LBB20_29
.LBB20_24:                              # %sw.bb.25
                                        #   in Loop: Header=BB20_4 Depth=1
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rcx, %rdi
	callq	strtol
	movq	%rax, %rcx
	movl	$.L.str.93, %esi
	jmp	.LBB20_25
.LBB20_26:                              # %sw.bb.28
                                        #   in Loop: Header=BB20_4 Depth=1
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rcx, %rdi
	callq	strtol
	movq	%rax, %rcx
	movl	$.L.str.94, %esi
.LBB20_25:                              # %if.end.35
                                        #   in Loop: Header=BB20_4 Depth=1
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ecx, %edx
	callq	Writef
	jmp	.LBB20_29
.LBB20_28:                              # %sw.bb.31
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	24(%r13), %rdx
	movl	$.L.str.95, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	Writef
	.align	16, 0x90
.LBB20_29:                              # %if.end.35
                                        #   in Loop: Header=BB20_4 Depth=1
	movl	$.L.str.87, %esi
.LBB20_30:                              # %for.inc.36
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	%r12, %rdi
	callq	WriteStr
	movq	(%r13), %r13
	testq	%r13, %r13
	jne	.LBB20_4
.LBB20_31:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_27:                              # %sw.default
	movl	$.L.str.96, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	SynError                # TAILCALL
.Lfunc_end20:
	.size	WriteHeader, .Lfunc_end20-WriteHeader
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI20_0:
	.quad	.LBB20_21
	.quad	.LBB20_23
	.quad	.LBB20_24
	.quad	.LBB20_26
	.quad	.LBB20_28

	.text
	.align	16, 0x90
	.type	WriteDataFormat,@function
WriteDataFormat:                        # @WriteDataFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp147:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 48
.Ltmp152:
	.cfi_offset %rbx, -48
.Ltmp153:
	.cfi_offset %r12, -40
.Ltmp154:
	.cfi_offset %r13, -32
.Ltmp155:
	.cfi_offset %r14, -24
.Ltmp156:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	4(%r14), %edx
	cmpl	(%r14), %edx
	jb	.LBB21_2
# BB#1:                                 # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB21_2:                               # %GetTable.exit
	imulq	$1064, %rdx, %r12       # imm = 0x428
	cmpq	$0, 1056(%r14,%r12)
	je	.LBB21_15
# BB#3:                                 # %if.end
	movl	$.L.str.100, %esi
	movq	%r15, %rdi
	callq	WriteStr
	movl	$.L.str.97, %esi
	movq	%r15, %rdi
	callq	WriteStr
	movl	4(%r14), %edx
	cmpl	(%r14), %edx
	jae	.LBB21_4
# BB#5:                                 # %if.end.i.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r14,%rax), %rax
	jmp	.LBB21_6
.LBB21_15:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB21_4:                               # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	SynError
	leaq	8(%r14), %rax
.LBB21_6:                               # %GetTable.exit.i
	movq	1040(%rax), %rbx
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	je	.LBB21_11
# BB#7:
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB21_8:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rsi
	movl	$.L.str.19, %edi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB21_10
# BB#9:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB21_8 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB21_8
	jmp	.LBB21_11
.LBB21_10:                              # %if.then.i.13
	movq	32(%rbx), %r13
.LBB21_11:                              # %cmsIT8GetProperty.exit
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r13, %rdi
	callq	strtol
	movq	%rax, %r13
	testl	%r13d, %r13d
	jle	.LBB21_14
# BB#12:                                # %for.body.lr.ph
	leaq	1056(%r14,%r12), %r14
	negl	%r13d
	xorl	%ebx, %ebx
	movl	$.L.str.87, %r12d
	.align	16, 0x90
.LBB21_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r15, %rdi
	callq	WriteStr
	leal	(%r13,%rbx), %eax
	cmpl	$-1, %eax
	movl	$.L.str.101, %esi
	cmoveq	%r12, %rsi
	movq	%r15, %rdi
	callq	WriteStr
	incq	%rbx
	movl	%r13d, %eax
	addl	%ebx, %eax
	jne	.LBB21_13
.LBB21_14:                              # %for.end
	movl	$.L.str.102, %esi
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	WriteStr                # TAILCALL
.Lfunc_end21:
	.size	WriteDataFormat, .Lfunc_end21-WriteDataFormat
	.cfi_endproc

	.align	16, 0x90
	.type	WriteData,@function
WriteData:                              # @WriteData
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp161:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp163:
	.cfi_def_cfa_offset 64
.Ltmp164:
	.cfi_offset %rbx, -56
.Ltmp165:
	.cfi_offset %r12, -48
.Ltmp166:
	.cfi_offset %r13, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jb	.LBB22_2
# BB#1:                                 # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB22_2:                               # %GetTable.exit
	imulq	$1064, %rdx, %r14       # imm = 0x428
	cmpq	$0, 1064(%rbx,%r14)
	je	.LBB22_23
# BB#3:                                 # %if.end
	movl	$.L.str.103, %esi
	movq	%r12, %rdi
	callq	WriteStr
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB22_4
# BB#5:                                 # %if.end.i.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rax
	jmp	.LBB22_6
.LBB22_23:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_4:                               # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	leaq	8(%rbx), %rax
.LBB22_6:                               # %GetTable.exit.i
	movq	1040(%rax), %rbp
	xorl	%r15d, %r15d
	testq	%rbp, %rbp
	je	.LBB22_11
# BB#7:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB22_8:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rsi
	movl	$.L.str.20, %edi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB22_10
# BB#9:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB22_8 Depth=1
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB22_8
	jmp	.LBB22_11
.LBB22_10:                              # %if.then.i.26
	movq	32(%rbp), %r15
.LBB22_11:                              # %cmsIT8GetProperty.exit
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strtol
	movl	%eax, 1036(%rbx,%r14)
	testl	%eax, %eax
	jle	.LBB22_22
# BB#12:                                # %for.body.lr.ph
	leaq	1064(%rbx,%r14), %r15
	leaq	1036(%rbx,%r14), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	1032(%rbx,%r14), %rbp
	.align	16, 0x90
.LBB22_13:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_14 Depth 2
	movl	$.L.str.97, %esi
	movq	%r12, %rdi
	callq	WriteStr
	movl	(%rbp), %eax
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jle	.LBB22_21
	.align	16, 0x90
.LBB22_14:                              # %for.body.6
                                        #   Parent Loop BB22_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	imull	%r13d, %eax
	leal	(%rax,%r14), %eax
	cltq
	movq	(%r15), %rcx
	movq	(%rcx,%rax,8), %rbx
	testq	%rbx, %rbx
	je	.LBB22_15
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB22_14 Depth=2
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB22_19
# BB#18:                                # %if.then.13
                                        #   in Loop: Header=BB22_14 Depth=2
	movl	$.L.str.105, %esi
	movq	%r12, %rdi
	callq	WriteStr
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	WriteStr
	movl	$.L.str.105, %esi
	movq	%r12, %rdi
	jmp	.LBB22_20
	.align	16, 0x90
.LBB22_15:                              # %if.then.10
                                        #   in Loop: Header=BB22_14 Depth=2
	movl	$.L.str.104, %esi
	movq	%r12, %rdi
	jmp	.LBB22_20
	.align	16, 0x90
.LBB22_19:                              # %if.else.14
                                        #   in Loop: Header=BB22_14 Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
.LBB22_20:                              # %if.end.16
                                        #   in Loop: Header=BB22_14 Depth=2
	callq	WriteStr
	movl	(%rbp), %eax
	decl	%eax
	cmpl	%eax, %r14d
	movl	$.L.str.101, %esi
	movl	$.L.str.87, %eax
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	WriteStr
	incl	%r14d
	movl	(%rbp), %eax
	cmpl	%eax, %r14d
	jl	.LBB22_14
.LBB22_21:                              # %for.inc.19
                                        #   in Loop: Header=BB22_13 Depth=1
	incl	%r13d
	movq	(%rsp), %rax            # 8-byte Reload
	cmpl	(%rax), %r13d
	jl	.LBB22_13
.LBB22_22:                              # %for.end.21
	movl	$.L.str.106, %esi
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	WriteStr                # TAILCALL
.Lfunc_end22:
	.size	WriteData, .Lfunc_end22-WriteData
	.cfi_endproc

	.globl	cmsIT8SaveToMem
	.align	16, 0x90
	.type	cmsIT8SaveToMem,@function
cmsIT8SaveToMem:                        # @cmsIT8SaveToMem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp171:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp172:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp174:
	.cfi_def_cfa_offset 80
.Ltmp175:
	.cfi_offset %rbx, -40
.Ltmp176:
	.cfi_offset %r14, -32
.Ltmp177:
	.cfi_offset %r15, -24
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	movq	$0, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r15, 24(%rsp)
	movl	$0, 32(%rsp)
	testq	%r15, %r15
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	(%r14), %ebp
.LBB23_2:                               # %for.cond.preheader
	movl	%ebp, 36(%rsp)
	movl	$1, %eax
	cmpl	$0, (%rbx)
	je	.LBB23_6
# BB#3:                                 # %cmsIT8SetTable.exit.lr.ph
	xorl	%ebp, %ebp
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB23_4:                               # %cmsIT8SetTable.exit
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, 4(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	WriteHeader
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	WriteDataFormat
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	WriteData
	incl	%ebp
	cmpl	(%rbx), %ebp
	jb	.LBB23_4
# BB#5:                                 # %for.cond.for.end_crit_edge
	movl	32(%rsp), %eax
	movq	16(%rsp), %r15
	incl	%eax
.LBB23_6:                               # %for.end
	movl	%eax, 32(%rsp)
	testq	%r15, %r15
	je	.LBB23_8
# BB#7:                                 # %if.then.9
	movq	24(%rsp), %rax
	movb	$0, (%rax)
	movl	32(%rsp), %eax
.LBB23_8:                               # %if.end.11
	movl	%eax, (%r14)
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	cmsIT8SaveToMem, .Lfunc_end23-cmsIT8SaveToMem
	.cfi_endproc

	.globl	cmsIT8LoadFromMem
	.align	16, 0x90
	.type	cmsIT8LoadFromMem,@function
cmsIT8LoadFromMem:                      # @cmsIT8LoadFromMem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp180:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp181:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp182:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp183:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp184:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp185:
	.cfi_def_cfa_offset 64
.Ltmp186:
	.cfi_offset %rbx, -56
.Ltmp187:
	.cfi_offset %r12, -48
.Ltmp188:
	.cfi_offset %r13, -40
.Ltmp189:
	.cfi_offset %r14, -32
.Ltmp190:
	.cfi_offset %r15, -24
.Ltmp191:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB24_25
# BB#1:                                 # %cond.end
	testl	%r15d, %r15d
	je	.LBB24_26
# BB#2:                                 # %cond.end.4
	xorl	%eax, %eax
	cmpl	$10, %r15d
	jl	.LBB24_24
# BB#3:                                 # %if.end.i
	cmpl	$132, %r15d
	movl	$132, %ecx
	cmovlel	%r15d, %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	jl	.LBB24_24
# BB#4:                                 # %for.body.lr.ph.i
	movslq	%ecx, %rcx
	movl	$1, %r8d
	movl	$1, %edi
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	movl	$1, %r13d
	.align	16, 0x90
.LBB24_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbx,%rdi), %al
	movzbl	%al, %esi
	cmpl	$31, %esi
	jle	.LBB24_6
# BB#15:                                # %for.body.i
                                        #   in Loop: Header=BB24_5 Depth=1
	cmpl	$32, %esi
	je	.LBB24_27
# BB#16:                                # %for.body.i
                                        #   in Loop: Header=BB24_5 Depth=1
	cmpl	$34, %esi
	jne	.LBB24_18
# BB#17:                                # %sw.bb.13.i
                                        #   in Loop: Header=BB24_5 Depth=1
	testl	%edx, %edx
	sete	%al
	movzbl	%al, %edx
	jmp	.LBB24_22
	.align	16, 0x90
.LBB24_6:                               # %for.body.i
                                        #   in Loop: Header=BB24_5 Depth=1
	cmpl	$9, %esi
	jne	.LBB24_7
.LBB24_27:                              # %sw.bb.9.i
                                        #   in Loop: Header=BB24_5 Depth=1
	movl	%ebp, %eax
	orl	%edx, %eax
	cmovel	%r8d, %ebp
	jmp	.LBB24_22
.LBB24_7:                               # %for.body.i
                                        #   in Loop: Header=BB24_5 Depth=1
	cmpl	$10, %esi
	je	.LBB24_9
# BB#8:                                 # %for.body.i
                                        #   in Loop: Header=BB24_5 Depth=1
	cmpl	$13, %esi
	je	.LBB24_9
.LBB24_18:                              # %sw.default.i
                                        #   in Loop: Header=BB24_5 Depth=1
	cmpl	$32, %esi
	jb	.LBB24_19
# BB#20:                                # %sw.default.i
                                        #   in Loop: Header=BB24_5 Depth=1
	testb	%al, %al
	movl	$0, %eax
	js	.LBB24_24
# BB#21:                                # %if.end.28.i
                                        #   in Loop: Header=BB24_5 Depth=1
	addl	%ebp, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB24_22:                              # %for.inc.i
                                        #   in Loop: Header=BB24_5 Depth=1
	incq	%rdi
	cmpq	%rcx, %rdi
	movl	$0, %eax
	jl	.LBB24_5
	jmp	.LBB24_24
.LBB24_9:                               # %sw.bb.i
	xorl	%eax, %eax
	testl	%r13d, %r13d
	je	.LBB24_24
# BB#10:                                # %sw.bb.i
	cmpl	$1, %edx
	je	.LBB24_24
# BB#11:                                # %sw.bb.i
	cmpl	$2, %r13d
	jg	.LBB24_24
# BB#12:                                # %if.end
	movq	%r14, %rdi
	callq	cmsIT8Alloc
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB24_24
# BB#13:                                # %if.end.8
	leal	1(%r15), %esi
	movq	%r14, %rdi
	callq	_cmsMalloc
	movq	%rax, 272728(%r12)
	movl	%r15d, %r15d
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncpy
	movq	272728(%r12), %rax
	movb	$0, (%rax,%r15)
	movq	272560(%r12), %rdi
	movl	$.L.str.9, %esi
	movl	$255, %edx
	callq	strncpy
	movq	272728(%r12), %rax
	movq	%rax, 272544(%r12)
	decl	%r13d
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	ParseIT8
	testl	%eax, %eax
	je	.LBB24_14
# BB#23:                                # %if.end.19
	movq	%r12, %rdi
	callq	CookPointers
	movl	$0, 4(%r12)
	movq	272728(%r12), %rsi
	movq	%r14, %rdi
	callq	_cmsFree
	movq	$0, 272728(%r12)
	movq	%r12, %rax
	jmp	.LBB24_24
.LBB24_19:
	xorl	%eax, %eax
	jmp	.LBB24_24
.LBB24_14:                              # %if.then.18
	movq	%r12, %rdi
	callq	cmsIT8Free
	xorl	%eax, %eax
.LBB24_24:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_25:                              # %cond.false
	movl	$.L.str.6, %edi
	movl	$.L.str.7, %esi
	movl	$2297, %edx             # imm = 0x8F9
	movl	$.L__PRETTY_FUNCTION__.cmsIT8LoadFromMem, %ecx
	callq	__assert_fail
.LBB24_26:                              # %cond.false.3
	movl	$.L.str.8, %edi
	movl	$.L.str.7, %esi
	movl	$2298, %edx             # imm = 0x8FA
	movl	$.L__PRETTY_FUNCTION__.cmsIT8LoadFromMem, %ecx
	callq	__assert_fail
.Lfunc_end24:
	.size	cmsIT8LoadFromMem, .Lfunc_end24-cmsIT8LoadFromMem
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	ParseIT8,@function
ParseIT8:                               # @ParseIT8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp193:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp194:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp195:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp196:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 56
	subq	$1224, %rsp             # imm = 0x4C8
.Ltmp198:
	.cfi_def_cfa_offset 1280
.Ltmp199:
	.cfi_offset %rbx, -56
.Ltmp200:
	.cfi_offset %r12, -48
.Ltmp201:
	.cfi_offset %r13, -40
.Ltmp202:
	.cfi_offset %r14, -32
.Ltmp203:
	.cfi_offset %r15, -24
.Ltmp204:
	.cfi_offset %rbp, -16
	movl	%esi, 52(%rsp)          # 4-byte Spill
	movq	%rdi, %r12
	testl	%esi, %esi
	jne	.LBB25_8
	jmp	.LBB25_1
	.align	16, 0x90
.LBB25_130:                             # %while.body.i
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	%r12, %rdi
	callq	NextCh
.LBB25_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	271356(%r12), %eax
	cmpl	$9, %eax
	je	.LBB25_130
# BB#2:                                 # %while.cond.i
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpl	$32, %eax
	je	.LBB25_130
# BB#3:                                 # %while.cond.1.i.preheader
	leaq	8(%r12), %rbx
	movl	$19457, %ebp            # imm = 0x4C01
	jmp	.LBB25_4
	.align	16, 0x90
.LBB25_6:                               # %while.body.10.i
                                        #   in Loop: Header=BB25_4 Depth=1
	movb	%al, (%rbx)
	incq	%rbx
	movq	%r12, %rdi
	callq	NextCh
	movl	271356(%r12), %eax
.LBB25_4:                               # %while.cond.1.i
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %ecx
	cmpl	$14, %ecx
	ja	.LBB25_6
# BB#5:                                 # %while.cond.1.i
                                        #   in Loop: Header=BB25_4 Depth=1
	btl	%ecx, %ebp
	jae	.LBB25_6
# BB#7:                                 # %ReadType.exit
	movb	$0, (%rbx)
	.align	16, 0x90
.LBB25_8:                               # %while.body.i.29
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	InSymbol
	movl	271352(%r12), %eax
	cmpl	$6, %eax
	je	.LBB25_8
# BB#9:                                 # %while.cond.preheader
	leal	-7(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB25_128
# BB#10:                                # %while.body.lr.ph
	leaq	272528(%r12), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	272536(%r12), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	271376(%r12), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	271504(%r12), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	8(%r12), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	64(%rsp), %rbp
	jmp	.LBB25_11
.LBB25_55:                              # %Skip.exit.i.53
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	%r12, %rdi
	callq	InSymbol
	movl	271352(%r12), %ecx
	cmpl	$6, %ecx
	movq	%r13, %rbp
	jne	.LBB25_57
.LBB25_56:                              # %while.body.i.41.i
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	movl	271352(%r12), %ecx
	cmpl	$6, %ecx
	je	.LBB25_56
	jmp	.LBB25_57
	.align	16, 0x90
.LBB25_11:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_84 Depth 2
                                        #       Child Loop BB25_93 Depth 3
                                        #       Child Loop BB25_105 Depth 3
                                        #         Child Loop BB25_110 Depth 4
                                        #         Child Loop BB25_114 Depth 4
                                        #         Child Loop BB25_116 Depth 4
                                        #         Child Loop BB25_117 Depth 4
                                        #     Child Loop BB25_19 Depth 2
                                        #     Child Loop BB25_20 Depth 2
                                        #       Child Loop BB25_34 Depth 3
                                        #     Child Loop BB25_35 Depth 2
                                        #     Child Loop BB25_37 Depth 2
                                        #     Child Loop BB25_44 Depth 2
                                        #     Child Loop BB25_48 Depth 2
                                        #       Child Loop BB25_54 Depth 3
                                        #     Child Loop BB25_56 Depth 2
                                        #     Child Loop BB25_63 Depth 2
                                        #     Child Loop BB25_81 Depth 2
	cmpl	$6, %eax
	je	.LBB25_81
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$9, %eax
	jne	.LBB25_13
# BB#40:                                # %sw.bb.7
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	4(%r12), %ebx
	cmpl	(%r12), %ebx
	jb	.LBB25_42
# BB#41:                                # %if.then.i.i.34
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	SynError
	xorl	%ebx, %ebx
.LBB25_42:                              # %GetTable.exit.i.39
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	%r12, %rdi
	callq	InSymbol
	cmpl	$6, 271352(%r12)
	jne	.LBB25_43
	.align	16, 0x90
.LBB25_44:                              # %while.body.i.i.45
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	cmpl	$6, 271352(%r12)
	je	.LBB25_44
	jmp	.LBB25_45
	.align	16, 0x90
.LBB25_81:                              # %while.body.i.97
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	cmpl	$6, 271352(%r12)
	je	.LBB25_81
	jmp	.LBB25_82
	.align	16, 0x90
.LBB25_13:                              # %while.body
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$10, %eax
	jne	.LBB25_84
# BB#14:                                # %sw.bb
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jae	.LBB25_15
# BB#16:                                # %if.end.i.i
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	jmp	.LBB25_17
	.align	16, 0x90
.LBB25_92:                              # %sw.bb.25.i
                                        #   in Loop: Header=BB25_84 Depth=2
	movl	$127, %edx
	leaq	1088(%rsp), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	strncpy
	movb	$0, 1215(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
	jmp	.LBB25_93
	.align	16, 0x90
.LBB25_96:                              # %for.inc.i.i
                                        #   in Loop: Header=BB25_93 Depth=3
	movq	(%rbx), %rbx
.LBB25_93:                              # %sw.bb.25.i
                                        #   Parent Loop BB25_11 Depth=1
                                        #     Parent Loop BB25_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rbx, %rbx
	je	.LBB25_97
# BB#94:                                # %for.body.i.i
                                        #   in Loop: Header=BB25_93 Depth=3
	movzbl	1088(%rsp), %eax
	cmpl	$35, %eax
	je	.LBB25_96
# BB#95:                                # %if.then.6.i.i.107
                                        #   in Loop: Header=BB25_93 Depth=3
	movq	8(%rbx), %rsi
	leaq	1088(%rsp), %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	jne	.LBB25_96
	jmp	.LBB25_98
	.align	16, 0x90
.LBB25_86:                              # %sw.bb.i
                                        #   in Loop: Header=BB25_84 Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	movl	$1023, %edx             # imm = 0x3FF
	movl	$.L.str.129, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	GetVal
	testl	%eax, %eax
	je	.LBB25_126
# BB#87:                                # %if.end.i.106
                                        #   in Loop: Header=BB25_84 Depth=2
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB25_88
	.align	16, 0x90
.LBB25_90:                              # %sw.bb.14.i
                                        #   in Loop: Header=BB25_84 Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	movl	$1023, %edx             # imm = 0x3FF
	movl	$.L.str.129, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	GetVal
	testl	%eax, %eax
	je	.LBB25_126
# BB#91:                                # %if.end.19.i
                                        #   in Loop: Header=BB25_84 Depth=2
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB25_88:                              # %if.end.i.106
                                        #   in Loop: Header=BB25_84 Depth=2
	movq	%rbp, %rdx
	callq	AddToList
	testq	%rax, %rax
	jne	.LBB25_89
	jmp	.LBB25_126
.LBB25_97:                              # %if.then.32.i
                                        #   in Loop: Header=BB25_84 Depth=2
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	1088(%rsp), %rdx
	callq	AddToList
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB25_126
.LBB25_98:                              # %if.end.38.i
                                        #   in Loop: Header=BB25_84 Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	movl	$1023, %edx             # imm = 0x3FF
	movl	$.L.str.130, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	GetVal
	testl	%eax, %eax
	je	.LBB25_126
# BB#99:                                # %if.end.43.i
                                        #   in Loop: Header=BB25_84 Depth=2
	cmpl	$4, 40(%rbx)
	jne	.LBB25_100
# BB#103:                               # %if.else.i
                                        #   in Loop: Header=BB25_84 Depth=2
	cmpl	$4, 271352(%r12)
	movq	%rbp, %rax
	movq	%rax, %r15
	jne	.LBB25_104
	.align	16, 0x90
.LBB25_105:                             # %for.body.i
                                        #   Parent Loop BB25_11 Depth=1
                                        #     Parent Loop BB25_84 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB25_110 Depth 4
                                        #         Child Loop BB25_114 Depth 4
                                        #         Child Loop BB25_116 Depth 4
                                        #         Child Loop BB25_117 Depth 4
	movl	$59, %esi
	movq	%rbp, %rdi
	callq	strchr
	testq	%rax, %rax
	movl	$0, %r13d
	je	.LBB25_107
# BB#106:                               # %if.then.63.i
                                        #   in Loop: Header=BB25_105 Depth=3
	movq	%rax, %r13
	incq	%r13
	movb	$0, (%rax)
.LBB25_107:                             # %if.end.64.i
                                        #   in Loop: Header=BB25_105 Depth=3
	movl	$44, %esi
	movq	%rbp, %rdi
	callq	strrchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB25_108
# BB#109:                               # %if.end.70.i
                                        #   in Loop: Header=BB25_105 Depth=3
	leaq	1(%rbx), %r14
	movq	%rbx, %rax
	decq	%rax
	.align	16, 0x90
.LBB25_110:                             # %do.body.i
                                        #   Parent Loop BB25_11 Depth=1
                                        #     Parent Loop BB25_84 Depth=2
                                        #       Parent Loop BB25_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	$0, 1(%rax)
	cmpq	%rbp, %rax
	jb	.LBB25_112
# BB#111:                               # %land.rhs.74.i
                                        #   in Loop: Header=BB25_110 Depth=4
	movzbl	(%rax), %ecx
	decq	%rax
	cmpl	$32, %ecx
	je	.LBB25_110
.LBB25_112:                             # %do.end.i
                                        #   in Loop: Header=BB25_105 Depth=3
	movq	%r14, %rdi
	callq	strlen
	movzbl	-1(%r14,%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB25_115
# BB#113:                               #   in Loop: Header=BB25_105 Depth=3
	leaq	-1(%r14,%rax), %rax
	.align	16, 0x90
.LBB25_114:                             # %while.body.84.i
                                        #   Parent Loop BB25_11 Depth=1
                                        #     Parent Loop BB25_84 Depth=2
                                        #       Parent Loop BB25_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	$0, (%rax)
	movzbl	-1(%rax), %ecx
	decq	%rax
	cmpl	$32, %ecx
	je	.LBB25_114
.LBB25_115:                             # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB25_105 Depth=3
	decq	%rbp
	.align	16, 0x90
.LBB25_116:                             # %while.cond.i.i
                                        #   Parent Loop BB25_11 Depth=1
                                        #     Parent Loop BB25_84 Depth=2
                                        #       Parent Loop BB25_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	1(%rbp), %eax
	incq	%rbp
	cmpl	$32, %eax
	je	.LBB25_116
	.align	16, 0x90
.LBB25_117:                             # %while.cond.i.91.i
                                        #   Parent Loop BB25_11 Depth=1
                                        #     Parent Loop BB25_84 Depth=2
                                        #       Parent Loop BB25_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	1(%rbx), %ecx
	incq	%rbx
	cmpl	$32, %ecx
	je	.LBB25_117
# BB#118:                               # %__strspn_c1.exit92.i
                                        #   in Loop: Header=BB25_105 Depth=3
	testb	%al, %al
	je	.LBB25_108
# BB#119:                               # %__strspn_c1.exit92.i
                                        #   in Loop: Header=BB25_105 Depth=3
	testb	%cl, %cl
	je	.LBB25_108
# BB#120:                               # %if.end.189.i
                                        #   in Loop: Header=BB25_105 Depth=3
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jb	.LBB25_122
# BB#121:                               # %if.then.i.97.i
                                        #   in Loop: Header=BB25_105 Depth=3
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB25_122:                             # %cleanup.i
                                        #   in Loop: Header=BB25_105 Depth=3
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	1048(%r12,%rax), %rsi
	movl	$4, %r9d
	movq	%r12, %rdi
	leaq	1088(%rsp), %rdx
	movq	%rbp, %rcx
	movq	%rbx, %r8
	callq	AddToList
	testq	%r13, %r13
	movq	%r13, %rbp
	jne	.LBB25_105
	jmp	.LBB25_123
.LBB25_100:                             # %if.then.45.i
                                        #   in Loop: Header=BB25_84 Depth=2
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jb	.LBB25_102
# BB#101:                               # %if.then.i.i.109
                                        #   in Loop: Header=BB25_84 Depth=2
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB25_102:                             # %GetTable.exit.i.113
                                        #   in Loop: Header=BB25_84 Depth=2
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	1048(%r12,%rax), %rsi
	cmpl	$4, 271352(%r12)
	sete	%al
	movzbl	%al, %r9d
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	leaq	1088(%rsp), %rdx
	movq	%rbp, %r8
	movq	%rbp, %r15
	callq	AddToList
.LBB25_123:                             # %if.end.199.i
                                        #   in Loop: Header=BB25_84 Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	movq	%r15, %rbp
	jmp	.LBB25_124
	.align	16, 0x90
.LBB25_89:                              # %if.end.13.i
                                        #   in Loop: Header=BB25_84 Depth=2
	movq	%r12, %rdi
	callq	InSymbol
.LBB25_124:                             # %sw.epilog.i
                                        #   in Loop: Header=BB25_84 Depth=2
	movl	271352(%r12), %eax
	cmpl	$6, %eax
	je	.LBB25_89
.LBB25_84:                              # %while.cond.i.104
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_93 Depth 3
                                        #       Child Loop BB25_105 Depth 3
                                        #         Child Loop BB25_110 Depth 4
                                        #         Child Loop BB25_114 Depth 4
                                        #         Child Loop BB25_116 Depth 4
                                        #         Child Loop BB25_117 Depth 4
	addl	$-3, %eax
	cmpl	$11, %eax
	ja	.LBB25_125
# BB#85:                                # %while.cond.i.104
                                        #   in Loop: Header=BB25_84 Depth=2
	jmpq	*.LJTI25_1(,%rax,8)
.LBB25_43:                              # %Check.exit.thread.i.i.43
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.126, %edi
	movl	$37, %esi
	callq	strchr
	testq	%rax, %rax
	movl	$.L.str.123, %esi
	movl	$.L.str.126, %eax
	cmoveq	%rax, %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
.LBB25_45:                              # %CheckEOLN.exit.i
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	%rbp, %r13
	imulq	$1064, %rbx, %r15       # imm = 0x428
	movq	%r15, 32(%rsp)          # 8-byte Spill
	cmpq	$0, 1064(%r12,%r15)
	jne	.LBB25_47
# BB#46:                                # %if.then.i.46
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	%r12, %rdi
	callq	AllocateDataSet
.LBB25_47:                              # %while.condthread-pre-split.i
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	271352(%r12), %ecx
	leaq	1032(%r12,%r15), %r14
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
.LBB25_48:                              # %while.cond.i.49
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_54 Depth 3
	cmpl	$7, %ecx
	je	.LBB25_49
# BB#50:                                # %while.cond.i.49
                                        #   in Loop: Header=BB25_48 Depth=2
	cmpl	$11, %ecx
	je	.LBB25_55
# BB#51:                                # %while.body.i.51
                                        #   in Loop: Header=BB25_48 Depth=2
	cmpl	(%r14), %ebp
	movl	$0, %eax
	cmovgel	%eax, %ebp
	setge	%r15b
	movl	$255, %edx
	movl	$.L.str.127, %ecx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	GetVal
	testl	%eax, %eax
	je	.LBB25_59
# BB#52:                                # %if.end.15.i
                                        #   in Loop: Header=BB25_48 Depth=2
	movzbl	%r15b, %eax
	addl	%eax, %ebx
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%ebp, %edx
	movq	%r13, %rcx
	callq	SetData
	testl	%eax, %eax
	je	.LBB25_59
# BB#53:                                # %if.end.20.i
                                        #   in Loop: Header=BB25_48 Depth=2
	incl	%ebp
	movq	%r12, %rdi
	callq	InSymbol
	movl	271352(%r12), %ecx
	cmpl	$6, %ecx
	movq	32(%rsp), %r15          # 8-byte Reload
	jne	.LBB25_48
	.align	16, 0x90
.LBB25_54:                              # %while.body.i.29.i
                                        #   Parent Loop BB25_11 Depth=1
                                        #     Parent Loop BB25_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r12, %rdi
	callq	InSymbol
	movl	271352(%r12), %ecx
	cmpl	$6, %ecx
	je	.LBB25_54
	jmp	.LBB25_48
	.align	16, 0x90
.LBB25_49:                              #   in Loop: Header=BB25_11 Depth=1
	movq	%r13, %rbp
.LBB25_57:                              # %SkipEOLN.exit42.i
                                        #   in Loop: Header=BB25_11 Depth=1
	incl	%ebx
	movl	1036(%r12,%r15), %edx
	cmpl	%edx, %ebx
	jne	.LBB25_58
# BB#127:                               # %if.end.11
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$7, %eax
	cmpl	$7, %ecx
	je	.LBB25_128
# BB#60:                                # %if.then.14
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	(%r12), %eax
	imulq	$1064, %rax, %rax       # imm = 0x428
	movq	$0, 1048(%r12,%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1056(%r12,%rax)
	movl	(%r12), %edx
	leal	1(%rdx), %eax
	movl	%eax, (%r12)
	movl	%edx, 4(%r12)
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	jne	.LBB25_82
# BB#61:                                # %if.then.16
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	271352(%r12), %eax
	cmpl	$4, %eax
	jne	.LBB25_62
# BB#77:                                # %if.then.36
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$-1, %edx
	je	.LBB25_78
# BB#79:                                # %if.end.i.i.87
                                        #   in Loop: Header=BB25_11 Depth=1
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r12,%rax), %rbx
	jmp	.LBB25_80
.LBB25_15:                              # %if.then.i.i
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB25_17:                              # %GetTable.exit.i
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	%r12, %rdi
	callq	InSymbol
	cmpl	$6, 271352(%r12)
	jne	.LBB25_18
	.align	16, 0x90
.LBB25_19:                              # %while.body.i.i
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	movl	271352(%r12), %eax
	cmpl	$6, %eax
	movl	$0, %r13d
	je	.LBB25_19
	jmp	.LBB25_20
.LBB25_18:                              # %Check.exit.thread.i.i
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.126, %edi
	movl	$37, %esi
	callq	strchr
	testq	%rax, %rax
	movl	$.L.str.123, %esi
	movl	$.L.str.126, %eax
	cmoveq	%rax, %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	movl	271352(%r12), %eax
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB25_20:                              # %while.cond.i.30
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_34 Depth 3
	leal	-3(%rax), %ecx
	cmpl	$9, %ecx
	ja	.LBB25_22
# BB#21:                                # %while.cond.i.30
                                        #   in Loop: Header=BB25_20 Depth=2
	jmpq	*.LJTI25_0(,%rcx,8)
.LBB25_24:                              # %if.end.i
                                        #   in Loop: Header=BB25_20 Depth=2
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jb	.LBB25_26
# BB#25:                                # %if.then.i.49.i
                                        #   in Loop: Header=BB25_20 Depth=2
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB25_26:                              # %GetTable.exit54.i
                                        #   in Loop: Header=BB25_20 Depth=2
	imulq	$1064, %rdx, %rbx       # imm = 0x428
	cmpq	$0, 1056(%r12,%rbx)
	jne	.LBB25_28
# BB#27:                                # %if.then.i.22.i
                                        #   in Loop: Header=BB25_20 Depth=2
	movq	%r12, %rdi
	callq	AllocateDataFormat
.LBB25_28:                              # %if.end.i.24.i
                                        #   in Loop: Header=BB25_20 Depth=2
	movslq	1032(%r12,%rbx), %rax
	cmpq	%r13, %rax
	jl	.LBB25_131
# BB#29:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB25_20 Depth=2
	leaq	1056(%r12,%rbx), %r15
	cmpq	$0, (%r15)
	je	.LBB25_33
# BB#30:                                # %if.then.6.i.i
                                        #   in Loop: Header=BB25_20 Depth=2
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	leal	1(%rbp), %esi
	movq	%r12, %rdi
	callq	AllocChunk
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB25_32
# BB#31:                                # %if.then.i.28.i
                                        #   in Loop: Header=BB25_20 Depth=2
	movl	%ebp, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strncpy
.LBB25_32:                              # %AllocString.exit.i
                                        #   in Loop: Header=BB25_20 Depth=2
	movq	(%r15), %rax
	movq	%rbx, (%rax,%r13,8)
	leaq	64(%rsp), %rbp
.LBB25_33:                              # %if.end.14.i
                                        #   in Loop: Header=BB25_20 Depth=2
	incq	%r13
	.align	16, 0x90
.LBB25_34:                              # %while.body.i.31.i
                                        #   Parent Loop BB25_11 Depth=1
                                        #     Parent Loop BB25_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r12, %rdi
	callq	InSymbol
	movl	271352(%r12), %eax
	cmpl	$6, %eax
	je	.LBB25_34
	jmp	.LBB25_20
	.align	16, 0x90
.LBB25_35:                              # %while.body.i.35.i
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	movl	271352(%r12), %eax
	cmpl	$6, %eax
	je	.LBB25_35
.LBB25_36:                              # %SkipEOLN.exit36.i
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$12, %eax
	jne	.LBB25_38
	.align	16, 0x90
.LBB25_37:                              # %while.body.i.43.i
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	callq	InSymbol
	cmpl	$6, 271352(%r12)
	je	.LBB25_37
.LBB25_38:                              # %SkipEOLN.exit44.i
                                        #   in Loop: Header=BB25_11 Depth=1
	imulq	$1064, 32(%rsp), %rax   # 8-byte Folded Reload
                                        # imm = 0x428
	movl	1032(%r12,%rax), %edx
	cmpl	%edx, %r13d
	je	.LBB25_82
# BB#39:                                # %if.then.16.i
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.125, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r13d, %ecx
	callq	SynError
	jmp	.LBB25_82
.LBB25_62:                              # %if.then.16
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$3, %eax
	jne	.LBB25_83
	jmp	.LBB25_63
	.align	16, 0x90
.LBB25_132:                             # %while.body.23
                                        #   in Loop: Header=BB25_63 Depth=2
	movq	%r12, %rdi
	callq	NextCh
.LBB25_63:                              # %while.cond.20
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	271356(%r12), %eax
	cmpl	$12, %eax
	jg	.LBB25_68
# BB#64:                                # %while.cond.20
                                        #   in Loop: Header=BB25_63 Depth=2
	cmpl	$9, %eax
	je	.LBB25_132
	jmp	.LBB25_65
	.align	16, 0x90
.LBB25_68:                              # %while.cond.20
                                        #   in Loop: Header=BB25_63 Depth=2
	cmpl	$32, %eax
	je	.LBB25_132
# BB#69:                                # %while.cond.20
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$13, %eax
	jne	.LBB25_66
	jmp	.LBB25_70
.LBB25_78:                              # %if.then.i.i.84
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	movq	8(%rsp), %rbx           # 8-byte Reload
.LBB25_80:                              # %cmsIT8SetSheetType.exit93
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$1023, %edx             # imm = 0x3FF
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB25_74
.LBB25_65:                              # %while.cond.20
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$10, %eax
	jne	.LBB25_66
.LBB25_70:                              # %if.then.28
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jae	.LBB25_71
# BB#72:                                # %if.end.i.i.63
                                        #   in Loop: Header=BB25_11 Depth=1
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r12,%rax), %rbx
	jmp	.LBB25_73
.LBB25_66:                              # %if.else
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jae	.LBB25_67
# BB#75:                                # %if.end.i.i.73
                                        #   in Loop: Header=BB25_11 Depth=1
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r12,%rax), %rbx
	jmp	.LBB25_76
.LBB25_71:                              # %if.then.i.i.61
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	movq	8(%rsp), %rbx           # 8-byte Reload
.LBB25_73:                              # %cmsIT8SetSheetType.exit
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	$1023, %edx             # imm = 0x3FF
	movq	%rbx, %rdi
.LBB25_74:                              # %while.condthread-pre-split
                                        #   in Loop: Header=BB25_11 Depth=1
	callq	strncpy
	movb	$0, 1023(%rbx)
	movq	%r12, %rdi
	callq	InSymbol
	jmp	.LBB25_82
.LBB25_67:                              # %if.then.i.i.70
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	movq	8(%rsp), %rbx           # 8-byte Reload
.LBB25_76:                              # %cmsIT8SetSheetType.exit79
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$.L.str.9, %esi
	movl	$1023, %edx             # imm = 0x3FF
	movq	%rbx, %rdi
	callq	strncpy
	movb	$0, 1023(%rbx)
	.align	16, 0x90
.LBB25_82:                              # %while.condthread-pre-split
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	271352(%r12), %eax
.LBB25_83:                              # %while.cond.backedge
                                        #   in Loop: Header=BB25_11 Depth=1
	leal	-7(%rax), %ecx
	cmpl	$1, %ecx
	ja	.LBB25_11
.LBB25_128:                             # %while.end.48
	cmpl	$8, %eax
	setne	%al
	movzbl	%al, %ebx
	jmp	.LBB25_129
.LBB25_22:                              # %if.then.i
	xorl	%ebx, %ebx
	movl	$.L.str.124, %esi
	jmp	.LBB25_23
.LBB25_108:                             # %if.then.67.i
	leaq	1088(%rsp), %rdx
	movl	$.L.str.132, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%ebx, %ebx
	jmp	.LBB25_129
.LBB25_125:                             # %sw.default.i
	movl	$.L.str.133, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
.LBB25_126:                             # %HeaderSection.exit.thread
	xorl	%ebx, %ebx
	jmp	.LBB25_129
.LBB25_131:                             # %SetDataFormat.exit.i
	xorl	%ebx, %ebx
	movl	$.L.str.86, %esi
.LBB25_23:                              # %cleanup
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	jmp	.LBB25_129
.LBB25_58:                              # %if.then.24.i
	movl	$.L.str.128, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %ecx
	callq	SynError
.LBB25_59:                              # %DataSection.exit.thread
	xorl	%ebx, %ebx
.LBB25_129:                             # %cleanup
	movl	%ebx, %eax
	addq	$1224, %rsp             # imm = 0x4C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_104:                             # %if.then.54.i
	leaq	64(%rsp), %rdx
	leaq	1088(%rsp), %rcx
	movl	$.L.str.131, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%ebx, %ebx
	jmp	.LBB25_129
.Lfunc_end25:
	.size	ParseIT8, .Lfunc_end25-ParseIT8
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_24
	.quad	.LBB25_22
	.quad	.LBB25_22
	.quad	.LBB25_35
	.quad	.LBB25_36
	.quad	.LBB25_36
	.quad	.LBB25_22
	.quad	.LBB25_22
	.quad	.LBB25_22
	.quad	.LBB25_36
.LJTI25_1:
	.quad	.LBB25_92
	.quad	.LBB25_125
	.quad	.LBB25_125
	.quad	.LBB25_89
	.quad	.LBB25_82
	.quad	.LBB25_82
	.quad	.LBB25_82
	.quad	.LBB25_82
	.quad	.LBB25_125
	.quad	.LBB25_125
	.quad	.LBB25_86
	.quad	.LBB25_90

	.text
	.align	16, 0x90
	.type	CookPointers,@function
CookPointers:                           # @CookPointers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp206:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp207:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp208:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp209:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp210:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              # imm = 0x148
.Ltmp211:
	.cfi_def_cfa_offset 384
.Ltmp212:
	.cfi_offset %rbx, -56
.Ltmp213:
	.cfi_offset %r12, -48
.Ltmp214:
	.cfi_offset %r13, -40
.Ltmp215:
	.cfi_offset %r14, -32
.Ltmp216:
	.cfi_offset %r15, -24
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	4(%r13), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	cmpl	$0, (%r13)
	je	.LBB26_40
# BB#1:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
.LBB26_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_4 Depth 2
                                        #       Child Loop BB26_9 Depth 3
                                        #       Child Loop BB26_23 Depth 3
                                        #         Child Loop BB26_30 Depth 4
                                        #           Child Loop BB26_31 Depth 5
	movl	%ecx, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	imulq	$1064, %rax, %rax       # imm = 0x428
	movl	$0, 1040(%r13,%rax)
	movl	%ecx, 4(%r13)
	cmpl	$0, 1032(%r13,%rax)
	jle	.LBB26_39
# BB#3:                                 # %for.body.4.lr.ph
                                        #   in Loop: Header=BB26_2 Depth=1
	leaq	1040(%r13,%rax), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	1032(%r13,%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	1056(%r13,%rax), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	1036(%r13,%rax), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB26_4:                               # %for.body.4
                                        #   Parent Loop BB26_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_9 Depth 3
                                        #       Child Loop BB26_23 Depth 3
                                        #         Child Loop BB26_30 Depth 4
                                        #           Child Loop BB26_31 Depth 5
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB26_5
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB26_4 Depth=2
	movq	(%rax,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB26_38
# BB#7:                                 # %if.end.8
                                        #   in Loop: Header=BB26_4 Depth=2
	movl	$.L.str.13, %esi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	callq	cmsstrcasecmp
	testl	%eax, %eax
	leaq	64(%rsp), %r14
	jne	.LBB26_19
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB26_4 Depth=2
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%r15d, (%rax)
	xorl	%ebp, %ebp
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	jle	.LBB26_19
	.align	16, 0x90
.LBB26_9:                               # %for.body.15
                                        #   Parent Loop BB26_2 Depth=1
                                        #     Parent Loop BB26_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	4(%r13), %edx
	cmpl	(%r13), %edx
	jb	.LBB26_11
# BB#10:                                # %if.then.i.i
                                        #   in Loop: Header=BB26_9 Depth=3
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB26_11:                              # %GetTable.exit.i
                                        #   in Loop: Header=BB26_9 Depth=3
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	movslq	1032(%r13,%rcx), %rax
	cmpq	%r15, %rax
	jle	.LBB26_18
# BB#12:                                # %GetTable.exit.i
                                        #   in Loop: Header=BB26_9 Depth=3
	cmpl	%ebp, 1036(%r13,%rcx)
	jle	.LBB26_18
# BB#13:                                # %if.end.i
                                        #   in Loop: Header=BB26_9 Depth=3
	movq	1064(%r13,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB26_18
# BB#14:                                # %GetData.exit
                                        #   in Loop: Header=BB26_9 Depth=3
	imull	%ebp, %eax
	addl	%r15d, %eax
	cltq
	movq	(%rcx,%rax,8), %rbx
	testq	%rbx, %rbx
	je	.LBB26_18
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB26_9 Depth=3
	movl	$255, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strncpy
	movb	$0, 319(%rsp)
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%rax, %r12
	jbe	.LBB26_16
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB26_9 Depth=3
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	SetData
	jmp	.LBB26_18
.LBB26_16:                              # %if.then.26
                                        #   in Loop: Header=BB26_9 Depth=3
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcpy
	.align	16, 0x90
.LBB26_18:                              # %if.end.32
                                        #   in Loop: Header=BB26_9 Depth=3
	incl	%ebp
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %ebp
	jl	.LBB26_9
.LBB26_19:                              # %if.end.33
                                        #   in Loop: Header=BB26_4 Depth=2
	movl	$.L.str.15, %esi
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB26_21
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB26_4 Depth=2
	movzbl	(%rbx), %eax
	cmpl	$36, %eax
	jne	.LBB26_38
.LBB26_21:                              # %for.cond.40.preheader
                                        #   in Loop: Header=BB26_4 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	jle	.LBB26_38
# BB#22:                                # %for.body.44.preheader
                                        #   in Loop: Header=BB26_4 Depth=2
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB26_23:                              # %for.body.44
                                        #   Parent Loop BB26_2 Depth=1
                                        #     Parent Loop BB26_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB26_30 Depth 4
                                        #           Child Loop BB26_31 Depth 5
	movl	4(%r13), %edx
	cmpl	(%r13), %edx
	jb	.LBB26_25
# BB#24:                                # %if.then.i.i.61
                                        #   in Loop: Header=BB26_23 Depth=3
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB26_25:                              # %GetTable.exit.i.69
                                        #   in Loop: Header=BB26_23 Depth=3
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	movslq	1032(%r13,%rcx), %rax
	cmpq	%r15, %rax
	jle	.LBB26_37
# BB#26:                                # %GetTable.exit.i.69
                                        #   in Loop: Header=BB26_23 Depth=3
	cmpl	%r12d, 1036(%r13,%rcx)
	jle	.LBB26_37
# BB#27:                                # %if.end.i.72
                                        #   in Loop: Header=BB26_23 Depth=3
	movq	1064(%r13,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB26_37
# BB#28:                                # %GetData.exit79
                                        #   in Loop: Header=BB26_23 Depth=3
	imull	%r12d, %eax
	addl	%r15d, %eax
	cltq
	movq	(%rcx,%rax,8), %rbx
	testq	%rbx, %rbx
	je	.LBB26_37
# BB#29:                                # %for.cond.48.preheader
                                        #   in Loop: Header=BB26_23 Depth=3
	xorl	%ebp, %ebp
	cmpl	$0, (%r13)
	je	.LBB26_37
	.align	16, 0x90
.LBB26_30:                              # %for.body.52
                                        #   Parent Loop BB26_2 Depth=1
                                        #     Parent Loop BB26_4 Depth=2
                                        #       Parent Loop BB26_23 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB26_31 Depth 5
	movl	%ebp, %eax
	imulq	$1064, %rax, %rax       # imm = 0x428
	movq	1048(%r13,%rax), %r14
	jmp	.LBB26_31
	.align	16, 0x90
.LBB26_34:                              # %for.inc.i
                                        #   in Loop: Header=BB26_31 Depth=5
	movq	(%r14), %r14
.LBB26_31:                              # %for.body.52
                                        #   Parent Loop BB26_2 Depth=1
                                        #     Parent Loop BB26_4 Depth=2
                                        #       Parent Loop BB26_23 Depth=3
                                        #         Parent Loop BB26_30 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	testq	%r14, %r14
	je	.LBB26_36
# BB#32:                                # %for.body.i
                                        #   in Loop: Header=BB26_31 Depth=5
	movzbl	(%rbx), %eax
	cmpl	$35, %eax
	je	.LBB26_34
# BB#33:                                # %if.then.6.i
                                        #   in Loop: Header=BB26_31 Depth=5
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	jne	.LBB26_34
# BB#35:                                # %if.then.59
                                        #   in Loop: Header=BB26_30 Depth=4
	movq	32(%r14), %r9
	movl	$255, %esi
	movl	$.L.str.135, %edx
	xorl	%eax, %eax
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	snprintf
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	SetData
.LBB26_36:                              # %if.end.66
                                        #   in Loop: Header=BB26_30 Depth=4
	incl	%ebp
	cmpl	(%r13), %ebp
	jb	.LBB26_30
	.align	16, 0x90
.LBB26_37:                              # %if.end.70
                                        #   in Loop: Header=BB26_23 Depth=3
	incl	%r12d
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %r12d
	jl	.LBB26_23
.LBB26_38:                              # %for.inc.75
                                        #   in Loop: Header=BB26_4 Depth=2
	incq	%r15
	movq	32(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %rax
	cmpq	%rax, %r15
	jl	.LBB26_4
.LBB26_39:                              # %for.inc.78
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	incl	%eax
	cmpl	(%r13), %eax
	movl	%eax, %ecx
	jb	.LBB26_2
.LBB26_40:                              # %for.end.80
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 4(%r13)
	jmp	.LBB26_41
.LBB26_5:                               # %if.then
	movl	$.L.str.134, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	SynError
.LBB26_41:                              # %cleanup.82
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	CookPointers, .Lfunc_end26-CookPointers
	.cfi_endproc

	.globl	cmsIT8LoadFromFile
	.align	16, 0x90
	.type	cmsIT8LoadFromFile,@function
cmsIT8LoadFromFile:                     # @cmsIT8LoadFromFile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp219:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp220:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp221:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp222:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp223:
	.cfi_def_cfa_offset 192
.Ltmp224:
	.cfi_offset %rbx, -48
.Ltmp225:
	.cfi_offset %r12, -40
.Ltmp226:
	.cfi_offset %r14, -32
.Ltmp227:
	.cfi_offset %r15, -24
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%r15, %r15
	je	.LBB27_30
# BB#1:                                 # %cond.end
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	fopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB27_2
# BB#3:                                 # %if.end.i
	leaq	(%rsp), %rdi
	movl	$1, %esi
	movl	$132, %edx
	movq	%rbx, %rcx
	callq	fread
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	fclose
	testl	%eax, %eax
	jne	.LBB27_19
# BB#4:                                 # %if.end.5.i
	movl	%ebp, %eax
	movb	$0, (%rsp,%rax)
	cmpl	$10, %ebp
	jl	.LBB27_19
# BB#5:                                 # %if.end.i.i
	cmpl	$132, %ebp
	movl	$132, %eax
	cmovlel	%ebp, %eax
	cmpl	$2, %eax
	jl	.LBB27_19
# BB#6:                                 # %for.body.lr.ph.i.i
	cltq
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	$1, %r12d
	.align	16, 0x90
.LBB27_7:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsp,%rsi), %bl
	movzbl	%bl, %ebp
	cmpl	$31, %ebp
	jle	.LBB27_8
# BB#20:                                # %for.body.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	cmpl	$32, %ebp
	je	.LBB27_31
# BB#21:                                # %for.body.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	cmpl	$34, %ebp
	jne	.LBB27_23
# BB#22:                                # %sw.bb.13.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	testl	%edx, %edx
	sete	%dl
	movzbl	%dl, %edx
	jmp	.LBB27_26
	.align	16, 0x90
.LBB27_8:                               # %for.body.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	cmpl	$9, %ebp
	jne	.LBB27_9
.LBB27_31:                              # %sw.bb.9.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	movl	%ecx, %edi
	orl	%edx, %edi
	cmovel	%r8d, %ecx
	jmp	.LBB27_26
.LBB27_9:                               # %for.body.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	cmpl	$10, %ebp
	je	.LBB27_11
# BB#10:                                # %for.body.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	cmpl	$13, %ebp
	je	.LBB27_11
.LBB27_23:                              # %sw.default.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	cmpl	$32, %ebp
	jb	.LBB27_19
# BB#24:                                # %sw.default.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	testb	%bl, %bl
	js	.LBB27_19
# BB#25:                                # %if.end.28.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	addl	%ecx, %r12d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB27_26:                              # %for.inc.i.i
                                        #   in Loop: Header=BB27_7 Depth=1
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB27_7
	jmp	.LBB27_19
.LBB27_2:                               # %if.then.i
	xorl	%edi, %edi
	movl	$1, %esi
	movl	$.L.str.136, %edx
	xorl	%eax, %eax
	movq	%r15, %rcx
	callq	cmsSignalError
	xorl	%eax, %eax
	jmp	.LBB27_29
.LBB27_11:                              # %sw.bb.i.i
	cmpl	$1, %edx
	je	.LBB27_19
# BB#12:                                # %sw.bb.i.i
	cmpl	$2, %r12d
	jg	.LBB27_19
# BB#13:                                # %IsMyFile.exit
	xorl	%eax, %eax
	testl	%r12d, %r12d
	je	.LBB27_29
# BB#14:                                # %if.end
	movq	%r14, %rdi
	callq	cmsIT8Alloc
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB27_29
# BB#15:                                # %if.end.4
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	fopen
	movq	272560(%r14), %rcx
	movq	%rax, 256(%rcx)
	movq	272560(%r14), %rdi
	cmpq	$0, 256(%rdi)
	je	.LBB27_18
# BB#16:                                # %if.end.11
	movl	$255, %edx
	movq	%r15, %rsi
	callq	strncpy
	movq	272560(%r14), %rax
	movb	$0, 255(%rax)
	decl	%r12d
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	ParseIT8
	testl	%eax, %eax
	je	.LBB27_17
# BB#27:                                # %if.end.26
	movq	%r14, %rdi
	callq	CookPointers
	movl	$0, 4(%r14)
	movq	272560(%r14), %rax
	movq	256(%rax), %rdi
	callq	fclose
	testl	%eax, %eax
	jne	.LBB27_18
# BB#28:
	movq	%r14, %rax
	jmp	.LBB27_29
.LBB27_17:                              # %if.then.21
	movq	272560(%r14), %rax
	movq	256(%rax), %rdi
	callq	fclose
.LBB27_18:                              # %if.then.32
	movq	%r14, %rdi
	callq	cmsIT8Free
.LBB27_19:                              # %cleanup
	xorl	%eax, %eax
.LBB27_29:                              # %cleanup
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_30:                              # %cond.false
	movl	$.L.str.10, %edi
	movl	$.L.str.7, %esi
	movl	$2340, %edx             # imm = 0x924
	movl	$.L__PRETTY_FUNCTION__.cmsIT8LoadFromFile, %ecx
	callq	__assert_fail
.Lfunc_end27:
	.size	cmsIT8LoadFromFile, .Lfunc_end27-cmsIT8LoadFromFile
	.cfi_endproc

	.globl	cmsIT8EnumDataFormat
	.align	16, 0x90
	.type	cmsIT8EnumDataFormat,@function
cmsIT8EnumDataFormat:                   # @cmsIT8EnumDataFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp229:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp230:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp231:
	.cfi_def_cfa_offset 32
.Ltmp232:
	.cfi_offset %rbx, -24
.Ltmp233:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB28_7
# BB#1:                                 # %cond.end
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB28_2
# BB#3:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %rbx
	jmp	.LBB28_4
.LBB28_2:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	addq	$8, %rbx
.LBB28_4:                               # %GetTable.exit
	testq	%r14, %r14
	je	.LBB28_6
# BB#5:                                 # %if.then
	movq	1048(%rbx), %rax
	movq	%rax, (%r14)
.LBB28_6:                               # %if.end
	movl	1024(%rbx), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB28_7:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2385, %edx             # imm = 0x951
	movl	$.L__PRETTY_FUNCTION__.cmsIT8EnumDataFormat, %ecx
	callq	__assert_fail
.Lfunc_end28:
	.size	cmsIT8EnumDataFormat, .Lfunc_end28-cmsIT8EnumDataFormat
	.cfi_endproc

	.globl	cmsIT8EnumProperties
	.align	16, 0x90
	.type	cmsIT8EnumProperties,@function
cmsIT8EnumProperties:                   # @cmsIT8EnumProperties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp235:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp236:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp237:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp238:
	.cfi_def_cfa_offset 48
.Ltmp239:
	.cfi_offset %rbx, -40
.Ltmp240:
	.cfi_offset %r14, -32
.Ltmp241:
	.cfi_offset %r15, -24
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB29_12
# BB#1:                                 # %cond.end
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jae	.LBB29_2
# BB#3:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbx,%rax), %r15
	jmp	.LBB29_4
.LBB29_2:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	leaq	8(%rbx), %r15
.LBB29_4:                               # %GetTable.exit
	movq	1040(%r15), %rax
	xorl	%ebp, %ebp
	testq	%rax, %rax
	movl	$0, %esi
	je	.LBB29_8
# BB#5:
	xorl	%esi, %esi
	.align	16, 0x90
.LBB29_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%esi
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB29_6
# BB#7:                                 # %for.cond.for.end_crit_edge
	shll	$3, %esi
.LBB29_8:                               # %for.end
	movq	%rbx, %rdi
	callq	AllocChunk
	movq	1040(%r15), %rcx
	jmp	.LBB29_10
	.align	16, 0x90
.LBB29_9:                               # %for.body.8
                                        #   in Loop: Header=BB29_10 Depth=1
	movq	8(%rcx), %rdx
	movl	%ebp, %esi
	incl	%ebp
	movq	%rdx, (%rax,%rsi,8)
	movq	(%rcx), %rcx
.LBB29_10:                              # %for.body.8
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	jne	.LBB29_9
# BB#11:                                # %for.end.12
	movq	%rax, (%r14)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_12:                              # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2403, %edx             # imm = 0x963
	movl	$.L__PRETTY_FUNCTION__.cmsIT8EnumProperties, %ecx
	callq	__assert_fail
.Lfunc_end29:
	.size	cmsIT8EnumProperties, .Lfunc_end29-cmsIT8EnumProperties
	.cfi_endproc

	.globl	cmsIT8EnumPropertyMulti
	.align	16, 0x90
	.type	cmsIT8EnumPropertyMulti,@function
cmsIT8EnumPropertyMulti:                # @cmsIT8EnumPropertyMulti
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp243:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp244:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp245:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp246:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp247:
	.cfi_def_cfa_offset 48
.Ltmp248:
	.cfi_offset %rbx, -40
.Ltmp249:
	.cfi_offset %r12, -32
.Ltmp250:
	.cfi_offset %r14, -24
.Ltmp251:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB30_15
# BB#1:                                 # %cond.end
	movl	4(%r15), %edx
	cmpl	(%r15), %edx
	jae	.LBB30_2
# BB#3:                                 # %if.end.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r15,%rax), %rax
	jmp	.LBB30_4
.LBB30_2:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	SynError
	leaq	8(%r15), %rax
.LBB30_4:                               # %GetTable.exit
	movq	1040(%rax), %rbx
	jmp	.LBB30_5
	.align	16, 0x90
.LBB30_16:                              # %for.inc.i
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	(%rbx), %rbx
.LBB30_5:                               # %GetTable.exit
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	testq	%rbx, %rbx
	movl	$0, %ecx
	je	.LBB30_14
# BB#6:                                 # %for.body.i
                                        #   in Loop: Header=BB30_5 Depth=1
	movzbl	(%r12), %eax
	cmpl	$35, %eax
	je	.LBB30_16
# BB#7:                                 # %if.then.6.i
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	8(%rbx), %rsi
	movq	%r12, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	jne	.LBB30_16
# BB#8:                                 # %for.body.preheader
	xorl	%esi, %esi
	movq	%rbx, %rax
	.align	16, 0x90
.LBB30_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1, 24(%rax)
	sbbl	$-1, %esi
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.LBB30_9
# BB#10:                                # %for.body.14.lr.ph
	shll	$3, %esi
	movq	%r15, %rdi
	callq	AllocChunk
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	.align	16, 0x90
.LBB30_11:                              # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 24(%rdx)
	je	.LBB30_13
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB30_11 Depth=1
	movq	24(%rbx), %rsi
	movl	%ecx, %edi
	incl	%ecx
	movq	%rsi, (%rax,%rdi,8)
.LBB30_13:                              # %for.inc.22
                                        #   in Loop: Header=BB30_11 Depth=1
	movq	16(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB30_11
.LBB30_14:                              # %cleanup
	movq	%rax, (%r14)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB30_15:                              # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2435, %edx             # imm = 0x983
	movl	$.L__PRETTY_FUNCTION__.cmsIT8EnumPropertyMulti, %ecx
	callq	__assert_fail
.Lfunc_end30:
	.size	cmsIT8EnumPropertyMulti, .Lfunc_end30-cmsIT8EnumPropertyMulti
	.cfi_endproc

	.globl	cmsIT8FindDataFormat
	.align	16, 0x90
	.type	cmsIT8FindDataFormat,@function
cmsIT8FindDataFormat:                   # @cmsIT8FindDataFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp252:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB31_1
# BB#2:                                 # %cond.end
	popq	%rax
	jmp	LocateSample            # TAILCALL
.LBB31_1:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2532, %edx             # imm = 0x9E4
	movl	$.L__PRETTY_FUNCTION__.cmsIT8FindDataFormat, %ecx
	callq	__assert_fail
.Lfunc_end31:
	.size	cmsIT8FindDataFormat, .Lfunc_end31-cmsIT8FindDataFormat
	.cfi_endproc

	.align	16, 0x90
	.type	LocateSample,@function
LocateSample:                           # @LocateSample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp254:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp255:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp256:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp257:
	.cfi_def_cfa_offset 48
.Ltmp258:
	.cfi_offset %rbx, -48
.Ltmp259:
	.cfi_offset %r12, -40
.Ltmp260:
	.cfi_offset %r14, -32
.Ltmp261:
	.cfi_offset %r15, -24
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jb	.LBB32_2
# BB#1:                                 # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB32_2:                               # %GetTable.exit
	imulq	$1064, %rdx, %rax       # imm = 0x428
	movl	$-1, %r15d
	xorl	%ebp, %ebp
	cmpl	$0, 1032(%rbx,%rax)
	jle	.LBB32_11
# BB#3:
	leaq	1032(%rbx,%rax), %r12
	.align	16, 0x90
.LBB32_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jb	.LBB32_6
# BB#5:                                 # %if.then.i.i
                                        #   in Loop: Header=BB32_4 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB32_6:                               # %GetTable.exit.i
                                        #   in Loop: Header=BB32_4 Depth=1
	imulq	$1064, %rdx, %rax       # imm = 0x428
	movq	1056(%rbx,%rax), %rax
	testq	%rax, %rax
	movl	$0, %edi
	je	.LBB32_8
# BB#7:                                 # %if.then.i.7
                                        #   in Loop: Header=BB32_4 Depth=1
	movq	(%rax,%rbp,8), %rdi
.LBB32_8:                               # %GetDataFormat.exit
                                        #   in Loop: Header=BB32_4 Depth=1
	movq	%r14, %rsi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB32_10
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB32_4 Depth=1
	incq	%rbp
	movslq	(%r12), %rax
	cmpq	%rax, %rbp
	jl	.LBB32_4
	jmp	.LBB32_11
.LBB32_10:                              # %GetDataFormat.exit.cleanup_crit_edge
	movl	%ebp, %r15d
.LBB32_11:                              # %cleanup
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	LocateSample, .Lfunc_end32-LocateSample
	.cfi_endproc

	.globl	cmsIT8GetDataRowCol
	.align	16, 0x90
	.type	cmsIT8GetDataRowCol,@function
cmsIT8GetDataRowCol:                    # @cmsIT8GetDataRowCol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp264:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp265:
	.cfi_def_cfa_offset 32
.Ltmp266:
	.cfi_offset %rbx, -32
.Ltmp267:
	.cfi_offset %r14, -24
.Ltmp268:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	testq	%rbp, %rbp
	je	.LBB33_8
# BB#1:                                 # %cond.end
	movl	4(%rbp), %edx
	cmpl	(%rbp), %edx
	jb	.LBB33_3
# BB#2:                                 # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB33_3:                               # %GetTable.exit.i
	imulq	$1064, %rdx, %rdx       # imm = 0x428
	movl	1032(%rbp,%rdx), %ecx
	xorl	%eax, %eax
	cmpl	%ebx, %ecx
	jle	.LBB33_7
# BB#4:                                 # %GetTable.exit.i
	cmpl	%r14d, 1036(%rbp,%rdx)
	jle	.LBB33_7
# BB#5:                                 # %if.end.i
	movq	1064(%rbp,%rdx), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB33_7
# BB#6:                                 # %if.end.5.i
	imull	%r14d, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rax
	movq	(%rdx,%rax,8), %rax
.LBB33_7:                               # %GetData.exit
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB33_8:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2543, %edx             # imm = 0x9EF
	movl	$.L__PRETTY_FUNCTION__.cmsIT8GetDataRowCol, %ecx
	callq	__assert_fail
.Lfunc_end33:
	.size	cmsIT8GetDataRowCol, .Lfunc_end33-cmsIT8GetDataRowCol
	.cfi_endproc

	.globl	cmsIT8GetDataRowColDbl
	.align	16, 0x90
	.type	cmsIT8GetDataRowColDbl,@function
cmsIT8GetDataRowColDbl:                 # @cmsIT8GetDataRowColDbl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp270:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp271:
	.cfi_def_cfa_offset 32
.Ltmp272:
	.cfi_offset %rbx, -32
.Ltmp273:
	.cfi_offset %r14, -24
.Ltmp274:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	testq	%rbp, %rbp
	je	.LBB34_8
# BB#1:                                 # %cond.end.i
	movl	4(%rbp), %edx
	cmpl	(%rbp), %edx
	jb	.LBB34_3
# BB#2:                                 # %if.then.i.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB34_3:                               # %GetTable.exit.i.i
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	movl	1032(%rbp,%rcx), %eax
	cmpl	%ebx, %eax
	jle	.LBB34_7
# BB#4:                                 # %GetTable.exit.i.i
	cmpl	%r14d, 1036(%rbp,%rcx)
	jle	.LBB34_7
# BB#5:                                 # %if.end.i.i
	movq	1064(%rbp,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB34_7
# BB#6:                                 # %cmsIT8GetDataRowCol.exit
	imull	%r14d, %eax
	addl	%ebx, %eax
	cltq
	movq	(%rcx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB34_7
# BB#9:                                 # %if.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	ParseFloatNumber        # TAILCALL
.LBB34_7:                               # %cleanup
	xorps	%xmm0, %xmm0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB34_8:                               # %cond.false.i
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2543, %edx             # imm = 0x9EF
	movl	$.L__PRETTY_FUNCTION__.cmsIT8GetDataRowCol, %ecx
	callq	__assert_fail
.Lfunc_end34:
	.size	cmsIT8GetDataRowColDbl, .Lfunc_end34-cmsIT8GetDataRowColDbl
	.cfi_endproc

	.globl	cmsIT8SetDataRowCol
	.align	16, 0x90
	.type	cmsIT8SetDataRowCol,@function
cmsIT8SetDataRowCol:                    # @cmsIT8SetDataRowCol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp275:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB35_1
# BB#2:                                 # %cond.end
	popq	%rax
	jmp	SetData                 # TAILCALL
.LBB35_1:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2565, %edx             # imm = 0xA05
	movl	$.L__PRETTY_FUNCTION__.cmsIT8SetDataRowCol, %ecx
	callq	__assert_fail
.Lfunc_end35:
	.size	cmsIT8SetDataRowCol, .Lfunc_end35-cmsIT8SetDataRowCol
	.cfi_endproc

	.align	16, 0x90
	.type	SetData,@function
SetData:                                # @SetData
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp277:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp278:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp279:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp280:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp281:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp282:
	.cfi_def_cfa_offset 80
.Ltmp283:
	.cfi_offset %rbx, -56
.Ltmp284:
	.cfi_offset %r12, -48
.Ltmp285:
	.cfi_offset %r13, -40
.Ltmp286:
	.cfi_offset %r14, -32
.Ltmp287:
	.cfi_offset %r15, -24
.Ltmp288:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r12d
	movq	%rdi, %rbp
	movl	4(%rbp), %edx
	cmpl	(%rbp), %edx
	jae	.LBB36_1
# BB#2:                                 # %if.end.i
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	jmp	.LBB36_3
.LBB36_1:                               # %if.then.i
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB36_3:                               # %GetTable.exit
	imulq	$1064, %rdx, %rbx       # imm = 0x428
	leaq	1064(%rbp,%rbx), %r15
	cmpq	$0, 1064(%rbp,%rbx)
	jne	.LBB36_5
# BB#4:                                 # %if.end
	movq	%rbp, %rdi
	callq	AllocateDataSet
	xorl	%r13d, %r13d
	cmpq	$0, (%r15)
	je	.LBB36_14
.LBB36_5:                               # %if.end.4
	movl	1036(%rbp,%rbx), %ecx
	testl	%r12d, %r12d
	js	.LBB36_7
# BB#6:                                 # %if.end.4
	cmpl	%r12d, %ecx
	jl	.LBB36_7
# BB#8:                                 # %if.end.9
	movl	1032(%rbp,%rbx), %ecx
	testl	%r14d, %r14d
	js	.LBB36_10
# BB#9:                                 # %if.end.9
	cmpl	%r14d, %ecx
	jl	.LBB36_10
# BB#11:                                # %if.end.16
	leaq	1032(%rbp,%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	strlen
	movq	%rax, %r13
	leal	1(%r13), %esi
	movq	%rbp, %rdi
	callq	AllocChunk
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB36_13
# BB#12:                                # %if.then.i.19
	movl	%r13d, %edx
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	strncpy
.LBB36_13:                              # %AllocString.exit
	movq	8(%rsp), %rax           # 8-byte Reload
	imull	(%rax), %r12d
	addl	%r14d, %r12d
	movslq	%r12d, %rax
	movq	(%r15), %rcx
	movq	%rbx, (%rcx,%rax,8)
	movl	$1, %r13d
	jmp	.LBB36_14
.LBB36_7:                               # %if.then.6
	xorl	%r13d, %r13d
	movl	$.L.str.137, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r12d, %edx
	callq	SynError
	jmp	.LBB36_14
.LBB36_10:                              # %if.then.13
	xorl	%r13d, %r13d
	movl	$.L.str.138, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	SynError
.LBB36_14:                              # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	SetData, .Lfunc_end36-SetData
	.cfi_endproc

	.globl	cmsIT8SetDataRowColDbl
	.align	16, 0x90
	.type	cmsIT8SetDataRowColDbl,@function
cmsIT8SetDataRowColDbl:                 # @cmsIT8SetDataRowColDbl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp290:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp291:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp292:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp293:
	.cfi_def_cfa_offset 304
.Ltmp294:
	.cfi_offset %rbx, -40
.Ltmp295:
	.cfi_offset %r14, -32
.Ltmp296:
	.cfi_offset %r15, -24
.Ltmp297:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB37_2
# BB#1:                                 # %cond.end
	leaq	272736(%rbx), %rsi
	leaq	(%rsp), %r15
	movb	$1, %al
	movq	%r15, %rdi
	callq	sprintf
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	SetData
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB37_2:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2576, %edx             # imm = 0xA10
	movl	$.L__PRETTY_FUNCTION__.cmsIT8SetDataRowColDbl, %ecx
	callq	__assert_fail
.Lfunc_end37:
	.size	cmsIT8SetDataRowColDbl, .Lfunc_end37-cmsIT8SetDataRowColDbl
	.cfi_endproc

	.globl	cmsIT8GetData
	.align	16, 0x90
	.type	cmsIT8GetData,@function
cmsIT8GetData:                          # @cmsIT8GetData
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp298:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp299:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp300:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp301:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp302:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp303:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp304:
	.cfi_def_cfa_offset 64
.Ltmp305:
	.cfi_offset %rbx, -56
.Ltmp306:
	.cfi_offset %r12, -48
.Ltmp307:
	.cfi_offset %r13, -40
.Ltmp308:
	.cfi_offset %r14, -32
.Ltmp309:
	.cfi_offset %r15, -24
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB38_22
# BB#1:                                 # %cond.end
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	LocateSample
	movl	%eax, %ecx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB38_21
# BB#2:                                 # %if.end
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jb	.LBB38_4
# BB#3:                                 # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB38_4:                               # %GetTable.exit.i
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	cmpl	$0, 1036(%rbx,%rcx)
	movl	$0, %eax
	jle	.LBB38_21
# BB#5:                                 # %for.body.lr.ph.i
	leaq	1036(%rbx,%rcx), %r12
	leaq	1040(%rbx,%rcx), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB38_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r13), %r14d
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jb	.LBB38_8
# BB#7:                                 # %if.then.i.i.21
                                        #   in Loop: Header=BB38_6 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB38_8:                               # %GetTable.exit.i.29
                                        #   in Loop: Header=BB38_6 Depth=1
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	movl	1032(%rbx,%rcx), %eax
	cmpl	%r14d, %eax
	jle	.LBB38_13
# BB#9:                                 # %GetTable.exit.i.29
                                        #   in Loop: Header=BB38_6 Depth=1
	cmpl	%ebp, 1036(%rbx,%rcx)
	jle	.LBB38_13
# BB#10:                                # %if.end.i.32
                                        #   in Loop: Header=BB38_6 Depth=1
	movq	1064(%rbx,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB38_13
# BB#11:                                # %GetData.exit39
                                        #   in Loop: Header=BB38_6 Depth=1
	imull	%ebp, %eax
	addl	%r14d, %eax
	cltq
	movq	(%rcx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB38_13
# BB#12:                                # %if.then.i
                                        #   in Loop: Header=BB38_6 Depth=1
	movq	%r15, %rsi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB38_14
	.align	16, 0x90
.LBB38_13:                              # %for.inc.i
                                        #   in Loop: Header=BB38_6 Depth=1
	incl	%ebp
	cmpl	(%r12), %ebp
	movl	$0, %eax
	jl	.LBB38_6
	jmp	.LBB38_21
.LBB38_14:                              # %LocatePatch.exit
	xorl	%eax, %eax
	testl	%ebp, %ebp
	js	.LBB38_21
# BB#15:                                # %if.end.5
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jb	.LBB38_17
# BB#16:                                # %if.then.i.i.12
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB38_17:                              # %GetTable.exit.i.16
	imulq	$1064, %rdx, %rdx       # imm = 0x428
	movl	1032(%rbx,%rdx), %ecx
	xorl	%eax, %eax
	cmpl	4(%rsp), %ecx           # 4-byte Folded Reload
	jle	.LBB38_21
# BB#18:                                # %GetTable.exit.i.16
	cmpl	%ebp, 1036(%rbx,%rdx)
	jle	.LBB38_21
# BB#19:                                # %if.end.i
	movq	1064(%rbx,%rdx), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB38_21
# BB#20:                                # %if.end.5.i
	imull	%ebp, %ecx
	addl	4(%rsp), %ecx           # 4-byte Folded Reload
	movslq	%ecx, %rax
	movq	(%rdx,%rax,8), %rax
.LBB38_21:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_22:                              # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2590, %edx             # imm = 0xA1E
	movl	$.L__PRETTY_FUNCTION__.cmsIT8GetData, %ecx
	callq	__assert_fail
.Lfunc_end38:
	.size	cmsIT8GetData, .Lfunc_end38-cmsIT8GetData
	.cfi_endproc

	.globl	cmsIT8GetDataDbl
	.align	16, 0x90
	.type	cmsIT8GetDataDbl,@function
cmsIT8GetDataDbl:                       # @cmsIT8GetDataDbl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp311:
	.cfi_def_cfa_offset 16
	callq	cmsIT8GetData
	movq	%rax, %rdi
	popq	%rax
	jmp	ParseFloatNumber        # TAILCALL
.Lfunc_end39:
	.size	cmsIT8GetDataDbl, .Lfunc_end39-cmsIT8GetDataDbl
	.cfi_endproc

	.globl	cmsIT8SetData
	.align	16, 0x90
	.type	cmsIT8SetData,@function
cmsIT8SetData:                          # @cmsIT8SetData
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp313:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp314:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp315:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp316:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp317:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp318:
	.cfi_def_cfa_offset 80
.Ltmp319:
	.cfi_offset %rbx, -56
.Ltmp320:
	.cfi_offset %r12, -48
.Ltmp321:
	.cfi_offset %r13, -40
.Ltmp322:
	.cfi_offset %r14, -32
.Ltmp323:
	.cfi_offset %r15, -24
.Ltmp324:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.LBB40_37
# BB#1:                                 # %cond.end
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jae	.LBB40_2
# BB#3:                                 # %if.end.i
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r12,%rax), %r13
	jmp	.LBB40_4
.LBB40_2:                               # %if.then.i
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	leaq	8(%r12), %r13
.LBB40_4:                               # %GetTable.exit
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	LocateSample
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB40_36
# BB#5:                                 # %if.end
	cmpl	$0, 1028(%r13)
	jne	.LBB40_7
# BB#6:                                 # %if.then.4
	movq	%r12, %rdi
	callq	AllocateDataFormat
	movq	%r12, %rdi
	callq	AllocateDataSet
	movq	%r12, %rdi
	callq	CookPointers
.LBB40_7:                               # %if.end.5
	movl	$.L.str.13, %esi
	movq	%rbp, %rdi
	callq	cmsstrcasecmp
	movl	(%r12), %ecx
	movl	4(%r12), %edx
	testl	%eax, %eax
	je	.LBB40_8
# BB#23:                                # %if.else
	cmpl	%ecx, %edx
	jb	.LBB40_25
# BB#24:                                # %if.then.i.i.24
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB40_25:                              # %GetTable.exit.i.28
	imulq	$1064, %rdx, %rax       # imm = 0x428
	cmpl	$0, 1036(%r12,%rax)
	jle	.LBB40_36
# BB#26:                                # %for.body.lr.ph.i.30
	leaq	1036(%r12,%rax), %r13
	leaq	1040(%r12,%rax), %r14
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB40_27:                              # %for.body.i.32
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r14), %ebx
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jb	.LBB40_29
# BB#28:                                # %if.then.i.i.41
                                        #   in Loop: Header=BB40_27 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB40_29:                              # %GetTable.exit.i.45
                                        #   in Loop: Header=BB40_27 Depth=1
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	movl	1032(%r12,%rcx), %eax
	cmpl	%ebx, %eax
	jle	.LBB40_34
# BB#30:                                # %GetTable.exit.i.45
                                        #   in Loop: Header=BB40_27 Depth=1
	cmpl	%ebp, 1036(%r12,%rcx)
	jle	.LBB40_34
# BB#31:                                # %if.end.i.46
                                        #   in Loop: Header=BB40_27 Depth=1
	movq	1064(%r12,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB40_34
# BB#32:                                # %GetData.exit
                                        #   in Loop: Header=BB40_27 Depth=1
	imull	%ebp, %eax
	addl	%ebx, %eax
	cltq
	movq	(%rcx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB40_34
# BB#33:                                # %if.then.i.33
                                        #   in Loop: Header=BB40_27 Depth=1
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB40_35
	.align	16, 0x90
.LBB40_34:                              # %for.inc.i.36
                                        #   in Loop: Header=BB40_27 Depth=1
	incl	%ebp
	cmpl	(%r13), %ebp
	jl	.LBB40_27
	jmp	.LBB40_36
.LBB40_8:                               # %if.then.8
	cmpl	%ecx, %edx
	jb	.LBB40_10
# BB#9:                                 # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB40_10:                              # %GetTable.exit.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	cmpl	$0, 1036(%r12,%rax)
	jle	.LBB40_20
# BB#11:                                # %for.body.lr.ph.i
	leaq	1036(%r12,%rax), %r14
	leaq	1040(%r12,%rax), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB40_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %r15d
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jb	.LBB40_14
# BB#13:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB40_12 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB40_14:                              # %GetTable.exit.i.i
                                        #   in Loop: Header=BB40_12 Depth=1
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	movl	1032(%r12,%rcx), %eax
	cmpl	%r15d, %eax
	jle	.LBB40_19
# BB#15:                                # %GetTable.exit.i.i
                                        #   in Loop: Header=BB40_12 Depth=1
	cmpl	%ebp, 1036(%r12,%rcx)
	jle	.LBB40_19
# BB#16:                                # %if.end.i.9.i
                                        #   in Loop: Header=BB40_12 Depth=1
	movq	1064(%r12,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB40_19
# BB#17:                                # %GetData.exit.i
                                        #   in Loop: Header=BB40_12 Depth=1
	imull	%ebp, %eax
	addl	%r15d, %eax
	cltq
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB40_19
# BB#18:                                # %for.inc.i
                                        #   in Loop: Header=BB40_12 Depth=1
	incl	%ebp
	cmpl	(%r14), %ebp
	jl	.LBB40_12
	jmp	.LBB40_20
.LBB40_19:                              # %LocateEmptyPatch.exit
	testl	%ebp, %ebp
	js	.LBB40_20
# BB#21:                                # %if.end.13
	movl	1032(%r13), %r15d
	jmp	.LBB40_22
.LBB40_20:                              # %if.then.11
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	SynError
.LBB40_36:                              # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB40_35:                              # %LocatePatch.exit
	testl	%ebp, %ebp
	js	.LBB40_36
.LBB40_22:                              # %if.end.18
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	movq	8(%rsp), %rcx           # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	SetData                 # TAILCALL
.LBB40_37:                              # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2623, %edx             # imm = 0xA3F
	movl	$.L__PRETTY_FUNCTION__.cmsIT8SetData, %ecx
	callq	__assert_fail
.Lfunc_end40:
	.size	cmsIT8SetData, .Lfunc_end40-cmsIT8SetData
	.cfi_endproc

	.align	16, 0x90
	.type	AllocateDataFormat,@function
AllocateDataFormat:                     # @AllocateDataFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp325:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp326:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp327:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp328:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp329:
	.cfi_def_cfa_offset 48
.Ltmp330:
	.cfi_offset %rbx, -40
.Ltmp331:
	.cfi_offset %r12, -32
.Ltmp332:
	.cfi_offset %r14, -24
.Ltmp333:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jb	.LBB41_2
# BB#1:                                 # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB41_2:                               # %GetTable.exit
	imulq	$1064, %rdx, %r14       # imm = 0x428
	cmpq	$0, 1056(%r12,%r14)
	jne	.LBB41_16
# BB#3:                                 # %if.end
	movl	4(%r12), %edx
	cmpl	(%r12), %edx
	jae	.LBB41_4
# BB#5:                                 # %if.end.i.i.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%r12,%rax), %rax
	jmp	.LBB41_6
.LBB41_4:                               # %if.then.i.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	leaq	8(%r12), %rax
.LBB41_6:                               # %GetTable.exit.i.i
	leaq	1056(%r12,%r14), %r15
	movq	1040(%rax), %rbx
	jmp	.LBB41_7
	.align	16, 0x90
.LBB41_9:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB41_7 Depth=1
	movq	(%rbx), %rbx
.LBB41_7:                               # %GetTable.exit.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB41_11
# BB#8:                                 # %for.body.i.i.i
                                        #   in Loop: Header=BB41_7 Depth=1
	movq	8(%rbx), %rsi
	movl	$.L.str.19, %edi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	jne	.LBB41_9
# BB#10:                                # %cmsIT8GetProperty.exit.i
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB41_11
# BB#12:                                # %cmsIT8GetPropertyDbl.exit
	callq	ParseFloatNumber
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1032(%r12,%r14)
	testl	%eax, %eax
	jg	.LBB41_15
# BB#13:
	leaq	1032(%r12,%r14), %rbx
	jmp	.LBB41_14
.LBB41_11:                              # %cmsIT8GetPropertyDbl.exit.thread
	leaq	1032(%r12,%r14), %rbx
	movl	$0, 1032(%r12,%r14)
.LBB41_14:                              # %if.then.4
	movl	$.L.str.139, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	SynError
	movl	$10, (%rbx)
	movl	$10, %eax
.LBB41_15:                              # %if.end.7
	leal	8(,%rax,8), %esi
	movq	%r12, %rdi
	callq	AllocChunk
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB41_17
.LBB41_16:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB41_17:                              # %if.then.16
	movl	$.L.str.140, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	SynError                # TAILCALL
.Lfunc_end41:
	.size	AllocateDataFormat, .Lfunc_end41-AllocateDataFormat
	.cfi_endproc

	.align	16, 0x90
	.type	AllocateDataSet,@function
AllocateDataSet:                        # @AllocateDataSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp334:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp335:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp336:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp337:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp338:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp339:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp340:
	.cfi_def_cfa_offset 64
.Ltmp341:
	.cfi_offset %rbx, -56
.Ltmp342:
	.cfi_offset %r12, -48
.Ltmp343:
	.cfi_offset %r13, -40
.Ltmp344:
	.cfi_offset %r14, -32
.Ltmp345:
	.cfi_offset %r15, -24
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movl	4(%rbp), %edx
	cmpl	(%rbp), %edx
	jb	.LBB42_2
# BB#1:                                 # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB42_2:                               # %GetTable.exit
	imulq	$1064, %rdx, %r15       # imm = 0x428
	cmpq	$0, 1064(%rbp,%r15)
	jne	.LBB42_20
# BB#3:                                 # %if.end
	movl	4(%rbp), %edx
	cmpl	(%rbp), %edx
	jae	.LBB42_4
# BB#5:                                 # %if.end.i.i
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbp,%rax), %rax
	jmp	.LBB42_6
.LBB42_4:                               # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	SynError
	leaq	8(%rbp), %rax
.LBB42_6:                               # %GetTable.exit.i
	movq	1040(%rax), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB42_11
# BB#7:
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB42_8:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rsi
	movl	$.L.str.19, %edi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB42_10
# BB#9:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB42_8 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB42_8
	jmp	.LBB42_11
.LBB42_10:                              # %if.then.i.12
	movq	32(%rbx), %r14
.LBB42_11:                              # %cmsIT8GetProperty.exit
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	strtol
	movl	%eax, 1032(%rbp,%r15)
	movl	4(%rbp), %edx
	cmpl	(%rbp), %edx
	jae	.LBB42_12
# BB#13:                                # %if.end.i.i.21
	imulq	$1064, %rdx, %rax       # imm = 0x428
	leaq	8(%rbp,%rax), %rax
	jmp	.LBB42_14
.LBB42_12:                              # %if.then.i.i.18
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	SynError
	leaq	8(%rbp), %rax
.LBB42_14:                              # %GetTable.exit.i.25
	leaq	1064(%rbp,%r15), %r12
	leaq	1032(%rbp,%r15), %r13
	movq	1040(%rax), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB42_19
# BB#15:
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB42_16:                              # %for.body.i.i.27
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rsi
	movl	$.L.str.20, %edi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB42_18
# BB#17:                                # %for.inc.i.i.33
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB42_16
	jmp	.LBB42_19
.LBB42_18:                              # %if.then.i.35
	movq	32(%rbx), %r14
.LBB42_19:                              # %cmsIT8GetProperty.exit37
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	strtol
	movl	%eax, 1036(%rbp,%r15)
	movl	(%r13), %ecx
	incl	%ecx
	leal	8(,%rax,8), %esi
	imull	%ecx, %esi
	movq	%rbp, %rdi
	callq	AllocChunk
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB42_21
.LBB42_20:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_21:                              # %if.then.14
	movl	$.L.str.141, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	SynError                # TAILCALL
.Lfunc_end42:
	.size	AllocateDataSet, .Lfunc_end42-AllocateDataSet
	.cfi_endproc

	.globl	cmsIT8SetDataDbl
	.align	16, 0x90
	.type	cmsIT8SetDataDbl,@function
cmsIT8SetDataDbl:                       # @cmsIT8SetDataDbl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp347:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp348:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp349:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp350:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp351:
	.cfi_def_cfa_offset 304
.Ltmp352:
	.cfi_offset %rbx, -40
.Ltmp353:
	.cfi_offset %r12, -32
.Ltmp354:
	.cfi_offset %r14, -24
.Ltmp355:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB43_2
# BB#1:                                 # %cond.end
	leaq	272736(%rbx), %rdx
	leaq	(%rsp), %r12
	movl	$255, %esi
	movb	$1, %al
	movq	%r12, %rdi
	callq	snprintf
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	cmsIT8SetData
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB43_2:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2666, %edx             # imm = 0xA6A
	movl	$.L__PRETTY_FUNCTION__.cmsIT8SetDataDbl, %ecx
	callq	__assert_fail
.Lfunc_end43:
	.size	cmsIT8SetDataDbl, .Lfunc_end43-cmsIT8SetDataDbl
	.cfi_endproc

	.globl	cmsIT8GetPatchName
	.align	16, 0x90
	.type	cmsIT8GetPatchName,@function
cmsIT8GetPatchName:                     # @cmsIT8GetPatchName
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp356:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp357:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp358:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp359:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp360:
	.cfi_def_cfa_offset 48
.Ltmp361:
	.cfi_offset %rbx, -48
.Ltmp362:
	.cfi_offset %r12, -40
.Ltmp363:
	.cfi_offset %r14, -32
.Ltmp364:
	.cfi_offset %r15, -24
.Ltmp365:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB44_15
# BB#1:                                 # %cond.end
	movl	(%rbx), %eax
	movl	4(%rbx), %edx
	cmpl	%eax, %edx
	jae	.LBB44_2
# BB#3:                                 # %if.end.i
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	leaq	8(%rbx,%rcx), %rcx
	jmp	.LBB44_4
.LBB44_2:                               # %if.then.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	leaq	8(%rbx), %rcx
	movl	(%rbx), %eax
	movl	4(%rbx), %edx
.LBB44_4:                               # %GetTable.exit
	movl	1032(%rcx), %r12d
	cmpl	%eax, %edx
	jae	.LBB44_5
# BB#6:                                 # %if.end.i.i
	movl	%edx, %ebp
	jmp	.LBB44_7
.LBB44_5:                               # %if.then.i.i
	xorl	%ebp, %ebp
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
.LBB44_7:                               # %GetTable.exit.i
	imulq	$1064, %rbp, %rdx       # imm = 0x428
	movl	1032(%rbx,%rdx), %ecx
	xorl	%eax, %eax
	cmpl	%r12d, %ecx
	jle	.LBB44_14
# BB#8:                                 # %GetTable.exit.i
	cmpl	%r15d, 1036(%rbx,%rdx)
	jle	.LBB44_14
# BB#9:                                 # %if.end.i.12
	movq	1064(%rbx,%rdx), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB44_14
# BB#10:                                # %GetData.exit
	imull	%r15d, %ecx
	addl	%r12d, %ecx
	movslq	%ecx, %rax
	movq	(%rdx,%rax,8), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB44_14
# BB#11:                                # %if.end
	testq	%r14, %r14
	je	.LBB44_12
# BB#13:                                # %if.end.4
	movl	$1023, %edx             # imm = 0x3FF
	movq	%r14, %rdi
	callq	strncpy
	movb	$0, 1023(%r14)
	movq	%r14, %rax
	jmp	.LBB44_14
.LBB44_12:
	movq	%rsi, %rax
.LBB44_14:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_15:                              # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2680, %edx             # imm = 0xA78
	movl	$.L__PRETTY_FUNCTION__.cmsIT8GetPatchName, %ecx
	callq	__assert_fail
.Lfunc_end44:
	.size	cmsIT8GetPatchName, .Lfunc_end44-cmsIT8GetPatchName
	.cfi_endproc

	.globl	cmsIT8GetPatchByName
	.align	16, 0x90
	.type	cmsIT8GetPatchByName,@function
cmsIT8GetPatchByName:                   # @cmsIT8GetPatchByName
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp367:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp368:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp369:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp370:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp371:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp372:
	.cfi_def_cfa_offset 64
.Ltmp373:
	.cfi_offset %rbx, -56
.Ltmp374:
	.cfi_offset %r12, -48
.Ltmp375:
	.cfi_offset %r13, -40
.Ltmp376:
	.cfi_offset %r14, -32
.Ltmp377:
	.cfi_offset %r15, -24
.Ltmp378:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB45_16
# BB#1:                                 # %cond.end
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jb	.LBB45_3
# BB#2:                                 # %if.then.i.i
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB45_3:                               # %GetTable.exit.i
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	movl	$-1, %eax
	cmpl	$0, 1036(%rbx,%rcx)
	jle	.LBB45_15
# BB#4:                                 # %for.body.lr.ph.i
	leaq	1036(%rbx,%rcx), %r12
	leaq	1040(%rbx,%rcx), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB45_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r13), %r15d
	movl	4(%rbx), %edx
	cmpl	(%rbx), %edx
	jb	.LBB45_7
# BB#6:                                 # %if.then.i.i.5
                                        #   in Loop: Header=BB45_5 Depth=1
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	SynError
	xorl	%edx, %edx
.LBB45_7:                               # %GetTable.exit.i.9
                                        #   in Loop: Header=BB45_5 Depth=1
	imulq	$1064, %rdx, %rcx       # imm = 0x428
	movl	1032(%rbx,%rcx), %eax
	cmpl	%r15d, %eax
	jle	.LBB45_13
# BB#8:                                 # %GetTable.exit.i.9
                                        #   in Loop: Header=BB45_5 Depth=1
	cmpl	%ebp, 1036(%rbx,%rcx)
	jle	.LBB45_13
# BB#9:                                 # %if.end.i
                                        #   in Loop: Header=BB45_5 Depth=1
	movq	1064(%rbx,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB45_13
# BB#10:                                # %GetData.exit
                                        #   in Loop: Header=BB45_5 Depth=1
	imull	%ebp, %eax
	addl	%r15d, %eax
	cltq
	movq	(%rcx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB45_13
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB45_5 Depth=1
	movq	%r14, %rsi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB45_12
	.align	16, 0x90
.LBB45_13:                              # %for.inc.i
                                        #   in Loop: Header=BB45_5 Depth=1
	incl	%ebp
	cmpl	(%r12), %ebp
	jl	.LBB45_5
# BB#14:
	movl	$-1, %eax
.LBB45_15:                              # %LocatePatch.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_12:
	movl	%ebp, %eax
	jmp	.LBB45_15
.LBB45_16:                              # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2695, %edx             # imm = 0xA87
	movl	$.L__PRETTY_FUNCTION__.cmsIT8GetPatchByName, %ecx
	callq	__assert_fail
.Lfunc_end45:
	.size	cmsIT8GetPatchByName, .Lfunc_end45-cmsIT8GetPatchByName
	.cfi_endproc

	.globl	cmsIT8TableCount
	.align	16, 0x90
	.type	cmsIT8TableCount,@function
cmsIT8TableCount:                       # @cmsIT8TableCount
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp379:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB46_2
# BB#1:                                 # %cond.end
	movl	(%rdi), %eax
	popq	%rdx
	retq
.LBB46_2:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2704, %edx             # imm = 0xA90
	movl	$.L__PRETTY_FUNCTION__.cmsIT8TableCount, %ecx
	callq	__assert_fail
.Lfunc_end46:
	.size	cmsIT8TableCount, .Lfunc_end46-cmsIT8TableCount
	.cfi_endproc

	.globl	cmsIT8SetTableByLabel
	.align	16, 0x90
	.type	cmsIT8SetTableByLabel,@function
cmsIT8SetTableByLabel:                  # @cmsIT8SetTableByLabel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp380:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp381:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp382:
	.cfi_def_cfa_offset 32
	subq	$528, %rsp              # imm = 0x210
.Ltmp383:
	.cfi_def_cfa_offset 560
.Ltmp384:
	.cfi_offset %rbx, -32
.Ltmp385:
	.cfi_offset %r14, -24
.Ltmp386:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB47_14
# BB#1:                                 # %cond.end
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB47_4
# BB#2:                                 # %land.lhs.true
	movl	$.L.str.15, %eax
	cmpb	$0, (%rdx)
	je	.LBB47_4
# BB#3:                                 # %select.mid
	movq	%rdx, %rax
.LBB47_4:                               # %if.end
	testq	%rax, %rax
	movl	$.L.str.15, %edx
	cmovneq	%rax, %rdx
	movq	%rbx, %rdi
	callq	cmsIT8GetData
	movq	%rax, %rdi
	movl	$-1, %r14d
	testq	%rdi, %rdi
	je	.LBB47_13
# BB#5:                                 # %if.end.9
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rcx
	leaq	272(%rsp), %r8
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	jne	.LBB47_13
# BB#6:                                 # %if.end.15
	testq	%r15, %r15
	je	.LBB47_9
# BB#7:                                 # %land.lhs.true.18
	cmpb	$0, (%r15)
	je	.LBB47_9
# BB#8:                                 # %if.then.25
	leaq	272(%rsp), %rdi
	movq	%r15, %rsi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	jne	.LBB47_13
.LBB47_9:                               # %if.end.32
	movl	12(%rsp), %r14d
	cmpl	%r14d, (%rbx)
	ja	.LBB47_12
# BB#10:                                # %if.then.i
	jne	.LBB47_15
# BB#11:                                # %if.then.3.i
	imulq	$1064, %r14, %rax       # imm = 0x428
	movq	$0, 1048(%rbx,%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1056(%rbx,%rax)
	incl	(%rbx)
.LBB47_12:                              # %if.end.4.i
	movl	%r14d, 4(%rbx)
	jmp	.LBB47_13
.LBB47_15:                              # %if.else.i
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	SynError
	movl	$-1, %r14d
.LBB47_13:                              # %cleanup
	movl	%r14d, %eax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB47_14:                              # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2718, %edx             # imm = 0xA9E
	movl	$.L__PRETTY_FUNCTION__.cmsIT8SetTableByLabel, %ecx
	callq	__assert_fail
.Lfunc_end47:
	.size	cmsIT8SetTableByLabel, .Lfunc_end47-cmsIT8SetTableByLabel
	.cfi_endproc

	.globl	cmsIT8SetIndexColumn
	.align	16, 0x90
	.type	cmsIT8SetIndexColumn,@function
cmsIT8SetIndexColumn:                   # @cmsIT8SetIndexColumn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB48_4
# BB#1:                                 # %cond.end
	movq	%rbx, %rdi
	callq	LocateSample
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	je	.LBB48_3
# BB#2:                                 # %if.end
	movl	4(%rbx), %ecx
	imulq	$1064, %rcx, %rcx       # imm = 0x428
	movl	%eax, 1040(%rbx,%rcx)
	movl	$1, %ecx
.LBB48_3:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.LBB48_4:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2749, %edx             # imm = 0xABD
	movl	$.L__PRETTY_FUNCTION__.cmsIT8SetIndexColumn, %ecx
	callq	__assert_fail
.Lfunc_end48:
	.size	cmsIT8SetIndexColumn, .Lfunc_end48-cmsIT8SetIndexColumn
	.cfi_endproc

	.globl	cmsIT8DefineDblFormat
	.align	16, 0x90
	.type	cmsIT8DefineDblFormat,@function
cmsIT8DefineDblFormat:                  # @cmsIT8DefineDblFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp389:
	.cfi_def_cfa_offset 16
.Ltmp390:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB49_5
# BB#1:                                 # %cond.end
	leaq	272736(%rbx), %rdi
	testq	%rsi, %rsi
	je	.LBB49_2
# BB#3:                                 # %if.else
	movl	$128, %edx
	callq	strncpy
	jmp	.LBB49_4
.LBB49_2:                               # %if.then
	movl	$.L.str.1, %esi
	callq	strcpy
.LBB49_4:                               # %if.end
	movb	$0, 272863(%rbx)
	popq	%rbx
	retq
.LBB49_5:                               # %cond.false
	movl	$.L.str.12, %edi
	movl	$.L.str.7, %esi
	movl	$2764, %edx             # imm = 0xACC
	movl	$.L__PRETTY_FUNCTION__.cmsIT8DefineDblFormat, %ecx
	callq	__assert_fail
.Lfunc_end49:
	.size	cmsIT8DefineDblFormat, .Lfunc_end49-cmsIT8DefineDblFormat
	.cfi_endproc

	.align	16, 0x90
	.type	WriteStr,@function
WriteStr:                               # @WriteStr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp391:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp392:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp393:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp394:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp395:
	.cfi_def_cfa_offset 48
.Ltmp396:
	.cfi_offset %rbx, -40
.Ltmp397:
	.cfi_offset %r12, -32
.Ltmp398:
	.cfi_offset %r14, -24
.Ltmp399:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	testq	%rsi, %rsi
	movl	$.L.str.97, %r15d
	cmovneq	%rsi, %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	24(%r14), %eax
	addl	%ebx, %eax
	movl	%eax, 24(%r14)
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB50_4
# BB#1:                                 # %if.then.1
	andq	%r12, %rbx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	fwrite
	cmpq	%rbx, %rax
	je	.LBB50_8
# BB#2:                                 # %if.then.8
	xorl	%edi, %edi
	movl	$7, %esi
	movl	$.L.str.98, %edx
	jmp	.LBB50_3
.LBB50_4:                               # %if.else
	cmpq	$0, 8(%r14)
	je	.LBB50_8
# BB#5:                                 # %if.then.11
	cmpl	28(%r14), %eax
	jbe	.LBB50_7
# BB#6:                                 # %if.then.15
	xorl	%edi, %edi
	movl	$7, %esi
	movl	$.L.str.99, %edx
.LBB50_3:                               # %if.then.8
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	cmsSignalError          # TAILCALL
.LBB50_7:                               # %if.end.16
	movq	16(%r14), %rdi
	andq	%r12, %rbx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memmove
	addq	%rbx, 16(%r14)
.LBB50_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end50:
	.size	WriteStr, .Lfunc_end50-WriteStr
	.cfi_endproc

	.align	16, 0x90
	.type	Writef,@function
Writef:                                 # @Writef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp400:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp401:
	.cfi_def_cfa_offset 24
	subq	$4312, %rsp             # imm = 0x10D8
.Ltmp402:
	.cfi_def_cfa_offset 4336
.Ltmp403:
	.cfi_offset %rbx, -24
.Ltmp404:
	.cfi_offset %r14, -16
	movq	%rsi, %r10
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB51_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB51_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	4336(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	208(%rsp), %rbx
	leaq	176(%rsp), %rcx
	movl	$4095, %esi             # imm = 0xFFF
	movq	%rbx, %rdi
	movq	%r10, %rdx
	callq	vsnprintf
	movb	$0, 4303(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	WriteStr
	addq	$4312, %rsp             # imm = 0x10D8
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end51:
	.size	Writef, .Lfunc_end51-Writef
	.cfi_endproc

	.align	16, 0x90
	.type	InSymbol,@function
InSymbol:                               # @InSymbol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp406:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp407:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp408:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp409:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp410:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp411:
	.cfi_def_cfa_offset 96
.Ltmp412:
	.cfi_offset %rbx, -56
.Ltmp413:
	.cfi_offset %r12, -48
.Ltmp414:
	.cfi_offset %r13, -40
.Ltmp415:
	.cfi_offset %r14, -32
.Ltmp416:
	.cfi_offset %r15, -24
.Ltmp417:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	callq	__ctype_b_loc
	movq	%rax, %r14
	movq	%r14, 16(%rsp)          # 8-byte Spill
	leaq	271376(%r13), %r15
	movq	%r15, 24(%rsp)          # 8-byte Spill
	leaq	271504(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movabsq	$601295421440, %r12     # imm = 0x8C00000000
	jmp	.LBB52_1
	.align	16, 0x90
.LBB52_3:                               # %while.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	%r13, %rdi
	callq	NextCh
.LBB52_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_78 Depth 2
                                        #     Child Loop BB52_83 Depth 2
                                        #     Child Loop BB52_9 Depth 2
                                        #     Child Loop BB52_17 Depth 2
	movslq	271356(%r13), %rbx
	cmpq	$32, %rbx
	je	.LBB52_3
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB52_1 Depth=1
	cmpl	$9, %ebx
	je	.LBB52_3
# BB#4:                                 # %while.end
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	(%r14), %rax
	movzwl	(%rax,%rbx,2), %eax
	andl	$2048, %eax             # imm = 0x800
	leal	-33(%rbx), %ecx
	cmpl	$93, %ecx
	ja	.LBB52_21
# BB#5:                                 # %while.end
                                        #   in Loop: Header=BB52_1 Depth=1
	testw	%ax, %ax
	jne	.LBB52_21
# BB#6:                                 # %switch.early.test227
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	$1, %ebp
	movl	%ebx, %ecx
	cmpl	$39, %ebx
	ja	.LBB52_8
# BB#7:                                 # %switch.early.test227
                                        #   in Loop: Header=BB52_1 Depth=1
	movabsq	$605590388736, %rdx     # imm = 0x8D00000000
	btq	%rcx, %rdx
	jae	.LBB52_8
.LBB52_21:                              # %if.else.18
                                        #   in Loop: Header=BB52_1 Depth=1
	testw	%ax, %ax
	jne	.LBB52_31
# BB#22:                                # %switch.early.test
                                        #   in Loop: Header=BB52_1 Depth=1
	cmpl	$25, %ebx
	jle	.LBB52_23
# BB#27:                                # %switch.early.test
                                        #   in Loop: Header=BB52_1 Depth=1
	leal	-34(%rbx), %eax
	cmpl	$12, %eax
	jbe	.LBB52_30
# BB#28:                                # %switch.early.test
                                        #   in Loop: Header=BB52_1 Depth=1
	cmpl	$26, %ebx
	jne	.LBB52_108
# BB#29:                                # %sw.bb
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	%r13, %rdi
	callq	NextCh
	jmp	.LBB52_89
.LBB52_23:                              # %switch.early.test
                                        #   in Loop: Header=BB52_1 Depth=1
	cmpl	$10, %ebx
	je	.LBB52_75
# BB#24:                                # %switch.early.test
                                        #   in Loop: Header=BB52_1 Depth=1
	cmpl	$13, %ebx
	jne	.LBB52_25
# BB#74:                                # %sw.bb.212
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	%r13, %rdi
	callq	NextCh
	cmpl	$10, 271356(%r13)
	jne	.LBB52_76
.LBB52_75:                              # %if.then.216
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	%r13, %rdi
	callq	NextCh
.LBB52_76:                              # %if.end.217
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	$6, 271352(%r13)
	incl	272552(%r13)
	jmp	.LBB52_89
.LBB52_8:                               #   in Loop: Header=BB52_1 Depth=1
	movq	%r15, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB52_9
	.align	16, 0x90
.LBB52_12:                              # %do.body.4.backedge
                                        #   in Loop: Header=BB52_9 Depth=2
	incl	%ebp
.LBB52_9:                               # %do.body.4
                                        #   Parent Loop BB52_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$127, %ebp
	jg	.LBB52_11
# BB#10:                                # %if.then.5
                                        #   in Loop: Header=BB52_9 Depth=2
	movb	%bl, (%r15)
	incq	%r15
.LBB52_11:                              # %if.end
                                        #   in Loop: Header=BB52_9 Depth=2
	movq	%r13, %rdi
	callq	NextCh
	movslq	271356(%r13), %rbx
	movq	(%r14), %rax
	testb	$8, (%rax,%rbx,2)
	jne	.LBB52_12
# BB#13:                                # %lor.rhs.i
                                        #   in Loop: Header=BB52_9 Depth=2
	leal	-33(%rbx), %eax
	cmpl	$93, %eax
	ja	.LBB52_16
# BB#14:                                # %switch.early.test228
                                        #   in Loop: Header=BB52_9 Depth=2
	movl	%ebx, %eax
	cmpl	$39, %ebx
	ja	.LBB52_12
# BB#15:                                # %switch.early.test228
                                        #   in Loop: Header=BB52_9 Depth=2
	btq	%rax, %r12
	jae	.LBB52_12
.LBB52_16:                              # %do.end
                                        #   in Loop: Header=BB52_1 Depth=1
	movb	$0, (%r15)
	movl	$8, %ebx
	movl	$1, %r15d
	.align	16, 0x90
.LBB52_17:                              # %while.body.i
                                        #   Parent Loop BB52_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%rbx,%r15), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	leal	-1(%rbp), %r12d
	movslq	%r12d, %r14
	shlq	$4, %r14
	movq	TabKeys(%r14), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB52_20
# BB#18:                                # %if.end.i
                                        #   in Loop: Header=BB52_17 Depth=2
	incl	%ebp
	testl	%eax, %eax
	cmovsl	%r12d, %ebx
	cmovsl	%r15d, %ebp
	cmpl	%ebp, %ebx
	movl	%ebp, %r15d
	jge	.LBB52_17
	jmp	.LBB52_19
.LBB52_30:                              # %switch.early.test
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	$1, %ebp
	jmpq	*.LJTI52_0(,%rax,8)
.LBB52_82:                              # %sw.bb.238
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	%r13, %rdi
	callq	NextCh
	movl	$271504, %ebp           # imm = 0x42490
	movq	8(%rsp), %r15           # 8-byte Reload
.LBB52_83:                              # %land.rhs.244.lr.ph
                                        #   Parent Loop BB52_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	271356(%r13), %eax
	cmpl	%ebx, %eax
	je	.LBB52_88
# BB#84:                                # %while.body.249
                                        #   in Loop: Header=BB52_83 Depth=2
	cmpl	$10, %eax
	je	.LBB52_87
# BB#85:                                # %while.body.249
                                        #   in Loop: Header=BB52_83 Depth=2
	cmpl	$13, %eax
	je	.LBB52_87
# BB#86:                                # %if.else.258
                                        #   in Loop: Header=BB52_83 Depth=2
	incq	%r15
	movb	%al, (%r13,%rbp)
	movq	%r13, %rdi
	callq	NextCh
	incq	%rbp
	leal	-271504(%rbp), %eax
	cmpl	$1024, %eax             # imm = 0x400
	jl	.LBB52_83
	jmp	.LBB52_88
.LBB52_20:                              # %BinSrchKey.exit
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	TabKeys+8(%r14), %eax
	movl	%eax, 271352(%r13)
	movq	16(%rsp), %r14          # 8-byte Reload
	movabsq	$601295421440, %r12     # imm = 0x8C00000000
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB52_90
.LBB52_87:                              # %while.body.249.while.end.264_crit_edge
                                        #   in Loop: Header=BB52_1 Depth=1
	leaq	(%rbp,%r13), %r15
.LBB52_88:                              # %while.end.264
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	$4, 271352(%r13)
	movb	$0, (%r15)
	movq	%r13, %rdi
	callq	NextCh
	movq	24(%rsp), %r15          # 8-byte Reload
.LBB52_89:                              # %do.cond.270thread-pre-split
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	271352(%r13), %eax
.LBB52_90:                              # %do.cond.270
                                        #   in Loop: Header=BB52_1 Depth=1
	cmpl	$5, %eax
	je	.LBB52_1
	jmp	.LBB52_91
.LBB52_77:                              # %sw.bb.224
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	%r13, %rdi
	callq	NextCh
	movl	$9217, %ebx             # imm = 0x2401
	jmp	.LBB52_78
	.align	16, 0x90
.LBB52_80:                              # %while.body.235.critedge
                                        #   in Loop: Header=BB52_78 Depth=2
	movq	%r13, %rdi
	callq	NextCh
.LBB52_78:                              # %while.cond.225
                                        #   Parent Loop BB52_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	271356(%r13), %eax
	cmpl	$13, %eax
	ja	.LBB52_80
# BB#79:                                # %while.cond.225
                                        #   in Loop: Header=BB52_78 Depth=2
	btl	%eax, %ebx
	jae	.LBB52_80
# BB#81:                                # %do.cond.270.thread268
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	$5, 271352(%r13)
	jmp	.LBB52_1
.LBB52_19:                              # %BinSrchKey.exit.thread
	movl	$3, 271352(%r13)
.LBB52_107:                             # %cleanup.334
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB52_31:                              # %if.then.34
	movl	$1, %ebp
	cmpl	$45, %ebx
	jne	.LBB52_33
.LBB52_32:                              # %if.then.38
	movq	%r13, %rdi
	callq	NextCh
	movl	271356(%r13), %ebx
	movl	$-1, %ebp
.LBB52_33:                              # %if.end.39
	movl	$0, 271360(%r13)
	movl	$1, 271352(%r13)
	cmpl	$48, %ebx
	jne	.LBB52_45
# BB#34:                                # %if.then.44
	movq	%r13, %rdi
	callq	NextCh
	movl	271356(%r13), %ebx
	movl	%ebx, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB52_45
# BB#35:                                # %toupper.exit
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movslq	%ebx, %r12
	callq	__ctype_toupper_loc
	movq	%rax, %r15
	movq	(%r15), %rax
	cmpl	$88, (%rax,%r12,4)
	jne	.LBB52_44
# BB#36:                                # %if.then.49
	movq	%r13, %rdi
	callq	NextCh
	movl	271356(%r13), %eax
	movslq	%eax, %rcx
	movq	(%r14), %rdx
	testb	$16, 1(%rdx,%rcx,2)
	je	.LBB52_107
# BB#37:
	movl	$2147483648, %ebx       # imm = 0x80000000
	movl	$-55, %ebp
.LBB52_38:                              # %while.body.59
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	subl	$-128, %edx
	cmpl	$383, %edx              # imm = 0x17F
	ja	.LBB52_40
# BB#39:                                # %cond.true.i.166
                                        #   in Loop: Header=BB52_38 Depth=1
	movq	(%r15), %rax
	movl	(%rax,%rcx,4), %eax
.LBB52_40:                              # %toupper.exit168
                                        #   in Loop: Header=BB52_38 Depth=1
	movl	%eax, 271356(%r13)
	movslq	271360(%r13), %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	cmpq	%rbx, %rdx
	jge	.LBB52_41
# BB#43:                                # %if.end.84
                                        #   in Loop: Header=BB52_38 Depth=1
	leal	-65(%rax), %edx
	cmpl	$6, %edx
	movl	$-48, %edx
	cmovbl	%ebp, %edx
	shll	$4, %ecx
	addl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, 271360(%r13)
	movq	%r13, %rdi
	callq	NextCh
	movl	271356(%r13), %eax
	movslq	%eax, %rcx
	movq	(%r14), %rdx
	testb	$16, 1(%rdx,%rcx,2)
	jne	.LBB52_38
	jmp	.LBB52_107
.LBB52_25:                              # %switch.early.test
	leal	1(%rbx), %eax
	cmpl	$2, %eax
	jae	.LBB52_108
# BB#26:                                # %sw.bb.210
	movl	$7, 271352(%r13)
	jmp	.LBB52_107
.LBB52_108:                             # %sw.default
	movl	$.L.str.110, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebx, %edx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	SynError                # TAILCALL
.LBB52_91:                              # %do.cond.270
	cmpl	$15, %eax
	jne	.LBB52_107
# BB#92:                                # %if.then.278
	cmpl	$19, 272720(%r13)
	jl	.LBB52_94
# BB#93:                                # %if.then.282
	movl	$.L.str.111, %esi
	jmp	.LBB52_42
.LBB52_44:                              # %toupper.exit175
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	cmpl	$66, (%rax,%r12,4)
	movabsq	$601295421440, %r12     # imm = 0x8C00000000
	movq	24(%rsp), %r15          # 8-byte Reload
	jne	.LBB52_45
# BB#47:                                # %if.then.98
	movq	%r13, %rdi
	callq	NextCh
	movl	271356(%r13), %eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	cmpl	$48, %ecx
	jne	.LBB52_107
# BB#48:
	movl	$2147483648, %ebx       # imm = 0x80000000
.LBB52_49:                              # %while.body.108
                                        # =>This Inner Loop Header: Depth=1
	movslq	271360(%r13), %rcx
	leaq	(%rcx,%rcx), %rdx
	cmpq	%rbx, %rdx
	jge	.LBB52_50
# BB#51:                                # %if.end.118
                                        #   in Loop: Header=BB52_49 Depth=1
	leal	-48(%rax,%rcx,2), %eax
	movl	%eax, 271360(%r13)
	movq	%r13, %rdi
	callq	NextCh
	movl	271356(%r13), %eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	cmpl	$48, %ecx
	je	.LBB52_49
	jmp	.LBB52_107
.LBB52_45:                              # %while.cond.127.preheader
	movslq	%ebx, %rax
	movq	(%r14), %rcx
	movzwl	(%rcx,%rax,2), %eax
	testb	$8, %ah
	jne	.LBB52_52
# BB#46:
	movq	%r15, 24(%rsp)          # 8-byte Spill
	jmp	.LBB52_57
.LBB52_52:
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	$2147483648, %r15d      # imm = 0x80000000
	.align	16, 0x90
.LBB52_53:                              # %while.body.135
                                        # =>This Inner Loop Header: Depth=1
	movslq	271360(%r13), %rsi
	movq	%rsi, %rax
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rax
	cmpq	%r15, %rax
	jge	.LBB52_54
# BB#56:                                # %if.end.146
                                        #   in Loop: Header=BB52_53 Depth=1
	leal	(%rsi,%rsi,4), %eax
	leal	-48(%rbx,%rax,2), %eax
	movl	%eax, 271360(%r13)
	movq	%r13, %rdi
	callq	NextCh
	movslq	271356(%r13), %rbx
	movq	(%r14), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$8, %ah
	jne	.LBB52_53
.LBB52_57:                              # %while.end.153
	movl	271360(%r13), %ecx
	cmpl	$46, %ebx
	jne	.LBB52_59
# BB#58:                                # %if.then.157
	movq	%r13, %rdi
	movl	%ecx, %esi
	jmp	.LBB52_55
.LBB52_59:                              # %if.end.163
	imull	%ebp, %ecx
	movl	%ecx, 271360(%r13)
	testb	$8, %al
	jne	.LBB52_63
# BB#60:                                # %lor.rhs.i.188
	leal	-33(%rbx), %eax
	cmpl	$93, %eax
	ja	.LBB52_107
# BB#61:                                # %switch.early.test229
	movl	%ebx, %eax
	cmpl	$39, %ebx
	ja	.LBB52_63
# BB#62:                                # %switch.early.test229
	btq	%rax, %r12
	jb	.LBB52_107
.LBB52_63:                              # %if.then.169
	cmpl	$1, 271352(%r13)
	jne	.LBB52_65
# BB#64:                                # %if.then.173
	movl	$.L.str.109, %esi
	xorl	%eax, %eax
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	sprintf
	jmp	.LBB52_66
.LBB52_54:                              # %if.then.141
	movq	%r13, %rdi
.LBB52_55:                              # %cleanup.334
	callq	ReadReal
	movl	$2, 271352(%r13)
	cvtsi2sdl	%ebp, %xmm0
	mulsd	271368(%r13), %xmm0
	movsd	%xmm0, 271368(%r13)
	jmp	.LBB52_107
.LBB52_65:                              # %if.else.178
	leaq	272736(%r13), %rsi
	movsd	271368(%r13), %xmm0     # xmm0 = mem[0],zero
	movb	$1, %al
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	sprintf
.LBB52_66:                              # %if.end.184
	movq	%rbx, %rdi
	callq	strlen
	movslq	%eax, %rbp
	leaq	271376(%r13,%rbp), %rbx
	.align	16, 0x90
.LBB52_67:                              # %do.body.191
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebp
	cmpl	$127, %ebp
	jg	.LBB52_69
# BB#68:                                # %if.then.195
                                        #   in Loop: Header=BB52_67 Depth=1
	movb	271356(%r13), %al
	movb	%al, (%rbx)
	incq	%rbx
.LBB52_69:                              # %if.end.199
                                        #   in Loop: Header=BB52_67 Depth=1
	movq	%r13, %rdi
	callq	NextCh
	movslq	271356(%r13), %rax
	movq	(%r14), %rcx
	testb	$8, (%rcx,%rax,2)
	jne	.LBB52_67
# BB#70:                                # %lor.rhs.i.203
                                        #   in Loop: Header=BB52_67 Depth=1
	leal	-33(%rax), %ecx
	cmpl	$93, %ecx
	ja	.LBB52_73
# BB#71:                                # %switch.early.test230
                                        #   in Loop: Header=BB52_67 Depth=1
	movl	%eax, %ecx
	cmpl	$39, %eax
	ja	.LBB52_67
# BB#72:                                # %switch.early.test230
                                        #   in Loop: Header=BB52_67 Depth=1
	btq	%rcx, %r12
	jae	.LBB52_67
.LBB52_73:                              # %do.end.204
	movb	$0, (%rbx)
	movl	$3, 271352(%r13)
	jmp	.LBB52_107
.LBB52_94:                              # %if.end.284
	movq	%r13, %rdi
	callq	InSymbol
	cmpl	$4, 271352(%r13)
	jne	.LBB52_95
# BB#96:                                # %if.end.288
	movslq	272720(%r13), %rax
	movq	272568(%r13,%rax,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB52_98
# BB#97:                                # %if.then.295
	movl	$264, %esi              # imm = 0x108
	movq	%r13, %rdi
	callq	AllocChunk
	movq	%rax, %rbx
	movslq	272720(%r13), %rax
	movq	%rbx, 272568(%r13,%rax,8)
	movl	272720(%r13), %eax
.LBB52_98:                              # %if.end.302
	cltq
	movq	272560(%r13,%rax,8), %r14
	cmpb	$0, 271504(%r13)
	je	.LBB52_101
# BB#99:                                # %isabsolutepath.exit.i
	leaq	36(%rsp), %rdi
	movl	$3, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	strncpy
	movb	$0, 39(%rsp)
	movzbl	36(%rsp), %eax
	cmpl	$47, %eax
	jne	.LBB52_101
# BB#100:                               # %if.then.i.211
	movl	$255, %edx
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	strncpy
	movb	$0, 254(%rbx)
	jmp	.LBB52_104
.LBB52_95:                              # %Check.exit.thread
	movl	$.L.str.112, %ebx
	movl	$.L.str.112, %edi
	movl	$37, %esi
	callq	strchr
	testq	%rax, %rax
	movl	$.L.str.123, %esi
	cmoveq	%rbx, %rsi
	jmp	.LBB52_42
.LBB52_41:                              # %if.then.82
	movl	$.L.str.107, %esi
	jmp	.LBB52_42
.LBB52_101:                             # %if.end.i.213
	movl	$255, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strncpy
	movb	$0, 254(%rbx)
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strrchr
	testq	%rax, %rax
	je	.LBB52_109
# BB#102:                               # %if.end.10.i
	movq	%rax, %rcx
	subq	%rbx, %rcx
	cmpl	$254, %ecx
	jbe	.LBB52_103
.LBB52_109:                             # %if.then.315
	movl	$.L.str.113, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	SynError
	jmp	.LBB52_107
.LBB52_50:                              # %if.then.116
	movl	$.L.str.108, %esi
.LBB52_42:                              # %if.then.82
	xorl	%eax, %eax
	movq	%r13, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	SynError                # TAILCALL
.LBB52_103:                             # %if.end.15.i
	incq	%rax
	movl	$255, %edx
	subl	%ecx, %edx
	movq	%rax, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	strncpy
.LBB52_104:                             # %if.end.317
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, 256(%rbx)
	testq	%rax, %rax
	je	.LBB52_105
# BB#106:                               # %if.end.328
	incl	272720(%r13)
	movl	$32, 271356(%r13)
	movq	%r13, %rdi
	callq	InSymbol
	jmp	.LBB52_107
.LBB52_105:                             # %if.then.324
	movl	$.L.str.114, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	SynError
	jmp	.LBB52_107
.Lfunc_end52:
	.size	InSymbol, .Lfunc_end52-InSymbol
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI52_0:
	.quad	.LBB52_82
	.quad	.LBB52_77
	.quad	.LBB52_108
	.quad	.LBB52_108
	.quad	.LBB52_108
	.quad	.LBB52_82
	.quad	.LBB52_108
	.quad	.LBB52_108
	.quad	.LBB52_108
	.quad	.LBB52_33
	.quad	.LBB52_108
	.quad	.LBB52_32
	.quad	.LBB52_33

	.text
	.align	16, 0x90
	.type	NextCh,@function
NextCh:                                 # @NextCh
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp418:
	.cfi_def_cfa_offset 16
.Ltmp419:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movslq	272720(%rbx), %rax
	movq	272560(%rbx,%rax,8), %rax
	movq	256(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB53_5
# BB#1:                                 # %if.then
	callq	fgetc
	movl	%eax, 271356(%rbx)
	movslq	272720(%rbx), %rax
	movq	272560(%rbx,%rax,8), %rax
	movq	256(%rax), %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB53_7
# BB#2:                                 # %if.then.13
	movslq	272720(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB53_4
# BB#3:                                 # %if.then.15
	leal	-1(%rax), %ecx
	movl	%ecx, 272720(%rbx)
	movq	272560(%rbx,%rax,8), %rax
	movq	256(%rax), %rdi
	callq	fclose
	movl	$32, 271356(%rbx)
	popq	%rbx
	retq
.LBB53_5:                               # %if.else.25
	movq	272544(%rbx), %rax
	movsbl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 271356(%rbx)
	je	.LBB53_7
# BB#6:                                 # %if.then.29
	incq	%rax
	movq	%rax, 272544(%rbx)
.LBB53_7:                               # %if.end.32
	popq	%rbx
	retq
.LBB53_4:                               # %if.else
	movl	$0, 271356(%rbx)
	popq	%rbx
	retq
.Lfunc_end53:
	.size	NextCh, .Lfunc_end53-NextCh
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI54_0:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	ReadReal,@function
ReadReal:                               # @ReadReal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp421:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp422:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp423:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp424:
	.cfi_def_cfa_offset 64
.Ltmp425:
	.cfi_offset %rbx, -40
.Ltmp426:
	.cfi_offset %r14, -32
.Ltmp427:
	.cfi_offset %r15, -24
.Ltmp428:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cvtsi2sdl	%esi, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	%xmm0, 271368(%rbx)
	movslq	271356(%rbx), %rbp
	callq	__ctype_b_loc
	movq	%rax, %r14
	movq	(%r14), %rax
	testb	$8, 1(%rax,%rbp,2)
	je	.LBB54_4
# BB#1:                                 # %while.body.preheader
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI54_0(%rip), %xmm1
	leal	-48(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 271368(%rbx)
	jmp	.LBB54_3
	.align	16, 0x90
.LBB54_2:                               # %while.body.while.body_crit_edge
                                        #   in Loop: Header=BB54_3 Depth=1
	movsd	271368(%rbx), %xmm0     # xmm0 = mem[0],zero
	mulsd	.LCPI54_0(%rip), %xmm0
	addl	$-48, %ebp
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebp, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 271368(%rbx)
.LBB54_3:                               # %while.body.while.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	NextCh
	movslq	271356(%rbx), %rbp
	movq	(%r14), %rax
	testb	$8, 1(%rax,%rbp,2)
	jne	.LBB54_2
.LBB54_4:                               # %while.end
	cmpl	$46, %ebp
	jne	.LBB54_11
# BB#5:                                 # %if.then
	movq	%rbx, %rdi
	callq	NextCh
	movslq	271356(%rbx), %rax
	movq	(%r14), %rcx
	testb	$8, 1(%rcx,%rax,2)
	jne	.LBB54_7
# BB#6:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	xorpd	%xmm1, %xmm1
	jmp	.LBB54_10
.LBB54_7:
	xorl	%ebp, %ebp
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB54_8:                               # %while.body.16
                                        # =>This Inner Loop Header: Depth=1
	mulsd	.LCPI54_0(%rip), %xmm0
	addl	$-48, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	incl	%ebp
	movq	%rbx, %rdi
	callq	NextCh
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	271356(%rbx), %rax
	movq	(%r14), %rcx
	testb	$8, 1(%rcx,%rax,2)
	jne	.LBB54_8
# BB#9:                                 # %while.cond.8.while.end.22_crit_edge
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebp, %xmm1
.LBB54_10:                              # %while.end.22
	movsd	271368(%rbx), %xmm0     # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	.LCPI54_0(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	pow
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	8(%rsp), %xmm1          # 8-byte Folded Reload
	movsd	%xmm1, 271368(%rbx)
	movl	271356(%rbx), %ebp
.LBB54_11:                              # %if.end
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB54_23
# BB#12:                                # %toupper.exit
	movslq	%ebp, %rbp
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	cmpl	$69, (%rax,%rbp,4)
	jne	.LBB54_23
# BB#13:                                # %if.then.31
	movq	%rbx, %rdi
	callq	NextCh
	movl	271356(%rbx), %eax
	movl	$1, %r15d
	cmpl	$43, %eax
	jne	.LBB54_14
# BB#16:                                # %if.then.41
	movq	%rbx, %rdi
	callq	NextCh
	jmp	.LBB54_17
.LBB54_14:                              # %if.then.31
	cmpl	$45, %eax
	jne	.LBB54_17
# BB#15:                                # %if.then.37
	movq	%rbx, %rdi
	callq	NextCh
	movl	$-1, %r15d
.LBB54_17:                              # %if.end.43
	movslq	271356(%rbx), %rax
	movq	(%r14), %rcx
	xorl	%ebp, %ebp
	jmp	.LBB54_18
	.align	16, 0x90
.LBB54_21:                              # %if.end.62
                                        #   in Loop: Header=BB54_18 Depth=1
	movq	%rbx, %rdi
	callq	NextCh
	movslq	271356(%rbx), %rax
	movq	(%r14), %rcx
.LBB54_18:                              # %if.end.43
                                        # =>This Inner Loop Header: Depth=1
	testb	$8, 1(%rcx,%rax,2)
	je	.LBB54_22
# BB#19:                                # %while.body.52
                                        #   in Loop: Header=BB54_18 Depth=1
	movslq	%ebp, %rcx
	addq	%rcx, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	cmpq	$2147483646, %rcx       # imm = 0x7FFFFFFE
	jg	.LBB54_21
# BB#20:                                # %if.then.57
                                        #   in Loop: Header=BB54_18 Depth=1
	leal	(%rbp,%rbp,4), %ecx
	leal	-48(%rax,%rcx,2), %ebp
	jmp	.LBB54_21
.LBB54_22:                              # %while.end.63
	imull	%r15d, %ebp
	movsd	271368(%rbx), %xmm0     # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	cvtsi2sdl	%ebp, %xmm1
	movsd	.LCPI54_0(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	pow
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 271368(%rbx)
.LBB54_23:                              # %if.end.69
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	ReadReal, .Lfunc_end54-ReadReal
	.cfi_endproc

	.align	16, 0x90
	.type	GetVal,@function
GetVal:                                 # @GetVal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp429:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp430:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp431:
	.cfi_def_cfa_offset 32
.Ltmp432:
	.cfi_offset %rbx, -32
.Ltmp433:
	.cfi_offset %r14, -24
.Ltmp434:
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %rdx
	movl	271352(%rdx), %eax
	decl	%eax
	cmpl	$5, %eax
	ja	.LBB55_7
# BB#1:                                 # %entry
	jmpq	*.LJTI55_0(,%rax,8)
.LBB55_4:                               # %sw.bb.3
	movl	%ebx, %r14d
	movl	271360(%rdx), %ecx
	movl	$.L.str.109, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	snprintf
	jmp	.LBB55_9
.LBB55_7:                               # %sw.default
	xorl	%ebx, %ebx
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	SynError
	jmp	.LBB55_10
.LBB55_5:                               # %sw.bb.6
	movl	%ebx, %r14d
	movsd	271368(%rdx), %xmm0     # xmm0 = mem[0],zero
	addq	$272736, %rdx           # imm = 0x42960
	movb	$1, %al
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	snprintf
	jmp	.LBB55_9
.LBB55_2:                               # %sw.bb.1
	addq	$271376, %rdx           # imm = 0x42410
	jmp	.LBB55_3
.LBB55_6:                               # %sw.bb.10
	addq	$271504, %rdx           # imm = 0x42490
.LBB55_3:                               # %sw.epilog
	movl	%ebx, %r14d
	movq	%r15, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	callq	strncpy
	decl	%ebx
	movb	$0, (%r15,%rbx)
	jmp	.LBB55_9
.LBB55_8:                               # %sw.bb
	movb	$0, (%r15)
	movl	%ebx, %r14d
.LBB55_9:                               # %sw.epilog
	movb	$0, (%r15,%r14)
	movl	$1, %ebx
.LBB55_10:                              # %return
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end55:
	.size	GetVal, .Lfunc_end55-GetVal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI55_0:
	.quad	.LBB55_4
	.quad	.LBB55_5
	.quad	.LBB55_2
	.quad	.LBB55_6
	.quad	.LBB55_7
	.quad	.LBB55_8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Table %d is out of sequence"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%.10g"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"CGATS.17"
	.size	.L.str.2, 9

	.type	PredefinedProperties,@object # @PredefinedProperties
	.section	.rodata,"a",@progbits
	.align	16
PredefinedProperties:
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.21
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.22
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.23
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.24
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.25
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.26
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.28
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.29
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.30
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.31
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.32
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.33
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.34
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.35
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.37
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.38
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.39
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.40
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.41
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.42
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.43
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.44
	.long	1                       # 0x1
	.zero	4
	.size	PredefinedProperties, 416

	.type	PredefinedSampleID,@object # @PredefinedSampleID
	.align	16
PredefinedSampleID:
	.quad	.L.str.13
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.size	PredefinedSampleID, 320

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"# "
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%u"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"wt"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(Ptr != ((void*)0))"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"./lcms2/src/cmscgats.c"
	.size	.L.str.7, 23

	.type	.L__PRETTY_FUNCTION__.cmsIT8LoadFromMem,@object # @__PRETTY_FUNCTION__.cmsIT8LoadFromMem
.L__PRETTY_FUNCTION__.cmsIT8LoadFromMem:
	.asciz	"cmsHANDLE cmsIT8LoadFromMem(cmsContext, void *, cmsUInt32Number)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8LoadFromMem, 65

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"(len != 0)"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"(cFileName != ((void*)0))"
	.size	.L.str.10, 26

	.type	.L__PRETTY_FUNCTION__.cmsIT8LoadFromFile,@object # @__PRETTY_FUNCTION__.cmsIT8LoadFromFile
.L__PRETTY_FUNCTION__.cmsIT8LoadFromFile:
	.asciz	"cmsHANDLE cmsIT8LoadFromFile(cmsContext, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8LoadFromFile, 55

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"rt"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"(hIT8 != ((void*)0))"
	.size	.L.str.12, 21

	.type	.L__PRETTY_FUNCTION__.cmsIT8EnumDataFormat,@object # @__PRETTY_FUNCTION__.cmsIT8EnumDataFormat
.L__PRETTY_FUNCTION__.cmsIT8EnumDataFormat:
	.asciz	"int cmsIT8EnumDataFormat(cmsHANDLE, char ***)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8EnumDataFormat, 46

	.type	.L__PRETTY_FUNCTION__.cmsIT8EnumProperties,@object # @__PRETTY_FUNCTION__.cmsIT8EnumProperties
.L__PRETTY_FUNCTION__.cmsIT8EnumProperties:
	.asciz	"cmsUInt32Number cmsIT8EnumProperties(cmsHANDLE, char ***)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8EnumProperties, 58

	.type	.L__PRETTY_FUNCTION__.cmsIT8EnumPropertyMulti,@object # @__PRETTY_FUNCTION__.cmsIT8EnumPropertyMulti
.L__PRETTY_FUNCTION__.cmsIT8EnumPropertyMulti:
	.asciz	"cmsUInt32Number cmsIT8EnumPropertyMulti(cmsHANDLE, const char *, const char ***)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8EnumPropertyMulti, 81

	.type	.L__PRETTY_FUNCTION__.cmsIT8FindDataFormat,@object # @__PRETTY_FUNCTION__.cmsIT8FindDataFormat
.L__PRETTY_FUNCTION__.cmsIT8FindDataFormat:
	.asciz	"int cmsIT8FindDataFormat(cmsHANDLE, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8FindDataFormat, 50

	.type	.L__PRETTY_FUNCTION__.cmsIT8GetDataRowCol,@object # @__PRETTY_FUNCTION__.cmsIT8GetDataRowCol
.L__PRETTY_FUNCTION__.cmsIT8GetDataRowCol:
	.asciz	"const char *cmsIT8GetDataRowCol(cmsHANDLE, int, int)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8GetDataRowCol, 53

	.type	.L__PRETTY_FUNCTION__.cmsIT8SetDataRowCol,@object # @__PRETTY_FUNCTION__.cmsIT8SetDataRowCol
.L__PRETTY_FUNCTION__.cmsIT8SetDataRowCol:
	.asciz	"cmsBool cmsIT8SetDataRowCol(cmsHANDLE, int, int, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8SetDataRowCol, 63

	.type	.L__PRETTY_FUNCTION__.cmsIT8SetDataRowColDbl,@object # @__PRETTY_FUNCTION__.cmsIT8SetDataRowColDbl
.L__PRETTY_FUNCTION__.cmsIT8SetDataRowColDbl:
	.asciz	"cmsBool cmsIT8SetDataRowColDbl(cmsHANDLE, int, int, cmsFloat64Number)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8SetDataRowColDbl, 70

	.type	.L__PRETTY_FUNCTION__.cmsIT8GetData,@object # @__PRETTY_FUNCTION__.cmsIT8GetData
.L__PRETTY_FUNCTION__.cmsIT8GetData:
	.asciz	"const char *cmsIT8GetData(cmsHANDLE, const char *, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8GetData, 65

	.type	.L__PRETTY_FUNCTION__.cmsIT8SetData,@object # @__PRETTY_FUNCTION__.cmsIT8SetData
.L__PRETTY_FUNCTION__.cmsIT8SetData:
	.asciz	"cmsBool cmsIT8SetData(cmsHANDLE, const char *, const char *, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8SetData, 75

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"SAMPLE_ID"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Couldn't add more patches '%s'\n"
	.size	.L.str.14, 32

	.type	.L__PRETTY_FUNCTION__.cmsIT8SetDataDbl,@object # @__PRETTY_FUNCTION__.cmsIT8SetDataDbl
.L__PRETTY_FUNCTION__.cmsIT8SetDataDbl:
	.asciz	"cmsBool cmsIT8SetDataDbl(cmsHANDLE, const char *, const char *, cmsFloat64Number)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8SetDataDbl, 82

	.type	.L__PRETTY_FUNCTION__.cmsIT8GetPatchName,@object # @__PRETTY_FUNCTION__.cmsIT8GetPatchName
.L__PRETTY_FUNCTION__.cmsIT8GetPatchName:
	.asciz	"const char *cmsIT8GetPatchName(cmsHANDLE, int, char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8GetPatchName, 55

	.type	.L__PRETTY_FUNCTION__.cmsIT8GetPatchByName,@object # @__PRETTY_FUNCTION__.cmsIT8GetPatchByName
.L__PRETTY_FUNCTION__.cmsIT8GetPatchByName:
	.asciz	"int cmsIT8GetPatchByName(cmsHANDLE, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8GetPatchByName, 50

	.type	.L__PRETTY_FUNCTION__.cmsIT8TableCount,@object # @__PRETTY_FUNCTION__.cmsIT8TableCount
.L__PRETTY_FUNCTION__.cmsIT8TableCount:
	.asciz	"cmsUInt32Number cmsIT8TableCount(cmsHANDLE)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8TableCount, 44

	.type	.L__PRETTY_FUNCTION__.cmsIT8SetTableByLabel,@object # @__PRETTY_FUNCTION__.cmsIT8SetTableByLabel
.L__PRETTY_FUNCTION__.cmsIT8SetTableByLabel:
	.asciz	"int cmsIT8SetTableByLabel(cmsHANDLE, const char *, const char *, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8SetTableByLabel, 79

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"LABEL"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%255s %d %255s"
	.size	.L.str.16, 15

	.type	.L__PRETTY_FUNCTION__.cmsIT8SetIndexColumn,@object # @__PRETTY_FUNCTION__.cmsIT8SetIndexColumn
.L__PRETTY_FUNCTION__.cmsIT8SetIndexColumn:
	.asciz	"cmsBool cmsIT8SetIndexColumn(cmsHANDLE, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8SetIndexColumn, 54

	.type	.L__PRETTY_FUNCTION__.cmsIT8DefineDblFormat,@object # @__PRETTY_FUNCTION__.cmsIT8DefineDblFormat
.L__PRETTY_FUNCTION__.cmsIT8DefineDblFormat:
	.asciz	"void cmsIT8DefineDblFormat(cmsHANDLE, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsIT8DefineDblFormat, 52

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: Line %d, %s"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"NUMBER_OF_FIELDS"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"NUMBER_OF_SETS"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ORIGINATOR"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"FILE_DESCRIPTOR"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"CREATED"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"DESCRIPTOR"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"DIFFUSE_GEOMETRY"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"MANUFACTURER"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"MANUFACTURE"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"PROD_DATE"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"SERIAL"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"MATERIAL"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"INSTRUMENTATION"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"MEASUREMENT_SOURCE"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"PRINT_CONDITIONS"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"SAMPLE_BACKING"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"CHISQ_DOF"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"MEASUREMENT_GEOMETRY"
	.size	.L.str.36, 21

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"FILTER"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"POLARIZATION"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"WEIGHTING_FUNCTION"
	.size	.L.str.39, 19

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"COMPUTATIONAL_PARAMETER"
	.size	.L.str.40, 24

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"TARGET_TYPE"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"COLORANT"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"TABLE_DESCRIPTOR"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"TABLE_NAME"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"STRING"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"CMYK_C"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"CMYK_M"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"CMYK_Y"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"CMYK_K"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"D_RED"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"D_GREEN"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"D_BLUE"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"D_VIS"
	.size	.L.str.53, 6

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"D_MAJOR_FILTER"
	.size	.L.str.54, 15

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"RGB_R"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"RGB_G"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"RGB_B"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"SPECTRAL_NM"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"SPECTRAL_PCT"
	.size	.L.str.59, 13

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"SPECTRAL_DEC"
	.size	.L.str.60, 13

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"XYZ_X"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"XYZ_Y"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"XYZ_Z"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"XYY_XXYY_Y"
	.size	.L.str.64, 11

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"XYY_CAPY"
	.size	.L.str.65, 9

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"LAB_L"
	.size	.L.str.66, 6

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"LAB_A"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"LAB_B"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"LAB_C"
	.size	.L.str.69, 6

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"LAB_H"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"LAB_DE"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"LAB_DE_94"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"LAB_DE_CMC"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"LAB_DE_2000"
	.size	.L.str.74, 12

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"MEAN_DE"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"STDEV_X"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"STDEV_Y"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"STDEV_Z"
	.size	.L.str.78, 8

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"STDEV_L"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"STDEV_A"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"STDEV_B"
	.size	.L.str.81, 8

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"STDEV_DE"
	.size	.L.str.82, 9

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"CHI_SQD_PAR"
	.size	.L.str.83, 12

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Table %d out of sequence"
	.size	.L.str.84, 25

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"AddToList: out of memory"
	.size	.L.str.85, 25

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"More than NUMBER_OF_FIELDS fields."
	.size	.L.str.86, 35

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"\n"
	.size	.L.str.87, 2

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"#\n# "
	.size	.L.str.88, 5

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"%c"
	.size	.L.str.89, 3

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"\n#\n"
	.size	.L.str.90, 4

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"\t%s"
	.size	.L.str.91, 4

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"\t\"%s\""
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"\t0x%X"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"\t0x%B"
	.size	.L.str.94, 6

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"\t\"%s,%s\""
	.size	.L.str.95, 9

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Unknown write mode %d"
	.size	.L.str.96, 22

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	" "
	.size	.L.str.97, 2

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Write to file error in CGATS parser"
	.size	.L.str.98, 36

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Write to memory overflows in CGATS parser"
	.size	.L.str.99, 42

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"BEGIN_DATA_FORMAT\n"
	.size	.L.str.100, 19

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"\t"
	.size	.L.str.101, 2

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"END_DATA_FORMAT\n"
	.size	.L.str.102, 17

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"BEGIN_DATA\n"
	.size	.L.str.103, 12

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"\"\""
	.size	.L.str.104, 3

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"\""
	.size	.L.str.105, 2

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"END_DATA\n"
	.size	.L.str.106, 10

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Invalid hexadecimal number"
	.size	.L.str.107, 27

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Invalid binary number"
	.size	.L.str.108, 22

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"%d"
	.size	.L.str.109, 3

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Unrecognized character: 0x%x"
	.size	.L.str.110, 29

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Too many recursion levels"
	.size	.L.str.111, 26

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Filename expected"
	.size	.L.str.112, 18

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"File path too long"
	.size	.L.str.113, 19

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"File %s not found"
	.size	.L.str.114, 18

	.type	TabKeys,@object         # @TabKeys
	.section	.rodata,"a",@progbits
	.align	16
TabKeys:
	.quad	.L.str.115
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.116
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.117
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.118
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.119
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.120
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.121
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.122
	.long	13                      # 0xd
	.zero	4
	.size	TabKeys, 128

	.type	.L.str.115,@object      # @.str.115
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.115:
	.asciz	"$INCLUDE"
	.size	.L.str.115, 9

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	".INCLUDE"
	.size	.L.str.116, 9

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"BEGIN_DATA"
	.size	.L.str.117, 11

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"BEGIN_DATA_FORMAT"
	.size	.L.str.118, 18

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"DATA_FORMAT_IDENTIFIER"
	.size	.L.str.119, 23

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"END_DATA"
	.size	.L.str.120, 9

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"END_DATA_FORMAT"
	.size	.L.str.121, 16

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"KEYWORD"
	.size	.L.str.122, 8

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"**** CORRUPTED FORMAT STRING ***"
	.size	.L.str.123, 33

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Sample type expected"
	.size	.L.str.124, 21

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Count mismatch. NUMBER_OF_FIELDS was %d, found %d\n"
	.size	.L.str.125, 51

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Expected separator"
	.size	.L.str.126, 19

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Sample data expected"
	.size	.L.str.127, 21

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Count mismatch. NUMBER_OF_SETS was %d, found %d\n"
	.size	.L.str.128, 49

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Keyword expected"
	.size	.L.str.129, 17

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Property data expected"
	.size	.L.str.130, 23

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Invalid value '%s' for property '%s'."
	.size	.L.str.131, 38

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Invalid value for property '%s'."
	.size	.L.str.132, 33

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"expected keyword or identifier"
	.size	.L.str.133, 31

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Undefined DATA_FORMAT"
	.size	.L.str.134, 22

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"%s %d %s"
	.size	.L.str.135, 9

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"File '%s' not found"
	.size	.L.str.136, 20

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Patch %d out of range, there are %d patches"
	.size	.L.str.137, 44

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Sample %d out of range, there are %d samples"
	.size	.L.str.138, 45

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"AllocateDataFormat: Unknown NUMBER_OF_FIELDS"
	.size	.L.str.139, 45

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"AllocateDataFormat: Unable to allocate dataFormat array"
	.size	.L.str.140, 56

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"AllocateDataSet: Unable to allocate data array"
	.size	.L.str.141, 47


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
