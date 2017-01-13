	.text
	.file	"gxdownscale.bc"
	.globl	gx_downscaler_scale
	.align	16, 0x90
	.type	gx_downscaler_scale,@function
gx_downscaler_scale:                    # @gx_downscaler_scale
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$3, %ecx
	movl	$2, %eax
	cmpl	$32, %esi
	je	.LBB0_4
# BB#1:                                 # %entry
	cmpl	$34, %esi
	jne	.LBB0_3
# BB#2:                                 # %if.then.2.i
	movl	$4, %eax
	jmp	.LBB0_4
.LBB0_3:                                # %if.else.3.i
	movl	$1, %eax
	movl	%esi, %ecx
.LBB0_4:                                # %decode_factor.exit
	imull	%edi, %eax
	cltd
	idivl	%ecx
	retq
.Lfunc_end0:
	.size	gx_downscaler_scale, .Lfunc_end0-gx_downscaler_scale
	.cfi_endproc

	.globl	gx_downscaler_adjust_bandheight
	.align	16, 0x90
	.type	gx_downscaler_adjust_bandheight,@function
gx_downscaler_adjust_bandheight:        # @gx_downscaler_adjust_bandheight
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	movl	$3, %esi
	movl	%edi, %eax
	orl	$2, %eax
	cmpl	$34, %eax
	je	.LBB1_2
# BB#1:                                 # %if.else.3.i
	movl	%edi, %esi
.LBB1_2:                                # %decode_factor.exit
	movl	%ecx, %eax
	cltd
	idivl	%esi
	subl	%edx, %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end1:
	.size	gx_downscaler_adjust_bandheight, .Lfunc_end1-gx_downscaler_adjust_bandheight
	.cfi_endproc

	.globl	gx_downscaler_scale_rounded
	.align	16, 0x90
	.type	gx_downscaler_scale_rounded,@function
gx_downscaler_scale_rounded:            # @gx_downscaler_scale_rounded
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$3, %ecx
	movl	$2, %eax
	cmpl	$32, %esi
	je	.LBB2_4
# BB#1:                                 # %entry
	cmpl	$34, %esi
	jne	.LBB2_3
# BB#2:                                 # %if.then.2.i
	movl	$4, %eax
	jmp	.LBB2_4
.LBB2_3:                                # %if.else.3.i
	movl	$1, %eax
	movl	%esi, %ecx
.LBB2_4:                                # %decode_factor.exit
	imull	%edi, %eax
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	retq
.Lfunc_end2:
	.size	gx_downscaler_scale_rounded, .Lfunc_end2-gx_downscaler_scale_rounded
	.cfi_endproc

	.globl	gx_downscaler_init_planar
	.align	16, 0x90
	.type	gx_downscaler_init_planar,@function
gx_downscaler_init_planar:              # @gx_downscaler_init_planar
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	832(%rsi), %eax
	movq	%rsi, %r13
	movl	%eax, %ebp
	imull	112(%rsp), %ebp
	addl	$63, %ebp
	sarl	$6, %ebp
	shll	$3, %ebp
	movl	$3, %r14d
	movl	$2, %r12d
	cmpl	$32, %r8d
	jne	.LBB3_2
# BB#1:
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	jmp	.LBB3_5
.LBB3_2:                                # %entry
	cmpl	$34, %r8d
	jne	.LBB3_4
# BB#3:                                 # %if.then.2.i
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movl	%r8d, 40(%rsp)          # 4-byte Spill
	movl	$4, %r12d
	jmp	.LBB3_6
.LBB3_4:                                # %if.else.3.i
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movl	$1, %r12d
	movl	%r8d, %r14d
.LBB3_5:                                # %decode_factor.exit
	movl	%r8d, 40(%rsp)          # 4-byte Spill
.LBB3_6:                                # %decode_factor.exit
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	imull	%r12d, %eax
	cltd
	idivl	%r14d
	movl	%eax, %ebx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	xorl	%esi, %esi
	movl	$624, %edx              # imm = 0x270
	movq	%r15, %rdi
	callq	memset
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	%r13, (%r15)
	movl	%ebx, 8(%r15)
	movl	%ebx, 12(%r15)
	movl	%ebp, 16(%r15)
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 20(%r15)
	movl	44(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, 616(%r15)
	movl	112(%rsp), %eax
	movl	%eax, 32(%r15)
	movq	$0, 56(%r15)
	movl	%r12d, %eax
	imull	120(%rsp), %eax
	imull	832(%r13), %eax
	leal	-1(%r14,%rax), %eax
	cltd
	idivl	%r14d
	addl	$63, %eax
	sarl	$6, %eax
	shll	$3, %eax
	movl	%eax, 64(%r15)
	leaq	80(%r15), %rdi
	movl	$536, %edx              # imm = 0x218
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movl	%ebp, 608(%r15)
	testl	%ebx, %ebx
	jle	.LBB3_11
# BB#7:                                 # %for.body.lr.ph
	imull	%ebp, %r14d
	movslq	44(%rsp), %r12          # 4-byte Folded Reload
	xorl	%r13d, %r13d
	movl	$-25, %ebp
	.align	16, 0x90
.LBB3_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L.str, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, 88(%r15,%r13,8)
	testq	%rax, %rax
	je	.LBB3_10
# BB#8:                                 # %for.cond
                                        #   in Loop: Header=BB3_9 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	jl	.LBB3_9
.LBB3_11:                               # %for.end
	cmpl	$2, 36(%rsp)            # 4-byte Folded Reload
	jb	.LBB3_13
# BB#12:                                # %if.then.30
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	imull	44(%rsp), %esi          # 4-byte Folded Reload
	imull	64(%r15), %esi
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%rax, 56(%r15)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB3_10
.LBB3_13:                               # %if.end.44
	cmpl	$8, 112(%rsp)
	sete	%al
	movl	120(%rsp), %esi
	cmpl	$8, %esi
	sete	%cl
	andb	%al, %cl
	movl	$down_core8_3_2, %eax
	movl	40(%rsp), %edi          # 4-byte Reload
	cmpl	$32, %edi
	jne	.LBB3_15
# BB#14:                                # %if.end.44
	testb	%cl, %cl
	jne	.LBB3_26
.LBB3_15:                               # %if.else
	cmpl	$34, %edi
	sete	%dl
	movl	$down_core8_3_4, %eax
	testb	%cl, %dl
	jne	.LBB3_26
# BB#16:                                # %if.else.56
	movl	$-15, %ebp
	cmpl	$8, %edi
	jg	.LBB3_10
# BB#17:                                # %if.else.59
	cmpl	$1, %esi
	movl	%edi, %ecx
	jne	.LBB3_22
# BB#18:                                # %if.then.61
	cmpl	$2, 20(%rsp)            # 4-byte Folded Reload
	jl	.LBB3_28
# BB#19:                                # %if.end.106.thread95
	movq	$down_core_mfs, 72(%r15)
	jmp	.LBB3_20
.LBB3_22:                               # %if.else.82
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	.LBB3_26
# BB#23:                                # %if.else.85
	movl	$down_core16, %eax
	cmpl	$16, 112(%rsp)
	je	.LBB3_26
# BB#24:                                # %if.else.88
	addl	$-2, %ecx
	movl	$down_core8, %eax
	cmpl	$3, %ecx
	jae	.LBB3_26
# BB#25:                                # %switch.lookup81
	movslq	%ecx, %rax
	movq	.Lswitch.table.4(,%rax,8), %rax
.LBB3_26:                               # %if.end.106
	movq	%rax, 72(%r15)
	cmpl	$2, 20(%rsp)            # 4-byte Folded Reload
	jl	.LBB3_27
.LBB3_20:                               # %if.then.108
	movl	%esi, %r12d
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	1(%rax), %r14d
	imull	44(%rsp), %r14d         # 4-byte Folded Reload
	movl	$.L.str.2, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, 24(%r15)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB3_10
# BB#21:                                # %if.end.119
	movslq	%r14d, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	%r12d, %esi
.LBB3_27:                               # %if.end.124
	xorl	%ebp, %ebp
	cmpl	$1, %esi
	je	.LBB3_31
	jmp	.LBB3_33
.LBB3_28:                               # %if.else.64
	decl	%ecx
	movl	$down_core, %eax
	cmpl	$4, %ecx
	jae	.LBB3_30
# BB#29:                                # %switch.lookup
	movslq	%ecx, %rax
	movq	.Lswitch.table.2(,%rax,8), %rax
.LBB3_30:                               # %if.end.124.thread
	movq	%rax, 72(%r15)
.LBB3_31:                               # %if.then.127
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	addl	$3, %ebx
	imull	44(%rsp), %ebx          # 4-byte Folded Reload
	movslq	%ebx, %r14
	shlq	$2, %r14
	movl	$.L.str.3, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, 40(%r15)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB3_10
# BB#32:                                # %if.end.142
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	memset
	jmp	.LBB3_33
.LBB3_10:                               # %cleanup
	movq	%r15, %rdi
	callq	gx_downscaler_fin
.LBB3_33:                               # %cleanup.150
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gx_downscaler_init_planar, .Lfunc_end3-gx_downscaler_init_planar
	.cfi_endproc

	.align	16, 0x90
	.type	down_core8_3_2,@function
down_core8_3_2:                         # @down_core8_3_2
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
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
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
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	8(%rdi), %eax
	movl	12(%rdi), %r12d
	movslq	64(%rdi), %r15
	movl	%r12d, %edx
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %ecx
	cmpl	$-1, %ecx
	jl	.LBB4_3
# BB#1:                                 # %entry
	leal	1(%rdx,%rdx,2), %edx
	cmpl	$3, %edx
	jb	.LBB4_3
# BB#2:                                 # %if.then.3
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	leal	(%rax,%rax,2), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	leaq	(%rax,%rbx), %r13
	movslq	%edx, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movslq	%r9d, %rbp
	movl	$255, %esi
	movq	%r13, %rdi
	movq	%r9, 16(%rsp)           # 8-byte Spill
	callq	memset
	addq	%r13, %rbp
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memset
	movq	16(%rsp), %r9           # 8-byte Reload
.LBB4_3:                                # %if.end.9
	cmpl	$2, %r12d
	jl	.LBB4_6
# BB#4:                                 # %for.body.14.lr.ph
	movl	%r12d, %r13d
	shrl	$31, %r13d
	addl	%r12d, %r13d
	sarl	%r13d
	incl	%r13d
	movslq	%r9d, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	1(%r9), %ecx
	movslq	%ecx, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leal	2(%r9), %ecx
	movslq	%ecx, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leal	(%r9,%r9), %ecx
	movslq	%ecx, %r12
	leal	2(%r9,%r9), %ecx
	movslq	%ecx, %r11
	.align	16, 0x90
.LBB4_5:                                # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	movzbl	1(%rbx), %r8d
	movzbl	2(%rbx), %r9d
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rbx), %edi
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	(%rcx,%rbx), %ecx
	movq	(%rsp), %rdx            # 8-byte Reload
	movzbl	(%rdx,%rbx), %edx
	movzbl	(%r12,%rbx), %ebp
	movzbl	1(%r12,%rbx), %esi
	leal	(%r8,%r8), %r10d
	leal	(%r10,%rax,4), %eax
	movzbl	(%r11,%rbx), %r10d
	leal	(%rax,%rdi,2), %eax
	leal	4(%rcx,%rax), %eax
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	shrq	$33, %rax
	movb	%al, (%r14)
	shll	$2, %r9d
	leal	(%r9,%r8,2), %eax
	addl	%ecx, %eax
	leal	4(%rax,%rdx,2), %eax
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	shrq	$33, %rax
	movb	%al, 1(%r14)
	leal	(%rcx,%rdi,2), %eax
	leal	(%rax,%rbp,4), %eax
	leal	4(%rax,%rsi,2), %eax
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	shrq	$33, %rax
	movb	%al, (%r15,%r14)
	leal	(%rcx,%rdx,2), %eax
	leal	(%rax,%rsi,2), %eax
	leal	4(%rax,%r10,4), %eax
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	shrq	$33, %rax
	movb	%al, 1(%r15,%r14)
	addq	$2, %r14
	addq	$3, %rbx
	decl	%r13d
	cmpl	$1, %r13d
	jg	.LBB4_5
.LBB4_6:                                # %for.end.93
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	down_core8_3_2, .Lfunc_end4-down_core8_3_2
	.cfi_endproc

	.align	16, 0x90
	.type	down_core8_3_4,@function
down_core8_3_4:                         # @down_core8_3_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 192
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%rdx, %r14
	movq	%rsi, %r9
	movl	8(%rdi), %eax
	movl	12(%rdi), %esi
	movslq	64(%rdi), %rbp
	movl	%esi, %edx
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %ecx
	cmpl	$-3, %ecx
	jl	.LBB5_3
# BB#1:                                 # %entry
	leal	3(%rdx,%rdx,2), %edx
	cmpl	$7, %edx
	jb	.LBB5_3
# BB#2:                                 # %if.then.3
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%ecx, %edx
	sarl	$2, %edx
	leal	(%rax,%rax,2), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rax
	leaq	(%rax,%r14), %r12
	movslq	%edx, %r13
	movslq	%ebx, %r15
	movl	%esi, 120(%rsp)         # 4-byte Spill
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	movq	%r9, 128(%rsp)          # 8-byte Spill
	callq	memset
	addq	%r15, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
	addq	%r15, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
	addq	%r15, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
	movl	120(%rsp), %esi         # 4-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
.LBB5_3:                                # %if.end.9
	cmpl	$4, %esi
	jl	.LBB5_6
# BB#4:                                 # %for.body.14.lr.ph
	movl	%esi, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%esi, %edx
	sarl	$2, %edx
	leaq	(%rbp,%r9), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leal	1(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leal	2(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leal	3(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leal	(%rbp,%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	1(%rcx,%r9), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leal	2(%rbp,%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leal	3(%rbp,%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	(%rbp,%rbp,2), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	1(%rbp,%rbp,2), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	2(%rbp,%rbp,2), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leal	3(%rbp,%rbp,2), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	incl	%edx
	leal	1(%rbx), %ecx
	movslq	%ecx, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	2(%rbx), %ecx
	movslq	%ecx, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	(%rbx,%rbx), %ecx
	movslq	%ecx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	%ebx, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leal	2(%rbx,%rbx), %ecx
	movslq	%ecx, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_5:                                # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, 128(%rsp)         # 4-byte Spill
	movzbl	(%r14), %ecx
	movzbl	1(%r14), %r11d
	movzbl	2(%r14), %r10d
	movq	8(%rsp), %rax           # 8-byte Reload
	movzbl	(%rax,%r14), %r8d
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%r14), %r15d
	movq	24(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%r14), %ebp
	movq	16(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%r14), %esi
	movzbl	1(%rax,%r14), %edx
	movq	(%rsp), %rax            # 8-byte Reload
	movzbl	(%rax,%r14), %edi
	movb	%cl, (%r9,%r12)
	movq	%r9, %rax
	leal	1(%rcx,%r11,2), %r9d
	movl	$2863311531, %r13d      # imm = 0xAAAAAAAB
	imulq	%r13, %r9
	shrq	$33, %r9
	movb	%r9b, 1(%rax,%r12)
	movq	%rax, %r9
	leal	1(%r10,%r11,2), %eax
	imulq	%r13, %rax
	shrq	$33, %rax
	movb	%al, 2(%r9,%r12)
	movb	%r10b, 3(%r9,%r12)
	leal	1(%rcx,%r8,2), %eax
	imulq	%r13, %rax
	shrq	$33, %rax
	movq	120(%rsp), %r13         # 8-byte Reload
	movb	%al, (%r13,%r12)
	leal	(%rcx,%r11,2), %eax
	leal	(%rax,%r8,2), %eax
	leal	3(%rax,%r15,4), %eax
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	shrq	$33, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%rcx,%r12)
	leal	(%r10,%r11,2), %eax
	leal	(%rax,%r15,4), %eax
	leal	3(%rax,%rbp,2), %eax
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	shrq	$33, %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%rcx,%r12)
	leal	1(%r10,%rbp,2), %eax
	movl	$2863311531, %ebx       # imm = 0xAAAAAAAB
	imulq	%rbx, %rax
	shrq	$33, %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%r12)
	leal	1(%rsi,%r8,2), %eax
	imulq	%rbx, %rax
	movl	$2863311531, %r10d      # imm = 0xAAAAAAAB
	shrq	$33, %rax
	movq	88(%rsp), %rbx          # 8-byte Reload
	movb	%al, -1(%rbx,%r12)
	leal	(,%r15,4), %eax
	leal	(%rax,%r8,2), %eax
	leal	(%rsi,%rdx,2), %ecx
	leal	3(%rax,%rcx), %eax
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	shrq	$33, %rax
	movb	%al, (%rbx,%r12)
	leal	(%rbp,%rbp), %eax
	leal	3(%rax,%r15,4), %eax
	leal	(%rdi,%rdx,2), %ecx
	addl	%ecx, %eax
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	shrq	$33, %rax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%r12)
	leal	1(%rdi,%rbp,2), %eax
	imulq	%r10, %rax
	shrq	$33, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%r12)
	movq	64(%rsp), %rax          # 8-byte Reload
	movb	%sil, (%rax,%r12)
	leal	1(%rsi,%rdx,2), %eax
	imulq	%r10, %rax
	shrq	$33, %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%r12)
	leal	1(%rdi,%rdx,2), %eax
	movl	128(%rsp), %edx         # 4-byte Reload
	imulq	%r10, %rax
	shrq	$33, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%r12)
	movq	40(%rsp), %rax          # 8-byte Reload
	movb	%dil, (%rax,%r12)
	addq	$3, %r14
	addq	$4, %r12
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB5_5
.LBB5_6:                                # %for.end.177
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	down_core8_3_4, .Lfunc_end5-down_core8_3_4
	.cfi_endproc

	.align	16, 0x90
	.type	down_core_mfs,@function
down_core_mfs:                          # @down_core_mfs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 128
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	8(%rdi), %eax
	movl	12(%rdi), %edx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	20(%rdi), %esi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	leal	3(%rdx), %ecx
	imull	%r8d, %ecx
	movslq	%ecx, %r12
	shlq	$2, %r12
	addq	40(%rdi), %r12
	leal	1(%rdx), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	imull	%ecx, %r8d
	movslq	%r8d, %rcx
	addq	24(%rdi), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%esi, %ecx
	imull	%ecx, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	%esi, %ecx
	testl	%ecx, %ecx
	jle	.LBB6_4
# BB#1:                                 # %entry
	movq	56(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB6_4
# BB#2:                                 # %for.body.lr.ph
	movq	56(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %eax
	cltq
	leaq	(%rax,%rbx), %rbp
	movslq	%ecx, %r13
	movslq	36(%rsp), %r14          # 4-byte Folded Reload
	leal	1(%rdx), %r15d
	.align	16, 0x90
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memset
	addq	%r14, %rbp
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB6_3
.LBB6_4:                                # %if.end.22
	movq	40(%rsp), %rsi          # 8-byte Reload
	movslq	%esi, %rdx
	movl	52(%rsp), %eax          # 4-byte Reload
	imull	$255, %eax, %ecx
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	shll	$7, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	56(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %eax
	movl	36(%rsp), %edi          # 4-byte Reload
	imull	%edi, %eax
	movl	8(%rsp), %ecx           # 4-byte Reload
	testb	$1, %cl
	jne	.LBB6_23
# BB#5:                                 # %if.then.25
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	64(%rsp), %r10          # 8-byte Reload
	movb	$0, (%r10)
	testl	%esi, %esi
	jle	.LBB6_6
# BB#7:                                 # %for.body.32.lr.ph
	addq	$8, %r12
	decl	%eax
	movslq	%eax, %r15
	negq	%r15
	movslq	%edi, %rdi
	leal	1(%rbp), %edx
	xorl	%r13d, %r13d
	movl	%esi, %r11d
	xorl	%r8d, %r8d
	movq	%rbx, %r9
	.align	16, 0x90
.LBB6_8:                                # %for.body.32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
                                        #       Child Loop BB6_10 Depth 3
	movl	%r13d, %r14d
	movq	%r10, %r13
	leaq	1(%r13), %r10
	addl	(%r12), %r8d
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	movl	%r8d, %eax
	jle	.LBB6_12
	.align	16, 0x90
.LBB6_9:                                # %for.body.41.lr.ph
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_10 Depth 3
	movl	%edx, %ebp
	.align	16, 0x90
.LBB6_10:                               # %for.body.41
                                        #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %esi
	addl	%esi, %eax
	addq	%rdi, %rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB6_10
# BB#11:                                # %for.end.48
                                        #   in Loop: Header=BB6_9 Depth=2
	addq	%r15, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB6_9
.LBB6_12:                               # %for.end.53
                                        #   in Loop: Header=BB6_8 Depth=1
	movzbl	(%r10), %ebp
	movb	$0, (%r10)
	testb	%r14b, %r14b
	jne	.LBB6_14
# BB#13:                                # %for.end.53
                                        #   in Loop: Header=BB6_8 Depth=1
	movl	%ebp, %ecx
	andl	$1, %ecx
	jne	.LBB6_14
# BB#15:                                # %if.else
                                        #   in Loop: Header=BB6_8 Depth=1
	leaq	1(%r9), %r14
	cmpl	52(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB6_19
# BB#16:                                # %if.then.64
                                        #   in Loop: Header=BB6_8 Depth=1
	movb	$0, (%r9)
	andl	$6, %ebp
	cmpl	$6, %ebp
	movb	(%r13), %r8b
	jne	.LBB6_17
# BB#18:                                # %if.else.77
                                        #   in Loop: Header=BB6_8 Depth=1
	orb	$2, %r8b
	movb	%r8b, (%r13)
	orb	$4, 1(%r13)
	jmp	.LBB6_20
	.align	16, 0x90
.LBB6_14:                               # %if.then.60
                                        #   in Loop: Header=BB6_8 Depth=1
	movb	$0, (%r9)
	incq	%r9
	xorl	%r13d, %r13d
	movq	%r9, %r14
	jmp	.LBB6_21
	.align	16, 0x90
.LBB6_19:                               # %if.else.87
                                        #   in Loop: Header=BB6_8 Depth=1
	movb	$1, (%r9)
	subl	48(%rsp), %eax          # 4-byte Folded Reload
.LBB6_20:                               # %if.end.91
                                        #   in Loop: Header=BB6_8 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB6_21
.LBB6_17:                               # %if.then.70
                                        #   in Loop: Header=BB6_8 Depth=1
	orb	$1, %r8b
	movb	%r8b, (%r13)
	orb	$1, 1(%r13)
	movb	$1, %r13b
	.align	16, 0x90
.LBB6_21:                               # %if.end.91
                                        #   in Loop: Header=BB6_8 Depth=1
	imull	$7, %eax, %esi
	movl	%esi, %r8d
	sarl	$31, %r8d
	shrl	$28, %r8d
	addl	%esi, %r8d
	sarl	$4, %r8d
	leal	(%rax,%rax,2), %esi
	movl	%esi, %ebp
	sarl	$31, %ebp
	shrl	$28, %ebp
	addl	%esi, %ebp
	sarl	$4, %ebp
	leal	(%rax,%rax,4), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%ecx, %esi
	sarl	$4, %esi
	subl	%r8d, %eax
	subl	%ebp, %eax
	subl	%esi, %eax
	addl	%ebp, -8(%r12)
	addl	%esi, -4(%r12)
	movl	%eax, (%r12)
	addq	$4, %r12
	cmpl	$1, %r11d
	leal	-1(%r11), %eax
	movl	%eax, %r11d
	movq	%r14, %r9
	movq	56(%rsp), %rbp          # 8-byte Reload
	jg	.LBB6_8
# BB#22:                                # %for.end.107
	subq	8(%rsp), %r14           # 8-byte Folded Reload
	jmp	.LBB6_41
.LBB6_23:                               # %if.else.111
	movl	%ebp, %ecx
	imull	%esi, %ecx
	decl	%ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rbx
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	$0, (%rcx,%rdx)
	testl	%esi, %esi
	jle	.LBB6_24
# BB#25:                                # %for.body.129.lr.ph
	addq	%rdx, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	(%r12,%rdx,4), %r11
	incl	%eax
	movslq	%eax, %r9
	negq	%r9
	movslq	%edi, %rdi
	leal	1(%rbp), %r15d
	xorl	%r12d, %r12d
	movl	%esi, %r8d
	xorl	%edx, %edx
	movq	%rbx, %r13
	.align	16, 0x90
.LBB6_26:                               # %for.body.129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
                                        #       Child Loop BB6_28 Depth 3
	movl	%r12d, %r14d
	movq	64(%rsp), %r12          # 8-byte Reload
	leaq	-1(%r12), %r10
	addl	(%r11), %edx
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	movl	%edx, %eax
	jle	.LBB6_30
	.align	16, 0x90
.LBB6_27:                               # %for.body.138.lr.ph
                                        #   Parent Loop BB6_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_28 Depth 3
	movl	%r15d, %edx
	.align	16, 0x90
.LBB6_28:                               # %for.body.138
                                        #   Parent Loop BB6_26 Depth=1
                                        #     Parent Loop BB6_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %esi
	addl	%esi, %eax
	addq	%rdi, %rbx
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB6_28
# BB#29:                                # %for.end.145
                                        #   in Loop: Header=BB6_27 Depth=2
	addq	%r9, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB6_27
.LBB6_30:                               # %for.end.151
                                        #   in Loop: Header=BB6_26 Depth=1
	movzbl	(%r10), %edx
	movb	$0, (%r10)
	movq	%r10, 64(%rsp)          # 8-byte Spill
	testb	%r14b, %r14b
	jne	.LBB6_32
# BB#31:                                # %for.end.151
                                        #   in Loop: Header=BB6_26 Depth=1
	movl	%edx, %ecx
	andl	$1, %ecx
	jne	.LBB6_32
# BB#33:                                # %if.else.161
                                        #   in Loop: Header=BB6_26 Depth=1
	leaq	-1(%r13), %r14
	cmpl	52(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB6_37
# BB#34:                                # %if.then.164
                                        #   in Loop: Header=BB6_26 Depth=1
	movb	$0, (%r13)
	andl	$6, %edx
	cmpl	$6, %edx
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	(%rcx), %dl
	movq	%rbp, %r10
	jne	.LBB6_35
# BB#36:                                # %if.else.179
                                        #   in Loop: Header=BB6_26 Depth=1
	orb	$2, %dl
	movb	%dl, -1(%r12)
	orb	$4, (%r12)
	jmp	.LBB6_38
	.align	16, 0x90
.LBB6_32:                               # %if.then.159
                                        #   in Loop: Header=BB6_26 Depth=1
	movq	%rbp, %r10
	movb	$0, (%r13)
	decq	%r13
	xorl	%r12d, %r12d
	movq	%r13, %r14
	jmp	.LBB6_39
	.align	16, 0x90
.LBB6_37:                               # %if.else.189
                                        #   in Loop: Header=BB6_26 Depth=1
	movq	%rbp, %r10
	movb	$1, (%r13)
	subl	48(%rsp), %eax          # 4-byte Folded Reload
.LBB6_38:                               # %if.end.193
                                        #   in Loop: Header=BB6_26 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB6_39
.LBB6_35:                               # %if.then.170
                                        #   in Loop: Header=BB6_26 Depth=1
	orb	$1, %dl
	movb	%dl, -1(%r12)
	orb	$1, (%r12)
	movb	$1, %r12b
	.align	16, 0x90
.LBB6_39:                               # %if.end.193
                                        #   in Loop: Header=BB6_26 Depth=1
	imull	$7, %eax, %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%ecx, %edx
	sarl	$4, %edx
	leal	(%rax,%rax,2), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%ecx, %esi
	sarl	$4, %esi
	leal	(%rax,%rax,4), %ebp
	movl	%ebp, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%ebp, %ecx
	sarl	$4, %ecx
	subl	%edx, %eax
	subl	%esi, %eax
	subl	%ecx, %eax
	addl	%esi, 8(%r11)
	addl	%ecx, 4(%r11)
	movl	%eax, (%r11)
	addq	$-4, %r11
	cmpl	$1, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	movq	%r14, %r13
	movq	%r10, %rbp
	jg	.LBB6_26
	jmp	.LBB6_40
.LBB6_6:
	movq	%rbx, %r14
	subq	8(%rsp), %r14           # 8-byte Folded Reload
	jmp	.LBB6_41
.LBB6_24:
	movq	%rbx, %r14
.LBB6_40:                               # %for.end.210
	incq	%r14
.LBB6_41:                               # %if.end.212
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	20(%rsp), %edi          # 4-byte Reload
	jle	.LBB6_50
# BB#42:                                # %for.body.i.preheader
	movl	$128, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB6_43:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14)
	movl	$0, %esi
	je	.LBB6_45
# BB#44:                                # %select.mid
                                        #   in Loop: Header=BB6_43 Depth=1
	movl	%edx, %esi
.LBB6_45:                               # %select.end
                                        #   in Loop: Header=BB6_43 Depth=1
	orl	%esi, %eax
	sarl	%edx
	jne	.LBB6_47
# BB#46:                                # %if.then.2.i
                                        #   in Loop: Header=BB6_43 Depth=1
	movb	%al, (%rcx)
	incq	%rcx
	xorl	%eax, %eax
	movl	$128, %edx
.LBB6_47:                               # %for.inc.i
                                        #   in Loop: Header=BB6_43 Depth=1
	incq	%r14
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB6_43
# BB#48:                                # %for.end.i
	cmpl	$128, %edx
	je	.LBB6_50
# BB#49:                                # %if.then.7.i
	movb	%al, (%rcx)
.LBB6_50:                               # %pack_8to1.exit
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	down_core_mfs, .Lfunc_end6-down_core_mfs
	.cfi_endproc

	.align	16, 0x90
	.type	down_core_4,@function
down_core_4:                            # @down_core_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 128
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	%r8d, 64(%rsp)          # 4-byte Spill
	movl	%ecx, %r13d
	movq	%rdx, %rbx
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movslq	8(%rdi), %rax
	movslq	12(%rdi), %rdx
	movq	40(%rdi), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	%edx, %ecx
	subl	%eax, %ecx
	jle	.LBB7_2
# BB#1:                                 # %if.then.5
	shll	$2, %ecx
	leaq	(%rbx,%rax,4), %rbp
	movslq	%ecx, %r12
	movslq	%r9d, %r15
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%r12, %rdx
	movq	%r9, %r14
	callq	memset
	addq	%r15, %rbp
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memset
	addq	%r15, %rbp
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memset
	addq	%r15, %rbp
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memset
	movq	%r14, %r9
	movq	16(%rsp), %rdx          # 8-byte Reload
.LBB7_2:                                # %if.end.12
	testb	$1, %r13b
	jne	.LBB7_11
# BB#3:                                 # %if.then.15
	testl	%edx, %edx
	jle	.LBB7_10
# BB#4:                                 # %for.body.20.lr.ph
	leal	1(%rdx), %eax
	leal	3(%rdx), %ecx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	64(%rsp), %edx          # 4-byte Reload
	imull	%ecx, %edx
	movslq	%edx, %rcx
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx,%rcx,4), %rdx
	leaq	3(%rbx), %rcx
	movslq	%r9d, %rsi
	leaq	(%rsi,%rbx), %rsi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	leal	1(%r9), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rbx), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	leal	2(%r9), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rbx), %rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	leal	3(%r9), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rbx), %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	leal	(%r9,%r9), %esi
	movslq	%esi, %rsi
	leaq	1(%rsi,%rbx), %rdi
	leal	2(%r9,%r9), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rbx), %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	leal	3(%r9,%r9), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rbx), %r13
	leal	(%r9,%r9,2), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rbx), %r10
	leal	1(%r9,%r9,2), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rbx), %r11
	leal	2(%r9,%r9,2), %ebp
	movslq	%ebp, %rbp
	leaq	(%rbp,%rbx), %r15
	leal	3(%r9,%r9,2), %ebp
	movslq	%ebp, %r14
	addq	%rbx, %r14
	xorl	%ebp, %ebp
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB7_5:                                # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rbx
	addl	(%rdx,%rbx,4), %r9d
	movzbl	-3(%rcx,%rbx,4), %ebp
	addl	%r9d, %ebp
	movzbl	-2(%rcx,%rbx,4), %esi
	addl	%ebp, %esi
	movzbl	-1(%rcx,%rbx,4), %ebp
	addl	%esi, %ebp
	movzbl	(%rcx,%rbx,4), %esi
	addl	%ebp, %esi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movzbl	(%rbp,%rbx,4), %ebp
	addl	%esi, %ebp
	movq	56(%rsp), %rsi          # 8-byte Reload
	movzbl	(%rsi,%rbx,4), %esi
	addl	%ebp, %esi
	movq	48(%rsp), %rbp          # 8-byte Reload
	movzbl	(%rbp,%rbx,4), %ebp
	addl	%esi, %ebp
	movq	40(%rsp), %rsi          # 8-byte Reload
	movzbl	(%rsi,%rbx,4), %esi
	addl	%ebp, %esi
	movzbl	-1(%rdi,%rbx,4), %ebp
	addl	%esi, %ebp
	movzbl	(%rdi,%rbx,4), %esi
	addl	%ebp, %esi
	movq	32(%rsp), %rbp          # 8-byte Reload
	movzbl	(%rbp,%rbx,4), %ebp
	addl	%esi, %ebp
	movzbl	(%r13,%rbx,4), %esi
	addl	%ebp, %esi
	movzbl	(%r10,%rbx,4), %ebp
	addl	%esi, %ebp
	movzbl	(%r11,%rbx,4), %esi
	addl	%ebp, %esi
	movzbl	(%r15,%rbx,4), %ebp
	addl	%esi, %ebp
	movzbl	(%r14,%rbx,4), %r8d
	addl	%ebp, %r8d
	cmpl	$2048, %r8d             # imm = 0x800
	jl	.LBB7_7
# BB#6:                                 # %if.then.100
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	$1, -3(%rcx,%rbx)
	addl	$-4080, %r8d            # imm = 0xFFFFFFFFFFFFF010
	jmp	.LBB7_8
	.align	16, 0x90
.LBB7_7:                                # %if.else
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	$0, -3(%rcx,%rbx)
.LBB7_8:                                # %if.end.103
                                        #   in Loop: Header=BB7_5 Depth=1
	imull	$7, %r8d, %esi
	movl	%esi, %r9d
	sarl	$31, %r9d
	shrl	$28, %r9d
	addl	%esi, %r9d
	sarl	$4, %r9d
	leal	(%r8,%r8,2), %esi
	movl	%esi, %ebp
	sarl	$31, %ebp
	shrl	$28, %ebp
	addl	%esi, %ebp
	sarl	$4, %ebp
	leal	(%r8,%r8,4), %r12d
	movl	%r12d, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%r12d, %esi
	sarl	$4, %esi
	subl	%r9d, %r8d
	subl	%ebp, %r8d
	subl	%esi, %r8d
	addl	%ebp, -8(%rdx,%rbx,4)
	addl	%esi, -4(%rdx,%rbx,4)
	movl	%r8d, (%rdx,%rbx,4)
	decl	%eax
	leaq	1(%rbx), %rbp
	cmpl	$1, %eax
	jg	.LBB7_5
# BB#9:
	leaq	-2(%rcx,%rbx), %rbx
	movq	16(%rsp), %rdx          # 8-byte Reload
.LBB7_10:                               # %for.end.119
	subq	%rdx, %rbx
	jmp	.LBB7_20
.LBB7_11:                               # %if.else.122
	testl	%edx, %edx
	jle	.LBB7_12
# BB#13:                                # %for.body.132.lr.ph
	leal	3(%rdx), %eax
	movl	64(%rsp), %esi          # 4-byte Reload
	imull	%esi, %eax
	cltq
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rax,4), %rax
	leaq	(%rax,%rdx,4), %rax
	leal	3(%rdx), %ecx
	imull	%esi, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rdx), %rcx
	leaq	(%rdi,%rcx,4), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leal	-4(,%rdx,4), %ecx
	movslq	%ecx, %rcx
	movq	%rdx, %r12
	movq	%r12, 16(%rsp)          # 8-byte Spill
	leal	(%r9,%r9), %edx
	movslq	%edx, %r13
	addq	%rcx, %r13
	movslq	%r9d, %rdx
	leaq	(%rdx,%rcx), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	leal	1(%r9), %edx
	movslq	%edx, %rsi
	addq	%rcx, %rsi
	leal	2(%r9), %edx
	movslq	%edx, %r10
	addq	%rcx, %r10
	leal	3(%r9), %edx
	movslq	%edx, %r11
	addq	%rcx, %r11
	leal	2(%r9,%r9), %edx
	movslq	%edx, %r15
	addq	%rcx, %r15
	leal	3(%r9,%r9), %edx
	movslq	%edx, %rdi
	addq	%rcx, %rdi
	leal	(%r9,%r9,2), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rcx), %r14
	leal	1(%r9,%r9,2), %edx
	movslq	%edx, %rbp
	addq	%rcx, %rbp
	leal	2(%r9,%r9,2), %edx
	movslq	%edx, %r8
	addq	%rcx, %r8
	leal	3(%r9,%r9,2), %edx
	movslq	%edx, %r9
	addq	%rcx, %r9
	leaq	(%rbx,%rcx), %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rbx), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	(%rsi,%rbx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	(%r11,%rbx), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	1(%rbx,%r13), %rcx
	leaq	(%r15,%rbx), %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	leaq	(%rdi,%rbx), %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	leaq	(%r14,%rbx), %r14
	leaq	(%rbp,%rbx), %r13
	leaq	(%r8,%rbx), %r11
	leaq	(%r9,%rbx), %r15
	leaq	(%r10,%rbx), %rbx
	leal	1(%r12), %esi
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB7_14:                               # %for.body.132
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %r8
	movq	64(%rsp), %rdi          # 8-byte Reload
	addl	(%rdi,%r8,4), %r9d
	movzbl	(%rdx,%r8,4), %edi
	addl	%r9d, %edi
	movzbl	1(%rdx,%r8,4), %ebp
	addl	%edi, %ebp
	movzbl	2(%rdx,%r8,4), %edi
	addl	%ebp, %edi
	movzbl	3(%rdx,%r8,4), %ebp
	addl	%edi, %ebp
	movq	56(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rdi,%r8,4), %edi
	addl	%ebp, %edi
	movq	48(%rsp), %rbp          # 8-byte Reload
	movzbl	(%rbp,%r8,4), %ebp
	addl	%edi, %ebp
	movzbl	(%rbx,%r8,4), %edi
	addl	%ebp, %edi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movzbl	(%rbp,%r8,4), %ebp
	addl	%edi, %ebp
	movzbl	-1(%rcx,%r8,4), %edi
	addl	%ebp, %edi
	movzbl	(%rcx,%r8,4), %ebp
	addl	%edi, %ebp
	movq	32(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rdi,%r8,4), %edi
	addl	%ebp, %edi
	movq	24(%rsp), %rbp          # 8-byte Reload
	movzbl	(%rbp,%r8,4), %ebp
	addl	%edi, %ebp
	movzbl	(%r14,%r8,4), %edi
	addl	%ebp, %edi
	movzbl	(%r13,%r8,4), %ebp
	addl	%edi, %ebp
	movzbl	(%r11,%r8,4), %edi
	addl	%ebp, %edi
	movzbl	(%r15,%r8,4), %r10d
	addl	%edi, %r10d
	cmpl	$2048, %r10d            # imm = 0x800
	jl	.LBB7_16
# BB#15:                                # %if.then.214
                                        #   in Loop: Header=BB7_14 Depth=1
	movb	$1, (%rdx,%r8)
	addl	$-4080, %r10d           # imm = 0xFFFFFFFFFFFFF010
	jmp	.LBB7_17
	.align	16, 0x90
.LBB7_16:                               # %if.else.217
                                        #   in Loop: Header=BB7_14 Depth=1
	movb	$0, (%rdx,%r8)
.LBB7_17:                               # %if.end.219
                                        #   in Loop: Header=BB7_14 Depth=1
	imull	$7, %r10d, %edi
	movl	%edi, %r9d
	sarl	$31, %r9d
	shrl	$28, %r9d
	addl	%edi, %r9d
	sarl	$4, %r9d
	leal	(%r10,%r10,2), %edi
	movl	%edi, %ebp
	sarl	$31, %ebp
	shrl	$28, %ebp
	addl	%edi, %ebp
	sarl	$4, %ebp
	leal	(%r10,%r10,4), %r12d
	movl	%r12d, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%r12d, %edi
	sarl	$4, %edi
	subl	%r9d, %r10d
	subl	%ebp, %r10d
	addl	%ebp, 8(%rax)
	subl	%edi, %r10d
	addl	%edi, 4(%rax)
	movl	%r10d, (%rax)
	addq	$-4, %rax
	leaq	-1(%r8), %rdi
	leal	(%rsi,%rdi), %ebp
	cmpl	$1, %ebp
	jg	.LBB7_14
# BB#18:
	leaq	-1(%rdx,%r8), %rbx
	movq	16(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB7_19
.LBB7_12:
	leal	-4(,%rdx,4), %eax
	cltq
	addq	%rax, %rbx
.LBB7_19:                               # %for.end.236
	incq	%rbx
.LBB7_20:                               # %if.end.238
	movq	8(%rsp), %rdi           # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB7_29
# BB#21:                                # %for.body.i.preheader
	leal	1(%rdx), %ecx
	movl	$128, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB7_22:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx)
	movl	$0, %esi
	je	.LBB7_24
# BB#23:                                # %select.mid
                                        #   in Loop: Header=BB7_22 Depth=1
	movl	%edx, %esi
.LBB7_24:                               # %select.end
                                        #   in Loop: Header=BB7_22 Depth=1
	orl	%esi, %eax
	sarl	%edx
	jne	.LBB7_26
# BB#25:                                # %if.then.2.i
                                        #   in Loop: Header=BB7_22 Depth=1
	movb	%al, (%rdi)
	incq	%rdi
	xorl	%eax, %eax
	movl	$128, %edx
.LBB7_26:                               # %for.inc.i
                                        #   in Loop: Header=BB7_22 Depth=1
	incq	%rbx
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB7_22
# BB#27:                                # %for.end.i
	cmpl	$128, %edx
	je	.LBB7_29
# BB#28:                                # %if.then.7.i
	movb	%al, (%rdi)
.LBB7_29:                               # %pack_8to1.exit
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	down_core_4, .Lfunc_end7-down_core_4
	.cfi_endproc

	.align	16, 0x90
	.type	down_core_3,@function
down_core_3:                            # @down_core_3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 96
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movl	%ecx, %r8d
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movslq	8(%rdi), %rax
	movslq	12(%rdi), %r15
	movq	40(%rdi), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%r15d, %ecx
	subl	%eax, %ecx
	jle	.LBB8_2
# BB#1:                                 # %if.then.5
	leal	(%rcx,%rcx,2), %ecx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rax,%rbx), %r14
	movslq	%ecx, %r12
	movslq	%r9d, %r13
	movl	$255, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	%r8d, 8(%rsp)           # 4-byte Spill
	callq	memset
	addq	%r13, %r14
	movl	$255, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	memset
	addq	%r13, %r14
	movl	$255, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	memset
	movl	8(%rsp), %r8d           # 4-byte Reload
	movq	32(%rsp), %r9           # 8-byte Reload
.LBB8_2:                                # %if.end.12
	testb	$1, %r8b
	jne	.LBB8_11
# BB#3:                                 # %if.then.15
	testl	%r15d, %r15d
	jle	.LBB8_10
# BB#4:                                 # %for.body.20.lr.ph
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r15, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leal	1(%rax), %r15d
	leal	3(%rax), %ecx
	movl	28(%rsp), %eax          # 4-byte Reload
	imull	%ecx, %eax
	movslq	%eax, %rcx
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax,%rcx,4), %r13
	movslq	%r9d, %rcx
	leaq	(%rcx,%rbx), %rax
	leal	1(%r9), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rbx), %r8
	leal	2(%r9), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rbx), %r10
	leal	(%r9,%r9), %ecx
	movslq	%ecx, %rcx
	leaq	1(%rcx,%rbx), %r12
	leal	2(%r9,%r9), %ecx
	movq	%rax, %r9
	movslq	%ecx, %rcx
	leaq	(%rcx,%rbx), %r11
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB8_5:                                # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rcx
	addl	(%r13,%rcx,4), %edx
	movzbl	(%rbx,%rsi), %edi
	addl	%edx, %edi
	movzbl	1(%rbx,%rsi), %edx
	addl	%edi, %edx
	movzbl	2(%rbx,%rsi), %edi
	addl	%edx, %edi
	movzbl	(%r9,%rsi), %edx
	addl	%edi, %edx
	movzbl	(%r8,%rsi), %edi
	addl	%edx, %edi
	movzbl	(%r10,%rsi), %edx
	addl	%edi, %edx
	movzbl	-1(%r12,%rsi), %edi
	addl	%edx, %edi
	movzbl	(%r12,%rsi), %edx
	addl	%edi, %edx
	movzbl	(%r11,%rsi), %ebp
	addl	%edx, %ebp
	cmpl	$1152, %ebp             # imm = 0x480
	jl	.LBB8_7
# BB#6:                                 # %if.then.63
                                        #   in Loop: Header=BB8_5 Depth=1
	movb	$1, (%rbx,%rcx)
	addl	$-2295, %ebp            # imm = 0xFFFFFFFFFFFFF709
	jmp	.LBB8_8
	.align	16, 0x90
.LBB8_7:                                # %if.else
                                        #   in Loop: Header=BB8_5 Depth=1
	movb	$0, (%rbx,%rcx)
.LBB8_8:                                # %if.end.66
                                        #   in Loop: Header=BB8_5 Depth=1
	imull	$7, %ebp, %edi
	movl	%edi, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%edi, %edx
	sarl	$4, %edx
	leal	(%rbp,%rbp,2), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%eax, %edi
	sarl	$4, %edi
	leal	(%rbp,%rbp,4), %r14d
	movl	%r14d, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%r14d, %eax
	sarl	$4, %eax
	subl	%edx, %ebp
	subl	%edi, %ebp
	addl	%edi, -8(%r13,%rcx,4)
	subl	%eax, %ebp
	addl	%eax, -4(%r13,%rcx,4)
	movl	%ebp, (%r13,%rcx,4)
	decl	%r15d
	leaq	1(%rcx), %rdi
	addq	$3, %rsi
	cmpl	$1, %r15d
	jg	.LBB8_5
# BB#9:
	leaq	1(%rbx,%rcx), %rbx
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	(%rsp), %r15            # 8-byte Reload
.LBB8_10:                               # %for.end.82
	subq	%r15, %rbx
	jmp	.LBB8_20
.LBB8_11:                               # %if.else.85
	testl	%r15d, %r15d
	jle	.LBB8_12
# BB#13:                                # %for.body.95.lr.ph
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leal	3(%r15), %eax
	movl	28(%rsp), %edx          # 4-byte Reload
	imull	%edx, %eax
	cltq
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rax,4), %rax
	leaq	(%rax,%r15,4), %rax
	leal	1(%r15), %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leal	3(%r15), %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	addq	%r15, %rcx
	leaq	(%rsi,%rcx,4), %rsi
	leal	-3(%r15,%r15,2), %ecx
	movq	%r15, (%rsp)            # 8-byte Spill
	movslq	%ecx, %rcx
	leal	(%r9,%r9), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	leaq	(%rbx,%rcx), %r13
	movslq	%r9d, %rdi
	leaq	(%rdi,%rcx), %rdi
	leaq	(%rdi,%rbx), %r10
	leal	1(%r9), %edi
	movslq	%edi, %rdi
	addq	%rcx, %rdi
	leaq	(%rdi,%rbx), %r11
	leal	2(%r9), %edi
	movslq	%edi, %rdi
	addq	%rcx, %rdi
	leaq	(%rdi,%rbx), %r12
	leaq	1(%rbx,%rdx), %r14
	leal	2(%r9,%r9), %edi
	movq	%rsi, %r9
	movslq	%edi, %r15
	addq	%rcx, %r15
	addq	%rbx, %r15
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB8_14:                               # %for.body.95
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rbp
	addl	(%r9,%rbp,4), %ecx
	movzbl	(%r13,%rbx), %edi
	addl	%ecx, %edi
	movzbl	1(%r13,%rbx), %ecx
	addl	%edi, %ecx
	movzbl	2(%r13,%rbx), %edi
	addl	%ecx, %edi
	movzbl	(%r10,%rbx), %ecx
	addl	%edi, %ecx
	movzbl	(%r11,%rbx), %edi
	addl	%ecx, %edi
	movzbl	(%r12,%rbx), %ecx
	addl	%edi, %ecx
	movzbl	-1(%r14,%rbx), %edi
	addl	%ecx, %edi
	movzbl	(%r14,%rbx), %ecx
	addl	%edi, %ecx
	movzbl	(%r15,%rbx), %edi
	addl	%ecx, %edi
	cmpl	$1152, %edi             # imm = 0x480
	jl	.LBB8_16
# BB#15:                                # %if.then.140
                                        #   in Loop: Header=BB8_14 Depth=1
	movb	$1, (%r13,%rbp)
	addl	$-2295, %edi            # imm = 0xFFFFFFFFFFFFF709
	jmp	.LBB8_17
	.align	16, 0x90
.LBB8_16:                               # %if.else.143
                                        #   in Loop: Header=BB8_14 Depth=1
	movb	$0, (%r13,%rbp)
.LBB8_17:                               # %if.end.145
                                        #   in Loop: Header=BB8_14 Depth=1
	imull	$7, %edi, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%edx, %ecx
	sarl	$4, %ecx
	leal	(%rdi,%rdi,2), %esi
	movl	%esi, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%esi, %edx
	sarl	$4, %edx
	leal	(%rdi,%rdi,4), %r8d
	movl	%r8d, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%r8d, %esi
	sarl	$4, %esi
	subl	%ecx, %edi
	subl	%edx, %edi
	subl	%esi, %edi
	addl	%edx, 8(%rax)
	addl	%esi, 4(%rax)
	movl	%edi, (%rax)
	addq	$-4, %rax
	leaq	-1(%rbp), %rdi
	movq	32(%rsp), %rdx          # 8-byte Reload
	leal	(%rdx,%rdi), %edx
	addq	$-3, %rbx
	cmpl	$1, %edx
	jg	.LBB8_14
# BB#18:
	leaq	-1(%r13,%rbp), %rbx
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	(%rsp), %r15            # 8-byte Reload
	jmp	.LBB8_19
.LBB8_12:
	leal	-3(%r15,%r15,2), %eax
	cltq
	addq	%rax, %rbx
.LBB8_19:                               # %for.end.162
	incq	%rbx
.LBB8_20:                               # %if.end.164
	testl	%r15d, %r15d
	jle	.LBB8_29
# BB#21:                                # %for.body.i.preheader
	leal	1(%r15), %ecx
	movl	$128, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_22:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx)
	movl	$0, %esi
	je	.LBB8_24
# BB#23:                                # %select.mid
                                        #   in Loop: Header=BB8_22 Depth=1
	movl	%edx, %esi
.LBB8_24:                               # %select.end
                                        #   in Loop: Header=BB8_22 Depth=1
	orl	%esi, %eax
	sarl	%edx
	jne	.LBB8_26
# BB#25:                                # %if.then.2.i
                                        #   in Loop: Header=BB8_22 Depth=1
	movb	%al, (%rbp)
	incq	%rbp
	xorl	%eax, %eax
	movl	$128, %edx
.LBB8_26:                               # %for.inc.i
                                        #   in Loop: Header=BB8_22 Depth=1
	incq	%rbx
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB8_22
# BB#27:                                # %for.end.i
	cmpl	$128, %edx
	je	.LBB8_29
# BB#28:                                # %if.then.7.i
	movb	%al, (%rbp)
.LBB8_29:                               # %pack_8to1.exit
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	down_core_3, .Lfunc_end8-down_core_3
	.cfi_endproc

	.align	16, 0x90
	.type	down_core_2,@function
down_core_2:                            # @down_core_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 96
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, 36(%rsp)          # 4-byte Spill
	movl	%ecx, %ebx
	movq	%rdx, %r13
	movq	%rsi, %r14
	movslq	8(%rdi), %rax
	movslq	12(%rdi), %r15
	movq	40(%rdi), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%r15d, %ecx
	subl	%eax, %ecx
	jle	.LBB9_2
# BB#1:                                 # %if.then.5
	addl	%ecx, %ecx
	leaq	(%r13,%rax,2), %rbp
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movslq	%ecx, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%r12d, %r15d
	movslq	%r15d, %r12
	movl	$255, %esi
	movq	%rbp, %rdi
	callq	memset
	addq	%rbp, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movl	%r15d, %r12d
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	16(%rsp), %r15          # 8-byte Reload
	callq	memset
.LBB9_2:                                # %if.end.12
	testb	$1, %bl
	jne	.LBB9_11
# BB#3:                                 # %if.then.15
	testl	%r15d, %r15d
	jle	.LBB9_10
# BB#4:                                 # %for.body.20.lr.ph
	leal	1(%r15), %eax
	leal	3(%r15), %ecx
	movl	36(%rsp), %edx          # 4-byte Reload
	imull	%ecx, %edx
	movslq	%edx, %rcx
	movq	24(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx,%rcx,4), %r11
	leaq	1(%r13), %r10
	movslq	%r12d, %rsi
	leaq	(%rsi,%r13), %r8
	incl	%r12d
	movslq	%r12d, %r9
	addq	%r13, %r9
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB9_5:                                # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rbp
	addl	(%r11,%rbp,4), %esi
	movzbl	-1(%r10,%rbp,2), %ebx
	addl	%esi, %ebx
	movzbl	(%r10,%rbp,2), %esi
	addl	%ebx, %esi
	movzbl	(%r8,%rbp,2), %edi
	addl	%esi, %edi
	movzbl	(%r9,%rbp,2), %ebx
	addl	%edi, %ebx
	cmpl	$512, %ebx              # imm = 0x200
	jl	.LBB9_7
# BB#6:                                 # %if.then.38
                                        #   in Loop: Header=BB9_5 Depth=1
	movb	$1, -1(%r10,%rbp)
	addl	$-1020, %ebx            # imm = 0xFFFFFFFFFFFFFC04
	jmp	.LBB9_8
	.align	16, 0x90
.LBB9_7:                                # %if.else
                                        #   in Loop: Header=BB9_5 Depth=1
	movb	$0, -1(%r10,%rbp)
.LBB9_8:                                # %if.end.41
                                        #   in Loop: Header=BB9_5 Depth=1
	imull	$7, %ebx, %edi
	movl	%edi, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%edi, %esi
	sarl	$4, %esi
	leal	(%rbx,%rbx,2), %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%ecx, %edi
	sarl	$4, %edi
	leal	(%rbx,%rbx,4), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%edx, %ecx
	sarl	$4, %ecx
	subl	%esi, %ebx
	subl	%edi, %ebx
	subl	%ecx, %ebx
	addl	%edi, -8(%r11,%rbp,4)
	addl	%ecx, -4(%r11,%rbp,4)
	movl	%ebx, (%r11,%rbp,4)
	decl	%eax
	leaq	1(%rbp), %rbx
	cmpl	$1, %eax
	jg	.LBB9_5
# BB#9:
	leaq	1(%r10,%rbp), %r13
	decq	%r13
.LBB9_10:                               # %for.end.57
	subq	%r15, %r13
	jmp	.LBB9_20
.LBB9_11:                               # %if.else.60
	testl	%r15d, %r15d
	jle	.LBB9_12
# BB#13:                                # %for.body.70.lr.ph
	leal	3(%r15), %eax
	movl	36(%rsp), %edx          # 4-byte Reload
	imull	%edx, %eax
	cltq
	movq	24(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rax,4), %rax
	leaq	(%rax,%r15,4), %rax
	leal	1(%r15), %r8d
	leal	3(%r15), %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r15), %rcx
	leaq	(%rsi,%rcx,4), %r9
	leal	-2(%r15,%r15), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r13
	movslq	%r12d, %rcx
	leaq	(%rcx,%r13), %r10
	incl	%r12d
	movslq	%r12d, %rcx
	leaq	(%rcx,%r13), %r11
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB9_14:                               # %for.body.70
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rbp
	addl	(%r9,%rbp,4), %ecx
	movzbl	(%r13,%rbp,2), %edx
	addl	%ecx, %edx
	movzbl	1(%r13,%rbp,2), %ecx
	addl	%edx, %ecx
	movzbl	(%r10,%rbp,2), %esi
	addl	%ecx, %esi
	movzbl	(%r11,%rbp,2), %edx
	addl	%esi, %edx
	cmpl	$512, %edx              # imm = 0x200
	jl	.LBB9_16
# BB#15:                                # %if.then.90
                                        #   in Loop: Header=BB9_14 Depth=1
	movb	$1, (%r13,%rbp)
	addl	$-1020, %edx            # imm = 0xFFFFFFFFFFFFFC04
	jmp	.LBB9_17
	.align	16, 0x90
.LBB9_16:                               # %if.else.93
                                        #   in Loop: Header=BB9_14 Depth=1
	movb	$0, (%r13,%rbp)
.LBB9_17:                               # %if.end.95
                                        #   in Loop: Header=BB9_14 Depth=1
	imull	$7, %edx, %esi
	movl	%esi, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%esi, %ecx
	sarl	$4, %ecx
	leal	(%rdx,%rdx,2), %edi
	movl	%edi, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%edi, %esi
	sarl	$4, %esi
	leal	(%rdx,%rdx,4), %ebx
	movl	%ebx, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%ebx, %edi
	sarl	$4, %edi
	subl	%ecx, %edx
	subl	%esi, %edx
	addl	%esi, 8(%rax)
	subl	%edi, %edx
	addl	%edi, 4(%rax)
	movl	%edx, (%rax)
	addq	$-4, %rax
	leaq	-1(%rbp), %rdx
	leal	(%r8,%rdx), %esi
	cmpl	$1, %esi
	jg	.LBB9_14
# BB#18:
	leaq	-1(%r13,%rbp), %r13
	jmp	.LBB9_19
.LBB9_12:
	leal	-2(%r15,%r15), %eax
	cltq
	addq	%rax, %r13
.LBB9_19:                               # %for.end.112
	incq	%r13
.LBB9_20:                               # %if.end.114
	testl	%r15d, %r15d
	jle	.LBB9_29
# BB#21:                                # %for.body.i.preheader
	leal	1(%r15), %ecx
	movl	$128, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_22:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r13)
	movl	$0, %esi
	je	.LBB9_24
# BB#23:                                # %select.mid
                                        #   in Loop: Header=BB9_22 Depth=1
	movl	%edx, %esi
.LBB9_24:                               # %select.end
                                        #   in Loop: Header=BB9_22 Depth=1
	orl	%esi, %eax
	sarl	%edx
	jne	.LBB9_26
# BB#25:                                # %if.then.2.i
                                        #   in Loop: Header=BB9_22 Depth=1
	movb	%al, (%r14)
	incq	%r14
	xorl	%eax, %eax
	movl	$128, %edx
.LBB9_26:                               # %for.inc.i
                                        #   in Loop: Header=BB9_22 Depth=1
	incq	%r13
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB9_22
# BB#27:                                # %for.end.i
	cmpl	$128, %edx
	je	.LBB9_29
# BB#28:                                # %if.then.7.i
	movb	%al, (%r14)
.LBB9_29:                               # %pack_8to1.exit
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	down_core_2, .Lfunc_end9-down_core_2
	.cfi_endproc

	.align	16, 0x90
	.type	down_core_1,@function
down_core_1:                            # @down_core_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 48
.Ltmp96:
	.cfi_offset %rbx, -48
.Ltmp97:
	.cfi_offset %r12, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movslq	8(%rdi), %rax
	movslq	12(%rdi), %r12
	leal	3(%r12), %ecx
	imull	%r8d, %ecx
	movslq	%ecx, %rbp
	shlq	$2, %rbp
	addq	40(%rdi), %rbp
	movl	%r12d, %ecx
	subl	%eax, %ecx
	jle	.LBB10_2
# BB#1:                                 # %if.then.4
	leaq	(%rax,%rbx), %rdi
	movslq	%ecx, %rdx
	movl	$255, %esi
	callq	memset
.LBB10_2:                               # %if.end.7
	testb	$1, %r15b
	jne	.LBB10_10
# BB#3:                                 # %if.then.10
	testl	%r12d, %r12d
	jle	.LBB10_9
# BB#4:                                 # %for.body.lr.ph
	addq	$8, %rbp
	leal	1(%r12), %r8d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB10_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rbp), %ecx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	cmpl	$128, %edx
	jl	.LBB10_7
# BB#6:                                 # %if.then.19
                                        #   in Loop: Header=BB10_5 Depth=1
	movb	$1, (%rbx)
	addl	$-255, %edx
	jmp	.LBB10_8
	.align	16, 0x90
.LBB10_7:                               # %if.else
                                        #   in Loop: Header=BB10_5 Depth=1
	movb	$0, (%rbx)
.LBB10_8:                               # %if.end.23
                                        #   in Loop: Header=BB10_5 Depth=1
	incq	%rbx
	imull	$7, %edx, %esi
	movl	%esi, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%esi, %ecx
	sarl	$4, %ecx
	leal	(%rdx,%rdx,2), %esi
	movl	%esi, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%esi, %edi
	sarl	$4, %edi
	leal	(%rdx,%rdx,4), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%eax, %esi
	sarl	$4, %esi
	subl	%ecx, %edx
	subl	%edi, %edx
	subl	%esi, %edx
	addl	%edi, -8(%rbp)
	addl	%esi, -4(%rbp)
	movl	%edx, (%rbp)
	decl	%r8d
	addq	$4, %rbp
	cmpl	$1, %r8d
	jg	.LBB10_5
.LBB10_9:                               # %for.end
	subq	%r12, %rbx
	jmp	.LBB10_17
.LBB10_10:                              # %if.else.38
	leaq	-1(%r12,%rbx), %rbx
	testl	%r12d, %r12d
	jle	.LBB10_16
# BB#11:                                # %for.body.47.lr.ph
	leaq	(%rbp,%r12,4), %rax
	leal	1(%r12), %r8d
	xorl	%edx, %edx
	.align	16, 0x90
.LBB10_12:                              # %for.body.47
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rax), %edx
	movzbl	(%rbx), %esi
	addl	%edx, %esi
	cmpl	$128, %esi
	jl	.LBB10_14
# BB#13:                                # %if.then.54
                                        #   in Loop: Header=BB10_12 Depth=1
	movb	$1, (%rbx)
	addl	$-255, %esi
	jmp	.LBB10_15
	.align	16, 0x90
.LBB10_14:                              # %if.else.57
                                        #   in Loop: Header=BB10_12 Depth=1
	movb	$0, (%rbx)
.LBB10_15:                              # %if.end.59
                                        #   in Loop: Header=BB10_12 Depth=1
	decq	%rbx
	imull	$7, %esi, %edi
	movl	%edi, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%edi, %edx
	sarl	$4, %edx
	leal	(%rsi,%rsi,2), %ebp
	movl	%ebp, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%ebp, %edi
	sarl	$4, %edi
	leal	(%rsi,%rsi,4), %ecx
	movl	%ecx, %ebp
	sarl	$31, %ebp
	shrl	$28, %ebp
	addl	%ecx, %ebp
	sarl	$4, %ebp
	subl	%edx, %esi
	subl	%edi, %esi
	subl	%ebp, %esi
	addl	%edi, 8(%rax)
	addl	%ebp, 4(%rax)
	movl	%esi, (%rax)
	decl	%r8d
	addq	$-4, %rax
	cmpl	$1, %r8d
	jg	.LBB10_12
.LBB10_16:                              # %for.end.76
	incq	%rbx
.LBB10_17:                              # %if.end.78
	testl	%r12d, %r12d
	jle	.LBB10_26
# BB#18:                                # %for.body.i.preheader
	incl	%r12d
	movl	$128, %ecx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB10_19:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx)
	movl	$0, %edx
	je	.LBB10_21
# BB#20:                                # %select.mid
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	%ecx, %edx
.LBB10_21:                              # %select.end
                                        #   in Loop: Header=BB10_19 Depth=1
	orl	%edx, %eax
	sarl	%ecx
	jne	.LBB10_23
# BB#22:                                # %if.then.2.i
                                        #   in Loop: Header=BB10_19 Depth=1
	movb	%al, (%r14)
	incq	%r14
	xorl	%eax, %eax
	movl	$128, %ecx
.LBB10_23:                              # %for.inc.i
                                        #   in Loop: Header=BB10_19 Depth=1
	incq	%rbx
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB10_19
# BB#24:                                # %for.end.i
	cmpl	$128, %ecx
	je	.LBB10_26
# BB#25:                                # %if.then.7.i
	movb	%al, (%r14)
.LBB10_26:                              # %pack_8to1.exit
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	down_core_1, .Lfunc_end10-down_core_1
	.cfi_endproc

	.align	16, 0x90
	.type	down_core,@function
down_core:                              # @down_core
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp104:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp105:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp107:
	.cfi_def_cfa_offset 112
.Ltmp108:
	.cfi_offset %rbx, -56
.Ltmp109:
	.cfi_offset %r12, -48
.Ltmp110:
	.cfi_offset %r13, -40
.Ltmp111:
	.cfi_offset %r14, -32
.Ltmp112:
	.cfi_offset %r15, -24
.Ltmp113:
	.cfi_offset %rbp, -16
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	%rdx, %r12
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	8(%rdi), %eax
	movl	12(%rdi), %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	20(%rdi), %esi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	leal	3(%rdx), %ecx
	imull	%r8d, %ecx
	movslq	%ecx, %r14
	shlq	$2, %r14
	addq	40(%rdi), %r14
	movl	%esi, %ecx
	imull	%ecx, %ecx
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	%esi, %ecx
	testl	%ecx, %ecx
	jle	.LBB11_4
# BB#1:                                 # %entry
	movq	40(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB11_4
# BB#2:                                 # %for.body.lr.ph
	movq	40(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %eax
	cltq
	leaq	(%rax,%r12), %rbp
	movslq	%ecx, %r13
	movslq	36(%rsp), %rbx          # 4-byte Folded Reload
	leal	1(%rdx), %r15d
	.align	16, 0x90
.LBB11_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memset
	addq	%rbx, %rbp
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB11_3
.LBB11_4:                               # %if.end.17
	movq	16(%rsp), %r13          # 8-byte Reload
	movslq	%r13d, %rdx
	movl	8(%rsp), %r8d           # 4-byte Reload
	imull	$255, %r8d, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	shll	$7, %r8d
	movq	40(%rsp), %r15          # 8-byte Reload
	movl	%r15d, %eax
	movl	36(%rsp), %esi          # 4-byte Reload
	imull	%esi, %eax
	movl	4(%rsp), %ecx           # 4-byte Reload
	testb	$1, %cl
	jne	.LBB11_16
# BB#5:                                 # %if.then.20
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	testl	%r13d, %r13d
	jle	.LBB11_15
# BB#6:                                 # %for.body.27.lr.ph
	addq	$8, %r14
	decl	%eax
	movslq	%eax, %r11
	negq	%r11
	movslq	%esi, %rsi
	leal	1(%r15), %ebp
	xorl	%eax, %eax
	movl	%r13d, %r10d
	movq	%r12, %rbx
	.align	16, 0x90
.LBB11_7:                               # %for.body.27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_8 Depth 2
                                        #       Child Loop BB11_9 Depth 3
	addl	(%r14), %eax
	testl	%r15d, %r15d
	movl	%r15d, %ecx
	jle	.LBB11_11
	.align	16, 0x90
.LBB11_8:                               # %for.body.36.lr.ph
                                        #   Parent Loop BB11_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_9 Depth 3
	movl	%ebp, %edi
	.align	16, 0x90
.LBB11_9:                               # %for.body.36
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %edx
	addl	%edx, %eax
	addq	%rsi, %rbx
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB11_9
# BB#10:                                # %for.end.43
                                        #   in Loop: Header=BB11_8 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB11_8
.LBB11_11:                              # %for.end.48
                                        #   in Loop: Header=BB11_7 Depth=1
	movq	%r15, %r9
	cmpl	%r8d, %eax
	jge	.LBB11_12
# BB#13:                                # %if.else
                                        #   in Loop: Header=BB11_7 Depth=1
	movb	$0, (%r12)
	jmp	.LBB11_14
	.align	16, 0x90
.LBB11_12:                              # %if.then.51
                                        #   in Loop: Header=BB11_7 Depth=1
	movb	$1, (%r12)
	subl	52(%rsp), %eax          # 4-byte Folded Reload
.LBB11_14:                              # %if.end.54
                                        #   in Loop: Header=BB11_7 Depth=1
	incq	%r12
	imull	$7, %eax, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%edx, %ecx
	sarl	$4, %ecx
	leal	(%rax,%rax,2), %edx
	movl	%edx, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%edx, %edi
	sarl	$4, %edi
	leal	(%rax,%rax,4), %r15d
	movl	%r15d, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%r15d, %edx
	sarl	$4, %edx
	subl	%ecx, %eax
	subl	%edi, %eax
	subl	%edx, %eax
	addl	%edi, -8(%r14)
	addl	%edx, -4(%r14)
	movl	%eax, (%r14)
	addq	$4, %r14
	cmpl	$1, %r10d
	leal	-1(%r10), %eax
	movl	%eax, %r10d
	movl	%ecx, %eax
	movq	%r9, %r15
	jg	.LBB11_7
.LBB11_15:                              # %for.end.69
	subq	8(%rsp), %r12           # 8-byte Folded Reload
	jmp	.LBB11_27
.LBB11_16:                              # %if.else.73
	movl	%r15d, %ecx
	imull	%r13d, %ecx
	decl	%ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r12
	testl	%r13d, %r13d
	jle	.LBB11_26
# BB#17:                                # %for.body.86.lr.ph
	leaq	(%r14,%rdx,4), %r10
	incl	%eax
	movslq	%eax, %r11
	negq	%r11
	movslq	%esi, %rsi
	leal	1(%r15), %ecx
	xorl	%eax, %eax
	movl	%r13d, %r9d
	movq	%r12, %rbx
	.align	16, 0x90
.LBB11_18:                              # %for.body.86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_19 Depth 2
                                        #       Child Loop BB11_20 Depth 3
	addl	(%r10), %eax
	testl	%r15d, %r15d
	movl	%r15d, %ebp
	jle	.LBB11_22
	.align	16, 0x90
.LBB11_19:                              # %for.body.95.lr.ph
                                        #   Parent Loop BB11_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_20 Depth 3
	movl	%ecx, %edi
	.align	16, 0x90
.LBB11_20:                              # %for.body.95
                                        #   Parent Loop BB11_18 Depth=1
                                        #     Parent Loop BB11_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %edx
	addl	%edx, %eax
	addq	%rsi, %rbx
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB11_20
# BB#21:                                # %for.end.102
                                        #   in Loop: Header=BB11_19 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %ebp
	leal	-1(%rbp), %edx
	movl	%edx, %ebp
	jg	.LBB11_19
.LBB11_22:                              # %for.end.108
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	%r8d, %eax
	jge	.LBB11_23
# BB#24:                                # %if.else.114
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	$0, (%r12)
	jmp	.LBB11_25
	.align	16, 0x90
.LBB11_23:                              # %if.then.111
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	$1, (%r12)
	subl	52(%rsp), %eax          # 4-byte Folded Reload
.LBB11_25:                              # %if.end.116
                                        #   in Loop: Header=BB11_18 Depth=1
	decq	%r12
	imull	$7, %eax, %edx
	movl	%edx, %ebp
	sarl	$31, %ebp
	shrl	$28, %ebp
	addl	%edx, %ebp
	sarl	$4, %ebp
	leal	(%rax,%rax,2), %edx
	movl	%edx, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%edx, %edi
	sarl	$4, %edi
	leal	(%rax,%rax,4), %r14d
	movl	%r14d, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%r14d, %edx
	sarl	$4, %edx
	subl	%ebp, %eax
	subl	%edi, %eax
	subl	%edx, %eax
	addl	%edi, 8(%r10)
	addl	%edx, 4(%r10)
	movl	%eax, (%r10)
	addq	$-4, %r10
	cmpl	$1, %r9d
	leal	-1(%r9), %eax
	movl	%eax, %r9d
	movl	%ebp, %eax
	jg	.LBB11_18
.LBB11_26:                              # %for.end.133
	incq	%r12
.LBB11_27:                              # %if.end.135
	testl	%r13d, %r13d
	movq	24(%rsp), %rsi          # 8-byte Reload
	jle	.LBB11_36
# BB#28:                                # %for.body.i.preheader
	incl	%r13d
	movl	$128, %ecx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB11_29:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r12)
	movl	$0, %edx
	je	.LBB11_31
# BB#30:                                # %select.mid
                                        #   in Loop: Header=BB11_29 Depth=1
	movl	%ecx, %edx
.LBB11_31:                              # %select.end
                                        #   in Loop: Header=BB11_29 Depth=1
	orl	%edx, %eax
	sarl	%ecx
	jne	.LBB11_33
# BB#32:                                # %if.then.2.i
                                        #   in Loop: Header=BB11_29 Depth=1
	movb	%al, (%rsi)
	incq	%rsi
	xorl	%eax, %eax
	movl	$128, %ecx
.LBB11_33:                              # %for.inc.i
                                        #   in Loop: Header=BB11_29 Depth=1
	incq	%r12
	decl	%r13d
	cmpl	$1, %r13d
	jg	.LBB11_29
# BB#34:                                # %for.end.i
	cmpl	$128, %ecx
	je	.LBB11_36
# BB#35:                                # %if.then.7.i
	movb	%al, (%rsi)
.LBB11_36:                              # %pack_8to1.exit
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	down_core, .Lfunc_end11-down_core
	.cfi_endproc

	.align	16, 0x90
	.type	down_core16,@function
down_core16:                            # @down_core16
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
	subq	$24, %rsp
.Ltmp120:
	.cfi_def_cfa_offset 80
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
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movl	8(%rdi), %ecx
	movl	12(%rdi), %r13d
	movl	20(%rdi), %edx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%r13d, %eax
	subl	%ecx, %eax
	imull	%edx, %eax
	testl	%eax, %eax
	jle	.LBB12_4
# BB#1:                                 # %entry
	movq	8(%rsp), %rdx           # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB12_4
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rdx           # 8-byte Reload
	imull	%edx, %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rbx), %rbp
	addl	%eax, %eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	4(%rsp), %r14           # 4-byte Folded Reload
	leal	1(%rdx), %r12d
	.align	16, 0x90
.LBB12_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	memset
	addq	%r14, %rbp
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB12_3
.LBB12_4:                               # %if.end.12
	testl	%r13d, %r13d
	movq	8(%rsp), %r11           # 8-byte Reload
	jle	.LBB12_11
# BB#5:                                 # %for.cond.19.preheader.lr.ph
	movl	%r11d, %r8d
	imull	%r8d, %r8d
	movl	%r11d, %eax
	movl	4(%rsp), %ecx           # 4-byte Reload
	imull	%ecx, %eax
	addl	$-2, %eax
	movl	%r8d, %r9d
	shrl	%r9d
	movslq	%eax, %r10
	negq	%r10
	movslq	%ecx, %rbp
	leal	1(%r11), %esi
	.align	16, 0x90
.LBB12_6:                               # %for.cond.19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #       Child Loop BB12_8 Depth 3
	xorl	%eax, %eax
	testl	%r11d, %r11d
	movl	%r11d, %edx
	jle	.LBB12_10
	.align	16, 0x90
.LBB12_7:                               # %for.body.26.lr.ph
                                        #   Parent Loop BB12_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_8 Depth 3
	movl	%esi, %ecx
	.align	16, 0x90
.LBB12_8:                               # %for.body.26
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %edi
	shll	$8, %edi
	addl	%eax, %edi
	movzbl	1(%rbx), %eax
	addl	%edi, %eax
	addq	%rbp, %rbx
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB12_8
# BB#9:                                 # %for.end.35
                                        #   in Loop: Header=BB12_7 Depth=2
	addq	%r10, %rbx
	cmpl	$1, %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, %edx
	jg	.LBB12_7
.LBB12_10:                              # %for.end.40
                                        #   in Loop: Header=BB12_6 Depth=1
	addl	%r9d, %eax
	cltd
	idivl	%r8d
	movq	%r15, %rcx
	movb	%ah, (%rcx)  # NOREX
	movb	%al, 1(%rcx)
	addq	$2, %rcx
	movq	%rcx, %r15
	cmpl	$1, %r13d
	leal	-1(%r13), %eax
	movl	%eax, %r13d
	jg	.LBB12_6
.LBB12_11:                              # %for.end.51
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	down_core16, .Lfunc_end12-down_core16
	.cfi_endproc

	.align	16, 0x90
	.type	down_core8_4,@function
down_core8_4:                           # @down_core8_4
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
	subq	$24, %rsp
.Ltmp133:
	.cfi_def_cfa_offset 80
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
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movslq	8(%rdi), %rax
	movl	12(%rdi), %ebp
	movl	%ebp, %ecx
	subl	%eax, %ecx
	jle	.LBB13_2
# BB#1:                                 # %if.then.3
	shll	$2, %ecx
	leaq	(%rbx,%rax,4), %r12
	movslq	%ecx, %r13
	movslq	%r9d, %r14
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	movq	%r9, 16(%rsp)           # 8-byte Spill
	callq	memset
	addq	%r14, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
	addq	%r14, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
	addq	%r14, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memset
	movq	16(%rsp), %r9           # 8-byte Reload
.LBB13_2:                               # %for.cond.9.preheader
	testl	%ebp, %ebp
	movq	%r15, %rsi
	jle	.LBB13_5
# BB#3:                                 # %for.body.12.lr.ph
	incl	%ebp
	movslq	%r9d, %rax
	leaq	(%rax,%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	1(%r9), %eax
	cltq
	leaq	(%rax,%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leal	2(%r9), %eax
	cltq
	leaq	(%rax,%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leal	3(%r9), %eax
	cltq
	leaq	(%rax,%rbx), %rdx
	leal	(%r9,%r9), %eax
	cltq
	leaq	1(%rax,%rbx), %rdi
	leal	2(%r9,%r9), %eax
	cltq
	leaq	(%rax,%rbx), %r12
	leal	3(%r9,%r9), %eax
	cltq
	leaq	(%rax,%rbx), %r13
	leal	(%r9,%r9,2), %eax
	cltq
	leaq	(%rax,%rbx), %r15
	leal	1(%r9,%r9,2), %eax
	cltq
	leaq	(%rax,%rbx), %r11
	leal	2(%r9,%r9,2), %eax
	cltq
	leaq	(%rax,%rbx), %r10
	leal	3(%r9,%r9,2), %ecx
	movq	%rdx, %r9
	movslq	%ecx, %rcx
	leaq	(%rcx,%rbx), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB13_4:                               # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rdx,4), %r8d
	movzbl	1(%rbx,%rdx,4), %r14d
	addl	%r8d, %r14d
	movq	%rsi, %rax
	movzbl	2(%rbx,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	3(%rbx,%rdx,4), %esi
	addl	%esi, %r14d
	movq	16(%rsp), %rsi          # 8-byte Reload
	movzbl	(%rsi,%rdx,4), %esi
	addl	%esi, %r14d
	movq	8(%rsp), %rsi           # 8-byte Reload
	movzbl	(%rsi,%rdx,4), %esi
	addl	%esi, %r14d
	movq	(%rsp), %rsi            # 8-byte Reload
	movzbl	(%rsi,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	(%r9,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	-1(%rdi,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	(%rdi,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	(%r12,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	(%r13,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	(%r15,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	(%r11,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	(%r10,%rdx,4), %esi
	addl	%esi, %r14d
	movzbl	(%rcx,%rdx,4), %esi
	leal	8(%rsi,%r14), %esi
	shrl	$4, %esi
	movb	%sil, (%rax,%rdx)
	movq	%rax, %rsi
	incq	%rdx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB13_4
.LBB13_5:                               # %for.end.91
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	down_core8_4, .Lfunc_end13-down_core8_4
	.cfi_endproc

	.align	16, 0x90
	.type	down_core8_3,@function
down_core8_3:                           # @down_core8_3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp141:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp142:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp143:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp144:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp146:
	.cfi_def_cfa_offset 64
.Ltmp147:
	.cfi_offset %rbx, -56
.Ltmp148:
	.cfi_offset %r12, -48
.Ltmp149:
	.cfi_offset %r13, -40
.Ltmp150:
	.cfi_offset %r14, -32
.Ltmp151:
	.cfi_offset %r15, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movslq	8(%rdi), %rax
	movl	12(%rdi), %ebp
	movl	%ebp, %ecx
	subl	%eax, %ecx
	jle	.LBB14_2
# BB#1:                                 # %if.then.3
	leal	(%rcx,%rcx,2), %ecx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rax,%rbx), %r12
	movslq	%ecx, %rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movslq	%r15d, %r13
	movl	$255, %esi
	movq	%r12, %rdi
	callq	memset
	addq	%r13, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memset
	addq	%r13, %r12
	movl	$255, %esi
	movq	%r12, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memset
.LBB14_2:                               # %for.cond.9.preheader
	testl	%ebp, %ebp
	jle	.LBB14_5
# BB#3:                                 # %for.body.12.lr.ph
	incl	%ebp
	movslq	%r15d, %r8
	leal	1(%r15), %ecx
	movslq	%ecx, %r9
	leal	2(%r15), %edx
	movslq	%edx, %rdx
	leal	(%r15,%r15), %esi
	movslq	%esi, %rsi
	leal	2(%r15,%r15), %edi
	movslq	%edi, %rdi
	.align	16, 0x90
.LBB14_4:                               # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	movzbl	1(%rbx), %ecx
	addl	%eax, %ecx
	movzbl	2(%rbx), %eax
	addl	%eax, %ecx
	movzbl	(%r8,%rbx), %eax
	addl	%eax, %ecx
	movzbl	(%r9,%rbx), %eax
	addl	%eax, %ecx
	movzbl	(%rdx,%rbx), %eax
	addl	%eax, %ecx
	movzbl	(%rsi,%rbx), %eax
	addl	%eax, %ecx
	movzbl	1(%rsi,%rbx), %eax
	addl	%eax, %ecx
	movzbl	(%rdi,%rbx), %eax
	leal	4(%rax,%rcx), %eax
	cltq
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$33, %rax
	addl	%ecx, %eax
	movb	%al, (%r14)
	incq	%r14
	addq	$3, %rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB14_4
.LBB14_5:                               # %for.end.54
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	down_core8_3, .Lfunc_end14-down_core8_3
	.cfi_endproc

	.align	16, 0x90
	.type	down_core8_2,@function
down_core8_2:                           # @down_core8_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp156:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp157:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp159:
	.cfi_def_cfa_offset 64
.Ltmp160:
	.cfi_offset %rbx, -56
.Ltmp161:
	.cfi_offset %r12, -48
.Ltmp162:
	.cfi_offset %r13, -40
.Ltmp163:
	.cfi_offset %r14, -32
.Ltmp164:
	.cfi_offset %r15, -24
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movslq	8(%rdi), %rax
	movl	12(%rdi), %r15d
	movl	%r15d, %ecx
	subl	%eax, %ecx
	jle	.LBB15_2
# BB#1:                                 # %if.then.3
	addl	%ecx, %ecx
	leaq	(%rbx,%rax,2), %r13
	movslq	%ecx, %r12
	movslq	%r9d, %rbp
	movl	$255, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	callq	memset
	addq	%r13, %rbp
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memset
	movl	4(%rsp), %r9d           # 4-byte Reload
.LBB15_2:                               # %for.cond.9.preheader
	testl	%r15d, %r15d
	jle	.LBB15_5
# BB#3:                                 # %for.body.12.lr.ph
	movslq	%r9d, %rax
	incl	%r15d
	.align	16, 0x90
.LBB15_4:                               # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %ecx
	movzbl	1(%rbx), %edx
	movzbl	(%rax,%rbx), %esi
	movzbl	1(%rax,%rbx), %edi
	addl	%ecx, %edx
	addl	%esi, %edx
	leal	2(%rdi,%rdx), %ecx
	shrl	$2, %ecx
	movb	%cl, (%r14)
	incq	%r14
	addq	$2, %rbx
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB15_4
.LBB15_5:                               # %for.end.29
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	down_core8_2, .Lfunc_end15-down_core8_2
	.cfi_endproc

	.align	16, 0x90
	.type	down_core8,@function
down_core8:                             # @down_core8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp167:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp169:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp170:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp172:
	.cfi_def_cfa_offset 80
.Ltmp173:
	.cfi_offset %rbx, -56
.Ltmp174:
	.cfi_offset %r12, -48
.Ltmp175:
	.cfi_offset %r13, -40
.Ltmp176:
	.cfi_offset %r14, -32
.Ltmp177:
	.cfi_offset %r15, -24
.Ltmp178:
	.cfi_offset %rbp, -16
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	8(%rdi), %eax
	movl	12(%rdi), %r15d
	movl	20(%rdi), %edx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%r15d, %ecx
	subl	%eax, %ecx
	imull	%edx, %ecx
	testl	%ecx, %ecx
	jle	.LBB16_4
# BB#1:                                 # %entry
	movq	8(%rsp), %rdx           # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB16_4
# BB#2:                                 # %for.body.lr.ph
	movq	8(%rsp), %rdx           # 8-byte Reload
	imull	%edx, %eax
	cltq
	leaq	(%rax,%rbx), %rbp
	movslq	%ecx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	4(%rsp), %r13           # 4-byte Folded Reload
	leal	1(%rdx), %r12d
	.align	16, 0x90
.LBB16_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	memset
	addq	%r13, %rbp
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB16_3
.LBB16_4:                               # %if.end.10
	testl	%r15d, %r15d
	movq	8(%rsp), %r11           # 8-byte Reload
	jle	.LBB16_11
# BB#5:                                 # %for.cond.17.preheader.lr.ph
	movl	%r11d, %r8d
	imull	%r8d, %r8d
	movl	%r11d, %eax
	movl	4(%rsp), %ecx           # 4-byte Reload
	imull	%ecx, %eax
	decl	%eax
	movl	%r8d, %r9d
	shrl	%r9d
	movslq	%eax, %r10
	negq	%r10
	movslq	%ecx, %rbp
	leal	1(%r11), %esi
	.align	16, 0x90
.LBB16_6:                               # %for.cond.17.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_7 Depth 2
                                        #       Child Loop BB16_8 Depth 3
	xorl	%eax, %eax
	testl	%r11d, %r11d
	movl	%r11d, %edx
	jle	.LBB16_10
	.align	16, 0x90
.LBB16_7:                               # %for.body.24.lr.ph
                                        #   Parent Loop BB16_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_8 Depth 3
	movl	%esi, %ecx
	.align	16, 0x90
.LBB16_8:                               # %for.body.24
                                        #   Parent Loop BB16_6 Depth=1
                                        #     Parent Loop BB16_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %edi
	addl	%edi, %eax
	addq	%rbp, %rbx
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB16_8
# BB#9:                                 # %for.end.30
                                        #   in Loop: Header=BB16_7 Depth=2
	addq	%r10, %rbx
	cmpl	$1, %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, %edx
	jg	.LBB16_7
.LBB16_10:                              # %for.end.35
                                        #   in Loop: Header=BB16_6 Depth=1
	addl	%r9d, %eax
	cltd
	idivl	%r8d
	movb	%al, (%r14)
	incq	%r14
	cmpl	$1, %r15d
	leal	-1(%r15), %eax
	movl	%eax, %r15d
	jg	.LBB16_6
.LBB16_11:                              # %for.end.41
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	down_core8, .Lfunc_end16-down_core8
	.cfi_endproc

	.globl	gx_downscaler_fin
	.align	16, 0x90
	.type	gx_downscaler_fin,@function
gx_downscaler_fin:                      # @gx_downscaler_fin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp179:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp181:
	.cfi_def_cfa_offset 32
.Ltmp182:
	.cfi_offset %rbx, -24
.Ltmp183:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	cmpl	$0, 616(%r14)
	jle	.LBB17_3
# BB#1:                                 # %for.body.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	24(%rax), %rdi
	movq	88(%r14,%rbx,8), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	incq	%rbx
	movslq	616(%r14), %rax
	cmpq	%rax, %rbx
	jl	.LBB17_2
.LBB17_3:                               # %for.end
	movl	$0, 616(%r14)
	movq	(%r14), %rax
	movq	24(%r14), %rsi
	movq	24(%rax), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	movq	$0, 24(%r14)
	movq	(%r14), %rax
	movq	40(%r14), %rsi
	movq	24(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	$0, 40(%r14)
	movq	(%r14), %rax
	movq	48(%r14), %rsi
	movq	24(%rax), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	$0, 48(%r14)
	movq	(%r14), %rax
	movq	56(%r14), %rsi
	movq	24(%rax), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
	movq	$0, 56(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	gx_downscaler_fin, .Lfunc_end17-gx_downscaler_fin
	.cfi_endproc

	.globl	gx_downscaler_init
	.align	16, 0x90
	.type	gx_downscaler_init,@function
gx_downscaler_init:                     # @gx_downscaler_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp185:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp187:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp188:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp189:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp190:
	.cfi_def_cfa_offset 96
.Ltmp191:
	.cfi_offset %rbx, -56
.Ltmp192:
	.cfi_offset %r12, -48
.Ltmp193:
	.cfi_offset %r13, -40
.Ltmp194:
	.cfi_offset %r14, -32
.Ltmp195:
	.cfi_offset %r15, -24
.Ltmp196:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rsi, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	104(%rsp), %r15
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gx_device_raster
	movl	%eax, %r12d
	movl	$3, %edi
	movl	$2, %ebp
	cmpl	$32, %r13d
	je	.LBB18_4
# BB#1:                                 # %entry
	cmpl	$34, %r13d
	jne	.LBB18_3
# BB#2:                                 # %if.then.2.i
	movl	$4, %ebp
	jmp	.LBB18_4
.LBB18_3:                               # %if.else.3.i
	movl	$1, %ebp
	movl	%r13d, %edi
.LBB18_4:                               # %decode_factor.exit
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	832(%rax), %eax
	imull	%ebp, %eax
	cltd
	idivl	%edi
	movl	%eax, %ebx
	testq	%r15, %r15
	je	.LBB18_6
# BB#5:                                 # %if.then
	movl	112(%rsp), %esi
	movq	%r15, %rax
	movl	%edi, %r15d
	movl	%ebx, %edi
	callq	*%rax
	movl	%r15d, %edi
.LBB18_6:                               # %if.end
	movl	%edi, 16(%rsp)          # 4-byte Spill
	xorl	%edx, %edx
	movq	%rax, %r15
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	cmovsl	%edx, %ecx
	movl	%edi, %eax
	imull	28(%rsp), %eax          # 4-byte Folded Reload
	imull	%ecx, %eax
	cltd
	idivl	%ebp
	addl	%edi, %r12d
	leal	-1(%rax,%r12), %ebp
	xorl	%esi, %esi
	movl	$624, %edx              # imm = 0x270
	movq	%r14, %rdi
	callq	memset
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 8(%r14)
	movl	%r15d, 12(%r14)
	movl	%ebp, 16(%r14)
	movl	%r13d, 20(%r14)
	movl	$0, 616(%r14)
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	%edx, 32(%r14)
	movl	$-15, %r12d
	cmpl	$8, %r13d
	jg	.LBB18_35
# BB#7:                                 # %if.else
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	96(%rsp), %ebx
	movl	$down_core16, %eax
	cmpl	$16, %edx
	jne	.LBB18_10
# BB#8:                                 # %if.else
	cmpl	$16, 24(%rsp)           # 4-byte Folded Reload
	jne	.LBB18_10
# BB#9:                                 # %if.else
	cmpl	$1, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB18_27
.LBB18_10:                              # %if.else.25
	cmpl	$8, %edx
	sete	%cl
	cmpl	$1, 24(%rsp)            # 4-byte Folded Reload
	sete	%al
	andb	%cl, %al
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	jne	.LBB18_13
# BB#11:                                # %if.else.25
	cmpl	$4, 28(%rsp)            # 4-byte Folded Reload
	jne	.LBB18_13
# BB#12:                                # %if.then.31
	cmpl	$1, %ebx
	movl	$down_core4_mfs, %ecx
	movl	$down_core4, %eax
	cmovgq	%rcx, %rax
	jmp	.LBB18_27
.LBB18_13:                              # %if.else.36
	cmpl	$1, 28(%rsp)            # 4-byte Folded Reload
	sete	%cl
	andb	%cl, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB18_17
# BB#14:                                # %if.then.42
	movl	$down_core_mfs, %eax
	cmpl	$1, %ebx
	jg	.LBB18_27
# BB#15:                                # %if.else.45
	decl	%r13d
	movl	$down_core, %eax
	cmpl	$4, %r13d
	jae	.LBB18_27
# BB#16:                                # %switch.lookup
	movslq	%r13d, %rax
	leaq	.Lswitch.table.2(,%rax,8), %rax
	jmp	.LBB18_24
.LBB18_17:                              # %if.else.63
	cmpl	24(%rsp), %edx          # 4-byte Folded Reload
	jne	.LBB18_20
# BB#18:                                # %if.else.63
	cmpl	$1, %r13d
	jne	.LBB18_20
# BB#19:                                # %if.end.109.thread104
	movq	$0, 72(%r14)
	xorl	%r12d, %r12d
	jmp	.LBB18_36
.LBB18_20:                              # %if.else.68
	cmpl	$8, %edx
	sete	%al
	cmpl	$8, 24(%rsp)            # 4-byte Folded Reload
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	cmpl	$1, %eax
	jne	.LBB18_25
# BB#21:                                # %if.else.68
	cmpl	$1, 28(%rsp)            # 4-byte Folded Reload
	jne	.LBB18_25
# BB#22:                                # %if.then.74
	addl	$-2, %r13d
	movl	$down_core8, %eax
	cmpl	$3, %r13d
	jae	.LBB18_27
# BB#23:                                # %switch.lookup91
	movslq	%r13d, %rax
	leaq	.Lswitch.table.4(,%rax,8), %rax
.LBB18_24:                              # %if.end.109
	movq	(%rax), %rax
	movq	%rax, 72(%r14)
	xorl	%r12d, %r12d
	testq	%rax, %rax
	jne	.LBB18_28
	jmp	.LBB18_36
.LBB18_25:                              # %if.else.87
	cmpl	$3, 28(%rsp)            # 4-byte Folded Reload
	sete	%dl
	movl	$down_core24, %eax
	testb	%dl, %cl
	jne	.LBB18_27
# BB#26:                                # %if.else.94
	cmpl	$4, 28(%rsp)            # 4-byte Folded Reload
	sete	%dl
	movl	$down_core32, %eax
	testb	%dl, %cl
	je	.LBB18_35
.LBB18_27:                              # %if.end.109.thread
	movq	%rax, 72(%r14)
.LBB18_28:                              # %if.then.111
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	imull	16(%rsp), %ebp          # 4-byte Folded Reload
	movl	$.L.str.4, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, 48(%r14)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB18_36
# BB#29:                                # %if.end.118
	cmpl	$2, %ebx
	jl	.LBB18_32
# BB#30:                                # %if.then.120
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	1(%rax), %ebx
	movl	$.L.str.2, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, 24(%r14)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB18_35
# BB#31:                                # %if.end.130
	movslq	%ebx, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB18_32:                              # %if.end.134
	xorl	%r12d, %r12d
	cmpl	$1, 24(%rsp)            # 4-byte Folded Reload
	jne	.LBB18_36
# BB#33:                                # %if.then.137
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movq	8(%rsp), %rax           # 8-byte Reload
	addl	$3, %eax
	imull	28(%rsp), %eax          # 4-byte Folded Reload
	movslq	%eax, %rbx
	shlq	$2, %rbx
	movl	$.L.str.3, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, 40(%r14)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB18_35
# BB#34:                                # %if.end.152
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memset
	jmp	.LBB18_36
.LBB18_35:                              # %cleanup
	movq	%r14, %rdi
	callq	gx_downscaler_fin
.LBB18_36:                              # %cleanup.161
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gx_downscaler_init, .Lfunc_end18-gx_downscaler_init
	.cfi_endproc

	.align	16, 0x90
	.type	down_core4_mfs,@function
down_core4_mfs:                         # @down_core4_mfs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp198:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp199:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp200:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp201:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp202:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp203:
	.cfi_def_cfa_offset 160
.Ltmp204:
	.cfi_offset %rbx, -56
.Ltmp205:
	.cfi_offset %r12, -48
.Ltmp206:
	.cfi_offset %r13, -40
.Ltmp207:
	.cfi_offset %r14, -32
.Ltmp208:
	.cfi_offset %r15, -24
.Ltmp209:
	.cfi_offset %rbp, -16
	movl	%r9d, 96(%rsp)          # 4-byte Spill
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	8(%rdi), %eax
	movl	12(%rdi), %r13d
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movl	20(%rdi), %r15d
	movl	%r15d, %ecx
	imull	%ecx, %ecx
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%r13d, %ecx
	subl	%eax, %ecx
	imull	%r15d, %ecx
	testl	%ecx, %ecx
	jle	.LBB19_4
# BB#1:                                 # %entry
	testl	%r15d, %r15d
	jle	.LBB19_4
# BB#2:                                 # %for.body.lr.ph
	shll	$2, %ecx
	imull	%r15d, %eax
	shll	$2, %eax
	cltq
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %rbp
	movslq	%ecx, %r12
	movslq	96(%rsp), %r14          # 4-byte Folded Reload
	leal	1(,%r15,4), %ebx
	.align	16, 0x90
.LBB19_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memset
	addq	%r14, %rbp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB19_3
.LBB19_4:                               # %if.end.16
	movslq	%r13d, %r9
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	imull	$255, %eax, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	shll	$7, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	movl	96(%rsp), %esi          # 4-byte Reload
	imull	%esi, %eax
	movl	48(%rsp), %ecx          # 4-byte Reload
	testb	$1, %cl
	jne	.LBB19_25
# BB#5:                                 # %if.then.19
	addl	$-4, %eax
	leaq	3(%r9), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	incq	%r9
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movslq	%eax, %r11
	negq	%r11
	movslq	%esi, %rdi
	leal	1(%r15), %eax
	movq	%r15, 88(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rsi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_6:                               # %for.body.25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_9 Depth 2
                                        #       Child Loop BB19_10 Depth 3
                                        #         Child Loop BB19_11 Depth 4
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	24(%rcx), %r8
	movq	40(%rcx), %rcx
	movq	%rbp, %rdx
	imulq	%r9, %rdx
	movb	$0, (%r8,%rdx)
	testl	%r13d, %r13d
	jle	.LBB19_7
# BB#8:                                 # %for.body.40.lr.ph
                                        #   in Loop: Header=BB19_6 Depth=1
	addq	%rdx, %r8
	movq	%r8, 96(%rsp)           # 8-byte Spill
	movq	%rbp, %rdx
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	imulq	24(%rsp), %rdx          # 8-byte Folded Reload
	leaq	8(%rcx,%rdx,4), %r15
	xorl	%r8d, %r8d
	movq	%rsi, %r10
	movq	%rsi, %r9
	movq	%r9, 40(%rsp)           # 8-byte Spill
	jmp	.LBB19_9
.LBB19_18:                              # %if.then.78
                                        #   in Loop: Header=BB19_9 Depth=2
	orb	$1, %bl
	movb	%bl, (%r12)
	orb	$1, 1(%r12)
	movb	$1, %r8b
	jmp	.LBB19_22
	.align	16, 0x90
.LBB19_9:                               # %for.body.40
                                        #   Parent Loop BB19_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_10 Depth 3
                                        #         Child Loop BB19_11 Depth 4
	movq	%r10, %rsi
	movq	96(%rsp), %r12          # 8-byte Reload
	leaq	1(%r12), %rdx
	addl	(%r15), %ebx
	movq	88(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	%ecx, %r14d
	movl	%ebx, %ebp
	jle	.LBB19_13
	.align	16, 0x90
.LBB19_10:                              # %for.body.49.lr.ph
                                        #   Parent Loop BB19_6 Depth=1
                                        #     Parent Loop BB19_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB19_11 Depth 4
	movl	%eax, %ebx
	.align	16, 0x90
.LBB19_11:                              # %for.body.49
                                        #   Parent Loop BB19_6 Depth=1
                                        #     Parent Loop BB19_9 Depth=2
                                        #       Parent Loop BB19_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r9), %r10d
	addl	%r10d, %ebp
	addq	%rdi, %r9
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB19_11
# BB#12:                                # %for.end.56
                                        #   in Loop: Header=BB19_10 Depth=3
	addq	%r11, %r9
	cmpl	$1, %r14d
	leal	-1(%r14), %ebx
	movl	%ebx, %r14d
	jg	.LBB19_10
.LBB19_13:                              # %for.end.61
                                        #   in Loop: Header=BB19_9 Depth=2
	movq	%rdx, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movzbl	(%rcx), %edx
	movb	$0, (%rcx)
	testb	%r8b, %r8b
	jne	.LBB19_15
# BB#14:                                # %for.end.61
                                        #   in Loop: Header=BB19_9 Depth=2
	movl	%edx, %ebx
	andl	$1, %ebx
	jne	.LBB19_15
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB19_9 Depth=2
	cmpl	84(%rsp), %ebp          # 4-byte Folded Reload
	jge	.LBB19_20
# BB#17:                                # %if.then.72
                                        #   in Loop: Header=BB19_9 Depth=2
	movq	%rsi, %r10
	movb	$0, (%r10)
	addq	$4, %r10
	andl	$6, %edx
	cmpl	$6, %edx
	movb	(%r12), %bl
	jne	.LBB19_18
# BB#19:                                # %if.else.85
                                        #   in Loop: Header=BB19_9 Depth=2
	orb	$2, %bl
	movb	%bl, (%r12)
	orb	$4, 1(%r12)
	jmp	.LBB19_21
	.align	16, 0x90
.LBB19_15:                              # %if.then.68
                                        #   in Loop: Header=BB19_9 Depth=2
	movq	%rsi, %r10
	movb	$0, (%r10)
	addq	$4, %r10
	jmp	.LBB19_21
	.align	16, 0x90
.LBB19_20:                              # %if.else.95
                                        #   in Loop: Header=BB19_9 Depth=2
	movq	%rsi, %r10
	movb	$1, (%r10)
	addq	$4, %r10
	subl	80(%rsp), %ebp          # 4-byte Folded Reload
.LBB19_21:                              # %if.end.99
                                        #   in Loop: Header=BB19_9 Depth=2
	xorl	%r8d, %r8d
.LBB19_22:                              # %if.end.99
                                        #   in Loop: Header=BB19_9 Depth=2
	imull	$7, %ebp, %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	shrl	$28, %ebx
	addl	%edx, %ebx
	sarl	$4, %ebx
	leal	(%rbp,%rbp,2), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%ecx, %edx
	sarl	$4, %edx
	leal	(%rbp,%rbp,4), %esi
	movl	%esi, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%esi, %ecx
	sarl	$4, %ecx
	subl	%ebx, %ebp
	subl	%edx, %ebp
	subl	%ecx, %ebp
	addl	%edx, -8(%r15)
	addl	%ecx, -4(%r15)
	movl	%ebp, (%r15)
	addq	$4, %r15
	cmpl	$1, %r13d
	leal	-1(%r13), %ecx
	movl	%ecx, %r13d
	jg	.LBB19_9
	jmp	.LBB19_23
	.align	16, 0x90
.LBB19_7:                               #   in Loop: Header=BB19_6 Depth=1
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
.LBB19_23:                              # %for.end.115
                                        #   in Loop: Header=BB19_6 Depth=1
	movq	40(%rsp), %rsi          # 8-byte Reload
	incq	%rsi
	movq	48(%rsp), %rbp          # 8-byte Reload
	incq	%rbp
	cmpq	$4, %rbp
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	72(%rsp), %r9           # 8-byte Reload
	jne	.LBB19_6
# BB#24:
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB19_45
.LBB19_25:                              # %if.else.119
	addl	$4, %eax
	movl	%r15d, %ecx
	imull	%r13d, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	32(%rsp), %rbp          # 8-byte Reload
	leaq	-4(%rbp,%rcx), %rbx
	addq	%rcx, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leaq	3(%r9), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	1(%r9), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movslq	%eax, %rdx
	negq	%rdx
	movslq	%esi, %rdi
	leal	1(%r15), %r14d
	movq	%r15, 88(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB19_26:                              # %for.body.131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_29 Depth 2
                                        #       Child Loop BB19_30 Depth 3
                                        #         Child Loop BB19_31 Depth 4
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	40(%rcx), %rbp
	movq	%rax, %r10
	imulq	40(%rsp), %r10          # 8-byte Folded Reload
	addq	24(%rcx), %r10
	movb	$0, (%r9,%r10)
	testl	%r13d, %r13d
	jle	.LBB19_27
# BB#28:                                # %for.body.153.lr.ph
                                        #   in Loop: Header=BB19_26 Depth=1
	addq	%r9, %r10
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)          # 8-byte Spill
	imulq	24(%rsp), %rcx          # 8-byte Folded Reload
	leaq	(%rbp,%rcx,4), %rax
	leaq	(%rax,%r9,4), %rcx
	xorl	%r15d, %r15d
	movl	%r13d, %r8d
	movq	%rbx, %r13
	movq	%rbx, %r9
	movq	%r9, 96(%rsp)           # 8-byte Spill
	jmp	.LBB19_29
.LBB19_38:                              # %if.then.194
                                        #   in Loop: Header=BB19_29 Depth=2
	orb	$1, %al
	movb	%al, -1(%rbx)
	orb	$1, (%rbx)
	movb	$1, %r15b
	jmp	.LBB19_42
	.align	16, 0x90
.LBB19_29:                              # %for.body.153
                                        #   Parent Loop BB19_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_30 Depth 3
                                        #         Child Loop BB19_31 Depth 4
	movq	%r10, %rbx
	leaq	-1(%rbx), %r10
	addl	(%rcx), %r12d
	movq	88(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	%r12d, %r11d
	jle	.LBB19_33
	.align	16, 0x90
.LBB19_30:                              # %for.body.162.lr.ph
                                        #   Parent Loop BB19_26 Depth=1
                                        #     Parent Loop BB19_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB19_31 Depth 4
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB19_31:                              # %for.body.162
                                        #   Parent Loop BB19_26 Depth=1
                                        #     Parent Loop BB19_29 Depth=2
                                        #       Parent Loop BB19_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r9), %esi
	addl	%esi, %r11d
	addq	%rdi, %r9
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB19_31
# BB#32:                                # %for.end.169
                                        #   in Loop: Header=BB19_30 Depth=3
	addq	%rdx, %r9
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	jg	.LBB19_30
.LBB19_33:                              # %for.end.175
                                        #   in Loop: Header=BB19_29 Depth=2
	movzbl	(%r10), %eax
	movb	$0, (%r10)
	testb	%r15b, %r15b
	jne	.LBB19_35
# BB#34:                                # %for.end.175
                                        #   in Loop: Header=BB19_29 Depth=2
	movl	%eax, %esi
	andl	$1, %esi
	jne	.LBB19_35
# BB#36:                                # %if.else.185
                                        #   in Loop: Header=BB19_29 Depth=2
	cmpl	84(%rsp), %r11d         # 4-byte Folded Reload
	jge	.LBB19_40
# BB#37:                                # %if.then.188
                                        #   in Loop: Header=BB19_29 Depth=2
	movb	$0, (%r13)
	addq	$-4, %r13
	andl	$6, %eax
	cmpl	$6, %eax
	movb	(%r10), %al
	jne	.LBB19_38
# BB#39:                                # %if.else.203
                                        #   in Loop: Header=BB19_29 Depth=2
	orb	$2, %al
	movb	%al, -1(%rbx)
	orb	$4, (%rbx)
	jmp	.LBB19_41
	.align	16, 0x90
.LBB19_35:                              # %if.then.183
                                        #   in Loop: Header=BB19_29 Depth=2
	movb	$0, (%r13)
	addq	$-4, %r13
	jmp	.LBB19_41
	.align	16, 0x90
.LBB19_40:                              # %if.else.213
                                        #   in Loop: Header=BB19_29 Depth=2
	movb	$1, (%r13)
	addq	$-4, %r13
	subl	80(%rsp), %r11d         # 4-byte Folded Reload
.LBB19_41:                              # %if.end.217
                                        #   in Loop: Header=BB19_29 Depth=2
	xorl	%r15d, %r15d
.LBB19_42:                              # %if.end.217
                                        #   in Loop: Header=BB19_29 Depth=2
	imull	$7, %r11d, %eax
	movl	%eax, %r12d
	sarl	$31, %r12d
	shrl	$28, %r12d
	addl	%eax, %r12d
	sarl	$4, %r12d
	leal	(%r11,%r11,2), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%eax, %esi
	sarl	$4, %esi
	leal	(%r11,%r11,4), %eax
	movl	%eax, %ebx
	sarl	$31, %ebx
	shrl	$28, %ebx
	addl	%eax, %ebx
	sarl	$4, %ebx
	subl	%r12d, %r11d
	subl	%esi, %r11d
	subl	%ebx, %r11d
	addl	%esi, 8(%rcx)
	addl	%ebx, 4(%rcx)
	movl	%r11d, (%rcx)
	addq	$-4, %rcx
	cmpl	$1, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jg	.LBB19_29
	jmp	.LBB19_43
	.align	16, 0x90
.LBB19_27:                              #   in Loop: Header=BB19_26 Depth=1
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
.LBB19_43:                              # %for.end.234
                                        #   in Loop: Header=BB19_26 Depth=1
	movq	96(%rsp), %rbx          # 8-byte Reload
	incq	%rbx
	movq	48(%rsp), %rax          # 8-byte Reload
	incq	%rax
	cmpq	$4, %rax
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	72(%rsp), %r9           # 8-byte Reload
	jne	.LBB19_26
# BB#44:                                # %for.end.237
	subq	8(%rsp), %rbp           # 8-byte Folded Reload
	movq	16(%rsp), %rdi          # 8-byte Reload
.LBB19_45:                              # %if.end.242
	testl	%r13d, %r13d
	jle	.LBB19_54
# BB#46:                                # %for.body.i.preheader
	leal	1(,%r13,4), %ecx
	movl	$128, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB19_47:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbp)
	movl	$0, %esi
	je	.LBB19_49
# BB#48:                                # %select.mid
                                        #   in Loop: Header=BB19_47 Depth=1
	movl	%edx, %esi
.LBB19_49:                              # %select.end
                                        #   in Loop: Header=BB19_47 Depth=1
	orl	%esi, %eax
	sarl	%edx
	jne	.LBB19_51
# BB#50:                                # %if.then.2.i
                                        #   in Loop: Header=BB19_47 Depth=1
	movb	%al, (%rdi)
	incq	%rdi
	xorl	%eax, %eax
	movl	$128, %edx
.LBB19_51:                              # %for.inc.i
                                        #   in Loop: Header=BB19_47 Depth=1
	incq	%rbp
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB19_47
# BB#52:                                # %for.end.i
	cmpl	$128, %edx
	je	.LBB19_54
# BB#53:                                # %if.then.7.i
	movb	%al, (%rdi)
.LBB19_54:                              # %pack_8to1.exit
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	down_core4_mfs, .Lfunc_end19-down_core4_mfs
	.cfi_endproc

	.align	16, 0x90
	.type	down_core4,@function
down_core4:                             # @down_core4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp211:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp212:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp213:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp214:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp215:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp216:
	.cfi_def_cfa_offset 144
.Ltmp217:
	.cfi_offset %rbx, -56
.Ltmp218:
	.cfi_offset %r12, -48
.Ltmp219:
	.cfi_offset %r13, -40
.Ltmp220:
	.cfi_offset %r14, -32
.Ltmp221:
	.cfi_offset %r15, -24
.Ltmp222:
	.cfi_offset %rbp, -16
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movl	8(%rdi), %eax
	movl	12(%rdi), %r13d
	movl	20(%rdi), %r14d
	movl	%r14d, %r15d
	imull	%r15d, %r15d
	movl	%r13d, %ecx
	subl	%eax, %ecx
	imull	%r14d, %ecx
	testl	%ecx, %ecx
	jle	.LBB20_4
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	jle	.LBB20_4
# BB#2:                                 # %for.body.lr.ph
	shll	$2, %ecx
	imull	%r14d, %eax
	shll	$2, %eax
	cltq
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %rbp
	movslq	%ecx, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	36(%rsp), %rbx          # 4-byte Folded Reload
	leal	1(%r14), %r12d
	.align	16, 0x90
.LBB20_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	memset
	addq	%rbx, %rbp
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB20_3
.LBB20_4:                               # %if.end.16
	movq	%r13, %rbx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movslq	%ebx, %rcx
	imull	$255, %r15d, %r9d
	shll	$7, %r15d
	movl	%r14d, %eax
	movl	36(%rsp), %edi          # 4-byte Reload
	imull	%edi, %eax
	movl	56(%rsp), %edx          # 4-byte Reload
	testb	$1, %dl
	jne	.LBB20_19
# BB#5:                                 # %if.then.19
	addl	$-4, %eax
	addq	$3, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movslq	%eax, %rdx
	negq	%rdx
	movslq	%edi, %rsi
	leal	1(%r14), %r12d
	xorl	%edi, %edi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB20_6:                               # %for.body.25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_9 Depth 2
                                        #       Child Loop BB20_10 Depth 3
                                        #         Child Loop BB20_11 Depth 4
	testl	%ebx, %ebx
	jle	.LBB20_7
# BB#8:                                 # %for.body.36.lr.ph
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdi), %r11
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	40(%rcx), %rcx
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	imulq	56(%rsp), %rdi          # 8-byte Folded Reload
	leaq	8(%rcx,%rdi,4), %r8
	movl	%ebx, %r10d
	movq	%r11, %rbx
	.align	16, 0x90
.LBB20_9:                               # %for.body.36
                                        #   Parent Loop BB20_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_10 Depth 3
                                        #         Child Loop BB20_11 Depth 4
	addl	(%r8), %eax
	testl	%r14d, %r14d
	movl	%r14d, %ecx
	jle	.LBB20_13
	.align	16, 0x90
.LBB20_10:                              # %for.body.45.lr.ph
                                        #   Parent Loop BB20_6 Depth=1
                                        #     Parent Loop BB20_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB20_11 Depth 4
	movl	%r12d, %edi
	.align	16, 0x90
.LBB20_11:                              # %for.body.45
                                        #   Parent Loop BB20_6 Depth=1
                                        #     Parent Loop BB20_9 Depth=2
                                        #       Parent Loop BB20_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbx), %r13d
	addl	%r13d, %eax
	addq	%rsi, %rbx
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB20_11
# BB#12:                                # %for.end.52
                                        #   in Loop: Header=BB20_10 Depth=3
	addq	%rdx, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB20_10
.LBB20_13:                              # %for.end.57
                                        #   in Loop: Header=BB20_9 Depth=2
	cmpl	%r15d, %eax
	jge	.LBB20_14
# BB#15:                                # %if.else
                                        #   in Loop: Header=BB20_9 Depth=2
	movb	$0, (%r11)
	jmp	.LBB20_16
	.align	16, 0x90
.LBB20_14:                              # %if.then.60
                                        #   in Loop: Header=BB20_9 Depth=2
	movb	$1, (%r11)
	subl	%r9d, %eax
.LBB20_16:                              # %if.end.64
                                        #   in Loop: Header=BB20_9 Depth=2
	addq	$4, %r11
	imull	$7, %eax, %edi
	movl	%edi, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%edi, %ecx
	sarl	$4, %ecx
	leal	(%rax,%rax,2), %ebp
	movl	%ebp, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%ebp, %edi
	sarl	$4, %edi
	leal	(%rax,%rax,4), %r13d
	movl	%r13d, %ebp
	sarl	$31, %ebp
	shrl	$28, %ebp
	addl	%r13d, %ebp
	sarl	$4, %ebp
	subl	%ecx, %eax
	subl	%edi, %eax
	subl	%ebp, %eax
	addl	%edi, -8(%r8)
	addl	%ebp, -4(%r8)
	movl	%eax, (%r8)
	addq	$4, %r8
	cmpl	$1, %r10d
	leal	-1(%r10), %eax
	movl	%eax, %r10d
	movl	%ecx, %eax
	jg	.LBB20_9
	jmp	.LBB20_17
	.align	16, 0x90
.LBB20_7:                               #   in Loop: Header=BB20_6 Depth=1
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movl	%eax, %ecx
.LBB20_17:                              # %for.inc.79
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	incq	%rdi
	cmpq	$4, %rdi
	movl	%ecx, %eax
	movq	80(%rsp), %rbx          # 8-byte Reload
	jne	.LBB20_6
# BB#18:
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB20_33
.LBB20_19:                              # %if.else.81
	addl	$4, %eax
	leaq	3(%rcx), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leal	(,%rbx,4), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	imull	%r14d, %ecx
	movslq	%ecx, %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rcx), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leaq	-4(%rdx,%rcx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movslq	%eax, %r13
	negq	%r13
	movslq	%edi, %rsi
	leal	1(%r14), %edx
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB20_20:                              # %for.body.88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_23 Depth 2
                                        #       Child Loop BB20_24 Depth 3
                                        #         Child Loop BB20_25 Depth 4
	testl	%ebx, %ebx
	jle	.LBB20_21
# BB#22:                                # %for.body.106.lr.ph
                                        #   in Loop: Header=BB20_20 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx), %r11
	movq	%rcx, %rax
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	imulq	40(%rsp), %rax          # 8-byte Folded Reload
	shlq	$2, %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	addq	40(%rcx), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx,4), %r12
	movl	%ebx, %r8d
	movq	%r11, %rax
	.align	16, 0x90
.LBB20_23:                              # %for.body.106
                                        #   Parent Loop BB20_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_24 Depth 3
                                        #         Child Loop BB20_25 Depth 4
	addl	(%r12), %ebp
	testl	%r14d, %r14d
	movl	%r14d, %ecx
	jle	.LBB20_27
	.align	16, 0x90
.LBB20_24:                              # %for.body.115.lr.ph
                                        #   Parent Loop BB20_20 Depth=1
                                        #     Parent Loop BB20_23 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB20_25 Depth 4
	movl	%edx, %edi
	.align	16, 0x90
.LBB20_25:                              # %for.body.115
                                        #   Parent Loop BB20_20 Depth=1
                                        #     Parent Loop BB20_23 Depth=2
                                        #       Parent Loop BB20_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rax), %ebx
	addl	%ebx, %ebp
	addq	%rsi, %rax
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB20_25
# BB#26:                                # %for.end.122
                                        #   in Loop: Header=BB20_24 Depth=3
	addq	%r13, %rax
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB20_24
.LBB20_27:                              # %for.end.128
                                        #   in Loop: Header=BB20_23 Depth=2
	cmpl	%r15d, %ebp
	jge	.LBB20_28
# BB#29:                                # %if.else.134
                                        #   in Loop: Header=BB20_23 Depth=2
	movb	$0, (%r11)
	jmp	.LBB20_30
	.align	16, 0x90
.LBB20_28:                              # %if.then.131
                                        #   in Loop: Header=BB20_23 Depth=2
	movb	$1, (%r11)
	subl	%r9d, %ebp
.LBB20_30:                              # %if.end.136
                                        #   in Loop: Header=BB20_23 Depth=2
	addq	$-4, %r11
	imull	$7, %ebp, %ecx
	movl	%ecx, %r10d
	sarl	$31, %r10d
	shrl	$28, %r10d
	addl	%ecx, %r10d
	sarl	$4, %r10d
	leal	(%rbp,%rbp,2), %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%ecx, %edi
	sarl	$4, %edi
	leal	(%rbp,%rbp,4), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	shrl	$28, %ebx
	addl	%ecx, %ebx
	sarl	$4, %ebx
	subl	%r10d, %ebp
	subl	%edi, %ebp
	subl	%ebx, %ebp
	addl	%edi, 8(%r12)
	addl	%ebx, 4(%r12)
	movl	%ebp, (%r12)
	addq	$-4, %r12
	cmpl	$1, %r8d
	leal	-1(%r8), %ecx
	movl	%ecx, %r8d
	movl	%r10d, %ebp
	jg	.LBB20_23
	jmp	.LBB20_31
	.align	16, 0x90
.LBB20_21:                              #   in Loop: Header=BB20_20 Depth=1
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	%ebp, %r10d
.LBB20_31:                              # %for.inc.154
                                        #   in Loop: Header=BB20_20 Depth=1
	movq	72(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	cmpq	$4, %rcx
	movl	%r10d, %ebp
	movq	80(%rsp), %rbx          # 8-byte Reload
	jne	.LBB20_20
# BB#32:                                # %for.end.156
	movslq	20(%rsp), %rax          # 4-byte Folded Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, %rbp
	movq	24(%rsp), %rdi          # 8-byte Reload
.LBB20_33:                              # %if.end.165
	testl	%ebx, %ebx
	jle	.LBB20_42
# BB#34:                                # %for.body.i.preheader
	leal	1(,%rbx,4), %ecx
	movl	$128, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB20_35:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbp)
	movl	$0, %esi
	je	.LBB20_37
# BB#36:                                # %select.mid
                                        #   in Loop: Header=BB20_35 Depth=1
	movl	%edx, %esi
.LBB20_37:                              # %select.end
                                        #   in Loop: Header=BB20_35 Depth=1
	orl	%esi, %eax
	sarl	%edx
	jne	.LBB20_39
# BB#38:                                # %if.then.2.i
                                        #   in Loop: Header=BB20_35 Depth=1
	movb	%al, (%rdi)
	incq	%rdi
	xorl	%eax, %eax
	movl	$128, %edx
.LBB20_39:                              # %for.inc.i
                                        #   in Loop: Header=BB20_35 Depth=1
	incq	%rbp
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB20_35
# BB#40:                                # %for.end.i
	cmpl	$128, %edx
	je	.LBB20_42
# BB#41:                                # %if.then.7.i
	movb	%al, (%rdi)
.LBB20_42:                              # %pack_8to1.exit
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	down_core4, .Lfunc_end20-down_core4
	.cfi_endproc

	.align	16, 0x90
	.type	down_core24,@function
down_core24:                            # @down_core24
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp224:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp225:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp226:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp227:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp228:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp229:
	.cfi_def_cfa_offset 80
.Ltmp230:
	.cfi_offset %rbx, -56
.Ltmp231:
	.cfi_offset %r12, -48
.Ltmp232:
	.cfi_offset %r13, -40
.Ltmp233:
	.cfi_offset %r14, -32
.Ltmp234:
	.cfi_offset %r15, -24
.Ltmp235:
	.cfi_offset %rbp, -16
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	8(%rdi), %eax
	movl	12(%rdi), %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	20(%rdi), %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	subl	%eax, %ecx
	imull	%edx, %ecx
	testl	%ecx, %ecx
	jle	.LBB21_4
# BB#1:                                 # %entry
	movq	16(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB21_4
# BB#2:                                 # %for.body.lr.ph
	leal	(%rcx,%rcx,2), %ecx
	movq	16(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %eax
	leal	(%rax,%rax,2), %eax
	cltq
	leaq	(%rax,%rbx), %rbp
	movslq	%ecx, %r12
	movslq	12(%rsp), %r13          # 4-byte Folded Reload
	leal	1(%rdx), %r15d
	.align	16, 0x90
.LBB21_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memset
	addq	%r13, %rbp
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB21_3
.LBB21_4:                               # %if.end.12
	movq	(%rsp), %r13            # 8-byte Reload
	testl	%r13d, %r13d
	movq	16(%rsp), %r12          # 8-byte Reload
	jle	.LBB21_23
# BB#5:                                 # %for.cond.21.preheader.lr.ph
	movslq	%r12d, %rax
	movl	%eax, %r9d
	imull	%eax, %r9d
	movl	%r12d, %ecx
	movl	12(%rsp), %edx          # 4-byte Reload
	imull	%edx, %ecx
	addl	$-3, %ecx
	leaq	(%rax,%rax,2), %rax
	movl	$1, %r8d
	subq	%rax, %r8
	movl	%r9d, %r10d
	shrl	%r10d
	movslq	%ecx, %r11
	negq	%r11
	movslq	%edx, %rdi
	leal	1(%r12), %ebp
	.align	16, 0x90
.LBB21_6:                               # %for.cond.21.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_8 Depth 2
                                        #       Child Loop BB21_9 Depth 3
                                        #     Child Loop BB21_13 Depth 2
                                        #       Child Loop BB21_14 Depth 3
                                        #     Child Loop BB21_17 Depth 2
                                        #       Child Loop BB21_18 Depth 3
	testl	%r12d, %r12d
	jle	.LBB21_20
# BB#7:                                 #   in Loop: Header=BB21_6 Depth=1
	movl	%r12d, %ecx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB21_8:                               # %for.body.28.lr.ph
                                        #   Parent Loop BB21_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_9 Depth 3
	movl	%ebp, %edx
	.align	16, 0x90
.LBB21_9:                               # %for.body.28
                                        #   Parent Loop BB21_6 Depth=1
                                        #     Parent Loop BB21_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %esi
	addl	%esi, %eax
	addq	%rdi, %rbx
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB21_9
# BB#10:                                # %for.end.34
                                        #   in Loop: Header=BB21_8 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB21_8
# BB#11:                                # %for.end.39
                                        #   in Loop: Header=BB21_6 Depth=1
	addl	%r10d, %eax
	cltd
	idivl	%r9d
	movb	%al, (%r14)
	testl	%r12d, %r12d
	jle	.LBB21_21
# BB#12:                                # %for.body.53.lr.ph.preheader
                                        #   in Loop: Header=BB21_6 Depth=1
	addq	%r8, %rbx
	xorl	%eax, %eax
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB21_13:                              # %for.body.53.lr.ph
                                        #   Parent Loop BB21_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_14 Depth 3
	movl	%ebp, %edx
	.align	16, 0x90
.LBB21_14:                              # %for.body.53
                                        #   Parent Loop BB21_6 Depth=1
                                        #     Parent Loop BB21_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %esi
	addl	%esi, %eax
	addq	%rdi, %rbx
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB21_14
# BB#15:                                # %for.end.60
                                        #   in Loop: Header=BB21_13 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB21_13
# BB#16:                                # %for.end.66
                                        #   in Loop: Header=BB21_6 Depth=1
	addq	%r8, %rbx
	addl	%r10d, %eax
	cltd
	idivl	%r9d
	leaq	2(%r14), %r15
	movb	%al, 1(%r14)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	movl	%r12d, %edx
	jle	.LBB21_22
	.align	16, 0x90
.LBB21_17:                              # %for.body.82.lr.ph
                                        #   Parent Loop BB21_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_18 Depth 3
	movl	%ebp, %esi
	.align	16, 0x90
.LBB21_18:                              # %for.body.82
                                        #   Parent Loop BB21_6 Depth=1
                                        #     Parent Loop BB21_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %ecx
	addl	%ecx, %eax
	addq	%rdi, %rbx
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB21_18
# BB#19:                                # %for.end.89
                                        #   in Loop: Header=BB21_17 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, %edx
	jg	.LBB21_17
	jmp	.LBB21_22
	.align	16, 0x90
.LBB21_20:                              # %for.end.39.thread
                                        #   in Loop: Header=BB21_6 Depth=1
	xorl	%edx, %edx
	movl	%r10d, %eax
	divl	%r9d
	movb	%al, (%r14)
.LBB21_21:                              # %for.end.66.thread
                                        #   in Loop: Header=BB21_6 Depth=1
	addq	%r8, %rbx
	addq	%r8, %rbx
	xorl	%edx, %edx
	movl	%r10d, %eax
	divl	%r9d
	leaq	2(%r14), %r15
	movb	%al, 1(%r14)
	xorl	%eax, %eax
.LBB21_22:                              # %for.end.95
                                        #   in Loop: Header=BB21_6 Depth=1
	addq	$-2, %rbx
	addl	%r10d, %eax
	cltd
	idivl	%r9d
	addq	$3, %r14
	movb	%al, (%r15)
	cmpl	$1, %r13d
	leal	-1(%r13), %eax
	movl	%eax, %r13d
	jg	.LBB21_6
.LBB21_23:                              # %for.end.104
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	down_core24, .Lfunc_end21-down_core24
	.cfi_endproc

	.align	16, 0x90
	.type	down_core32,@function
down_core32:                            # @down_core32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp237:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp238:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp239:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp240:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp241:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp242:
	.cfi_def_cfa_offset 80
.Ltmp243:
	.cfi_offset %rbx, -56
.Ltmp244:
	.cfi_offset %r12, -48
.Ltmp245:
	.cfi_offset %r13, -40
.Ltmp246:
	.cfi_offset %r14, -32
.Ltmp247:
	.cfi_offset %r15, -24
.Ltmp248:
	.cfi_offset %rbp, -16
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	8(%rdi), %eax
	movl	12(%rdi), %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	20(%rdi), %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	subl	%eax, %ecx
	imull	%edx, %ecx
	testl	%ecx, %ecx
	jle	.LBB22_4
# BB#1:                                 # %entry
	movq	16(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB22_4
# BB#2:                                 # %for.body.lr.ph
	shll	$2, %ecx
	movq	16(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %eax
	shll	$2, %eax
	cltq
	leaq	(%rax,%rbx), %rbp
	movslq	%ecx, %r12
	movslq	12(%rsp), %r13          # 4-byte Folded Reload
	leal	1(%rdx), %r15d
	.align	16, 0x90
.LBB22_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memset
	addq	%r13, %rbp
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB22_3
.LBB22_4:                               # %if.end.12
	movq	(%rsp), %r13            # 8-byte Reload
	testl	%r13d, %r13d
	movq	16(%rsp), %r12          # 8-byte Reload
	jle	.LBB22_29
# BB#5:                                 # %for.cond.21.preheader.lr.ph
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r12d, %eax
	movl	12(%rsp), %edx          # 4-byte Reload
	imull	%edx, %eax
	addl	$-4, %eax
	leal	-1(,%r12,4), %ecx
	movslq	%ecx, %r8
	negq	%r8
	movl	%r9d, %r10d
	shrl	%r10d
	movslq	%eax, %r11
	negq	%r11
	movslq	%edx, %rdi
	leal	1(%r12), %ebp
	.align	16, 0x90
.LBB22_6:                               # %for.cond.21.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_8 Depth 2
                                        #       Child Loop BB22_9 Depth 3
                                        #     Child Loop BB22_13 Depth 2
                                        #       Child Loop BB22_14 Depth 3
                                        #     Child Loop BB22_18 Depth 2
                                        #       Child Loop BB22_19 Depth 3
                                        #     Child Loop BB22_22 Depth 2
                                        #       Child Loop BB22_23 Depth 3
	testl	%r12d, %r12d
	jle	.LBB22_25
# BB#7:                                 #   in Loop: Header=BB22_6 Depth=1
	movl	%r12d, %ecx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB22_8:                               # %for.body.28.lr.ph
                                        #   Parent Loop BB22_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_9 Depth 3
	movl	%ebp, %edx
	.align	16, 0x90
.LBB22_9:                               # %for.body.28
                                        #   Parent Loop BB22_6 Depth=1
                                        #     Parent Loop BB22_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %esi
	addl	%esi, %eax
	addq	%rdi, %rbx
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB22_9
# BB#10:                                # %for.end.34
                                        #   in Loop: Header=BB22_8 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB22_8
# BB#11:                                # %for.end.39
                                        #   in Loop: Header=BB22_6 Depth=1
	addl	%r10d, %eax
	cltd
	idivl	%r9d
	movb	%al, (%r14)
	testl	%r12d, %r12d
	jle	.LBB22_26
# BB#12:                                # %for.body.53.lr.ph.preheader
                                        #   in Loop: Header=BB22_6 Depth=1
	addq	%r8, %rbx
	xorl	%eax, %eax
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB22_13:                              # %for.body.53.lr.ph
                                        #   Parent Loop BB22_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_14 Depth 3
	movl	%ebp, %edx
	.align	16, 0x90
.LBB22_14:                              # %for.body.53
                                        #   Parent Loop BB22_6 Depth=1
                                        #     Parent Loop BB22_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %esi
	addl	%esi, %eax
	addq	%rdi, %rbx
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB22_14
# BB#15:                                # %for.end.60
                                        #   in Loop: Header=BB22_13 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB22_13
# BB#16:                                # %for.end.66
                                        #   in Loop: Header=BB22_6 Depth=1
	addl	%r10d, %eax
	cltd
	idivl	%r9d
	movb	%al, 1(%r14)
	testl	%r12d, %r12d
	jle	.LBB22_27
# BB#17:                                # %for.body.82.lr.ph.preheader
                                        #   in Loop: Header=BB22_6 Depth=1
	addq	%r8, %rbx
	xorl	%eax, %eax
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB22_18:                              # %for.body.82.lr.ph
                                        #   Parent Loop BB22_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_19 Depth 3
	movl	%ebp, %edx
	.align	16, 0x90
.LBB22_19:                              # %for.body.82
                                        #   Parent Loop BB22_6 Depth=1
                                        #     Parent Loop BB22_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %esi
	addl	%esi, %eax
	addq	%rdi, %rbx
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB22_19
# BB#20:                                # %for.end.89
                                        #   in Loop: Header=BB22_18 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	jg	.LBB22_18
# BB#21:                                # %for.end.95
                                        #   in Loop: Header=BB22_6 Depth=1
	addq	%r8, %rbx
	addl	%r10d, %eax
	cltd
	idivl	%r9d
	leaq	3(%r14), %r15
	movb	%al, 2(%r14)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	movl	%r12d, %edx
	jle	.LBB22_28
	.align	16, 0x90
.LBB22_22:                              # %for.body.111.lr.ph
                                        #   Parent Loop BB22_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_23 Depth 3
	movl	%ebp, %esi
	.align	16, 0x90
.LBB22_23:                              # %for.body.111
                                        #   Parent Loop BB22_6 Depth=1
                                        #     Parent Loop BB22_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx), %ecx
	addl	%ecx, %eax
	addq	%rdi, %rbx
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB22_23
# BB#24:                                # %for.end.118
                                        #   in Loop: Header=BB22_22 Depth=2
	addq	%r11, %rbx
	cmpl	$1, %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, %edx
	jg	.LBB22_22
	jmp	.LBB22_28
	.align	16, 0x90
.LBB22_25:                              # %for.end.39.thread
                                        #   in Loop: Header=BB22_6 Depth=1
	xorl	%edx, %edx
	movl	%r10d, %eax
	divl	%r9d
	movb	%al, (%r14)
.LBB22_26:                              # %for.end.66.thread
                                        #   in Loop: Header=BB22_6 Depth=1
	addq	%r8, %rbx
	xorl	%edx, %edx
	movl	%r10d, %eax
	divl	%r9d
	movb	%al, 1(%r14)
.LBB22_27:                              # %for.end.95.thread
                                        #   in Loop: Header=BB22_6 Depth=1
	addq	%r8, %rbx
	addq	%r8, %rbx
	xorl	%edx, %edx
	movl	%r10d, %eax
	divl	%r9d
	leaq	3(%r14), %r15
	movb	%al, 2(%r14)
	xorl	%eax, %eax
.LBB22_28:                              # %for.end.124
                                        #   in Loop: Header=BB22_6 Depth=1
	addq	$-3, %rbx
	addl	%r10d, %eax
	cltd
	idivl	%r9d
	addq	$4, %r14
	movb	%al, (%r15)
	cmpl	$1, %r13d
	leal	-1(%r13), %eax
	movl	%eax, %r13d
	jg	.LBB22_6
.LBB22_29:                              # %for.end.133
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	down_core32, .Lfunc_end22-down_core32
	.cfi_endproc

	.globl	gx_downscaler_getbits
	.align	16, 0x90
	.type	gx_downscaler_getbits,@function
gx_downscaler_getbits:                  # @gx_downscaler_getbits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp250:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp251:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp252:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp253:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp254:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp255:
	.cfi_def_cfa_offset 64
.Ltmp256:
	.cfi_offset %rbx, -56
.Ltmp257:
	.cfi_offset %r12, -48
.Ltmp258:
	.cfi_offset %r13, -40
.Ltmp259:
	.cfi_offset %r14, -32
.Ltmp260:
	.cfi_offset %r15, -24
.Ltmp261:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rdx
	movq	%rdi, %r12
	cmpq	$0, 72(%r12)
	je	.LBB23_6
# BB#1:                                 # %if.end
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	20(%r12), %eax
	movl	%eax, %ebp
	imull	%r15d, %ebp
	leal	(%rax,%rbp), %r14d
	movq	48(%r12), %rbx
	.align	16, 0x90
.LBB23_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdi
	xorl	%ecx, %ecx
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	*1240(%rdi)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB23_5
# BB#3:                                 # %if.end.10
                                        #   in Loop: Header=BB23_2 Depth=1
	movslq	16(%r12), %r9
	addq	%r9, %rbx
	incl	%ebp
	cmpl	%r14d, %ebp
	jl	.LBB23_2
# BB#4:                                 # %do.end
	movq	48(%r12), %rdx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movl	%r15d, %ecx
	callq	*72(%r12)
.LBB23_5:                               # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_6:                               # %if.then
	movq	(%r12), %rdi
	movq	1240(%rdi), %rax
	xorl	%ecx, %ecx
	movl	%r15d, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end23:
	.size	gx_downscaler_getbits, .Lfunc_end23-gx_downscaler_getbits
	.cfi_endproc

	.globl	gx_downscaler_get_bits_rectangle
	.align	16, 0x90
	.type	gx_downscaler_get_bits_rectangle,@function
gx_downscaler_get_bits_rectangle:       # @gx_downscaler_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp263:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp264:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp265:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp266:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp267:
	.cfi_def_cfa_offset 56
	subq	$600, %rsp              # imm = 0x258
.Ltmp268:
	.cfi_def_cfa_offset 656
.Ltmp269:
	.cfi_offset %rbx, -56
.Ltmp270:
	.cfi_offset %r12, -48
.Ltmp271:
	.cfi_offset %r13, -40
.Ltmp272:
	.cfi_offset %r14, -32
.Ltmp273:
	.cfi_offset %r15, -24
.Ltmp274:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	20(%r13), %eax
	movq	(%r13), %rdi
	movl	832(%rdi), %ecx
	movl	32(%r13), %r15d
	imull	%ecx, %r15d
	movl	$3, %ebp
	movl	$2, %esi
	cmpl	$32, %eax
	je	.LBB24_4
# BB#1:                                 # %entry
	cmpl	$34, %eax
	jne	.LBB24_3
# BB#2:                                 # %if.then.2.i
	movl	$4, %esi
	jmp	.LBB24_4
.LBB24_3:                               # %if.else.3.i
	movl	$1, %esi
	movl	%eax, %ebp
.LBB24_4:                               # %decode_factor.exit
	movl	%ebx, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB24_11
# BB#5:                                 # %for.cond.preheader
	movslq	616(%r13), %r9
	xorl	%eax, %eax
	testq	%r9, %r9
	jle	.LBB24_41
# BB#6:                                 # %for.body.lr.ph
	movslq	%edx, %r8
	movslq	64(%r13), %rbp
	xorl	%eax, %eax
	testb	$1, %r9b
	movl	$0, %ecx
	je	.LBB24_8
# BB#7:                                 # %for.body.prol
	movq	%rbp, %rcx
	imulq	%r8, %rcx
	addq	56(%r13), %rcx
	movq	%rcx, 8(%r14)
	movl	$1, %ecx
.LBB24_8:                               # %for.body.lr.ph.split
	cmpl	$1, %r9d
	je	.LBB24_41
# BB#9:                                 # %for.body.lr.ph.split.split
	movl	%esi, %edi
	movq	%rcx, %rdx
	imulq	%rdi, %rdx
	addq	%r8, %rdx
	imulq	%rbp, %rdx
	movq	%rbp, %rsi
	imulq	%rdi, %rsi
	addq	%rsi, %rsi
	leaq	1(%rcx), %rbx
	imulq	%rdi, %rbx
	addq	%r8, %rbx
	imulq	%rbp, %rbx
	xorl	%eax, %eax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB24_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbp
	addq	%rdx, %rbp
	addq	%rdi, %rbp
	movq	%rbp, 8(%r14,%rcx,8)
	movq	56(%r13), %rbp
	addq	%rbx, %rbp
	addq	%rdi, %rbp
	movq	%rbp, 16(%r14,%rcx,8)
	addq	$2, %rcx
	addq	%rsi, %rdi
	cmpq	%r9, %rcx
	jl	.LBB24_10
	jmp	.LBB24_41
.LBB24_11:                              # %if.end
	movl	$0, 584(%rsp)
	movl	%ebx, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	imull	%ebp, %edx
	movl	%edx, 588(%rsp)
	movl	%ecx, 592(%rsp)
	incl	%eax
	imull	%ebp, %eax
	movl	%eax, 596(%rsp)
	cmpq	$0, 72(%r13)
	je	.LBB24_12
# BB#13:                                # %if.end.19
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	leaq	80(%r13), %rbx
	leaq	48(%rsp), %r12
	movl	$536, %edx              # imm = 0x218
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	(%r13), %rdi
	leaq	584(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	callq	*1448(%rdi)
	cmpl	$-15, %eax
	jne	.LBB24_36
# BB#14:                                # %for.cond.29.preheader
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	$-15, %eax
	movl	%ebp, %r12d
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	testl	%r12d, %r12d
	jle	.LBB24_41
# BB#15:                                # %for.body.31.lr.ph
	movq	%r14, 8(%rsp)           # 8-byte Spill
	addl	$7, %r15d
	sarl	$3, %r15d
	movslq	%r15d, %rbp
	movl	$-15, %eax
	xorl	%r15d, %r15d
	movl	588(%rsp), %edx
	leaq	48(%rsp), %r14
	.align	16, 0x90
.LBB24_16:                              # %for.body.31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_19 Depth 2
	leal	1(%rdx), %ecx
	movl	%ecx, 596(%rsp)
	movq	(%r13), %rcx
	cmpl	836(%rcx), %edx
	jge	.LBB24_21
# BB#17:                                # %if.end.42
                                        #   in Loop: Header=BB24_16 Depth=1
	movl	$536, %edx              # imm = 0x218
	movq	%r14, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movq	(%r13), %rdi
	xorl	%ecx, %ecx
	leaq	584(%rsp), %rsi
	movq	%r14, %rdx
	callq	*1448(%rdi)
	testl	%eax, %eax
	js	.LBB24_21
# BB#18:                                # %for.cond.53.preheader
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	%rax, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 616(%r13)
	movl	$0, %ebx
	jle	.LBB24_20
	.align	16, 0x90
.LBB24_19:                              # %for.body.56
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	16(%r13), %rax
	movslq	%r15d, %rdi
	imulq	%rax, %rdi
	addq	88(%r13,%rbx,8), %rdi
	movq	56(%rsp,%rbx,8), %rsi
	movq	%rbp, %rdx
	callq	memcpy
	incq	%rbx
	movslq	616(%r13), %rax
	cmpq	%rax, %rbx
	jl	.LBB24_19
.LBB24_20:                              # %for.end.70
                                        #   in Loop: Header=BB24_16 Depth=1
	movl	588(%rsp), %edx
	incl	%edx
	movl	%edx, 588(%rsp)
	incl	%r15d
	cmpl	%r12d, %r15d
	movq	32(%rsp), %rax          # 8-byte Reload
	jl	.LBB24_16
.LBB24_21:                              # %for.end.76
	testl	%r15d, %r15d
	movq	8(%rsp), %r14           # 8-byte Reload
	je	.LBB24_41
# BB#22:                                # %for.cond.81.preheader
	cmpl	%r12d, %r15d
	jge	.LBB24_23
# BB#26:                                # %for.cond.85.preheader.lr.ph
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	616(%r13), %eax
	.align	16, 0x90
.LBB24_27:                              # %for.cond.85.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_29 Depth 2
	testl	%eax, %eax
	jle	.LBB24_30
# BB#28:                                # %for.body.89.lr.ph
                                        #   in Loop: Header=BB24_27 Depth=1
	leal	-1(%r15), %ebx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB24_29:                              # %for.body.89
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%r13,%r12,8), %rax
	movl	16(%r13), %ecx
	movl	%ecx, %edx
	imull	%r15d, %edx
	movslq	%edx, %rdx
	imull	%ebx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rdx,%rax), %rdi
	leaq	(%rcx,%rax), %rsi
	movq	%rbp, %rdx
	callq	memcpy
	incq	%r12
	movslq	616(%r13), %rax
	cmpq	%rax, %r12
	jl	.LBB24_29
.LBB24_30:                              # %for.inc.111
                                        #   in Loop: Header=BB24_27 Depth=1
	incl	%r15d
	movl	20(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %r15d
	jne	.LBB24_27
	jmp	.LBB24_24
.LBB24_12:                              # %if.then.16
	leaq	584(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	callq	*1448(%rdi)
	jmp	.LBB24_41
.LBB24_23:                              # %for.cond.81.preheader.for.cond.114.preheader_crit_edge
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	616(%r13), %eax
.LBB24_24:                              # %for.cond.114.preheader
	testl	%eax, %eax
	jle	.LBB24_25
# BB#31:                                # %for.body.118.lr.ph
	movslq	%eax, %rcx
	leaq	-1(%rcx), %rsi
	xorl	%edx, %edx
	testb	$3, %cl
	je	.LBB24_34
# BB#32:                                # %for.body.118.prol.preheader
	andl	$3, %eax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB24_33:                              # %for.body.118.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%r13,%rdx,8), %rdi
	movq	%rdi, 56(%rsp,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB24_33
.LBB24_34:                              # %for.body.118.lr.ph.split
	cmpq	$3, %rsi
	movq	32(%rsp), %rax          # 8-byte Reload
	jb	.LBB24_36
	.align	16, 0x90
.LBB24_35:                              # %for.body.118
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%r13,%rdx,8), %rsi
	movq	%rsi, 56(%rsp,%rdx,8)
	movq	96(%r13,%rdx,8), %rsi
	movq	%rsi, 64(%rsp,%rdx,8)
	movq	104(%r13,%rdx,8), %rsi
	movq	%rsi, 72(%rsp,%rdx,8)
	movq	112(%r13,%rdx,8), %rsi
	movq	%rsi, 80(%rsp,%rdx,8)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB24_35
	jmp	.LBB24_36
.LBB24_25:
	movq	32(%rsp), %rax          # 8-byte Reload
.LBB24_36:                              # %if.end.130
	testl	%eax, %eax
	js	.LBB24_41
# BB#37:                                # %for.cond.137.preheader
	cmpl	$0, 616(%r13)
	jle	.LBB24_41
# BB#38:                                # %for.body.141.lr.ph
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movl	16(%rsp), %r12d         # 4-byte Reload
	.align	16, 0x90
.LBB24_39:                              # %for.body.141
                                        # =>This Inner Loop Header: Depth=1
	movslq	64(%r13), %r15
	movslq	%ebx, %rbx
	imulq	%rbx, %r15
	addq	56(%r13), %r15
	movq	56(%rsp,%rbp,8), %rdx
	movl	576(%rsp), %r9d
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r8d
	callq	*72(%r13)
	movq	%r15, 8(%r14,%rbp,8)
	incq	%rbp
	movslq	616(%r13), %rax
	addl	%r12d, %ebx
	cmpq	%rax, %rbp
	jl	.LBB24_39
# BB#40:
	movq	32(%rsp), %rax          # 8-byte Reload
.LBB24_41:                              # %cleanup.175
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gx_downscaler_get_bits_rectangle, .Lfunc_end24-gx_downscaler_get_bits_rectangle
	.cfi_endproc

	.globl	gx_downscaler_copy_scan_lines
	.align	16, 0x90
	.type	gx_downscaler_copy_scan_lines,@function
gx_downscaler_copy_scan_lines:          # @gx_downscaler_copy_scan_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp275:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp276:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp277:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp278:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp279:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp280:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp281:
	.cfi_def_cfa_offset 96
.Ltmp282:
	.cfi_offset %rbx, -56
.Ltmp283:
	.cfi_offset %r12, -48
.Ltmp284:
	.cfi_offset %r13, -40
.Ltmp285:
	.cfi_offset %r14, -32
.Ltmp286:
	.cfi_offset %r15, -24
.Ltmp287:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbp
	movl	%esi, %r15d
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ecx
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movl	%r14d, %eax
	divl	%ecx
	movl	%eax, %esi
	movq	(%rbx), %rax
	movl	836(%rax), %eax
	cltd
	idivl	20(%rbx)
	movl	%eax, %r13d
	subl	%r15d, %r13d
	cmpl	%r13d, %esi
	cmovlel	%esi, %r13d
	testl	%r13d, %r13d
	jle	.LBB25_9
# BB#1:                                 # %for.body.lr.ph
	movl	%ecx, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
.LBB25_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_4 Depth 2
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%r12,%rax), %esi
	cmpq	$0, 72(%rbx)
	je	.LBB25_7
# BB#3:                                 # %if.end.i
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	20(%rbx), %eax
	movl	%eax, %ebp
	imull	%esi, %ebp
	movl	%esi, 12(%rsp)          # 4-byte Spill
	leal	(%rax,%rbp), %r15d
	movq	48(%rbx), %r14
	.align	16, 0x90
.LBB25_4:                               # %do.body.i
                                        #   Parent Loop BB25_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	%ebp, %esi
	movq	%r14, %rdx
	callq	*1240(%rdi)
	testl	%eax, %eax
	js	.LBB25_10
# BB#5:                                 # %if.end.10.i
                                        #   in Loop: Header=BB25_4 Depth=2
	movslq	16(%rbx), %r9
	addq	%r9, %r14
	incl	%ebp
	cmpl	%r15d, %ebp
	jl	.LBB25_4
# BB#6:                                 # %gx_downscaler_getbits.exit.thread
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	48(%rbx), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	12(%rsp), %ecx          # 4-byte Reload
	callq	*72(%rbx)
	jmp	.LBB25_8
	.align	16, 0x90
.LBB25_7:                               # %gx_downscaler_getbits.exit
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	callq	*1240(%rdi)
	testl	%eax, %eax
	js	.LBB25_10
.LBB25_8:                               # %for.inc
                                        #   in Loop: Header=BB25_2 Depth=1
	incl	%r12d
	movq	32(%rsp), %rbp          # 8-byte Reload
	addq	16(%rsp), %rbp          # 8-byte Folded Reload
	cmpl	%r13d, %r12d
	jl	.LBB25_2
.LBB25_9:
	movl	%r13d, %eax
.LBB25_10:                              # %cleanup.8
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gx_downscaler_copy_scan_lines, .Lfunc_end25-gx_downscaler_copy_scan_lines
	.cfi_endproc

	.globl	gx_downscaler_process_page
	.align	16, 0x90
	.type	gx_downscaler_process_page,@function
gx_downscaler_process_page:             # @gx_downscaler_process_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp289:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp290:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp291:
	.cfi_def_cfa_offset 40
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp292:
	.cfi_def_cfa_offset 736
.Ltmp293:
	.cfi_offset %rbx, -40
.Ltmp294:
	.cfi_offset %r14, -32
.Ltmp295:
	.cfi_offset %r15, -24
.Ltmp296:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	56(%rsp), %r14
	xorl	%esi, %esi
	movl	$640, %edx              # imm = 0x280
	movq	%r14, %rdi
	callq	memset
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movl	100(%r15), %esi
	movzbl	204(%r15), %ecx
	movq	%rbx, 56(%rsp)
	cmpl	$34, %ebp
	jne	.LBB26_1
# BB#3:                                 # %if.then.2.i
	movabsq	$12884901892, %rax      # imm = 0x300000004
	movq	%rax, 64(%rsp)
	movl	$4, %eax
	movl	$3, %edi
	jmp	.LBB26_5
.LBB26_1:                               # %entry
	cmpl	$32, %ebp
	jne	.LBB26_4
# BB#2:                                 # %if.then.i
	movabsq	$12884901890, %rax      # imm = 0x300000002
	movq	%rax, 64(%rsp)
	movl	$2, %eax
	movl	$3, %edi
	jmp	.LBB26_5
.LBB26_4:                               # %if.else.3.i
	movl	%ebp, 68(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, %eax
	movl	%ebp, %edi
.LBB26_5:                               # %decode_factor.exit
	movq	%r15, 72(%rsp)
	movl	832(%r15), %ebx
	imull	%ebx, %eax
	leal	-1(%rdi,%rax), %eax
	cltd
	idivl	%edi
	movl	%eax, 80(%rsp)
	movl	%eax, 84(%rsp)
	movl	%ecx, %edx
	imull	%esi, %edx
	imull	%edx, %ebx
	addl	$63, %ebx
	sarl	$6, %ebx
	shll	$3, %ebx
	movl	%ebx, 88(%rsp)
	movl	%ebp, 92(%rsp)
	movl	%ecx, 104(%rsp)
	imull	%eax, %edx
	addl	$63, %edx
	sarl	$6, %edx
	shll	$3, %edx
	movl	%edx, 136(%rsp)
	movl	$0, 688(%rsp)
	movl	$-15, %eax
	cmpl	$8, %ebp
	jg	.LBB26_18
# BB#6:                                 # %if.else
	movl	$down_core16, %edx
	cmpl	$1, %esi
	jne	.LBB26_8
# BB#7:                                 # %if.else
	movzbl	%cl, %edi
	cmpl	$16, %edi
	je	.LBB26_17
.LBB26_8:                               # %if.else.41
	xorl	%edx, %edx
	cmpl	$1, %ebp
	je	.LBB26_17
# BB#9:                                 # %if.else.45
	cmpl	$1, %esi
	jne	.LBB26_13
# BB#10:                                # %if.else.45
	movzbl	%cl, %edx
	cmpl	$8, %edx
	jne	.LBB26_13
# BB#11:                                # %if.then.51
	addl	$-2, %ebp
	movl	$down_core8, %edx
	cmpl	$3, %ebp
	jae	.LBB26_17
# BB#12:                                # %switch.lookup
	movslq	%ebp, %rax
	movq	.Lswitch.table.4(,%rax,8), %rdx
	jmp	.LBB26_17
.LBB26_13:                              # %if.else.66
	movl	$down_core24, %edx
	cmpl	$3, %esi
	jne	.LBB26_15
# BB#14:                                # %if.else.66
	movzbl	%cl, %edi
	cmpl	$8, %edi
	je	.LBB26_17
.LBB26_15:                              # %if.else.73
	movl	$down_core32, %edx
	cmpl	$4, %esi
	jne	.LBB26_18
# BB#16:                                # %if.else.73
	movzbl	%cl, %ecx
	cmpl	$8, %ecx
	jne	.LBB26_18
.LBB26_17:                              # %if.end.86
	movq	%rdx, 144(%rsp)
	movq	$downscaler_init_fn, (%rsp)
	movq	$downscaler_process_fn, 16(%rsp)
	movq	$downscaler_output_fn, 24(%rsp)
	movq	$downscaler_free_fn, 8(%rsp)
	movq	%r14, 32(%rsp)
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1720(%r15)
.LBB26_18:                              # %cleanup
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gx_downscaler_process_page, .Lfunc_end26-gx_downscaler_process_page
	.cfi_endproc

	.align	16, 0x90
	.type	downscaler_init_fn,@function
downscaler_init_fn:                     # @downscaler_init_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp298:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp299:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp300:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp301:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp302:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp303:
	.cfi_def_cfa_offset 80
.Ltmp304:
	.cfi_offset %rbx, -56
.Ltmp305:
	.cfi_offset %r12, -48
.Ltmp306:
	.cfi_offset %r13, -40
.Ltmp307:
	.cfi_offset %r14, -32
.Ltmp308:
	.cfi_offset %r15, -24
.Ltmp309:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movl	$16, %esi
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %rbx
	movl	$-25, %r15d
	testq	%rbx, %rbx
	je	.LBB27_10
# BB#1:                                 # %if.end
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	8(%r12), %eax
	movl	12(%r12), %ecx
	cmpl	%ecx, %eax
	jle	.LBB27_4
# BB#2:                                 # %if.then.3
	imull	%r13d, %eax
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%eax, %edx
	movq	%r14, %r8
	callq	gx_default_create_buf_device
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB27_3
.LBB27_4:                               # %if.end.12
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB27_9
# BB#5:                                 # %land.lhs.true
	movq	(%rax), %r10
	testq	%r10, %r10
	je	.LBB27_9
# BB#6:                                 # %if.then.15
	movq	32(%rax), %rdi
	movl	8(%r12), %esi
	movl	12(%r12), %ecx
	imull	%esi, %ebp
	leal	-1(%rcx,%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r8d
	imull	%esi, %r13d
	leal	-1(%rcx,%r13), %eax
	cltd
	idivl	%ecx
	movq	%rbx, %r9
	addq	$8, %r9
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movl	%r8d, %ecx
	movl	%eax, %r8d
	callq	*%r10
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB27_7
.LBB27_9:                               # %if.end.46
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbx, (%rax)
	jmp	.LBB27_10
.LBB27_7:                               # %if.then.36
	cmpq	$0, (%rbx)
	je	.LBB27_3
# BB#8:                                 # %if.then.39
	movq	%rbp, %rdi
	callq	*1176(%rbp)
.LBB27_3:                               # %if.then.9
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
.LBB27_10:                              # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	downscaler_init_fn, .Lfunc_end27-downscaler_init_fn
	.cfi_endproc

	.align	16, 0x90
	.type	downscaler_process_fn,@function
downscaler_process_fn:                  # @downscaler_process_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp310:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp311:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp312:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp313:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp314:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp315:
	.cfi_def_cfa_offset 56
	subq	$616, %rsp              # imm = 0x268
.Ltmp316:
	.cfi_def_cfa_offset 672
.Ltmp317:
	.cfi_offset %rbx, -56
.Ltmp318:
	.cfi_offset %r12, -48
.Ltmp319:
	.cfi_offset %r13, -40
.Ltmp320:
	.cfi_offset %r14, -32
.Ltmp321:
	.cfi_offset %r15, -24
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	$0, 64(%rsp)
	movl	8(%r13), %eax
	subl	(%r13), %eax
	movl	%eax, 72(%rsp)
	movl	12(%r13), %ecx
	subl	4(%r13), %ecx
	movl	%ecx, 76(%rsp)
	movq	$0, 48(%rsp)
	movl	8(%rbx), %esi
	movl	12(%rbx), %edi
	imull	%esi, %eax
	leal	-1(%rdi,%rax), %eax
	cltd
	idivl	%edi
	movl	%eax, 56(%rsp)
	imull	%esi, %ecx
	leal	-1(%rdi,%rcx), %eax
	cltd
	idivl	%edi
	movl	%eax, 60(%rsp)
	movq	$1101070353, 80(%rsp)   # imm = 0x41A10011
	leaq	64(%rsp), %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	callq	*1448(%rbp)
	testl	%eax, %eax
	js	.LBB28_14
# BB#1:                                 # %if.end
	movq	88(%rsp), %r14
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB28_4
# BB#2:                                 # %if.then.36
	leaq	48(%rsp), %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	*1448(%rbp)
	testl	%eax, %eax
	js	.LBB28_14
# BB#3:                                 # %if.end.43
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movl	608(%rsp), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	88(%rsp), %r15
	jmp	.LBB28_5
.LBB28_4:                               # %if.else
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movl	608(%rsp), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%r14, %r15
.LBB28_5:                               # %if.end.49
	movq	88(%rbx), %r10
	testq	%r10, %r10
	je	.LBB28_11
# BB#6:                                 # %if.then.51
	movl	4(%r13), %r12d
	cmpl	12(%r13), %r12d
	jge	.LBB28_11
# BB#7:                                 # %for.body.lr.ph
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leaq	16(%rbx), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movl	32(%rbx), %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	callq	*%r10
	movl	12(%rbx), %eax
	leal	(%r12,%rax), %ebp
	cmpl	12(%r13), %ebp
	jge	.LBB28_10
# BB#8:
	movslq	20(%rsp), %r12          # 4-byte Folded Reload
	.align	16, 0x90
.LBB28_9:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movl	32(%rbx), %r9d
	movslq	8(%rbx), %rcx
	imulq	%r12, %rcx
	addq	%rcx, %r15
	imull	%r9d, %eax
	cltq
	addq	%rax, %r14
	xorl	%r8d, %r8d
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	*88(%rbx)
	movl	12(%rbx), %eax
	leal	(%rbp,%rax), %ebp
	cmpl	12(%r13), %ebp
	jl	.LBB28_9
.LBB28_10:                              # %if.end.72
	movl	4(%rsp), %eax           # 4-byte Reload
	testl	%eax, %eax
	movq	8(%rsp), %rbp           # 8-byte Reload
	js	.LBB28_14
.LBB28_11:                              # %land.lhs.true
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB28_14
# BB#12:                                # %land.lhs.true.75
	movq	16(%rcx), %r9
	testq	%r9, %r9
	je	.LBB28_14
# BB#13:                                # %if.then.78
	movl	8(%rbx), %eax
	imull	4(%r13), %eax
	cltd
	idivl	12(%rbx)
	movl	%eax, 52(%rsp)
	addl	%eax, 60(%rsp)
	movq	32(%rcx), %rdi
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	testq	%rax, %rax
	cmovneq	%rax, %rbp
	leaq	48(%rsp), %rcx
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	callq	*%r9
.LBB28_14:                              # %cleanup
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	downscaler_process_fn, .Lfunc_end28-downscaler_process_fn
	.cfi_endproc

	.align	16, 0x90
	.type	downscaler_output_fn,@function
downscaler_output_fn:                   # @downscaler_output_fn
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	24(%rax), %rcx
	movq	32(%rax), %rdi
	movq	8(%rdx), %rdx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end29:
	.size	downscaler_output_fn, .Lfunc_end29-downscaler_output_fn
	.cfi_endproc

	.align	16, 0x90
	.type	downscaler_free_fn,@function
downscaler_free_fn:                     # @downscaler_free_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp323:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp324:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp325:
	.cfi_def_cfa_offset 32
.Ltmp326:
	.cfi_offset %rbx, -32
.Ltmp327:
	.cfi_offset %r14, -24
.Ltmp328:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	(%rdi), %rax
	movq	32(%rax), %rdi
	movq	8(%r14), %rcx
	callq	*8(%rax)
	cmpq	$0, (%r14)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*1176(%rbx)
.LBB30_2:                               # %if.end
	movq	24(%r15), %rax
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end30:
	.size	downscaler_free_fn, .Lfunc_end30-downscaler_free_fn
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_downscaler(planar_data)"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gx_downscaler(scaled_data)"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_downscaler(mfs)"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_downscaler(errors)"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_downscaler(data)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"downscaler process_page buffer"
	.size	.L.str.5, 31

	.type	.Lswitch.table.2,@object # @switch.table.2
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table.2:
	.quad	down_core_1
	.quad	down_core_2
	.quad	down_core_3
	.quad	down_core_4
	.size	.Lswitch.table.2, 32

	.type	.Lswitch.table.4,@object # @switch.table.4
	.align	16
.Lswitch.table.4:
	.quad	down_core8_2
	.quad	down_core8_3
	.quad	down_core8_4
	.size	.Lswitch.table.4, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
