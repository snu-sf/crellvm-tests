	.text
	.file	"gxtype1.bc"
	.align	16, 0x90
	.type	gs_type1_state_enum_ptrs,@function
gs_type1_state_enum_ptrs:               # @gs_type1_state_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %eax
	cmpl	$3, %ecx
	jbe	.LBB0_1
# BB#2:                                 # %sw.default
	addl	$-4, %ecx
	movl	10976(%rsi), %edx
	addl	%edx, %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB0_9
# BB#3:                                 # %if.then
	movl	%ecx, %eax
	shrl	$31, %eax
	leal	(%rax,%rcx), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	sarl	%eax
	cltq
	leaq	(%rax,%rax,8), %rax
	leaq	10208(%rsi,%rax,8), %rsi
	subl	%edx, %ecx
	movl	$48, %edx
	movl	$st_glyph_data, %r9d
	jmpq	*st_glyph_data+32(%rip) # TAILCALL
.LBB0_1:                                # %entry
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_4:                                # %sw.bb
	movq	9856(%rsi), %rax
	jmp	.LBB0_8
.LBB0_5:                                # %sw.bb.1
	movq	9864(%rsi), %rax
	jmp	.LBB0_8
.LBB0_6:                                # %sw.bb.3
	movq	9872(%rsi), %rax
	jmp	.LBB0_8
.LBB0_7:                                # %sw.bb.5
	movq	9888(%rsi), %rax
.LBB0_8:                                # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB0_9:                                # %cleanup
	retq
.Lfunc_end0:
	.size	gs_type1_state_enum_ptrs, .Lfunc_end0-gs_type1_state_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7

	.text
	.align	16, 0x90
	.type	gs_type1_state_reloc_ptrs,@function
gs_type1_state_reloc_ptrs:              # @gs_type1_state_reloc_ptrs
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, %r14
	movq	%rdi, %r15
	movq	(%r14), %rax
	movq	9856(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 9856(%r15)
	movq	(%r14), %rax
	movq	9864(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 9864(%r15)
	movq	(%r14), %rax
	movq	9872(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 9872(%r15)
	movq	(%r14), %rax
	movq	9888(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 9888(%r15)
	cmpl	$0, 10976(%r15)
	jle	.LBB1_3
# BB#1:                                 # %for.body.lr.ph
	movq	st_glyph_data+40(%rip), %r12
	leaq	10208(%r15), %rbx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbx), %ebp
	subl	(%rbx), %ebp
	movl	$48, %esi
	movl	$st_glyph_data, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	*%r12
	movslq	%ebp, %rax
	addq	(%rbx), %rax
	movq	%rax, -24(%rbx)
	incq	%r13
	movslq	10976(%r15), %rax
	addq	$72, %rbx
	cmpq	%rax, %r13
	jl	.LBB1_2
.LBB1_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_type1_state_reloc_ptrs, .Lfunc_end1-gs_type1_state_reloc_ptrs
	.cfi_endproc

	.globl	gs_type1_interp_init
	.align	16, 0x90
	.type	gs_type1_interp_init,@function
gs_type1_interp_init:                   # @gs_type1_interp_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rdi, %rbx
	movl	32(%rsp), %eax
	movq	40(%rsp), %rdi
	testq	%rcx, %rcx
	movl	$gs_type1_interp_init.no_scale, %r15d
	cmovneq	%rcx, %r15
	testq	%r14, %r14
	cmoveq	%r15, %r14
	movq	%rdi, 9856(%rbx)
	movq	%rsi, 9864(%rbx)
	movq	%rdx, 9872(%rbx)
	movq	%rdi, 9888(%rbx)
	movl	%r9d, 9880(%rbx)
	movl	%eax, 9884(%rbx)
	movl	$0, 10180(%rbx)
	movl	$1, 10976(%rbx)
	movq	$0, 10184(%rbx)
	leaq	10208(%rbx), %rdi
	callq	gs_glyph_data_from_null
	movl	$0, 11072(%rbx)
	movl	$-1, %eax
	movd	%eax, %xmm0
	movups	%xmm0, 10980(%rbx)
	movl	$0, 10996(%rbx)
	movl	$-1, 11016(%rbx)
	movq	(%r14), %rax
	movq	%rax, 9972(%rbx)
	movl	$0, 11064(%rbx)
	movl	$0, 11060(%rbx)
	movl	(%r15), %ecx
	movl	%ecx, 9956(%rbx)
	movl	$128, %eax
	movl	$128, %edx
	shlq	%cl, %rdx
	movl	%edx, 9952(%rbx)
	addl	%edx, %edx
	movl	%edx, 9948(%rbx)
	movl	4(%r15), %ecx
	movl	%ecx, 9968(%rbx)
	shlq	%cl, %rax
	movl	%eax, 9964(%rbx)
	addl	%eax, %eax
	movl	%eax, 9960(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gs_type1_interp_init, .Lfunc_end2-gs_type1_interp_init
	.cfi_endproc

	.globl	gs_type1_set_callback_data
	.align	16, 0x90
	.type	gs_type1_set_callback_data,@function
gs_type1_set_callback_data:             # @gs_type1_set_callback_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 9888(%rdi)
	retq
.Lfunc_end3:
	.size	gs_type1_set_callback_data, .Lfunc_end3-gs_type1_set_callback_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_type1_set_lsb
	.align	16, 0x90
	.type	gs_type1_set_lsb,@function
gs_type1_set_lsb:                       # @gs_type1_set_lsb
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 11000(%rdi)
	mulsd	8(%rsi), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 11004(%rdi)
	movl	$1, 10984(%rdi)
	retq
.Lfunc_end4:
	.size	gs_type1_set_lsb, .Lfunc_end4-gs_type1_set_lsb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_type1_set_width
	.align	16, 0x90
	.type	gs_type1_set_width,@function
gs_type1_set_width:                     # @gs_type1_set_width
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 11008(%rdi)
	mulsd	8(%rsi), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 11012(%rdi)
	movl	$1, 10988(%rdi)
	retq
.Lfunc_end5:
	.size	gs_type1_set_width, .Lfunc_end5-gs_type1_set_width
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4562254508917369340     # double 0.001
	.text
	.globl	gs_type1_finish_init
	.align	16, 0x90
	.type	gs_type1_finish_init,@function
gs_type1_finish_init:                   # @gs_type1_finish_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	9864(%rbx), %r14
	leaq	132(%r14), %rdi
	leaq	9896(%rbx), %rsi
	movl	$11, %edx
	callq	gx_matrix_to_fixed_coeff
	movq	9872(%rbx), %rax
	movl	112(%rax), %ecx
	movl	%ecx, 9980(%rbx)
	movl	116(%rax), %eax
	movl	%eax, 9984(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 11040(%rbx)
	movl	$8, 11068(%rbx)
	movl	$0, 11080(%rbx)
	movl	$0, 11076(%rbx)
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	gs_char_flatness
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 9944(%rbx)
	movl	$1, 10980(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	gs_type1_finish_init, .Lfunc_end6-gs_type1_finish_init
	.cfi_endproc

	.globl	gs_type1_sbw
	.align	16, 0x90
	.type	gs_type1_sbw,@function
gs_type1_sbw:                           # @gs_type1_sbw
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 10984(%rdi)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	%esi, 11000(%rdi)
	movl	%edx, 11004(%rdi)
	movl	$1, 10984(%rdi)
.LBB7_2:                                # %if.end
	cmpl	$0, 10988(%rdi)
	jne	.LBB7_4
# BB#3:                                 # %if.then.4
	movl	%ecx, 11008(%rdi)
	movl	%r8d, 11012(%rdi)
	movl	$1, 10988(%rdi)
.LBB7_4:                                # %do.end
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	gs_type1_sbw, .Lfunc_end7-gs_type1_sbw
	.cfi_endproc

	.globl	gs_type1_blend
	.align	16, 0x90
	.type	gs_type1_blend,@function
gs_type1_blend:                         # @gs_type1_blend
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
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%edx, %r9d
	movl	-4(%rsi), %r8d
	sarl	$8, %r8d
	movl	%r8d, %eax
	cltd
	idivl	%r9d
	movl	%eax, %r10d
	movl	$-10, %ecx
	cmpl	%r9d, %r8d
	jl	.LBB8_13
# BB#1:                                 # %lor.lhs.false
	movl	%r8d, %eax
	cltd
	idivl	%r9d
	testl	%edx, %edx
	jne	.LBB8_13
# BB#2:                                 # %if.end
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	testl	%r9d, %r9d
	jle	.LBB8_12
# BB#3:                                 # %for.cond.7.preheader.lr.ph
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	9856(%rax), %rbx
	movq	%rbx, -8(%rsp)          # 8-byte Spill
	leaq	-4(%rsi), %rcx
	leal	-1(%r10), %eax
	movslq	%r8d, %rdi
	leaq	(,%rdi,4), %rdx
	subq	%rdx, %rcx
	movslq	%r9d, %rbp
	leaq	-4(%rcx,%rbp,4), %rdx
	movslq	%eax, %r12
	movl	%r10d, %r15d
	andl	$1, %r15d
	negq	%rdi
	leaq	-1(%rbp,%rdi), %rax
	leaq	(%rsi,%rax,4), %rsi
	leaq	(,%r12,4), %r13
	leaq	908(%rbx), %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_4:                                # %for.cond.7.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	cmpl	$2, %r10d
	jl	.LBB8_11
# BB#5:                                 # %for.body.9.lr.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	(%rcx), %eax
	testl	%r15d, %r15d
	jne	.LBB8_6
# BB#7:                                 # %for.body.9.prol
                                        #   in Loop: Header=BB8_4 Depth=1
	cvtsi2ssl	4(%rdx), %xmm0
	movq	-8(%rsp), %rdi          # 8-byte Reload
	mulss	908(%rdi), %xmm0
	cvttss2si	%xmm0, %edi
	addl	%edi, %eax
	movl	%eax, (%rcx)
	movl	$2, %r14d
	jmp	.LBB8_8
	.align	16, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_4 Depth=1
	movl	$1, %r14d
.LBB8_8:                                # %for.body.9.lr.ph.split
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$2, %r10d
	je	.LBB8_11
# BB#9:                                 # %for.body.9.lr.ph.split.split
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	%r10d, %ebx
	subl	%r14d, %ebx
	leaq	(%rsi,%r14,4), %r11
	movq	-16(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%r14,4), %rdi
	.align	16, 0x90
.LBB8_10:                               # %for.body.9
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-4(%r11), %xmm0
	mulss	-4(%rdi), %xmm0
	cvttss2si	%xmm0, %r14d
	addl	%eax, %r14d
	movl	%r14d, (%rcx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%r11), %xmm0
	mulss	(%rdi), %xmm0
	cvttss2si	%xmm0, %eax
	addl	%r14d, %eax
	movl	%eax, (%rcx)
	addq	$8, %r11
	addq	$8, %rdi
	addl	$-2, %ebx
	jne	.LBB8_10
.LBB8_11:                               # %for.inc.14
                                        #   in Loop: Header=BB8_4 Depth=1
	incl	%ebp
	addq	$4, %rcx
	leaq	(%rdx,%r12,4), %rdx
	addq	%r13, %rsi
	cmpl	%r9d, %ebp
	jne	.LBB8_4
.LBB8_12:                               # %for.end.18
	movq	-24(%rsp), %rax         # 8-byte Reload
	movl	%r9d, 11072(%rax)
	movl	$2, %ecx
	subl	%r9d, %ecx
	addl	%r8d, %ecx
.LBB8_13:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gs_type1_blend, .Lfunc_end8-gs_type1_blend
	.cfi_endproc

	.globl	gs_type1_seac
	.align	16, 0x90
	.type	gs_type1_seac,@function
gs_type1_seac:                          # @gs_type1_seac
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 80
.Ltmp38:
	.cfi_offset %rbx, -16
	movq	%rcx, %rbx
	movq	9856(%rdi), %rax
	movl	12(%rsi), %ecx
	sarl	$8, %ecx
	movl	%ecx, 11016(%rdi)
	movl	%edx, 11020(%rdi)
	movq	11000(%rdi), %rcx
	movq	%rcx, 11024(%rdi)
	movl	(%rsi), %ecx
	movl	%ecx, 11032(%rdi)
	movl	4(%rsi), %ecx
	movl	%ecx, 11036(%rdi)
	movl	$0, 10180(%rdi)
	movl	8(%rsi), %esi
	sarl	$8, %esi
	leaq	(%rsp), %rcx
	leaq	16(%rsp), %r8
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	*464(%rax)
	testl	%eax, %eax
	js	.LBB9_2
# BB#1:                                 # %if.end
	movups	16(%rsp), %xmm0
	movups	32(%rsp), %xmm1
	movups	48(%rsp), %xmm2
	movups	%xmm2, 56(%rbx)
	movups	%xmm1, 40(%rbx)
	movups	%xmm0, 24(%rbx)
	xorl	%eax, %eax
.LBB9_2:                                # %cleanup
	addq	$64, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gs_type1_seac, .Lfunc_end9-gs_type1_seac
	.cfi_endproc

	.globl	gs_type1_endchar
	.align	16, 0x90
	.type	gs_type1_endchar,@function
gs_type1_endchar:                       # @gs_type1_endchar
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
	subq	$152, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 208
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
	movq	%rdi, %rbx
	movq	9856(%rbx), %r15
	movl	11016(%rbx), %esi
	testl	%esi, %esi
	js	.LBB10_5
# BB#1:                                 # %if.then
	movq	16(%r15), %rax
	movq	%rax, 144(%rsp)
	movl	$-1, 11016(%rbx)
	movl	11020(%rbx), %eax
	subl	11024(%rbx), %eax
	movl	%eax, 11040(%rbx)
	movq	11032(%rbx), %rax
	movq	%rax, 11044(%rbx)
	movl	$0, 10180(%rbx)
	movl	$1, 10976(%rbx)
	xorl	%r14d, %r14d
	leaq	88(%rsp), %rcx
	leaq	104(%rsp), %r8
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	*464(%r15)
	cmpl	$-21, %eax
	jne	.LBB10_3
# BB#2:                                 # %if.then.7
	movq	9856(%rbx), %rsi
	movslq	372(%rsi), %rax
	addq	$324, %rsi              # imm = 0x144
	cmpq	$47, %rax
	movl	$47, %ebx
	cmovbq	%rax, %rbx
	movl	96(%rsp), %eax
	cmpq	$29, %rax
	movl	$29, %ebp
	cmovbq	%rax, %rbp
	leaq	32(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 32(%rsp,%rbx)
	movq	88(%rsp), %rsi
	movslq	%ebp, %rbx
	leaq	(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%rsp,%rbx)
	movq	16(%r15), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%r15), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	errprintf
	jmp	.LBB10_9
.LBB10_5:                               # %if.end.55
	movq	9864(%rbx), %rdi
	cmpl	$0, 152(%r15)
	jne	.LBB10_7
# BB#6:                                 # %if.then.59
	movl	$-1, 304(%rdi)
	movl	$-1, 300(%rdi)
.LBB10_7:                               # %if.end.62
	xorl	%r14d, %r14d
	cmpl	$0, 9880(%rbx)
	jne	.LBB10_9
# BB#8:                                 # %if.then.63
	movss	9944(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	gs_imager_setflat
	jmp	.LBB10_9
.LBB10_3:                               # %if.end
	testl	%eax, %eax
	movl	%eax, %r14d
	js	.LBB10_9
# BB#4:                                 # %if.end.48
	movl	$1, 10976(%rbx)
	movups	104(%rsp), %xmm0
	movups	120(%rsp), %xmm1
	movups	136(%rsp), %xmm2
	movups	%xmm2, 10240(%rbx)
	movups	%xmm1, 10224(%rbx)
	movups	%xmm0, 10208(%rbx)
	movl	$1, %r14d
.LBB10_9:                               # %cleanup.67
	movl	%r14d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_type1_endchar, .Lfunc_end10-gs_type1_endchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	type1_cis_get_metrics
	.align	16, 0x90
	.type	type1_cis_get_metrics,@function
type1_cis_get_metrics:                  # @type1_cis_get_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsi2sdl	11000(%rdi), %xmm0
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsi)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	11004(%rdi), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsi)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	11008(%rdi), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsi)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	11012(%rdi), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsi)
	retq
.Lfunc_end11:
	.size	type1_cis_get_metrics, .Lfunc_end11-type1_cis_get_metrics
	.cfi_endproc

	.globl	gs_type1_piece_codes
	.align	16, 0x90
	.type	gs_type1_piece_codes,@function
gs_type1_piece_codes:                   # @gs_type1_piece_codes
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
	subq	$1096, %rsp             # imm = 0x448
.Ltmp58:
	.cfi_def_cfa_offset 1152
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
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	512(%rdi), %r15d
	leaq	96(%rsp), %r8
	leaq	892(%rsp), %r9
	movq	(%rsi), %rax
	movl	8(%rsi), %ecx
	leaq	1084(%rsp), %r10
	xorl	%edx, %edx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	leaq	900(%rsp), %r11
	leaq	896(%rsp), %rbx
	leaq	(%rcx,%rax), %rbp
	xorl	%ecx, %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	movq	%r8, %rsi
	movq	%r9, %r12
	jmp	.LBB12_1
.LBB12_45:                              # %if.end.305
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-4(%r12), %rax
	cmpq	%rbx, %r12
	cmovaeq	%rax, %r12
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	%r13, (%rsi)
	movw	%r14w, 16(%rsi)
	movq	%rcx, 8(%rsi)
	movq	96(%rsi), %rax
	movl	104(%rsi), %ecx
	leaq	(%rcx,%rax), %rbp
	addq	$72, %rsi
	incl	68(%rsp)                # 4-byte Folded Spill
	movq	%rdx, %rdi
	.align	16, 0x90
.LBB12_1:                               # %call
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_13 Depth 2
                                        #     Child Loop BB12_6 Depth 2
	movw	$4330, %r14w            # imm = 0x10EA
	testl	%r15d, %r15d
	js	.LBB12_2
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	512(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB12_4
# BB#12:                                # %for.body.preheader
                                        #   in Loop: Header=BB12_1 Depth=1
	incl	%ecx
	movw	$4330, %r14w            # imm = 0x10EA
	movq	%rbp, %rdi
	.align	16, 0x90
.LBB12_13:                              # %for.body
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %edx
	addl	%edx, %r14d
	imull	$-12691, %r14d, %r14d   # imm = 0xFFFFFFFFFFFFCE6D
	addl	$22719, %r14d           # imm = 0x58BF
	incq	%rax
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB12_13
	jmp	.LBB12_5
	.align	16, 0x90
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	movq	%rsi, 72(%rsp)          # 8-byte Spill
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	movq	%rbp, %rdi
.LBB12_5:                               # %for.cond.13.preheader
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	%rdi, %rax
	ja	.LBB12_69
	.align	16, 0x90
.LBB12_6:                               # %if.end.17
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %edx
	testl	%r15d, %r15d
	js	.LBB12_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB12_6 Depth=2
	movzwl	%r14w, %ecx
	movl	%ecx, %esi
	shrl	$8, %esi
	xorl	%edx, %esi
	addl	%ecx, %edx
	imull	$52845, %edx, %r14d     # imm = 0xCE6D
	addl	$22719, %r14d           # imm = 0x58BF
	movl	%esi, %edx
.LBB12_8:                               # %cond.end
                                        #   in Loop: Header=BB12_6 Depth=2
	leaq	1(%rax), %r13
	cmpl	$32, %edx
	jl	.LBB12_27
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	$-10, %ebp
	cmpl	$246, %edx
	jg	.LBB12_14
# BB#10:                                # %do.body.34
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpq	%r10, %r12
	jae	.LBB12_70
# BB#11:                                # %do.end
                                        #   in Loop: Header=BB12_6 Depth=2
	shll	$8, %edx
	addl	$-35584, %edx           # imm = 0xFFFFFFFFFFFF7500
	movl	%edx, 4(%r12)
.LBB12_66:                              # %for.cond.13.backedge
                                        #   in Loop: Header=BB12_6 Depth=2
	addq	$4, %r12
	jmp	.LBB12_67
	.align	16, 0x90
.LBB12_27:                              # %if.end.165
                                        #   in Loop: Header=BB12_6 Depth=2
	decl	%edx
	movq	%r9, %rcx
	cmpl	$28, %edx
	ja	.LBB12_68
# BB#28:                                # %if.end.165
                                        #   in Loop: Header=BB12_6 Depth=2
	jmpq	*.LJTI12_0(,%rdx,8)
.LBB12_49:                              # %sw.bb.190
                                        #   in Loop: Header=BB12_6 Depth=2
	subq	%rbx, %r12
	sarq	$2, %r12
	leaq	1(%r12), %rax
	shrq	$63, %rax
	leaq	1(%r12,%rax), %rax
	shrq	%rax
	movq	80(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%r9, %rcx
	jmp	.LBB12_68
	.align	16, 0x90
.LBB12_14:                              # %if.else
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpl	$254, %edx
	jg	.LBB12_24
# BB#15:                                # %do.body.48
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpq	%r10, %r12
	jae	.LBB12_70
# BB#16:                                # %do.end.58
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	%rdi, %rbp
	movzbl	1(%rax), %esi
	testl	%r15d, %r15d
	movl	%esi, %ecx
	js	.LBB12_18
# BB#17:                                # %cond.true.60
                                        #   in Loop: Header=BB12_6 Depth=2
	movzwl	%r14w, %ecx
	shrl	$8, %ecx
	xorl	%esi, %ecx
.LBB12_18:                              # %cond.end.65
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	%edx, %edi
	shll	$8, %edi
	cmpl	$250, %edx
	jg	.LBB12_20
# BB#19:                                # %do.end.72
                                        #   in Loop: Header=BB12_6 Depth=2
	addl	$2304, %edi             # imm = 0x900
	andl	$65280, %edi            # imm = 0xFF00
	leal	108(%rcx,%rdi), %ecx
	jmp	.LBB12_21
.LBB12_24:                              # %if.else.111
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpl	$255, %edx
	jne	.LBB12_70
# BB#25:                                # %for.cond.116.preheader
                                        #   in Loop: Header=BB12_6 Depth=2
	testl	%r15d, %r15d
	js	.LBB12_26
# BB#71:                                # %cond.true.122.3
                                        #   in Loop: Header=BB12_6 Depth=2
	movzbl	1(%rax), %ecx
	addl	%ecx, %r14d
	imull	$-12691, %r14d, %ecx    # imm = 0xFFFFFFFFFFFFCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	movzbl	2(%rax), %edx
	movzwl	%cx, %esi
	leal	(%rsi,%rdx), %esi
	imull	$52845, %esi, %esi      # imm = 0xCE6D
	addl	$22719, %esi            # imm = 0x58BF
	movq	%rdi, %r13
	movzbl	3(%rax), %edi
	movq	%rbx, %r14
	movzwl	%si, %ebx
	movl	%ebx, %esi
	shrl	$8, %esi
	xorl	%edi, %esi
	addl	%ebx, %edi
	movq	%r14, %rbx
	imull	$52845, %edi, %edi      # imm = 0xCE6D
	addl	$22719, %edi            # imm = 0x58BF
	shll	$8, %edx
	andl	$65280, %ecx            # imm = 0xFF00
	xorl	%edx, %ecx
	orl	%esi, %ecx
	movzbl	4(%rax), %esi
	movzwl	%di, %edi
	movl	%edi, %edx
	shrl	$8, %edx
	xorl	%esi, %edx
	addl	%edi, %esi
	movq	%r13, %rdi
	imull	$52845, %esi, %r14d     # imm = 0xCE6D
	addl	$22719, %r14d           # imm = 0x58BF
	jmp	.LBB12_72
.LBB12_20:                              # %do.end.85
                                        #   in Loop: Header=BB12_6 Depth=2
	addl	$1280, %edi             # imm = 0x500
	andl	$65280, %edi            # imm = 0xFF00
	leal	108(%rcx,%rdi), %ecx
	negl	%ecx
.LBB12_21:                              # %if.end.96
                                        #   in Loop: Header=BB12_6 Depth=2
	shll	$8, %ecx
	movl	%ecx, 4(%r12)
	addq	$4, %r12
	movq	%r12, %rcx
	addq	$2, %rax
	testl	%r15d, %r15d
	movq	%rbp, %rdi
	js	.LBB12_22
# BB#23:                                # %cond.true.98
                                        #   in Loop: Header=BB12_6 Depth=2
	addl	%r14d, %esi
	imull	$52845, %esi, %r14d     # imm = 0xCE6D
	addl	$22719, %r14d           # imm = 0x58BF
	movq	%rax, %r13
	jmp	.LBB12_68
.LBB12_29:                              # %sw.bb.198
                                        #   in Loop: Header=BB12_6 Depth=2
	subq	%rbx, %r12
	sarq	$2, %r12
	leaq	1(%r12), %rax
	shrq	$63, %rax
	leaq	1(%r12,%rax), %rax
	shrq	%rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	jmp	.LBB12_30
.LBB12_26:                              # %cond.end.136.2
                                        #   in Loop: Header=BB12_6 Depth=2
	movzbl	2(%rax), %ecx
	movzbl	3(%rax), %edx
	shll	$8, %ecx
	orl	%edx, %ecx
	movzbl	4(%rax), %edx
.LBB12_72:                              # %cond.end.136.3
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpq	%r10, %r12
	jae	.LBB12_70
# BB#73:                                # %cleanup.158.thread
                                        #   in Loop: Header=BB12_6 Depth=2
	addq	$5, %rax
	shll	$8, %ecx
	orl	%ecx, %edx
	shll	$8, %edx
	movl	%edx, 4(%r12)
	addq	$4, %r12
	movq	%rax, %r13
.LBB12_67:                              # %for.cond.13.backedge
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	%r12, %rcx
.LBB12_68:                              # %for.cond.13.backedge
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpq	%rdi, %r13
	movq	%rcx, %r12
	movq	%r13, %rax
	jbe	.LBB12_6
	jmp	.LBB12_69
.LBB12_22:                              #   in Loop: Header=BB12_6 Depth=2
	movq	%rax, %r13
	jmp	.LBB12_68
.LBB12_46:                              # %sw.bb.327
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	%rbx, %r13
	movq	%r8, %rbx
	movl	$-10, %ebp
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB12_70
# BB#47:                                # %if.else.331
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	72(%rsp), %r14          # 8-byte Reload
	leaq	24(%r14), %rdi
	movl	$.L.str.3, %esi
	movl	%r15d, 40(%rsp)         # 4-byte Spill
	movq	%r11, %r15
	callq	gs_glyph_data_free
	movq	%r15, %r11
	movl	40(%rsp), %r15d         # 4-byte Reload
	leaq	1084(%rsp), %r10
	leaq	892(%rsp), %r9
	leaq	-72(%r14), %rax
	movq	%rbx, %r8
	cmpq	%r8, %rax
	movq	%r13, %rbx
	jb	.LBB12_70
# BB#48:                                # %if.end.340
                                        #   in Loop: Header=BB12_6 Depth=2
	decl	68(%rsp)                # 4-byte Folded Spill
	movq	-72(%r14), %r13
	movq	-64(%r14), %rdi
	movzwl	-56(%r14), %r14d
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB12_67
.LBB12_52:                              # %sw.bb.388
                                        #   in Loop: Header=BB12_6 Depth=2
	movzbl	(%r13), %edx
	testl	%r15d, %r15d
	js	.LBB12_54
# BB#53:                                # %cond.true.390
                                        #   in Loop: Header=BB12_6 Depth=2
	movzwl	%r14w, %ecx
	movl	%ecx, %esi
	shrl	$8, %esi
	xorl	%edx, %esi
	addl	%ecx, %edx
	imull	$52845, %edx, %r14d     # imm = 0xCE6D
	addl	$22719, %r14d           # imm = 0x58BF
	movl	%esi, %edx
.LBB12_54:                              # %cond.end.404
                                        #   in Loop: Header=BB12_6 Depth=2
	addq	$2, %rax
	cmpl	$6, %edx
	jle	.LBB12_55
# BB#57:                                # %cond.end.404
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpl	$7, %edx
	je	.LBB12_58
# BB#59:                                # %cond.end.404
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpl	$16, %edx
	jne	.LBB12_60
# BB#61:                                # %sw.bb.413
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	(%r12), %ecx
	sarl	$8, %ecx
	leal	-12(%rcx), %edx
	cmpl	$7, %edx
	jae	.LBB12_62
.LBB12_58:                              #   in Loop: Header=BB12_6 Depth=2
	movq	%rax, %r13
	movq	%r9, %rcx
	jmp	.LBB12_68
.LBB12_32:                              # %sw.bb.229
                                        #   in Loop: Header=BB12_6 Depth=2
	subq	%rbx, %r12
	jbe	.LBB12_33
# BB#34:                                # %if.then.233
                                        #   in Loop: Header=BB12_6 Depth=2
	sarq	$2, %r12
	leaq	1(%r12), %rax
	shrq	$63, %rax
	leaq	1(%r12,%rax), %rax
	shrq	%rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, %edx
	jmp	.LBB12_35
.LBB12_31:                              # %sw.bb.211
                                        #   in Loop: Header=BB12_6 Depth=2
	subq	%rbx, %r12
	sarq	$2, %r12
	leaq	1(%r12), %rax
	shrq	$63, %rax
	leaq	1(%r12,%rax), %rax
	shrq	%rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	leal	(%rdx,%rax), %ecx
	leal	7(%rdx,%rax), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%rdx,%rcx), %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r13
.LBB12_30:                              # %for.cond.13.backedge
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%r9, %rcx
	jmp	.LBB12_68
.LBB12_64:                              # %sw.bb
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	$-10, %ebp
	cmpq	%r10, %r12
	jae	.LBB12_70
# BB#65:                                # %cleanup.426
                                        #   in Loop: Header=BB12_6 Depth=2
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movzbl	2(%rax), %edx
	leaq	3(%rax), %r13
	orl	%ecx, %edx
	movswl	%dx, %eax
	shll	$8, %eax
	movl	%eax, 4(%r12)
	jmp	.LBB12_66
.LBB12_33:                              #   in Loop: Header=BB12_6 Depth=2
	movq	88(%rsp), %rdx          # 8-byte Reload
.LBB12_35:                              # %if.end.244
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	leal	(%rcx,%rdx), %eax
	leal	7(%rcx,%rdx), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rcx,%rax), %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %r13
	movq	%r9, %rcx
	jmp	.LBB12_68
.LBB12_55:                              # %cond.end.404
                                        #   in Loop: Header=BB12_6 Depth=2
	leal	-1(%rdx), %ecx
	cmpl	$2, %ecx
	movq	%rax, %r13
	movq	%r9, %rcx
	jb	.LBB12_68
	jmp	.LBB12_56
.LBB12_60:                              # %cond.end.404
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpl	$17, %edx
	movq	%rax, %r13
	movq	%r12, %rcx
	je	.LBB12_68
	jmp	.LBB12_69
.LBB12_62:                              # %sw.bb.413
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpl	$3, %ecx
	jne	.LBB12_69
# BB#63:                                # %sw.bb.416
                                        #   in Loop: Header=BB12_6 Depth=2
	leaq	-8(%r12), %rcx
	cmpq	%r11, %r12
	cmovbq	%r12, %rcx
	movq	%rax, %r13
	jmp	.LBB12_68
.LBB12_40:                              # %sw.bb.285
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	%rbx, %r12
	jae	.LBB12_42
# BB#41:                                # %if.then.290
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	516(%rdi), %esi
	jmp	.LBB12_43
.LBB12_36:                              # %sw.bb.252
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	%rbx, %r12
	jae	.LBB12_38
# BB#37:                                # %if.then.256
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	520(%rdi), %esi
	jmp	.LBB12_39
.LBB12_42:                              # %if.else.292
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movl	(%r12), %esi
	sarl	$8, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	addl	516(%rdi), %esi
.LBB12_43:                              # %if.end.296
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	96(%rax), %rcx
	xorl	%edx, %edx
	jmp	.LBB12_44
.LBB12_38:                              # %if.else.257
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movl	(%r12), %esi
	sarl	$8, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	addl	516(%rdi), %esi
.LBB12_39:                              # %if.end.260
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	96(%rax), %rcx
	movl	$1, %edx
.LBB12_44:                              # %if.end.296
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	%rdi, %rbx
	callq	*456(%rbx)
	movq	%rbx, %rdx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	leaq	96(%rsp), %r8
	leaq	892(%rsp), %r9
	leaq	1084(%rsp), %r10
	leaq	900(%rsp), %r11
	leaq	896(%rsp), %rbx
	movq	40(%rsp), %rcx          # 8-byte Reload
	jns	.LBB12_45
	jmp	.LBB12_70
.LBB12_69:
	xorl	%ebp, %ebp
.LBB12_70:                              # %cleanup.429
	movl	%ebp, %eax
	addq	$1096, %rsp             # imm = 0x448
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_50:                              # %sw.bb.373
	leaq	908(%rsp), %rax
	cmpq	%rax, %r12
	movl	$0, %ebp
	jb	.LBB12_70
	jmp	.LBB12_51
.LBB12_56:                              # %cond.end.404
	cmpl	$6, %edx
	movl	$0, %ebp
	jne	.LBB12_70
.LBB12_51:                              # %do_seac
	movl	-4(%r12), %eax
	sarl	$8, %eax
	cltq
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movl	(%r12), %eax
	sarl	$8, %eax
	cltq
	movq	%rax, 8(%rcx)
	movl	$1, %ebp
	jmp	.LBB12_70
.Lfunc_end12:
	.size	gs_type1_piece_codes, .Lfunc_end12-gs_type1_piece_codes
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_49
	.quad	.LBB12_68
	.quad	.LBB12_29
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_40
	.quad	.LBB12_46
	.quad	.LBB12_52
	.quad	.LBB12_68
	.quad	.LBB12_50
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_49
	.quad	.LBB12_32
	.quad	.LBB12_31
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_29
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_68
	.quad	.LBB12_64
	.quad	.LBB12_36

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.long	256                     # 0x100
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	256                     # 0x100
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_1:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_type1_glyph_info
	.align	16, 0x90
	.type	gs_type1_glyph_info,@function
gs_type1_glyph_info:                    # @gs_type1_glyph_info
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
	subq	$13080, %rsp            # imm = 0x3318
.Ltmp71:
	.cfi_def_cfa_offset 13136
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
	movl	%ecx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	%ebp, %r13d
	shrl	%r13d
	andl	$1, %r13d
	movl	%ebp, %r12d
	andl	$24, %r12d
	movl	$65, %eax
	movb	%r13b, %cl
	shll	%cl, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%r12d, %r14d
	xorl	$-228, %r14d
	andl	%ebp, %r14d
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%r14d, %ecx
	movq	%r8, 24(%rsp)           # 8-byte Spill
	callq	gs_default_glyph_info
	testl	%eax, %eax
	jns	.LBB13_3
	jmp	.LBB13_27
.LBB13_2:                               # %if.else
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	$0, (%r8)
	movq	%r8, 24(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
.LBB13_3:                               # %if.end.13
	cmpl	%ebp, %r14d
	je	.LBB13_27
# BB#4:                                 # %if.end.17
	movq	16(%r15), %rax
	movq	%rax, 13072(%rsp)
	leaq	13032(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*448(%r15)
	testl	%eax, %eax
	js	.LBB13_27
# BB#5:                                 # %if.end.23
	testl	%r12d, %r12d
	je	.LBB13_13
# BB#6:                                 # %if.then.25
	leaq	13032(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movq	%r15, %rdi
	callq	gs_type1_piece_codes
	testb	$16, %bpl
	jne	.LBB13_7
# BB#8:                                 # %cond.false.i
	leaq	11280(%rsp), %rbx
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB13_9
.LBB13_7:                               # %cond.true.i
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	96(%rcx), %rbx
.LBB13_9:                               # %cond.end.i
	movl	$0, 88(%rcx)
	testl	%eax, %eax
	jle	.LBB13_11
# BB#10:                                # %if.end.i
	movl	64(%rsp), %esi
	leaq	12904(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	*464(%r15)
	movl	%eax, %r14d
	movl	72(%rsp), %esi
	addq	$8, %rbx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rdx
	leaq	12904(%rsp), %rcx
	callq	*464(%r15)
	movq	24(%rsp), %rcx          # 8-byte Reload
	testl	%r14d, %r14d
	cmovsl	%r14d, %eax
	movl	$2, 88(%rcx)
.LBB13_11:                              # %gs_type1_glyph_pieces.exit
	testl	%eax, %eax
	js	.LBB13_27
# BB#12:                                # %if.end.30
	orl	%r12d, (%rcx)
	movq	%rcx, 24(%rsp)          # 8-byte Spill
.LBB13_13:                              # %if.end.33
	andl	%ebp, 20(%rsp)          # 4-byte Folded Spill
	movl	%eax, %ebp
	je	.LBB13_26
# BB#14:                                # %if.then.35
	movq	8(%rsp), %rsi           # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB13_16
# BB#15:                                # %if.then.37
	leaq	11412(%rsp), %rdi
	jmp	.LBB13_17
.LBB13_16:                              # %if.else.39
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_identity
	leaq	11412(%rsp), %rdi
	movq	%rbx, %rsi
.LBB13_17:                              # %if.end.42
	callq	gs_matrix_fixed_from_matrix
	movl	$0, 11576(%rsp)
	movq	%r15, 9920(%rsp)
	leaq	11280(%rsp), %rax
	movq	%rax, 9928(%rsp)
	movq	$0, 9936(%rsp)
	movq	%r15, 9952(%rsp)
	movl	$1, 9944(%rsp)
	movl	$0, 9948(%rsp)
	movl	$0, 10244(%rsp)
	movl	$1, 11040(%rsp)
	movq	$0, 10248(%rsp)
	leaq	10272(%rsp), %rdi
	callq	gs_glyph_data_from_null
	movl	$0, 11136(%rsp)
	movl	$-1, %eax
	movd	%eax, %xmm0
	movups	%xmm0, 11044(%rsp)
	movl	$0, 11060(%rsp)
	movl	$-1, 11080(%rsp)
	movq	$0, 10036(%rsp)
	movl	$0, 11128(%rsp)
	movl	$0, 11124(%rsp)
	movl	$0, 10032(%rsp)
	movl	$128, 10028(%rsp)
	movapd	.LCPI13_0(%rip), %xmm0  # xmm0 = [256,128,0,256]
	movupd	%xmm0, 10012(%rsp)
	movl	$1, 9944(%rsp)
	leaq	12904(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gx_path_init_bbox_accumulator
	movq	%rbx, 9936(%rsp)
	leaq	64(%rsp), %rdi
	leaq	13032(%rsp), %rsi
	leaq	60(%rsp), %rdx
	callq	*488(%r15)
	movl	%eax, %ebp
	cmpl	$2, %ebp
	je	.LBB13_22
# BB#18:                                # %if.end.42
	cmpl	$1, %ebp
	jne	.LBB13_19
# BB#23:                                # %sw.bb.57
	movq	11072(%rsp), %rax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI13_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	shlq	$4, %r13
	movq	24(%rsp), %rcx          # 8-byte Reload
	movsd	%xmm0, 8(%rcx,%r13)
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rcx,%r13)
	movq	11064(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rcx)
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rcx)
	jmp	.LBB13_24
.LBB13_22:                              # %sw.bb.56
	movl	$-15, %eax
	xorl	%ecx, %ecx
	jmp	.LBB13_25
.LBB13_19:                              # %if.end.42
	testl	%ebp, %ebp
	jne	.LBB13_20
# BB#21:                                # %sw.bb
	shlq	$4, %r13
	xorpd	%xmm0, %xmm0
	movq	24(%rsp), %rcx          # 8-byte Reload
	movupd	%xmm0, 8(%rcx,%r13)
	movupd	%xmm0, 40(%rcx)
.LBB13_24:                              # %sw.epilog
	movl	20(%rsp), %eax          # 4-byte Reload
	orl	%eax, (%rcx)
	movb	$1, %cl
                                        # implicit-def: EAX
	jmp	.LBB13_25
.LBB13_20:
	xorl	%ecx, %ecx
	movl	%ebp, %eax
.LBB13_25:                              # %cleanup
	testb	%cl, %cl
	je	.LBB13_27
.LBB13_26:                              # %if.end.89
	leaq	13032(%rsp), %rdi
	movl	$.L.str.4, %esi
	callq	gs_glyph_data_free
	movl	%ebp, %eax
.LBB13_27:                              # %cleanup.90
	addq	$13080, %rsp            # imm = 0x3318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_type1_glyph_info, .Lfunc_end13-gs_type1_glyph_info
	.cfi_endproc

	.globl	gs_font_parent
	.align	16, 0x90
	.type	gs_font_parent,@function
gs_font_parent:                         # @gs_font_parent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	128(%rdi), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB14_2
# BB#1:                                 # %if.then
	movq	504(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB14_3
.LBB14_2:                               # %if.end.7
	movq	%rdi, %rax
.LBB14_3:                               # %return
	retq
.Lfunc_end14:
	.size	gs_font_parent, .Lfunc_end14-gs_font_parent
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_font_type1"
	.size	.L.str, 14

	.type	font_type1_reloc_ptrs,@object # @font_type1_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
font_type1_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_font_base
	.quad	font_type1_enum_ptrs
	.size	font_type1_reloc_ptrs, 24

	.type	st_gs_font_type1,@object # @st_gs_font_type1
	.globl	st_gs_font_type1
	.align	8
st_gs_font_type1:
	.long	992                     # 0x3e0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gs_font_finalize
	.quad	font_type1_reloc_ptrs
	.size	st_gs_font_type1, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_type1_state"
	.size	.L.str.1, 15

	.type	st_gs_type1_state,@object # @st_gs_type1_state
	.section	.rodata,"a",@progbits
	.globl	st_gs_type1_state
	.align	8
st_gs_type1_state:
	.long	11216                   # 0x2bd0
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_type1_state_enum_ptrs
	.quad	gs_type1_state_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_type1_state, 64

	.type	gx_extendeg_glyph_name_separator,@object # @gx_extendeg_glyph_name_separator
	.globl	gx_extendeg_glyph_name_separator
gx_extendeg_glyph_name_separator:
	.asciz	"~GS~"
	.size	gx_extendeg_glyph_name_separator, 5

	.type	gs_type1_interp_init.no_scale,@object # @gs_type1_interp_init.no_scale
	.section	.rodata.cst8,"aM",@progbits,8
	.align	4
gs_type1_interp_init.no_scale:
	.zero	8
	.size	gs_type1_interp_init.no_scale, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"The font '%s' misses the glyph '%s' . Continue skipping the glyph."
	.size	.L.str.2, 67

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_type1_piece_codes"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_type1_glyph_info"
	.size	.L.str.4, 20

	.type	font_type1_enum_ptrs,@object # @font_type1_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
font_type1_enum_ptrs:
	.short	0                       # 0x0
	.short	504                     # 0x1f8
	.short	0                       # 0x0
	.short	496                     # 0x1f0
	.size	font_type1_enum_ptrs, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
