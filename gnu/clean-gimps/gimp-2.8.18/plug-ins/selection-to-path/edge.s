	.text
	.file	"edge.bc"
	.globl	next_outline_edge
	.align	16, 0x90
	.type	next_outline_edge,@function
next_outline_edge:                      # @next_outline_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	subq	$3, %rsi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	ja	.LBB0_29
# BB#34:                                # %entry
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	movl	$-1, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-40(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	callq	sel_valid_pixel
	cmpl	$0, %eax
	je	.LBB0_4
# BB#2:                                 # %land.lhs.true
	movl	-52(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:                                 # %if.then
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_30
.LBB0_4:                                # %if.end
	movl	$-1, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	$3, -72(%rbp)
	movl	-64(%rbp), %edi
	movl	-68(%rbp), %esi
	callq	sel_valid_pixel
	cmpl	$0, %eax
	je	.LBB0_7
# BB#5:                                 # %land.lhs.true.13
	movl	-72(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %if.then.16
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_30
.LBB0_7:                                # %if.end.17
	jmp	.LBB0_30
.LBB0_8:                                # %sw.bb.18
	movl	$0, -76(%rbp)
	movl	$-1, -80(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-76(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	movl	$1, -92(%rbp)
	movl	-84(%rbp), %edi
	movl	-88(%rbp), %esi
	callq	sel_valid_pixel
	cmpl	$0, %eax
	je	.LBB0_11
# BB#9:                                 # %land.lhs.true.28
	movl	-92(%rbp), %edi
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	je	.LBB0_11
# BB#10:                                # %if.then.31
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-88(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_30
.LBB0_11:                               # %if.end.32
	movl	$-1, -96(%rbp)
	movl	$-1, -100(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-100(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	-104(%rbp), %edi
	movl	-108(%rbp), %esi
	callq	sel_valid_pixel
	cmpl	$0, %eax
	je	.LBB0_14
# BB#12:                                # %land.lhs.true.42
	movl	-112(%rbp), %edi
	movl	-104(%rbp), %esi
	movl	-108(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.45
	movl	-104(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-108(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_30
.LBB0_14:                               # %if.end.46
	jmp	.LBB0_30
.LBB0_15:                               # %sw.bb.47
	movl	$1, -116(%rbp)
	movl	$0, -120(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-120(%rbp), %ecx
	movl	%ecx, -128(%rbp)
	movl	$2, -132(%rbp)
	movl	-124(%rbp), %edi
	movl	-128(%rbp), %esi
	callq	sel_valid_pixel
	cmpl	$0, %eax
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.57
	movl	-132(%rbp), %edi
	movl	-124(%rbp), %esi
	movl	-128(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	je	.LBB0_18
# BB#17:                                # %if.then.60
	movl	-124(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-128(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-132(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_30
.LBB0_18:                               # %if.end.61
	movl	$1, -136(%rbp)
	movl	$-1, -140(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-136(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-140(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movl	$1, -152(%rbp)
	movl	-144(%rbp), %edi
	movl	-148(%rbp), %esi
	callq	sel_valid_pixel
	cmpl	$0, %eax
	je	.LBB0_21
# BB#19:                                # %land.lhs.true.71
	movl	-152(%rbp), %edi
	movl	-144(%rbp), %esi
	movl	-148(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	je	.LBB0_21
# BB#20:                                # %if.then.74
	movl	-144(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-148(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-152(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_30
.LBB0_21:                               # %if.end.75
	jmp	.LBB0_30
.LBB0_22:                               # %sw.bb.76
	movl	$0, -156(%rbp)
	movl	$1, -160(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-156(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-160(%rbp), %ecx
	movl	%ecx, -168(%rbp)
	movl	$3, -172(%rbp)
	movl	-164(%rbp), %edi
	movl	-168(%rbp), %esi
	callq	sel_valid_pixel
	cmpl	$0, %eax
	je	.LBB0_25
# BB#23:                                # %land.lhs.true.86
	movl	-172(%rbp), %edi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	je	.LBB0_25
# BB#24:                                # %if.then.89
	movl	-164(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-168(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-172(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_30
.LBB0_25:                               # %if.end.90
	movl	$1, -176(%rbp)
	movl	$1, -180(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-176(%rbp), %ecx
	movl	%ecx, -184(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-180(%rbp), %ecx
	movl	%ecx, -188(%rbp)
	movl	$2, -192(%rbp)
	movl	-184(%rbp), %edi
	movl	-188(%rbp), %esi
	callq	sel_valid_pixel
	cmpl	$0, %eax
	je	.LBB0_28
# BB#26:                                # %land.lhs.true.100
	movl	-192(%rbp), %edi
	movl	-184(%rbp), %esi
	movl	-188(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	je	.LBB0_28
# BB#27:                                # %if.then.103
	movl	-184(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-188(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-192(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_30
.LBB0_28:                               # %if.end.104
	jmp	.LBB0_30
.LBB0_29:                               # %sw.default
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB0_30:                               # %sw.epilog
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB0_33
# BB#31:                                # %land.lhs.true.106
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jne	.LBB0_33
# BB#32:                                # %if.then.108
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	next_edge
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_33:                               # %if.end.110
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	next_outline_edge, .Lfunc_end0-next_outline_edge
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_1
	.quad	.LBB0_8
	.quad	.LBB0_15
	.quad	.LBB0_22

	.text
	.align	16, 0x90
	.type	is_outline_edge,@function
is_outline_edge:                        # @is_outline_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	sel_pixel_is_white
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB1_18
.LBB1_2:                                # %if.end
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	ja	.LBB1_16
# BB#19:                                # %if.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_3:                                # %sw.bb
	movb	$1, %al
	cmpl	$0, -16(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
	je	.LBB1_5
# BB#4:                                 # %lor.rhs
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	callq	sel_pixel_is_white
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB1_5:                                # %lor.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_18
.LBB1_6:                                # %sw.bb.3
	movb	$1, %al
	cmpl	$0, -12(%rbp)
	movb	%al, -34(%rbp)          # 1-byte Spill
	je	.LBB1_8
# BB#7:                                 # %lor.rhs.5
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %esi
	movl	%eax, %edi
	callq	sel_pixel_is_white
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -34(%rbp)          # 1-byte Spill
.LBB1_8:                                # %lor.end.9
	movb	-34(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_18
.LBB1_9:                                # %sw.bb.11
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	sel_get_width
	movb	$1, %cl
	subl	$1, %eax
	movl	-40(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB1_11
# BB#10:                                # %lor.rhs.15
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	sel_pixel_is_white
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB1_11:                               # %lor.end.18
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_18
.LBB1_12:                               # %sw.bb.20
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	sel_get_height
	movb	$1, %cl
	subl	$1, %eax
	movl	-48(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB1_14
# BB#13:                                # %lor.rhs.24
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	-16(%rbp), %esi
	movl	%eax, %edi
	callq	sel_pixel_is_white
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB1_14:                               # %lor.end.28
	movb	-49(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_18
.LBB1_15:                               # %sw.bb.30
	jmp	.LBB1_16
.LBB1_16:                               # %sw.default
	movabsq	$.L.str.4, %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#17:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB1_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	is_outline_edge, .Lfunc_end1-is_outline_edge
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_9
	.quad	.LBB1_6
	.quad	.LBB1_3
	.quad	.LBB1_12
	.quad	.LBB1_15

	.text
	.align	16, 0x90
	.type	next_edge,@function
next_edge:                              # @next_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpl	$4, -4(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$3, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB2_3:                                # %cond.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end2:
	.size	next_edge, .Lfunc_end2-next_edge
	.cfi_endproc

	.globl	next_unmarked_outline_edge
	.align	16, 0x90
	.type	next_unmarked_outline_edge,@function
next_unmarked_outline_edge:             # @next_unmarked_outline_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rcx, -24(%rbp)
	movq	%r8, -16(%rbp)
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, -40(%rbp)
	cmpl	$4, -40(%rbp)
	je	.LBB3_2
# BB#1:                                 # %cond.true
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$182, %edx
	movabsq	$.L__PRETTY_FUNCTION__.next_unmarked_outline_edge, %rcx
	callq	__assert_fail
.LBB3_3:                                # %cond.end
	jmp	.LBB3_4
.LBB3_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %r8
	callq	is_marked_edge
	movb	$1, %r9b
	cmpl	$0, %eax
	movb	%r9b, -41(%rbp)         # 1-byte Spill
	jne	.LBB3_6
# BB#5:                                 # %lor.rhs
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-40(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	is_outline_edge
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB3_6:                                # %lor.end
                                        #   in Loop: Header=BB3_4 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_7
	jmp	.LBB3_10
.LBB3_7:                                # %while.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-40(%rbp), %edi
	callq	next_edge
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB3_9
# BB#8:                                 # %if.then
	movl	$4, -4(%rbp)
	jmp	.LBB3_11
.LBB3_9:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_4
.LBB3_10:                               # %while.end
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	next_unmarked_outline_edge, .Lfunc_end3-next_unmarked_outline_edge
	.cfi_endproc

	.align	16, 0x90
	.type	is_marked_edge,@function
is_marked_edge:                         # @is_marked_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rcx, -16(%rbp)
	movq	%r8, -8(%rbp)
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$4, -20(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	-24(%rbp), %edx
	imull	-12(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %esi
	addq	%rsi, %rcx
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movzbl	(%rcx,%rsi), %edx
	movl	-20(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	andl	%eax, %edx
	movl	%edx, -32(%rbp)         # 4-byte Spill
.LBB4_3:                                # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end4:
	.size	is_marked_edge, .Lfunc_end4-is_marked_edge
	.cfi_endproc

	.globl	mark_edge
	.align	16, 0x90
	.type	mark_edge,@function
mark_edge:                              # @mark_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	movq	%rax, %rcx
	callq	is_marked_edge
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %cond.true
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$241, %edx
	movabsq	$.L__PRETTY_FUNCTION__.mark_edge, %rcx
	callq	__assert_fail
.LBB5_3:                                # %cond.end
	cmpl	$4, -4(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then
	movl	$1, %eax
	movl	-4(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rdi
	imull	4(%rdi), %esi
	movl	%esi, %esi
	movl	%esi, %edi
	addq	%rdi, %rdx
	movl	-12(%rbp), %esi
	movl	%esi, %edi
	movzbl	(%rdx,%rdi), %esi
	orl	%eax, %esi
	movb	%sil, %cl
	movb	%cl, (%rdx,%rdi)
.LBB5_5:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mark_edge, .Lfunc_end5-mark_edge
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"next_outline_edge: Bad edge value (%d)"
	.size	.L.str, 39

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"edge != no_edge"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"edge.c"
	.size	.L.str.2, 7

	.type	.L__PRETTY_FUNCTION__.next_unmarked_outline_edge,@object # @__PRETTY_FUNCTION__.next_unmarked_outline_edge
.L__PRETTY_FUNCTION__.next_unmarked_outline_edge:
	.asciz	"edge_type next_unmarked_outline_edge(unsigned int, unsigned int, edge_type, bitmap_type)"
	.size	.L__PRETTY_FUNCTION__.next_unmarked_outline_edge, 89

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"!is_marked_edge (edge, row, col, *marked)"
	.size	.L.str.3, 42

	.type	.L__PRETTY_FUNCTION__.mark_edge,@object # @__PRETTY_FUNCTION__.mark_edge
.L__PRETTY_FUNCTION__.mark_edge:
	.asciz	"void mark_edge(edge_type, unsigned int, unsigned int, bitmap_type *)"
	.size	.L__PRETTY_FUNCTION__.mark_edge, 69

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"is_outline_edge: Bad edge value(%d)"
	.size	.L.str.4, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
