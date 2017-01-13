	.text
	.file	"gspath1.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gx_setcurrentpoint_from_path
	.align	16, 0x90
	.type	gx_setcurrentpoint_from_path,@function
gx_setcurrentpoint_from_path:           # @gx_setcurrentpoint_from_path
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsi2sdl	112(%rsi), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	116(%rsi), %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm0, 176(%rdi)
	movsd	%xmm2, 184(%rdi)
	movl	$1, 168(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gx_setcurrentpoint_from_path, .Lfunc_end0-gx_setcurrentpoint_from_path
	.cfi_endproc

	.globl	gs_arc
	.align	16, 0x90
	.type	gs_arc,@function
gs_arc:                                 # @gs_arc
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$1, %edx
	jmp	gs_arc_add_inline       # TAILCALL
.Lfunc_end1:
	.size	gs_arc, .Lfunc_end1-gs_arc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4640537203540230144     # double 180
.LCPI2_2:
	.quad	4645040803167600640     # double 360
.LCPI2_3:
	.quad	-4578331233687175168    # double -360
.LCPI2_4:
	.quad	4636033603912859648     # double 90
.LCPI2_5:
	.quad	4576184190849162553     # double 0.0087266462599716477
.LCPI2_6:
	.quad	-4587338432941916160    # double -90
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	gs_arc_add_inline,@function
gs_arc_add_inline:                      # @gs_arc_add_inline
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$224, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 272
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %r12
	movq	1680(%r12), %rax
	movq	%rax, 80(%rsp)
	movq	%r12, 88(%rsp)
	movsd	%xmm0, 96(%rsp)
	movsd	%xmm1, 104(%rsp)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.LBB2_1
# BB#2:                                 # %if.then.i
	movapd	%xmm1, (%rsp)           # 16-byte Spill
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm3
	addsd	%xmm0, %xmm4
	movapd	%xmm4, 64(%rsp)         # 16-byte Spill
	xorpd	.LCPI2_1(%rip), %xmm2
	jmp	.LBB2_3
.LBB2_1:
	movapd	%xmm1, (%rsp)           # 16-byte Spill
	movapd	%xmm4, 64(%rsp)         # 16-byte Spill
.LBB2_3:                                # %if.end.i
	movapd	%xmm2, 16(%rsp)         # 16-byte Spill
	movapd	%xmm3, 32(%rsp)         # 16-byte Spill
	movsd	%xmm2, 112(%rsp)
	cmpl	$1, %edx
	movl	$1, %eax
	sbbl	$-1, %eax
	movl	%eax, 120(%rsp)
	movl	$0, 124(%rsp)
	movl	$0, 208(%rsp)
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm3, %xmm0
	callq	fmod
	leaq	176(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_sincos_degrees
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	movhpd	176(%rsp), %xmm0
	movaps	16(%rsp), %xmm1         # 16-byte Reload
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm0, %xmm1
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	unpcklpd	(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0]
	addpd	%xmm1, %xmm0
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movupd	%xmm0, 144(%rsp)
	testl	%ebp, %ebp
	je	.LBB2_9
# BB#4:                                 # %while.cond.preheader.i
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	movapd	32(%rsp), %xmm0         # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	jbe	.LBB2_7
# BB#5:
	movsd	.LCPI2_3(%rip), %xmm0   # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB2_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm1
	ucomisd	%xmm2, %xmm1
	ja	.LBB2_6
.LBB2_7:                                # %while.end.i
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_8
# BB#13:                                # %if.then.19.i
	movapd	.LCPI2_1(%rip), %xmm0   # xmm0 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm0
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	callq	ceil
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	mulsd	.LCPI2_2(%rip), %xmm0
	movapd	32(%rsp), %xmm2         # 16-byte Reload
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	jmp	.LBB2_14
.LBB2_9:                                # %while.cond.58.preheader.i
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	movapd	%xmm1, %xmm2
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	jbe	.LBB2_11
	.align	16, 0x90
.LBB2_10:                               # %while.body.60.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	ja	.LBB2_10
.LBB2_11:                               # %while.end.62.i
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.LBB2_12
# BB#26:                                # %if.then.64.i
	movapd	.LCPI2_1(%rip), %xmm0   # xmm0 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	callq	ceil
	movapd	32(%rsp), %xmm2         # 16-byte Reload
	mulsd	.LCPI2_2(%rip), %xmm0
	addsd	%xmm0, %xmm2
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	addsd	%xmm0, %xmm1
	jmp	.LBB2_27
.LBB2_8:
	movapd	32(%rsp), %xmm2         # 16-byte Reload
.LBB2_14:                               # %if.end.25.i
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	leaq	200(%rsp), %r15
	movsd	%xmm2, 200(%rsp)
	ucomisd	%xmm1, %xmm2
	jne	.LBB2_15
	jnp	.LBB2_19
.LBB2_15:                               # %if.end.28.i
	cmpl	$0, 192(%rsp)
	je	.LBB2_17
# BB#16:
	movapd	64(%rsp), %xmm1         # 16-byte Reload
.LBB2_22:                               # %while.cond.46.preheader.i
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.LBB2_37
# BB#23:
	leaq	80(%rsp), %rbp
	movabsq	$4294967296, %rbx       # imm = 0x100000000
	.align	16, 0x90
.LBB2_24:                               # %while.body.50.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	next_arc_quadrant
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	testl	%eax, %eax
	js	.LBB2_39
# BB#25:                                # %if.end.54.i
                                        #   in Loop: Header=BB2_24 Depth=1
	movq	%rbx, 120(%rsp)
	movsd	200(%rsp), %xmm2        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm0
	addsd	.LCPI2_6(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	jae	.LBB2_24
	jmp	.LBB2_37
.LBB2_12:
	movapd	64(%rsp), %xmm1         # 16-byte Reload
.LBB2_27:                               # %if.end.72.i
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	movsd	%xmm2, 200(%rsp)
	ucomisd	%xmm1, %xmm2
	jne	.LBB2_29
	jp	.LBB2_29
# BB#28:                                # %if.then.75.i
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	movups	%xmm0, 128(%rsp)
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	mulsd	.LCPI2_5(%rip), %xmm0
	callq	tan
	mulsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movupd	176(%rsp), %xmm1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm1, %xmm0
	movapd	48(%rsp), %xmm2         # 16-byte Reload
	movapd	%xmm2, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm2, %xmm0
	movsd	%xmm1, %xmm0            # xmm0 = xmm1[0],xmm0[1]
	movupd	%xmm0, 160(%rsp)
	movaps	64(%rsp), %xmm0         # 16-byte Reload
	movq	%r14, %rdi
	callq	gs_sincos_degrees
	movupd	96(%rsp), %xmm0
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	184(%rsp), %xmm2        # xmm2 = mem[0],zero
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movhpd	176(%rsp), %xmm2
	mulpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	movupd	%xmm2, 144(%rsp)
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	movsd	%xmm0, 200(%rsp)
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	callq	arc_add
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	testl	%eax, %eax
	js	.LBB2_39
.LBB2_29:                               # %if.end.81.i
	leaq	200(%rsp), %r15
	cmpl	$0, 192(%rsp)
	jne	.LBB2_33
# BB#30:                                # %if.then.85.i
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	divsd	.LCPI2_4(%rip), %xmm0
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	callq	ceil
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	mulsd	.LCPI2_4(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.LBB2_18
# BB#31:                                # %if.end.92.i
	movups	144(%rsp), %xmm1
	movaps	%xmm1, 16(%rsp)         # 16-byte Spill
	movups	%xmm1, 128(%rsp)
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	subsd	32(%rsp), %xmm0         # 16-byte Folded Reload
	mulsd	.LCPI2_5(%rip), %xmm0
	callq	tan
	mulsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movupd	176(%rsp), %xmm1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm1, %xmm0
	movapd	16(%rsp), %xmm2         # 16-byte Reload
	movapd	%xmm2, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm2, %xmm0
	movsd	%xmm1, %xmm0            # xmm0 = xmm1[0],xmm0[1]
	movupd	%xmm0, 160(%rsp)
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	gs_sincos_degrees
	movupd	96(%rsp), %xmm0
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	184(%rsp), %xmm2        # xmm2 = mem[0],zero
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movhpd	176(%rsp), %xmm2
	mulpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	movupd	%xmm2, 144(%rsp)
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	callq	arc_add
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	testl	%eax, %eax
	js	.LBB2_39
# BB#32:                                # %if.end.96.i
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 120(%rsp)
.LBB2_33:                               # %while.cond.100.preheader.i
	movsd	200(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI2_4(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.LBB2_37
# BB#34:
	leaq	80(%rsp), %rbp
	movabsq	$4294967296, %rbx       # imm = 0x100000000
	.align	16, 0x90
.LBB2_35:                               # %while.body.104.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	next_arc_quadrant
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	testl	%eax, %eax
	js	.LBB2_39
# BB#36:                                # %if.end.108.i
                                        #   in Loop: Header=BB2_35 Depth=1
	movq	%rbx, 120(%rsp)
	movsd	200(%rsp), %xmm2        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm0
	addsd	.LCPI2_4(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	jae	.LBB2_35
.LBB2_37:                               # %if.end.112.i
	ucomisd	%xmm1, %xmm2
	jne	.LBB2_19
	jp	.LBB2_19
	jmp	.LBB2_38
.LBB2_17:                               # %if.then.31.i
	movapd	%xmm2, %xmm0
	divsd	.LCPI2_4(%rip), %xmm0
	movapd	%xmm2, 32(%rsp)         # 16-byte Spill
	callq	floor
	mulsd	.LCPI2_4(%rip), %xmm0
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_20
.LBB2_18:
	movapd	32(%rsp), %xmm2         # 16-byte Reload
.LBB2_19:                               # %last.i
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	movups	144(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	movups	%xmm0, 128(%rsp)
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	mulsd	.LCPI2_5(%rip), %xmm0
	callq	tan
	mulsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movupd	176(%rsp), %xmm1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm1, %xmm0
	movapd	48(%rsp), %xmm2         # 16-byte Reload
	movapd	%xmm2, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm2, %xmm0
	movsd	%xmm1, %xmm0            # xmm0 = xmm1[0],xmm0[1]
	movupd	%xmm0, 160(%rsp)
	movaps	64(%rsp), %xmm0         # 16-byte Reload
	movq	%r14, %rdi
	callq	gs_sincos_degrees
	movupd	96(%rsp), %xmm0
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	184(%rsp), %xmm2        # xmm2 = mem[0],zero
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movhpd	176(%rsp), %xmm2
	mulpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	movupd	%xmm2, 144(%rsp)
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	movsd	%xmm0, (%r15)
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	callq	arc_add
	testl	%eax, %eax
	js	.LBB2_39
.LBB2_38:                               # %if.then.115.i
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # xmm1 = mem[0],zero
	movl	$1, 168(%r12)
	leaq	132(%r12), %rdi
	addq	$176, %r12
	movq	%r12, %rsi
	callq	gs_point_transform
.LBB2_39:                               # %cleanup
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_20:                               # %if.end.38.i
	movaps	48(%rsp), %xmm1         # 16-byte Reload
	movups	%xmm1, 128(%rsp)
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	subsd	32(%rsp), %xmm0         # 16-byte Folded Reload
	mulsd	.LCPI2_5(%rip), %xmm0
	callq	tan
	mulsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movupd	176(%rsp), %xmm1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm1, %xmm0
	movapd	48(%rsp), %xmm2         # 16-byte Reload
	movapd	%xmm2, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm2, %xmm0
	movsd	%xmm1, %xmm0            # xmm0 = xmm1[0],xmm0[1]
	movupd	%xmm0, 160(%rsp)
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	gs_sincos_degrees
	movupd	96(%rsp), %xmm0
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	184(%rsp), %xmm2        # xmm2 = mem[0],zero
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movhpd	176(%rsp), %xmm2
	mulpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	movupd	%xmm2, 144(%rsp)
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	callq	arc_add
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	testl	%eax, %eax
	js	.LBB2_39
# BB#21:                                # %if.end.42.i
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 120(%rsp)
	movsd	200(%rsp), %xmm2        # xmm2 = mem[0],zero
	jmp	.LBB2_22
.Lfunc_end2:
	.size	gs_arc_add_inline, .Lfunc_end2-gs_arc_add_inline
	.cfi_endproc

	.globl	gs_arcn
	.align	16, 0x90
	.type	gs_arcn,@function
gs_arcn:                                # @gs_arcn
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	movl	$1, %edx
	jmp	gs_arc_add_inline       # TAILCALL
.Lfunc_end3:
	.size	gs_arcn, .Lfunc_end3-gs_arcn
	.cfi_endproc

	.globl	gs_arc_add
	.align	16, 0x90
	.type	gs_arc_add,@function
gs_arc_add:                             # @gs_arc_add
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_arc_add_inline       # TAILCALL
.Lfunc_end4:
	.size	gs_arc_add, .Lfunc_end4-gs_arc_add
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_arcto
	.align	16, 0x90
	.type	gs_arcto,@function
gs_arcto:                               # @gs_arcto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	subq	$344, %rsp              # imm = 0x158
.Ltmp13:
	.cfi_def_cfa_offset 368
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movaps	%xmm4, 96(%rsp)         # 16-byte Spill
	movapd	%xmm3, 112(%rsp)        # 16-byte Spill
	movapd	%xmm2, 160(%rsp)        # 16-byte Spill
	movapd	%xmm1, 144(%rsp)        # 16-byte Spill
	movapd	%xmm0, 128(%rsp)        # 16-byte Spill
	movq	%rdi, %rbx
	leaq	320(%rsp), %rsi
	callq	gs_currentpoint
	testl	%eax, %eax
	js	.LBB5_18
# BB#1:                                 # %if.end
	movapd	128(%rsp), %xmm0        # 16-byte Reload
	movapd	%xmm0, %xmm8
	movapd	144(%rsp), %xmm0        # 16-byte Reload
	unpcklpd	%xmm0, %xmm8    # xmm8 = xmm8[0],xmm0[0]
	movapd	160(%rsp), %xmm1        # 16-byte Reload
	unpcklpd	112(%rsp), %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	subpd	%xmm8, %xmm1
	movapd	%xmm1, %xmm0
	mulpd	%xmm0, %xmm0
	movapd	%xmm0, %xmm7
	shufpd	$1, %xmm7, %xmm7        # xmm7 = xmm7[1,0]
	addsd	%xmm0, %xmm7
	movl	$-23, %eax
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm7
	movapd	%xmm1, %xmm2
	jne	.LBB5_2
	jnp	.LBB5_18
.LBB5_2:                                # %if.end
	movapd	320(%rsp), %xmm5
	subpd	%xmm8, %xmm5
	movapd	%xmm5, %xmm1
	mulpd	%xmm1, %xmm1
	movapd	%xmm1, %xmm6
	shufpd	$1, %xmm6, %xmm6        # xmm6 = xmm6[1,0]
	addsd	%xmm1, %xmm6
	ucomisd	%xmm0, %xmm6
	jne	.LBB5_3
	jnp	.LBB5_18
.LBB5_3:                                # %if.end.11
	movapd	%xmm2, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movapd	%xmm3, %xmm0
	mulpd	%xmm5, %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	ucomisd	%xmm1, %xmm0
	jne	.LBB5_5
	jp	.LBB5_5
# BB#4:                                 # %if.then.15
	movq	%rbx, %rdi
	movaps	128(%rsp), %xmm0        # 16-byte Reload
	movaps	144(%rsp), %xmm1        # 16-byte Reload
	callq	gs_lineto
	movapd	128(%rsp), %xmm3        # 16-byte Reload
	movapd	144(%rsp), %xmm2        # 16-byte Reload
	movapd	%xmm2, %xmm0
	movapd	%xmm3, %xmm1
	jmp	.LBB5_16
.LBB5_5:                                # %if.else
	movapd	%xmm3, 80(%rsp)         # 16-byte Spill
	movapd	%xmm8, 16(%rsp)         # 16-byte Spill
	movapd	%xmm5, 112(%rsp)        # 16-byte Spill
	movapd	%xmm2, 160(%rsp)        # 16-byte Spill
	subsd	%xmm0, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	movapd	%xmm7, %xmm0
	movapd	%xmm7, 64(%rsp)         # 16-byte Spill
	mulsd	%xmm6, %xmm0
	movapd	%xmm0, (%rsp)           # 16-byte Spill
	movapd	%xmm6, 48(%rsp)         # 16-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_7
# BB#6:                                 # %call.sqrt
	movapd	(%rsp), %xmm0           # 16-byte Reload
	callq	sqrt
.LBB5_7:                                # %if.else.split
	movapd	160(%rsp), %xmm1        # 16-byte Reload
	movapd	112(%rsp), %xmm2        # 16-byte Reload
	mulsd	%xmm2, %xmm1
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	movapd	80(%rsp), %xmm3         # 16-byte Reload
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm0
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	mulsd	96(%rsp), %xmm1         # 16-byte Folded Reload
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movapd	%xmm0, 80(%rsp)         # 16-byte Spill
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_9
# BB#8:                                 # %call.sqrt77
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	callq	sqrt
.LBB5_9:                                # %if.else.split.split
	movapd	80(%rsp), %xmm1         # 16-byte Reload
	divsd	%xmm0, %xmm1
	movapd	%xmm1, 48(%rsp)         # 16-byte Spill
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_11
# BB#10:                                # %call.sqrt78
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	callq	sqrt
.LBB5_11:                               # %if.else.split.split.split
	movapd	80(%rsp), %xmm3         # 16-byte Reload
	divsd	%xmm0, %xmm3
	movq	1680(%rbx), %rax
	movq	%rax, 176(%rsp)
	movq	%rbx, 184(%rsp)
	movapd	96(%rsp), %xmm4         # 16-byte Reload
	movsd	%xmm4, 208(%rsp)
	movl	$2, 216(%rsp)
	movl	$0, 220(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm4, %xmm1
	movapd	.LCPI5_0(%rip), %xmm0   # xmm0 = [9223372036854775808,9223372036854775808]
	movapd	48(%rsp), %xmm5         # 16-byte Reload
	movapd	%xmm5, %xmm2
	xorpd	%xmm0, %xmm2
	cmpltsd	%xmm1, %xmm4
	andpd	%xmm4, %xmm2
	andnpd	%xmm5, %xmm4
	orpd	%xmm2, %xmm4
	movapd	%xmm3, %xmm6
	jbe	.LBB5_13
# BB#12:
	xorpd	%xmm0, %xmm6
.LBB5_13:                               # %if.else.split.split.split
	movapd	160(%rsp), %xmm0        # 16-byte Reload
	movapd	144(%rsp), %xmm1        # 16-byte Reload
	movapd	128(%rsp), %xmm2        # 16-byte Reload
	movapd	112(%rsp), %xmm3        # 16-byte Reload
	movapd	16(%rsp), %xmm5         # 16-byte Reload
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	mulpd	%xmm4, %xmm3
	addpd	%xmm5, %xmm3
	movapd	%xmm3, 112(%rsp)        # 16-byte Spill
	movupd	%xmm3, 224(%rsp)
	movlhps	%xmm6, %xmm6            # xmm6 = xmm6[0,0]
	mulpd	%xmm6, %xmm0
	addpd	%xmm5, %xmm0
	movapd	%xmm0, 160(%rsp)        # 16-byte Spill
	movupd	%xmm0, 240(%rsp)
	movsd	%xmm2, 256(%rsp)
	movsd	%xmm1, 264(%rsp)
	leaq	176(%rsp), %rdi
	xorl	%esi, %esi
	callq	arc_add
	testl	%eax, %eax
	jne	.LBB5_15
# BB#14:                                # %if.then.56
	movq	1680(%rbx), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	112(%rax), %xmm0
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	116(%rax), %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm0, 176(%rbx)
	movsd	%xmm2, 184(%rbx)
	movl	$1, 168(%rbx)
	xorl	%eax, %eax
.LBB5_15:                               # %if.end.59
	movapd	112(%rsp), %xmm1        # 16-byte Reload
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movapd	160(%rsp), %xmm3        # 16-byte Reload
	movapd	%xmm3, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
.LBB5_16:                               # %cleanup.cont
	testq	%r14, %r14
	je	.LBB5_18
# BB#17:                                # %if.then.67
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%r14)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%r14)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, 8(%r14)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 12(%r14)
.LBB5_18:                               # %cleanup.75
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	gs_arcto, .Lfunc_end5-gs_arcto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4603149758332357153     # double 0.55228474983079334
.LCPI6_1:
	.quad	4726483295884279808     # double 1.0E+8
.LCPI6_2:
	.quad	4607182418800017408     # double 1
.LCPI6_3:
	.quad	4608683618675807573     # double 1.3333333333333333
	.text
	.align	16, 0x90
	.type	arc_add,@function
arc_add:                                # @arc_add
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
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 128
.Ltmp22:
	.cfi_offset %rbx, -48
.Ltmp23:
	.cfi_offset %r12, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r12
	movq	(%r12), %r14
	movq	8(%r12), %rbp
	movups	48(%r12), %xmm0
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	movupd	80(%r12), %xmm0
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	leaq	132(%rbp), %rbx
	cmpl	$0, 40(%r12)
	je	.LBB6_2
# BB#1:                                 # %land.lhs.true
	movapd	16(%rsp), %xmm0         # 16-byte Reload
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	leaq	72(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_point_transform2fixed_rounding
	testl	%eax, %eax
	js	.LBB6_31
.LBB6_2:                                # %lor.lhs.false
	movapd	32(%rsp), %xmm0         # 16-byte Reload
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	leaq	56(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_point_transform2fixed_rounding
	testl	%eax, %eax
	js	.LBB6_31
# BB#3:                                 # %lor.lhs.false.12
	movsd	64(%r12), %xmm0         # xmm0 = mem[0],zero
	movsd	72(%r12), %xmm1         # xmm1 = mem[0],zero
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_point_transform2fixed_rounding
	testl	%eax, %eax
	js	.LBB6_31
# BB#4:                                 # %if.end
	testb	$1, 97(%r14)
	jne	.LBB6_6
# BB#5:                                 # %if.then.22
	movsd	48(%r12), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%r12), %xmm1         # xmm1 = mem[0],zero
	movl	$132, %edi
	addq	8(%r12), %rdi
	addq	$192, %rbp
	movq	%rbp, %rsi
	callq	gs_point_transform
.LBB6_6:                                # %if.end.30
	movl	40(%r12), %eax
	cmpl	$2, %eax
	jne	.LBB6_7
# BB#9:                                 # %land.lhs.true.42
	testb	$1, 97(%r14)
	je	.LBB6_11
# BB#10:                                # %cond.true.48
	movl	72(%rsp), %esi
	movl	76(%rsp), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	jmp	.LBB6_12
.LBB6_7:                                # %if.end.30
	testl	%eax, %eax
	jne	.LBB6_11
# BB#8:                                 # %cond.end.56.thread
	movl	112(%r14), %eax
	movl	%eax, 72(%rsp)
	movl	116(%r14), %eax
	movl	%eax, 76(%rsp)
	jmp	.LBB6_13
.LBB6_11:                               # %cond.false.52
	movl	72(%rsp), %esi
	movl	76(%rsp), %edx
	movq	%r14, %rdi
	callq	gx_path_add_point
.LBB6_12:                               # %cond.end.56
	testl	%eax, %eax
	js	.LBB6_31
.LBB6_13:                               # %if.end.61
	testl	%r15d, %r15d
	je	.LBB6_25
# BB#14:                                # %if.then.62
	cmpl	$0, 128(%r12)
	jle	.LBB6_15
# BB#16:                                # %if.then.65
	movl	136(%r12), %ebp
	movl	56(%rsp), %ecx
	movl	72(%rsp), %edx
	cmpl	%edx, %ecx
	movl	%ecx, %esi
	je	.LBB6_18
# BB#17:                                # %if.then.70
	movl	%ebp, %esi
	negl	%esi
	cmpl	%edx, %ecx
	cmovgl	%ebp, %esi
	addl	%edx, %esi
	movl	%esi, 72(%rsp)
.LBB6_18:                               # %if.end.82
	movl	60(%rsp), %r8d
	movl	76(%rsp), %edi
	cmpl	%edi, %r8d
	movl	%r8d, %edx
	je	.LBB6_20
# BB#19:                                # %if.then.87
	movl	%ebp, %edx
	negl	%edx
	cmpl	%edi, %r8d
	cmovgl	%ebp, %edx
	addl	%edi, %edx
	movl	%edx, 76(%rsp)
.LBB6_20:                               # %if.end.101
	movl	64(%rsp), %r9d
	cmpl	%r9d, %ecx
	je	.LBB6_22
# BB#21:                                # %cond.false.108
	movl	%ebp, %edi
	negl	%edi
	cmpl	%r9d, %ecx
	cmovgl	%ebp, %edi
	addl	%r9d, %edi
	movl	%edi, %ecx
.LBB6_22:                               # %cond.end.121
	movl	68(%rsp), %edi
	cmpl	%edi, %r8d
	jne	.LBB6_24
# BB#23:
	movl	%r8d, %edi
	jmp	.LBB6_30
.LBB6_25:                               # %if.else
	movsd	32(%r12), %xmm3         # xmm3 = mem[0],zero
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	subpd	16(%rsp), %xmm1         # 16-byte Folded Reload
	mulpd	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	addsd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm3
	movsd	.LCPI6_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm3, %xmm2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm0
	jae	.LBB6_29
# BB#26:                                # %if.else.156
	divsd	%xmm3, %xmm0
	addsd	.LCPI6_2(%rip), %xmm0
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB6_28
# BB#27:                                # %call.sqrt
	movapd	32(%rsp), %xmm0         # 16-byte Reload
	callq	sqrt
.LBB6_28:                               # %if.else.156.split
	addsd	.LCPI6_2(%rip), %xmm0
	movsd	.LCPI6_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	jmp	.LBB6_29
.LBB6_15:
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB6_29:                               # %if.end.162
	movl	56(%rsp), %eax
	movl	72(%rsp), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	%ecx, %esi
	movl	%esi, 72(%rsp)
	movl	60(%rsp), %ebp
	movl	76(%rsp), %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	64(%rsp), %r9d
	movl	68(%rsp), %edi
	subl	%r9d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%r9d, %ecx
	subl	%edi, %ebp
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	addl	%edi, %r8d
	jmp	.LBB6_30
.LBB6_24:                               # %cond.false.130
	movl	%ebp, %eax
	negl	%eax
	cmpl	%edi, %r8d
	cmovgl	%ebp, %eax
	addl	%edi, %eax
	movl	%eax, %r8d
.LBB6_30:                               # %do.end
	movl	44(%r12), %eax
	orl	$2, %eax
	movl	%eax, 8(%rsp)
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	callq	gx_path_add_curve_notes
.LBB6_31:                               # %cleanup
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	arc_add, .Lfunc_end6-arc_add
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.quad	4603149758332357153     # double 5.522847e-01
	.quad	4603149758332357153     # double 5.522847e-01
	.text
	.globl	make_quadrant_arc
	.align	16, 0x90
	.type	make_quadrant_arc,@function
make_quadrant_arc:                      # @make_quadrant_arc
	.cfi_startproc
# BB#0:                                 # %entry
	movupd	(%rsi), %xmm1
	movupd	(%rdx), %xmm2
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm0, %xmm2
	addpd	%xmm1, %xmm2
	movupd	%xmm2, (%rdi)
	movupd	(%rsi), %xmm1
	movupd	(%rdx), %xmm2
	mulpd	%xmm0, %xmm2
	addpd	%xmm1, %xmm2
	movupd	(%rcx), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	.LCPI7_0(%rip), %xmm3   # xmm3 = [5.522847e-01,5.522847e-01]
	mulpd	%xmm3, %xmm1
	addpd	%xmm2, %xmm1
	movupd	%xmm1, 16(%rdi)
	movupd	(%rsi), %xmm1
	movupd	(%rdx), %xmm2
	mulpd	%xmm0, %xmm2
	mulpd	%xmm3, %xmm2
	addpd	%xmm1, %xmm2
	movupd	(%rcx), %xmm1
	mulpd	%xmm0, %xmm1
	addpd	%xmm2, %xmm1
	movupd	%xmm1, 32(%rdi)
	movupd	(%rsi), %xmm1
	movupd	(%rcx), %xmm2
	mulpd	%xmm0, %xmm2
	addpd	%xmm1, %xmm2
	movupd	%xmm2, 48(%rdi)
	retq
.Lfunc_end7:
	.size	make_quadrant_arc, .Lfunc_end7-make_quadrant_arc
	.cfi_endproc

	.globl	gs_dashpath
	.align	16, 0x90
	.type	gs_dashpath,@function
gs_dashpath:                            # @gs_dashpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 176
.Ltmp32:
	.cfi_offset %rbx, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	callq	gs_currentdash_length
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB8_5
# BB#1:                                 # %if.end
	movq	%r14, %rdi
	callq	gs_flattenpath
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB8_5
# BB#2:                                 # %if.end.4
	movq	1680(%r14), %rbp
	movq	40(%rbp), %rdx
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r15
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_path_init_local_shared
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	gx_path_add_dash_expansion
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_3
# BB#4:                                 # %if.end.9
	movq	1680(%r14), %rdi
	leaq	8(%rsp), %rsi
	callq	gx_path_assign_free
	jmp	.LBB8_5
.LBB8_3:                                # %if.then.8
	leaq	8(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_path_free
	movl	%ebp, %ebx
.LBB8_5:                                # %cleanup
	movl	%ebx, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gs_dashpath, .Lfunc_end8-gs_dashpath
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1132462080              # float 256
	.text
	.globl	gs_flattenpath
	.align	16, 0x90
	.type	gs_flattenpath,@function
gs_flattenpath:                         # @gs_flattenpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 160
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	1680(%rbx), %r14
	xorl	%r15d, %r15d
	cmpl	$0, 108(%r14)
	je	.LBB9_6
# BB#1:                                 # %if.end
	movq	40(%r14), %rdx
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_path_init_local_shared
	movss	296(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI9_0(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	movl	$2, %r8d
	cmpl	$0, 312(%rbx)
	jne	.LBB9_3
# BB#2:                                 # %select.mid
	xorl	%r8d, %r8d
.LBB9_3:                                # %select.end
	xorl	%r15d, %r15d
	leaq	(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_copy_reducing
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB9_4
# BB#5:                                 # %if.end.5
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_path_assign_free
	jmp	.LBB9_6
.LBB9_4:                                # %if.then.4
	leaq	(%rsp), %rdi
	movl	$.L.str.1, %esi
	callq	gx_path_free
	movl	%ebx, %r15d
.LBB9_6:                                # %cleanup
	movl	%r15d, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	gs_flattenpath, .Lfunc_end9-gs_flattenpath
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_reversepath
	.align	16, 0x90
	.type	gs_reversepath,@function
gs_reversepath:                         # @gs_reversepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 160
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1680(%rbx), %r14
	movq	40(%r14), %rdx
	leaq	(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gx_path_copy_reversed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_1
# BB#2:                                 # %if.end
	cmpl	$0, 168(%rbx)
	je	.LBB10_5
# BB#3:                                 # %if.then.2
	movq	112(%rsp), %rax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 176(%rbx)
	shrq	$32, %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 184(%rbx)
	movq	56(%rsp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB10_5
# BB#4:                                 # %if.then.11
	movq	32(%rax), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	20(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 192(%rbx)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	24(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 200(%rbx)
.LBB10_5:                               # %if.end.28
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_path_assign_free
	xorl	%ebp, %ebp
	jmp	.LBB10_6
.LBB10_1:                               # %if.then
	leaq	(%rsp), %rdi
	movl	$.L.str.2, %esi
	callq	gx_path_free
.LBB10_6:                               # %cleanup
	movl	%ebp, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_reversepath, .Lfunc_end10-gs_reversepath
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4643211215818981376     # double 256
.LCPI11_1:
	.quad	4602678819172646912     # double 0.5
.LCPI11_2:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_upathbbox
	.align	16, 0x90
	.type	gs_upathbbox,@function
gs_upathbbox:                           # @gs_upathbbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 80
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1680(%rbx), %rdi
	leaq	32(%rsp), %rsi
	callq	gx_path_bbox_set
	testl	%eax, %eax
	js	.LBB11_15
# BB#1:                                 # %if.end
	testl	%ebp, %ebp
	je	.LBB11_3
# BB#2:                                 # %if.end
	movq	1680(%rbx), %rax
	movb	97(%rax), %al
	andb	$-9, %al
	movzbl	%al, %eax
	cmpl	$3, %eax
	jne	.LBB11_3
# BB#4:                                 # %if.then.4
	movl	$-14, %eax
	cmpl	$0, 168(%rbx)
	je	.LBB11_15
# BB#5:                                 # %if.end.18
	movsd	176(%rbx), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI11_0(%rip), %xmm0
	addsd	.LCPI11_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	184(%rbx), %xmm0
	addsd	.LCPI11_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	32(%rsp), %ecx
	cmpl	%ecx, %ebp
	jge	.LBB11_7
# BB#6:                                 # %if.then.23
	movl	%ebp, 32(%rsp)
	movl	%ebp, %ecx
.LBB11_7:                               # %if.end.27
	movl	36(%rsp), %edx
	cmpl	%edx, %eax
	jge	.LBB11_9
# BB#8:                                 # %if.then.33
	movl	%eax, 36(%rsp)
	movl	%eax, %edx
.LBB11_9:                               # %if.end.37
	movl	40(%rsp), %esi
	cmpl	%esi, %ebp
	jle	.LBB11_11
# BB#10:                                # %if.then.42
	movl	%ebp, 40(%rsp)
	movl	%ebp, %esi
.LBB11_11:                              # %if.end.46
	movl	44(%rsp), %edi
	cmpl	%edi, %eax
	jle	.LBB11_12
# BB#13:                                # %if.then.52
	movl	%eax, 44(%rsp)
	jmp	.LBB11_14
.LBB11_3:                               # %if.end.if.end.57_crit_edge
	movl	32(%rsp), %ecx
	movl	36(%rsp), %edx
	movl	40(%rsp), %esi
	movl	44(%rsp), %eax
	jmp	.LBB11_14
.LBB11_12:
	movl	%edi, %eax
.LBB11_14:                              # %if.end.57
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI11_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)
	addq	$132, %rbx
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	gs_bbox_transform_inverse
.LBB11_15:                              # %cleanup.83
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gs_upathbbox, .Lfunc_end11-gs_upathbbox
	.cfi_endproc

	.globl	gs_path_enum_copy_init
	.align	16, 0x90
	.type	gs_path_enum_copy_init,@function
gs_path_enum_copy_init:                 # @gs_path_enum_copy_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 48
.Ltmp62:
	.cfi_offset %rbx, -48
.Ltmp63:
	.cfi_offset %r12, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testl	%ecx, %ecx
	je	.LBB12_5
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movl	$.L.str.3, %edx
	movq	%r15, %rsi
	callq	gx_path_alloc_shared
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB12_7
# BB#2:                                 # %if.end
	movq	1680(%r14), %rdi
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	callq	gx_path_copy_reducing
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_3
# BB#4:                                 # %cleanup
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gx_path_enum_init
	movq	%r12, 48(%rbx)
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movq	1680(%r14), %rsi
	movq	%rbx, %rdi
	callq	gx_path_enum_init
.LBB12_6:                               # %if.end.11
	movq	%r15, (%rbx)
	addq	$8, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_currentmatrix
	xorl	%ebp, %ebp
	jmp	.LBB12_7
.LBB12_3:                               # %if.then.4
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	gx_path_free
.LBB12_7:                               # %return
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gs_path_enum_copy_init, .Lfunc_end12-gs_path_enum_copy_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_path_enum_next
	.align	16, 0x90
	.type	gs_path_enum_next,@function
gs_path_enum_next:                      # @gs_path_enum_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 64
.Ltmp72:
	.cfi_offset %rbx, -40
.Ltmp73:
	.cfi_offset %r12, -32
.Ltmp74:
	.cfi_offset %r14, -24
.Ltmp75:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	(%rsp), %rsi
	callq	gx_path_enum_next
	movl	%eax, %r15d
	leal	-1(%r15), %eax
	cmpl	$2, %eax
	jb	.LBB13_5
# BB#1:                                 # %entry
	cmpl	$5, %r15d
	je	.LBB13_5
# BB#2:                                 # %entry
	cmpl	$3, %r15d
	jne	.LBB13_6
# BB#3:                                 # %sw.bb.1
	movq	8(%rsp), %rax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI13_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	shrq	$32, %rax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm2, %xmm1
	leaq	8(%rbx), %r12
	leaq	16(%r14), %rsi
	movq	%r12, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB13_7
# BB#4:                                 # %lor.lhs.false
	movq	16(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	shrq	$32, %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm2, %xmm1
	leaq	32(%r14), %rsi
	movq	%r12, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB13_7
.LBB13_5:                               # %sw.bb.21
	movq	(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI13_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	shrq	$32, %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm2, %xmm1
	addq	$8, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB13_7
.LBB13_6:                               # %sw.epilog
	movl	%r15d, %eax
.LBB13_7:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	gs_path_enum_next, .Lfunc_end13-gs_path_enum_next
	.cfi_endproc

	.globl	gs_path_enum_cleanup
	.align	16, 0x90
	.type	gs_path_enum_cleanup,@function
gs_path_enum_cleanup:                   # @gs_path_enum_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$.L.str.4, %esi
	callq	gx_path_free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rbx)
.LBB14_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end14:
	.size	gs_path_enum_cleanup, .Lfunc_end14-gs_path_enum_cleanup
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_1:
	.quad	4643211215818981376     # double 256
.LCPI15_2:
	.quad	4603149758332357153     # double 0.55228474983079334
.LCPI15_3:
	.quad	-4616189618054758400    # double -1
.LCPI15_4:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	next_arc_quadrant,@function
next_arc_quadrant:                      # @next_arc_quadrant
	.cfi_startproc
# BB#0:                                 # %entry
	movupd	64(%rdi), %xmm1
	movupd	%xmm1, 48(%rdi)
	cmpl	$0, 128(%rdi)
	jne	.LBB15_10
# BB#1:                                 # %if.then
	movq	8(%rdi), %rcx
	movss	136(%rcx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB15_4
	jp	.LBB15_4
# BB#2:                                 # %land.lhs.true
	movss	140(%rcx), %xmm4        # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm4
	jne	.LBB15_4
	jp	.LBB15_4
# BB#3:                                 # %cond.true
	movss	132(%rcx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	144(%rcx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	cvtps2pd	%xmm2, %xmm2
	andpd	.LCPI15_0(%rip), %xmm2
	movapd	%xmm2, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movl	$-1, %eax
	jmp	.LBB15_7
.LBB15_4:                               # %cond.false
	movss	132(%rcx), %xmm4        # xmm4 = mem[0],zero,zero,zero
	movl	$-1, %eax
	ucomiss	%xmm3, %xmm4
	jne	.LBB15_9
	jp	.LBB15_9
# BB#5:                                 # %land.lhs.true.23
	movss	144(%rcx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm3
	jne	.LBB15_9
	jp	.LBB15_9
# BB#6:                                 # %cond.true.29
	movss	140(%rcx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	cvtps2pd	%xmm2, %xmm2
	andpd	.LCPI15_0(%rip), %xmm2
	movapd	%xmm2, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
.LBB15_7:                               # %cond.true.29
	ucomisd	%xmm3, %xmm2
	jne	.LBB15_9
	jp	.LBB15_9
# BB#8:                                 # %if.then.41
	mulsd	32(%rdi), %xmm2
	movsd	.LCPI15_1(%rip), %xmm3  # xmm3 = mem[0],zero
	movapd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, 132(%rdi)
	mulsd	.LCPI15_2(%rip), %xmm2
	mulsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, 136(%rdi)
	movl	$1, %eax
.LBB15_9:                               # %if.end
	movl	%eax, 128(%rdi)
.LBB15_10:                              # %if.end.50
	cvttsd2si	%xmm0, %eax
	shrl	%eax
	andl	$3, %eax
	movapd	%xmm1, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	cmpl	$3, %eax
	ja	.LBB15_18
# BB#11:                                # %if.end.50
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_12:                              # %sw.bb
	movsd	.LCPI15_4(%rip), %xmm1  # xmm1 = mem[0],zero
	pslldq	$8, %xmm1               # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7]
	movdqu	%xmm1, 96(%rdi)
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	addsd	32(%rdi), %xmm1
	jmp	.LBB15_13
.LBB15_14:                              # %sw.bb.61
	movsd	.LCPI15_4(%rip), %xmm2  # xmm2 = mem[0],zero
	movupd	%xmm2, 96(%rdi)
	movq	16(%rdi), %rax
	movq	%rax, 64(%rdi)
	movsd	24(%rdi), %xmm2         # xmm2 = mem[0],zero
	addsd	32(%rdi), %xmm2
	jmp	.LBB15_17
.LBB15_15:                              # %sw.bb.76
	movsd	.LCPI15_3(%rip), %xmm1  # xmm1 = mem[0],zero
	pslldq	$8, %xmm1               # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7]
	movdqu	%xmm1, 96(%rdi)
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
.LBB15_13:                              # %sw.epilog
	movsd	%xmm1, 64(%rdi)
	movq	24(%rdi), %rax
	movq	%rax, 72(%rdi)
	jmp	.LBB15_18
.LBB15_16:                              # %sw.bb.90
	movsd	.LCPI15_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movupd	%xmm2, 96(%rdi)
	movq	16(%rdi), %rax
	movq	%rax, 64(%rdi)
	movsd	24(%rdi), %xmm2         # xmm2 = mem[0],zero
	subsd	32(%rdi), %xmm2
.LBB15_17:                              # %sw.epilog
	movsd	%xmm2, 72(%rdi)
.LBB15_18:                              # %sw.epilog
	movsd	%xmm1, 80(%rdi)
	movsd	%xmm2, 88(%rdi)
	movsd	%xmm0, 120(%rdi)
	movl	$1, %esi
	jmp	arc_add                 # TAILCALL
.Lfunc_end15:
	.size	next_arc_quadrant, .Lfunc_end15-next_arc_quadrant
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_12
	.quad	.LBB15_14
	.quad	.LBB15_15
	.quad	.LBB15_16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_dashpath"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_flattenpath"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_reversepath"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_path_enum_init"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_path_enum_cleanup"
	.size	.L.str.4, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
