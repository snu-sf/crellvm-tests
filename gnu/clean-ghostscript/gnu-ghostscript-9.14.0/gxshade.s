	.text
	.file	"gxshade.bc"
	.globl	shade_next_init
	.align	16, 0x90
	.type	shade_next_init,@function
shade_next_init:                        # @shade_next_init
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
	movq	%r14, 376(%rbx)
	addq	$132, %rdx
	movq	%rdx, 384(%rbx)
	cmpl	$3, 80(%r14)
	jne	.LBB0_5
# BB#1:                                 # %if.then
	movq	88(%r14), %rdi
	movq	%rdi, 352(%rbx)
	cmpq	$0, 304(%rdi)
	je	.LBB0_3
# BB#2:                                 # %land.lhs.true
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, 344(%rdi)
	jne	.LBB0_4
	jmp	.LBB0_6
.LBB0_5:                                # %if.else
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	movq	88(%r14), %rsi
	movl	96(%r14), %edx
	movq	%rbx, %rdi
	callq	sread_string
	movq	%rbx, 352(%rbx)
	jmp	.LBB0_6
.LBB0_3:                                # %land.lhs.true.8
	cmpq	$0, 240(%rdi)
	jne	.LBB0_6
.LBB0_4:                                # %if.then.11
	xorl	%esi, %esi
	callq	spseek
.LBB0_6:                                # %if.end.21
	cmpl	$2, 80(%r14)
	movl	$cs_next_array_value, %eax
	movl	$cs_next_packed_value, %ecx
	cmoveq	%rax, %rcx
	movl	$cs_next_array_decoded, %eax
	movl	$cs_next_packed_decoded, %edx
	cmoveq	%rax, %rdx
	movl	$cs_array_align, %eax
	movl	$cs_packed_align, %esi
	cmoveq	%rax, %rsi
	movq	%rcx, 392(%rbx)
	movq	%rdx, 400(%rbx)
	movq	%rsi, 408(%rbx)
	movq	$cs_eod, 416(%rbx)
	movq	$0, 364(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	shade_next_init, .Lfunc_end0-shade_next_init
	.cfi_endproc

	.align	16, 0x90
	.type	cs_next_array_value,@function
cs_next_array_value:                    # @cs_next_array_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 48
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	352(%rbx), %rdi
	leaq	12(%rsp), %rsi
	leaq	8(%rsp), %rcx
	movl	$4, %edx
	callq	sgets
	testl	%eax, %eax
	js	.LBB1_2
# BB#1:                                 # %entry
	cmpl	$4, 8(%rsp)
	jne	.LBB1_2
# BB#3:                                 # %if.end
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$-15, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB1_8
# BB#4:                                 # %lor.lhs.false.5
	leal	-1(%r15), %ecx
	cmpl	$30, %ecx
	ja	.LBB1_6
# BB#5:                                 # %land.lhs.true.11
	movl	$1, %edx
	movb	%r15b, %cl
	shll	%cl, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	ucomiss	%xmm1, %xmm0
	jae	.LBB1_8
.LBB1_6:                                # %lor.lhs.false.15
	cvttss2si	%xmm0, %rcx
	movl	%ecx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rdx, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_8
	jp	.LBB1_8
# BB#7:                                 # %if.end.21
	movl	%ecx, (%r14)
	xorl	%eax, %eax
	jmp	.LBB1_8
.LBB1_2:                                # %if.then
	movl	$1, 368(%rbx)
	movl	$-15, %eax
.LBB1_8:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	cs_next_array_value, .Lfunc_end1-cs_next_array_value
	.cfi_endproc

	.align	16, 0x90
	.type	cs_next_array_decoded,@function
cs_next_array_decoded:                  # @cs_next_array_decoded
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	352(%rbx), %rdi
	leaq	4(%rsp), %rsi
	leaq	(%rsp), %rcx
	movl	$4, %edx
	callq	sgets
	testl	%eax, %eax
	js	.LBB2_2
# BB#1:                                 # %entry
	cmpl	$4, (%rsp)
	jne	.LBB2_2
# BB#3:                                 # %if.end
	movl	4(%rsp), %eax
	movl	%eax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB2_4
.LBB2_2:                                # %if.then
	movl	$1, 368(%rbx)
	movl	$-15, %eax
.LBB2_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	cs_next_array_decoded, .Lfunc_end2-cs_next_array_decoded
	.cfi_endproc

	.align	16, 0x90
	.type	cs_array_align,@function
cs_array_align:                         # @cs_array_align
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end3:
	.size	cs_array_align, .Lfunc_end3-cs_array_align
	.cfi_endproc

	.align	16, 0x90
	.type	cs_next_packed_value,@function
cs_next_packed_value:                   # @cs_next_packed_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r15
	movl	360(%r15), %edx
	movl	364(%r15), %ecx
	movl	%ecx, %eax
	subl	%ebp, %eax
	jge	.LBB4_1
# BB#3:                                 # %if.else
	subl	%ecx, %ebp
	movl	$1, %ebx
	shll	%cl, %ebx
	decl	%ebx
	andl	%edx, %ebx
	cmpl	$8, %ebp
	jl	.LBB4_8
	.align	16, 0x90
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	352(%r15), %rdi
	movq	112(%rdi), %rax
	movq	120(%rdi), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB4_6
# BB#5:                                 # %cond.end.thread
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%rdi)
	movzbl	1(%rax), %eax
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_6:                                # %cond.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$1, %esi
	callq	spgetcc
	testl	%eax, %eax
	js	.LBB4_14
.LBB4_7:                                # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	shll	$8, %ebx
	addl	%eax, %ebx
	addl	$-8, %ebp
	cmpl	$7, %ebp
	jg	.LBB4_4
.LBB4_8:                                # %for.end
	testl	%ebp, %ebp
	je	.LBB4_9
# BB#10:                                # %if.else.32
	movq	352(%r15), %rdi
	movq	112(%rdi), %rax
	movq	120(%rdi), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB4_12
# BB#11:                                # %cond.end.61.thread
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%rdi)
	movzbl	1(%rax), %eax
	jmp	.LBB4_13
.LBB4_1:                                # %if.then
	movl	%eax, 364(%r15)
	movb	%al, %cl
	shrl	%cl, %edx
	movl	$1, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	decl	%eax
	andl	%edx, %eax
	jmp	.LBB4_2
.LBB4_9:                                # %if.then.30
	movl	$0, 364(%r15)
	movl	%ebx, (%r14)
	xorl	%eax, %eax
	jmp	.LBB4_15
.LBB4_12:                               # %cond.end.61
	movl	$1, %esi
	callq	spgetcc
	testl	%eax, %eax
	js	.LBB4_14
.LBB4_13:                               # %cleanup.74.thread
	movl	%eax, 360(%r15)
	movl	$8, %edx
	subl	%ebp, %edx
	movl	%edx, 364(%r15)
	movb	%bpl, %cl
	shll	%cl, %ebx
	movb	%dl, %cl
	sarl	%cl, %eax
	addl	%ebx, %eax
.LBB4_2:                                # %cleanup.83
	movl	%eax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB4_15
.LBB4_14:                               # %cleanup.74
	movl	$1, 368(%r15)
	movl	$-15, %eax
.LBB4_15:                               # %cleanup.83
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cs_next_packed_value, .Lfunc_end4-cs_next_packed_value
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4751297606873776128     # double 4294967295
	.text
	.align	16, 0x90
	.type	cs_next_packed_decoded,@function
cs_next_packed_decoded:                 # @cs_next_packed_decoded
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 48
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%esi, %ebp
	leaq	12(%rsp), %rdx
	callq	*392(%rdi)
	cmpl	$32, %ebp
	jne	.LBB5_2
# BB#1:
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movl	$1, %edx
	movb	%bpl, %cl
	shll	%cl, %edx
	decl	%edx
	cvtsi2sdq	%rdx, %xmm0
.LBB5_3:                                # %cond.end
	testl	%eax, %eax
	js	.LBB5_8
# BB#4:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB5_5
# BB#6:                                 # %cond.false.9
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rbx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm3
	movl	12(%rsp), %eax
	cvtsi2ssq	%rax, %xmm4
	subss	%xmm1, %xmm2
	mulss	%xmm4, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	addsd	%xmm3, %xmm1
	jmp	.LBB5_7
.LBB5_5:                                # %cond.true.7
	movl	12(%rsp), %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
.LBB5_7:                                # %cond.end.17
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB5_8:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cs_next_packed_decoded, .Lfunc_end5-cs_next_packed_decoded
	.cfi_endproc

	.align	16, 0x90
	.type	cs_packed_align,@function
cs_packed_align:                        # @cs_packed_align
	.cfi_startproc
# BB#0:                                 # %entry
	movl	364(%rdi), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	subl	%edx, %ecx
	movl	%ecx, 364(%rdi)
	retq
.Lfunc_end6:
	.size	cs_packed_align, .Lfunc_end6-cs_packed_align
	.cfi_endproc

	.align	16, 0x90
	.type	cs_eod,@function
cs_eod:                                 # @cs_eod
	.cfi_startproc
# BB#0:                                 # %entry
	movl	368(%rdi), %eax
	retq
.Lfunc_end7:
	.size	cs_eod, .Lfunc_end7-cs_eod
	.cfi_endproc

	.globl	shade_next_flag
	.align	16, 0x90
	.type	shade_next_flag,@function
shade_next_flag:                        # @shade_next_flag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 16
	movl	$0, 364(%rdi)
	leaq	4(%rsp), %rdx
	callq	*392(%rdi)
	testl	%eax, %eax
	cmovnsl	4(%rsp), %eax
	popq	%rdx
	retq
.Lfunc_end8:
	.size	shade_next_flag, .Lfunc_end8-shade_next_flag
	.cfi_endproc

	.globl	shade_next_coords
	.align	16, 0x90
	.type	shade_next_coords,@function
shade_next_coords:                      # @shade_next_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 80
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB9_6
# BB#1:                                 # %for.body.lr.ph
	movq	376(%r14), %rax
	movl	104(%rax), %ebp
	movq	112(%rax), %r15
	leaq	8(%r15), %r12
	movslq	%edx, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %r13d
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	leaq	20(%rsp), %rcx
	callq	*400(%r14)
	testl	%eax, %eax
	js	.LBB9_6
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	leaq	16(%rsp), %rcx
	callq	*400(%r14)
	testl	%eax, %eax
	js	.LBB9_6
# BB#4:                                 # %cleanup
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	384(%r14), %rdi
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	16(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movq	%rbx, %rsi
	callq	gs_point_transform2fixed
	testl	%eax, %eax
	js	.LBB9_6
# BB#5:                                 # %cleanup
                                        #   in Loop: Header=BB9_2 Depth=1
	addq	$8, %rbx
	cmpq	8(%rsp), %r13           # 8-byte Folded Reload
	leaq	1(%r13), %r13
	jl	.LBB9_2
.LBB9_6:                                # %for.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	shade_next_coords, .Lfunc_end9-shade_next_coords
	.cfi_endproc

	.globl	shade_next_color
	.align	16, 0x90
	.type	shade_next_color,@function
shade_next_color:                       # @shade_next_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp53:
	.cfi_def_cfa_offset 352
.Ltmp54:
	.cfi_offset %rbx, -56
.Ltmp55:
	.cfi_offset %r12, -48
.Ltmp56:
	.cfi_offset %r13, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	376(%r14), %rax
	movq	(%rax), %r13
	movq	112(%rax), %rbp
	addq	$16, %rbp
	movq	%r13, %rdi
	callq	gs_color_space_get_index
	movq	376(%r14), %rcx
	movl	108(%rcx), %r15d
	cmpl	$10, %eax
	jne	.LBB10_13
# BB#1:                                 # %if.then
	movq	%r13, %rdi
	callq	gs_cspace_base_space
	movq	%rax, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r12d
	leaq	292(%rsp), %rcx
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%rbp, %rdx
	callq	*400(%r14)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB10_22
# BB#2:                                 # %if.end
	movss	292(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$-15, %r15d
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB10_22
# BB#3:                                 # %if.end.10
	cvttss2si	%xmm0, %r14d
	movq	%r13, %rdi
	callq	gs_cspace_indexed_num_entries
	cmpl	%eax, %r14d
	jge	.LBB10_22
# BB#4:                                 # %if.end.15
	leaq	24(%rsp), %rdx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	gs_cspace_indexed_lookup
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB10_22
# BB#5:                                 # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB10_12
# BB#6:                                 # %for.body.preheader
	leal	-1(%r12), %eax
	xorl	%ecx, %ecx
	testb	$3, %r12b
	je	.LBB10_9
# BB#7:                                 # %for.body.prol.preheader
	movl	%r12d, %edx
	andl	$3, %edx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB10_8:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	32(%rsp,%rcx,4), %esi
	movl	%esi, (%rbx,%rcx,4)
	incq	%rcx
	cmpl	%ecx, %edx
	jne	.LBB10_8
.LBB10_9:                               # %for.body.preheader.split
	cmpl	$3, %eax
	jb	.LBB10_12
# BB#10:                                # %for.body.preheader.split.split
	subl	%ecx, %r12d
	leaq	12(%rbx,%rcx,4), %rax
	leaq	44(%rsp,%rcx,4), %rcx
	.align	16, 0x90
.LBB10_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rcx), %edx
	movl	%edx, -12(%rax)
	movl	-8(%rcx), %edx
	movl	%edx, -8(%rax)
	movl	-4(%rcx), %edx
	movl	%edx, -4(%rax)
	movl	(%rcx), %edx
	movl	%edx, (%rax)
	addq	$16, %rax
	addq	$16, %rcx
	addl	$-4, %r12d
	jne	.LBB10_11
.LBB10_12:                              # %cleanup
	xorl	%r15d, %r15d
	jmp	.LBB10_22
.LBB10_13:                              # %if.else
	movq	%r13, %rdi
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	$1, %r13d
	cmpq	$0, 120(%rcx)
	movl	$1, %eax
	jne	.LBB10_15
# BB#14:                                # %cond.end
	callq	gs_color_space_num_components
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jle	.LBB10_22
.LBB10_15:                              # %for.body.40.lr.ph
	cltq
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB10_16:                              # %for.body.40
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%r13), %eax
	movslq	%eax, %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbp,4), %rdx
	movq	%r14, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	movq	%rbx, %rcx
	callq	*400(%r14)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB10_22
# BB#17:                                # %if.end.49
                                        #   in Loop: Header=BB10_16 Depth=1
	movq	376(%r14), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_21
# BB#18:                                # %if.then.52
                                        #   in Loop: Header=BB10_16 Depth=1
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	80(%rax), %rax
	movss	(%rax,%rbp,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB10_20
# BB#19:                                # %if.else.70
                                        #   in Loop: Header=BB10_16 Depth=1
	movslq	%r13d, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB10_21
.LBB10_20:                              # %if.then.80
                                        #   in Loop: Header=BB10_16 Depth=1
	movss	%xmm1, (%rbx)
.LBB10_21:                              # %for.inc.91
                                        #   in Loop: Header=BB10_16 Depth=1
	incq	%r12
	addq	$4, %rbx
	addl	$2, %r13d
	xorl	%r15d, %r15d
	cmpq	(%rsp), %r12            # 8-byte Folded Reload
	jl	.LBB10_16
.LBB10_22:                              # %cleanup.100
	movl	%r15d, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	shade_next_color, .Lfunc_end10-shade_next_color
	.cfi_endproc

	.globl	shade_next_vertex
	.align	16, 0x90
	.type	shade_next_vertex,@function
shade_next_vertex:                      # @shade_next_vertex
	.cfi_startproc
# BB#0:                                 # %for.body.i
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp63:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp66:
	.cfi_def_cfa_offset 64
.Ltmp67:
	.cfi_offset %rbx, -56
.Ltmp68:
	.cfi_offset %r12, -48
.Ltmp69:
	.cfi_offset %r13, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	376(%r13), %rax
	movl	104(%rax), %r12d
	movq	112(%rax), %rbx
	leaq	4(%rsp), %rcx
	movl	%r12d, %esi
	movq	%rbx, %rdx
	callq	*400(%r13)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_5
# BB#1:                                 # %lor.lhs.false.i
	addq	$8, %rbx
	leaq	(%rsp), %rcx
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%rbx, %rdx
	callq	*400(%r13)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_5
# BB#2:                                 # %shade_next_coords.exit
	movq	384(%r13), %rdi
	movss	4(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	(%rsp), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movq	%r15, %rsi
	callq	gs_point_transform2fixed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_5
# BB#3:                                 # %if.end
	addq	$16, %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	shade_next_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_5
# BB#4:                                 # %if.then.3
	movl	$8, %esi
	movq	%r13, %rdi
	callq	*408(%r13)
.LBB11_5:                               # %if.end.4
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	shade_next_vertex, .Lfunc_end11-shade_next_vertex
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI12_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_1:
	.long	1045220557              # float 0.200000003
.LCPI12_2:
	.long	1048576000              # float 0.25
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_4:
	.long	8                       # 0x8
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	shade_init_fill_state
	.align	16, 0x90
	.type	shade_init_fill_state,@function
shade_init_fill_state:                  # @shade_init_fill_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp76:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp79:
	.cfi_def_cfa_offset 112
.Ltmp80:
	.cfi_offset %rbx, -56
.Ltmp81:
	.cfi_offset %r12, -48
.Ltmp82:
	.cfi_offset %r13, -40
.Ltmp83:
	.cfi_offset %r14, -32
.Ltmp84:
	.cfi_offset %r15, -24
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	16(%r13), %rbx
	movss	320(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm0
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB12_2
# BB#1:                                 # %entry
	movss	.LCPI12_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
.LBB12_2:                               # %entry
	movss	%xmm2, 20(%rsp)         # 4-byte Spill
	movl	112(%rdx), %eax
	movl	116(%rdx), %r12d
	cmpl	%r12d, %eax
	cmoval	%eax, %r12d
	incl	%r12d
	movq	%rdx, (%r15)
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%r14, 8(%r15)
	xorl	%ebp, %ebp
	jmp	.LBB12_3
	.align	16, 0x90
.LBB12_5:                               # %sw.bb
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	%rbx, %rdi
	callq	gs_cspace_base_space
	movq	%rax, %rbx
.LBB12_3:                               # %top
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, 16(%r15)
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	movl	%eax, 24(%r15)
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	addl	$-5, %eax
	cmpl	$7, %eax
	ja	.LBB12_9
# BB#4:                                 # %top
                                        #   in Loop: Header=BB12_3 Depth=1
	jmpq	*.LJTI12_0(,%rax,8)
.LBB12_6:                               # %sw.bb.24
	movl	$31352, %ebp            # imm = 0x7A78
	addq	72(%rbx), %rbp
	jmp	.LBB12_9
.LBB12_7:                               # %sw.bb.32
	movl	$6416, %ebp             # imm = 0x1910
	addq	72(%rbx), %rbp
	jmp	.LBB12_9
.LBB12_8:                               # %sw.bb.34
	movq	64(%rbx), %rbp
	addq	$20, %rbp
.LBB12_9:                               # %sw.epilog
	cmpl	$32, %r12d
	movss	20(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	ja	.LBB12_11
# BB#10:                                # %if.then
	movq	392(%r14), %rax
	movq	200(%rax), %rax
	movl	56(%rax), %eax
	imulq	%rax, %r12
.LBB12_11:                              # %if.end
	movl	(%r13), %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	sete	%cl
	jne	.LBB12_13
# BB#12:
	mulss	.LCPI12_2(%rip), %xmm3
.LBB12_13:                              # %if.end
	shlq	%cl, %r12
	cvtss2sd	%xmm3, %xmm1
	cvtsi2sdq	%r12, %xmm2
	movsd	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB12_15
# BB#14:
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm0, %xmm3
.LBB12_15:                              # %if.end
	movslq	24(%r15), %rax
	testq	%rax, %rax
	jle	.LBB12_26
# BB#16:                                # %for.body.lr.ph
	xorl	%ecx, %ecx
	testb	$1, %al
	je	.LBB12_20
# BB#17:                                # %for.body.prol
	testq	%rbp, %rbp
	movaps	%xmm3, %xmm0
	je	.LBB12_19
# BB#18:                                # %cond.false.70.prol
	movss	4(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	(%rbp), %xmm0
	mulss	%xmm3, %xmm0
.LBB12_19:                              # %cond.end.75.prol
	movss	%xmm0, 28(%r15)
	movl	$1, %ecx
.LBB12_20:                              # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB12_26
	.align	16, 0x90
.LBB12_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	movaps	%xmm3, %xmm0
	je	.LBB12_23
# BB#22:                                # %cond.false.70
                                        #   in Loop: Header=BB12_21 Depth=1
	movss	4(%rbp,%rcx,8), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	(%rbp,%rcx,8), %xmm0
	mulss	%xmm3, %xmm0
.LBB12_23:                              # %cond.end.75
                                        #   in Loop: Header=BB12_21 Depth=1
	testq	%rbp, %rbp
	movss	%xmm0, 28(%r15,%rcx,4)
	movaps	%xmm3, %xmm0
	je	.LBB12_25
# BB#24:                                # %cond.false.70.1
                                        #   in Loop: Header=BB12_21 Depth=1
	movss	12(%rbp,%rcx,8), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	8(%rbp,%rcx,8), %xmm0
	mulss	%xmm3, %xmm0
.LBB12_25:                              # %cond.end.75.1
                                        #   in Loop: Header=BB12_21 Depth=1
	movss	%xmm0, 32(%r15,%rcx,4)
	addq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB12_21
.LBB12_26:                              # %for.end
	cmpl	$0, 256(%r14)
	je	.LBB12_28
# BB#27:                                # %land.lhs.true
	movq	264(%r14), %rax
	testq	%rax, %rax
	jne	.LBB12_29
.LBB12_28:                              # %if.else
	movq	8(%rsp), %rax           # 8-byte Reload
.LBB12_29:                              # %if.end.85
	movq	%rax, 288(%r15)
	movq	%rbx, %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	je	.LBB12_32
# BB#30:                                # %land.lhs.true.88
	cmpq	$0, 48(%rbx)
	jne	.LBB12_32
# BB#31:                                # %if.then.91
	movq	8(%r14), %rdx
	leaq	52(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_colorspace_set_icc_equivalent
.LBB12_32:                              # %if.end.93
	movl	328(%r14), %eax
	movl	%eax, 28(%rsp)
	movl	324(%r14), %eax
	movl	%eax, 24(%rsp)
	movaps	.LCPI12_4(%rip), %xmm0  # xmm0 = [8,4,0,0]
	movups	%xmm0, 32(%rsp)
	cmpq	$0, 64(%rbx)
	je	.LBB12_34
# BB#33:                                # %if.then.97
	movq	8(%r14), %r9
	movq	264(%r14), %rsi
	leaq	24(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	jmp	.LBB12_36
.LBB12_34:                              # %if.else.106
	movq	48(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB12_37
# BB#35:                                # %if.then.110
	movq	8(%r14), %r9
	movq	264(%r14), %rsi
	leaq	24(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%r14, %rdi
.LBB12_36:                              # %if.then.110
	callq	gsicc_get_link
	movq	%rax, %rcx
	movq	%rcx, 296(%r15)
	movl	$-25, %eax
	testq	%rcx, %rcx
	jne	.LBB12_38
	jmp	.LBB12_39
.LBB12_37:                              # %if.else.121
	movq	$0, 296(%r15)
.LBB12_38:                              # %if.end.124
	xorl	%eax, %eax
.LBB12_39:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	shade_init_fill_state, .Lfunc_end12-shade_init_fill_state
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_6
	.quad	.LBB12_6
	.quad	.LBB12_7
	.quad	.LBB12_7
	.quad	.LBB12_9
	.quad	.LBB12_5
	.quad	.LBB12_9
	.quad	.LBB12_8

	.text
	.globl	shade_fill_path
	.align	16, 0x90
	.type	shade_fill_path,@function
shade_fill_path:                        # @shade_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 32
	movq	%rdx, %r8
	movq	%rsi, %rdx
	movl	$-1, 8(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 12(%rsp)
	movl	$0, 20(%rsp)
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	leaq	8(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	callq	*1336(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end13:
	.size	shade_fill_path, .Lfunc_end13-shade_fill_path
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
