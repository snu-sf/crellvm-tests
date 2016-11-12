	.text
	.file	"gsdps1.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4512606826637819904    # double -8388607.98828125
.LCPI0_1:
	.quad	4710765210216955904     # double 8388607.98828125
.LCPI0_2:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_setbbox
	.align	16, 0x90
	.type	gs_setbbox,@function
gs_setbbox:                             # @gs_setbbox
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
	subq	$112, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 160
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
	movq	%rdi, %rcx
	ucomisd	%xmm2, %xmm0
	movl	$-15, %eax
	ja	.LBB0_10
# BB#1:                                 # %entry
	ucomisd	%xmm3, %xmm1
	ja	.LBB0_10
# BB#2:                                 # %if.end
	movq	1680(%rcx), %rbx
	movsd	%xmm0, 80(%rsp)
	movsd	%xmm1, 88(%rsp)
	movsd	%xmm2, 96(%rsp)
	movsd	%xmm3, 104(%rsp)
	addq	$132, %rcx
	leaq	80(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movq	%rcx, %rsi
	callq	gs_bbox_transform
	testl	%eax, %eax
	js	.LBB0_10
# BB#3:                                 # %if.end.8
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	$-13, %eax
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_10
# BB#4:                                 # %lor.lhs.false.12
	movsd	56(%rsp), %xmm2         # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	ja	.LBB0_10
# BB#5:                                 # %lor.lhs.false.16
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	.LCPI0_1(%rip), %xmm1
	jae	.LBB0_10
# BB#6:                                 # %lor.lhs.false.20
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	.LCPI0_1(%rip), %xmm1
	jae	.LBB0_10
# BB#7:                                 # %if.end.25
	mulsd	.LCPI0_2(%rip), %xmm0
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r14d
	addl	$-3, %r14d
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI0_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r15d
	addl	$-3, %r15d
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI0_2(%rip), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %r12d
	addl	$3, %r12d
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI0_2(%rip), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	addl	$3, %ebp
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_path_bbox_set
	testl	%eax, %eax
	js	.LBB0_9
# BB#8:                                 # %if.then.65
	movl	32(%rsp), %eax
	movl	36(%rsp), %ecx
	cmpl	%r14d, %eax
	cmovlel	%eax, %r14d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	movl	40(%rsp), %eax
	cmpl	%r12d, %eax
	cmovgel	%eax, %r12d
	movl	44(%rsp), %eax
	cmpl	%ebp, %eax
	cmovgel	%eax, %ebp
.LBB0_9:                                # %if.end.131
	movl	%r14d, 72(%rbx)
	movl	%r15d, 76(%rbx)
	movl	%r12d, 80(%rbx)
	movl	%ebp, 84(%rbx)
	movb	$1, 98(%rbx)
	xorl	%eax, %eax
.LBB0_10:                               # %cleanup
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_setbbox, .Lfunc_end0-gs_setbbox
	.cfi_endproc

	.globl	gs_rectappend
	.align	16, 0x90
	.type	gs_rectappend,@function
gs_rectappend:                          # @gs_rectappend
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	jmp	gs_rectappend_compat    # TAILCALL
.Lfunc_end1:
	.size	gs_rectappend, .Lfunc_end1-gs_rectappend
	.cfi_endproc

	.align	16, 0x90
	.type	gs_rectappend_compat,@function
gs_rectappend_compat:                   # @gs_rectappend_compat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 96
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	8(%r15), %rdi
	callq	gs_currentcpsimode
	movl	%eax, %r12d
	testl	%ebp, %ebp
	je	.LBB2_23
	.align	16, 0x90
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r12d, %r12d
	movsd	(%rbx), %xmm4           # xmm4 = mem[0],zero
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	movsd	16(%rbx), %xmm3         # xmm3 = mem[0],zero
	movsd	24(%rbx), %xmm1         # xmm1 = mem[0],zero
	je	.LBB2_11
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	testl	%r14d, %r14d
	je	.LBB2_7
# BB#3:                                 # %if.then.6
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	movsd	%xmm4, 40(%rsp)         # 8-byte Spill
	movapd	%xmm3, %xmm0
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	callq	gs_moveto
	testl	%eax, %eax
	js	.LBB2_24
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_lineto
	testl	%eax, %eax
	js	.LBB2_24
# BB#5:                                 # %lor.lhs.false.11
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_lineto
	testl	%eax, %eax
	js	.LBB2_24
# BB#6:                                 # %lor.lhs.false.14
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB2_19
	.align	16, 0x90
.LBB2_11:                               # %if.else.48
                                        #   in Loop: Header=BB2_1 Depth=1
	ucomisd	%xmm4, %xmm3
	setae	%al
	ucomisd	%xmm2, %xmm1
	setae	%cl
	xorb	%al, %cl
	movapd	%xmm3, %xmm0
	jne	.LBB2_13
# BB#12:                                # %if.else.48
                                        #   in Loop: Header=BB2_1 Depth=1
	movapd	%xmm4, %xmm0
.LBB2_13:                               # %if.else.48
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	jne	.LBB2_15
# BB#14:                                # %if.else.48
                                        #   in Loop: Header=BB2_1 Depth=1
	movapd	%xmm3, %xmm4
.LBB2_15:                               # %if.else.48
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	%xmm4, 40(%rsp)         # 8-byte Spill
	movq	%r15, %rdi
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm1
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	callq	gs_moveto
	testl	%eax, %eax
	js	.LBB2_24
# BB#16:                                # %lor.lhs.false.61
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_lineto
	testl	%eax, %eax
	js	.LBB2_24
# BB#17:                                # %lor.lhs.false.65
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_lineto
	testl	%eax, %eax
	js	.LBB2_24
# BB#18:                                # %lor.lhs.false.69
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB2_19:                               # %lor.lhs.false.69
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB2_20
	.align	16, 0x90
.LBB2_7:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movapd	%xmm3, %xmm0
	minsd	%xmm4, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movapd	%xmm1, %xmm5
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	minsd	%xmm2, %xmm5
	movsd	%xmm5, 8(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	movsd	%xmm4, 40(%rsp)         # 8-byte Spill
	movapd	%xmm5, %xmm1
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	callq	gs_moveto
	testl	%eax, %eax
	js	.LBB2_24
# BB#8:                                 # %lor.lhs.false.33
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	maxsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movq	%r15, %rdi
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_lineto
	testl	%eax, %eax
	js	.LBB2_24
# BB#9:                                 # %lor.lhs.false.36
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	24(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movq	%r15, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gs_lineto
	testl	%eax, %eax
	js	.LBB2_24
# BB#10:                                # %lor.lhs.false.39
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB2_20:                               # %lor.lhs.false.69
                                        #   in Loop: Header=BB2_1 Depth=1
	callq	gs_lineto
	testl	%eax, %eax
	js	.LBB2_24
# BB#21:                                # %lor.lhs.false.73
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	callq	gs_closepath
	testl	%eax, %eax
	js	.LBB2_24
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	addq	$32, %rbx
	decl	%ebp
	jne	.LBB2_1
.LBB2_23:
	xorl	%eax, %eax
.LBB2_24:                               # %cleanup.84
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_rectappend_compat, .Lfunc_end2-gs_rectappend_compat
	.cfi_endproc

	.globl	gs_rectclip
	.align	16, 0x90
	.type	gs_rectclip,@function
gs_rectclip:                            # @gs_rectclip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 176
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	8(%rbx), %rdx
	leaq	8(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movq	1680(%rbx), %rsi
	movq	%rbp, %rdi
	callq	gx_path_assign_preserve
	movq	%rbx, %rdi
	callq	gs_newpath
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	gs_rectappend_compat
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	movq	%rbx, %rdi
	callq	gs_clip
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_2
# BB#3:                                 # %if.end
	leaq	8(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_path_free
	movq	%rbx, %rdi
	callq	gs_newpath
	xorl	%ebp, %ebp
	jmp	.LBB3_4
.LBB3_2:                                # %if.then
	movq	1680(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gx_path_assign_free
.LBB3_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gs_rectclip, .Lfunc_end3-gs_rectclip
	.cfi_endproc

	.globl	gs_rectfill
	.align	16, 0x90
	.type	gs_rectfill,@function
gs_rectfill:                            # @gs_rectfill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 160
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	1760(%rbx), %rbp
	movq	1872(%rbx), %r13
	movq	%rbp, %rsi
	callq	gx_hld_is_hl_color_available
	testl	%eax, %eax
	je	.LBB4_1
# BB#2:                                 # %land.rhs
	movl	$12, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	callq	*1664(%r13)
	testl	%eax, %eax
	setne	%r15b
	jmp	.LBB4_3
.LBB4_1:
	xorl	%r15d, %r15d
.LBB4_3:                                # %land.end
	cmpl	$0, 300(%rbx)
	je	.LBB4_5
# BB#4:
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
	jmp	.LBB4_6
.LBB4_5:                                # %land.rhs.3
	cmpl	$0, 304(%rbx)
	sete	%al
	movl	%eax, 40(%rsp)          # 4-byte Spill
.LBB4_6:                                # %land.end.6
	movq	1872(%rbx), %rdi
	movl	$4, %esi
	callq	*1688(%rdi)
	movq	1760(%rbx), %rax
	movl	$gx_dc_type_data_none, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB4_8
# BB#7:                                 # %cond.end
	movq	%rbx, %rdi
	callq	gx_remap_color
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jne	.LBB4_66
.LBB4_8:                                # %if.end
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leaq	132(%rbx), %rbp
	movss	136(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB4_10
	jp	.LBB4_10
# BB#9:                                 # %land.lhs.true
	movss	140(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB4_10
	jnp	.LBB4_12
.LBB4_10:                               # %lor.lhs.false
	movss	(%rbp), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB4_57
	jp	.LBB4_57
# BB#11:                                # %land.lhs.true.27
	movss	144(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB4_57
	jp	.LBB4_57
.LBB4_12:                               # %land.lhs.true.32
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_effective_clip_path
	testl	%eax, %eax
	js	.LBB4_57
# BB#13:                                # %land.lhs.true.36
	movq	96(%rsp), %rdi
	callq	gx_cpath_list
	cmpl	$1, 72(%rax)
	jg	.LBB4_57
# BB#14:                                # %land.lhs.true.41
	testb	%r15b, %r15b
	jne	.LBB4_18
# BB#15:                                # %lor.lhs.false.43
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movl	$gx_dc_type_data_ht_colored, %ecx
	cmpq	%rcx, %rax
	je	.LBB4_18
# BB#16:                                # %lor.lhs.false.43
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	je	.LBB4_18
# BB#17:                                # %lor.lhs.false.43
	movl	$gx_dc_type_data_ht_binary, %ecx
	cmpq	%rcx, %rax
	jne	.LBB4_57
.LBB4_18:                               # %land.lhs.true.55
	movq	1760(%rbx), %rdi
	movq	1872(%rbx), %rdx
	movq	(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	*32(%rax)
	testl	%eax, %eax
	js	.LBB4_57
# BB#19:                                # %land.lhs.true.67
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*1304(%r13)
	cmpl	$1, %eax
	jg	.LBB4_57
# BB#20:                                # %land.lhs.true.72
	cmpl	$0, 272(%rbx)
	je	.LBB4_22
# BB#21:                                # %lor.lhs.false.74
	cmpl	$0, 280(%rbx)
	jne	.LBB4_57
.LBB4_22:                               # %if.then.76
	movq	96(%rsp), %rdi
	leaq	80(%rsp), %rsi
	callq	gx_cpath_inner_box
	movl	80(%rsp), %eax
	cmpl	88(%rsp), %eax
	jge	.LBB4_23
# BB#24:                                # %for.cond.preheader
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB4_25
.LBB4_23:                               # %land.lhs.true.82
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	84(%rsp), %eax
	xorl	%r14d, %r14d
	cmpl	92(%rsp), %eax
	jge	.LBB4_66
.LBB4_25:                               # %for.cond.preheader
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	movl	%r15d, %ebp
	je	.LBB4_66
# BB#26:                                # %for.body.lr.ph
	movl	44(%rsp), %eax          # 4-byte Reload
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
.LBB4_27:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %r14d
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	leaq	72(%rsp), %rsi
	callq	gs_point_transform2fixed
	testl	%eax, %eax
	js	.LBB4_56
# BB#28:                                # %lor.lhs.false.106
                                        #   in Loop: Header=BB4_27 Depth=1
	movsd	16(%r12), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%r12), %xmm1         # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	leaq	64(%rsp), %rsi
	callq	gs_point_transform2fixed
	testl	%eax, %eax
	js	.LBB4_56
# BB#29:                                # %if.end.120
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	72(%rsp), %ecx
	movl	64(%rsp), %edi
	cmpl	%edi, %ecx
	movl	%edi, %esi
	cmovlel	%ecx, %esi
	movl	%esi, 48(%rsp)
	movl	76(%rsp), %ebp
	movl	68(%rsp), %eax
	cmovgel	%ecx, %edi
	cmpl	%eax, %ebp
	movl	%eax, %edx
	cmovlel	%ebp, %edx
	movl	%edx, 52(%rsp)
	movl	%edi, 56(%rsp)
	cmovgel	%ebp, %eax
	movl	%eax, 60(%rsp)
	movl	80(%rsp), %ecx
	movl	%r14d, %ebp
	testb	%bpl, %bpl
	je	.LBB4_41
# BB#30:                                # %do.body
                                        #   in Loop: Header=BB4_27 Depth=1
	cmpl	%esi, %ecx
	jle	.LBB4_32
# BB#31:                                # %if.then.177
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%ecx, 48(%rsp)
	movl	%ecx, %esi
.LBB4_32:                               # %if.end.182
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	88(%rsp), %ecx
	cmpl	%edi, %ecx
	jge	.LBB4_34
# BB#33:                                # %if.then.189
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%ecx, 56(%rsp)
	movl	%ecx, %edi
.LBB4_34:                               # %if.end.194
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	84(%rsp), %ecx
	cmpl	%edx, %ecx
	jle	.LBB4_36
# BB#35:                                # %if.then.201
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%ecx, 52(%rsp)
	movl	%ecx, %edx
.LBB4_36:                               # %if.end.206
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	92(%rsp), %ecx
	cmpl	%eax, %ecx
	jge	.LBB4_38
# BB#37:                                # %if.then.213
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%ecx, 60(%rsp)
	movl	%ecx, %eax
.LBB4_38:                               # %do.end
                                        #   in Loop: Header=BB4_27 Depth=1
	cmpl	%edi, %esi
	jg	.LBB4_55
# BB#39:                                # %do.end
                                        #   in Loop: Header=BB4_27 Depth=1
	cmpl	%eax, %edx
	jg	.LBB4_55
# BB#40:                                # %if.then.232
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	96(%rsp), %r8
	movq	%r13, %rdi
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	*1576(%r13)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB4_55
	jmp	.LBB4_66
.LBB4_41:                               # %if.else
                                        #   in Loop: Header=BB4_27 Depth=1
	cmpl	%esi, %ecx
	jle	.LBB4_43
# BB#42:                                # %if.then.249
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%ecx, 48(%rsp)
	movl	%ecx, %esi
.LBB4_43:                               # %if.end.254
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	88(%rsp), %ecx
	cmpl	%edi, %ecx
	movl	40(%rsp), %r9d          # 4-byte Reload
	jge	.LBB4_45
# BB#44:                                # %if.then.261
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%ecx, 56(%rsp)
	movl	%ecx, %edi
.LBB4_45:                               # %if.end.266
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	84(%rsp), %ecx
	cmpl	%edx, %ecx
	jle	.LBB4_47
# BB#46:                                # %if.then.273
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%ecx, 52(%rsp)
	movl	%ecx, %edx
.LBB4_47:                               # %if.end.278
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	92(%rsp), %ecx
	cmpl	%eax, %ecx
	jge	.LBB4_49
# BB#48:                                # %if.then.285
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%ecx, 60(%rsp)
	movl	%ecx, %eax
.LBB4_49:                               # %do.end.292
                                        #   in Loop: Header=BB4_27 Depth=1
	testb	%r9b, %r9b
	je	.LBB4_51
# BB#50:                                # %if.then.294
                                        #   in Loop: Header=BB4_27 Depth=1
	subl	$-128, %esi
	andl	$-256, %esi
	movl	%esi, 48(%rsp)
	subl	$-128, %edx
	andl	$-256, %edx
	movl	%edx, 52(%rsp)
	subl	$-128, %edi
	andl	$-256, %edi
	movl	%edi, 56(%rsp)
	subl	$-128, %eax
	jmp	.LBB4_52
.LBB4_51:                               # %if.else.325
                                        #   in Loop: Header=BB4_27 Depth=1
	andl	$-256, %esi
	movl	%esi, 48(%rsp)
	andl	$-256, %edx
	movl	%edx, 52(%rsp)
	addl	$255, %edi
	andl	$-256, %edi
	movl	%edi, 56(%rsp)
	addl	$255, %eax
.LBB4_52:                               # %if.end.356
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	%eax, %ecx
	andl	$-256, %ecx
	movl	%ecx, 60(%rsp)
	sarl	$8, %esi
	sarl	$8, %edx
	sarl	$8, %edi
	movl	%edi, %ecx
	subl	%esi, %ecx
	sarl	$8, %eax
	movl	%eax, %r8d
	subl	%edx, %r8d
	movl	%ebp, %r14d
	testb	%r9b, %r9b
	jne	.LBB4_54
# BB#53:                                # %if.then.370
                                        #   in Loop: Header=BB4_27 Depth=1
	cmpl	%esi, %edi
	movl	$1, %edi
	cmovel	%edi, %ecx
	cmpl	%edx, %eax
	sete	%al
	movzbl	%al, %eax
	cmovel	%edi, %r8d
	subl	%eax, %edx
.LBB4_54:                               # %if.end.379
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movq	1872(%rbx), %r9
	movl	212(%rbx), %ebp
	movl	%ebp, (%rsp)
	movq	$0, 8(%rsp)
	callq	*40(%rax)
	sarl	$31, %eax
	testb	$5, %al
	movl	%r14d, %ebp
	jne	.LBB4_56
.LBB4_55:                               # %cleanup.391.thread104
                                        #   in Loop: Header=BB4_27 Depth=1
	incq	%r15
	addq	$32, %r12
	xorl	%r14d, %r14d
	cmpq	16(%rsp), %r15          # 8-byte Folded Reload
	jb	.LBB4_27
	jmp	.LBB4_66
.LBB4_56:                               # %cleanup.397
	subl	%r15d, 44(%rsp)         # 4-byte Folded Spill
.LBB4_57:                               # %if.end.401
	movq	1680(%rbx), %rdi
	callq	gx_path_is_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB4_60
# BB#58:                                # %if.then.405
	movq	%rbx, %rdi
	callq	gs_gsave
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB4_66
# BB#59:                                # %if.end.410
	movq	%rbx, %rdi
	callq	gs_newpath
.LBB4_60:                               # %if.end.412
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	44(%rsp), %edx          # 4-byte Reload
	callq	gs_rectappend_compat
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB4_62
# BB#61:                                # %lor.lhs.false.416
	movq	%rbx, %rdi
	callq	gs_fill
	movl	%eax, %r14d
.LBB4_62:                               # %if.end.424
	testl	%ebp, %ebp
	je	.LBB4_63
# BB#64:                                # %if.else.428
	testl	%r14d, %r14d
	jns	.LBB4_66
# BB#65:                                # %if.then.431
	movq	%rbx, %rdi
	callq	gs_newpath
	jmp	.LBB4_66
.LBB4_63:                               # %if.then.426
	movq	%rbx, %rdi
	callq	gs_grestore
.LBB4_66:                               # %cleanup.438
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gs_rectfill, .Lfunc_end4-gs_rectfill
	.cfi_endproc

	.globl	gs_rectstroke
	.align	16, 0x90
	.type	gs_rectstroke,@function
gs_rectstroke:                          # @gs_rectstroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp50:
	.cfi_def_cfa_offset 64
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	testq	%r14, %r14
	jne	.LBB5_3
# BB#1:                                 # %lor.end
	movq	1680(%rbx), %rdi
	callq	gx_path_is_null
	testl	%eax, %eax
	je	.LBB5_3
# BB#2:
	xorl	%r13d, %r13d
	jmp	.LBB5_5
.LBB5_3:                                # %if.then
	movq	%rbx, %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_13
# BB#4:                                 # %if.end
	movq	%rbx, %rdi
	callq	gs_newpath
	movb	$1, %r13b
.LBB5_5:                                # %if.end.6
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	gs_rectappend_compat
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_9
# BB#6:                                 # %lor.lhs.false
	testq	%r14, %r14
	je	.LBB5_8
# BB#7:                                 # %land.lhs.true
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_concat
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_9
.LBB5_8:                                # %lor.lhs.false.12
	movq	%rbx, %rdi
	callq	gs_stroke
	movl	%eax, %ebp
.LBB5_9:                                # %if.end.16
	testb	%r13b, %r13b
	je	.LBB5_11
# BB#10:                                # %if.then.18
	movq	%rbx, %rdi
	callq	gs_grestore
	jmp	.LBB5_13
.LBB5_11:                               # %if.else
	testl	%ebp, %ebp
	jns	.LBB5_13
# BB#12:                                # %if.then.21
	movq	%rbx, %rdi
	callq	gs_newpath
.LBB5_13:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_rectstroke, .Lfunc_end5-gs_rectstroke
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_rectclip"
	.size	.L.str, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
