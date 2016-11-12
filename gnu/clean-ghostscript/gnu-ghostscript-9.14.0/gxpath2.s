	.text
	.file	"gxpath2.bc"
	.globl	gx_path_current_point
	.align	16, 0x90
	.type	gx_path_current_point,@function
gx_path_current_point:                  # @gx_path_current_point
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-14, %eax
	testb	$1, 97(%rdi)
	je	.LBB0_2
# BB#1:                                 # %if.end
	movl	112(%rdi), %eax
	movl	%eax, (%rsi)
	movl	116(%rdi), %eax
	movl	%eax, 4(%rsi)
	xorl	%eax, %eax
.LBB0_2:                                # %return
	retq
.Lfunc_end0:
	.size	gx_path_current_point, .Lfunc_end0-gx_path_current_point
	.cfi_endproc

	.globl	gx_path_subpath_start_point
	.align	16, 0x90
	.type	gx_path_subpath_start_point,@function
gx_path_subpath_start_point:            # @gx_path_subpath_start_point
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rdi), %rax
	movq	32(%rax), %rcx
	movl	$-14, %eax
	testq	%rcx, %rcx
	je	.LBB1_2
# BB#1:                                 # %if.end
	movq	20(%rcx), %rax
	movq	%rax, (%rsi)
	xorl	%eax, %eax
.LBB1_2:                                # %cleanup
	retq
.Lfunc_end1:
	.size	gx_path_subpath_start_point, .Lfunc_end1-gx_path_subpath_start_point
	.cfi_endproc

	.globl	gx_path_bbox
	.align	16, 0x90
	.type	gx_path_bbox,@function
gx_path_bbox:                           # @gx_path_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	cmpb	$0, 99(%rdi)
	jne	.LBB2_1
# BB#2:                                 # %if.end
	movq	56(%rdi), %rax
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB2_3
# BB#7:                                 # %if.end.8
	movq	88(%rdi), %r11
	movq	32(%rax), %rax
	movq	32(%rax), %r8
	cmpq	%r8, %r11
	je	.LBB2_1
# BB#8:                                 # %if.else
	testq	%r11, %r11
	je	.LBB2_9
# BB#10:                                # %if.else.23
	movl	72(%rdi), %r10d
	movl	76(%rdi), %r9d
	movl	80(%rdi), %ebx
	movl	84(%rdi), %r14d
	jmp	.LBB2_11
.LBB2_1:                                # %if.then
	movups	72(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	jmp	.LBB2_19
.LBB2_3:                                # %if.then.1
	testb	$1, 97(%rdi)
	jne	.LBB2_5
# BB#4:
	movl	$-14, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB2_6
.LBB2_5:                                # %gx_path_current_point.exit
	movl	112(%rdi), %ecx
	movl	116(%rdi), %edx
	xorl	%eax, %eax
.LBB2_6:                                # %if.end.6
	movl	%ecx, (%rsi)
	movl	%edx, 4(%rsi)
	movq	(%rsi), %rcx
	movq	%rcx, 8(%rsi)
	jmp	.LBB2_20
.LBB2_9:                                # %if.then.16
	movl	20(%rcx), %r10d
	movl	24(%rcx), %r9d
	movl	%r10d, %ebx
	movl	%r9d, %r14d
	movq	%rcx, %r11
.LBB2_11:                               # %while.cond.preheader
	movq	8(%r11), %rcx
	jmp	.LBB2_12
	.align	16, 0x90
.LBB2_17:                               # %sw.default
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	20(%rcx), %eax
	cmpl	%ebx, %eax
	movl	%ebx, %edx
	cmovgel	%eax, %edx
	cmpl	%r10d, %eax
	cmovlel	%eax, %r10d
	cmovgel	%edx, %ebx
	movl	24(%rcx), %eax
	cmpl	%r14d, %eax
	movl	%r14d, %edx
	cmovgel	%eax, %edx
	cmpl	%r9d, %eax
	cmovlel	%eax, %r9d
	cmovgel	%edx, %r14d
	movq	8(%rcx), %rcx
.LBB2_12:                               # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB2_18
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB2_12 Depth=1
	movzwl	16(%rcx), %eax
	cmpl	$3, %eax
	jne	.LBB2_17
# BB#14:                                # %sw.bb
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	28(%rcx), %eax
	movl	32(%rcx), %r11d
	cmpl	%ebx, %eax
	movl	%ebx, %ebp
	cmovgel	%eax, %ebp
	cmpl	%r10d, %eax
	cmovlel	%eax, %r10d
	cmovll	%ebx, %ebp
	cmpl	%r14d, %r11d
	movl	%r14d, %eax
	cmovgel	%r11d, %eax
	cmpl	%r9d, %r11d
	cmovlel	%r11d, %r9d
	cmovgel	%eax, %r14d
	movl	36(%rcx), %eax
	cmpl	%ebp, %eax
	movl	%ebp, %ebx
	cmovgel	%eax, %ebx
	cmpl	%r10d, %eax
	cmovlel	%eax, %r10d
	cmovll	%ebp, %ebx
	movl	40(%rcx), %r11d
	cmpl	%r9d, %r11d
	jge	.LBB2_16
# BB#15:                                #   in Loop: Header=BB2_12 Depth=1
	movl	%r11d, %r9d
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_16:                               # %if.else.94
                                        #   in Loop: Header=BB2_12 Depth=1
	cmpl	%r14d, %r11d
	cmovgel	%r11d, %r14d
	jmp	.LBB2_17
.LBB2_18:                               # %while.end
	movl	%r10d, (%rsi)
	movl	%r9d, 4(%rsi)
	movl	%ebx, 8(%rsi)
	movl	%r14d, 12(%rsi)
	movl	%r10d, 72(%rdi)
	movl	%r9d, 76(%rdi)
	movl	%ebx, 80(%rdi)
	movl	%r14d, 84(%rdi)
	movq	%r8, 88(%rdi)
.LBB2_19:                               # %return
	xorl	%eax, %eax
.LBB2_20:                               # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_path_bbox, .Lfunc_end2-gx_path_bbox
	.cfi_endproc

	.globl	gx_path_bbox_set
	.align	16, 0x90
	.type	gx_path_bbox_set,@function
gx_path_bbox_set:                       # @gx_path_bbox_set
	.cfi_startproc
# BB#0:                                 # %entry
	cmpb	$0, 98(%rdi)
	je	.LBB3_2
# BB#1:                                 # %return
	movups	72(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	xorl	%eax, %eax
	retq
.LBB3_2:                                # %if.else
	jmp	gx_path_bbox            # TAILCALL
.Lfunc_end3:
	.size	gx_path_bbox_set, .Lfunc_end3-gx_path_bbox_set
	.cfi_endproc

	.globl	gx_path_has_curves
	.align	16, 0x90
	.type	gx_path_has_curves,@function
gx_path_has_curves:                     # @gx_path_has_curves
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 108(%rdi)
	setne	%al
	movzbl	%al, %eax
	retq
.Lfunc_end4:
	.size	gx_path_has_curves, .Lfunc_end4-gx_path_has_curves
	.cfi_endproc

	.globl	gx_path_is_void
	.align	16, 0x90
	.type	gx_path_is_void,@function
gx_path_is_void:                        # @gx_path_is_void
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_1
# BB#2:                                 # %land.rhs
	cmpq	$0, 24(%rax)
	sete	%al
	movzbl	%al, %eax
	retq
.LBB5_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end5:
	.size	gx_path_is_void, .Lfunc_end5-gx_path_is_void
	.cfi_endproc

	.globl	gx_path_is_null
	.align	16, 0x90
	.type	gx_path_is_null,@function
gx_path_is_null:                        # @gx_path_is_null
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.LBB6_1
# BB#2:                                 # %land.lhs.true
	cmpq	$0, 24(%rax)
	je	.LBB6_4
# BB#3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB6_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB6_4:                                # %land.rhs
	testb	$1, 97(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end6:
	.size	gx_path_is_null, .Lfunc_end6-gx_path_is_null
	.cfi_endproc

	.globl	gx_subpath_is_rectangular
	.align	16, 0x90
	.type	gx_subpath_is_rectangular,@function
gx_subpath_is_rectangular:              # @gx_subpath_is_rectangular
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 40
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	cmpl	$0, 40(%rdi)
	jne	.LBB7_29
# BB#1:                                 # %land.lhs.true
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB7_29
# BB#2:                                 # %land.lhs.true.2
	movq	8(%rcx), %r11
	testq	%r11, %r11
	je	.LBB7_29
# BB#3:                                 # %land.lhs.true.5
	movq	8(%r11), %r10
	testq	%r10, %r10
	je	.LBB7_29
# BB#4:                                 # %if.then
	movq	8(%r10), %r9
	movl	$1, %r8d
	testq	%r9, %r9
	je	.LBB7_15
# BB#5:                                 # %lor.lhs.false
	movw	16(%r9), %bx
	testw	%bx, %bx
	je	.LBB7_15
# BB#6:                                 # %lor.lhs.false
	movzwl	%bx, %ebp
	cmpl	$1, %ebp
	je	.LBB7_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$5, %ebp
	jne	.LBB7_14
.LBB7_8:                                # %if.else.24
	movl	20(%r9), %ebp
	cmpl	20(%rdi), %ebp
	jne	.LBB7_29
# BB#9:                                 # %lor.lhs.false.29
	movl	24(%r9), %ebp
	cmpl	24(%rdi), %ebp
	jne	.LBB7_29
# BB#10:                                # %if.else.36
	movq	8(%r9), %rbx
	movl	$2, %r8d
	testq	%rbx, %rbx
	je	.LBB7_15
# BB#11:                                # %lor.lhs.false.40
	movw	16(%rbx), %bx
	testw	%bx, %bx
	je	.LBB7_15
# BB#12:                                # %lor.lhs.false.40
	movzwl	%bx, %ebp
	cmpl	$1, %ebp
	je	.LBB7_29
# BB#13:                                # %lor.lhs.false.40
	cmpl	$5, %ebp
	je	.LBB7_29
.LBB7_14:                               # %if.then.59
	movl	$3, %r8d
.LBB7_15:                               # %if.end.64
	movl	20(%rdi), %ebx
	movl	24(%rdi), %r14d
	movl	20(%r11), %r15d
	movl	24(%r11), %edi
	movl	20(%rcx), %ebp
	cmpl	%ebp, %ebx
	jne	.LBB7_19
# BB#16:                                # %land.lhs.true.77
	cmpl	%edi, 24(%rcx)
	jne	.LBB7_19
# BB#17:                                # %land.lhs.true.82
	cmpl	20(%r10), %r15d
	jne	.LBB7_19
# BB#18:                                # %land.lhs.true.87
	cmpl	%r14d, 24(%r10)
	je	.LBB7_23
.LBB7_19:                               # %lor.lhs.false.92
	cmpl	20(%r10), %ebx
	jne	.LBB7_29
# BB#20:                                # %land.lhs.true.97
	cmpl	%edi, 24(%r10)
	jne	.LBB7_29
# BB#21:                                # %land.lhs.true.97
	cmpl	%ebp, %r15d
	jne	.LBB7_29
# BB#22:                                # %land.lhs.true.107
	cmpl	%r14d, 24(%rcx)
	jne	.LBB7_29
.LBB7_23:                               # %if.then.112
	cmpl	%r15d, %ebx
	movl	%r15d, %ecx
	cmovlel	%ebx, %ecx
	cmovll	%r15d, %ebx
	cmpl	%edi, %r14d
	movl	%edi, %ebp
	cmovlel	%r14d, %ebp
	cmovll	%edi, %r14d
	xorl	%eax, %eax
	testq	%r9, %r9
	movl	%ecx, (%rsi)
	movl	%ebx, 8(%rsi)
	movl	%ebp, 4(%rsi)
	movl	%r14d, 12(%rsi)
	je	.LBB7_28
# BB#24:
	xorl	%eax, %eax
.LBB7_25:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, 16(%r9)
	je	.LBB7_26
# BB#27:                                # %while.body
                                        #   in Loop: Header=BB7_25 Depth=1
	movq	8(%r9), %r9
	testq	%r9, %r9
	jne	.LBB7_25
	jmp	.LBB7_28
.LBB7_26:
	movq	%r9, %rax
.LBB7_28:                               # %while.end
	movq	%rax, (%rdx)
	movl	%r8d, %eax
.LBB7_29:                               # %cleanup.149
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_subpath_is_rectangular, .Lfunc_end7-gx_subpath_is_rectangular
	.cfi_endproc

	.globl	gx_path_is_rectangular
	.align	16, 0x90
	.type	gx_path_is_rectangular,@function
gx_path_is_rectangular:                 # @gx_path_is_rectangular
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	cmpl	$1, 104(%rdi)
	jne	.LBB8_2
# BB#1:                                 # %cond.true
	movq	56(%rdi), %rax
	movq	24(%rax), %rdi
	leaq	(%rsp), %rdx
	callq	gx_subpath_is_rectangular
.LBB8_2:                                # %cond.end
	popq	%rdx
	retq
.Lfunc_end8:
	.size	gx_path_is_rectangular, .Lfunc_end8-gx_path_is_rectangular
	.cfi_endproc

	.globl	gx_path_translate
	.align	16, 0x90
	.type	gx_path_translate,@function
gx_path_translate:                      # @gx_path_translate
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, 88(%rdi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movdqu	72(%rdi), %xmm0
	movd	%edx, %xmm1
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	%esi, %xmm2
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	%xmm0, %xmm2
	movdqu	%xmm2, 72(%rdi)
.LBB9_2:                                # %if.end
	testb	$1, 97(%rdi)
	je	.LBB9_4
# BB#3:                                 # %if.then.13
	addl	%esi, 112(%rdi)
	addl	%edx, 116(%rdi)
.LBB9_4:                                # %if.end.19
	movq	56(%rdi), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB9_9
# BB#5:                                 # %for.body.preheader
	movd	%edx, %xmm0
	pshufd	$80, %xmm0, %xmm1       # xmm1 = xmm0[0,0,1,1]
	movd	%esi, %xmm0
	pshufd	$80, %xmm0, %xmm0       # xmm0 = xmm0[0,0,1,1]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	.align	16, 0x90
.LBB9_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	16(%rax), %ecx
	cmpl	$3, %ecx
	jne	.LBB9_8
# BB#7:                                 # %sw.bb
                                        #   in Loop: Header=BB9_6 Depth=1
	movdqu	28(%rax), %xmm1
	paddd	%xmm0, %xmm1
	movdqu	%xmm1, 28(%rax)
.LBB9_8:                                # %sw.default
                                        #   in Loop: Header=BB9_6 Depth=1
	addl	%esi, 20(%rax)
	addl	%edx, 24(%rax)
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.LBB9_6
.LBB9_9:                                # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	gx_path_translate, .Lfunc_end9-gx_path_translate
	.cfi_endproc

	.globl	gx_point_scale_exp2
	.align	16, 0x90
	.type	gx_point_scale_exp2,@function
gx_point_scale_exp2:                    # @gx_point_scale_exp2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	movl	%esi, %ecx
	testl	%ecx, %ecx
	jle	.LBB10_5
# BB#1:                                 # %if.then
	movl	$2147227647, %esi       # imm = 0x7FFC17FF
	shrl	%cl, %esi
	movl	(%rdi), %edx
	cmpl	%esi, %edx
	jg	.LBB10_3
# BB#2:                                 # %if.else
	negl	%esi
	cmpl	%esi, %edx
	jge	.LBB10_4
.LBB10_3:                               # %if.then.6
	movl	%esi, (%rdi)
	movl	%esi, %edx
.LBB10_4:                               # %if.end.9
	shll	%cl, %edx
	movl	%edx, (%rdi)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.11
	negl	%ecx
	sarl	%cl, (%rdi)
.LBB10_6:                               # %if.end.15
	testl	%eax, %eax
	jle	.LBB10_11
# BB#7:                                 # %if.then.17
	movl	$2147227647, %esi       # imm = 0x7FFC17FF
	movb	%al, %cl
	shrl	%cl, %esi
	movl	4(%rdi), %edx
	cmpl	%esi, %edx
	jg	.LBB10_9
# BB#8:                                 # %if.else.22
	negl	%esi
	cmpl	%esi, %edx
	jge	.LBB10_10
.LBB10_9:                               # %if.then.26
	movl	%esi, 4(%rdi)
	movl	%esi, %edx
.LBB10_10:                              # %if.end.30
	movb	%al, %cl
	shll	%cl, %edx
	movl	%edx, 4(%rdi)
	retq
.LBB10_11:                              # %if.else.33
	negl	%eax
	movb	%al, %cl
	sarl	%cl, 4(%rdi)
	retq
.Lfunc_end10:
	.size	gx_point_scale_exp2, .Lfunc_end10-gx_point_scale_exp2
	.cfi_endproc

	.globl	gx_rect_scale_exp2
	.align	16, 0x90
	.type	gx_rect_scale_exp2,@function
gx_rect_scale_exp2:                     # @gx_rect_scale_exp2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	movl	%esi, %edx
	testl	%edx, %edx
	jle	.LBB11_5
# BB#1:                                 # %if.then.i
	movl	$2147227647, %esi       # imm = 0x7FFC17FF
	movb	%dl, %cl
	shrl	%cl, %esi
	movl	(%rdi), %eax
	cmpl	%esi, %eax
	jg	.LBB11_3
# BB#2:                                 # %if.else.i
	negl	%esi
	cmpl	%esi, %eax
	jge	.LBB11_4
.LBB11_3:                               # %if.then.6.i
	movl	%esi, (%rdi)
	movl	%esi, %eax
.LBB11_4:                               # %if.end.9.i
	movb	%dl, %cl
	shll	%cl, %eax
	movl	%eax, (%rdi)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.11.i
	movl	%edx, %ecx
	negl	%ecx
	sarl	%cl, (%rdi)
.LBB11_6:                               # %if.end.15.i
	testl	%r8d, %r8d
	jle	.LBB11_11
# BB#7:                                 # %if.then.17.i
	movl	$2147227647, %eax       # imm = 0x7FFC17FF
	movb	%r8b, %cl
	shrl	%cl, %eax
	movl	4(%rdi), %esi
	cmpl	%eax, %esi
	jg	.LBB11_9
# BB#8:                                 # %if.else.22.i
	negl	%eax
	cmpl	%eax, %esi
	jge	.LBB11_10
.LBB11_9:                               # %if.then.26.i
	movl	%eax, 4(%rdi)
	movl	%eax, %esi
.LBB11_10:                              # %if.end.30.i
	movb	%r8b, %cl
	shll	%cl, %esi
	movl	%esi, 4(%rdi)
	jmp	.LBB11_12
.LBB11_11:                              # %if.else.33.i
	movl	%r8d, %ecx
	negl	%ecx
	sarl	%cl, 4(%rdi)
.LBB11_12:                              # %gx_point_scale_exp2.exit
	testl	%edx, %edx
	jle	.LBB11_17
# BB#13:                                # %if.then.i.8
	movl	$2147227647, %eax       # imm = 0x7FFC17FF
	movb	%dl, %cl
	shrl	%cl, %eax
	movl	8(%rdi), %esi
	cmpl	%eax, %esi
	jg	.LBB11_15
# BB#14:                                # %if.else.i.12
	negl	%eax
	cmpl	%eax, %esi
	jge	.LBB11_16
.LBB11_15:                              # %if.then.6.i.13
	movl	%eax, 8(%rdi)
	movl	%eax, %esi
.LBB11_16:                              # %if.end.9.i.15
	movb	%dl, %cl
	shll	%cl, %esi
	movl	%esi, 8(%rdi)
	jmp	.LBB11_18
.LBB11_17:                              # %if.else.11.i.19
	negl	%edx
	movb	%dl, %cl
	sarl	%cl, 8(%rdi)
.LBB11_18:                              # %if.end.15.i.21
	testl	%r8d, %r8d
	jle	.LBB11_23
# BB#19:                                # %if.then.17.i.25
	movl	$2147227647, %eax       # imm = 0x7FFC17FF
	movb	%r8b, %cl
	shrl	%cl, %eax
	movl	12(%rdi), %edx
	cmpl	%eax, %edx
	jg	.LBB11_21
# BB#20:                                # %if.else.22.i.29
	negl	%eax
	cmpl	%eax, %edx
	jge	.LBB11_22
.LBB11_21:                              # %if.then.26.i.30
	movl	%eax, 12(%rdi)
	movl	%eax, %edx
.LBB11_22:                              # %if.end.30.i.32
	movb	%r8b, %cl
	shll	%cl, %edx
	movl	%edx, 12(%rdi)
	retq
.LBB11_23:                              # %if.else.33.i.36
	negl	%r8d
	movb	%r8b, %cl
	sarl	%cl, 12(%rdi)
	retq
.Lfunc_end11:
	.size	gx_rect_scale_exp2, .Lfunc_end11-gx_rect_scale_exp2
	.cfi_endproc

	.globl	gx_path_scale_exp2_shared
	.align	16, 0x90
	.type	gx_path_scale_exp2_shared,@function
gx_path_scale_exp2_shared:              # @gx_path_scale_exp2_shared
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
	leaq	72(%r14), %rdi
	callq	gx_rect_scale_exp2
	testl	%ebp, %ebp
	jle	.LBB12_5
# BB#1:                                 # %if.then.i
	movl	$2147227647, %edx       # imm = 0x7FFC17FF
	movb	%bpl, %cl
	shrl	%cl, %edx
	movl	112(%r14), %eax
	cmpl	%edx, %eax
	jg	.LBB12_3
# BB#2:                                 # %if.else.i
	negl	%edx
	cmpl	%edx, %eax
	jge	.LBB12_4
.LBB12_3:                               # %if.then.6.i
	movl	%edx, 112(%r14)
	movl	%edx, %eax
.LBB12_4:                               # %if.end.9.i
	movb	%bpl, %cl
	shll	%cl, %eax
	movl	%eax, 112(%r14)
	jmp	.LBB12_6
.LBB12_5:                               # %if.else.11.i
	movl	%ebp, %ecx
	negl	%ecx
	sarl	%cl, 112(%r14)
.LBB12_6:                               # %if.end.15.i
	testl	%ebx, %ebx
	jle	.LBB12_11
# BB#7:                                 # %if.then.17.i
	movl	$2147227647, %edx       # imm = 0x7FFC17FF
	movb	%bl, %cl
	shrl	%cl, %edx
	movl	116(%r14), %eax
	cmpl	%edx, %eax
	jg	.LBB12_9
# BB#8:                                 # %if.else.22.i
	negl	%edx
	cmpl	%edx, %eax
	jge	.LBB12_10
.LBB12_9:                               # %if.then.26.i
	movl	%edx, 116(%r14)
	movl	%edx, %eax
.LBB12_10:                              # %if.end.30.i
	movb	%bl, %cl
	shll	%cl, %eax
	movl	%eax, 116(%r14)
	jmp	.LBB12_12
.LBB12_11:                              # %if.else.33.i
	movl	%ebx, %ecx
	negl	%ecx
	sarl	%cl, 116(%r14)
.LBB12_12:                              # %gx_point_scale_exp2.exit
	testl	%r15d, %r15d
	jne	.LBB12_60
# BB#13:                                # %if.then
	movq	56(%r14), %rax
	movq	24(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB12_60
# BB#14:                                # %for.body.lr.ph
	movl	$2147227647, %edi       # imm = 0x7FFC17FF
	movl	$2147227647, %edx       # imm = 0x7FFC17FF
	movb	%bpl, %cl
	shrl	%cl, %edx
	movl	%edx, %r10d
	negl	%r10d
	movb	%bl, %cl
	shrl	%cl, %edi
	movl	%edi, %r11d
	negl	%r11d
	movl	%ebx, %r8d
	negl	%r8d
	movl	%ebp, %r9d
	negl	%r9d
	.align	16, 0x90
.LBB12_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	16(%rsi), %eax
	cmpl	$3, %eax
	jne	.LBB12_45
# BB#16:                                # %sw.bb
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	28(%rsi), %eax
	testl	%ebp, %ebp
	jle	.LBB12_22
# BB#17:                                # %if.then.i.89
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%edx, %eax
	jle	.LBB12_19
# BB#18:                                # %if.then.2.i.90
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%edx, 28(%rsi)
	movl	%edx, %eax
	jmp	.LBB12_21
.LBB12_22:                              # %if.else.11.i.100
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%r9b, %cl
	sarl	%cl, %eax
	jmp	.LBB12_23
.LBB12_19:                              # %if.else.i.93
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%r10d, %eax
	jge	.LBB12_21
# BB#20:                                # %if.then.6.i.94
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%r10d, 28(%rsi)
	movl	%r10d, %eax
.LBB12_21:                              # %if.end.9.i.96
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%bpl, %cl
	shll	%cl, %eax
.LBB12_23:                              # %if.end.15.i.102
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%eax, 28(%rsi)
	movl	32(%rsi), %eax
	testl	%ebx, %ebx
	jle	.LBB12_29
# BB#24:                                # %if.then.17.i.106
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%edi, %eax
	jle	.LBB12_26
# BB#25:                                # %if.then.20.i.107
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%edi, 32(%rsi)
	movl	%edi, %eax
	jmp	.LBB12_28
.LBB12_29:                              # %if.else.33.i.117
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%r8b, %cl
	sarl	%cl, %eax
	jmp	.LBB12_30
.LBB12_26:                              # %if.else.22.i.110
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%r11d, %eax
	jge	.LBB12_28
# BB#27:                                # %if.then.26.i.111
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%r11d, 32(%rsi)
	movl	%r11d, %eax
.LBB12_28:                              # %if.end.30.i.113
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%bl, %cl
	shll	%cl, %eax
.LBB12_30:                              # %gx_point_scale_exp2.exit118
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%eax, 32(%rsi)
	movl	36(%rsi), %eax
	testl	%ebp, %ebp
	jle	.LBB12_36
# BB#31:                                # %if.then.i.55
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%edx, %eax
	jle	.LBB12_33
# BB#32:                                # %if.then.2.i.56
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%edx, 36(%rsi)
	movl	%edx, %eax
	jmp	.LBB12_35
.LBB12_36:                              # %if.else.11.i.66
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%r9b, %cl
	sarl	%cl, %eax
	jmp	.LBB12_37
.LBB12_33:                              # %if.else.i.59
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%r10d, %eax
	jge	.LBB12_35
# BB#34:                                # %if.then.6.i.60
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%r10d, 36(%rsi)
	movl	%r10d, %eax
.LBB12_35:                              # %if.end.9.i.62
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%bpl, %cl
	shll	%cl, %eax
.LBB12_37:                              # %if.end.15.i.68
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%eax, 36(%rsi)
	movl	40(%rsi), %eax
	testl	%ebx, %ebx
	jle	.LBB12_43
# BB#38:                                # %if.then.17.i.72
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%edi, %eax
	jle	.LBB12_40
# BB#39:                                # %if.then.20.i.73
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%edi, 40(%rsi)
	movl	%edi, %eax
	jmp	.LBB12_42
.LBB12_43:                              # %if.else.33.i.83
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%r8b, %cl
	sarl	%cl, %eax
	jmp	.LBB12_44
.LBB12_40:                              # %if.else.22.i.76
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%r11d, %eax
	jge	.LBB12_42
# BB#41:                                # %if.then.26.i.77
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%r11d, 40(%rsi)
	movl	%r11d, %eax
.LBB12_42:                              # %if.end.30.i.79
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%bl, %cl
	shll	%cl, %eax
.LBB12_44:                              # %sw.default
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%eax, 40(%rsi)
.LBB12_45:                              # %sw.default
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	20(%rsi), %eax
	testl	%ebp, %ebp
	jle	.LBB12_51
# BB#46:                                # %if.then.i.21
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%edx, %eax
	jle	.LBB12_48
# BB#47:                                # %if.then.2.i.22
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%edx, 20(%rsi)
	movl	%edx, %eax
	jmp	.LBB12_50
	.align	16, 0x90
.LBB12_51:                              # %if.else.11.i.32
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%r9b, %cl
	sarl	%cl, %eax
	jmp	.LBB12_52
	.align	16, 0x90
.LBB12_48:                              # %if.else.i.25
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%r10d, %eax
	jge	.LBB12_50
# BB#49:                                # %if.then.6.i.26
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%r10d, 20(%rsi)
	movl	%r10d, %eax
.LBB12_50:                              # %if.end.9.i.28
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%bpl, %cl
	shll	%cl, %eax
.LBB12_52:                              # %if.end.15.i.34
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%eax, 20(%rsi)
	movl	24(%rsi), %eax
	testl	%ebx, %ebx
	jle	.LBB12_58
# BB#53:                                # %if.then.17.i.38
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%edi, %eax
	jle	.LBB12_55
# BB#54:                                # %if.then.20.i.39
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%edi, 24(%rsi)
	movl	%edi, %eax
	jmp	.LBB12_57
	.align	16, 0x90
.LBB12_58:                              # %if.else.33.i.49
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%r8b, %cl
	sarl	%cl, %eax
	jmp	.LBB12_59
	.align	16, 0x90
.LBB12_55:                              # %if.else.22.i.42
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	%r11d, %eax
	jge	.LBB12_57
# BB#56:                                # %if.then.26.i.43
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%r11d, 24(%rsi)
	movl	%r11d, %eax
.LBB12_57:                              # %if.end.30.i.45
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	%bl, %cl
	shll	%cl, %eax
.LBB12_59:                              # %gx_point_scale_exp2.exit50
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	%eax, 24(%rsi)
	movq	8(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB12_15
.LBB12_60:                              # %if.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_path_scale_exp2_shared, .Lfunc_end12-gx_path_scale_exp2_shared
	.cfi_endproc

	.globl	gx_path_copy_reversed
	.align	16, 0x90
	.type	gx_path_copy_reversed,@function
gx_path_copy_reversed:                  # @gx_path_copy_reversed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 64
.Ltmp30:
	.cfi_offset %rbx, -48
.Ltmp31:
	.cfi_offset %r12, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	56(%r14), %rax
	movq	32(%rax), %r12
	testq	%r12, %r12
	jne	.LBB13_1
	jmp	.LBB13_16
	.align	16, 0x90
.LBB13_7:                               # %do.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	(%rdi), %rbx
	movzwl	18(%rdi), %ebp
	andl	$1, %esi
	movl	%ebp, %ecx
	andl	$65534, %ecx            # imm = 0xFFFE
	orl	%esi, %ecx
	jmpq	*.LJTI13_0(,%rdx,8)
.LBB13_13:                              # %sw.bb.42
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	20(%rbx), %esi
	movl	24(%rbx), %edx
	movq	%r15, %rdi
	callq	gx_path_add_line_notes
	jmp	.LBB13_5
	.align	16, 0x90
.LBB13_12:                              # %sw.bb.30
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	36(%rdi), %esi
	movl	40(%rdi), %edx
	movl	28(%rdi), %eax
	movl	32(%rdi), %r8d
	movl	20(%rbx), %r9d
	movl	24(%rbx), %edi
	movl	%ecx, 8(%rsp)
	movl	%edi, (%rsp)
	movq	%r15, %rdi
	movl	%eax, %ecx
	callq	gx_path_add_curve_notes
	jmp	.LBB13_5
	.align	16, 0x90
.LBB13_14:                              # %sw.bb.48
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	20(%rbx), %esi
	movl	24(%rbx), %edx
	movq	%r15, %rdi
	callq	gx_path_add_gap_notes
	jmp	.LBB13_5
.LBB13_8:                               # %sw.bb
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpb	$0, 88(%r12)
	je	.LBB13_10
# BB#9:                                 # %if.then.16
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	%r15, %rdi
	movl	%ecx, %esi
	callq	gx_path_close_subpath_notes
	testl	%eax, %eax
	js	.LBB13_20
	.align	16, 0x90
.LBB13_10:                              # %do.body.23
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12), %r12
	testq	%r12, %r12
	je	.LBB13_15
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB13_10 Depth=2
	cmpw	$0, 16(%r12)
	jne	.LBB13_10
	.align	16, 0x90
.LBB13_1:                               # %if.then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_10 Depth 2
	movq	32(%r12), %rbx
	xorl	%ebp, %ebp
	cmpq	%r12, %rbx
	je	.LBB13_3
# BB#2:                                 # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	8(%r12), %rax
	movzwl	18(%rax), %ebp
.LBB13_3:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpb	$0, 88(%r12)
	jne	.LBB13_6
.LBB13_4:                               # %if.then.3
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	20(%rbx), %esi
	movl	24(%rbx), %edx
	movq	%r15, %rdi
	callq	gx_path_add_point
	.align	16, 0x90
.LBB13_5:                               # %if.then.3
                                        #   in Loop: Header=BB13_1 Depth=1
	testl	%eax, %eax
	js	.LBB13_20
.LBB13_6:                               # %do.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	%ebp, %esi
	movq	%rbx, %rdi
	movzwl	16(%rdi), %edx
	cmpq	$5, %rdx
	movl	$-100, %eax
	jbe	.LBB13_7
	jmp	.LBB13_20
.LBB13_15:                              # %nsp.if.end.68_crit_edge
	movq	56(%r14), %rax
.LBB13_16:                              # %if.end.68
	cmpq	$0, 24(%rax)
	jne	.LBB13_19
# BB#17:                                # %land.lhs.true
	movb	97(%r14), %al
	andb	$-9, %al
	movzbl	%al, %eax
	cmpl	$3, %eax
	jne	.LBB13_19
# BB#18:                                # %if.then.77
	movl	112(%r14), %esi
	movl	116(%r14), %edx
	movq	%r15, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB13_20
.LBB13_19:                              # %if.end.89
	xorl	%eax, %eax
.LBB13_20:                              # %cleanup.90
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gx_path_copy_reversed, .Lfunc_end13-gx_path_copy_reversed
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_8
	.quad	.LBB13_13
	.quad	.LBB13_4
	.quad	.LBB13_12
	.quad	.LBB13_20
	.quad	.LBB13_14

	.text
	.globl	gx_path_append_reversed
	.align	16, 0x90
	.type	gx_path_append_reversed,@function
gx_path_append_reversed:                # @gx_path_append_reversed
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
	subq	$16, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 64
.Ltmp41:
	.cfi_offset %rbx, -48
.Ltmp42:
	.cfi_offset %r12, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	56(%r14), %rax
	movq	32(%rax), %r12
	testq	%r12, %r12
	jne	.LBB14_1
	jmp	.LBB14_18
	.align	16, 0x90
.LBB14_8:                               # %do.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	(%rdi), %rbx
	movzwl	18(%rdi), %ebp
	andl	$1, %esi
	movl	%ebp, %ecx
	andl	$65534, %ecx            # imm = 0xFFFE
	orl	%esi, %ecx
	jmpq	*.LJTI14_0(,%rdx,8)
.LBB14_14:                              # %sw.bb.42
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	20(%rbx), %esi
	movl	24(%rbx), %edx
	jmp	.LBB14_5
	.align	16, 0x90
.LBB14_16:                              # %sw.bb.54
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	20(%rbx), %esi
	movl	24(%rbx), %edx
	movq	%r15, %rdi
	callq	gx_path_add_point
	jmp	.LBB14_6
	.align	16, 0x90
.LBB14_13:                              # %sw.bb.30
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	36(%rdi), %esi
	movl	40(%rdi), %edx
	movl	28(%rdi), %eax
	movl	32(%rdi), %r8d
	movl	20(%rbx), %r9d
	movl	24(%rbx), %edi
	movl	%ecx, 8(%rsp)
	movl	%edi, (%rsp)
	movq	%r15, %rdi
	movl	%eax, %ecx
	callq	gx_path_add_curve_notes
	jmp	.LBB14_6
	.align	16, 0x90
.LBB14_15:                              # %sw.bb.48
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	20(%rbx), %esi
	movl	24(%rbx), %edx
	movq	%r15, %rdi
	callq	gx_path_add_gap_notes
	jmp	.LBB14_6
.LBB14_9:                               # %sw.bb
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpb	$0, 88(%r12)
	je	.LBB14_11
# BB#10:                                # %if.then.16
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r15, %rdi
	movl	%ecx, %esi
	callq	gx_path_close_subpath_notes
	testl	%eax, %eax
	js	.LBB14_22
	.align	16, 0x90
.LBB14_11:                              # %do.body.23
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12), %r12
	testq	%r12, %r12
	je	.LBB14_17
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB14_11 Depth=2
	cmpw	$0, 16(%r12)
	jne	.LBB14_11
	.align	16, 0x90
.LBB14_1:                               # %if.then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_11 Depth 2
	movq	32(%r12), %rbx
	cmpq	%r12, %rbx
	movl	$0, %ebp
	je	.LBB14_3
# BB#2:                                 # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	8(%r12), %rax
	movzwl	18(%rax), %ebp
.LBB14_3:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpb	$0, 88(%r12)
	jne	.LBB14_7
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	20(%rbx), %esi
	movl	24(%rbx), %edx
	xorl	%ecx, %ecx
.LBB14_5:                               # %if.then.3
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r15, %rdi
	callq	gx_path_add_line_notes
	.align	16, 0x90
.LBB14_6:                               # %if.then.3
                                        #   in Loop: Header=BB14_1 Depth=1
	testl	%eax, %eax
	js	.LBB14_22
.LBB14_7:                               # %do.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	%ebp, %esi
	movq	%rbx, %rdi
	movzwl	16(%rdi), %edx
	cmpq	$5, %rdx
	movl	$-100, %eax
	jbe	.LBB14_8
	jmp	.LBB14_22
.LBB14_17:                              # %nsp.if.end.68_crit_edge
	movq	56(%r14), %rax
.LBB14_18:                              # %if.end.68
	cmpq	$0, 24(%rax)
	jne	.LBB14_21
# BB#19:                                # %land.lhs.true
	movb	97(%r14), %al
	andb	$-9, %al
	movzbl	%al, %eax
	cmpl	$3, %eax
	jne	.LBB14_21
# BB#20:                                # %if.then.77
	movl	112(%r14), %esi
	movl	116(%r14), %edx
	movq	%r15, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB14_22
.LBB14_21:                              # %if.end.89
	xorl	%eax, %eax
.LBB14_22:                              # %cleanup.90
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gx_path_append_reversed, .Lfunc_end14-gx_path_append_reversed
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_9
	.quad	.LBB14_14
	.quad	.LBB14_16
	.quad	.LBB14_13
	.quad	.LBB14_22
	.quad	.LBB14_15

	.text
	.globl	gs_path_enum_alloc
	.align	16, 0x90
	.type	gs_path_enum_alloc,@function
gs_path_enum_alloc:                     # @gs_path_enum_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	72(%rdi), %rcx
	movl	$st_path_enum, %esi
	movq	%rax, %rdx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end15:
	.size	gs_path_enum_alloc, .Lfunc_end15-gs_path_enum_alloc
	.cfi_endproc

	.globl	gx_path_enum_init
	.align	16, 0x90
	.type	gx_path_enum_init,@function
gx_path_enum_init:                      # @gx_path_enum_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movq	%rsi, 40(%rdi)
	movq	$0, 48(%rdi)
	movq	56(%rsi), %rax
	movq	24(%rax), %rax
	movq	%rax, 32(%rdi)
	movq	$0, 56(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	gx_path_enum_init, .Lfunc_end16-gx_path_enum_init
	.cfi_endproc

	.globl	gx_path_enum_next
	.align	16, 0x90
	.type	gx_path_enum_next,@function
gx_path_enum_next:                      # @gx_path_enum_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
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
	.cfi_offset %r14, -16
	movq	32(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB17_1
# BB#4:                                 # %if.end.6
	movq	8(%rbx), %rax
	movq	%rax, 32(%rdi)
	movzwl	18(%rbx), %eax
	movl	%eax, 60(%rdi)
	movzwl	16(%rbx), %eax
	cmpq	$5, %rax
	ja	.LBB17_12
# BB#5:                                 # %if.end.6
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_6:                               # %sw.bb
	movq	20(%rbx), %rax
	jmp	.LBB17_7
.LBB17_1:                               # %if.then
	movq	40(%rdi), %rcx
	movb	97(%rcx), %dl
	andb	$-9, %dl
	xorl	%eax, %eax
	movzbl	%dl, %edx
	cmpl	$3, %edx
	jne	.LBB17_13
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 56(%rdi)
	jne	.LBB17_13
# BB#3:                                 # %if.then.4
	movq	$1, 56(%rdi)
	movq	112(%rcx), %rax
.LBB17_7:                               # %cleanup.31
	movq	%rax, (%rsi)
	movl	$1, %eax
	jmp	.LBB17_13
.LBB17_12:                              # %sw.default
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.1, %edi
	movl	$615, %esi              # imm = 0x267
	callq	lprintf_file_and_line
	movzwl	16(%rbx), %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-100, %eax
.LBB17_13:                              # %cleanup.31
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB17_8:                               # %sw.bb.13
	movq	20(%rbx), %rax
	movq	%rax, (%rsi)
	movl	$2, %eax
	jmp	.LBB17_13
.LBB17_10:                              # %sw.bb.19
	movq	20(%rbx), %rax
	movq	%rax, (%rsi)
	movl	$4, %eax
	jmp	.LBB17_13
.LBB17_11:                              # %sw.bb.22
	movq	28(%rbx), %rax
	movq	%rax, (%rsi)
	movq	36(%rbx), %rax
	movq	%rax, 8(%rsi)
	movq	20(%rbx), %rax
	movq	%rax, 16(%rsi)
	movl	$3, %eax
	jmp	.LBB17_13
.LBB17_9:                               # %sw.bb.16
	movq	20(%rbx), %rax
	movq	%rax, (%rsi)
	movl	$5, %eax
	jmp	.LBB17_13
.Lfunc_end17:
	.size	gx_path_enum_next, .Lfunc_end17-gx_path_enum_next
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_6
	.quad	.LBB17_8
	.quad	.LBB17_10
	.quad	.LBB17_11
	.quad	.LBB17_12
	.quad	.LBB17_9

	.text
	.globl	gx_path_enum_notes
	.align	16, 0x90
	.type	gx_path_enum_notes,@function
gx_path_enum_notes:                     # @gx_path_enum_notes
	.cfi_startproc
# BB#0:                                 # %entry
	movl	60(%rdi), %eax
	retq
.Lfunc_end18:
	.size	gx_path_enum_notes, .Lfunc_end18-gx_path_enum_notes
	.cfi_endproc

	.globl	gx_path_enum_backup
	.align	16, 0x90
	.type	gx_path_enum_backup,@function
gx_path_enum_backup:                    # @gx_path_enum_backup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB19_3
# BB#1:                                 # %if.then
	movq	(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB19_9
# BB#2:                                 # %if.end
	movq	%rcx, 32(%rdi)
	jmp	.LBB19_8
.LBB19_3:                               # %if.end.5
	movq	40(%rdi), %rax
	movb	97(%rax), %cl
	andb	$-9, %cl
	movzbl	%cl, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_6
# BB#4:                                 # %land.lhs.true
	cmpl	$0, 56(%rdi)
	je	.LBB19_6
# BB#5:                                 # %if.then.8
	movl	$0, 56(%rdi)
	jmp	.LBB19_8
.LBB19_6:                               # %if.end.10
	movq	56(%rax), %rax
	movq	32(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB19_9
# BB#7:                                 # %if.end.14
	movq	32(%rcx), %rax
	movq	%rax, 32(%rdi)
.LBB19_8:                               # %cleanup.17
	movl	$1, %eax
.LBB19_9:                               # %cleanup.17
	retq
.Lfunc_end19:
	.size	gx_path_enum_backup, .Lfunc_end19-gx_path_enum_backup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_path_enum"
	.size	.L.str, 13

	.type	path_enum_reloc_ptrs,@object # @path_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
path_enum_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	path_enum_enum_ptrs
	.size	path_enum_reloc_ptrs, 24

	.type	st_path_enum,@object    # @st_path_enum
	.globl	st_path_enum
	.align	8
st_path_enum:
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	path_enum_reloc_ptrs
	.size	st_path_enum, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"./base/gxpath2.c"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"bad type %x in gx_path_enum_next!\n"
	.size	.L.str.2, 35

	.type	path_enum_enum_ptrs,@object # @path_enum_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
path_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.short	40                      # 0x28
	.short	0                       # 0x0
	.short	48                      # 0x30
	.size	path_enum_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
