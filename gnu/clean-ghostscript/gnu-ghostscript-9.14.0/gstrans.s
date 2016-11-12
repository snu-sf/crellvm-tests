	.text
	.file	"gstrans.bc"
	.globl	gs_setblendmode
	.align	16, 0x90
	.type	gs_setblendmode,@function
gs_setblendmode:                        # @gs_setblendmode
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$16, %esi
	cmovel	%eax, %esi
	movl	$-15, %eax
	cmpl	$15, %esi
	ja	.LBB0_2
# BB#1:                                 # %if.end.4
	movl	%esi, 220(%rdi)
	xorl	%eax, %eax
.LBB0_2:                                # %return
	retq
.Lfunc_end0:
	.size	gs_setblendmode, .Lfunc_end0-gs_setblendmode
	.cfi_endproc

	.globl	gs_currentblendmode
	.align	16, 0x90
	.type	gs_currentblendmode,@function
gs_currentblendmode:                    # @gs_currentblendmode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	220(%rdi), %eax
	retq
.Lfunc_end1:
	.size	gs_currentblendmode, .Lfunc_end1-gs_currentblendmode
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.globl	gs_setopacityalpha
	.align	16, 0x90
	.type	gs_setopacityalpha,@function
gs_setopacityalpha:                     # @gs_setopacityalpha
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	ja	.LBB2_4
# BB#1:                                 # %cond.false
	ucomisd	.LCPI2_0(%rip), %xmm0
	ja	.LBB2_2
# BB#3:                                 # %cond.false
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	jmp	.LBB2_4
.LBB2_2:
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
.LBB2_4:                                # %cond.end.4
	movss	%xmm1, 224(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gs_setopacityalpha, .Lfunc_end2-gs_setopacityalpha
	.cfi_endproc

	.globl	gs_currentopacityalpha
	.align	16, 0x90
	.type	gs_currentopacityalpha,@function
gs_currentopacityalpha:                 # @gs_currentopacityalpha
	.cfi_startproc
# BB#0:                                 # %entry
	movss	224(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end3:
	.size	gs_currentopacityalpha, .Lfunc_end3-gs_currentopacityalpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_1:
	.long	1065353216              # float 1
	.text
	.globl	gs_setshapealpha
	.align	16, 0x90
	.type	gs_setshapealpha,@function
gs_setshapealpha:                       # @gs_setshapealpha
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	ja	.LBB4_4
# BB#1:                                 # %cond.false
	ucomisd	.LCPI4_0(%rip), %xmm0
	ja	.LBB4_2
# BB#3:                                 # %cond.false
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	jmp	.LBB4_4
.LBB4_2:
	movss	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
.LBB4_4:                                # %cond.end.4
	movss	%xmm1, 228(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gs_setshapealpha, .Lfunc_end4-gs_setshapealpha
	.cfi_endproc

	.globl	gs_currentshapealpha
	.align	16, 0x90
	.type	gs_currentshapealpha,@function
gs_currentshapealpha:                   # @gs_currentshapealpha
	.cfi_startproc
# BB#0:                                 # %entry
	movss	228(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end5:
	.size	gs_currentshapealpha, .Lfunc_end5-gs_currentshapealpha
	.cfi_endproc

	.globl	gs_settextknockout
	.align	16, 0x90
	.type	gs_settextknockout,@function
gs_settextknockout:                     # @gs_settextknockout
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 248(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	gs_settextknockout, .Lfunc_end6-gs_settextknockout
	.cfi_endproc

	.globl	gs_currenttextknockout
	.align	16, 0x90
	.type	gs_currenttextknockout,@function
gs_currenttextknockout:                 # @gs_currenttextknockout
	.cfi_startproc
# BB#0:                                 # %entry
	movl	248(%rdi), %eax
	retq
.Lfunc_end7:
	.size	gs_currenttextknockout, .Lfunc_end7-gs_currenttextknockout
	.cfi_endproc

	.globl	gs_trans_group_params_init
	.align	16, 0x90
	.type	gs_trans_group_params_init,@function
gs_trans_group_params_init:             # @gs_trans_group_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movl	$0, 8(%rdi)
	movl	$0, 12(%rdi)
	movl	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	movq	$0, 48(%rdi)
	retq
.Lfunc_end8:
	.size	gs_trans_group_params_init, .Lfunc_end8-gs_trans_group_params_init
	.cfi_endproc

	.globl	gs_update_trans_marking_params
	.align	16, 0x90
	.type	gs_update_trans_marking_params,@function
gs_update_trans_marking_params:         # @gs_update_trans_marking_params
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp4:
	.cfi_def_cfa_offset 752
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	(%rsp), %r14
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	movq	%r14, %rdi
	callq	memset
	movl	$7, (%rsp)
	movq	1872(%rbx), %rbp
	movq	$0, 704(%rsp)
	movl	100(%rbp), %r15d
	movq	8(%rbx), %r8
	leaq	704(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rcx
	callq	send_pdf14trans
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB9_6
# BB#1:                                 # %if.end.i
	movq	704(%rsp), %rsi
	cmpq	%rbp, %rsi
	je	.LBB9_3
# BB#2:                                 # %if.then.2.i
	movq	%rbx, %rdi
	callq	gx_set_device_only
.LBB9_3:                                # %if.end.3.i
	cmpl	$0, 272(%rbx)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true.i
	movq	704(%rsp), %rax
	cmpl	100(%rax), %r15d
	je	.LBB9_6
# BB#5:                                 # %if.then.7.i
	movq	%rbx, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %r14d
.LBB9_6:                                # %gs_state_update_pdf14trans.exit
	movl	%r14d, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gs_update_trans_marking_params, .Lfunc_end9-gs_update_trans_marking_params
	.cfi_endproc

	.globl	gs_begin_transparency_group
	.align	16, 0x90
	.type	gs_begin_transparency_group,@function
gs_begin_transparency_group:            # @gs_begin_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 48
	subq	$720, %rsp              # imm = 0x2D0
.Ltmp14:
	.cfi_def_cfa_offset 768
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	movq	1872(%r12), %rbx
	movq	%rbx, %rdi
	callq	gx_device_is_pattern_clist
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	gx_device_is_pattern_accum
	movl	%eax, %ecx
	orl	%ebp, %ecx
	je	.LBB10_5
# BB#1:                                 # %if.then.i
	testl	%ebp, %ebp
	je	.LBB10_3
# BB#2:                                 # %if.then.4.i
	movq	12176(%rbx), %rcx
	xorl	%ebp, %ebp
	cmpl	$0, 96(%rcx)
	je	.LBB10_28
.LBB10_3:                               # %if.end.9.i
	testl	%eax, %eax
	je	.LBB10_5
# BB#4:                                 # %if.then.11.i
	movq	1744(%rbx), %rax
	xorl	%ebp, %ebp
	cmpl	$0, 96(%rax)
	je	.LBB10_28
.LBB10_5:                               # %if.end
	movl	$3, 8(%rsp)
	movl	8(%r15), %eax
	movl	%eax, 20(%rsp)
	movl	12(%r15), %eax
	movl	%eax, 24(%rsp)
	movl	16(%r15), %eax
	movl	%eax, 28(%rsp)
	movl	224(%r12), %eax
	movl	%eax, 616(%rsp)
	movl	228(%r12), %eax
	movl	%eax, 620(%rsp)
	movl	220(%r12), %eax
	movl	%eax, 608(%rsp)
	movq	1744(%r12), %rbx
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$3, %eax
	jb	.LBB10_7
# BB#6:                                 # %if.then.8
	movq	1744(%r12), %rbp
	jmp	.LBB10_8
.LBB10_7:                               # %if.else
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*48(%rax)
	movq	%rax, %rbp
.LBB10_8:                               # %if.end.13
	cmpq	$0, (%r15)
	je	.LBB10_9
# BB#10:                                # %if.else.16
	movq	%rbp, %rdi
	callq	gs_color_space_is_ICC
	testl	%eax, %eax
	je	.LBB10_12
# BB#11:                                # %if.then.19
	movl	$5, 680(%rsp)
	movq	64(%rbp), %rax
	jmp	.LBB10_21
.LBB10_9:                               # %if.then.15
	movabsq	$25769803776, %rax      # imm = 0x600000000
	movq	%rax, 676(%rsp)
	jmp	.LBB10_22
.LBB10_12:                              # %if.else.24
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	cmpl	$4, %eax
	je	.LBB10_16
# BB#13:                                # %if.else.24
	cmpl	$3, %eax
	jne	.LBB10_14
# BB#18:                                # %sw.bb.27
	movq	336(%r12), %rax
	addq	$16, %rax
	jmp	.LBB10_19
.LBB10_16:                              # %sw.bb.29
	movq	336(%r12), %rax
	addq	$24, %rax
	jmp	.LBB10_19
.LBB10_14:                              # %if.else.24
	cmpl	$1, %eax
	jne	.LBB10_17
# BB#15:                                # %sw.bb
	movq	336(%r12), %rax
	addq	$8, %rax
.LBB10_19:                              # %sw.epilog
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_22
# BB#20:                                # %if.then.38
	movl	$5, 680(%rsp)
.LBB10_21:                              # %if.end.48
	movzbl	(%rax), %ecx
	movl	%ecx, 676(%rsp)
	movq	%rax, 696(%rsp)
	movq	144(%rax), %rax
	movq	%rax, 688(%rsp)
.LBB10_22:                              # %if.end.48
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 48(%rsp)
	movups	%xmm0, 32(%rsp)
	movq	1872(%r12), %rbx
	movq	$0, 712(%rsp)
	movl	100(%rbx), %r14d
	movq	8(%r12), %r8
	leaq	712(%rsp), %rdx
	leaq	8(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	send_pdf14trans
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_28
# BB#23:                                # %if.end.i
	movq	712(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.LBB10_25
# BB#24:                                # %if.then.2.i
	movq	%r12, %rdi
	callq	gx_set_device_only
.LBB10_25:                              # %if.end.3.i
	cmpl	$0, 272(%r12)
	je	.LBB10_28
# BB#26:                                # %land.lhs.true.i
	movq	712(%rsp), %rax
	cmpl	100(%rax), %r14d
	je	.LBB10_28
# BB#27:                                # %if.then.7.i
	movq	%r12, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %ebp
.LBB10_28:                              # %cleanup
	movl	%ebp, %eax
	addq	$720, %rsp              # imm = 0x2D0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_17:                              # %sw.epilog.thread
	movl	$4, 680(%rsp)
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	movl	%eax, 676(%rsp)
	jmp	.LBB10_22
.Lfunc_end10:
	.size	gs_begin_transparency_group, .Lfunc_end10-gs_begin_transparency_group
	.cfi_endproc

	.globl	gx_begin_transparency_group
	.align	16, 0x90
	.type	gx_begin_transparency_group,@function
gx_begin_transparency_group:            # @gx_begin_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 96
	movq	%rdi, %rcx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	$0, 80(%rsp)
	movl	64(%rdx), %edi
	testl	%edi, %edi
	je	.LBB11_2
# BB#1:                                 # %land.lhs.true
	movl	$-15, %eax
	cmpl	100(%rsi), %edi
	jne	.LBB11_4
.LBB11_2:                               # %if.end
	movl	12(%rdx), %eax
	movl	%eax, 40(%rsp)
	movl	16(%rdx), %eax
	movl	%eax, 44(%rsp)
	movups	660(%rdx), %xmm0
	movups	%xmm0, 52(%rsp)
	movups	680(%rdx), %xmm0
	movups	%xmm0, 72(%rsp)
	movl	608(%rdx), %eax
	movl	%eax, 224(%rcx)
	movl	612(%rdx), %eax
	movl	%eax, 228(%rcx)
	movl	600(%rdx), %eax
	movl	%eax, 220(%rcx)
	movups	24(%rdx), %xmm0
	movups	40(%rdx), %xmm1
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	1496(%rsi), %r9
	xorl	%eax, %eax
	testq	%r9, %r9
	je	.LBB11_4
# BB#3:                                 # %if.then.18
	leaq	32(%rsp), %rax
	leaq	(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	*%r9
.LBB11_4:                               # %cleanup
	addq	$88, %rsp
	retq
.Lfunc_end11:
	.size	gx_begin_transparency_group, .Lfunc_end11-gx_begin_transparency_group
	.cfi_endproc

	.globl	gs_end_transparency_group
	.align	16, 0x90
	.type	gs_end_transparency_group,@function
gs_end_transparency_group:              # @gs_end_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 40
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp25:
	.cfi_def_cfa_offset 752
.Ltmp26:
	.cfi_offset %rbx, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	cmpl	$0, (%rbx)
	je	.LBB12_6
# BB#1:                                 # %land.lhs.true
	movq	1872(%rbx), %r14
	movq	%r14, %rdi
	callq	gx_device_is_pattern_clist
	movl	%eax, %ebp
	movq	%r14, %rdi
	callq	gx_device_is_pattern_accum
	movl	%eax, %ecx
	orl	%ebp, %ecx
	je	.LBB12_6
# BB#2:                                 # %if.then.i
	testl	%ebp, %ebp
	je	.LBB12_4
# BB#3:                                 # %if.then.4.i
	movq	12176(%r14), %rcx
	xorl	%r15d, %r15d
	cmpl	$0, 96(%rcx)
	je	.LBB12_12
.LBB12_4:                               # %if.end.9.i
	testl	%eax, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.11.i
	movq	1744(%r14), %rax
	xorl	%r15d, %r15d
	cmpl	$0, 96(%rax)
	je	.LBB12_12
.LBB12_6:                               # %do.end
	movl	$4, (%rsp)
	movq	1872(%rbx), %rbp
	movq	$0, 704(%rsp)
	movl	100(%rbp), %r14d
	movq	8(%rbx), %r8
	leaq	704(%rsp), %rdx
	leaq	(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	send_pdf14trans
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB12_12
# BB#7:                                 # %if.end.i
	movq	704(%rsp), %rsi
	cmpq	%rbp, %rsi
	je	.LBB12_9
# BB#8:                                 # %if.then.2.i
	movq	%rbx, %rdi
	callq	gx_set_device_only
.LBB12_9:                               # %if.end.3.i
	cmpl	$0, 272(%rbx)
	je	.LBB12_12
# BB#10:                                # %land.lhs.true.i
	movq	704(%rsp), %rax
	cmpl	100(%rax), %r14d
	je	.LBB12_12
# BB#11:                                # %if.then.7.i
	movq	%rbx, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %r15d
.LBB12_12:                              # %cleanup
	movl	%r15d, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gs_end_transparency_group, .Lfunc_end12-gs_end_transparency_group
	.cfi_endproc

	.globl	gx_end_transparency_group
	.align	16, 0x90
	.type	gx_end_transparency_group,@function
gx_end_transparency_group:              # @gx_end_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1504(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB13_1
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.LBB13_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	gx_end_transparency_group, .Lfunc_end13-gx_end_transparency_group
	.cfi_endproc

	.globl	gs_push_transparency_state
	.align	16, 0x90
	.type	gs_push_transparency_state,@function
gs_push_transparency_state:             # @gs_push_transparency_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 32
	subq	$720, %rsp              # imm = 0x2D0
.Ltmp33:
	.cfi_def_cfa_offset 752
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	movq	1872(%r14), %rbx
	movq	%rbx, %rdi
	callq	gx_device_is_pattern_clist
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	gx_device_is_pattern_accum
	movl	%eax, %ecx
	orl	%ebp, %eax
	je	.LBB14_5
# BB#1:                                 # %if.then.i
	testl	%ebp, %ebp
	je	.LBB14_3
# BB#2:                                 # %if.then.4.i
	movq	12176(%rbx), %rdx
	xorl	%eax, %eax
	cmpl	$0, 96(%rdx)
	je	.LBB14_13
.LBB14_3:                               # %if.end.9.i
	testl	%ecx, %ecx
	je	.LBB14_5
# BB#4:                                 # %if.then.11.i
	movq	1744(%rbx), %rcx
	xorl	%eax, %eax
	cmpl	$0, 96(%rcx)
	je	.LBB14_13
.LBB14_5:                               # %if.end
	cmpl	$0, 236(%r14)
	je	.LBB14_12
# BB#6:                                 # %do.end
	movl	$8, 8(%rsp)
	movq	1872(%r14), %rbx
	movq	$0, 712(%rsp)
	movl	100(%rbx), %ebp
	movq	8(%r14), %r8
	leaq	712(%rsp), %rdx
	leaq	8(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	send_pdf14trans
	testl	%eax, %eax
	js	.LBB14_13
# BB#7:                                 # %if.end.i
	movq	712(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.LBB14_9
# BB#8:                                 # %if.then.2.i
	movq	%r14, %rdi
	callq	gx_set_device_only
.LBB14_9:                               # %if.end.3.i
	cmpl	$0, 272(%r14)
	je	.LBB14_12
# BB#10:                                # %land.lhs.true.i
	movq	712(%rsp), %rax
	cmpl	100(%rax), %ebp
	je	.LBB14_12
# BB#11:                                # %gs_state_update_pdf14trans.exit
	movq	%r14, %rdi
	callq	gs_do_set_overprint
	testl	%eax, %eax
	js	.LBB14_13
.LBB14_12:                              # %if.end.9
	xorl	%eax, %eax
.LBB14_13:                              # %cleanup
	addq	$720, %rsp              # imm = 0x2D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gs_push_transparency_state, .Lfunc_end14-gs_push_transparency_state
	.cfi_endproc

	.globl	gs_pop_transparency_state
	.align	16, 0x90
	.type	gs_pop_transparency_state,@function
gs_pop_transparency_state:              # @gs_pop_transparency_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 40
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp41:
	.cfi_def_cfa_offset 752
.Ltmp42:
	.cfi_offset %rbx, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	movq	1872(%r15), %rbp
	movq	%rbp, %rdi
	callq	gx_device_is_pattern_clist
	movl	%eax, %ebx
	movq	%rbp, %rdi
	callq	gx_device_is_pattern_accum
	movl	%eax, %ecx
	orl	%ebx, %eax
	je	.LBB15_5
# BB#1:                                 # %if.then.i
	testl	%ebx, %ebx
	je	.LBB15_3
# BB#2:                                 # %if.then.4.i
	movq	12176(%rbp), %rdx
	xorl	%eax, %eax
	cmpl	$0, 96(%rdx)
	je	.LBB15_13
.LBB15_3:                               # %if.end.9.i
	testl	%ecx, %ecx
	je	.LBB15_5
# BB#4:                                 # %if.then.11.i
	movq	1744(%rbp), %rcx
	xorl	%eax, %eax
	cmpl	$0, 96(%rcx)
	je	.LBB15_13
.LBB15_5:                               # %if.end
	orl	236(%r15), %r14d
	je	.LBB15_12
# BB#6:                                 # %do.end
	movl	$9, (%rsp)
	movq	1872(%r15), %rbp
	movq	$0, 704(%rsp)
	movl	100(%rbp), %ebx
	movq	8(%r15), %r8
	leaq	704(%rsp), %rdx
	leaq	(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	send_pdf14trans
	testl	%eax, %eax
	js	.LBB15_13
# BB#7:                                 # %if.end.i
	movq	704(%rsp), %rsi
	cmpq	%rbp, %rsi
	je	.LBB15_9
# BB#8:                                 # %if.then.2.i
	movq	%r15, %rdi
	callq	gx_set_device_only
.LBB15_9:                               # %if.end.3.i
	cmpl	$0, 272(%r15)
	je	.LBB15_12
# BB#10:                                # %land.lhs.true.i
	movq	704(%rsp), %rax
	cmpl	100(%rax), %ebx
	je	.LBB15_12
# BB#11:                                # %gs_state_update_pdf14trans.exit
	movq	%r15, %rdi
	callq	gs_do_set_overprint
	testl	%eax, %eax
	js	.LBB15_13
.LBB15_12:                              # %if.end.10
	xorl	%eax, %eax
.LBB15_13:                              # %cleanup
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_pop_transparency_state, .Lfunc_end15-gs_pop_transparency_state
	.cfi_endproc

	.globl	gx_pop_transparency_state
	.align	16, 0x90
	.type	gx_pop_transparency_state,@function
gx_pop_transparency_state:              # @gx_pop_transparency_state
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1648(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB16_1
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.LBB16_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	gx_pop_transparency_state, .Lfunc_end16-gx_pop_transparency_state
	.cfi_endproc

	.globl	gx_push_transparency_state
	.align	16, 0x90
	.type	gx_push_transparency_state,@function
gx_push_transparency_state:             # @gx_push_transparency_state
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1640(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB17_1
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.LBB17_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	gx_push_transparency_state, .Lfunc_end17-gx_push_transparency_state
	.cfi_endproc

	.globl	gs_trans_mask_params_init
	.align	16, 0x90
	.type	gs_trans_mask_params_init,@function
gs_trans_mask_params_init:              # @gs_trans_mask_params_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movl	%esi, 8(%rdi)
	movl	$0, 12(%rdi)
	movl	$0, 272(%rdi)
	movq	$mask_transfer_identity, 280(%rdi)
	movq	$0, 288(%rdi)
	movl	$0, 296(%rdi)
	movq	$0, 312(%rdi)
	retq
.Lfunc_end18:
	.size	gs_trans_mask_params_init, .Lfunc_end18-gs_trans_mask_params_init
	.cfi_endproc

	.align	16, 0x90
	.type	mask_transfer_identity,@function
mask_transfer_identity:                 # @mask_transfer_identity
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	mask_transfer_identity, .Lfunc_end19-mask_transfer_identity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI20_2:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_1:
	.long	1132396544              # float 255
	.text
	.globl	gs_begin_transparency_mask
	.align	16, 0x90
	.type	gs_begin_transparency_mask,@function
gs_begin_transparency_mask:             # @gs_begin_transparency_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$1448, %rsp             # imm = 0x5A8
.Ltmp52:
	.cfi_def_cfa_offset 1504
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leaq	736(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	movl	12(%rbx), %r14d
	movq	336(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	1872(%rbp), %r15
	movq	%r15, %rdi
	callq	gx_device_is_pattern_clist
	movl	%eax, %ebp
	movq	%r15, %rdi
	callq	gx_device_is_pattern_accum
	movl	%eax, %ecx
	orl	%ebp, %ecx
	je	.LBB20_5
# BB#1:                                 # %if.then.i
	testl	%ebp, %ebp
	je	.LBB20_3
# BB#2:                                 # %if.then.4.i
	movq	12176(%r15), %rcx
	xorl	%r12d, %r12d
	cmpl	$0, 96(%rcx)
	je	.LBB20_26
.LBB20_3:                               # %if.end.9.i
	testl	%eax, %eax
	je	.LBB20_5
# BB#4:                                 # %if.then.11.i
	movq	1744(%r15), %rax
	xorl	%r12d, %r12d
	cmpl	$0, 96(%rax)
	je	.LBB20_26
.LBB20_5:                               # %if.end
	shll	$2, %r14d
	movl	$5, 736(%rsp)
	movupd	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	%xmm1, 776(%rsp)
	movupd	%xmm0, 760(%rsp)
	movl	8(%rbx), %eax
	movl	%eax, 796(%rsp)
	movl	12(%rbx), %eax
	movl	%eax, 800(%rsp)
	leaq	808(%rsp), %rdi
	leaq	16(%rbx), %rsi
	movslq	%r14d, %rdx
	callq	memcpy
	movl	272(%rbx), %eax
	movl	%eax, 1064(%rsp)
	movq	288(%rbx), %rax
	movq	%rax, 1072(%rsp)
	movl	$mask_transfer_identity, %eax
	cmpq	%rax, 280(%rbx)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 804(%rsp)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1352(%rsp)
	movl	296(%rbx), %eax
	movl	%eax, 1380(%rsp)
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpq	$0, 56(%rax)
	jne	.LBB20_7
# BB#6:                                 # %if.then.16
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gsicc_initialize_iccsmask
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB20_26
.LBB20_7:                               # %do.end
	movl	$10, 32(%rsp)
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	1872(%rbp), %r15
	movq	$0, 1440(%rsp)
	movl	100(%r15), %r14d
	movq	8(%rbp), %r8
	leaq	1440(%rsp), %rdx
	leaq	32(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	send_pdf14trans
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB20_26
# BB#8:                                 # %if.end.i
	movq	1440(%rsp), %rsi
	cmpq	%r15, %rsi
	je	.LBB20_10
# BB#9:                                 # %if.then.2.i
	movq	%rbp, %rdi
	callq	gx_set_device_only
.LBB20_10:                              # %if.end.3.i
	cmpl	$0, 272(%rbp)
	je	.LBB20_13
# BB#11:                                # %land.lhs.true.i
	movq	1440(%rsp), %rax
	cmpl	100(%rax), %r14d
	je	.LBB20_13
# BB#12:                                # %gs_state_update_pdf14trans.exit
	movq	%rbp, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB20_26
.LBB20_13:                              # %if.end.28
	movq	%rbp, %r13
	movq	8(%r13), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r15
	movq	336(%r13), %rax
	movq	8(%rax), %rax
	movq	%rax, 64(%r15)
	testq	%rax, %rax
	je	.LBB20_15
# BB#14:                                # %do.body.35
	incq	288(%rax)
.LBB20_15:                              # %for.cond.preheader
	xorl	%ebp, %ebp
	leaq	1440(%rsp), %r14
	.align	16, 0x90
.LBB20_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	.LCPI20_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	288(%rbx), %rsi
	movq	%r14, %rdi
	callq	*280(%rbx)
	movss	1440(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI20_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI20_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movb	%al, 1080(%rsp,%rbp)
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB20_16
# BB#17:                                # %for.end
	movq	64(%r15), %rax
	testq	%rax, %rax
	je	.LBB20_19
# BB#18:                                # %do.body.74
	movl	$5, 1408(%rsp)
	movzbl	(%rax), %ecx
	movl	%ecx, 1404(%rsp)
	movq	%rax, 1424(%rsp)
	movq	144(%rax), %rcx
	movq	%rcx, 1416(%rsp)
	incq	288(%rax)
	jmp	.LBB20_20
.LBB20_19:                              # %if.else
	movq	$1, 1404(%rsp)
.LBB20_20:                              # %if.end.89
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	callq	rc_decrement_only_cs
	movq	1872(%r13), %rbx
	movq	$0, 1440(%rsp)
	movl	100(%rbx), %ebp
	movq	8(%r13), %r8
	leaq	1440(%rsp), %rdx
	leaq	736(%rsp), %rcx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	send_pdf14trans
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB20_26
# BB#21:                                # %if.end.i.45
	movq	1440(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.LBB20_23
# BB#22:                                # %if.then.2.i.46
	movq	%r13, %rdi
	callq	gx_set_device_only
.LBB20_23:                              # %if.end.3.i.49
	cmpl	$0, 272(%r13)
	je	.LBB20_26
# BB#24:                                # %land.lhs.true.i.52
	movq	1440(%rsp), %rax
	cmpl	100(%rax), %ebp
	je	.LBB20_26
# BB#25:                                # %if.then.7.i.54
	movq	%r13, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %r12d
.LBB20_26:                              # %cleanup
	movl	%r12d, %eax
	addq	$1448, %rsp             # imm = 0x5A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gs_begin_transparency_mask, .Lfunc_end20-gs_begin_transparency_mask
	.cfi_endproc

	.globl	gx_begin_transparency_mask
	.align	16, 0x90
	.type	gx_begin_transparency_mask,@function
gx_begin_transparency_mask:             # @gx_begin_transparency_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 32
	subq	$576, %rsp              # imm = 0x240
.Ltmp62:
	.cfi_def_cfa_offset 608
.Ltmp63:
	.cfi_offset %rbx, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	64(%rbx), %eax
	movl	672(%rbx), %ecx
	movl	%ecx, 16(%rsp)
	movl	60(%rbx), %ecx
	movl	%ecx, 8(%rsp)
	movl	668(%rbx), %ecx
	movl	%ecx, 12(%rsp)
	movl	%eax, 20(%rsp)
	shll	$2, %eax
	leaq	24(%rsp), %rdi
	leaq	72(%rbx), %rsi
	movslq	%eax, %rdx
	callq	memcpy
	movl	328(%rbx), %eax
	movl	%eax, 280(%rsp)
	movl	68(%rbx), %eax
	movl	%eax, 284(%rsp)
	movl	660(%rbx), %eax
	movl	%eax, 288(%rsp)
	movl	644(%rbx), %eax
	movl	%eax, 292(%rsp)
	movl	664(%rbx), %eax
	movl	%eax, 296(%rsp)
	cmpl	$5, 16(%rsp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	688(%rbx), %rax
	movq	%rax, 568(%rsp)
	movq	680(%rbx), %rax
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	movq	$0, 568(%rsp)
	xorl	%eax, %eax
.LBB21_3:                               # %if.end
	movq	%rax, 560(%rsp)
	leaq	300(%rsp), %rdi
	leaq	344(%rbx), %rsi
	movl	$256, %edx              # imm = 0x100
	callq	memcpy
	movq	1512(%r15), %r9
	xorl	%eax, %eax
	testq	%r9, %r9
	je	.LBB21_5
# BB#4:                                 # %if.then.27
	addq	$24, %rbx
	leaq	8(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	*%r9
.LBB21_5:                               # %cleanup
	addq	$576, %rsp              # imm = 0x240
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	gx_begin_transparency_mask, .Lfunc_end21-gx_begin_transparency_mask
	.cfi_endproc

	.globl	gs_end_transparency_mask
	.align	16, 0x90
	.type	gs_end_transparency_mask,@function
gs_end_transparency_mask:               # @gs_end_transparency_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 40
	subq	$1416, %rsp             # imm = 0x588
.Ltmp70:
	.cfi_def_cfa_offset 1456
.Ltmp71:
	.cfi_offset %rbx, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	leaq	704(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	movq	1872(%r15), %rbx
	movq	%rbx, %rdi
	callq	gx_device_is_pattern_clist
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	gx_device_is_pattern_accum
	movl	%eax, %ecx
	orl	%ebp, %ecx
	je	.LBB22_5
# BB#1:                                 # %if.then.i
	testl	%ebp, %ebp
	je	.LBB22_3
# BB#2:                                 # %if.then.4.i
	movq	12176(%rbx), %rcx
	xorl	%ebp, %ebp
	cmpl	$0, 96(%rcx)
	je	.LBB22_17
.LBB22_3:                               # %if.end.9.i
	testl	%eax, %eax
	je	.LBB22_5
# BB#4:                                 # %if.then.11.i
	movq	1744(%rbx), %rax
	xorl	%ebp, %ebp
	cmpl	$0, 96(%rax)
	je	.LBB22_17
.LBB22_5:                               # %if.end
	movl	$1, 236(%r15)
	movl	$6, 704(%rsp)
	movl	%r14d, 760(%rsp)
	movl	$11, (%rsp)
	movq	1872(%r15), %rbx
	movq	$0, 1408(%rsp)
	movl	100(%rbx), %r14d
	movq	8(%r15), %r8
	leaq	1408(%rsp), %rdx
	leaq	(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	send_pdf14trans
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_17
# BB#6:                                 # %if.end.i
	movq	1408(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.LBB22_8
# BB#7:                                 # %if.then.2.i
	movq	%r15, %rdi
	callq	gx_set_device_only
.LBB22_8:                               # %if.end.3.i
	cmpl	$0, 272(%r15)
	je	.LBB22_11
# BB#9:                                 # %land.lhs.true.i
	movq	1408(%rsp), %rax
	cmpl	100(%rax), %r14d
	je	.LBB22_11
# BB#10:                                # %gs_state_update_pdf14trans.exit
	movq	%r15, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_17
.LBB22_11:                              # %if.end.11
	movq	1872(%r15), %rbx
	movq	$0, 1408(%rsp)
	movl	100(%rbx), %r14d
	movq	8(%r15), %r8
	leaq	1408(%rsp), %rdx
	leaq	704(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	send_pdf14trans
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_17
# BB#12:                                # %if.end.i.17
	movq	1408(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.LBB22_14
# BB#13:                                # %if.then.2.i.18
	movq	%r15, %rdi
	callq	gx_set_device_only
.LBB22_14:                              # %if.end.3.i.21
	cmpl	$0, 272(%r15)
	je	.LBB22_17
# BB#15:                                # %land.lhs.true.i.24
	movq	1408(%rsp), %rax
	cmpl	100(%rax), %r14d
	je	.LBB22_17
# BB#16:                                # %if.then.7.i.26
	movq	%r15, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %ebp
.LBB22_17:                              # %cleanup
	movl	%ebp, %eax
	addq	$1416, %rsp             # imm = 0x588
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gs_end_transparency_mask, .Lfunc_end22-gs_end_transparency_mask
	.cfi_endproc

	.globl	gx_end_transparency_mask
	.align	16, 0x90
	.type	gx_end_transparency_mask,@function
gx_end_transparency_mask:               # @gx_end_transparency_mask
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1520(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB23_1
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.LBB23_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	gx_end_transparency_mask, .Lfunc_end23-gx_end_transparency_mask
	.cfi_endproc

	.globl	gs_push_pdf14trans_device
	.align	16, 0x90
	.type	gs_push_pdf14trans_device,@function
gs_push_pdf14trans_device:              # @gs_push_pdf14trans_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 40
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp79:
	.cfi_def_cfa_offset 800
.Ltmp80:
	.cfi_offset %rbx, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	leaq	48(%rsp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	movq	1872(%r15), %rdi
	leaq	8(%rsp), %rsi
	callq	*1680(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_14
# BB#1:                                 # %if.end
	movq	8(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	16(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movl	$0, 48(%rsp)
	movq	1872(%r15), %rdi
	callq	*1624(%rdi)
	testq	%rax, %rax
	je	.LBB24_5
# BB#2:                                 # %if.then.i
	cmpl	$0, 1064(%rax)
	je	.LBB24_3
# BB#4:                                 # %if.end.i
	movl	32(%rax), %ebx
	jmp	.LBB24_5
.LBB24_3:                               # %if.then.2.i
	movl	24(%rax), %ebx
.LBB24_5:                               # %get_num_pdf14_spot_colors.exit
	movl	%ebx, 52(%rsp)
	movl	%r14d, 748(%rsp)
	movq	40(%rsp), %rax
	cmpl	$6, 16(%rax)
	je	.LBB24_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$0, 4(%rax)
	je	.LBB24_8
.LBB24_7:                               # %if.then.5
	movq	336(%r15), %rax
	movq	16(%rax), %rax
	movq	%rax, 736(%rsp)
.LBB24_8:                               # %if.end.6
	movq	1872(%r15), %rbx
	movq	$0, 752(%rsp)
	movl	100(%rbx), %r14d
	movq	8(%r15), %r8
	leaq	752(%rsp), %rdx
	leaq	48(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	send_pdf14trans
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_14
# BB#9:                                 # %if.end.i.11
	movq	752(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.LBB24_11
# BB#10:                                # %if.then.2.i.12
	movq	%r15, %rdi
	callq	gx_set_device_only
.LBB24_11:                              # %if.end.3.i
	cmpl	$0, 272(%r15)
	je	.LBB24_14
# BB#12:                                # %land.lhs.true.i
	movq	752(%rsp), %rax
	cmpl	100(%rax), %r14d
	je	.LBB24_14
# BB#13:                                # %if.then.7.i
	movq	%r15, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %ebp
.LBB24_14:                              # %cleanup
	movl	%ebp, %eax
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gs_push_pdf14trans_device, .Lfunc_end24-gs_push_pdf14trans_device
	.cfi_endproc

	.globl	gs_pop_pdf14trans_device
	.align	16, 0x90
	.type	gs_pop_pdf14trans_device,@function
gs_pop_pdf14trans_device:               # @gs_pop_pdf14trans_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 40
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp88:
	.cfi_def_cfa_offset 752
.Ltmp89:
	.cfi_offset %rbx, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	leaq	(%rsp), %r14
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	movq	%r14, %rdi
	callq	memset
	movl	%ebp, 700(%rsp)
	movl	$1, (%rsp)
	movq	1872(%rbx), %rbp
	movq	$0, 704(%rsp)
	movl	100(%rbp), %r15d
	movq	8(%rbx), %r8
	leaq	704(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rcx
	callq	send_pdf14trans
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB25_6
# BB#1:                                 # %if.end.i
	movq	704(%rsp), %rsi
	cmpq	%rbp, %rsi
	je	.LBB25_3
# BB#2:                                 # %if.then.2.i
	movq	%rbx, %rdi
	callq	gx_set_device_only
.LBB25_3:                               # %if.end.3.i
	cmpl	$0, 272(%rbx)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true.i
	movq	704(%rsp), %rax
	cmpl	100(%rax), %r15d
	je	.LBB25_6
# BB#5:                                 # %if.then.7.i
	movq	%rbx, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %r14d
.LBB25_6:                               # %gs_state_update_pdf14trans.exit
	movl	%r14d, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gs_pop_pdf14trans_device, .Lfunc_end25-gs_pop_pdf14trans_device
	.cfi_endproc

	.globl	gs_abort_pdf14trans_device
	.align	16, 0x90
	.type	gs_abort_pdf14trans_device,@function
gs_abort_pdf14trans_device:             # @gs_abort_pdf14trans_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp97:
	.cfi_def_cfa_offset 752
.Ltmp98:
	.cfi_offset %rbx, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	(%rsp), %r14
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	movq	%r14, %rdi
	callq	memset
	movl	$2, (%rsp)
	movq	1872(%rbx), %rbp
	movq	$0, 704(%rsp)
	movl	100(%rbp), %r15d
	movq	8(%rbx), %r8
	leaq	704(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rcx
	callq	send_pdf14trans
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB26_6
# BB#1:                                 # %if.end.i
	movq	704(%rsp), %rsi
	cmpq	%rbp, %rsi
	je	.LBB26_3
# BB#2:                                 # %if.then.2.i
	movq	%rbx, %rdi
	callq	gx_set_device_only
.LBB26_3:                               # %if.end.3.i
	cmpl	$0, 272(%rbx)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true.i
	movq	704(%rsp), %rax
	cmpl	100(%rax), %r15d
	je	.LBB26_6
# BB#5:                                 # %if.then.7.i
	movq	%rbx, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %r14d
.LBB26_6:                               # %gs_state_update_pdf14trans.exit
	movl	%r14d, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gs_abort_pdf14trans_device, .Lfunc_end26-gs_abort_pdf14trans_device
	.cfi_endproc

	.globl	gx_abort_trans_device
	.align	16, 0x90
	.type	gx_abort_trans_device,@function
gx_abort_trans_device:                  # @gx_abort_trans_device
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1528(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB27_1
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.LBB27_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end27:
	.size	gx_abort_trans_device, .Lfunc_end27-gx_abort_trans_device
	.cfi_endproc

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_begin_transparency_mask"
	.size	.L.str.4, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
