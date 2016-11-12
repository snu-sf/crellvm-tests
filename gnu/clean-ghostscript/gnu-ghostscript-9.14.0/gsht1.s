	.text
	.file	"gsht1.bc"
	.align	16, 0x90
	.type	halftone_component_enum_ptrs,@function
halftone_component_enum_ptrs:           # @halftone_component_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB0_1
# BB#9:                                 # %sw.bb.20
	movl	8(%rsi), %ecx
	xorl	%eax, %eax
	cmpl	$8, %ecx
	je	.LBB0_14
# BB#10:                                # %sw.bb.20
	cmpl	$5, %ecx
	je	.LBB0_13
# BB#11:                                # %sw.bb.20
	cmpl	$4, %ecx
	jne	.LBB0_16
# BB#12:                                # %sw.bb.22
	xorl	%eax, %eax
	cmpq	$0, 56(%rsi)
	jne	.LBB0_15
.LBB0_13:                               # %sw.bb.36
	movq	32(%rsi), %rax
	jmp	.LBB0_15
.LBB0_1:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB0_16
# BB#2:                                 # %sw.bb
	movl	8(%rsi), %ecx
	xorl	%eax, %eax
	addl	$-3, %ecx
	cmpl	$5, %ecx
	ja	.LBB0_16
# BB#3:                                 # %sw.bb
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_4:                                # %sw.bb.1
	xorl	%eax, %eax
	cmpq	$0, 48(%rsi)
	jne	.LBB0_15
# BB#5:                                 # %cond.true
	movq	64(%rsi), %rax
	jmp	.LBB0_15
.LBB0_14:                               # %sw.bb.42
	movq	56(%rsi), %rax
.LBB0_15:                               # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB0_16:                               # %cleanup
	retq
.LBB0_6:                                # %sw.bb.4
	movq	40(%rsi), %rax
	movq	%rax, (%r8)
	movl	48(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
	retq
.LBB0_7:                                # %sw.bb.13
	addq	$56, %rsi
	movq	%r8, %rdi
	jmp	enum_const_bytestring   # TAILCALL
.LBB0_8:                                # %sw.bb.16
	movq	40(%rsi), %rax
	jmp	.LBB0_15
.Lfunc_end0:
	.size	halftone_component_enum_ptrs, .Lfunc_end0-halftone_component_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_8

	.text
	.align	16, 0x90
	.type	halftone_component_reloc_ptrs,@function
halftone_component_reloc_ptrs:          # @halftone_component_reloc_ptrs
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
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	8(%rbx), %eax
	addl	$-3, %eax
	cmpl	$5, %eax
	ja	.LBB1_8
# BB#1:                                 # %entry
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_2:                                # %sw.bb
	cmpq	$0, 48(%rbx)
	jne	.LBB1_8
# BB#3:                                 # %if.then
	movq	(%r14), %rax
	movq	64(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 64(%rbx)
	jmp	.LBB1_8
.LBB1_4:                                # %sw.bb.7
	movq	(%r14), %rax
	leaq	40(%rbx), %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	cmpq	$0, 56(%rbx)
	jne	.LBB1_8
	jmp	.LBB1_5
.LBB1_6:                                # %sw.bb.25
	leaq	56(%rbx), %rdi
	movq	%r14, %rsi
	callq	reloc_const_bytestring
.LBB1_5:                                # %if.then.13
	movq	(%r14), %rax
	movq	32(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 32(%rbx)
	jmp	.LBB1_8
.LBB1_7:                                # %sw.bb.38
	movq	(%r14), %rax
	movq	40(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 40(%rbx)
	movq	(%r14), %rax
	movq	56(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 56(%rbx)
.LBB1_8:                                # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	halftone_component_reloc_ptrs, .Lfunc_end1-halftone_component_reloc_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_2
	.quad	.LBB1_4
	.quad	.LBB1_6
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_7

	.text
	.align	16, 0x90
	.type	ht_comp_elt_enum_ptrs,@function
ht_comp_elt_enum_ptrs:                  # @ht_comp_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %edi
	movl	$3435973837, %r9d       # imm = 0xCCCCCCCD
	xorl	%eax, %eax
	cmpl	$80, %edx
	jb	.LBB2_17
# BB#1:                                 # %if.end
	imulq	%r9, %rdi
	shrq	$38, %rdi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %ecx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$4, %rax
	addq	%rax, %rsi
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB2_2
# BB#10:                                # %sw.bb.20.i
	movl	8(%rsi), %ecx
	xorl	%eax, %eax
	cmpl	$8, %ecx
	je	.LBB2_15
# BB#11:                                # %sw.bb.20.i
	cmpl	$5, %ecx
	je	.LBB2_14
# BB#12:                                # %sw.bb.20.i
	cmpl	$4, %ecx
	jne	.LBB2_17
# BB#13:                                # %sw.bb.22.i
	xorl	%eax, %eax
	cmpq	$0, 56(%rsi)
	jne	.LBB2_16
.LBB2_14:                               # %sw.bb.36.i
	movq	32(%rsi), %rax
	jmp	.LBB2_16
.LBB2_2:                                # %if.end
	testl	%ecx, %ecx
	jne	.LBB2_17
# BB#3:                                 # %sw.bb.i
	movl	8(%rsi), %ecx
	xorl	%eax, %eax
	addl	$-3, %ecx
	cmpl	$5, %ecx
	ja	.LBB2_17
# BB#4:                                 # %sw.bb.i
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_5:                                # %sw.bb.1.i
	xorl	%eax, %eax
	cmpq	$0, 48(%rsi)
	jne	.LBB2_16
# BB#6:                                 # %cond.true.i
	movq	64(%rsi), %rax
	jmp	.LBB2_16
.LBB2_15:                               # %sw.bb.42.i
	movq	56(%rsi), %rax
.LBB2_16:                               # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB2_17:                               # %cleanup
	retq
.LBB2_7:                                # %sw.bb.4.i
	movq	40(%rsi), %rax
	movq	%rax, (%r8)
	movl	48(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
	retq
.LBB2_8:                                # %sw.bb.13.i
	addq	$56, %rsi
	movq	%r8, %rdi
	jmp	enum_const_bytestring   # TAILCALL
.LBB2_9:                                # %sw.bb.16.i
	movq	40(%rsi), %rax
	jmp	.LBB2_16
.Lfunc_end2:
	.size	ht_comp_elt_enum_ptrs, .Lfunc_end2-ht_comp_elt_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_5
	.quad	.LBB2_7
	.quad	.LBB2_8
	.quad	.LBB2_17
	.quad	.LBB2_17
	.quad	.LBB2_9

	.text
	.align	16, 0x90
	.type	ht_comp_elt_reloc_ptrs,@function
ht_comp_elt_reloc_ptrs:                 # @ht_comp_elt_reloc_ptrs
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
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$80, %esi
	jb	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	movl	$3435973837, %r15d      # imm = 0xCCCCCCCD
	imulq	%rax, %r15
	shrq	$38, %r15
	negl	%r15d
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$80, %esi
	movl	$st_halftone_component, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	halftone_component_reloc_ptrs
	addq	$80, %rbx
	incl	%r15d
	jne	.LBB3_2
.LBB3_3:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	ht_comp_elt_reloc_ptrs, .Lfunc_end3-ht_comp_elt_reloc_ptrs
	.cfi_endproc

	.globl	gs_setcolorscreen
	.align	16, 0x90
	.type	gs_setcolorscreen,@function
gs_setcolorscreen:                      # @gs_setcolorscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp13:
	.cfi_def_cfa_offset 512
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movups	80(%rsi), %xmm0
	movups	%xmm0, 120(%rsp)
	movups	64(%rsi), %xmm0
	movups	%xmm0, 104(%rsp)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movups	48(%rsi), %xmm3
	movups	%xmm3, 88(%rsp)
	movups	%xmm2, 72(%rsp)
	movups	%xmm1, 56(%rsp)
	movups	%xmm0, 40(%rsp)
	movl	$2, 136(%rsp)
	movups	120(%rsp), %xmm0
	movups	%xmm0, 248(%rsp)
	movups	108(%rsp), %xmm0
	movups	%xmm0, 236(%rsp)
	movups	92(%rsp), %xmm0
	movups	%xmm0, 220(%rsp)
	movups	76(%rsp), %xmm0
	movups	%xmm0, 204(%rsp)
	movups	12(%rsp), %xmm0
	movups	28(%rsp), %xmm1
	movups	44(%rsp), %xmm2
	movups	60(%rsp), %xmm3
	movups	%xmm3, 188(%rsp)
	movups	%xmm2, 172(%rsp)
	movups	%xmm1, 156(%rsp)
	movups	%xmm0, 140(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 152(%rsp)
	leaq	136(%rsp), %rsi
	leaq	264(%rsp), %rdx
	callq	gs_sethalftone_prepare
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_3
# BB#1:                                 # %if.end.i.i
	movq	152(%rsp), %rax
	movq	%rax, 432(%rsp)
	leaq	136(%rsp), %rsi
	leaq	264(%rsp), %rdx
	movq	%rbx, %rdi
	callq	gx_ht_install
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB4_3
# BB#2:                                 # %if.then.5.i.i
	movq	152(%rsp), %rsi
	leaq	264(%rsp), %rdi
	callq	gx_device_halftone_release
.LBB4_3:                                # %gs_sethalftone.exit
	movl	%ebp, %eax
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gs_setcolorscreen, .Lfunc_end4-gs_setcolorscreen
	.cfi_endproc

	.globl	gs_sethalftone
	.align	16, 0x90
	.type	gs_sethalftone,@function
gs_sethalftone:                         # @gs_sethalftone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	subq	$360, %rsp              # imm = 0x168
.Ltmp18:
	.cfi_def_cfa_offset 384
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movups	112(%rsi), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	96(%rsi), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	80(%rsi), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	64(%rsi), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movups	48(%rsi), %xmm3
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 16(%rsp)
	leaq	(%rsp), %rsi
	leaq	136(%rsp), %rdx
	callq	gs_sethalftone_prepare
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_3
# BB#1:                                 # %if.end.i
	movq	16(%rsp), %rax
	movq	%rax, 304(%rsp)
	leaq	(%rsp), %rsi
	leaq	136(%rsp), %rdx
	movq	%rbx, %rdi
	callq	gx_ht_install
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB5_3
# BB#2:                                 # %if.then.5.i
	movq	16(%rsp), %rsi
	leaq	136(%rsp), %rdi
	callq	gx_device_halftone_release
.LBB5_3:                                # %gs_sethalftone_allocated.exit
	movl	%ebp, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_sethalftone, .Lfunc_end5-gs_sethalftone
	.cfi_endproc

	.globl	gs_currentcolorscreen
	.align	16, 0x90
	.type	gs_currentcolorscreen,@function
gs_currentcolorscreen:                  # @gs_currentcolorscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	368(%rdi), %rax
	cmpl	$2, (%rax)
	jne	.LBB6_2
# BB#1:                                 # %sw.bb
	movups	112(%rax), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	96(%rax), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	32(%rax), %xmm0
	movups	48(%rax), %xmm1
	movups	64(%rax), %xmm2
	movups	80(%rax), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	jmp	.LBB6_4
.LBB6_2:                                # %sw.default
	leaq	72(%rbx), %r14
	movq	%r14, %rsi
	callq	gs_currentscreen
	testl	%eax, %eax
	js	.LBB6_5
# BB#3:                                 # %if.end
	movq	16(%r14), %rax
	movq	%rax, 16(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, (%rbx)
	movq	16(%r14), %rax
	movq	%rax, 40(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, 24(%rbx)
	movq	16(%r14), %rax
	movq	%rax, 64(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, 48(%rbx)
.LBB6_4:                                # %cleanup
	xorl	%eax, %eax
.LBB6_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	gs_currentcolorscreen, .Lfunc_end6-gs_currentcolorscreen
	.cfi_endproc

	.globl	gs_sethalftone_allocated
	.align	16, 0x90
	.type	gs_sethalftone_allocated,@function
gs_sethalftone_allocated:               # @gs_sethalftone_allocated
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
	subq	$224, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 256
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	(%rsp), %rdx
	callq	gs_sethalftone_prepare
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_3
# BB#1:                                 # %if.end
	movq	16(%rbx), %rax
	movq	%rax, 168(%rsp)
	leaq	(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_ht_install
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB7_3
# BB#2:                                 # %if.then.5
	movq	16(%rbx), %rsi
	leaq	(%rsp), %rdi
	callq	gx_device_halftone_release
.LBB7_3:                                # %cleanup
	movl	%ebp, %eax
	addq	$224, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_sethalftone_allocated, .Lfunc_end7-gs_sethalftone_allocated
	.cfi_endproc

	.globl	gs_sethalftone_prepare
	.align	16, 0x90
	.type	gs_sethalftone_prepare,@function
gs_sethalftone_prepare:                 # @gs_sethalftone_prepare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp39:
	.cfi_def_cfa_offset 496
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	movl	(%rbx), %eax
	movl	$-15, %r12d
	addl	$-2, %eax
	cmpl	$6, %eax
	ja	.LBB8_66
# BB#1:                                 # %entry
	movq	16(%rbx), %r13
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_27:                               # %sw.bb.70
	movl	40(%rbx), %ebp
	movq	32(%rbx), %r15
	movl	$st_ht_order_component_element, %edx
	movl	$.L.str.6, %ecx
	movq	%r13, %rdi
	movq	%rsi, %rbx
	movl	%ebp, %esi
	callq	*104(%r13)
	movq	%rbx, %rcx
	movq	%r13, %rdx
	movq	%rax, %r13
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	$-25, %r12d
	testq	%r13, %r13
	je	.LBB8_66
# BB#28:                                # %if.end.84
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	je	.LBB8_29
# BB#31:                                # %for.body.88.lr.ph
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%r13, %r14
	addq	$168, %r14
	addq	$48, %r15
	xorl	%ebx, %ebx
	movl	$1, %ebp
.LBB8_32:                               # %for.body.88
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%r15), %eax
	cmpl	$64, %eax
	jne	.LBB8_35
# BB#33:                                # %if.then.93
                                        #   in Loop: Header=BB8_32 Depth=1
	movl	$-15, %r12d
	testl	%ebx, %ebx
	movl	$1, %ebx
	movq	%r14, %rcx
	movq	%r13, %r14
	je	.LBB8_39
	jmp	.LBB8_34
.LBB8_35:                               # %if.else
                                        #   in Loop: Header=BB8_32 Depth=1
	testl	%ebx, %ebx
	jne	.LBB8_38
# BB#36:                                # %if.else
                                        #   in Loop: Header=BB8_32 Depth=1
	cmpl	%ebp, 36(%rsp)          # 4-byte Folded Reload
	je	.LBB8_37
.LBB8_38:                               # %if.else.100
                                        #   in Loop: Header=BB8_32 Depth=1
	leaq	168(%r14), %rcx
.LBB8_39:                               # %if.end.102
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 160(%r14)
	movl	-44(%r15), %eax
	movl	%eax, 164(%r14)
	movl	-40(%r15), %eax
	movl	$-15, %r12d
	addl	$-3, %eax
	cmpl	$5, %eax
	ja	.LBB8_34
# BB#40:                                # %if.end.102
                                        #   in Loop: Header=BB8_32 Depth=1
	jmpq	*.LJTI8_1(,%rax,8)
.LBB8_41:                               # %sw.bb.108
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	-8(%r15), %ecx
	leaq	-32(%r15), %rdx
	leaq	80(%rsp), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	%r13, %r8
	callq	gx_ht_process_screen_memory
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_47
# BB#42:                                # %if.end.i.144
                                        #   in Loop: Header=BB8_32 Depth=1
	movl	$160, %edx
	movq	%r14, %rdi
	leaq	208(%rsp), %rsi
	callq	memcpy
	movq	(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB8_44
# BB#43:                                # %land.lhs.true.i.150
                                        #   in Loop: Header=BB8_32 Depth=1
	xorl	%r12d, %r12d
	cmpq	$0, 8(%r15)
	je	.LBB8_47
.LBB8_44:                               # %do.body.i.154
                                        #   in Loop: Header=BB8_32 Depth=1
	movl	$st_transfer_map, %esi
	movl	$.L.str.7, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB8_47
# BB#45:                                # %do.body.5.i.164
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	$1, (%rbp)
	movq	%r13, 8(%rbp)
	movq	$rc_free_struct_only, 16(%rbp)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rbp)
	movups	8(%r15), %xmm0
	movups	%xmm0, 32(%rbp)
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%rbp)
	movq	%rbp, 104(%r14)
	xorl	%r12d, %r12d
	movl	$gs_mapped_transfer, %eax
	cmpq	%rax, 16(%rsp)          # 8-byte Folded Reload
	je	.LBB8_47
# BB#46:                                # %if.end.18.i.165
                                        #   in Loop: Header=BB8_32 Depth=1
	xorps	%xmm0, %xmm0
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	callq	load_transfer_map
.LBB8_47:                               # %process_spot.exit146
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB8_61
.LBB8_48:                               # %sw.bb.113
                                        #   in Loop: Header=BB8_32 Depth=1
	movl	-32(%r15), %esi
	movw	%si, (%r14)
	movw	$0, 2(%r14)
	movw	$1, 4(%r14)
	movl	-28(%r15), %edx
	movw	%dx, 6(%r14)
	movw	$0, 8(%r14)
	movw	$1, 10(%r14)
	movl	$256, %ecx              # imm = 0x100
	movq	%r14, %rdi
	movq	64(%rsp), %r8           # 8-byte Reload
	callq	gx_ht_alloc_threshold_order
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_34
# BB#49:                                # %if.end.i.187
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	-8(%r15), %rsi
	movq	64(%r14), %rax
	movq	%r14, %rdi
	callq	*8(%rax)
	movq	8(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB8_51
# BB#50:                                # %land.lhs.true.i.237
                                        #   in Loop: Header=BB8_32 Depth=1
	xorl	%r12d, %r12d
	cmpq	$0, -24(%r15)
	je	.LBB8_62
.LBB8_51:                               # %do.body.i.241
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	%ebx, 16(%rsp)          # 4-byte Spill
	movl	$st_transfer_map, %esi
	movl	$.L.str.7, %edx
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB8_52
# BB#53:                                # %do.body.5.i.251
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	$1, (%rbp)
	movq	%rbx, 8(%rbp)
	movq	$rc_free_struct_only, 16(%rbp)
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, 24(%rbp)
	movups	-24(%r15), %xmm0
	movups	%xmm0, 32(%rbp)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%rbp)
	movq	%rbp, 104(%r14)
	xorl	%r12d, %r12d
	movl	$gs_mapped_transfer, %eax
	cmpq	%rax, %r13
	jne	.LBB8_59
	jmp	.LBB8_54
.LBB8_60:                               # %sw.bb.118
                                        #   in Loop: Header=BB8_32 Depth=1
	leaq	-32(%r15), %rdx
	movq	%r14, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	process_threshold2
	movl	%eax, %r12d
.LBB8_61:                               # %cleanup.132
                                        #   in Loop: Header=BB8_32 Depth=1
	testl	%r12d, %r12d
	jns	.LBB8_62
	jmp	.LBB8_34
.LBB8_55:                               # %sw.bb.123
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	-16(%r15), %rax
	leaq	-32(%r15), %rdx
	movq	%r14, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	*(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_34
# BB#56:                                # %if.end.i.197
                                        #   in Loop: Header=BB8_32 Depth=1
	xorl	%r12d, %r12d
	cmpq	$0, (%r15)
	je	.LBB8_62
# BB#57:                                # %do.body.i.i.201
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	%ebx, 16(%rsp)          # 4-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	$st_transfer_map, %esi
	movl	$.L.str.7, %edx
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB8_52
# BB#58:                                # %do.body.5.i.i.210
                                        #   in Loop: Header=BB8_32 Depth=1
	movq	$1, (%rbp)
	movq	%rbx, 8(%rbp)
	movq	$rc_free_struct_only, 16(%rbp)
	movq	$0, 24(%rbp)
	movups	(%r15), %xmm0
	movups	%xmm0, 32(%rbp)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%rbp)
	movq	%rbp, 104(%r14)
.LBB8_59:                               # %if.end.18.i.252
                                        #   in Loop: Header=BB8_32 Depth=1
	xorps	%xmm0, %xmm0
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	callq	load_transfer_map
.LBB8_54:                               #   in Loop: Header=BB8_32 Depth=1
	movq	40(%rsp), %r13          # 8-byte Reload
	movl	16(%rsp), %ebx          # 4-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB8_62:                               # %for.inc.135
                                        #   in Loop: Header=BB8_32 Depth=1
	addq	$80, %r15
	cmpl	36(%rsp), %ebp          # 4-byte Folded Reload
	leal	1(%rbp), %eax
	movl	%eax, %ebp
	movq	48(%rsp), %r14          # 8-byte Reload
	jb	.LBB8_32
# BB#63:                                # %if.end.142
	movl	$160, %edx
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	36(%rsp), %ebp          # 4-byte Reload
	cmpl	$1, %ebp
	jne	.LBB8_30
# BB#64:                                # %if.then.148
	movl	$.L.str.6, %edx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	*24(%rdi)
	movq	$0, 200(%rbx)
	movl	$0, 208(%rbx)
	jmp	.LBB8_66
.LBB8_2:                                # %sw.bb
	movq	%rsi, %rbp
	movl	$4, %esi
	movl	$st_ht_order_component_element, %edx
	movl	$.L.str.6, %ecx
	movq	%r13, %rdi
	callq	*104(%r13)
	movq	%rbp, %rcx
	movl	$-25, %r12d
	testq	%rax, %rax
	movq	%r13, %rbp
	je	.LBB8_66
# BB#3:                                 # %for.cond.preheader
	movq	%rax, %r14
	leaq	104(%rbx), %r12
	movq	%rbp, %rdi
	movq	%rcx, %r15
	callq	gs_currentaccuratescreens
	leaq	80(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	%eax, %ecx
	movq	%rbp, %r8
	callq	gx_ht_process_screen_memory
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rbp, %r13
	js	.LBB8_5
# BB#4:                                 # %cleanup
	leaq	208(%rsp), %rsi
	movl	$160, %edx
	movq	%r14, %rbp
	movq	%rax, %r14
	movq	%rbp, %rdi
	callq	memcpy
	movq	1872(%r15), %r12
	movl	$.L.str.2, %edi
	callq	strlen
	movl	(%rbx), %ecx
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	gs_color_name_component_number
	movl	%eax, 160(%rbp)
	movl	$0, 164(%rbp)
	movl	$160, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %r14
	callq	memcpy
	leaq	32(%rbx), %rbp
	movq	%r13, %rdi
	callq	gs_currentaccuratescreens
	leaq	80(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	movq	%r13, %r8
	callq	gx_ht_process_screen_memory
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_5
# BB#67:                                # %cleanup.1
	leaq	168(%r14), %rdi
	movl	$160, %edx
	leaq	208(%rsp), %rsi
	callq	memcpy
	movq	1872(%r15), %rbp
	movl	$.L.str.3, %edi
	callq	strlen
	movl	(%rbx), %ecx
	movl	$.L.str.3, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	gs_color_name_component_number
	movl	%eax, 328(%r14)
	movl	$0, 332(%r14)
	leaq	56(%rbx), %rbp
	movq	%r13, %rdi
	callq	gs_currentaccuratescreens
	leaq	80(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	movq	%r13, %r8
	callq	gx_ht_process_screen_memory
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_5
# BB#68:                                # %cleanup.2
	leaq	336(%r14), %rdi
	movl	$160, %edx
	leaq	208(%rsp), %rsi
	callq	memcpy
	movq	1872(%r15), %rbp
	movl	$.L.str.4, %edi
	callq	strlen
	movl	(%rbx), %ecx
	movl	$.L.str.4, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	gs_color_name_component_number
	movl	%eax, 496(%r14)
	movl	$0, 500(%r14)
	leaq	80(%rbx), %rbp
	movq	%r13, %rdi
	callq	gs_currentaccuratescreens
	leaq	80(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	movq	%r13, %r8
	callq	gx_ht_process_screen_memory
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_5
# BB#65:                                # %sw.epilog.164
	movq	%r14, %rdi
	addq	$504, %rdi              # imm = 0x1F8
	movl	$160, %edx
	leaq	208(%rsp), %rsi
	callq	memcpy
	movq	1872(%r15), %rbp
	movl	$.L.str.5, %edi
	callq	strlen
	movl	(%rbx), %ecx
	movl	$.L.str.5, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	gs_color_name_component_number
	movl	%eax, 664(%r14)
	movl	$0, 668(%r14)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%r14, 200(%rax)
	movl	$4, 208(%rax)
	jmp	.LBB8_66
.LBB8_6:                                # %sw.bb.34
	leaq	32(%rbx), %rdx
	movl	56(%rbx), %ecx
	leaq	80(%rsp), %rdi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%r13, %r8
	callq	gx_ht_process_screen_memory
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movq	72(%rsp), %r15          # 8-byte Reload
	js	.LBB8_66
# BB#7:                                 # %if.end.i
	leaq	208(%rsp), %rsi
	movl	$160, %edx
	movq	%r15, %rdi
	callq	memcpy
	movq	64(%rbx), %r14
	addq	$72, %rbx
	testq	%r14, %r14
	jne	.LBB8_9
# BB#8:                                 # %land.lhs.true.i
	cmpq	$0, (%rbx)
	je	.LBB8_13
.LBB8_9:                                # %do.body.i
	movl	$st_transfer_map, %esi
	movl	$.L.str.7, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB8_66
# BB#10:                                # %do.body.5.i
	movq	$1, (%rbp)
	movq	%r13, 8(%rbp)
	movq	$rc_free_struct_only, 16(%rbp)
	movq	%r14, 24(%rbp)
	movups	(%rbx), %xmm0
	movups	%xmm0, 32(%rbp)
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%rbp)
	movq	%rbp, 104(%r15)
	movl	$gs_mapped_transfer, %eax
	cmpq	%rax, %r14
	je	.LBB8_13
# BB#11:                                # %if.end.18.i
	xorps	%xmm0, %xmm0
	movq	56(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB8_12
.LBB8_14:                               # %sw.bb.43
	movq	%rsi, %rbp
	movl	32(%rbx), %esi
	movq	72(%rsp), %rdi          # 8-byte Reload
	movw	%si, (%rdi)
	movw	$0, 2(%rdi)
	movw	$1, 4(%rdi)
	movl	36(%rbx), %edx
	movw	%dx, 6(%rdi)
	movw	$0, 8(%rdi)
	movw	$1, 10(%rdi)
	movl	$256, %ecx              # imm = 0x100
	movq	%rdi, %r14
	movq	%r13, %r8
	callq	gx_ht_alloc_threshold_order
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_66
# BB#15:                                # %if.end.i.128
	movq	%r13, %r12
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	56(%rbx), %rsi
	movq	%r14, %r15
	movq	64(%r15), %rax
	movq	%r15, %rdi
	callq	*8(%rax)
	movq	72(%rbx), %r14
	addq	$40, %rbx
	testq	%r14, %r14
	jne	.LBB8_17
# BB#16:                                # %land.lhs.true.i.216
	cmpq	$0, (%rbx)
	je	.LBB8_13
.LBB8_17:                               # %do.body.i.220
	movl	$st_transfer_map, %esi
	movl	$.L.str.7, %edx
	movq	%r12, %r13
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	movq	56(%rsp), %rax          # 8-byte Reload
	je	.LBB8_66
# BB#18:                                # %do.body.5.i.230
	movq	%rax, %r12
	movq	$1, (%rbp)
	movq	%r13, 8(%rbp)
	movq	$rc_free_struct_only, 16(%rbp)
	movq	%r14, 24(%rbp)
	movups	(%rbx), %xmm0
	movups	%xmm0, 32(%rbp)
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%rbp)
	movq	%rbp, 104(%r15)
	movl	$gs_mapped_transfer, %eax
	cmpq	%rax, %r14
	je	.LBB8_13
# BB#19:                                # %if.end.18.i.231
	xorps	%xmm0, %xmm0
	movq	%r12, %rdi
.LBB8_12:                               # %if.end.41
	movq	%rbp, %rsi
	callq	load_transfer_map
.LBB8_13:                               # %if.end.41
	movq	$0, 200(%r15)
	xorl	%r12d, %r12d
	jmp	.LBB8_66
.LBB8_20:                               # %sw.bb.52
	addq	$32, %rbx
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	process_threshold2
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_66
# BB#21:                                # %if.end.59
	movq	$0, 200(%rbp)
	jmp	.LBB8_66
.LBB8_22:                               # %sw.bb.61
	leaq	32(%rbx), %rdx
	movq	48(%rbx), %rax
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%rsi, %rbp
	movq	%r13, %rcx
	callq	*(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_66
# BB#23:                                # %if.end.i.133
	movq	%r13, %rax
	movq	%rbp, %r14
	cmpq	$0, 64(%rbx)
	je	.LBB8_26
# BB#24:                                # %do.body.i.i
	movl	$st_transfer_map, %esi
	movl	$.L.str.7, %edx
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB8_66
# BB#25:                                # %do.body.5.i.i
	addq	$64, %rbx
	movq	$1, (%rbp)
	movq	%r15, 8(%rbp)
	movq	$rc_free_struct_only, 16(%rbp)
	movq	$0, 24(%rbp)
	movups	(%rbx), %xmm0
	movups	%xmm0, 32(%rbp)
	movq	%r14, %rbx
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%rbp)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rbp, 104(%rax)
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	load_transfer_map
.LBB8_26:                               # %if.end.68
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	$0, 200(%rax)
	xorl	%r12d, %r12d
	jmp	.LBB8_66
.LBB8_5:                                # %for.end.thread
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movq	%r14, %r13
.LBB8_34:                               # %if.then.167
	movl	$.L.str.6, %edx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	*24(%rdi)
	jmp	.LBB8_66
.LBB8_29:                               # %if.end.142.thread
	movl	$160, %edx
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcpy
	xorl	%r12d, %r12d
.LBB8_30:                               # %if.else.152
	movq	%r13, 200(%rbx)
	movl	%ebp, 208(%rbx)
.LBB8_66:                               # %cleanup.171
	movl	%r12d, %eax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_37:
	movl	$-15, %r12d
	jmp	.LBB8_34
.LBB8_52:
	movl	$-25, %r12d
	movq	40(%rsp), %r13          # 8-byte Reload
	jmp	.LBB8_34
.Lfunc_end8:
	.size	gs_sethalftone_prepare, .Lfunc_end8-gs_sethalftone_prepare
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_2
	.quad	.LBB8_6
	.quad	.LBB8_14
	.quad	.LBB8_20
	.quad	.LBB8_27
	.quad	.LBB8_27
	.quad	.LBB8_22
.LJTI8_1:
	.quad	.LBB8_41
	.quad	.LBB8_48
	.quad	.LBB8_60
	.quad	.LBB8_34
	.quad	.LBB8_34
	.quad	.LBB8_55

	.text
	.align	16, 0x90
	.type	process_threshold2,@function
process_threshold2:                     # @process_threshold2
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
	subq	$104, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 160
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
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	32(%rdx), %r14d
	movq	40(%rdx), %rbx
	movl	(%rdx), %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movl	4(%rdx), %r15d
	movl	%r15d, %eax
	imull	%ecx, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	24(%rdx), %r12d
	movl	28(%rdx), %ebp
	movl	%ebp, %r13d
	imull	%r12d, %r13d
	addl	%eax, %r13d
	testl	%ebp, %ebp
	movl	%r15d, %r10d
	je	.LBB9_2
# BB#1:                                 # %cond.false
	movl	%r15d, %edi
	movl	%ebp, %esi
	callq	igcd
	movl	%eax, %r10d
.LBB9_2:                                # %cond.end
	movl	%ebp, 72(%rsp)          # 4-byte Spill
	movl	%r15d, %r9d
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movl	%r13d, %eax
	divl	%r10d
	movl	%eax, 96(%rsp)          # 4-byte Spill
	testl	%r13d, %r13d
	movl	$0, %ecx
	movl	$0, %eax
	je	.LBB9_8
# BB#3:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%r13d, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %r14d
	jne	.LBB9_6
# BB#5:                                 # %cond.true.5
                                        #   in Loop: Header=BB9_4 Depth=1
	movzbl	(%rdi), %ebp
	jmp	.LBB9_7
	.align	16, 0x90
.LBB9_6:                                # %cond.false.6
                                        #   in Loop: Header=BB9_4 Depth=1
	leal	-1(%rdx), %ebp
	movzbl	(%rbx,%rbp), %r8d
	shll	$8, %r8d
	movl	%edx, %ebp
	movzbl	(%rbx,%rbp), %ebp
	orl	%r8d, %ebp
.LBB9_7:                                # %cond.end.17
                                        #   in Loop: Header=BB9_4 Depth=1
	orl	%ebp, %eax
	cmpl	%ebp, %ecx
	cmovbel	%ebp, %ecx
	incq	%rdi
	addl	$2, %edx
	decl	%esi
	jne	.LBB9_4
.LBB9_8:                                # %for.end
	testl	%eax, %eax
	movl	$1, %edx
	cmovel	%edx, %eax
	cmovel	%edx, %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	ja	.LBB9_9
# BB#10:                                # %for.end
	movl	%r13d, 100(%rsp)        # 4-byte Spill
	movl	%r10d, %ebp
	movl	%eax, %edx
	andl	$1, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movl	76(%rsp), %r10d         # 4-byte Reload
	movl	%r9d, %r13d
	movl	%r12d, %r11d
	jne	.LBB9_13
	jmp	.LBB9_11
.LBB9_9:
	movl	%r13d, 100(%rsp)        # 4-byte Spill
	movl	%r10d, %ebp
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movl	76(%rsp), %r10d         # 4-byte Reload
	movl	%r9d, %r13d
	movl	%r12d, %r11d
	.align	16, 0x90
.LBB9_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	shrl	%eax
	shrl	%ecx
	incl	%r15d
	movl	%eax, %edx
	andl	$1, %edx
	cmpl	$32769, %esi            # imm = 0x8001
	ja	.LBB9_11
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB9_11 Depth=1
	testl	%edx, %edx
	je	.LBB9_11
.LBB9_13:                               # %while.end
	movl	%ebp, 64(%rsp)          # 4-byte Spill
	movl	96(%rsp), %eax          # 4-byte Reload
	movw	%ax, (%rdi)
	movw	%bp, 2(%rdi)
	movw	$1, 4(%rdi)
	movw	%bp, 6(%rdi)
	movw	%ax, 8(%rdi)
	movw	$1, 10(%rdi)
	movl	%r13d, %r12d
	negl	%r12d
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	movl	72(%rsp), %eax          # 4-byte Reload
	.align	16, 0x90
.LBB9_14:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	cmpl	%r13d, %esi
	movl	%r11d, %ebp
	cmovll	%r10d, %ebp
	movl	%r12d, %edx
	cmovll	%eax, %edx
	addl	%esi, %edx
	addl	%ebp, %r9d
	cmpl	64(%rsp), %edx          # 4-byte Folded Reload
	jg	.LBB9_14
# BB#15:                                # %do.end
	movl	%r11d, 92(%rsp)         # 4-byte Spill
	movl	%r10d, 76(%rsp)         # 4-byte Spill
	incl	%ecx
	testl	%edx, %edx
	cmovel	%edx, %r9d
	movq	%r8, 8(%rsp)
	movq	$ht_order_procs_table, (%rsp)
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	64(%rsp), %edx          # 4-byte Reload
	movq	%r8, %r12
	movl	100(%rsp), %r8d         # 4-byte Reload
	movq	%rdi, %rbp
	callq	gx_ht_alloc_ht_order
	testl	%eax, %eax
	js	.LBB9_52
# BB#16:                                # %if.end.57
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	88(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	64(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	92(%rsp), %edx          # 4-byte Reload
	jle	.LBB9_31
# BB#17:                                # %for.cond.65.preheader.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	4(%rax), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	movl	$1, %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB9_18:                               # %for.cond.65.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_19 Depth 2
                                        #       Child Loop BB9_24 Depth 3
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movl	%ecx, %r11d
	movl	$0, %edi
	jle	.LBB9_30
	.align	16, 0x90
.LBB9_19:                               # %for.body.68
                                        #   Parent Loop BB9_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_24 Depth 3
	movl	%r11d, %eax
	subl	%r13d, %eax
	jge	.LBB9_21
# BB#20:                                # %if.then.71
                                        #   in Loop: Header=BB9_19 Depth=2
	movl	%r11d, %ecx
	movl	76(%rsp), %eax          # 4-byte Reload
	imull	%eax, %ecx
	addl	72(%rsp), %r11d         # 4-byte Folded Reload
	movl	%eax, %r9d
	jmp	.LBB9_22
	.align	16, 0x90
.LBB9_21:                               # %if.else.74
                                        #   in Loop: Header=BB9_19 Depth=2
	movl	%eax, %ecx
	imull	%edx, %ecx
	addl	68(%rsp), %ecx          # 4-byte Folded Reload
	movl	%eax, %r11d
	movl	%edx, %r9d
.LBB9_22:                               # %if.end.79
                                        #   in Loop: Header=BB9_19 Depth=2
	testl	%r9d, %r9d
	jle	.LBB9_29
# BB#23:                                # %for.body.83.lr.ph
                                        #   in Loop: Header=BB9_19 Depth=2
	movl	%r13d, 100(%rsp)        # 4-byte Spill
	movslq	%r10d, %rdx
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdx,8), %rdx
	movslq	%ecx, %rbp
	leaq	(%rbp,%rbx), %rbp
	leal	1(%rcx,%rcx), %r8d
	movl	%r9d, %r13d
	.align	16, 0x90
.LBB9_24:                               # %for.body.83
                                        #   Parent Loop BB9_18 Depth=1
                                        #     Parent Loop BB9_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$1, %r14d
	jne	.LBB9_26
# BB#25:                                # %cond.true.87
                                        #   in Loop: Header=BB9_24 Depth=3
	movzbl	(%rbp), %r12d
	jmp	.LBB9_27
	.align	16, 0x90
.LBB9_26:                               # %cond.false.91
                                        #   in Loop: Header=BB9_24 Depth=3
	leal	-1(%r8), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rbx,%rcx), %ecx
	shll	$8, %ecx
	movslq	%r8d, %rax
	movzbl	(%rbx,%rax), %r12d
	orl	%ecx, %r12d
.LBB9_27:                               # %cond.end.103
                                        #   in Loop: Header=BB9_24 Depth=3
	movb	%r15b, %cl
	shrl	%cl, %r12d
	cmpl	$1, %r12d
	cmovbel	%esi, %r12d
	movl	%r12d, (%rdx)
	addq	$8, %rdx
	incq	%rbp
	addl	$2, %r8d
	decl	%r13d
	jne	.LBB9_24
# BB#28:                                # %for.cond.80.for.end.122_crit_edge
                                        #   in Loop: Header=BB9_19 Depth=2
	leal	(%r10,%r9), %r10d
	movl	100(%rsp), %r13d        # 4-byte Reload
	movl	92(%rsp), %edx          # 4-byte Reload
.LBB9_29:                               # %for.end.122
                                        #   in Loop: Header=BB9_19 Depth=2
	addl	%r9d, %edi
	cmpl	96(%rsp), %edi          # 4-byte Folded Reload
	jl	.LBB9_19
.LBB9_30:                               # %for.end.125
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	60(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movl	64(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_18
.LBB9_31:                               # %for.end.128
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	56(%rax), %r12d
	movl	60(%rax), %r14d
	movq	80(%rax), %rbx
	movq	%rax, %r15
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	gx_sort_ht_order
	xorl	%ecx, %ecx
	testl	%r14d, %r14d
	je	.LBB9_37
# BB#32:                                # %for.body.i.preheader
	xorl	%eax, %eax
	testb	$1, %r14b
	movl	$0, %ecx
	je	.LBB9_36
# BB#33:                                # %for.body.i.prol
	xorl	%ecx, %ecx
	movl	$1, %eax
	cmpl	$0, 4(%rbp)
	je	.LBB9_36
# BB#34:
	movl	$1, %eax
	.align	16, 0x90
.LBB9_35:                               # %while.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	incl	%ecx
	movl	$0, (%rbx,%rdx,4)
	cmpl	4(%rbp), %ecx
	jb	.LBB9_35
.LBB9_36:                               # %for.body.i.preheader.split
	cmpl	$1, %r14d
	jne	.LBB9_54
	jmp	.LBB9_37
	.align	16, 0x90
.LBB9_53:                               # %while.body.i
                                        #   in Loop: Header=BB9_54 Depth=1
	movl	%ecx, %edx
	incl	%ecx
	movl	%eax, (%rbx,%rdx,4)
.LBB9_54:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_57 Depth 2
	cmpl	4(%rbp,%rax,8), %ecx
	jb	.LBB9_53
# BB#55:                                # %for.inc.i
                                        #   in Loop: Header=BB9_54 Depth=1
	cmpl	12(%rbp,%rax,8), %ecx
	jae	.LBB9_58
# BB#56:                                # %while.body.preheader.i.1
                                        #   in Loop: Header=BB9_54 Depth=1
	leaq	1(%rax), %rdx
	.align	16, 0x90
.LBB9_57:                               # %while.body.i.1
                                        #   Parent Loop BB9_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %esi
	incl	%ecx
	movl	%edx, (%rbx,%rsi,4)
	cmpl	12(%rbp,%rax,8), %ecx
	jb	.LBB9_57
.LBB9_58:                               # %for.inc.i.1
                                        #   in Loop: Header=BB9_54 Depth=1
	addq	$2, %rax
	cmpl	%r14d, %eax
	jne	.LBB9_54
.LBB9_37:                               # %while.cond.11.preheader.i
	cmpl	%r12d, %ecx
	jae	.LBB9_49
# BB#38:                                # %while.body.13.lr.ph.i
	movl	%ecx, %edi
	leal	-1(%r12), %esi
	subl	%ecx, %esi
	leaq	1(%rsi), %rax
	movabsq	$8589934584, %r9        # imm = 0x1FFFFFFF8
	movq	%rax, %r10
	andq	%r9, %r10
	andq	%r9, %rax
	leaq	1(%rsi,%rdi), %r8
	je	.LBB9_46
# BB#39:                                # %vector.ph
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	1(%rsi), %rcx
	andq	%r9, %rcx
	addq	$-8, %rcx
	movl	%ecx, %eax
	shrl	$3, %eax
	incl	%eax
	testb	$3, %al
	movq	%rdi, %rax
	je	.LBB9_42
# BB#40:                                # %vector.body.prol.preheader
	leal	1(%rsi), %edx
	andl	$24, %edx
	addl	$-8, %edx
	shrl	$3, %edx
	incl	%edx
	andl	$3, %edx
	negq	%rdx
	movq	%rdi, %rax
	.align	16, 0x90
.LBB9_41:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbx,%rax,4)
	movdqu	%xmm0, 16(%rbx,%rax,4)
	addq	$8, %rax
	incq	%rdx
	jne	.LBB9_41
.LBB9_42:                               # %vector.ph.split
	addq	%rdi, %r10
	cmpq	$24, %rcx
	jb	.LBB9_45
# BB#43:                                # %vector.ph.split.split
	incq	%rsi
	andq	%r9, %rsi
	addq	%rsi, %rdi
	subq	%rax, %rdi
	leaq	112(%rbx,%rax,4), %rax
	.align	16, 0x90
.LBB9_44:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rax)
	movdqu	%xmm0, -96(%rax)
	movdqu	%xmm0, -80(%rax)
	movdqu	%xmm0, -64(%rax)
	movdqu	%xmm0, -48(%rax)
	movdqu	%xmm0, -32(%rax)
	movdqu	%xmm0, -16(%rax)
	movdqu	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-32, %rdi
	jne	.LBB9_44
.LBB9_45:
	movq	%r10, %rdi
.LBB9_46:                               # %middle.block
	cmpq	%rdi, %r8
	je	.LBB9_49
# BB#47:                                # %while.body.13.i.preheader
	leaq	(%rbx,%rdi,4), %rax
	subl	%edi, %r12d
	.align	16, 0x90
.LBB9_48:                               # %while.body.13.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, (%rax)
	addq	$4, %rax
	decl	%r12d
	jne	.LBB9_48
.LBB9_49:                               # %gx_ht_complete_threshold_order.exit
	movq	%r15, %rdi
	callq	gx_ht_construct_bits
	xorl	%eax, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpq	$0, 8(%rcx)
	je	.LBB9_52
# BB#50:                                # %do.body.i
	movl	$st_transfer_map, %esi
	movl	$.L.str.7, %edx
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB9_52
# BB#51:                                # %do.body.5.i
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	$8, %rax
	movq	$1, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	$rc_free_struct_only, 16(%rbx)
	movq	$0, 24(%rbx)
	movdqu	(%rax), %xmm0
	movdqu	%xmm0, 32(%rbx)
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%rbx)
	movq	%rbx, 104(%r15)
	pxor	%xmm0, %xmm0
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	load_transfer_map
	xorl	%eax, %eax
.LBB9_52:                               # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	process_threshold2, .Lfunc_end9-process_threshold2
	.cfi_endproc

	.globl	gx_ht_complete_threshold_order
	.align	16, 0x90
	.type	gx_ht_complete_threshold_order,@function
gx_ht_complete_threshold_order:         # @gx_ht_complete_threshold_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 48
.Ltmp64:
	.cfi_offset %rbx, -48
.Ltmp65:
	.cfi_offset %r12, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	56(%r14), %r12d
	movl	60(%r14), %r15d
	movq	80(%r14), %rbp
	movq	88(%r14), %rbx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	gx_sort_ht_order
	xorl	%ecx, %ecx
	testl	%r15d, %r15d
	je	.LBB10_6
# BB#1:                                 # %for.body.preheader
	xorl	%eax, %eax
	testb	$1, %r15b
	movl	$0, %ecx
	je	.LBB10_5
# BB#2:                                 # %for.body.prol
	xorl	%ecx, %ecx
	movl	$1, %eax
	cmpl	$0, 4(%rbx)
	je	.LBB10_5
# BB#3:
	movl	$1, %eax
	.align	16, 0x90
.LBB10_4:                               # %while.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	incl	%ecx
	movl	$0, (%rbp,%rdx,4)
	cmpl	4(%rbx), %ecx
	jb	.LBB10_4
.LBB10_5:                               # %for.body.preheader.split
	cmpl	$1, %r15d
	jne	.LBB10_20
	jmp	.LBB10_6
	.align	16, 0x90
.LBB10_19:                              # %while.body
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	%ecx, %edx
	incl	%ecx
	movl	%eax, (%rbp,%rdx,4)
.LBB10_20:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_23 Depth 2
	cmpl	4(%rbx,%rax,8), %ecx
	jb	.LBB10_19
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB10_20 Depth=1
	cmpl	12(%rbx,%rax,8), %ecx
	jae	.LBB10_24
# BB#22:                                # %while.body.preheader.1
                                        #   in Loop: Header=BB10_20 Depth=1
	leaq	1(%rax), %rdx
	.align	16, 0x90
.LBB10_23:                              # %while.body.1
                                        #   Parent Loop BB10_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %esi
	incl	%ecx
	movl	%edx, (%rbp,%rsi,4)
	cmpl	12(%rbx,%rax,8), %ecx
	jb	.LBB10_23
.LBB10_24:                              # %for.inc.1
                                        #   in Loop: Header=BB10_20 Depth=1
	addq	$2, %rax
	cmpl	%r15d, %eax
	jne	.LBB10_20
.LBB10_6:                               # %while.cond.11.preheader
	cmpl	%r12d, %ecx
	jae	.LBB10_18
# BB#7:                                 # %while.body.13.lr.ph
	movl	%ecx, %edi
	leal	-1(%r12), %esi
	subl	%ecx, %esi
	leaq	1(%rsi), %rax
	movabsq	$8589934584, %r9        # imm = 0x1FFFFFFF8
	movq	%rax, %rdx
	andq	%r9, %rdx
	andq	%r9, %rax
	leaq	1(%rsi,%rdi), %r8
	je	.LBB10_15
# BB#8:                                 # %vector.ph
	movd	%r15d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	1(%rsi), %rbx
	andq	%r9, %rbx
	addq	$-8, %rbx
	movl	%ebx, %eax
	shrl	$3, %eax
	incl	%eax
	testb	$3, %al
	movq	%rdi, %rax
	je	.LBB10_11
# BB#9:                                 # %vector.body.prol.preheader
	leal	1(%rsi), %ecx
	andl	$24, %ecx
	addl	$-8, %ecx
	shrl	$3, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	movq	%rdi, %rax
	.align	16, 0x90
.LBB10_10:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbp,%rax,4)
	movdqu	%xmm0, 16(%rbp,%rax,4)
	addq	$8, %rax
	incq	%rcx
	jne	.LBB10_10
.LBB10_11:                              # %vector.ph.split
	addq	%rdi, %rdx
	cmpq	$24, %rbx
	jb	.LBB10_14
# BB#12:                                # %vector.ph.split.split
	incq	%rsi
	andq	%r9, %rsi
	addq	%rsi, %rdi
	subq	%rax, %rdi
	leaq	112(%rbp,%rax,4), %rax
	.align	16, 0x90
.LBB10_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rax)
	movdqu	%xmm0, -96(%rax)
	movdqu	%xmm0, -80(%rax)
	movdqu	%xmm0, -64(%rax)
	movdqu	%xmm0, -48(%rax)
	movdqu	%xmm0, -32(%rax)
	movdqu	%xmm0, -16(%rax)
	movdqu	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-32, %rdi
	jne	.LBB10_13
.LBB10_14:
	movq	%rdx, %rdi
.LBB10_15:                              # %middle.block
	cmpq	%rdi, %r8
	je	.LBB10_18
# BB#16:                                # %while.body.13.preheader
	leaq	(%rbp,%rdi,4), %rax
	subl	%edi, %r12d
	.align	16, 0x90
.LBB10_17:                              # %while.body.13
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, (%rax)
	addq	$4, %rax
	decl	%r12d
	jne	.LBB10_17
.LBB10_18:                              # %while.end.17
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_ht_construct_bits    # TAILCALL
.Lfunc_end10:
	.size	gx_ht_complete_threshold_order, .Lfunc_end10-gx_ht_complete_threshold_order
	.cfi_endproc

	.globl	gx_ht_construct_threshold_order
	.align	16, 0x90
	.type	gx_ht_construct_threshold_order,@function
gx_ht_construct_threshold_order:        # @gx_ht_construct_threshold_order
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rax
	movq	8(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end11:
	.size	gx_ht_construct_threshold_order, .Lfunc_end11-gx_ht_construct_threshold_order
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_halftone_component"
	.size	.L.str, 22

	.type	st_halftone_component,@object # @st_halftone_component
	.section	.rodata,"a",@progbits
	.globl	st_halftone_component
	.align	8
st_halftone_component:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	halftone_component_enum_ptrs
	.quad	halftone_component_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_halftone_component, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_halftone_component[]"
	.size	.L.str.1, 24

	.type	st_ht_component_element,@object # @st_ht_component_element
	.section	.rodata,"a",@progbits
	.globl	st_ht_component_element
	.align	8
st_ht_component_element:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	ht_comp_elt_enum_ptrs
	.quad	ht_comp_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_ht_component_element, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gray"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Red"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Green"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Blue"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_sethalftone"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"process_transfer"
	.size	.L.str.7, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
