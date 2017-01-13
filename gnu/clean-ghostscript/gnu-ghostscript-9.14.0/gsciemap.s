	.text
	.file	"gsciemap.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1065353216              # float 1
	.text
	.globl	check_range
	.align	16, 0x90
	.type	check_range,@function
check_range:                            # @check_range
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	jle	.LBB0_1
# BB#4:                                 # %for.body.lr.ph
	movslq	%esi, %rcx
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi,%rdx,8), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_7
	jp	.LBB0_7
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB0_5 Depth=1
	movss	4(%rdi,%rdx,8), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm1
	jne	.LBB0_7
	jnp	.LBB0_2
.LBB0_7:                                # %cleanup
	retq
	.align	16, 0x90
.LBB0_2:                                # %for.cond
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%rdx
	cmpq	%rcx, %rdx
	jl	.LBB0_5
# BB#3:
	movl	$1, %eax
	retq
.LBB0_1:
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	check_range, .Lfunc_end0-check_range
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1065353216              # float 1
	.text
	.globl	check_cie_range
	.align	16, 0x90
	.type	check_cie_range,@function
check_cie_range:                        # @check_cie_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	movl	$1, %eax
	addl	$-5, %ecx
	cmpl	$3, %ecx
	ja	.LBB1_14
# BB#1:                                 # %entry
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_2:                                # %sw.bb
	movq	72(%rbx), %rcx
	movss	31352(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jnp	.LBB1_4
	jmp	.LBB1_14
.LBB1_4:                                # %if.end.i
	movss	31356(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jnp	.LBB1_3
	jmp	.LBB1_14
.LBB1_3:                                # %for.cond.i
	movss	31360(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jnp	.LBB1_15
	jmp	.LBB1_14
.LBB1_15:                               # %if.end.i.1
	movss	31364(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#16:                                # %for.cond.i.1
	movss	31368(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#17:                                # %if.end.i.2
	movss	31372(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#18:                                # %for.cond.i.2
	movss	31376(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#19:                                # %if.end.i.3
	movss	31380(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#20:                                # %for.cond.i.3
	movl	$1, %eax
	popq	%rbx
	retq
.LBB1_5:                                # %sw.bb.2
	movq	72(%rbx), %rcx
	movss	31352(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jnp	.LBB1_7
	jmp	.LBB1_14
.LBB1_7:                                # %if.end.i.38
	movss	31356(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jnp	.LBB1_6
	jmp	.LBB1_14
.LBB1_6:                                # %for.cond.i.30
	movss	31360(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jnp	.LBB1_21
	jmp	.LBB1_14
.LBB1_21:                               # %if.end.i.38.1
	movss	31364(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#22:                                # %for.cond.i.30.1
	movss	31368(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#23:                                # %if.end.i.38.2
	movss	31372(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#24:                                # %for.cond.i.30.2
	movl	$1, %eax
	popq	%rbx
	retq
.LBB1_8:                                # %sw.bb.7
	movq	72(%rbx), %rcx
	movss	6416(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jnp	.LBB1_10
	jmp	.LBB1_14
.LBB1_10:                               # %if.end.i.26
	movss	6420(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jnp	.LBB1_9
	jmp	.LBB1_14
.LBB1_9:                                # %for.cond.i.18
	movss	6424(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jnp	.LBB1_25
	jmp	.LBB1_14
.LBB1_25:                               # %if.end.i.26.1
	movss	6428(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#26:                                # %for.cond.i.18.1
	movss	6432(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#27:                                # %if.end.i.26.2
	movss	6436(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jp	.LBB1_14
# BB#28:                                # %for.cond.i.18.2
	movl	$1, %eax
	popq	%rbx
	retq
.LBB1_11:                               # %sw.bb.12
	movq	72(%rbx), %rcx
	movss	6416(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_14
	jnp	.LBB1_13
	jmp	.LBB1_14
.LBB1_13:                               # %if.end.i.14
	movss	6420(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_14
	jnp	.LBB1_12
.LBB1_14:                               # %return
	popq	%rbx
	retq
.LBB1_12:                               # %for.cond.i.6
	movl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	check_cie_range, .Lfunc_end1-check_cie_range
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_2
	.quad	.LBB1_5
	.quad	.LBB1_8
	.quad	.LBB1_11

	.text
	.globl	get_cie_range
	.align	16, 0x90
	.type	get_cie_range,@function
get_cie_range:                          # @get_cie_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	xorl	%eax, %eax
	addl	$-5, %ecx
	cmpl	$3, %ecx
	ja	.LBB2_5
# BB#1:                                 # %entry
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_2:                                # %sw.bb.1
	movl	$31352, %eax            # imm = 0x7A78
	jmp	.LBB2_4
.LBB2_3:                                # %sw.bb.9
	movl	$6416, %eax             # imm = 0x1910
.LBB2_4:                                # %return
	addq	72(%rbx), %rax
.LBB2_5:                                # %return
	popq	%rbx
	retq
.Lfunc_end2:
	.size	get_cie_range, .Lfunc_end2-get_cie_range
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_2
	.quad	.LBB2_2
	.quad	.LBB2_3
	.quad	.LBB2_3

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
	.text
	.globl	rescale_cie_colors
	.align	16, 0x90
	.type	rescale_cie_colors,@function
rescale_cie_colors:                     # @rescale_cie_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	callq	check_cie_range
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB3_16
# BB#1:                                 # %if.then
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	addl	$-5, %eax
	cmpl	$3, %eax
	ja	.LBB3_16
# BB#2:                                 # %if.then
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_3:                                # %sw.bb
	movl	$31352, %eax            # imm = 0x7A78
	addq	72(%rbp), %rax
	movl	$4, %ecx
	jmp	.LBB3_8
.LBB3_4:                                # %sw.bb.3
	movl	$31352, %eax            # imm = 0x7A78
	jmp	.LBB3_5
.LBB3_6:                                # %sw.bb.7
	movl	$6416, %eax             # imm = 0x1910
.LBB3_5:                                # %sw.epilog
	addq	72(%rbp), %rax
	movl	$3, %ecx
	jmp	.LBB3_8
.LBB3_7:                                # %sw.bb.11
	movl	$6416, %eax             # imm = 0x1910
	addq	72(%rbp), %rax
	movl	$1, %ecx
.LBB3_8:                                # %sw.epilog
	cmpq	$1, %rcx
	movl	$1, %r10d
	cmovaq	%rcx, %r10
	xorl	%esi, %esi
	movq	%r10, %r8
	andq	$4, %r8
	je	.LBB3_14
# BB#9:                                 # %vector.memcheck
	leaq	8(%rbx), %r9
	cmpq	$1, %rcx
	movl	$1, %edi
	cmovaq	%rcx, %rdi
	leaq	-4(%rax,%rdi,8), %rbp
	xorl	%esi, %esi
	cmpq	%rbp, %r9
	ja	.LBB3_11
# BB#10:                                # %vector.memcheck
	leaq	4(%rbx,%rdi,4), %rdi
	cmpq	%rdi, %rax
	jbe	.LBB3_14
.LBB3_11:                               # %vector.body.preheader
	cmpq	$1, %rcx
	movl	$1, %r9d
	movl	$1, %r11d
	cmovaq	%rcx, %r11
	andq	$-4, %r11
	xorl	%esi, %esi
	movdqa	.LCPI3_0(%rip), %xmm0   # xmm0 = [2,3]
	.align	16, 0x90
.LBB3_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movd	%r9, %xmm2
	pslldq	$8, %xmm2               # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
	paddq	%xmm1, %xmm2
	paddq	%xmm0, %xmm1
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	movd	%xmm2, %rdx
	movd	%xmm1, %rdi
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %rbp
	movups	8(%rbx,%rsi,4), %xmm1
	movss	(%rax,%rsi,8), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movss	(%rax,%rdi,8), %xmm3    # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movss	(%rax,%rbp,8), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movss	(%rax,%rdx,8), %xmm4    # xmm4 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	unpcklps	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	subps	%xmm2, %xmm1
	movss	4(%rax,%rsi,8), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movss	4(%rax,%rdi,8), %xmm4   # xmm4 = mem[0],zero,zero,zero
	unpcklps	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	movss	4(%rax,%rbp,8), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movss	4(%rax,%rdx,8), %xmm5   # xmm5 = mem[0],zero,zero,zero
	unpcklps	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	unpcklps	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	subps	%xmm2, %xmm3
	divps	%xmm3, %xmm1
	movups	%xmm1, 8(%rbx,%rsi,4)
	addq	$4, %rsi
	cmpq	%rsi, %r11
	jne	.LBB3_12
# BB#13:
	movq	%r8, %rsi
.LBB3_14:                               # %middle.block
	movl	$1, %r14d
	cmpq	%rsi, %r10
	je	.LBB3_16
	.align	16, 0x90
.LBB3_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rbx,%rsi,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	(%rax,%rsi,8), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	4(%rax,%rsi,8), %xmm2   # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 8(%rbx,%rsi,4)
	incq	%rsi
	cmpq	%rcx, %rsi
	jl	.LBB3_15
.LBB3_16:                               # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rescale_cie_colors, .Lfunc_end3-rescale_cie_colors
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_3
	.quad	.LBB3_4
	.quad	.LBB3_6
	.quad	.LBB3_7

	.text
	.globl	gx_cie_check_rendering
	.align	16, 0x90
	.type	gx_cie_check_rendering,@function
gx_cie_check_rendering:                 # @gx_cie_check_rendering
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp10:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	cmpq	$0, 400(%rdx)
	jne	.LBB4_3
# BB#1:                                 # %land.lhs.true.i
	cmpl	$0, 408(%rdx)
	je	.LBB4_2
.LBB4_3:                                # %if.end.i
	movq	1008(%rdx), %rcx
	cmpl	$2, 20(%rcx)
	jne	.LBB4_6
# BB#4:                                 # %if.then.4.i
	movq	(%rcx), %rsi
	cmpq	32(%rax), %rsi
	je	.LBB4_7
# BB#5:                                 # %if.then.7.i
	movl	$0, 20(%rcx)
.LBB4_6:                                # %if.then.15.i
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	gs_cie_jc_complete
	testl	%eax, %eax
	js	.LBB4_8
.LBB4_7:                                # %if.end.19.i
	xorl	%eax, %eax
.LBB4_8:                                # %gx_cie_check_rendering_inline.exit
	popq	%rdx
	retq
.LBB4_2:                                # %if.then.i
	movw	$0, 4(%rsi)
	movl	$0, (%rsi)
	movl	$1, %eax
	popq	%rdx
	retq
.Lfunc_end4:
	.size	gx_cie_check_rendering, .Lfunc_end4-gx_cie_check_rendering
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_remap_CIEDEFG
	.align	16, 0x90
	.type	gx_remap_CIEDEFG,@function
gx_remap_CIEDEFG:                       # @gx_remap_CIEDEFG
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
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp17:
	.cfi_def_cfa_offset 336
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB5_1
# BB#2:                                 # %if.else
	movq	%rax, 272(%rsp)
	jmp	.LBB5_3
.LBB5_1:                                # %if.then
	movq	8(%r13), %rax
	movq	(%rax), %rdx
	leaq	272(%rsp), %rdi
	movq	%rbp, %rsi
	callq	gx_ciedefg_to_icc
.LBB5_3:                                # %if.end.5
	movq	72(%rbp), %rax
	movss	31352(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	31356(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB5_7
	jp	.LBB5_7
# BB#4:                                 # %if.end.5
	ucomiss	.LCPI5_0(%rip), %xmm1
	jne	.LBB5_7
	jp	.LBB5_7
# BB#5:                                 # %for.cond.i
	movss	31360(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB5_6
	jnp	.LBB5_9
.LBB5_6:
	movss	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB5_7
.LBB5_9:                                # %if.end.i.1
	movss	31364(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB5_7
	jp	.LBB5_7
# BB#10:                                # %for.cond.i.1
	movss	31368(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB5_7
	jp	.LBB5_7
# BB#11:                                # %if.end.i.2
	movss	31372(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB5_7
	jp	.LBB5_7
# BB#12:                                # %for.cond.i.2
	movss	31376(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB5_7
	jp	.LBB5_7
# BB#13:                                # %if.end.i.3
	movss	31380(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB5_7
	jp	.LBB5_7
	jmp	.LBB5_14
.LBB5_7:                                # %if.end.9
	movss	8(%rbx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	subss	%xmm0, %xmm1
	divss	%xmm1, %xmm2
	movss	%xmm2, 16(%rsp)
	movss	12(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31360(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	31364(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 20(%rsp)
	movss	16(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31368(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	31372(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 24(%rsp)
	movss	20(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31376(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	31380(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 28(%rsp)
	movq	272(%rsp), %rsi
	movq	(%rsi), %rax
	leaq	8(%rsp), %rdi
	movq	%r14, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	movl	%r15d, %r9d
	callq	*72(%rax)
	movl	8(%rbx), %ecx
	movl	%ecx, 376(%r14)
	movl	12(%rbx), %ecx
	movl	%ecx, 380(%r14)
	movl	16(%rbx), %ecx
	movl	%ecx, 384(%r14)
	movl	20(%rbx), %ecx
	movl	%ecx, 388(%r14)
	movl	$1, 360(%r14)
.LBB5_8:                                # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_14:                               # %for.cond.i.3
	movq	272(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	movl	%r15d, %r9d
	callq	*72(%rax)
	jmp	.LBB5_8
.Lfunc_end5:
	.size	gx_remap_CIEDEFG, .Lfunc_end5-gx_remap_CIEDEFG
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ciedefg_to_icc,@function
gx_ciedefg_to_icc:                      # @gx_ciedefg_to_icc
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
	subq	$24, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 80
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	40(%r15), %r13
	movq	72(%r15), %r12
	movq	%r12, %r14
	subq	$-128, %r14
	leaq	6512(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addq	$31480, %r12            # imm = 0x7AF8
	movq	(%rdx), %rdx
	xorl	%esi, %esi
	callq	gs_cspace_build_ICC
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB6_2
# BB#1:                                 # %if.then
	movl	$.L__func__.gx_ciedefg_to_icc, %edi
	movl	$.L.str, %esi
	movl	$245, %edx
	movl	$1, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB6_2:                                # %if.end
	movq	(%rbx), %rax
	movq	%r13, 40(%rax)
	movq	%r13, %rdi
	callq	rc_increment_cs
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	gsicc_profile_new
	movq	(%rbx), %rcx
	movq	%rax, 64(%rcx)
	movq	(%rbx), %rax
	movq	64(%rax), %rdx
	leaq	256(%rdx), %rsi
	addq	$220, %rdx
	movq	%r12, (%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rcx
	movq	8(%rsp), %r8            # 8-byte Reload
	movq	%r14, %r9
	callq	gsicc_create_fromdefg
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB6_4
# BB#3:                                 # %if.then.15
	movl	$.L__func__.gx_ciedefg_to_icc, %edi
	movl	$.L.str, %esi
	movl	$254, %edx
	movl	$1, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB6_4:                                # %if.end.17
	movq	(%rbx), %rax
	movq	64(%rax), %rdi
	callq	gsicc_init_profile_info
	movq	(%rbx), %rax
	movq	64(%rax), %rcx
	movl	$16, 12(%rcx)
	movq	%rax, 48(%r15)
	movl	$3, 16(%rcx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_ciedefg_to_icc, .Lfunc_end6-gx_ciedefg_to_icc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_concretize_CIEDEFG
	.align	16, 0x90
	.type	gx_concretize_CIEDEFG,@function
gx_concretize_CIEDEFG:                  # @gx_concretize_CIEDEFG
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 64
.Ltmp43:
	.cfi_offset %rbx, -48
.Ltmp44:
	.cfi_offset %r12, -40
.Ltmp45:
	.cfi_offset %r13, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_1
# BB#2:                                 # %if.else
	movq	%rax, 8(%rsp)
	jmp	.LBB7_3
.LBB7_1:                                # %if.then
	movq	8(%r13), %rax
	movq	(%rax), %rdx
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_ciedefg_to_icc
.LBB7_3:                                # %if.end.5
	movq	72(%rbx), %rax
	movss	31352(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_6
	jnp	.LBB7_5
	jmp	.LBB7_6
.LBB7_4:                                # %for.cond.i
	movss	31360(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_6
	jnp	.LBB7_7
	jmp	.LBB7_6
.LBB7_7:                                # %if.end.i.1
	movss	31364(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_6
	jp	.LBB7_6
# BB#8:                                 # %for.cond.i.1
	movss	31368(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_6
	jp	.LBB7_6
# BB#9:                                 # %if.end.i.2
	movss	31372(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_6
	jp	.LBB7_6
# BB#10:                                # %for.cond.i.2
	movss	31376(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_6
	jp	.LBB7_6
# BB#11:                                # %if.end.i.3
	movss	31380(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jmp	.LBB7_6
.LBB7_5:                                # %if.end.i
	movss	31356(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_6
	jnp	.LBB7_4
.LBB7_6:                                # %for.body.i.17.preheader
	movq	8(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	*56(%rax)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	gx_concretize_CIEDEFG, .Lfunc_end7-gx_concretize_CIEDEFG
	.cfi_endproc

	.globl	gx_psconcretize_CIEA
	.align	16, 0x90
	.type	gx_psconcretize_CIEA,@function
gx_psconcretize_CIEA:                   # @gx_psconcretize_CIEA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 80
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	72(%r15), %r13
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cmpq	$0, 400(%rbp)
	jne	.LBB8_3
# BB#1:                                 # %land.lhs.true.i
	cmpl	$0, 408(%rbp)
	je	.LBB8_2
.LBB8_3:                                # %if.end.i
	movq	1008(%rbp), %rbx
	cmpl	$2, 20(%rbx)
	jne	.LBB8_6
# BB#4:                                 # %if.then.4.i
	movq	(%rbx), %rax
	cmpq	32(%r15), %rax
	je	.LBB8_8
# BB#5:                                 # %if.then.7.i
	movl	$0, 20(%rbx)
.LBB8_6:                                # %if.then.15.i
	movaps	%xmm1, (%rsp)           # 16-byte Spill
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	gs_cie_jc_complete
	testl	%eax, %eax
	js	.LBB8_16
# BB#7:                                 # %if.then.15.i.if.end.4_crit_edge
	movq	1008(%rbp), %rbx
	movaps	(%rsp), %xmm1           # 16-byte Reload
.LBB8_8:                                # %if.end.4
	cmpl	$0, 56(%rbx)
	je	.LBB8_9
# BB#13:                                # %if.else
	movaps	%xmm1, %xmm0
	shufps	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3]
	jmp	.LBB8_14
.LBB8_9:                                # %if.then.5
	movss	8536(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	jae	.LBB8_12
# BB#10:                                # %cond.false
	movl	$511, %eax              # imm = 0x1FF
	ucomiss	8544(%r13), %xmm1
	jae	.LBB8_12
# BB#11:                                # %cond.false.14
	subss	%xmm0, %xmm1
	mulss	8540(%r13), %xmm1
	cvttss2si	%xmm1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	cvttss2si	%xmm0, %eax
	cltq
.LBB8_12:                               # %cond.end.25
	leaq	(%rax,%rax,2), %rax
	movq	8572(%r13,%rax,4), %xmm0 # xmm0 = mem[0],zero
	movss	8580(%r13,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
.LBB8_14:                               # %if.end.34
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	*48(%rbx)
	jmp	.LBB8_15
.LBB8_2:                                # %if.end.thread
	movw	$0, 4(%r14)
	movl	$0, (%r14)
.LBB8_15:                               # %cleanup
	xorl	%eax, %eax
.LBB8_16:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gx_psconcretize_CIEA, .Lfunc_end8-gx_psconcretize_CIEA
	.cfi_endproc

	.globl	gx_psconcretize_CIEABC
	.align	16, 0x90
	.type	gx_psconcretize_CIEABC,@function
gx_psconcretize_CIEABC:                 # @gx_psconcretize_CIEABC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 80
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	72(%r15), %r13
	cmpq	$0, 400(%rbx)
	jne	.LBB9_3
# BB#1:                                 # %land.lhs.true.i
	cmpl	$0, 408(%rbx)
	je	.LBB9_2
.LBB9_3:                                # %if.end.i
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	1008(%rbx), %rbp
	cmpl	$2, 20(%rbp)
	jne	.LBB9_6
# BB#4:                                 # %if.then.4.i
	movq	(%rbp), %rax
	cmpq	32(%r15), %rax
	je	.LBB9_8
# BB#5:                                 # %if.then.7.i
	movl	$0, 20(%rbp)
.LBB9_6:                                # %if.then.15.i
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gs_cie_jc_complete
	testl	%eax, %eax
	js	.LBB9_13
# BB#7:                                 # %if.then.15.i.if.end.3_crit_edge
	movq	1008(%rbx), %rbp
.LBB9_8:                                # %if.end.3
	movl	8(%r12), %eax
	movl	%eax, 8(%rsp)
	movl	12(%r12), %eax
	movl	%eax, 12(%rsp)
	movl	16(%r12), %eax
	movl	%eax, 16(%rsp)
	cmpl	$0, 56(%rbp)
	je	.LBB9_10
# BB#9:
	movd	%eax, %xmm1
	jmp	.LBB9_11
.LBB9_10:                               # %if.then.10
	addq	$6512, %r13             # imm = 0x1970
	leaq	8(%rsp), %rdi
	movq	%r13, %rsi
	callq	cie_lookup_mult3
	movq	1008(%rbx), %rbp
	movss	16(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB9_11:                               # %if.end.11
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	*48(%rbp)
	jmp	.LBB9_12
.LBB9_2:                                # %if.end.thread
	movw	$0, 4(%r14)
	movl	$0, (%r14)
.LBB9_12:                               # %cleanup
	xorl	%eax, %eax
.LBB9_13:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gx_psconcretize_CIEABC, .Lfunc_end9-gx_psconcretize_CIEABC
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1224704000              # float 523264
.LCPI10_1:
	.long	1149239296              # float 1024
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_2:
	.quad	4562146422526312448     # double 9.765625E-4
	.text
	.align	16, 0x90
	.type	cie_lookup_mult3,@function
cie_lookup_mult3:                       # @cie_lookup_mult3
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	24816(%rsi), %xmm0
	jb	.LBB10_7
# BB#1:                                 # %land.lhs.true
	movss	24820(%rsi), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_7
# BB#2:                                 # %if.then
	movss	2088(%rsi), %xmm2       # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm2
	jae	.LBB10_6
# BB#3:                                 # %cond.false
	ucomiss	2096(%rsi), %xmm0
	jae	.LBB10_4
# BB#5:                                 # %cond.false.16
	subss	%xmm2, %xmm0
	mulss	2092(%rsi), %xmm0
	mulss	.LCPI10_1(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	jmp	.LBB10_6
.LBB10_7:                               # %if.else
	movss	2088(%rsi), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jae	.LBB10_10
# BB#8:                                 # %cond.false.89
	movl	$511, %eax              # imm = 0x1FF
	ucomiss	2096(%rsi), %xmm0
	jae	.LBB10_10
# BB#9:                                 # %cond.false.99
	subss	%xmm1, %xmm0
	mulss	2092(%rsi), %xmm0
	cvttss2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	cvttss2si	%xmm0, %eax
	cltq
.LBB10_10:                              # %cond.end.117
	leaq	(%rax,%rax,2), %rax
	movss	2124(%rsi,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	2128(%rsi,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movss	2132(%rsi,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB10_11
.LBB10_4:
	movss	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB10_6:                               # %cond.end.28
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	mulsd	.LCPI10_2(%rip), %xmm2
	cvttsd2si	%xmm2, %eax
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	2124(%rsi,%rax,4), %rcx
	ucomiss	.LCPI10_0(%rip), %xmm1
	leaq	2136(%rsi,%rax,4), %rdx
	cmovaeq	%rcx, %rdx
	movss	2124(%rsi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm0
	cvtsd2ss	%xmm2, %xmm4
	cvttss2si	%xmm4, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	subss	%xmm2, %xmm4
	mulss	%xmm4, %xmm0
	addss	%xmm3, %xmm0
	movss	2128(%rsi,%rax,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm2, %xmm1
	movss	2132(%rsi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	movss	8(%rdx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm2
	mulss	%xmm4, %xmm2
	addss	%xmm3, %xmm2
.LBB10_11:                              # %if.end
	movss	4(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	ucomiss	24824(%rsi), %xmm3
	jb	.LBB10_18
# BB#12:                                # %land.lhs.true.139
	movss	24828(%rsi), %xmm4      # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm4
	jbe	.LBB10_18
# BB#13:                                # %if.then.146
	movss	10360(%rsi), %xmm5      # xmm5 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm5
	jae	.LBB10_17
# BB#14:                                # %cond.false.157
	ucomiss	10368(%rsi), %xmm3
	jae	.LBB10_15
# BB#16:                                # %cond.false.167
	subss	%xmm5, %xmm3
	mulss	10364(%rsi), %xmm3
	mulss	.LCPI10_1(%rip), %xmm3
	cvttss2si	%xmm3, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	jmp	.LBB10_17
.LBB10_18:                              # %if.else.248
	movss	10360(%rsi), %xmm4      # xmm4 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm3, %xmm4
	jae	.LBB10_21
# BB#19:                                # %cond.false.259
	movl	$511, %eax              # imm = 0x1FF
	ucomiss	10368(%rsi), %xmm3
	jae	.LBB10_21
# BB#20:                                # %cond.false.269
	subss	%xmm4, %xmm3
	mulss	10364(%rsi), %xmm3
	cvttss2si	%xmm3, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	cvttss2si	%xmm3, %eax
	cltq
.LBB10_21:                              # %cond.end.287
	leaq	(%rax,%rax,2), %rax
	movss	10396(%rsi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	movss	10400(%rsi,%rax,4), %xmm4 # xmm4 = mem[0],zero,zero,zero
	movss	10404(%rsi,%rax,4), %xmm5 # xmm5 = mem[0],zero,zero,zero
	jmp	.LBB10_22
.LBB10_15:
	movss	.LCPI10_0(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
.LBB10_17:                              # %cond.end.185
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm4, %xmm5
	mulsd	.LCPI10_2(%rip), %xmm5
	cvttsd2si	%xmm5, %eax
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	10396(%rsi,%rax,4), %rcx
	ucomiss	.LCPI10_0(%rip), %xmm4
	leaq	10408(%rsi,%rax,4), %rdx
	cmovaeq	%rcx, %rdx
	movss	10396(%rsi,%rax,4), %xmm6 # xmm6 = mem[0],zero,zero,zero
	movss	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movss	4(%rdx), %xmm4          # xmm4 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm3
	cvtsd2ss	%xmm5, %xmm7
	cvttss2si	%xmm7, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	subss	%xmm5, %xmm7
	mulss	%xmm7, %xmm3
	addss	%xmm6, %xmm3
	movss	10400(%rsi,%rax,4), %xmm5 # xmm5 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm4
	mulss	%xmm7, %xmm4
	addss	%xmm5, %xmm4
	movss	10404(%rsi,%rax,4), %xmm6 # xmm6 = mem[0],zero,zero,zero
	movss	8(%rdx), %xmm5          # xmm5 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm5
	mulss	%xmm7, %xmm5
	addss	%xmm6, %xmm5
.LBB10_22:                              # %if.end.306
	addss	%xmm3, %xmm0
	addss	%xmm4, %xmm1
	addss	%xmm5, %xmm2
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	ucomiss	24832(%rsi), %xmm3
	jb	.LBB10_29
# BB#23:                                # %land.lhs.true.313
	movss	24836(%rsi), %xmm4      # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm4
	jbe	.LBB10_29
# BB#24:                                # %if.then.320
	movss	18632(%rsi), %xmm5      # xmm5 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm5
	jae	.LBB10_28
# BB#25:                                # %cond.false.331
	ucomiss	18640(%rsi), %xmm3
	jae	.LBB10_26
# BB#27:                                # %cond.false.341
	subss	%xmm5, %xmm3
	mulss	18636(%rsi), %xmm3
	mulss	.LCPI10_1(%rip), %xmm3
	cvttss2si	%xmm3, %eax
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	jmp	.LBB10_28
.LBB10_29:                              # %if.else.422
	movss	18632(%rsi), %xmm4      # xmm4 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm3, %xmm4
	jae	.LBB10_32
# BB#30:                                # %cond.false.433
	movl	$511, %eax              # imm = 0x1FF
	ucomiss	18640(%rsi), %xmm3
	jae	.LBB10_32
# BB#31:                                # %cond.false.443
	subss	%xmm4, %xmm3
	mulss	18636(%rsi), %xmm3
	cvttss2si	%xmm3, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	cvttss2si	%xmm3, %eax
	cltq
.LBB10_32:                              # %cond.end.461
	leaq	(%rax,%rax,2), %rax
	movss	18668(%rsi,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	movss	18672(%rsi,%rax,4), %xmm4 # xmm4 = mem[0],zero,zero,zero
	movss	18676(%rsi,%rax,4), %xmm5 # xmm5 = mem[0],zero,zero,zero
	jmp	.LBB10_33
.LBB10_26:
	movss	.LCPI10_0(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
.LBB10_28:                              # %cond.end.359
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm4, %xmm5
	mulsd	.LCPI10_2(%rip), %xmm5
	cvttsd2si	%xmm5, %eax
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	18668(%rsi,%rax,4), %rcx
	ucomiss	.LCPI10_0(%rip), %xmm4
	leaq	18680(%rsi,%rax,4), %rdx
	cmovaeq	%rcx, %rdx
	movss	18668(%rsi,%rax,4), %xmm6 # xmm6 = mem[0],zero,zero,zero
	movss	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movss	4(%rdx), %xmm4          # xmm4 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm3
	cvtsd2ss	%xmm5, %xmm7
	cvttss2si	%xmm7, %ecx
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	subss	%xmm5, %xmm7
	mulss	%xmm7, %xmm3
	addss	%xmm6, %xmm3
	movss	18672(%rsi,%rax,4), %xmm5 # xmm5 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm4
	mulss	%xmm7, %xmm4
	addss	%xmm5, %xmm4
	movss	18676(%rsi,%rax,4), %xmm6 # xmm6 = mem[0],zero,zero,zero
	movss	8(%rdx), %xmm5          # xmm5 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm5
	mulss	%xmm7, %xmm5
	addss	%xmm6, %xmm5
.LBB10_33:                              # %if.end.480
	addss	%xmm3, %xmm0
	addss	%xmm4, %xmm1
	addss	%xmm5, %xmm2
	movss	%xmm0, (%rdi)
	movss	%xmm1, 4(%rdi)
	movss	%xmm2, 8(%rdi)
	retq
.Lfunc_end10:
	.size	cie_lookup_mult3, .Lfunc_end10-cie_lookup_mult3
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4643211215818981376     # double 256
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_1:
	.long	1191178240              # float 32760
	.text
	.globl	gx_psconcretize_CIEDEFG
	.align	16, 0x90
	.type	gx_psconcretize_CIEDEFG,@function
gx_psconcretize_CIEDEFG:                # @gx_psconcretize_CIEDEFG
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 112
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	72(%r15), %rbx
	cmpq	$0, 400(%r13)
	jne	.LBB11_3
# BB#1:                                 # %land.lhs.true.i
	cmpl	$0, 408(%r13)
	je	.LBB11_2
.LBB11_3:                               # %if.end.i
	movq	1008(%r13), %rax
	cmpl	$2, 20(%rax)
	jne	.LBB11_6
# BB#4:                                 # %if.then.4.i
	movq	(%rax), %rcx
	cmpq	32(%r15), %rcx
	je	.LBB11_7
# BB#5:                                 # %if.then.7.i
	movl	$0, 20(%rax)
.LBB11_6:                               # %if.then.15.i
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	gs_cie_jc_complete
	testl	%eax, %eax
	js	.LBB11_23
.LBB11_7:                               # %for.body.preheader
	xorl	%eax, %eax
	movl	$3940, %ecx             # imm = 0xF64
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB11_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	31452(%rbx,%rax), %edx
	movsd	-24(%rbx,%rcx,8), %xmm4 # xmm4 = mem[0],zero
	movss	8(%rbp,%rax), %xmm5     # xmm5 = mem[0],zero,zero,zero
	movss	31352(%rbx,%rax,2), %xmm3 # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm3
	xorpd	%xmm2, %xmm2
	ja	.LBB11_13
# BB#9:                                 # %cond.false
                                        #   in Loop: Header=BB11_8 Depth=1
	movss	31356(%rbx,%rax,2), %xmm2 # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm5
	ja	.LBB11_10
# BB#11:                                # %cond.false
                                        #   in Loop: Header=BB11_8 Depth=1
	cvtss2sd	%xmm3, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm5, %xmm2
	subsd	%xmm3, %xmm2
	jmp	.LBB11_12
	.align	16, 0x90
.LBB11_10:                              #   in Loop: Header=BB11_8 Depth=1
	subss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
.LBB11_12:                              # %cond.false
                                        #   in Loop: Header=BB11_8 Depth=1
	mulsd	%xmm4, %xmm2
.LBB11_13:                              # %cond.end.28
                                        #   in Loop: Header=BB11_8 Depth=1
	cvttsd2si	%xmm2, %esi
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%esi, %xmm5
	movslq	%esi, %rdi
	leaq	(%rbx,%rdi,4), %rdi
	movss	(%rdi,%rcx,8), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm5, %xmm4
	jbe	.LBB11_16
# BB#14:                                # %cond.end.28
                                        #   in Loop: Header=BB11_8 Depth=1
	subsd	%xmm5, %xmm2
	ucomisd	%xmm0, %xmm2
	jne	.LBB11_15
	jnp	.LBB11_16
.LBB11_15:                              # %if.then.47
                                        #   in Loop: Header=BB11_8 Depth=1
	incl	%esi
	movslq	%esi, %rsi
	leaq	(%rbx,%rsi,4), %rsi
	movss	(%rsi,%rcx,8), %xmm4    # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
.LBB11_16:                              # %if.end.60
                                        #   in Loop: Header=BB11_8 Depth=1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm3, %xmm2
	ja	.LBB11_18
# BB#17:                                # %cond.false.64
                                        #   in Loop: Header=BB11_8 Depth=1
	decl	%edx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	minsd	%xmm3, %xmm2
.LBB11_18:                              # %cond.end.73
                                        #   in Loop: Header=BB11_8 Depth=1
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, 32(%rsp,%rax)
	addq	$4, %rax
	addq	$261, %rcx              # imm = 0x105
	cmpq	$16, %rax
	jne	.LBB11_8
# BB#19:                                # %for.end
	leaq	31448(%rbx), %rsi
	leaq	32(%rsp), %rdi
	leaq	26(%rsp), %rdx
	callq	gx_color_interpolate_linear
	movss	6416(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6420(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movswl	26(%rsp), %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movss	.LCPI11_1(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 8(%rsp)
	movss	6424(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6428(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movswl	28(%rsp), %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 12(%rsp)
	movss	6432(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6436(%rbx), %xmm2       # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	movswl	30(%rsp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 16(%rsp)
	movq	1008(%r13), %rbp
	cmpl	$0, 56(%rbp)
	jne	.LBB11_21
# BB#20:                                # %if.then.137
	addq	$6512, %rbx             # imm = 0x1970
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cie_lookup_mult3
	movq	1008(%r13), %rbp
	movss	16(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB11_21:                              # %if.end.138
	movq	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	*48(%rbp)
	jmp	.LBB11_22
.LBB11_2:                               # %if.end.thread
	movw	$0, 4(%r14)
	movl	$0, (%r14)
.LBB11_22:                              # %cleanup
	xorl	%eax, %eax
.LBB11_23:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gx_psconcretize_CIEDEFG, .Lfunc_end11-gx_psconcretize_CIEDEFG
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4643211215818981376     # double 256
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_1:
	.long	1191178240              # float 32760
	.text
	.globl	gx_psconcretize_CIEDEF
	.align	16, 0x90
	.type	gx_psconcretize_CIEDEF,@function
gx_psconcretize_CIEDEF:                 # @gx_psconcretize_CIEDEF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 96
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	72(%r15), %rbx
	cmpq	$0, 400(%r13)
	jne	.LBB12_3
# BB#1:                                 # %land.lhs.true.i
	cmpl	$0, 408(%r13)
	je	.LBB12_2
.LBB12_3:                               # %if.end.i
	movq	1008(%r13), %rax
	cmpl	$2, 20(%rax)
	jne	.LBB12_6
# BB#4:                                 # %if.then.4.i
	movq	(%rax), %rcx
	cmpq	32(%r15), %rcx
	je	.LBB12_7
# BB#5:                                 # %if.then.7.i
	movl	$0, 20(%rax)
.LBB12_6:                               # %if.then.15.i
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	gs_cie_jc_complete
	testl	%eax, %eax
	js	.LBB12_23
.LBB12_7:                               # %for.body.preheader
	xorl	%eax, %eax
	movl	$3937, %ecx             # imm = 0xF61
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB12_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	31428(%rbx,%rax), %edx
	movsd	-24(%rbx,%rcx,8), %xmm4 # xmm4 = mem[0],zero
	movss	8(%rbp,%rax), %xmm5     # xmm5 = mem[0],zero,zero,zero
	movss	31352(%rbx,%rax,2), %xmm3 # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm3
	xorpd	%xmm2, %xmm2
	ja	.LBB12_13
# BB#9:                                 # %cond.false
                                        #   in Loop: Header=BB12_8 Depth=1
	movss	31356(%rbx,%rax,2), %xmm2 # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm5
	ja	.LBB12_10
# BB#11:                                # %cond.false
                                        #   in Loop: Header=BB12_8 Depth=1
	cvtss2sd	%xmm3, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm5, %xmm2
	subsd	%xmm3, %xmm2
	jmp	.LBB12_12
	.align	16, 0x90
.LBB12_10:                              #   in Loop: Header=BB12_8 Depth=1
	subss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
.LBB12_12:                              # %cond.false
                                        #   in Loop: Header=BB12_8 Depth=1
	mulsd	%xmm4, %xmm2
.LBB12_13:                              # %cond.end.28
                                        #   in Loop: Header=BB12_8 Depth=1
	cvttsd2si	%xmm2, %esi
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%esi, %xmm5
	movslq	%esi, %rdi
	leaq	(%rbx,%rdi,4), %rdi
	movss	(%rdi,%rcx,8), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	ucomisd	%xmm5, %xmm4
	jbe	.LBB12_16
# BB#14:                                # %cond.end.28
                                        #   in Loop: Header=BB12_8 Depth=1
	subsd	%xmm5, %xmm2
	ucomisd	%xmm0, %xmm2
	jne	.LBB12_15
	jnp	.LBB12_16
.LBB12_15:                              # %if.then.47
                                        #   in Loop: Header=BB12_8 Depth=1
	incl	%esi
	movslq	%esi, %rsi
	leaq	(%rbx,%rsi,4), %rsi
	movss	(%rsi,%rcx,8), %xmm4    # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
.LBB12_16:                              # %if.end.60
                                        #   in Loop: Header=BB12_8 Depth=1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm3, %xmm2
	ja	.LBB12_18
# BB#17:                                # %cond.false.64
                                        #   in Loop: Header=BB12_8 Depth=1
	decl	%edx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	minsd	%xmm3, %xmm2
.LBB12_18:                              # %cond.end.73
                                        #   in Loop: Header=BB12_8 Depth=1
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, 28(%rsp,%rax)
	addq	$4, %rax
	addq	$261, %rcx              # imm = 0x105
	cmpq	$12, %rax
	jne	.LBB12_8
# BB#19:                                # %for.end
	leaq	31424(%rbx), %rsi
	leaq	28(%rsp), %rdi
	leaq	22(%rsp), %rdx
	callq	gx_color_interpolate_linear
	movss	6416(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6420(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movswl	22(%rsp), %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movss	.LCPI12_1(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 8(%rsp)
	movss	6424(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6428(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movswl	24(%rsp), %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 12(%rsp)
	movss	6432(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6436(%rbx), %xmm2       # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	movswl	26(%rsp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 16(%rsp)
	movq	1008(%r13), %rbp
	cmpl	$0, 56(%rbp)
	jne	.LBB12_21
# BB#20:                                # %if.then.137
	addq	$6512, %rbx             # imm = 0x1970
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cie_lookup_mult3
	movq	1008(%r13), %rbp
	movss	16(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB12_21:                              # %if.end.138
	movq	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	*48(%rbp)
	jmp	.LBB12_22
.LBB12_2:                               # %if.end.thread
	movw	$0, 4(%r14)
	movl	$0, (%r14)
.LBB12_22:                              # %cleanup
	xorl	%eax, %eax
.LBB12_23:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_psconcretize_CIEDEF, .Lfunc_end12-gx_psconcretize_CIEDEF
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_remap_CIEDEF
	.align	16, 0x90
	.type	gx_remap_CIEDEF,@function
gx_remap_CIEDEF:                        # @gx_remap_CIEDEF
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp106:
	.cfi_def_cfa_offset 336
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
	movl	%r9d, %r14d
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB13_1
# BB#2:                                 # %if.else
	movq	%rax, 272(%rsp)
	jmp	.LBB13_3
.LBB13_1:                               # %if.then
	movq	8(%r12), %rax
	movq	(%rax), %rdx
	leaq	272(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_ciedef_to_icc
.LBB13_3:                               # %if.end.5
	movq	72(%rbx), %rax
	movss	31352(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	31356(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB13_7
	jp	.LBB13_7
# BB#4:                                 # %if.end.5
	ucomiss	.LCPI13_0(%rip), %xmm1
	jne	.LBB13_7
	jp	.LBB13_7
# BB#5:                                 # %for.cond.i
	movss	31360(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB13_6
	jnp	.LBB13_9
.LBB13_6:
	movss	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB13_7
.LBB13_9:                               # %if.end.i.1
	movss	31364(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB13_7
	jp	.LBB13_7
# BB#10:                                # %for.cond.i.1
	movss	31368(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB13_7
	jp	.LBB13_7
# BB#11:                                # %if.end.i.2
	movss	31372(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB13_7
	jp	.LBB13_7
	jmp	.LBB13_12
.LBB13_7:                               # %if.end.9
	movss	8(%rbp), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	subss	%xmm0, %xmm1
	divss	%xmm1, %xmm2
	movss	%xmm2, 16(%rsp)
	movss	12(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31360(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	31364(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 20(%rsp)
	movss	16(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31368(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	31372(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 24(%rsp)
	movq	272(%rsp), %rsi
	movq	(%rsi), %rax
	leaq	8(%rsp), %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movl	%r14d, %r9d
	callq	*72(%rax)
	movl	8(%rbp), %ecx
	movl	%ecx, 376(%r13)
	movl	12(%rbp), %ecx
	movl	%ecx, 380(%r13)
	movl	16(%rbp), %ecx
	movl	%ecx, 384(%r13)
	movl	$1, 360(%r13)
.LBB13_8:                               # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_12:                              # %for.cond.i.2
	movq	272(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movl	%r14d, %r9d
	callq	*72(%rax)
	jmp	.LBB13_8
.Lfunc_end13:
	.size	gx_remap_CIEDEF, .Lfunc_end13-gx_remap_CIEDEF
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ciedef_to_icc,@function
gx_ciedef_to_icc:                       # @gx_ciedef_to_icc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp119:
	.cfi_def_cfa_offset 80
.Ltmp120:
	.cfi_offset %rbx, -56
.Ltmp121:
	.cfi_offset %r12, -48
.Ltmp122:
	.cfi_offset %r13, -40
.Ltmp123:
	.cfi_offset %r14, -32
.Ltmp124:
	.cfi_offset %r15, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	40(%r15), %r13
	movq	72(%r15), %r12
	movq	%r12, %r14
	subq	$-128, %r14
	leaq	6512(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addq	$31456, %r12            # imm = 0x7AE0
	movq	(%rdx), %rdx
	xorl	%esi, %esi
	callq	gs_cspace_build_ICC
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB14_2
# BB#1:                                 # %if.then
	movl	$.L__func__.gx_ciedef_to_icc, %edi
	movl	$.L.str, %esi
	movl	$524, %edx              # imm = 0x20C
	movl	$1, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB14_2:                               # %if.end
	movq	(%rbx), %rax
	movq	%r13, 40(%rax)
	movq	%r13, %rdi
	callq	rc_increment_cs
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	gsicc_profile_new
	movq	(%rbx), %rcx
	movq	%rax, 64(%rcx)
	movq	(%rbx), %rax
	movq	64(%rax), %rdx
	leaq	256(%rdx), %rsi
	addq	$220, %rdx
	movq	%r12, (%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rcx
	movq	8(%rsp), %r8            # 8-byte Reload
	movq	%r14, %r9
	callq	gsicc_create_fromdef
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB14_4
# BB#3:                                 # %if.then.15
	movl	$.L__func__.gx_ciedef_to_icc, %edi
	movl	$.L.str, %esi
	movl	$533, %edx              # imm = 0x215
	movl	$1, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB14_4:                               # %if.end.17
	movq	(%rbx), %rax
	movq	64(%rax), %rdi
	callq	gsicc_init_profile_info
	movq	(%rbx), %rax
	movq	64(%rax), %rcx
	movl	$15, 12(%rcx)
	movq	%rax, 48(%r15)
	movl	$0, 16(%rcx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gx_ciedef_to_icc, .Lfunc_end14-gx_ciedef_to_icc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI15_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_concretize_CIEDEF
	.align	16, 0x90
	.type	gx_concretize_CIEDEF,@function
gx_concretize_CIEDEF:                   # @gx_concretize_CIEDEF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 48
	subq	$272, %rsp              # imm = 0x110
.Ltmp131:
	.cfi_def_cfa_offset 320
.Ltmp132:
	.cfi_offset %rbx, -48
.Ltmp133:
	.cfi_offset %r12, -40
.Ltmp134:
	.cfi_offset %r13, -32
.Ltmp135:
	.cfi_offset %r14, -24
.Ltmp136:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB15_1
# BB#2:                                 # %if.else
	movq	%rax, 264(%rsp)
	jmp	.LBB15_3
.LBB15_1:                               # %if.then
	movq	8(%r12), %rax
	movq	(%rax), %rdx
	leaq	264(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_ciedef_to_icc
.LBB15_3:                               # %if.end.5
	movq	72(%rbx), %rax
	movss	31352(%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	31356(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB15_7
	jp	.LBB15_7
# BB#4:                                 # %if.end.5
	ucomiss	.LCPI15_0(%rip), %xmm1
	jne	.LBB15_7
	jp	.LBB15_7
# BB#5:                                 # %for.cond.i
	movss	31360(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB15_6
	jnp	.LBB15_9
.LBB15_6:
	movss	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB15_7
.LBB15_9:                               # %if.end.i.1
	movss	31364(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB15_7
	jp	.LBB15_7
# BB#10:                                # %for.cond.i.1
	movss	31368(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB15_7
	jp	.LBB15_7
# BB#11:                                # %if.end.i.2
	movss	31372(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB15_7
	jp	.LBB15_7
	jmp	.LBB15_12
.LBB15_7:                               # %if.end.9
	movss	8(%r13), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	subss	%xmm0, %xmm1
	divss	%xmm1, %xmm2
	movss	%xmm2, 8(%rsp)
	movss	12(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31360(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	31364(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 12(%rsp)
	movss	16(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	31368(%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	movss	31372(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 16(%rsp)
	movq	264(%rsp), %rsi
	movq	(%rsi), %rax
	leaq	(%rsp), %rdi
.LBB15_8:                               # %cleanup
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	*56(%rax)
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB15_12:                              # %for.cond.i.2
	movq	264(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%r13, %rdi
	jmp	.LBB15_8
.Lfunc_end15:
	.size	gx_concretize_CIEDEF, .Lfunc_end15-gx_concretize_CIEDEF
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI16_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_remap_CIEABC
	.align	16, 0x90
	.type	gx_remap_CIEABC,@function
gx_remap_CIEABC:                        # @gx_remap_CIEABC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp143:
	.cfi_def_cfa_offset 336
.Ltmp144:
	.cfi_offset %rbx, -56
.Ltmp145:
	.cfi_offset %r12, -48
.Ltmp146:
	.cfi_offset %r13, -40
.Ltmp147:
	.cfi_offset %r14, -32
.Ltmp148:
	.cfi_offset %r15, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB16_1
# BB#2:                                 # %if.else
	movq	%rax, 272(%rsp)
	jmp	.LBB16_3
.LBB16_1:                               # %if.then
	movq	8(%r12), %rax
	movq	(%rax), %rcx
	leaq	272(%rsp), %rdi
	leaq	4(%rsp), %rdx
	movq	%rbx, %rsi
	callq	gx_cieabc_to_icc
.LBB16_3:                               # %if.end.5
	movq	72(%rbx), %rax
	movss	6416(%rax), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6420(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB16_7
	jp	.LBB16_7
# BB#4:                                 # %if.end.5
	ucomiss	.LCPI16_0(%rip), %xmm1
	jne	.LBB16_7
	jp	.LBB16_7
# BB#5:                                 # %for.cond.i
	movss	6424(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB16_6
	jnp	.LBB16_9
.LBB16_6:
	movss	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB16_7
.LBB16_9:                               # %if.end.i.1
	movss	6428(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB16_7
	jp	.LBB16_7
# BB#10:                                # %for.cond.i.1
	movss	6432(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB16_7
	jp	.LBB16_7
# BB#11:                                # %if.end.i.2
	movss	6436(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB16_7
	jp	.LBB16_7
	jmp	.LBB16_12
.LBB16_7:                               # %if.end.9
	movss	8(%rbp), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	subss	%xmm0, %xmm1
	divss	%xmm1, %xmm2
	movss	%xmm2, 16(%rsp)
	movss	12(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	6424(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	6428(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 20(%rsp)
	movss	16(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	6432(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	6436(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 24(%rsp)
	movq	272(%rsp), %rsi
	movq	(%rsi), %rax
	leaq	8(%rsp), %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movl	%r14d, %r9d
	callq	*72(%rax)
	movl	8(%rbp), %ecx
	movl	%ecx, 376(%r13)
	movl	12(%rbp), %ecx
	movl	%ecx, 380(%r13)
	movl	16(%rbp), %ecx
	movl	%ecx, 384(%r13)
	movl	$1, 360(%r13)
.LBB16_8:                               # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_12:                              # %for.cond.i.2
	movq	272(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movl	%r14d, %r9d
	callq	*72(%rax)
	jmp	.LBB16_8
.Lfunc_end16:
	.size	gx_remap_CIEABC, .Lfunc_end16-gx_remap_CIEABC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_cieabc_to_icc,@function
gx_cieabc_to_icc:                       # @gx_cieabc_to_icc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp151:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp153:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp154:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp156:
	.cfi_def_cfa_offset 80
.Ltmp157:
	.cfi_offset %rbx, -56
.Ltmp158:
	.cfi_offset %r12, -48
.Ltmp159:
	.cfi_offset %r13, -40
.Ltmp160:
	.cfi_offset %r14, -32
.Ltmp161:
	.cfi_offset %r15, -24
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	40(%r14), %r13
	movq	72(%r14), %rbx
	leaq	6512(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	subq	$-128, %rbx
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	gs_cspace_build_ICC
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB17_2
# BB#1:                                 # %if.then
	movl	$.L__func__.gx_cieabc_to_icc, %edi
	movl	$.L.str, %esi
	movl	$630, %edx              # imm = 0x276
	movl	$1, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB17_2:                               # %if.end
	movq	(%r12), %rax
	movq	%r13, 40(%rax)
	movq	%r13, %rdi
	callq	rc_increment_cs
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	callq	gsicc_profile_new
	movq	(%r12), %rcx
	movq	%rax, 64(%rcx)
	movq	(%r12), %rax
	movq	64(%rax), %rdx
	leaq	256(%rdx), %rsi
	addq	$220, %rdx
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	%r15, %rcx
	movq	16(%rsp), %r8           # 8-byte Reload
	movq	%rbx, %r9
	callq	gsicc_create_fromabc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB17_4
# BB#3:                                 # %if.then.13
	movl	$.L__func__.gx_cieabc_to_icc, %edi
	movl	$.L.str, %esi
	movl	$639, %edx              # imm = 0x27F
	movl	$1, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB17_4:                               # %if.end.15
	movq	(%r12), %rax
	movq	64(%rax), %rdi
	callq	gsicc_init_profile_info
	movq	(%r12), %rax
	movq	64(%rax), %rcx
	movl	$14, 12(%rcx)
	movq	%rax, 48(%r14)
	movl	$2, 16(%rcx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gx_cieabc_to_icc, .Lfunc_end17-gx_cieabc_to_icc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_concretize_CIEABC
	.align	16, 0x90
	.type	gx_concretize_CIEABC,@function
gx_concretize_CIEABC:                   # @gx_concretize_CIEABC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp165:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp166:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 48
	subq	$288, %rsp              # imm = 0x120
.Ltmp168:
	.cfi_def_cfa_offset 336
.Ltmp169:
	.cfi_offset %rbx, -48
.Ltmp170:
	.cfi_offset %r12, -40
.Ltmp171:
	.cfi_offset %r13, -32
.Ltmp172:
	.cfi_offset %r14, -24
.Ltmp173:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB18_1
# BB#2:                                 # %if.else
	movq	%rax, 280(%rsp)
	jmp	.LBB18_3
.LBB18_1:                               # %if.then
	movq	8(%r12), %rax
	movq	(%rax), %rcx
	leaq	280(%rsp), %rdi
	leaq	12(%rsp), %rdx
	movq	%rbx, %rsi
	callq	gx_cieabc_to_icc
.LBB18_3:                               # %if.end.5
	movq	72(%rbx), %rax
	movss	6416(%rax), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6420(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB18_7
	jp	.LBB18_7
# BB#4:                                 # %if.end.5
	ucomiss	.LCPI18_0(%rip), %xmm1
	jne	.LBB18_7
	jp	.LBB18_7
# BB#5:                                 # %for.cond.i
	movss	6424(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB18_6
	jnp	.LBB18_9
.LBB18_6:
	movss	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB18_7
.LBB18_9:                               # %if.end.i.1
	movss	6428(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB18_7
	jp	.LBB18_7
# BB#10:                                # %for.cond.i.1
	movss	6432(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB18_7
	jp	.LBB18_7
# BB#11:                                # %if.end.i.2
	movss	6436(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB18_7
	jp	.LBB18_7
	jmp	.LBB18_12
.LBB18_7:                               # %if.end.9
	movss	8(%r13), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	subss	%xmm0, %xmm1
	divss	%xmm1, %xmm2
	movss	%xmm2, 24(%rsp)
	movss	12(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	6424(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	6428(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 28(%rsp)
	movss	16(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	6432(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	6436(%rax), %xmm2       # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 32(%rsp)
	movq	280(%rsp), %rsi
	movq	(%rsi), %rax
	leaq	16(%rsp), %rdi
.LBB18_8:                               # %cleanup
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	*56(%rax)
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB18_12:                              # %for.cond.i.2
	movq	280(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%r13, %rdi
	jmp	.LBB18_8
.Lfunc_end18:
	.size	gx_concretize_CIEABC, .Lfunc_end18-gx_concretize_CIEABC
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_remap_CIEA
	.align	16, 0x90
	.type	gx_remap_CIEA,@function
gx_remap_CIEA:                          # @gx_remap_CIEA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp177:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp178:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp180:
	.cfi_def_cfa_offset 336
.Ltmp181:
	.cfi_offset %rbx, -56
.Ltmp182:
	.cfi_offset %r12, -48
.Ltmp183:
	.cfi_offset %r13, -40
.Ltmp184:
	.cfi_offset %r14, -32
.Ltmp185:
	.cfi_offset %r15, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movq	48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB19_1
# BB#2:                                 # %if.else
	movq	%rax, 272(%rsp)
	jmp	.LBB19_3
.LBB19_1:                               # %if.then
	movq	8(%r12), %rax
	movq	(%rax), %rdx
	leaq	272(%rsp), %rdi
	movq	%rbp, %rsi
	callq	gx_ciea_to_icc
.LBB19_3:                               # %if.end.5
	movq	72(%rbp), %rax
	movss	6416(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	6420(%rax), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB19_6
	jp	.LBB19_6
# BB#4:                                 # %if.end.5
	ucomiss	.LCPI19_0(%rip), %xmm0
	jne	.LBB19_6
	jp	.LBB19_6
# BB#5:                                 # %for.cond.i
	movq	272(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movl	%r14d, %r9d
	callq	*72(%rax)
	jmp	.LBB19_7
.LBB19_6:                               # %if.end.9
	movss	8(%r13), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	subss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movss	%xmm2, 16(%rsp)
	movq	272(%rsp), %rsi
	movq	(%rsi), %rax
	leaq	8(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movl	%r14d, %r9d
	callq	*72(%rax)
	movl	8(%r13), %ecx
	movl	%ecx, 376(%rbx)
	movl	$1, 360(%rbx)
.LBB19_7:                               # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gx_remap_CIEA, .Lfunc_end19-gx_remap_CIEA
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ciea_to_icc,@function
gx_ciea_to_icc:                         # @gx_ciea_to_icc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp189:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp190:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp191:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp193:
	.cfi_def_cfa_offset 64
.Ltmp194:
	.cfi_offset %rbx, -56
.Ltmp195:
	.cfi_offset %r12, -48
.Ltmp196:
	.cfi_offset %r13, -40
.Ltmp197:
	.cfi_offset %r14, -32
.Ltmp198:
	.cfi_offset %r15, -24
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	40(%r14), %r13
	movq	72(%r14), %rbx
	leaq	6448(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	subq	$-128, %rbx
	xorl	%esi, %esi
	callq	gs_cspace_build_ICC
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB20_2
# BB#1:                                 # %if.then
	movl	$.L__func__.gx_ciea_to_icc, %edi
	movl	$.L.str, %esi
	movl	$740, %edx              # imm = 0x2E4
	movl	$1, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB20_2:                               # %if.end
	movq	(%r12), %rax
	movq	%r13, 40(%rax)
	movq	%r13, %rdi
	callq	rc_increment_cs
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	callq	gsicc_profile_new
	movq	(%r12), %rcx
	movq	%rax, 64(%rcx)
	movq	(%r12), %rax
	movq	64(%rax), %rdx
	leaq	256(%rdx), %rsi
	addq	$220, %rdx
	movq	%r14, %rdi
	movq	%r15, %rcx
	movq	(%rsp), %r8             # 8-byte Reload
	movq	%rbx, %r9
	callq	gsicc_create_froma
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB20_4
# BB#3:                                 # %if.then.11
	movl	$.L__func__.gx_ciea_to_icc, %edi
	movl	$.L.str, %esi
	movl	$749, %edx              # imm = 0x2ED
	movl	$1, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB20_4:                               # %if.end.13
	movq	(%r12), %rax
	movq	64(%rax), %rdi
	callq	gsicc_init_profile_info
	movq	(%r12), %rax
	movq	64(%rax), %rcx
	movl	$13, 12(%rcx)
	movq	%rax, 48(%r14)
	movl	$1, 16(%rcx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gx_ciea_to_icc, .Lfunc_end20-gx_ciea_to_icc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI21_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_concretize_CIEA
	.align	16, 0x90
	.type	gx_concretize_CIEA,@function
gx_concretize_CIEA:                     # @gx_concretize_CIEA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp200:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp201:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp202:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp203:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp204:
	.cfi_def_cfa_offset 48
	subq	$272, %rsp              # imm = 0x110
.Ltmp205:
	.cfi_def_cfa_offset 320
.Ltmp206:
	.cfi_offset %rbx, -48
.Ltmp207:
	.cfi_offset %r12, -40
.Ltmp208:
	.cfi_offset %r13, -32
.Ltmp209:
	.cfi_offset %r14, -24
.Ltmp210:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB21_1
# BB#2:                                 # %if.else
	movq	%rax, 264(%rsp)
	jmp	.LBB21_3
.LBB21_1:                               # %if.then
	movq	8(%r12), %rax
	movq	(%rax), %rdx
	leaq	264(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_ciea_to_icc
.LBB21_3:                               # %if.end.5
	movq	72(%rbx), %rax
	movss	6416(%rax), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	6420(%rax), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB21_6
	jp	.LBB21_6
# BB#4:                                 # %if.end.5
	ucomiss	.LCPI21_0(%rip), %xmm0
	jne	.LBB21_6
	jp	.LBB21_6
# BB#5:                                 # %for.cond.i
	movq	264(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%r13, %rdi
	jmp	.LBB21_7
.LBB21_6:                               # %if.end.9
	movss	8(%r13), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	subss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movss	%xmm2, 8(%rsp)
	movq	264(%rsp), %rsi
	movq	(%rsi), %rax
	leaq	(%rsp), %rdi
.LBB21_7:                               # %cleanup
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	*56(%rax)
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	gx_concretize_CIEA, .Lfunc_end21-gx_concretize_CIEA
	.cfi_endproc

	.globl	gs_colorspace_set_icc_equivalent
	.align	16, 0x90
	.type	gs_colorspace_set_icc_equivalent,@function
gs_colorspace_set_icc_equivalent:       # @gs_colorspace_set_icc_equivalent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp211:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp212:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp213:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp214:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp215:
	.cfi_def_cfa_offset 48
.Ltmp216:
	.cfi_offset %rbx, -40
.Ltmp217:
	.cfi_offset %r12, -32
.Ltmp218:
	.cfi_offset %r14, -24
.Ltmp219:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %r12d
	movl	$0, (%r14)
	cmpq	$0, 48(%rbx)
	jne	.LBB22_8
# BB#1:                                 # %lor.lhs.false
	movq	%rbx, %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	je	.LBB22_8
# BB#2:                                 # %if.end
	addl	$-5, %r12d
	cmpl	$3, %r12d
	ja	.LBB22_8
# BB#3:                                 # %if.end
	jmpq	*.LJTI22_0(,%r12,8)
.LBB22_4:                               # %sw.bb
	movq	(%r15), %rdx
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_ciedefg_to_icc
	jmp	.LBB22_8
.LBB22_5:                               # %sw.bb.3
	movq	(%r15), %rdx
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_ciedef_to_icc
	jmp	.LBB22_8
.LBB22_6:                               # %sw.bb.6
	movq	(%r15), %rcx
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	gx_cieabc_to_icc
	jmp	.LBB22_8
.LBB22_7:                               # %sw.bb.9
	movq	(%r15), %rdx
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_ciea_to_icc
.LBB22_8:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	gs_colorspace_set_icc_equivalent, .Lfunc_end22-gs_colorspace_set_icc_equivalent
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_4
	.quad	.LBB22_5
	.quad	.LBB22_6
	.quad	.LBB22_7

	.text
	.globl	gx_cie_remap_finish
	.align	16, 0x90
	.type	gx_cie_remap_finish,@function
gx_cie_remap_finish:                    # @gx_cie_remap_finish
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1008(%rdx), %rax
	movq	48(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end23:
	.size	gx_cie_remap_finish, .Lfunc_end23-gx_cie_remap_finish
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI24_0:
	.long	1149239296              # float 1024
	.text
	.globl	gx_cie_real_remap_finish
	.align	16, 0x90
	.type	gx_cie_real_remap_finish,@function
gx_cie_real_remap_finish:               # @gx_cie_real_remap_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp221:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp222:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp223:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp224:
	.cfi_def_cfa_offset 80
.Ltmp225:
	.cfi_offset %rbx, -40
.Ltmp226:
	.cfi_offset %r14, -32
.Ltmp227:
	.cfi_offset %r15, -24
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movlps	%xmm0, 24(%rsp)
	movss	%xmm1, 32(%rsp)
	movq	400(%rdx), %rbx
	movq	1008(%rdx), %rbp
	movq	376(%rbx), %r15
	cmpl	$0, 60(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	leaq	64(%rbp), %rsi
	leaq	24(%rsp), %rdi
	callq	cie_lookup_mult3
.LBB24_2:                               # %if.end
	cmpl	$0, 25000(%rbp)
	jne	.LBB24_4
# BB#3:                                 # %if.then.3
	leaq	25008(%rbp), %rsi
	leaq	24(%rsp), %rdi
	callq	cie_lookup_mult3
.LBB24_4:                               # %if.end.4
	cmpl	$0, 49848(%rbp)
	jne	.LBB24_6
# BB#5:                                 # %if.then.6
	leaq	584(%rbx), %rsi
	leaq	24(%rsp), %rdi
	callq	cie_lookup_mult3
.LBB24_6:                               # %do.body
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	504(%rbx), %xmm0
	mulss	.LCPI24_0(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	cmpl	$523265, %edx           # imm = 0x7FC01
	jb	.LBB24_8
# BB#7:                                 # %if.then.11
	sarl	$31, %edx
	andl	$-523264, %edx          # imm = 0xFFFFFFFFFFF80400
	addl	$523264, %edx           # imm = 0x7FC00
.LBB24_8:                               # %do.body.17
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	508(%rbx), %xmm0
	mulss	.LCPI24_0(%rip), %xmm0
	cvttss2si	%xmm0, %ecx
	cmpl	$523265, %ecx           # imm = 0x7FC01
	jb	.LBB24_10
# BB#9:                                 # %if.then.27
	sarl	$31, %ecx
	andl	$-523264, %ecx          # imm = 0xFFFFFFFFFFF80400
	addl	$523264, %ecx           # imm = 0x7FC00
.LBB24_10:                              # %do.body.36
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	512(%rbx), %xmm0
	mulss	.LCPI24_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	cmpl	$523265, %eax           # imm = 0x7FC01
	jb	.LBB24_12
# BB#11:                                # %if.then.46
	sarl	$31, %eax
	andl	$-523264, %eax          # imm = 0xFFFFFFFFFFF80400
	addl	$523264, %eax           # imm = 0x7FC00
.LBB24_12:                              # %do.end.54
	testq	%r15, %r15
	je	.LBB24_13
# BB#23:                                # %if.else
	movl	372(%rbx), %ebp
	cmpl	$523264, %edx           # imm = 0x7FC00
	jl	.LBB24_25
# BB#24:                                # %cond.true.236
	movl	29596(%rbx), %edx
	jmp	.LBB24_26
.LBB24_13:                              # %if.then.57
	cmpl	$523264, %edx           # imm = 0x7FC00
	jl	.LBB24_15
# BB#14:                                # %cond.true
	movswl	28574(%rbx), %edx
	jmp	.LBB24_16
.LBB24_25:                              # %cond.false.243
	movl	%edx, %esi
	sarl	$10, %esi
	movslq	%esi, %rsi
	leal	1(%rsi), %edi
	movslq	%edi, %rdi
	movl	27552(%rbx,%rdi,4), %edi
	movl	27552(%rbx,%rsi,4), %esi
	subl	%esi, %edi
	andl	$1023, %edx             # imm = 0x3FF
	imull	%edi, %edx
	shrl	$10, %edx
	movswl	%dx, %edx
	addl	%esi, %edx
.LBB24_26:                              # %cond.end.285
	sarl	$2, %edx
	movl	%edx, 12(%rsp)
	cmpl	$523264, %ecx           # imm = 0x7FC00
	jl	.LBB24_28
# BB#27:                                # %cond.true.292
	movl	33772(%rbx), %ecx
	jmp	.LBB24_29
.LBB24_28:                              # %cond.false.300
	movl	%ecx, %edx
	sarl	$10, %edx
	movslq	%edx, %rdx
	leal	1(%rdx), %esi
	movslq	%esi, %rsi
	movl	31728(%rbx,%rsi,4), %esi
	movl	31728(%rbx,%rdx,4), %edx
	subl	%edx, %esi
	andl	$1023, %ecx             # imm = 0x3FF
	imull	%esi, %ecx
	shrl	$10, %ecx
	movswl	%cx, %ecx
	addl	%edx, %ecx
.LBB24_29:                              # %cond.end.342
	leaq	352(%rbx), %rsi
	sarl	$2, %ecx
	movl	%ecx, 16(%rsp)
	cmpl	$523264, %eax           # imm = 0x7FC00
	jl	.LBB24_31
# BB#30:                                # %cond.true.349
	movl	37948(%rbx), %eax
	jmp	.LBB24_32
.LBB24_31:                              # %cond.false.357
	movl	%eax, %ecx
	sarl	$10, %ecx
	movslq	%ecx, %rcx
	leal	1(%rcx), %edx
	movslq	%edx, %rdx
	movl	35904(%rbx,%rdx,4), %edx
	movl	35904(%rbx,%rcx,4), %ecx
	subl	%ecx, %edx
	andl	$1023, %eax             # imm = 0x3FF
	imull	%edx, %eax
	shrl	$10, %eax
	cwtl
	addl	%ecx, %eax
.LBB24_32:                              # %cond.end.399
	sarl	$2, %eax
	movl	%eax, 20(%rsp)
	leaq	12(%rsp), %rdi
	movq	%r14, %rdx
	callq	gx_color_interpolate_linear
	cmpl	$0, 46304(%rbx)
	jne	.LBB24_35
# BB#33:                                # %if.then.413
	movswl	(%r14), %eax
	movl	%eax, %ecx
	sarl	$12, %ecx
	addl	%eax, %ecx
	sarl	$6, %ecx
	movw	37992(%rbx,%rcx,2), %ax
	movw	%ax, (%r14)
	movswl	2(%r14), %eax
	movl	%eax, %ecx
	sarl	$12, %ecx
	addl	%eax, %ecx
	sarl	$6, %ecx
	movw	40080(%rbx,%rcx,2), %ax
	movw	%ax, 2(%r14)
	movswl	4(%r14), %eax
	movl	%eax, %ecx
	sarl	$12, %ecx
	addl	%eax, %ecx
	sarl	$6, %ecx
	movw	42168(%rbx,%rcx,2), %ax
	movw	%ax, 4(%r14)
	cmpl	$4, %ebp
	jl	.LBB24_35
# BB#34:                                # %if.then.460
	movswl	6(%r14), %eax
	movl	%eax, %ecx
	sarl	$12, %ecx
	addl	%eax, %ecx
	sarl	$6, %ecx
	movw	44256(%rbx,%rcx,2), %ax
	movw	%ax, 6(%r14)
	jmp	.LBB24_35
.LBB24_15:                              # %cond.false
	movl	%edx, %esi
	sarl	$10, %esi
	movslq	%esi, %rsi
	movswl	27552(%rbx,%rsi,2), %edi
	incl	%esi
	movslq	%esi, %rsi
	movswl	27552(%rbx,%rsi,2), %esi
	subl	%edi, %esi
	andl	$1023, %edx             # imm = 0x3FF
	imull	%esi, %edx
	shrl	$10, %edx
	movswl	%dx, %edx
	addl	%edi, %edx
.LBB24_16:                              # %cond.end
	movw	%dx, (%r14)
	cmpl	$523264, %ecx           # imm = 0x7FC00
	jl	.LBB24_18
# BB#17:                                # %cond.true.111
	movswl	32750(%rbx), %ecx
	jmp	.LBB24_19
.LBB24_18:                              # %cond.false.120
	movl	%ecx, %edx
	sarl	$10, %edx
	movslq	%edx, %rdx
	movswl	31728(%rbx,%rdx,2), %esi
	incl	%edx
	movslq	%edx, %rdx
	movswl	31728(%rbx,%rdx,2), %edx
	subl	%esi, %edx
	andl	$1023, %ecx             # imm = 0x3FF
	imull	%edx, %ecx
	shrl	$10, %ecx
	movswl	%cx, %ecx
	addl	%esi, %ecx
.LBB24_19:                              # %cond.end.165
	movw	%cx, 2(%r14)
	cmpl	$523264, %eax           # imm = 0x7FC00
	jl	.LBB24_21
# BB#20:                                # %cond.true.172
	movswl	36926(%rbx), %eax
	jmp	.LBB24_22
.LBB24_21:                              # %cond.false.181
	movl	%eax, %ecx
	sarl	$10, %ecx
	movslq	%ecx, %rcx
	movswl	35904(%rbx,%rcx,2), %edx
	incl	%ecx
	movslq	%ecx, %rcx
	movswl	35904(%rbx,%rcx,2), %ecx
	subl	%edx, %ecx
	andl	$1023, %eax             # imm = 0x3FF
	imull	%ecx, %eax
	shrl	$10, %eax
	cwtl
	addl	%edx, %eax
.LBB24_22:                              # %cond.end.226
	movw	%ax, 4(%r14)
	movl	$3, %ebp
.LBB24_35:                              # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gx_cie_real_remap_finish, .Lfunc_end24-gx_cie_real_remap_finish
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4607182418800017408     # double 1
.LCPI25_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI25_2:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gx_cie_xyz_remap_finish
	.align	16, 0x90
	.type	gx_cie_xyz_remap_finish,@function
gx_cie_xyz_remap_finish:                # @gx_cie_xyz_remap_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp229:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp230:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp231:
	.cfi_def_cfa_offset 48
.Ltmp232:
	.cfi_offset %rbx, -24
.Ltmp233:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movlps	%xmm0, 8(%rsp)
	movss	%xmm1, 16(%rsp)
	movq	1008(%rdx), %rsi
	cmpl	$0, 60(%rsi)
	je	.LBB25_2
# BB#1:                                 # %entry.if.end_crit_edge
	movd	%xmm0, %rcx
	movd	%xmm1, %eax
	jmp	.LBB25_3
.LBB25_2:                               # %if.then
	addq	$64, %rsi
	leaq	8(%rsp), %rdi
	callq	cie_lookup_mult3
	movq	8(%rsp), %rcx
	movl	16(%rsp), %eax
.LBB25_3:                               # %if.end
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movl	%ecx, (%rbx)
	movl	%edx, 4(%rbx)
	movl	%eax, 8(%rbx)
	movd	%ecx, %xmm1
	movd	%edx, %xmm0
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jae	.LBB25_4
# BB#5:                                 # %cond.false.i
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI25_0(%rip), %xmm3  # xmm3 = mem[0],zero
	minsd	%xmm1, %xmm3
	addsd	.LCPI25_1(%rip), %xmm3
	mulsd	.LCPI25_2(%rip), %xmm3
	cvttsd2si	%xmm3, %ecx
	jmp	.LBB25_6
.LBB25_4:
	xorl	%ecx, %ecx
.LBB25_6:                               # %float2frac_clamp.exit
	movd	%eax, %xmm1
	movw	%cx, (%r14)
	ucomiss	%xmm0, %xmm2
	jae	.LBB25_7
# BB#8:                                 # %cond.false.i.26
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI25_0(%rip), %xmm2  # xmm2 = mem[0],zero
	minsd	%xmm0, %xmm2
	addsd	.LCPI25_1(%rip), %xmm2
	mulsd	.LCPI25_2(%rip), %xmm2
	cvttsd2si	%xmm2, %eax
	jmp	.LBB25_9
.LBB25_7:
	xorl	%eax, %eax
.LBB25_9:                               # %float2frac_clamp.exit28
	movw	%ax, 2(%r14)
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jae	.LBB25_10
# BB#11:                                # %cond.false.i.17
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	.LCPI25_0(%rip), %xmm1  # xmm1 = mem[0],zero
	minsd	%xmm0, %xmm1
	addsd	.LCPI25_1(%rip), %xmm1
	mulsd	.LCPI25_2(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	jmp	.LBB25_12
.LBB25_10:
	xorl	%eax, %eax
.LBB25_12:                              # %float2frac_clamp.exit19
	movw	%ax, 4(%r14)
	movl	$3, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	gx_cie_xyz_remap_finish, .Lfunc_end25-gx_cie_xyz_remap_finish
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./base/gsciemap.c"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Failed to create ICC profile from CIEDEFG"
	.size	.L.str.1, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Failed to build ICC profile from CIEDEF"
	.size	.L.str.2, 40

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Failed to create ICC profile from CIEA"
	.size	.L.str.4, 39

	.type	.L__func__.gx_ciedefg_to_icc,@object # @__func__.gx_ciedefg_to_icc
.L__func__.gx_ciedefg_to_icc:
	.asciz	"gx_ciedefg_to_icc"
	.size	.L__func__.gx_ciedefg_to_icc, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Failed to build ICC color space"
	.size	.L.str.5, 32

	.type	.L__func__.gx_ciedef_to_icc,@object # @__func__.gx_ciedef_to_icc
.L__func__.gx_ciedef_to_icc:
	.asciz	"gx_ciedef_to_icc"
	.size	.L__func__.gx_ciedef_to_icc, 17

	.type	.L__func__.gx_cieabc_to_icc,@object # @__func__.gx_cieabc_to_icc
.L__func__.gx_cieabc_to_icc:
	.asciz	"gx_cieabc_to_icc"
	.size	.L__func__.gx_cieabc_to_icc, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Failed to create ICC profile"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Failed to build ICC profile from CIEABC"
	.size	.L.str.7, 40

	.type	.L__func__.gx_ciea_to_icc,@object # @__func__.gx_ciea_to_icc
.L__func__.gx_ciea_to_icc:
	.asciz	"gx_ciea_to_icc"
	.size	.L__func__.gx_ciea_to_icc, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
