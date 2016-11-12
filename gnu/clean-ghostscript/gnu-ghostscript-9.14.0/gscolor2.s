	.text
	.file	"gscolor2.bc"
	.globl	gs_setcolorspace_only
	.align	16, 0x90
	.type	gs_setcolorspace_only,@function
gs_setcolorspace_only:                  # @gs_setcolorspace_only
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
	subq	$264, %rsp              # imm = 0x108
.Ltmp4:
	.cfi_def_cfa_offset 304
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	1744(%rbx), %r14
	movq	1752(%rbx), %rsi
	leaq	(%rsp), %rdi
	movl	$264, %edx              # imm = 0x108
	callq	memcpy
	movl	$-21, %ebp
	cmpl	$0, 1848(%rbx)
	jne	.LBB0_8
# BB#1:                                 # %if.end
	movq	32(%r15), %rax
	xorl	%ebp, %ebp
	cmpq	32(%r14), %rax
	je	.LBB0_8
# BB#2:                                 # %if.then.4
	movq	%r15, %rdi
	callq	rc_increment_cs
	movq	%r15, 1744(%rbx)
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*80(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, 272(%rbx)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	%rbx, %rdi
	callq	gs_do_set_overprint
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_5
.LBB0_6:                                # %if.else
	movq	(%r14), %rax
	leaq	(%rsp), %rdi
	movl	$-1, %edx
	movq	%r14, %rsi
	callq	*104(%rax)
	movl	$.L.str, %esi
	movq	%r14, %rdi
	jmp	.LBB0_7
.LBB0_5:                                # %if.then.12
	movq	%r14, 1744(%rbx)
	movl	$.L.str, %esi
	movq	%r15, %rdi
.LBB0_7:                                # %cleanup
	callq	rc_decrement_only_cs
.LBB0_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_setcolorspace_only, .Lfunc_end0-gs_setcolorspace_only
	.cfi_endproc

	.globl	gs_setcolorspace
	.align	16, 0x90
	.type	gs_setcolorspace,@function
gs_setcolorspace:                       # @gs_setcolorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	gs_setcolorspace_only
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_2
# BB#1:                                 # %if.then
	movq	56(%rbx), %rax
	movq	1744(%r14), %rcx
	movq	%rax, 56(%rcx)
	movq	1752(%r14), %rdi
	movq	$0, (%rdi)
	movq	(%rbx), %rax
	movq	%rbx, %rsi
	callq	*32(%rax)
	movq	1760(%r14), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB1_2:                                # %if.end
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_setcolorspace, .Lfunc_end1-gs_setcolorspace
	.cfi_endproc

	.globl	gs_currentcolorspace
	.align	16, 0x90
	.type	gs_currentcolorspace,@function
gs_currentcolorspace:                   # @gs_currentcolorspace
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1744(%rdi), %rax
	retq
.Lfunc_end2:
	.size	gs_currentcolorspace, .Lfunc_end2-gs_currentcolorspace
	.cfi_endproc

	.globl	gs_setcolor
	.align	16, 0x90
	.type	gs_setcolor,@function
gs_setcolor:                            # @gs_setcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 32
	subq	$272, %rsp              # imm = 0x110
.Ltmp18:
	.cfi_def_cfa_offset 304
.Ltmp19:
	.cfi_offset %rbx, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	1744(%rbx), %r14
	movq	1752(%rbx), %rsi
	leaq	8(%rsp), %rdi
	movl	$264, %edx              # imm = 0x108
	callq	memcpy
	movl	$-21, %eax
	cmpl	$0, 1848(%rbx)
	jne	.LBB3_2
# BB#1:                                 # %if.end
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
	movq	(%r14), %rax
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*104(%rax)
	movq	1752(%rbx), %rdi
	movl	$264, %edx              # imm = 0x108
	movq	%r15, %rsi
	callq	memcpy
	movq	(%r14), %rax
	movq	1752(%rbx), %rdi
	movq	%r14, %rsi
	callq	*40(%rax)
	movq	(%r14), %rax
	leaq	8(%rsp), %rdi
	movl	$-1, %edx
	movq	%r14, %rsi
	callq	*104(%rax)
	xorl	%eax, %eax
.LBB3_2:                                # %cleanup
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gs_setcolor, .Lfunc_end3-gs_setcolor
	.cfi_endproc

	.globl	gs_currentcolor
	.align	16, 0x90
	.type	gs_currentcolor,@function
gs_currentcolor:                        # @gs_currentcolor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1752(%rdi), %rax
	retq
.Lfunc_end4:
	.size	gs_currentcolor, .Lfunc_end4-gs_currentcolor
	.cfi_endproc

	.globl	gs_currentdevicecolor
	.align	16, 0x90
	.type	gs_currentdevicecolor,@function
gs_currentdevicecolor:                  # @gs_currentdevicecolor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1760(%rdi), %rax
	retq
.Lfunc_end5:
	.size	gs_currentdevicecolor, .Lfunc_end5-gs_currentdevicecolor
	.cfi_endproc

	.globl	lookup_indexed_map
	.align	16, 0x90
	.type	lookup_indexed_map,@function
lookup_indexed_map:                     # @lookup_indexed_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	imull	%eax, %ebp
	movslq	%ebp, %rsi
	movq	80(%rbx), %rcx
	shlq	$2, %rsi
	addq	48(%rcx), %rsi
	movslq	%eax, %rdx
	shlq	$2, %rdx
	movq	%r14, %rdi
	callq	memcpy
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lookup_indexed_map, .Lfunc_end6-lookup_indexed_map
	.cfi_endproc

	.globl	free_indexed_map
	.align	16, 0x90
	.type	free_indexed_map,@function
free_indexed_map:                       # @free_indexed_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	48(%r15), %rsi
	callq	*24(%rbx)
	movq	24(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	free_indexed_map, .Lfunc_end7-free_indexed_map
	.cfi_endproc

	.globl	alloc_indexed_map
	.align	16, 0x90
	.type	alloc_indexed_map,@function
alloc_indexed_map:                      # @alloc_indexed_map
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
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%esi, %r13d
	movq	%rdi, %r15
	movl	$st_indexed_map, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*72(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB8_6
# BB#1:                                 # %do.body.1
	movq	$1, (%rbp)
	movq	%rbx, 8(%rbp)
	movq	$rc_free_struct_only, 16(%rbp)
	testl	%r13d, %r13d
	jle	.LBB8_4
# BB#2:                                 # %if.then.10
	movl	$4, %edx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%r14, %rcx
	callq	*88(%rbx)
	movq	%rax, 48(%rbp)
	testq	%rax, %rax
	jne	.LBB8_5
# BB#3:                                 # %if.then.15
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	*24(%rbx)
	jmp	.LBB8_6
.LBB8_4:                                # %if.else.18
	movq	$0, 48(%rbp)
.LBB8_5:                                # %if.end.20
	movq	$free_indexed_map, 16(%rbp)
	movq	$0, 32(%rbp)
	movl	%r13d, 40(%rbp)
	movq	%rbp, (%r15)
	xorl	%r12d, %r12d
.LBB8_6:                                # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	alloc_indexed_map, .Lfunc_end8-alloc_indexed_map
	.cfi_endproc

	.align	16, 0x90
	.type	gx_restrict_Indexed,@function
gx_restrict_Indexed:                    # @gx_restrict_Indexed
	.cfi_startproc
# BB#0:                                 # %entry
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.LBB9_2
# BB#1:                                 # %cond.false
	cvtsi2ssl	72(%rsi), %xmm2
	movaps	%xmm2, %xmm0
	cmpless	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
.LBB9_2:                                # %cond.end.11
	movss	%xmm0, 8(%rdi)
	retq
.Lfunc_end9:
	.size	gx_restrict_Indexed, .Lfunc_end9-gx_restrict_Indexed
	.cfi_endproc

	.align	16, 0x90
	.type	gx_concrete_space_Indexed,@function
gx_concrete_space_Indexed:              # @gx_concrete_space_Indexed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %rbx, -24
.Ltmp51:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$0, 4(%rsp)
	movq	40(%rbx), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	movq	40(%rbx), %rdi
	je	.LBB10_3
# BB#1:                                 # %if.then
	movq	48(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB10_4
# BB#2:                                 # %if.then.2
	movq	8(%r14), %rdx
	leaq	4(%rsp), %rsi
	callq	gs_colorspace_set_icc_equivalent
	movq	40(%rbx), %rax
	movq	48(%rax), %rax
	jmp	.LBB10_4
.LBB10_3:                               # %if.end.7
	movq	(%rdi), %rax
	movq	%r14, %rsi
	callq	*48(%rax)
.LBB10_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	gx_concrete_space_Indexed, .Lfunc_end10-gx_concrete_space_Indexed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4562254508917369340     # double 0.001
	.text
	.align	16, 0x90
	.type	gx_concretize_Indexed,@function
gx_concretize_Indexed:                  # @gx_concretize_Indexed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp56:
	.cfi_def_cfa_offset 304
.Ltmp57:
	.cfi_offset %rbx, -40
.Ltmp58:
	.cfi_offset %r12, -32
.Ltmp59:
	.cfi_offset %r14, -24
.Ltmp60:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	40(%rsi), %rbx
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI11_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB11_3
# BB#1:                                 # %cond.false.i
	movl	72(%rsi), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	ucomiss	%xmm1, %xmm0
	jae	.LBB11_3
# BB#2:                                 # %cond.false.11.i
	cvttss2si	%xmm0, %eax
.LBB11_3:                               # %gs_indexed_limit_and_lookup.exit
	leaq	(%rsp), %rdx
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	gs_cspace_indexed_lookup
	testl	%eax, %eax
	js	.LBB11_5
# BB#4:                                 # %if.end
	movq	(%rbx), %rax
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	*56(%rax)
.LBB11_5:                               # %cleanup
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	gx_concretize_Indexed, .Lfunc_end11-gx_concretize_Indexed
	.cfi_endproc

	.align	16, 0x90
	.type	gx_install_Indexed,@function
gx_install_Indexed:                     # @gx_install_Indexed
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movq	(%rdi), %rax
	movq	80(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end12:
	.size	gx_install_Indexed, .Lfunc_end12-gx_install_Indexed
	.cfi_endproc

	.align	16, 0x90
	.type	gx_set_overprint_Indexed,@function
gx_set_overprint_Indexed:               # @gx_set_overprint_Indexed
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movq	(%rdi), %rax
	movq	88(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end13:
	.size	gx_set_overprint_Indexed, .Lfunc_end13-gx_set_overprint_Indexed
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_Indexed,@function
gx_final_Indexed:                       # @gx_final_Indexed
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 96(%rdi)
	je	.LBB14_4
# BB#1:                                 # %do.body
	movq	80(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB14_5
# BB#2:                                 # %do.end
	decq	(%rsi)
	je	.LBB14_3
.LBB14_5:                               # %if.end.57
	retq
.LBB14_4:                               # %if.else.44
	movq	16(%rdi), %rax
	movq	80(%rdi), %rsi
	movq	160(%rax), %r8
	movl	88(%rdi), %edx
	movl	$.L.str.5, %ecx
	movq	%rax, %rdi
	jmpq	*%r8                    # TAILCALL
.LBB14_3:                               # %do.end.22
	movq	8(%rsi), %rdi
	movq	16(%rsi), %rax
	movl	$.L.str.4, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end14:
	.size	gx_final_Indexed, .Lfunc_end14-gx_final_Indexed
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_Indexed,@function
gx_serialize_Indexed:                   # @gx_serialize_Indexed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -24
.Ltmp65:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_serialize_cspace_type
	testl	%eax, %eax
	js	.LBB15_10
# BB#1:                                 # %if.end
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%r14, %rsi
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB15_10
# BB#2:                                 # %if.end.5
	leaq	72(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB15_10
# BB#3:                                 # %if.end.9
	leaq	96(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB15_10
# BB#4:                                 # %if.end.13
	cmpl	$0, 96(%rbx)
	leaq	80(%rbx), %rbx
	je	.LBB15_7
# BB#5:                                 # %if.then.15
	movq	(%rbx), %rsi
	addq	$40, %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB15_10
# BB#6:                                 # %if.end.19
	movq	(%rbx), %rax
	movq	48(%rax), %rsi
	movl	40(%rax), %edx
	shll	$2, %edx
	jmp	.LBB15_9
.LBB15_7:                               # %if.else
	leaq	8(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB15_10
# BB#8:                                 # %if.end.32
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
.LBB15_9:                               # %cleanup
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
.LBB15_10:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	gx_serialize_Indexed, .Lfunc_end15-gx_serialize_Indexed
	.cfi_endproc

	.align	16, 0x90
	.type	gx_polarity_Indexed,@function
gx_polarity_Indexed:                    # @gx_polarity_Indexed
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movq	(%rdi), %rax
	jmpq	*128(%rax)              # TAILCALL
.Lfunc_end16:
	.size	gx_polarity_Indexed, .Lfunc_end16-gx_polarity_Indexed
	.cfi_endproc

	.globl	gs_cspace_build_Indexed
	.align	16, 0x90
	.type	gs_cspace_build_Indexed,@function
gs_cspace_build_Indexed:                # @gs_cspace_build_Indexed
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
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 80
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movl	$-15, %ebp
	testq	%rbx, %rbx
	je	.LBB17_20
# BB#1:                                 # %lor.lhs.false
	movq	(%rbx), %rax
	cmpl	$0, 4(%rax)
	je	.LBB17_20
# BB#2:                                 # %if.end
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	$gs_color_space_type_Indexed, %esi
	movq	%r13, %rdi
	callq	gs_cspace_alloc
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB17_20
# BB#3:                                 # %if.end.3
	testq	%r14, %r14
	je	.LBB17_4
# BB#18:                                # %if.else
	movups	(%r14), %xmm0
	movups	%xmm0, 80(%r15)
	movl	$0, 96(%r15)
	jmp	.LBB17_19
.LBB17_4:                               # %if.then.5
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r14d
	movl	$st_indexed_map, %esi
	movl	$.L.str.6, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB17_8
# BB#5:                                 # %do.body.1.i.i
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	imull	%r12d, %r14d
	movq	$1, (%rcx)
	movq	%r13, 8(%rcx)
	movq	$rc_free_struct_only, 16(%rcx)
	testl	%r14d, %r14d
	jle	.LBB17_9
# BB#6:                                 # %if.then.10.i.i
	movl	$4, %edx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$.L.str.6, %ecx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	*88(%r13)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, 48(%rcx)
	testq	%rax, %rax
	jne	.LBB17_10
# BB#7:                                 # %if.then.15.i.i
	movl	$.L.str.6, %edx
	movq	%r13, %rdi
	movq	%rcx, %rsi
	callq	*24(%r13)
.LBB17_8:                               # %if.then.10
	movq	$0, 80(%r15)
	movl	$.L.str.1, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*24(%r13)
	jmp	.LBB17_20
.LBB17_9:                               # %if.else.18.i.i
	movq	$0, 48(%rcx)
.LBB17_10:                              # %if.end.i
	movq	$free_indexed_map, 16(%rcx)
	movq	$0, 32(%rcx)
	movl	%r14d, 40(%rcx)
	movl	12(%rsp), %eax          # 4-byte Reload
	cmpl	$3, %eax
	jne	.LBB17_11
# BB#16:                                # %if.then.5.i
	movq	$map_palette_entry_3, 24(%rcx)
	jmp	.LBB17_17
.LBB17_11:                              # %if.end.i
	cmpl	$1, %eax
	jne	.LBB17_13
# BB#12:                                # %if.then.3.i
	movq	$map_palette_entry_1, 24(%rcx)
	jmp	.LBB17_17
.LBB17_13:                              # %if.else.8.i
	cmpl	$4, %eax
	jne	.LBB17_15
# BB#14:                                # %if.then.10.i
	movq	$map_palette_entry_4, 24(%rcx)
	jmp	.LBB17_17
.LBB17_15:                              # %if.else.13.i
	movq	$map_palette_entry_n, 24(%rcx)
.LBB17_17:                              # %if.end.11
	movq	%rcx, 80(%r15)
	movl	$1, 96(%r15)
.LBB17_19:                              # %if.end.14
	movq	%rbx, 40(%r15)
	movq	%rbx, %rdi
	callq	rc_increment_cs
	decl	%r12d
	movl	%r12d, 72(%r15)
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	movl	%eax, 76(%r15)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r15, (%rax)
	xorl	%ebp, %ebp
.LBB17_20:                              # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gs_cspace_build_Indexed, .Lfunc_end17-gs_cspace_build_Indexed
	.cfi_endproc

	.globl	gs_cspace_indexed_num_entries
	.align	16, 0x90
	.type	gs_cspace_indexed_num_entries,@function
gs_cspace_indexed_num_entries:          # @gs_cspace_indexed_num_entries
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$10, %ecx
	jne	.LBB18_2
# BB#1:                                 # %if.end
	movl	72(%rbx), %eax
	incl	%eax
.LBB18_2:                               # %return
	popq	%rbx
	retq
.Lfunc_end18:
	.size	gs_cspace_indexed_num_entries, .Lfunc_end18-gs_cspace_indexed_num_entries
	.cfi_endproc

	.globl	gs_cspace_indexed_value_array
	.align	16, 0x90
	.type	gs_cspace_indexed_value_array,@function
gs_cspace_indexed_value_array:          # @gs_cspace_indexed_value_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$10, %ecx
	jne	.LBB19_3
# BB#1:                                 # %lor.lhs.false
	xorl	%eax, %eax
	cmpl	$0, 96(%rbx)
	jne	.LBB19_3
# BB#2:                                 # %if.end
	movq	80(%rbx), %rax
	movq	48(%rax), %rax
.LBB19_3:                               # %return
	popq	%rbx
	retq
.Lfunc_end19:
	.size	gs_cspace_indexed_value_array, .Lfunc_end19-gs_cspace_indexed_value_array
	.cfi_endproc

	.globl	gs_cspace_indexed_set_proc
	.align	16, 0x90
	.type	gs_cspace_indexed_set_proc,@function
gs_cspace_indexed_set_proc:             # @gs_cspace_indexed_set_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp85:
	.cfi_def_cfa_offset 32
.Ltmp86:
	.cfi_offset %rbx, -24
.Ltmp87:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$10, %ecx
	jne	.LBB20_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, 96(%rbx)
	je	.LBB20_3
# BB#2:                                 # %if.end
	movq	80(%rbx), %rax
	movq	%r14, 24(%rax)
	xorl	%eax, %eax
.LBB20_3:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end20:
	.size	gs_cspace_indexed_set_proc, .Lfunc_end20-gs_cspace_indexed_set_proc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4571171282956062736     # double 0.0039215686274509803
	.text
	.globl	gs_cspace_indexed_lookup
	.align	16, 0x90
	.type	gs_cspace_indexed_lookup,@function
gs_cspace_indexed_lookup:               # @gs_cspace_indexed_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 32
.Ltmp91:
	.cfi_offset %rbx, -32
.Ltmp92:
	.cfi_offset %r14, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$0, 96(%rbx)
	je	.LBB21_1
# BB#14:                                # %if.then
	movq	80(%rbx), %rax
	movq	24(%rax), %rax
	addq	$8, %r14
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB21_1:                               # %if.else
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	movq	80(%rbx), %rcx
	imull	%eax, %ebp
	movslq	%ebp, %rdx
	leal	-1(%rax), %esi
	cmpl	$3, %esi
	jbe	.LBB21_2
# BB#3:                                 # %for.cond.preheader
	testl	%eax, %eax
	jle	.LBB21_13
# BB#4:                                 # %for.body.preheader
	xorl	%esi, %esi
	testb	$1, %al
	je	.LBB21_6
# BB#5:                                 # %for.body.prol
	movzbl	(%rcx,%rdx), %esi
	cvtsi2sdl	%esi, %xmm0
	mulsd	.LCPI21_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r14)
	movl	$1, %esi
.LBB21_6:                               # %for.body.preheader.split
	cmpl	$1, %eax
	je	.LBB21_13
# BB#7:                                 # %for.body.preheader.split.split
	subl	%esi, %eax
	leaq	(%rdx,%rsi), %rdx
	leaq	1(%rcx,%rdx), %rcx
	leaq	12(%r14,%rsi,4), %rdx
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB21_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -4(%rdx)
	movzbl	(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rdx)
	addq	$2, %rcx
	addq	$8, %rdx
	addl	$-2, %eax
	jne	.LBB21_8
	jmp	.LBB21_13
.LBB21_2:                               # %if.else
	jmpq	*.LJTI21_0(,%rsi,8)
.LBB21_9:                               # %sw.bb
	movzbl	3(%rcx,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI21_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%r14)
.LBB21_10:                              # %sw.bb.19
	movzbl	2(%rcx,%rdx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI21_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%r14)
.LBB21_11:                              # %sw.bb.28
	movzbl	1(%rcx,%rdx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI21_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%r14)
.LBB21_12:                              # %sw.bb.37
	movzbl	(%rcx,%rdx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI21_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r14)
.LBB21_13:                              # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gs_cspace_indexed_lookup, .Lfunc_end21-gs_cspace_indexed_lookup
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_12
	.quad	.LBB21_11
	.quad	.LBB21_10
	.quad	.LBB21_9

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI22_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_1:
	.quad	4643176031446892544     # double 255
.LCPI22_4:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_2:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	4
	.zero	4
.LCPI22_3:
	.quad	4643176031446892544     # double 2.550000e+02
	.quad	4643176031446892544     # double 2.550000e+02
.LCPI22_5:
	.quad	255                     # 0xff
	.quad	255                     # 0xff
	.text
	.globl	gs_cspace_indexed_lookup_bytes
	.align	16, 0x90
	.type	gs_cspace_indexed_lookup_bytes,@function
gs_cspace_indexed_lookup_bytes:         # @gs_cspace_indexed_lookup_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 40
	subq	$280, %rsp              # imm = 0x118
.Ltmp98:
	.cfi_def_cfa_offset 320
.Ltmp99:
	.cfi_offset %rbx, -40
.Ltmp100:
	.cfi_offset %r12, -32
.Ltmp101:
	.cfi_offset %r14, -24
.Ltmp102:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movq	%rdi, %rbx
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, %r15d
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.LBB22_3
# BB#1:                                 # %cond.false
	movl	72(%rbx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	ucomiss	%xmm0, %xmm1
	jae	.LBB22_3
# BB#2:                                 # %cond.false.11
	cvttss2si	%xmm1, %esi
.LBB22_3:                               # %cond.end.13
	movabsq	$8589934560, %r12       # imm = 0x1FFFFFFE0
	cmpl	$0, 96(%rbx)
	je	.LBB22_56
# BB#4:                                 # %if.then
	movq	80(%rbx), %rax
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*24(%rax)
	leal	-1(%r15), %ecx
	cmpl	$3, %ecx
	jbe	.LBB22_5
# BB#6:                                 # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB22_79
# BB#7:                                 # %for.body.preheader
	leaq	1(%rcx), %r8
	addq	$30, %r12
	xorl	%esi, %esi
	movq	%r8, %r10
	andq	%r12, %r10
	je	.LBB22_14
# BB#8:                                 # %vector.body.preheader
	leaq	1(%rcx), %rdi
	andq	%r12, %rdi
	addq	$-2, %rdi
	movq	%rdi, %rsi
	shrq	%rsi
	xorl	%ebx, %ebx
	btq	$1, %rdi
	jb	.LBB22_10
# BB#9:                                 # %vector.body.prol
	movaps	16(%rsp), %xmm1
	cvtps2pd	%xmm1, %xmm3
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cmpltps	%xmm1, %xmm0
	movaps	%xmm1, %xmm4
	cmpltps	.LCPI22_2(%rip), %xmm4
	andps	%xmm0, %xmm4
	pshufd	$212, %xmm4, %xmm0      # xmm0 = xmm4[0,1,1,3]
	psllq	$63, %xmm0
	psrad	$31, %xmm0
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	mulpd	.LCPI22_3(%rip), %xmm3
	movsd	.LCPI22_4(%rip), %xmm4  # xmm4 = mem[0],zero
	movapd	%xmm3, %xmm5
	subsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %rdi
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rdi
	cvttsd2si	%xmm3, %rbx
	ucomisd	%xmm4, %xmm3
	cmovaeq	%rdi, %rbx
	movd	%rbx, %xmm5
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movapd	%xmm3, %xmm6
	subsd	%xmm4, %xmm6
	cvttsd2si	%xmm6, %rdi
	xorq	%r9, %rdi
	cvttsd2si	%xmm3, %rbx
	ucomisd	%xmm4, %xmm3
	cmovaeq	%rdi, %rbx
	movd	%rbx, %xmm3
	punpcklqdq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0]
	cmpnleps	%xmm2, %xmm1
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psllq	$32, %xmm1
	pshufd	$237, %xmm1, %xmm2      # xmm2 = xmm1[1,3,2,3]
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pand	%xmm0, %xmm5
	pandn	%xmm2, %xmm0
	por	%xmm5, %xmm0
	pand	.LCPI22_5(%rip), %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, %edi
	movw	%di, (%r14)
	movl	$2, %ebx
.LBB22_10:                              # %vector.body.preheader.split
	testq	%rsi, %rsi
	je	.LBB22_13
# BB#11:                                # %vector.body.preheader.split.split
	incq	%rcx
	movabsq	$8589934590, %rsi       # imm = 0x1FFFFFFFE
	andq	%rcx, %rsi
	subq	%rbx, %rsi
	leaq	24(%rsp,%rbx,4), %rdi
	leaq	2(%r14,%rbx), %rbx
	xorps	%xmm8, %xmm8
	movaps	.LCPI22_2(%rip), %xmm9  # xmm9 = <1,1,u,u>
	movapd	.LCPI22_3(%rip), %xmm2  # xmm2 = [2.550000e+02,2.550000e+02]
	movsd	.LCPI22_4(%rip), %xmm3  # xmm3 = mem[0],zero
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	movdqa	.LCPI22_5(%rip), %xmm4  # xmm4 = [255,255]
	.align	16, 0x90
.LBB22_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdi), %xmm0         # xmm0 = mem[0],zero
	cvtps2pd	%xmm0, %xmm1
	pxor	%xmm5, %xmm5
	cmpltps	%xmm0, %xmm5
	movaps	%xmm0, %xmm6
	cmpltps	%xmm9, %xmm6
	andps	%xmm5, %xmm6
	pshufd	$212, %xmm6, %xmm5      # xmm5 = xmm6[0,1,1,3]
	psllq	$63, %xmm5
	psrad	$31, %xmm5
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	mulpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm6
	subsd	%xmm3, %xmm6
	cvttsd2si	%xmm6, %rdx
	xorq	%r9, %rdx
	cvttsd2si	%xmm1, %rcx
	ucomisd	%xmm3, %xmm1
	cmovaeq	%rdx, %rcx
	movd	%rcx, %xmm6
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movapd	%xmm1, %xmm7
	subsd	%xmm3, %xmm7
	cvttsd2si	%xmm7, %rcx
	xorq	%r9, %rcx
	cvttsd2si	%xmm1, %rdx
	ucomisd	%xmm3, %xmm1
	cmovaeq	%rcx, %rdx
	movd	%rdx, %xmm1
	punpcklqdq	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0]
	cmpnleps	%xmm8, %xmm0
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	psllq	$32, %xmm0
	pshufd	$237, %xmm0, %xmm1      # xmm1 = xmm0[1,3,2,3]
	psrad	$31, %xmm0
	pshufd	$237, %xmm0, %xmm0      # xmm0 = xmm0[1,3,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pand	%xmm5, %xmm6
	pandn	%xmm1, %xmm5
	por	%xmm6, %xmm5
	pand	%xmm4, %xmm5
	packuswb	%xmm5, %xmm5
	packuswb	%xmm5, %xmm5
	packuswb	%xmm5, %xmm5
	movd	%xmm5, %ecx
	movw	%cx, -2(%rbx)
	movq	(%rdi), %xmm6           # xmm6 = mem[0],zero
	cvtps2pd	%xmm6, %xmm7
	pxor	%xmm0, %xmm0
	cmpltps	%xmm6, %xmm0
	movaps	%xmm6, %xmm1
	cmpltps	%xmm9, %xmm1
	andps	%xmm0, %xmm1
	pshufd	$212, %xmm1, %xmm0      # xmm0 = xmm1[0,1,1,3]
	psllq	$63, %xmm0
	psrad	$31, %xmm0
	pshufd	$245, %xmm0, %xmm5      # xmm5 = xmm0[1,1,3,3]
	mulpd	%xmm2, %xmm7
	movapd	%xmm7, %xmm0
	subsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %rcx
	xorq	%r9, %rcx
	cvttsd2si	%xmm7, %rdx
	ucomisd	%xmm3, %xmm7
	cmovaeq	%rcx, %rdx
	movd	%rdx, %xmm0
	shufpd	$1, %xmm7, %xmm7        # xmm7 = xmm7[1,0]
	movapd	%xmm7, %xmm1
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %rcx
	xorq	%r9, %rcx
	cvttsd2si	%xmm7, %rdx
	ucomisd	%xmm3, %xmm7
	cmovaeq	%rcx, %rdx
	movd	%rdx, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	cmpnleps	%xmm8, %xmm6
	pshufd	$212, %xmm6, %xmm1      # xmm1 = xmm6[0,1,1,3]
	psllq	$32, %xmm1
	pshufd	$237, %xmm1, %xmm6      # xmm6 = xmm1[1,3,2,3]
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	punpckldq	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	pand	%xmm5, %xmm0
	pandn	%xmm6, %xmm5
	por	%xmm0, %xmm5
	pand	%xmm4, %xmm5
	packuswb	%xmm5, %xmm5
	packuswb	%xmm5, %xmm5
	packuswb	%xmm5, %xmm5
	movd	%xmm5, %ecx
	movw	%cx, (%rbx)
	addq	$16, %rdi
	addq	$4, %rbx
	addq	$-4, %rsi
	jne	.LBB22_12
.LBB22_13:
	movq	%r10, %rsi
.LBB22_14:                              # %middle.block
	cmpq	%rsi, %r8
	je	.LBB22_79
# BB#15:                                # %for.body.preheader89
	leaq	16(%rsp,%rsi,4), %rcx
	addq	%rsi, %r14
	subl	%esi, %r15d
	xorps	%xmm0, %xmm0
	movss	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI22_1(%rip), %xmm2  # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB22_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm0
	movb	$-1, %dl
	jb	.LBB22_18
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB22_16 Depth=1
	xorl	%edx, %edx
.LBB22_18:                              # %for.body
                                        #   in Loop: Header=BB22_16 Depth=1
	ucomiss	%xmm3, %xmm1
	ja	.LBB22_19
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB22_16 Depth=1
	movb	%dl, %sil
	jmp	.LBB22_21
	.align	16, 0x90
.LBB22_19:                              #   in Loop: Header=BB22_16 Depth=1
	cvtss2sd	%xmm3, %xmm4
	mulsd	%xmm2, %xmm4
	cvttsd2si	%xmm4, %esi
.LBB22_21:                              # %for.body
                                        #   in Loop: Header=BB22_16 Depth=1
	ucomiss	%xmm0, %xmm3
	ja	.LBB22_23
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB22_16 Depth=1
	movb	%dl, %sil
.LBB22_23:                              # %for.body
                                        #   in Loop: Header=BB22_16 Depth=1
	movb	%sil, (%r14)
	addq	$4, %rcx
	incq	%r14
	decl	%r15d
	jne	.LBB22_16
	jmp	.LBB22_79
.LBB22_56:                              # %if.else
	movq	80(%rbx), %r11
	imull	%r15d, %esi
	movslq	%esi, %rdx
	leal	-1(%r15), %esi
	cmpl	$3, %esi
	jbe	.LBB22_57
# BB#58:                                # %for.cond.151.preheader
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB22_79
# BB#59:                                # %for.body.154.preheader
	leaq	1(%rsi), %r8
	xorl	%eax, %eax
	movq	%r8, %r9
	andq	%r12, %r9
	movl	$0, %edi
	je	.LBB22_68
# BB#60:                                # %vector.memcheck
	leaq	(%rdx,%rsi), %rdi
	leaq	(%rdi,%r11), %rbx
	xorl	%edi, %edi
	cmpq	%r14, %rbx
	jb	.LBB22_62
# BB#61:                                # %vector.memcheck
	leaq	(%r14,%rsi), %r10
	leaq	(%r11,%rdx), %rbx
	cmpq	%r10, %rbx
	jbe	.LBB22_68
.LBB22_62:                              # %vector.body60.preheader
	leaq	1(%rsi), %rdi
	andq	%r12, %rdi
	addq	$-32, %rdi
	movq	%rdi, %rbx
	shrq	$5, %rbx
	xorl	%r10d, %r10d
	btq	$5, %rdi
	jb	.LBB22_64
# BB#63:                                # %vector.body60.prol
	movups	(%r11,%rdx), %xmm0
	movups	16(%r11,%rdx), %xmm1
	movups	%xmm0, (%r14)
	movups	%xmm1, 16(%r14)
	movl	$32, %r10d
.LBB22_64:                              # %vector.body60.preheader.split
	testq	%rbx, %rbx
	je	.LBB22_67
# BB#65:                                # %vector.body60.preheader.split.split
	incq	%rsi
	andq	%r12, %rsi
	subq	%r10, %rsi
	leaq	(%r10,%rdx), %rdi
	leaq	48(%r11,%rdi), %rdi
	leaq	48(%r10,%r14), %rbx
	.align	16, 0x90
.LBB22_66:                              # %vector.body60
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movups	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, -16(%rbx)
	movups	%xmm1, (%rbx)
	addq	$64, %rdi
	addq	$64, %rbx
	addq	$-64, %rsi
	jne	.LBB22_66
.LBB22_67:
	movq	%r9, %rdi
.LBB22_68:                              # %middle.block61
	cmpq	%rdi, %r8
	je	.LBB22_79
# BB#69:                                # %for.body.154.preheader88
	leal	1(%r15), %esi
	movl	%edi, %ebx
	orl	$1, %ebx
	subl	%ebx, %esi
	movl	%r15d, %r8d
	subl	%ebx, %r8d
	testb	$3, %sil
	je	.LBB22_72
# BB#70:                                # %for.body.154.prol.preheader
	leaq	(%r11,%rdx), %rbx
	leal	1(%rdi), %esi
	negl	%esi
	leal	1(%r15,%rsi), %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB22_71:                              # %for.body.154.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbx,%rdi), %cl
	movb	%cl, (%r14,%rdi)
	incq	%rdi
	incl	%esi
	jne	.LBB22_71
.LBB22_72:                              # %for.body.154.preheader88.split
	cmpl	$3, %r8d
	jb	.LBB22_79
# BB#73:                                # %for.body.154.preheader88.split.split
	subl	%edi, %r15d
	leaq	3(%rdi,%r14), %rsi
	addq	%rdi, %rdx
	leaq	3(%r11,%rdx), %rcx
	.align	16, 0x90
.LBB22_74:                              # %for.body.154
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rcx), %dl
	movb	%dl, -3(%rsi)
	movb	-2(%rcx), %dl
	movb	%dl, -2(%rsi)
	movb	-1(%rcx), %dl
	movb	%dl, -1(%rsi)
	movb	(%rcx), %dl
	movb	%dl, (%rsi)
	addq	$4, %rsi
	addq	$4, %rcx
	addl	$-4, %r15d
	jne	.LBB22_74
	jmp	.LBB22_79
.LBB22_5:                               # %if.then
	jmpq	*.LJTI22_0(,%rcx,8)
.LBB22_24:                              # %sw.bb
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movb	$-1, %cl
	jb	.LBB22_26
# BB#25:                                # %sw.bb
	xorl	%ecx, %ecx
.LBB22_26:                              # %sw.bb
	movss	.LCPI22_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	ja	.LBB22_27
# BB#28:                                # %sw.bb
	movb	%cl, %dl
	jmp	.LBB22_29
.LBB22_57:                              # %if.else
	jmpq	*.LJTI22_1(,%rsi,8)
.LBB22_75:                              # %sw.bb.162
	movb	3(%r11,%rdx), %al
	movb	%al, 3(%r14)
.LBB22_76:                              # %sw.bb.165
	movb	2(%r11,%rdx), %al
	movb	%al, 2(%r14)
.LBB22_77:                              # %sw.bb.168
	movb	1(%r11,%rdx), %al
	movb	%al, 1(%r14)
.LBB22_78:                              # %sw.bb.171
	movb	(%r11,%rdx), %al
	movb	%al, (%r14)
	xorl	%eax, %eax
	jmp	.LBB22_79
.LBB22_27:
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	.LCPI22_1(%rip), %xmm2
	cvttsd2si	%xmm2, %edx
.LBB22_29:                              # %sw.bb
	ucomiss	%xmm1, %xmm0
	ja	.LBB22_31
# BB#30:                                # %sw.bb
	movb	%cl, %dl
.LBB22_31:                              # %sw.bb
	movb	%dl, 3(%r14)
.LBB22_32:                              # %sw.bb.69
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movb	$-1, %cl
	jb	.LBB22_34
# BB#33:                                # %sw.bb.69
	xorl	%ecx, %ecx
.LBB22_34:                              # %sw.bb.69
	movss	.LCPI22_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	ja	.LBB22_35
# BB#36:                                # %sw.bb.69
	movb	%cl, %dl
	jmp	.LBB22_37
.LBB22_35:
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	.LCPI22_1(%rip), %xmm2
	cvttsd2si	%xmm2, %edx
.LBB22_37:                              # %sw.bb.69
	ucomiss	%xmm1, %xmm0
	ja	.LBB22_39
# BB#38:                                # %sw.bb.69
	movb	%cl, %dl
.LBB22_39:                              # %sw.bb.69
	movb	%dl, 2(%r14)
.LBB22_40:                              # %sw.bb.95
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movb	$-1, %cl
	jb	.LBB22_42
# BB#41:                                # %sw.bb.95
	xorl	%ecx, %ecx
.LBB22_42:                              # %sw.bb.95
	movss	.LCPI22_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	ja	.LBB22_43
# BB#44:                                # %sw.bb.95
	movb	%cl, %dl
	jmp	.LBB22_45
.LBB22_43:
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	.LCPI22_1(%rip), %xmm2
	cvttsd2si	%xmm2, %edx
.LBB22_45:                              # %sw.bb.95
	ucomiss	%xmm1, %xmm0
	ja	.LBB22_47
# BB#46:                                # %sw.bb.95
	movb	%cl, %dl
.LBB22_47:                              # %sw.bb.95
	movb	%dl, 1(%r14)
.LBB22_48:                              # %sw.bb.121
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movb	$-1, %cl
	jb	.LBB22_50
# BB#49:                                # %sw.bb.121
	xorl	%ecx, %ecx
.LBB22_50:                              # %sw.bb.121
	movss	.LCPI22_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	ja	.LBB22_51
# BB#52:                                # %sw.bb.121
	movb	%cl, %dl
	jmp	.LBB22_53
.LBB22_51:
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	.LCPI22_1(%rip), %xmm2
	cvttsd2si	%xmm2, %edx
.LBB22_53:                              # %sw.bb.121
	ucomiss	%xmm1, %xmm0
	ja	.LBB22_55
# BB#54:                                # %sw.bb.121
	movb	%cl, %dl
.LBB22_55:                              # %sw.bb.121
	movb	%dl, (%r14)
.LBB22_79:                              # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	gs_cspace_indexed_lookup_bytes, .Lfunc_end22-gs_cspace_indexed_lookup_bytes
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_48
	.quad	.LBB22_40
	.quad	.LBB22_32
	.quad	.LBB22_24
.LJTI22_1:
	.quad	.LBB22_78
	.quad	.LBB22_77
	.quad	.LBB22_76
	.quad	.LBB22_75

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI23_1:
	.quad	4674734214187319296     # double 32760
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI23_2:
	.quad	4535125924542218256     # double 1.526252e-05
	.quad	4535125924542218256     # double 1.526252e-05
.LCPI23_3:
	.quad	4674734214187319296     # double 3.276000e+04
	.quad	4674734214187319296     # double 3.276000e+04
	.text
	.globl	gs_cspace_indexed_lookup_frac
	.align	16, 0x90
	.type	gs_cspace_indexed_lookup_frac,@function
gs_cspace_indexed_lookup_frac:          # @gs_cspace_indexed_lookup_frac
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 40
	subq	$280, %rsp              # imm = 0x118
.Ltmp107:
	.cfi_def_cfa_offset 320
.Ltmp108:
	.cfi_offset %rbx, -40
.Ltmp109:
	.cfi_offset %r12, -32
.Ltmp110:
	.cfi_offset %r14, -24
.Ltmp111:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movq	%rdi, %rbx
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, %r15d
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.LBB23_3
# BB#1:                                 # %cond.false
	movl	72(%rbx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	ucomiss	%xmm0, %xmm1
	jae	.LBB23_3
# BB#2:                                 # %cond.false.11
	cvttss2si	%xmm1, %esi
.LBB23_3:                               # %cond.end.13
	movabsq	$8589934584, %r12       # imm = 0x1FFFFFFF8
	cmpl	$0, 96(%rbx)
	je	.LBB23_18
# BB#4:                                 # %if.then
	movq	80(%rbx), %rax
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*24(%rax)
	leal	-1(%r15), %ebx
	cmpl	$3, %ebx
	jbe	.LBB23_5
# BB#6:                                 # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB23_37
# BB#7:                                 # %for.body.preheader
	leaq	1(%rbx), %rcx
	addq	$4, %r12
	xorl	%esi, %esi
	andq	%rcx, %r12
	je	.LBB23_11
# BB#8:                                 # %vector.body.preheader
	leaq	24(%rsp), %rdx
	leaq	4(%r14), %rsi
	incq	%rbx
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rbx, %rdi
	movapd	.LCPI23_2(%rip), %xmm0  # xmm0 = [1.526252e-05,1.526252e-05]
	movapd	.LCPI23_3(%rip), %xmm1  # xmm1 = [3.276000e+04,3.276000e+04]
	.align	16, 0x90
.LBB23_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rdx), %xmm2
	cvtps2pd	(%rdx), %xmm3
	addpd	%xmm0, %xmm2
	addpd	%xmm0, %xmm3
	mulpd	%xmm1, %xmm2
	mulpd	%xmm1, %xmm3
	cvttsd2si	%xmm2, %rbx
	movd	%rbx, %xmm4
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	cvttsd2si	%xmm2, %rbx
	movd	%rbx, %xmm2
	punpcklqdq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0]
	cvttsd2si	%xmm3, %rbx
	movd	%rbx, %xmm2
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	cvttsd2si	%xmm3, %rbx
	movd	%rbx, %xmm3
	punpcklqdq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	movd	%xmm3, -4(%rsi)
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm2, (%rsi)
	addq	$16, %rdx
	addq	$8, %rsi
	addq	$-4, %rdi
	jne	.LBB23_9
# BB#10:
	movq	%r12, %rsi
.LBB23_11:                              # %middle.block
	cmpq	%rsi, %rcx
	je	.LBB23_37
# BB#12:                                # %for.body.preheader108
	leaq	16(%rsp,%rsi,4), %rcx
	leaq	(%r14,%rsi,2), %rdx
	subl	%esi, %r15d
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI23_1(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB23_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %esi
	movw	%si, (%rdx)
	addq	$4, %rcx
	addq	$2, %rdx
	decl	%r15d
	jne	.LBB23_13
	jmp	.LBB23_37
.LBB23_18:                              # %if.else
	movq	80(%rbx), %rdx
	imull	%r15d, %esi
	movslq	%esi, %rsi
	leaq	(%rdx,%rsi), %r10
	leal	-1(%r15), %edi
	cmpl	$3, %edi
	jbe	.LBB23_19
# BB#20:                                # %for.cond.53.preheader
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB23_37
# BB#21:                                # %for.body.56.preheader
	leaq	1(%rdi), %r8
	xorl	%eax, %eax
	movq	%r8, %r9
	andq	%r12, %r9
	movl	$0, %ecx
	je	.LBB23_27
# BB#22:                                # %vector.memcheck
	leaq	(%rsi,%rdi), %rcx
	leaq	(%rcx,%rdx), %rbx
	xorl	%ecx, %ecx
	cmpq	%rbx, %r14
	ja	.LBB23_24
# BB#23:                                # %vector.memcheck
	leaq	(%r14,%rdi,2), %rbx
	cmpq	%rbx, %r10
	jbe	.LBB23_27
.LBB23_24:                              # %vector.body77.preheader
	leaq	4(%rsi,%rdx), %rbx
	leaq	8(%r14), %rcx
	incq	%rdi
	andq	%r12, %rdi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB23_25:                              # %vector.body77
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rbx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqa	%xmm1, %xmm3
	pslld	$7, %xmm3
	movdqa	%xmm2, %xmm4
	pslld	$7, %xmm4
	movdqa	%xmm1, %xmm5
	psrld	$1, %xmm5
	movdqa	%xmm2, %xmm6
	psrld	$1, %xmm6
	por	%xmm3, %xmm5
	por	%xmm4, %xmm6
	psrld	$5, %xmm1
	psrld	$5, %xmm2
	psubw	%xmm1, %xmm5
	pshuflw	$232, %xmm5, %xmm1      # xmm1 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -8(%rcx)
	psubw	%xmm2, %xmm6
	pshuflw	$232, %xmm6, %xmm1      # xmm1 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%rcx)
	addq	$8, %rbx
	addq	$16, %rcx
	addq	$-8, %rdi
	jne	.LBB23_25
# BB#26:
	movq	%r9, %rcx
.LBB23_27:                              # %middle.block78
	cmpq	%rcx, %r8
	je	.LBB23_37
# BB#28:                                # %for.body.56.preheader107
	leal	1(%r15), %ebx
	movl	%ecx, %edi
	orl	$1, %edi
	subl	%edi, %ebx
	testb	$1, %bl
	je	.LBB23_30
# BB#29:                                # %for.body.56.prol
	movzbl	(%r10,%rcx), %r9d
	movl	%r9d, %r8d
	shll	$7, %r8d
	movl	%r9d, %ebx
	shrl	%ebx
	orl	%r8d, %ebx
	shrl	$5, %r9d
	subl	%r9d, %ebx
	movw	%bx, (%r14,%rcx,2)
	orq	$1, %rcx
.LBB23_30:                              # %for.body.56.preheader107.split
	cmpl	%edi, %r15d
	je	.LBB23_37
# BB#31:                                # %for.body.56.preheader107.split.split
	subl	%ecx, %r15d
	leaq	(%rsi,%rcx), %rsi
	leaq	1(%rdx,%rsi), %rdx
	leaq	2(%r14,%rcx,2), %rcx
	.align	16, 0x90
.LBB23_32:                              # %for.body.56
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdx), %edi
	movl	%edi, %ebx
	shll	$7, %ebx
	movl	%edi, %esi
	shrl	%esi
	orl	%ebx, %esi
	shrl	$5, %edi
	subl	%edi, %esi
	movw	%si, -2(%rcx)
	movzbl	(%rdx), %edi
	movl	%edi, %ebx
	shll	$7, %ebx
	movl	%edi, %esi
	shrl	%esi
	orl	%ebx, %esi
	shrl	$5, %edi
	subl	%edi, %esi
	movw	%si, (%rcx)
	addq	$2, %rdx
	addq	$4, %rcx
	addl	$-2, %r15d
	jne	.LBB23_32
	jmp	.LBB23_37
.LBB23_5:                               # %if.then
	jmpq	*.LJTI23_0(,%rbx,8)
.LBB23_14:                              # %sw.bb
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI23_0(%rip), %xmm0
	mulsd	.LCPI23_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, 6(%r14)
.LBB23_15:                              # %sw.bb.28
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI23_0(%rip), %xmm0
	mulsd	.LCPI23_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, 4(%r14)
.LBB23_16:                              # %sw.bb.35
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI23_0(%rip), %xmm0
	mulsd	.LCPI23_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, 2(%r14)
.LBB23_17:                              # %sw.bb.42
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI23_0(%rip), %xmm0
	mulsd	.LCPI23_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, (%r14)
	jmp	.LBB23_37
.LBB23_19:                              # %if.else
	jmpq	*.LJTI23_1(,%rdi,8)
.LBB23_33:                              # %sw.bb.75
	movzbl	3(%r10), %eax
	movl	%eax, %ecx
	shll	$7, %ecx
	movl	%eax, %edx
	shrl	%edx
	orl	%ecx, %edx
	shrl	$5, %eax
	subl	%eax, %edx
	movw	%dx, 6(%r14)
.LBB23_34:                              # %sw.bb.90
	movzbl	2(%r10), %eax
	movl	%eax, %ecx
	shll	$7, %ecx
	movl	%eax, %edx
	shrl	%edx
	orl	%ecx, %edx
	shrl	$5, %eax
	subl	%eax, %edx
	movw	%dx, 4(%r14)
.LBB23_35:                              # %sw.bb.105
	movzbl	1(%r10), %eax
	movl	%eax, %ecx
	shll	$7, %ecx
	movl	%eax, %edx
	shrl	%edx
	orl	%ecx, %edx
	shrl	$5, %eax
	subl	%eax, %edx
	movw	%dx, 2(%r14)
.LBB23_36:                              # %sw.bb.120
	movzbl	(%r10), %eax
	movl	%eax, %ecx
	shll	$7, %ecx
	movl	%eax, %edx
	shrl	%edx
	orl	%ecx, %edx
	shrl	$5, %eax
	subl	%eax, %edx
	movw	%dx, (%r14)
	xorl	%eax, %eax
.LBB23_37:                              # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end23:
	.size	gs_cspace_indexed_lookup_frac, .Lfunc_end23-gs_cspace_indexed_lookup_frac
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_17
	.quad	.LBB23_16
	.quad	.LBB23_15
	.quad	.LBB23_14
.LJTI23_1:
	.quad	.LBB23_36
	.quad	.LBB23_35
	.quad	.LBB23_34
	.quad	.LBB23_33

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4562254508917369340     # double 0.001
	.text
	.globl	gs_indexed_limit_and_lookup
	.align	16, 0x90
	.type	gs_indexed_limit_and_lookup,@function
gs_indexed_limit_and_lookup:            # @gs_indexed_limit_and_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI24_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB24_3
# BB#1:                                 # %cond.false
	movl	72(%rsi), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	ucomiss	%xmm1, %xmm0
	jae	.LBB24_3
# BB#2:                                 # %cond.false.11
	cvttss2si	%xmm0, %eax
.LBB24_3:                               # %cond.end.13
	movq	%rsi, %rdi
	movl	%eax, %esi
	jmp	gs_cspace_indexed_lookup # TAILCALL
.Lfunc_end24:
	.size	gs_indexed_limit_and_lookup, .Lfunc_end24-gs_indexed_limit_and_lookup
	.cfi_endproc

	.globl	gs_includecolorspace
	.align	16, 0x90
	.type	gs_includecolorspace,@function
gs_includecolorspace:                   # @gs_includecolorspace
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	movq	%rsi, %rcx
	movq	1744(%rdi), %rsi
	movq	1872(%rdi), %rdi
	movq	1584(%rdi), %rax
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end25:
	.size	gs_includecolorspace, .Lfunc_end25-gs_includecolorspace
	.cfi_endproc

	.align	16, 0x90
	.type	cs_Indexed_enum_ptrs,@function
cs_Indexed_enum_ptrs:                   # @cs_Indexed_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB26_3
# BB#1:                                 # %sw.bb
	movq	80(%rsi), %rax
	cmpl	$0, 96(%rsi)
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	jne	.LBB26_3
# BB#2:                                 # %if.else
	movl	72(%rsi), %eax
	incl	%eax
	imull	76(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
.LBB26_3:                               # %cleanup
	retq
.Lfunc_end26:
	.size	cs_Indexed_enum_ptrs, .Lfunc_end26-cs_Indexed_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cs_Indexed_reloc_ptrs,@function
cs_Indexed_reloc_ptrs:                  # @cs_Indexed_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp113:
	.cfi_def_cfa_offset 32
.Ltmp114:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 96(%rbx)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	(%rcx), %rax
	movq	80(%rbx), %rdi
	movq	%rcx, %rsi
	callq	*(%rax)
	jmp	.LBB27_3
.LBB27_2:                               # %if.else
	movq	80(%rbx), %rax
	movq	%rax, (%rsp)
	movl	72(%rbx), %eax
	incl	%eax
	imull	76(%rbx), %eax
	movl	%eax, 8(%rsp)
	movq	(%rcx), %rax
	leaq	(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*16(%rax)
	movq	(%rsp), %rax
.LBB27_3:                               # %if.end
	movq	%rax, 80(%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end27:
	.size	cs_Indexed_reloc_ptrs, .Lfunc_end27-cs_Indexed_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	map_palette_entry_1,@function
map_palette_entry_1:                    # @map_palette_entry_1
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rax
	movq	80(%rdi), %rcx
	movq	48(%rcx), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end28:
	.size	map_palette_entry_1, .Lfunc_end28-map_palette_entry_1
	.cfi_endproc

	.align	16, 0x90
	.type	map_palette_entry_3,@function
map_palette_entry_3:                    # @map_palette_entry_3
	.cfi_startproc
# BB#0:                                 # %entry
	leal	(%rsi,%rsi,2), %eax
	cltq
	movq	80(%rdi), %rcx
	movq	48(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	movl	%esi, (%rdx)
	movl	4(%rcx,%rax,4), %esi
	movl	%esi, 4(%rdx)
	movl	8(%rcx,%rax,4), %eax
	movl	%eax, 8(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end29:
	.size	map_palette_entry_3, .Lfunc_end29-map_palette_entry_3
	.cfi_endproc

	.align	16, 0x90
	.type	map_palette_entry_4,@function
map_palette_entry_4:                    # @map_palette_entry_4
	.cfi_startproc
# BB#0:                                 # %entry
	shll	$2, %esi
	movslq	%esi, %rax
	movq	80(%rdi), %rcx
	movq	48(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	movl	%esi, (%rdx)
	movl	4(%rcx,%rax,4), %esi
	movl	%esi, 4(%rdx)
	movl	8(%rcx,%rax,4), %esi
	movl	%esi, 8(%rdx)
	movl	12(%rcx,%rax,4), %eax
	movl	%eax, 12(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end30:
	.size	map_palette_entry_4, .Lfunc_end30-map_palette_entry_4
	.cfi_endproc

	.align	16, 0x90
	.type	map_palette_entry_n,@function
map_palette_entry_n:                    # @map_palette_entry_n
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 32
.Ltmp118:
	.cfi_offset %rbx, -32
.Ltmp119:
	.cfi_offset %r14, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	movq	80(%rbx), %rcx
	imull	%eax, %ebp
	movslq	%ebp, %rsi
	shlq	$2, %rsi
	addq	48(%rcx), %rsi
	movslq	%eax, %rdx
	shlq	$2, %rdx
	movq	%r14, %rdi
	callq	memcpy
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	map_palette_entry_n, .Lfunc_end31-map_palette_entry_n
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_setcolorspace"
	.size	.L.str, 17

	.type	st_indexed_map,@object  # @st_indexed_map
	.section	.rodata,"a",@progbits
	.align	8
st_indexed_map:
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	indexed_map_reloc_ptrs
	.size	st_indexed_map, 64

	.type	st_color_space_Indexed,@object # @st_color_space_Indexed
	.align	8
st_color_space_Indexed:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	cs_Indexed_enum_ptrs
	.quad	cs_Indexed_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_color_space_Indexed, 64

	.type	gs_color_space_type_Indexed,@object # @gs_color_space_type_Indexed
	.globl	gs_color_space_type_Indexed
	.align	8
gs_color_space_type_Indexed:
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	st_color_space_Indexed
	.quad	gx_num_components_1
	.quad	gx_init_paint_1
	.quad	gx_restrict_Indexed
	.quad	gx_concrete_space_Indexed
	.quad	gx_concretize_Indexed
	.quad	0
	.quad	gx_default_remap_color
	.quad	gx_install_Indexed
	.quad	gx_set_overprint_Indexed
	.quad	gx_final_Indexed
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_Indexed
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_Indexed
	.size	gs_color_space_type_Indexed, 136

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_cspace_build_Indexed"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_indexed_map"
	.size	.L.str.2, 15

	.type	indexed_map_reloc_ptrs,@object # @indexed_map_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
indexed_map_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	indexed_map_enum_ptrs
	.size	indexed_map_reloc_ptrs, 24

	.type	indexed_map_enum_ptrs,@object # @indexed_map_enum_ptrs
	.align	2
indexed_map_enum_ptrs:
	.short	0                       # 0x0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.short	48                      # 0x30
	.size	indexed_map_enum_ptrs, 8

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_color_space_Indexed"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_adjust_Indexed"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gx_final_Indexed"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"alloc_indexed_palette"
	.size	.L.str.6, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
