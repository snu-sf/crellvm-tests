	.text
	.file	"gsfont0.bc"
	.align	16, 0x90
	.type	font_type0_enum_ptrs,@function
font_type0_enum_ptrs:                   # @font_type0_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB0_4
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB0_2
# BB#6:                                 # %sw.bb.1
	movq	424(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_4:                                # %sw.bb
	movq	408(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_2:                                # %entry
	cmpl	$2, %ecx
	jne	.LBB0_3
# BB#7:                                 # %sw.bb.4
	movl	376(%rsi), %eax
	cmpl	$9, %eax
	jne	.LBB0_8
# BB#10:                                # %sw.bb.14
	movq	440(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_3:                                # %sw.default
	addl	$-3, %ecx
	movl	$st_gs_font, %r9d
	jmpq	*st_gs_font+32(%rip)    # TAILCALL
.LBB0_8:                                # %sw.bb.4
	cmpl	$6, %eax
	jne	.LBB0_11
# BB#9:                                 # %sw.bb.6
	movq	384(%rsi), %rax
	movq	%rax, (%r8)
	movl	392(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
	retq
.LBB0_11:                               # %sw.default.17
	movq	$0, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.Lfunc_end0:
	.size	font_type0_enum_ptrs, .Lfunc_end0-font_type0_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_type0_reloc_ptrs,@function
font_type0_reloc_ptrs:                  # @font_type0_reloc_ptrs
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
	movl	$st_gs_font, %edx
	callq	*st_gs_font+40(%rip)
	movq	(%r14), %rax
	movq	408(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 408(%rbx)
	movq	(%r14), %rax
	movq	424(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 424(%rbx)
	movl	376(%rbx), %eax
	cmpl	$9, %eax
	jne	.LBB1_1
# BB#3:                                 # %sw.bb.10
	movq	(%r14), %rax
	movq	440(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 440(%rbx)
	jmp	.LBB1_4
.LBB1_1:                                # %entry
	cmpl	$6, %eax
	jne	.LBB1_4
# BB#2:                                 # %sw.bb
	movq	(%r14), %rax
	movq	16(%rax), %rax
	addq	$384, %rbx              # imm = 0x180
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB1_4:                                # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	font_type0_reloc_ptrs, .Lfunc_end1-font_type0_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1065353216              # float 1
	.text
	.globl	gs_type0_define_font
	.align	16, 0x90
	.type	gs_type0_define_font,@function
gs_type0_define_font:                   # @gs_type0_define_font
	.cfi_startproc
# BB#0:                                 # %entry
	movss	80(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI2_0(%rip), %xmm0
	jne	.LBB2_6
	jp	.LBB2_6
# BB#1:                                 # %land.lhs.true
	movss	92(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI2_0(%rip), %xmm0
	jne	.LBB2_6
	jp	.LBB2_6
# BB#2:                                 # %land.lhs.true.5
	movss	84(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_6
	jp	.LBB2_6
# BB#3:                                 # %land.lhs.true.9
	movss	88(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_6
	jp	.LBB2_6
# BB#4:                                 # %land.lhs.true.13
	movss	96(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_6
	jp	.LBB2_6
# BB#5:                                 # %land.lhs.true.17
	movss	100(%rsi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_6
	jnp	.LBB2_7
.LBB2_6:                                # %if.end
	leaq	80(%rsi), %rdx
	jmp	gs_type0_adjust_matrix  # TAILCALL
.LBB2_7:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gs_type0_define_font, .Lfunc_end2-gs_type0_define_font
	.cfi_endproc

	.align	16, 0x90
	.type	gs_type0_adjust_matrix,@function
gs_type0_adjust_matrix:                 # @gs_type0_adjust_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 80
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	424(%r12), %r13
	movl	432(%r12), %ebx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	movl	$0, %ebp
	je	.LBB3_4
# BB#1:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbp,8), %rcx
	cmpl	$0, 128(%rcx)
	je	.LBB3_4
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%rbp
	cmpl	%ebx, %ebp
	jb	.LBB3_2
.LBB3_4:                                # %for.end
	cmpl	%ebx, %ebp
	je	.LBB3_12
# BB#5:                                 # %if.end.6
	movq	16(%r12), %rdi
	movl	$st_gs_font_ptr_element, %edx
	movl	$.L.str.1, %ecx
	movl	%ebx, %esi
	callq	*104(%rdi)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB3_12
# BB#6:                                 # %if.end.10
	leaq	(,%rbx,8), %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	memcpy
	cmpl	%ebx, %ebp
	jae	.LBB3_11
# BB#7:                                 # %for.body.15.lr.ph
	movl	%ebp, %ebp
	leaq	(%r15,%rbp,8), %r14
	.align	16, 0x90
.LBB3_8:                                # %for.body.15
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbp,8), %rsi
	cmpl	$0, 128(%rsi)
	jne	.LBB3_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%r14, %rcx
	callq	gs_makefont
	testl	%eax, %eax
	js	.LBB3_12
.LBB3_10:                               # %for.inc.32
                                        #   in Loop: Header=BB3_8 Depth=1
	incq	%rbp
	addq	$8, %r14
	cmpq	%rbx, %rbp
	jb	.LBB3_8
.LBB3_11:                               # %for.end.34
	movq	%r15, 424(%r12)
	xorl	%eax, %eax
.LBB3_12:                               # %cleanup.37
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gs_type0_adjust_matrix, .Lfunc_end3-gs_type0_adjust_matrix
	.cfi_endproc

	.globl	gs_type0_make_font
	.align	16, 0x90
	.type	gs_type0_make_font,@function
gs_type0_make_font:                     # @gs_type0_make_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rcx), %rsi
	jmp	gs_type0_adjust_matrix  # TAILCALL
.Lfunc_end4:
	.size	gs_type0_make_font, .Lfunc_end4-gs_type0_make_font
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_font_type0"
	.size	.L.str, 14

	.type	st_gs_font_type0,@object # @st_gs_font_type0
	.section	.rodata,"a",@progbits
	.globl	st_gs_font_type0
	.align	8
st_gs_font_type0:
	.long	448                     # 0x1c0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	font_type0_enum_ptrs
	.quad	font_type0_reloc_ptrs
	.quad	gs_font_finalize
	.quad	0
	.size	st_gs_font_type0, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_type0_adjust_font(FDepVector)"
	.size	.L.str.1, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
