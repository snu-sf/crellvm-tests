	.text
	.file	"gdevpsdu.bc"
	.globl	psdf_setlinewidth
	.align	16, 0x90
	.type	psdf_setlinewidth,@function
psdf_setlinewidth:                      # @psdf_setlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	gdev_vector_stream
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	psdf_setlinewidth, .Lfunc_end0-psdf_setlinewidth
	.cfi_endproc

	.globl	psdf_setlinecap
	.align	16, 0x90
	.type	psdf_setlinecap,@function
psdf_setlinecap:                        # @psdf_setlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 48
.Ltmp6:
	.cfi_offset %rbx, -40
.Ltmp7:
	.cfi_offset %r12, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	cmpl	$3, %ebx
	jae	.LBB1_1
# BB#6:                                 # %sw.bb
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
	movl	%ebx, %edx
	jmp	.LBB1_5
.LBB1_1:                                # %entry
	jne	.LBB1_3
# BB#2:                                 # %sw.bb.2
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movl	$.L.str.15, %esi
	movl	$1, %edx
	jmp	.LBB1_4
.LBB1_3:                                # %sw.default
	movq	24(%r14), %r15
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movl	$.L.str.15, %esi
	xorl	%edx, %edx
.LBB1_4:                                # %sw.epilog
	movq	%rax, %rdi
.LBB1_5:                                # %sw.epilog
	callq	pprintd1
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	psdf_setlinecap, .Lfunc_end1-psdf_setlinecap
	.cfi_endproc

	.globl	psdf_setlinejoin
	.align	16, 0x90
	.type	psdf_setlinejoin,@function
psdf_setlinejoin:                       # @psdf_setlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 48
.Ltmp15:
	.cfi_offset %rbx, -40
.Ltmp16:
	.cfi_offset %r12, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	cmpl	$3, %ebx
	jae	.LBB2_1
# BB#5:                                 # %sw.bb
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movl	$.L.str.17, %esi
	movq	%rax, %rdi
	movl	%ebx, %edx
	jmp	.LBB2_8
.LBB2_1:                                # %entry
	jne	.LBB2_2
# BB#6:                                 # %sw.bb.2
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movl	$.L.str.17, %esi
	movl	$2, %edx
	jmp	.LBB2_7
.LBB2_2:                                # %entry
	cmpl	$4, %ebx
	je	.LBB2_4
# BB#3:                                 # %sw.default
	movq	24(%r14), %r15
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
.LBB2_4:                                # %sw.epilog
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movl	$.L.str.17, %esi
	xorl	%edx, %edx
.LBB2_7:                                # %sw.epilog
	movq	%rax, %rdi
.LBB2_8:                                # %sw.epilog
	callq	pprintd1
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	psdf_setlinejoin, .Lfunc_end2-psdf_setlinejoin
	.cfi_endproc

	.globl	psdf_setmiterlimit
	.align	16, 0x90
	.type	psdf_setmiterlimit,@function
psdf_setmiterlimit:                     # @psdf_setmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	gdev_vector_stream
	movl	$.L.str.19, %esi
	movq	%rax, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	psdf_setmiterlimit, .Lfunc_end3-psdf_setmiterlimit
	.cfi_endproc

	.globl	psdf_setdash
	.align	16, 0x90
	.type	psdf_setdash,@function
psdf_setdash:                           # @psdf_setdash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 48
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	%edx, %ebp
	movq	%rsi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	callq	stream_puts
	testl	%ebp, %ebp
	je	.LBB4_2
	.align	16, 0x90
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	pprintg1
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB4_1
.LBB4_2:                                # %for.end
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	psdf_setdash, .Lfunc_end4-psdf_setdash
	.cfi_endproc

	.globl	psdf_setflat
	.align	16, 0x90
	.type	psdf_setflat,@function
psdf_setflat:                           # @psdf_setflat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	gdev_vector_stream
	movl	$.L.str.23, %esi
	movq	%rax, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end5:
	.size	psdf_setflat, .Lfunc_end5-psdf_setflat
	.cfi_endproc

	.globl	psdf_setlogop
	.align	16, 0x90
	.type	psdf_setlogop,@function
psdf_setlogop:                          # @psdf_setlogop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	psdf_setlogop, .Lfunc_end6-psdf_setlogop
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	psdf_dorect
	.align	16, 0x90
	.type	psdf_dorect,@function
psdf_dorect:                            # @psdf_dorect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 64
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %r12d
	movl	%ecx, %ebp
	movl	%edx, %r15d
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	1736(%rbx), %rax
	movl	%r14d, %esi
	callq	*104(%rax)
	testl	%eax, %eax
	js	.LBB7_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	callq	gdev_vector_stream
	cvtsi2sdl	%r13d, %xmm0
	movsd	.LCPI7_0(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm0
	cvtsi2sdl	%r15d, %xmm1
	mulsd	%xmm4, %xmm1
	subl	%r13d, %ebp
	cvtsi2sdl	%ebp, %xmm2
	mulsd	%xmm4, %xmm2
	subl	%r15d, %r12d
	cvtsi2sdl	%r12d, %xmm3
	mulsd	%xmm4, %xmm3
	movl	$.L.str.24, %esi
	movq	%rax, %rdi
	callq	pprintg4
	movq	1736(%rbx), %rax
	movq	144(%rax), %rax
	movq	%rbx, %rdi
	movl	%r14d, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB7_1:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	psdf_dorect, .Lfunc_end7-psdf_dorect
	.cfi_endproc

	.globl	psdf_beginpath
	.align	16, 0x90
	.type	psdf_beginpath,@function
psdf_beginpath:                         # @psdf_beginpath
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	psdf_beginpath, .Lfunc_end8-psdf_beginpath
	.cfi_endproc

	.globl	psdf_moveto
	.align	16, 0x90
	.type	psdf_moveto,@function
psdf_moveto:                            # @psdf_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 32
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	callq	gdev_vector_stream
	movl	$.L.str.25, %esi
	movq	%rax, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pprintg2
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
.Lfunc_end9:
	.size	psdf_moveto, .Lfunc_end9-psdf_moveto
	.cfi_endproc

	.globl	psdf_lineto
	.align	16, 0x90
	.type	psdf_lineto,@function
psdf_lineto:                            # @psdf_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 32
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	callq	gdev_vector_stream
	movl	$.L.str.26, %esi
	movq	%rax, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pprintg2
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
.Lfunc_end10:
	.size	psdf_lineto, .Lfunc_end10-psdf_lineto
	.cfi_endproc

	.globl	psdf_curveto
	.align	16, 0x90
	.type	psdf_curveto,@function
psdf_curveto:                           # @psdf_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 64
	ucomisd	%xmm0, %xmm2
	setnp	%al
	sete	%cl
	andb	%al, %cl
	ucomisd	%xmm1, %xmm3
	setnp	%dl
	sete	%al
	andb	%dl, %al
	andb	%cl, %al
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	jne	.LBB11_4
# BB#1:                                 # %entry
	ucomisd	%xmm6, %xmm4
	jne	.LBB11_4
	jp	.LBB11_4
# BB#2:                                 # %entry
	ucomisd	%xmm7, %xmm5
	jne	.LBB11_4
	jp	.LBB11_4
# BB#3:                                 # %if.then
	movsd	%xmm7, 48(%rsp)         # 8-byte Spill
	movsd	%xmm6, 40(%rsp)         # 8-byte Spill
	callq	gdev_vector_stream
	movl	$.L.str.26, %esi
	movq	%rax, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pprintg2
	jmp	.LBB11_10
.LBB11_4:                               # %if.else
	movsd	%xmm4, 24(%rsp)         # 8-byte Spill
	movsd	%xmm5, 32(%rsp)         # 8-byte Spill
	movsd	%xmm6, 40(%rsp)         # 8-byte Spill
	movsd	%xmm7, 48(%rsp)         # 8-byte Spill
	testb	%al, %al
	je	.LBB11_6
# BB#5:                                 # %if.then.10
	callq	gdev_vector_stream
	movl	$.L.str.27, %esi
	movq	%rax, %rdi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	pprintg4
	jmp	.LBB11_10
.LBB11_6:                               # %if.else.13
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	callq	gdev_vector_stream
	movsd	40(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm4, %xmm2
	movsd	48(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	32(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jne	.LBB11_9
	jp	.LBB11_9
# BB#7:                                 # %if.else.13
	ucomisd	%xmm5, %xmm3
	jne	.LBB11_9
	jp	.LBB11_9
# BB#8:                                 # %if.then.17
	movl	$.L.str.28, %esi
	movq	%rax, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pprintg4
	jmp	.LBB11_10
.LBB11_9:                               # %if.else.20
	movl	$.L.str.29, %esi
	movq	%rax, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pprintg6
.LBB11_10:                              # %if.end.24
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
.Lfunc_end11:
	.size	psdf_curveto, .Lfunc_end11-psdf_curveto
	.cfi_endproc

	.globl	psdf_closepath
	.align	16, 0x90
	.type	psdf_closepath,@function
psdf_closepath:                         # @psdf_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 16
	callq	gdev_vector_stream
	movl	$.L.str.30, %esi
	movq	%rax, %rdi
	callq	stream_puts
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end12:
	.size	psdf_closepath, .Lfunc_end12-psdf_closepath
	.cfi_endproc

	.globl	psdf_adjust_color_index
	.align	16, 0x90
	.type	psdf_adjust_color_index,@function
psdf_adjust_color_index:                # @psdf_adjust_color_index
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$-2, %rsi
	movq	$-1, %rax
	cmovneq	%rsi, %rax
	retq
.Lfunc_end13:
	.size	psdf_adjust_color_index, .Lfunc_end13-psdf_adjust_color_index
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
.LCPI14_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	psdf_round
	.align	16, 0x90
	.type	psdf_round,@function
psdf_round:                             # @psdf_round
	.cfi_startproc
# BB#0:                                 # %entry
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB14_6
# BB#1:                                 # %while.cond.preheader
	cvtsi2sdl	%edi, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB14_2
# BB#3:                                 # %while.body.lr.ph
	cvtsi2sdl	%esi, %xmm3
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB14_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	mulsd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm1
	ucomisd	%xmm0, %xmm2
	ja	.LBB14_4
	jmp	.LBB14_5
.LBB14_2:
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB14_5:                               # %while.end
	addsd	.LCPI14_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
.LBB14_6:                               # %cleanup
	retq
.Lfunc_end14:
	.size	psdf_round, .Lfunc_end14-psdf_round
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4616013006304665439     # double 3.9215686274509802
.LCPI15_1:
	.quad	4602678819172646912     # double 0.5
.LCPI15_2:
	.quad	4652007308841189376     # double 1000
.LCPI15_3:
	.quad	4607182418800017408     # double 1
	.text
	.globl	psdf_set_color
	.align	16, 0x90
	.type	psdf_set_color,@function
psdf_set_color:                         # @psdf_set_color
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
	pushq	%rax
.Ltmp51:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%ecx, %ecx
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	100(%rbp), %r12d
	jmp	.LBB15_4
.LBB15_2:                               # %if.else
	leaq	(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*1680(%rbp)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_18
# BB#3:                                 # %if.end
	movq	(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %r12d
.LBB15_4:                               # %if.end.3
	movq	(%rbx), %rax
	movl	$-15, %r13d
	cmpq	gx_dc_type_pure(%rip), %rax
	jne	.LBB15_18
# BB#5:                                 # %if.end.6
	movq	%rbp, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r14
	movq	8(%rbx), %rcx
	cmpq	$-2, %rcx
	movq	$-1, %rax
	cmovneq	%rcx, %rax
	movl	$-1, %edx
	cmovnel	%ecx, %edx
	movzbl	%dl, %ecx
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI15_0(%rip), %xmm0
	addsd	.LCPI15_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm3
	divsd	.LCPI15_2(%rip), %xmm3
	cmpl	$4, %r12d
	je	.LBB15_8
# BB#6:                                 # %if.end.6
	cmpl	$3, %r12d
	jne	.LBB15_7
# BB#13:                                # %sw.bb.23
	movq	%rax, %rcx
	shrq	$8, %rcx
	movw	%cx, %dx
	xorw	%ax, %dx
	jne	.LBB15_15
# BB#14:                                # %land.lhs.true.27
	cmpq	$0, (%r15)
	jne	.LBB15_11
.LBB15_15:                              # %if.end.31
	shrl	$16, %eax
	movzbl	%al, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI15_1(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI15_2(%rip), %xmm4  # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm0
	movzbl	%cl, %eax
	cvtsi2sdl	%eax, %xmm5
	mulsd	%xmm1, %xmm5
	addsd	%xmm2, %xmm5
	cvttsd2si	%xmm5, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm4, %xmm1
	movl	$.L.str.32, %esi
	movq	%r14, %rdi
	movapd	%xmm3, %xmm2
	callq	pprintg3
	addq	$8, %r15
	jmp	.LBB15_16
.LBB15_8:                               # %sw.bb
	testl	$-256, %eax
	jne	.LBB15_12
# BB#9:                                 # %land.lhs.true
	cmpq	$0, (%r15)
	je	.LBB15_12
# BB#10:                                # %if.then.13
	movsd	.LCPI15_3(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm3, %xmm0
	movapd	%xmm0, %xmm3
	jmp	.LBB15_11
.LBB15_7:                               # %if.end.6
	cmpl	$1, %r12d
	jne	.LBB15_18
.LBB15_11:                              # %g
	movl	$.L.str.33, %esi
	movq	%r14, %rdi
	movapd	%xmm3, %xmm0
	callq	pprintg1
	jmp	.LBB15_16
.LBB15_12:                              # %if.end.14
	movq	%rax, %rcx
	shrq	$24, %rcx
	movl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	movsd	.LCPI15_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	.LCPI15_1(%rip), %xmm4  # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI15_2(%rip), %xmm5  # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm0
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm5, %xmm1
	movzbl	%ah, %eax  # NOREX
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm2, %xmm6
	addsd	%xmm4, %xmm6
	cvttsd2si	%xmm6, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm5, %xmm2
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	callq	pprintg4
	addq	$16, %r15
.LBB15_16:                              # %sw.epilog
	movq	(%r15), %rdx
	xorl	%r13d, %r13d
	testq	%rdx, %rdx
	je	.LBB15_18
# BB#17:                                # %if.then.43
	movl	$.L.str.34, %esi
	movq	%r14, %rdi
	callq	pprints1
.LBB15_18:                              # %cleanup.48
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	psdf_set_color, .Lfunc_end15-psdf_set_color
	.cfi_endproc

	.globl	psdf_begin_binary
	.align	16, 0x90
	.type	psdf_begin_binary,@function
psdf_begin_binary:                      # @psdf_begin_binary
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
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 64
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	1728(%rbx), %r14
	movq	%r14, (%r12)
	movq	5848(%rbx), %rax
	movq	%rax, 8(%r12)
	movq	%rbx, 24(%r12)
	movq	$0, 16(%r12)
	cmpl	$0, 8852(%rbx)
	je	.LBB16_1
# BB#6:                                 # %if.else
	movq	%rax, 16(%r12)
	jmp	.LBB16_7
.LBB16_1:                               # %if.then
	movl	$100, %esi
	movl	$.L.str.35, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %r15
	movq	s_A85E_template(%rip), %rsi
	movl	$.L.str.36, %edx
	movq	%r14, %rdi
	callq	s_alloc_state
	movq	%rax, %r13
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	s_alloc
	movq	%rax, %rbp
	testq	%r15, %r15
	je	.LBB16_4
# BB#2:                                 # %if.then
	testq	%r13, %r13
	je	.LBB16_4
# BB#3:                                 # %if.then
	testq	%rbp, %rbp
	je	.LBB16_4
# BB#5:                                 # %if.end
	movq	$s_A85E_template, (%r13)
	movq	5848(%rbx), %r8
	movl	$100, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	s_init_filter
	movq	%rbp, 16(%r12)
.LBB16_7:                               # %cleanup.21
	xorl	%eax, %eax
	jmp	.LBB16_8
.LBB16_4:                               # %if.then.7
	movl	$.L.str.37, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*24(%r14)
	movl	$.L.str.36, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*24(%r14)
	movl	$.L.str.35, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	movl	$-25, %eax
.LBB16_8:                               # %cleanup.21
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	psdf_begin_binary, .Lfunc_end16-psdf_begin_binary
	.cfi_endproc

	.globl	psdf_encode_binary
	.align	16, 0x90
	.type	psdf_encode_binary,@function
psdf_encode_binary:                     # @psdf_encode_binary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rcx
	addq	$16, %rdi
	callq	s_add_filter
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movl	$-25, %eax
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end17:
	.size	psdf_encode_binary, .Lfunc_end17-psdf_encode_binary
	.cfi_endproc

	.globl	psdf_DCT_filter
	.align	16, 0x90
	.type	psdf_DCT_filter,@function
psdf_DCT_filter:                        # @psdf_DCT_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 128
.Ltmp78:
	.cfi_offset %rbx, -48
.Ltmp79:
	.cfi_offset %r12, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	%edx, 76(%rsp)
	movl	%ecx, 72(%rsp)
	movl	%r8d, 68(%rsp)
	movq	8(%r14), %rbx
	leaq	8(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gs_c_param_list_write
	leaq	72(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%rbp, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB18_12
# BB#1:                                 # %lor.lhs.false
	leaq	8(%rsp), %rdi
	leaq	76(%rsp), %rdx
	movl	$.L.str.39, %esi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB18_12
# BB#2:                                 # %lor.lhs.false.3
	leaq	8(%rsp), %rdi
	leaq	68(%rsp), %rdx
	movl	$.L.str.40, %esi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB18_12
# BB#3:                                 # %if.end
	leaq	8(%rsp), %rdi
	callq	gs_c_param_list_read
	testq	%r12, %r12
	je	.LBB18_5
# BB#4:                                 # %if.then.6
	leaq	8(%rsp), %rdi
	movq	%r12, %rsi
	callq	gs_c_param_list_set_target
.LBB18_5:                               # %if.end.7
	movl	$st_jpeg_compress_data, %esi
	movl	$.L.str.41, %edx
	movq	%rbx, %rdi
	callq	*80(%rbx)
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB18_13
# BB#6:                                 # %if.end.11
	movq	%r12, 152(%r14)
	movq	%rbx, 144(%r14)
	movq	%rbx, 432(%r12)
	movq	%r14, %rdi
	callq	gs_jpeg_create_compress
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB18_11
# BB#7:                                 # %if.end.16
	leaq	8(%rsp), %rdi
	movq	%r14, %rsi
	callq	s_DCTE_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB18_13
# BB#8:                                 # %if.end.20
	movq	s_DCTE_template+48(%rip), %rax
	movq	%rax, 48(%r12)
	movups	s_DCTE_template+32(%rip), %xmm0
	movups	%xmm0, 32(%r12)
	movups	s_DCTE_template+16(%rip), %xmm0
	movups	%xmm0, 16(%r12)
	movups	s_DCTE_template(%rip), %xmm0
	movups	%xmm0, (%r12)
	movl	512(%r12), %eax
	imull	520(%r12), %eax
	movl	%eax, 184(%r14)
	movq	$0, 160(%r14)
	movq	s_DCTE_template+24(%rip), %rcx
	cmpl	%eax, %ecx
	cmoval	%ecx, %eax
	movl	%eax, 24(%r12)
	shrq	$32, %rcx
	movl	120(%r14), %eax
	cmpl	%eax, %ecx
	cmoval	%ecx, %eax
	movl	%eax, 28(%r12)
	testq	%r15, %r15
	je	.LBB18_10
# BB#9:                                 # %if.then.35
	movq	(%r15), %rcx
	addq	$16, %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	s_add_filter
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB18_11
.LBB18_10:                              # %if.then.40
	leaq	8(%rsp), %rdi
	callq	gs_c_param_list_release
	xorl	%ebp, %ebp
	jmp	.LBB18_13
.LBB18_11:                              # %dcte_fail
	movq	%r14, %rdi
	callq	gs_jpeg_destroy
	movl	$.L.str.42, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	movq	$0, 152(%r14)
.LBB18_12:                              # %rcc_fail
	leaq	8(%rsp), %rdi
	callq	gs_c_param_list_release
.LBB18_13:                              # %cleanup
	movl	%ebp, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	psdf_DCT_filter, .Lfunc_end18-psdf_DCT_filter
	.cfi_endproc

	.globl	psdf_CFE_binary
	.align	16, 0x90
	.type	psdf_CFE_binary,@function
psdf_CFE_binary:                        # @psdf_CFE_binary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 48
.Ltmp88:
	.cfi_offset %rbx, -48
.Ltmp89:
	.cfi_offset %r12, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %r15
	movq	(%r15), %r14
	movq	s_CFE_template(%rip), %rsi
	movl	$.L.str.43, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB19_3
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	*s_CFE_template+40(%rip)
	movl	$-1, 124(%rbx)
	movl	%ebp, 136(%rbx)
	movl	$0, 140(%rbx)
	testl	%r12d, %r12d
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 148(%rbx)
	movq	16(%r15), %rax
	movq	256(%rax), %rax
	movl	$s_A85E_template, %ecx
	cmpq	%rcx, (%rax)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 144(%rbx)
	movq	(%r15), %rcx
	leaq	16(%r15), %rdi
	movl	$s_CFE_template, %esi
	movq	%rbx, %rdx
	callq	s_add_filter
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jne	.LBB19_3
# BB#2:                                 # %if.then.6
	movl	$.L.str.43, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	movl	$-25, %eax
.LBB19_3:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	psdf_CFE_binary, .Lfunc_end19-psdf_CFE_binary
	.cfi_endproc

	.globl	psdf_end_binary
	.align	16, 0x90
	.type	psdf_end_binary,@function
psdf_end_binary:                        # @psdf_end_binary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rsi
	addq	$16, %rdi
	callq	s_close_filters
	sarl	$31, %eax
	andl	$-12, %eax
	popq	%rdx
	retq
.Lfunc_end20:
	.size	psdf_end_binary, .Lfunc_end20-psdf_end_binary
	.cfi_endproc

	.globl	psdf_get_bits
	.align	16, 0x90
	.type	psdf_get_bits,@function
psdf_get_bits:                          # @psdf_get_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 32
.Ltmp97:
	.cfi_offset %rbx, -32
.Ltmp98:
	.cfi_offset %r14, -24
.Ltmp99:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	*1304(%rbx)
	cmpl	$2, %eax
	jl	.LBB21_2
# BB#1:                                 # %if.then
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rdi
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB21_2:                               # %if.end
	movl	$-28, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	psdf_get_bits, .Lfunc_end21-psdf_get_bits
	.cfi_endproc

	.globl	psdf_get_bits_rectangle
	.align	16, 0x90
	.type	psdf_get_bits_rectangle,@function
psdf_get_bits_rectangle:                # @psdf_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-28, %eax
	retq
.Lfunc_end22:
	.size	psdf_get_bits_rectangle, .Lfunc_end22-psdf_get_bits_rectangle
	.cfi_endproc

	.globl	psdf_create_compositor
	.align	16, 0x90
	.type	psdf_create_compositor,@function
psdf_create_compositor:                 # @psdf_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp106:
	.cfi_def_cfa_offset 64
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	callq	gs_is_overprint_compositor
	testl	%eax, %eax
	je	.LBB23_2
# BB#1:                                 # %return
	movq	%rbp, (%r13)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_2:                               # %if.else
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_create_compositor # TAILCALL
.Lfunc_end23:
	.size	psdf_create_compositor, .Lfunc_end23-psdf_create_compositor
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_psdf"
	.size	.L.str, 15

	.type	device_psdf_data,@object # @device_psdf_data
	.section	.rodata,"a",@progbits
	.align	8
device_psdf_data:
	.short	14                      # 0xe
	.short	0                       # 0x0
	.zero	4
	.quad	st_device_vector
	.quad	device_psdf_ptrs
	.size	device_psdf_data, 24

	.type	st_device_psdf,@object  # @st_device_psdf
	.globl	st_device_psdf
	.align	8
st_device_psdf:
	.long	9360                    # 0x2490
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	device_psdf_data
	.size	st_device_psdf, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"psdf_binary_writer"
	.size	.L.str.1, 19

	.type	psdf_binary_writer_reloc_ptrs,@object # @psdf_binary_writer_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
psdf_binary_writer_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	psdf_binary_writer_enum_ptrs
	.size	psdf_binary_writer_reloc_ptrs, 24

	.type	st_psdf_binary_writer,@object # @st_psdf_binary_writer
	.globl	st_psdf_binary_writer
	.align	8
st_psdf_binary_writer:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	psdf_binary_writer_reloc_ptrs
	.size	st_psdf_binary_writer, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"g"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rg"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"k"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cs"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"sc"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"scn"
	.size	.L.str.7, 4

	.type	psdf_set_fill_color_commands,@object # @psdf_set_fill_color_commands
	.section	.rodata,"a",@progbits
	.globl	psdf_set_fill_color_commands
	.align	8
psdf_set_fill_color_commands:
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.size	psdf_set_fill_color_commands, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"G"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"RG"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"K"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"CS"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"SC"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"SCN"
	.size	.L.str.13, 4

	.type	psdf_set_stroke_color_commands,@object # @psdf_set_stroke_color_commands
	.section	.rodata,"a",@progbits
	.globl	psdf_set_stroke_color_commands
	.align	8
psdf_set_stroke_color_commands:
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.size	psdf_set_stroke_color_commands, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"%g w\n"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%d J\n"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unknown line cap enumerator %d, substituting butt\n"
	.size	.L.str.16, 51

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%d j\n"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Unknown line join enumerator %d, substituting miter\n"
	.size	.L.str.18, 53

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%g M\n"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"[ "
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%g "
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"] %g d\n"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%g i\n"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%g %g %g %g re\n"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%g %g m\n"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%g %g l\n"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%g %g %g %g v\n"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%g %g %g %g y\n"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%g %g %g %g %g %g c\n"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"h\n"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%g %g %g %g"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%g %g %g"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%g"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	" %s\n"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"psdf_begin_binary(buf)"
	.size	.L.str.35, 23

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"psdf_begin_binary(stream_state)"
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"psdf_begin_binary(stream)"
	.size	.L.str.37, 26

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Rows"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Columns"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Colors"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"zDCTE"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"setup_image_compression"
	.size	.L.str.42, 24

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"psdf_CFE_binary"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Can't set GraphicsAlphaBits > 1 with a vector device %s.\n"
	.size	.L.str.44, 58

	.type	device_psdf_ptrs,@object # @device_psdf_ptrs
	.section	.rodata,"a",@progbits
	.align	16
device_psdf_ptrs:
	.short	0                       # 0x0
	.short	9032                    # 0x2348
	.short	0                       # 0x0
	.short	9056                    # 0x2360
	.short	2                       # 0x2
	.short	8944                    # 0x22f0
	.short	2                       # 0x2
	.short	8960                    # 0x2300
	.short	2                       # 0x2
	.short	8976                    # 0x2310
	.short	2                       # 0x2
	.short	8992                    # 0x2320
	.short	0                       # 0x0
	.short	9120                    # 0x23a0
	.short	0                       # 0x0
	.short	9144                    # 0x23b8
	.short	0                       # 0x0
	.short	9200                    # 0x23f0
	.short	0                       # 0x0
	.short	9224                    # 0x2408
	.short	0                       # 0x0
	.short	9280                    # 0x2440
	.short	0                       # 0x0
	.short	9296                    # 0x2450
	.short	2                       # 0x2
	.short	9328                    # 0x2470
	.short	0                       # 0x0
	.short	9344                    # 0x2480
	.size	device_psdf_ptrs, 56

	.type	psdf_binary_writer_enum_ptrs,@object # @psdf_binary_writer_enum_ptrs
	.align	2
psdf_binary_writer_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	psdf_binary_writer_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
