	.text
	.file	"zcolor.bc"
	.globl	zcolor_remap_one
	.align	16, 0x90
	.type	zcolor_remap_one,@function
zcolor_remap_one:                       # @zcolor_remap_one
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
	movq	%r8, %r14
	movq	%rdi, %rbx
	cmpl	$0, 4(%rsi)
	je	.LBB0_1
# BB#2:                                 # %if.end
	movq	624(%rbx), %rax
	leaq	64(%rax), %rdi
	movq	%rdi, 624(%rbx)
	movl	$0, 24(%rax)
	movw	$4096, 16(%rax)         # imm = 0x1000
	movq	$255, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movl	$1065353216, 56(%rax)   # imm = 0x3F800000
	movw	$4096, 48(%rax)         # imm = 0x1000
	movups	(%rsi), %xmm0
	movups	%xmm0, 64(%rax)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rsi
	movq	%rsi, 520(%rbx)
	movq	%rdx, 24(%rax)
	movq	8(%rcx), %rdi
	callq	imemory_space
	addl	$2048, %eax             # imm = 0x800
	movq	520(%rbx), %rcx
	movw	%ax, (%rcx)
	leaq	16(%rcx), %rax
	movq	%rax, 520(%rbx)
	movq	%r14, 24(%rcx)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$zfor_samples, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	jmp	.LBB0_3
.LBB0_1:                                # %if.then
	movq	%rdx, %rdi
	callq	gx_set_identity_transfer
.LBB0_3:                                # %cleanup
	movl	$5, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	zcolor_remap_one, .Lfunc_end0-zcolor_remap_one
	.cfi_endproc

	.globl	zcolor_remap_one_finish
	.align	16, 0x90
	.type	zcolor_remap_one_finish,@function
zcolor_remap_one_finish:                # @zcolor_remap_one_finish
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	jmp	zcolor_remap_one_store  # TAILCALL
.Lfunc_end1:
	.size	zcolor_remap_one_finish, .Lfunc_end1-zcolor_remap_one_finish
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI2_1:
	.quad	4674734214187319296     # double 32760
.LCPI2_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	zcolor_remap_one_store,@function
zcolor_remap_one_store:                 # @zcolor_remap_one_store
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
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	8(%rax), %r13
	leaq	624(%rbx), %r15
	movq	%r15, %rdi
	callq	ref_stack_count
	movl	%eax, %ecx
	movl	$-17, %eax
	cmpl	$256, %ecx              # imm = 0x100
	jb	.LBB2_8
# BB#1:                                 # %for.cond.preheader
	movq	%rbx, (%rsp)            # 8-byte Spill
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	.LCPI2_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ebp
	xorl	%r14d, %r14d
	movl	$255, %ebx
	leaq	16(%rsp), %r12
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB2_8
# BB#3:                                 # %if.end.10
                                        #   in Loop: Header=BB2_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movw	%bp, %ax
	ja	.LBB2_6
# BB#4:                                 # %cond.false
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$32760, %ax             # imm = 0x7FF8
	ucomisd	.LCPI2_2(%rip), %xmm0
	jae	.LBB2_6
# BB#5:                                 # %cond.false.18
                                        #   in Loop: Header=BB2_2 Depth=1
	addsd	.LCPI2_0(%rip), %xmm0
	mulsd	.LCPI2_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB2_6:                                # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	%ax, 56(%r13,%r14,2)
	incq	%r14
	decq	%rbx
	cmpq	$256, %r14              # imm = 0x100
	jl	.LBB2_2
# BB#7:                                 # %for.end
	movl	$256, %esi              # imm = 0x100
	movq	%r15, %rdi
	callq	ref_stack_pop
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$-16, 520(%rax)
	movl	$14, %eax
.LBB2_8:                                # %cleanup.32
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zcolor_remap_one_store, .Lfunc_end2-zcolor_remap_one_store
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	zcolor_remap_one_signed_finish
	.align	16, 0x90
	.type	zcolor_remap_one_signed_finish,@function
zcolor_remap_one_signed_finish:         # @zcolor_remap_one_signed_finish
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	zcolor_remap_one_store  # TAILCALL
.Lfunc_end3:
	.size	zcolor_remap_one_signed_finish, .Lfunc_end3-zcolor_remap_one_signed_finish
	.cfi_endproc

	.globl	zcolor_reset_transfer
	.align	16, 0x90
	.type	zcolor_reset_transfer,@function
zcolor_reset_transfer:                  # @zcolor_reset_transfer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gx_set_effective_transfer
	movq	(%rbx), %rdi
	callq	gs_swapcolors
	movq	(%rbx), %rdi
	movq	1760(%rdi), %rax
	movq	$gx_dc_type_data_none, (%rax)
	callq	gs_swapcolors
	movq	(%rbx), %rax
	movq	1760(%rax), %rax
	movq	$gx_dc_type_data_none, (%rax)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zcolor_reset_transfer, .Lfunc_end4-zcolor_reset_transfer
	.cfi_endproc

	.globl	zcolor_remap_color
	.align	16, 0x90
	.type	zcolor_remap_color,@function
zcolor_remap_color:                     # @zcolor_remap_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_swapcolors
	movq	(%rbx), %rdi
	movq	1760(%rdi), %rax
	movq	$gx_dc_type_data_none, (%rax)
	callq	gs_swapcolors
	movq	(%rbx), %rax
	movq	1760(%rax), %rax
	movq	$gx_dc_type_data_none, (%rax)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zcolor_remap_color, .Lfunc_end5-zcolor_remap_color
	.cfi_endproc

	.align	16, 0x90
	.type	setgrayspace,@function
setgrayspace:                           # @setgrayspace
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
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 80
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	624(%r15), %r12
	movl	(%rbx), %eax
	leaq	8(%rsp), %r13
	jmp	.LBB6_1
.LBB6_19:                               # %do.cond.thread91
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, (%rbx)
	movl	$1, %eax
	.align	16, 0x90
.LBB6_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	cmpl	$5, %eax
	ja	.LBB6_31
# BB#2:                                 # %do.body
                                        #   in Loop: Header=BB6_1 Depth=1
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_17:                               # %sw.bb.110
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$-20, %ebp
	movzbl	1(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB6_32
# BB#18:                                # %if.end.118
                                        #   in Loop: Header=BB6_1 Depth=1
	movw	8(%r12), %ax
	addq	$-16, 624(%r15)
	cmpw	$0, %ax
	jne	.LBB6_19
# BB#20:                                # %if.end.126
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, (%r14)
	movl	$3, (%rbx)
	jmp	.LBB6_25
.LBB6_22:                               # %sw.bb.137
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$-20, %ebp
	movzbl	1(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB6_32
# BB#23:                                # %if.end.145
                                        #   in Loop: Header=BB6_1 Depth=1
	addq	$-16, 624(%r15)
	movl	$1, (%rbx)
	movl	$1, (%r14)
	cmpw	$0, 8(%r12)
	je	.LBB6_31
# BB#24:                                # %if.then.153
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$5, (%rbx)
.LBB6_25:                               # %if.then.153
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%r15, %rdi
	callq	setcolorspace_nosubst
	jmp	.LBB6_30
.LBB6_26:                               # %sw.bb.160
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, (%rbx)
	movl	$1, (%r14)
	movq	624(%r15), %rax
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB6_29
# BB#27:                                # %if.end.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	8(%r15), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	movq	%rax, %rsi
	movq	%r13, %rdx
	callq	names_string_ref
	movq	(%r15), %rdi
	movq	16(%rsp), %rsi
	movl	12(%rsp), %edx
	callq	gs_includecolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB6_32
# BB#28:                                # %zincludecolorspace.exit.thread
                                        #   in Loop: Header=BB6_1 Depth=1
	addq	$-16, 624(%r15)
	jmp	.LBB6_31
.LBB6_29:                               # %zincludecolorspace.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%rax, %rdi
	callq	check_type_failed
.LBB6_30:                               # %zincludecolorspace.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB6_32
	.align	16, 0x90
.LBB6_31:                               # %do.cond
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB6_1
	jmp	.LBB6_32
.LBB6_3:                                # %sw.bb
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	jne	.LBB6_13
# BB#4:                                 # %sw.bb
	movq	(%r15), %rax
	movq	16(%rax), %rax
	movzwl	488(%rax), %eax
	testw	%ax, %ax
	je	.LBB6_13
# BB#5:                                 # %if.then
	leaq	504(%r15), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.46, %esi
	callq	dict_find_string
	testl	%eax, %eax
	je	.LBB6_10
# BB#6:                                 # %if.then.3
	movq	8(%rsp), %rax
	movl	$-20, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB6_32
# BB#7:                                 # %land.lhs.true.11
	cmpw	$0, 8(%rax)
	je	.LBB6_10
# BB#8:                                 # %if.then.16
	movl	$4, (%rbx)
	movl	$1, (%r14)
	movq	8(%r15), %rdi
	movl	$32, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB6_32
# BB#9:                                 # %if.end.23
	movl	$.L.str.48, %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	56(%r15), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	orl	$128, %eax
	movq	520(%r15), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r15)
	movw	%ax, 16(%rcx)
	movl	$32, 20(%rcx)
	jmp	.LBB6_12
.LBB6_13:                               # %sw.bb.78
	movq	8(%r15), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB6_32
# BB#14:                                # %if.end.85
	movq	(%r15), %rdi
	movq	%r12, %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_16
# BB#15:                                # %if.then.90
	movq	(%r15), %rax
	movq	1744(%rax), %rsi
	movq	1752(%rax), %r13
	movq	(%rsi), %rax
	movl	$-1, %edx
	movq	%r13, %rdi
	callq	*104(%rax)
	movl	$0, 8(%r13)
	movq	$0, (%r13)
	movq	(%r15), %rax
	movq	1760(%rax), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB6_16:                               # %if.end.109
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	rc_decrement_only_cs
	movl	$0, (%r14)
	movl	$0, (%rbx)
	jmp	.LBB6_32
.LBB6_21:                               # %sw.bb.136
	movl	$0, (%r14)
	movl	$0, (%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB6_32
.LBB6_10:                               # %if.else
	movl	$2, (%rbx)
	movl	$1, (%r14)
	movq	8(%r15), %rdi
	movl	$47, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB6_32
# BB#11:                                # %if.end.51
	movl	$.L.str.49, %esi
	movl	$47, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	56(%r15), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	orl	$128, %eax
	movq	520(%r15), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r15)
	movw	%ax, 16(%rcx)
	movl	$47, 20(%rcx)
.LBB6_12:                               # %cleanup
	movq	%rbx, 24(%rcx)
	movl	$5, %ebp
.LBB6_32:                               # %cleanup.167
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	setgrayspace, .Lfunc_end6-setgrayspace
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_3
	.quad	.LBB6_13
	.quad	.LBB6_17
	.quad	.LBB6_21
	.quad	.LBB6_22
	.quad	.LBB6_26

	.text
	.align	16, 0x90
	.type	onecomponent,@function
onecomponent:                           # @onecomponent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	onecomponent, .Lfunc_end7-onecomponent
	.cfi_endproc

	.align	16, 0x90
	.type	grayrange,@function
grayrange:                              # @grayrange
	.cfi_startproc
# BB#0:                                 # %entry
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	grayrange, .Lfunc_end8-grayrange
	.cfi_endproc

	.align	16, 0x90
	.type	graydomain,@function
graydomain:                             # @graydomain
	.cfi_startproc
# BB#0:                                 # %entry
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	graydomain, .Lfunc_end9-graydomain
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	graybasecolor,@function
graybasecolor:                          # @graybasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movl	$0, (%r8)
	movl	$0, (%rcx)
	movl	$-17, %eax
	cmpq	632(%rdi), %rbx
	jb	.LBB10_21
# BB#1:                                 # %if.end
	movzbl	1(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_2
# BB#4:                                 # %if.else.14
	cvtsi2ssq	8(%rbx), %xmm0
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB10_21
# BB#3:                                 # %if.then.12
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
.LBB10_5:                               # %if.end.17
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	$-15, %eax
	ja	.LBB10_21
# BB#6:                                 # %if.end.17
	ucomiss	.LCPI10_0(%rip), %xmm0
	ja	.LBB10_21
# BB#7:                                 # %if.end.23
	leal	-1(%rdx), %eax
	cmpl	$2, %eax
	jae	.LBB10_8
# BB#11:                                # %do.body
	leaq	32(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB10_13
# BB#12:                                # %if.then.34
	movl	$2, 688(%rdi)
	movl	$-16, %eax
	jmp	.LBB10_21
.LBB10_8:                               # %if.end.23
	cmpl	$3, %edx
	jne	.LBB10_9
# BB#17:                                # %do.body.69
	leaq	48(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB10_19
# BB#18:                                # %if.then.76
	movl	$3, 688(%rdi)
	movl	$-16, %eax
	jmp	.LBB10_21
.LBB10_13:                              # %if.else.37
	movq	%rax, 624(%rdi)
	movss	%xmm0, 12(%rsp)
	movss	%xmm0, 8(%rsp)
	movss	%xmm0, 4(%rsp)
	cmpl	$1, %edx
	jne	.LBB10_14
# BB#15:                                # %if.then.47
	leaq	4(%rsp), %rdi
	callq	rgb2hsb
	movl	4(%rsp), %edx
	movl	8(%rsp), %ecx
	movl	12(%rsp), %eax
	jmp	.LBB10_16
.LBB10_9:                               # %if.end.23
	movl	$-21, %eax
	testl	%edx, %edx
	jne	.LBB10_21
# BB#10:                                # %sw.bb
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	jmp	.LBB10_20
.LBB10_19:                              # %if.else.80
	movq	%rax, 624(%rdi)
	movl	$0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	movl	$0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	movl	$0, 40(%rbx)
	movw	$4096, 32(%rbx)         # imm = 0x1000
	movss	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 56(%rbx)
	movw	$4096, 48(%rbx)         # imm = 0x1000
	jmp	.LBB10_20
.LBB10_14:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	movl	%eax, %edx
.LBB10_16:                              # %if.end.48
	movl	%edx, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	movl	%ecx, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	movl	%eax, 40(%rbx)
	movw	$4096, 32(%rbx)         # imm = 0x1000
.LBB10_20:                              # %cleanup
	xorl	%eax, %eax
.LBB10_21:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end10:
	.size	graybasecolor, .Lfunc_end10-graybasecolor
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	grayvalidate,@function
grayvalidate:                           # @grayvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzbl	1(%rax), %esi
	cmpl	$16, %esi
	je	.LBB11_2
# BB#1:                                 # %entry
	movl	$-20, %eax
	movzbl	%sil, %esi
	cmpl	$11, %esi
	jne	.LBB11_7
.LBB11_2:                               # %if.end
	movl	$-17, %eax
	testl	%ecx, %ecx
	jle	.LBB11_7
# BB#3:                                 # %if.end.11
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI11_0(%rip), %xmm0
	jbe	.LBB11_5
# BB#4:                                 # %if.end.16.thread
	movl	$1065353216, (%rdx)     # imm = 0x3F800000
	xorl	%eax, %eax
	retq
.LBB11_5:                               # %if.end.16
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_7
# BB#6:                                 # %if.then.20
	movl	$0, (%rdx)
.LBB11_7:                               # %cleanup
	retq
.Lfunc_end11:
	.size	grayvalidate, .Lfunc_end11-grayvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	truecompareproc,@function
truecompareproc:                        # @truecompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end12:
	.size	truecompareproc, .Lfunc_end12-truecompareproc
	.cfi_endproc

	.align	16, 0x90
	.type	grayinitialproc,@function
grayinitialproc:                        # @grayinitialproc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$264, %rsp              # imm = 0x108
.Ltmp38:
	.cfi_def_cfa_offset 272
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	(%rdi), %rdi
	leaq	(%rsp), %rsi
	callq	gs_setcolor
	addq	$264, %rsp              # imm = 0x108
	retq
.Lfunc_end13:
	.size	grayinitialproc, .Lfunc_end13-grayinitialproc
	.cfi_endproc

	.align	16, 0x90
	.type	setrgbspace,@function
setrgbspace:                            # @setrgbspace
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
	subq	$24, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 80
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
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	624(%r15), %r12
	movl	(%rbx), %eax
	leaq	8(%rsp), %r13
	jmp	.LBB14_1
.LBB14_19:                              # %do.cond.thread91
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, (%rbx)
	movl	$1, %eax
	.align	16, 0x90
.LBB14_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	cmpl	$5, %eax
	ja	.LBB14_31
# BB#2:                                 # %do.body
                                        #   in Loop: Header=BB14_1 Depth=1
	jmpq	*.LJTI14_0(,%rcx,8)
.LBB14_17:                              # %sw.bb.116
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$-20, %ebp
	movzbl	1(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB14_32
# BB#18:                                # %if.end.124
                                        #   in Loop: Header=BB14_1 Depth=1
	movw	8(%r12), %ax
	addq	$-16, 624(%r15)
	cmpw	$0, %ax
	jne	.LBB14_19
# BB#20:                                # %if.end.132
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$3, (%rbx)
	jmp	.LBB14_21
.LBB14_23:                              # %sw.bb.143
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$-20, %ebp
	movzbl	1(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB14_32
# BB#24:                                # %if.end.151
                                        #   in Loop: Header=BB14_1 Depth=1
	addq	$-16, 624(%r15)
	movl	$1, (%rbx)
	movl	$1, (%r14)
	cmpw	$0, 8(%r12)
	je	.LBB14_31
# BB#25:                                # %if.then.159
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$5, (%rbx)
.LBB14_21:                              # %if.end.132
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r15, %rdi
	callq	setcolorspace_nosubst
	jmp	.LBB14_30
.LBB14_26:                              # %sw.bb.166
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, (%rbx)
	movl	$1, (%r14)
	movq	624(%r15), %rax
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB14_29
# BB#27:                                # %if.end.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	8(%r15), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	movq	%rax, %rsi
	movq	%r13, %rdx
	callq	names_string_ref
	movq	(%r15), %rdi
	movq	16(%rsp), %rsi
	movl	12(%rsp), %edx
	callq	gs_includecolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB14_32
# BB#28:                                # %zincludecolorspace.exit.thread
                                        #   in Loop: Header=BB14_1 Depth=1
	addq	$-16, 624(%r15)
	jmp	.LBB14_31
.LBB14_29:                              # %zincludecolorspace.exit
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, %rdi
	callq	check_type_failed
.LBB14_30:                              # %zincludecolorspace.exit
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB14_32
	.align	16, 0x90
.LBB14_31:                              # %do.cond
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB14_1
	jmp	.LBB14_32
.LBB14_3:                               # %sw.bb
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	jne	.LBB14_13
# BB#4:                                 # %sw.bb
	movq	(%r15), %rax
	movq	16(%rax), %rax
	movzwl	488(%rax), %eax
	testw	%ax, %ax
	je	.LBB14_13
# BB#5:                                 # %if.then
	leaq	504(%r15), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.46, %esi
	callq	dict_find_string
	testl	%eax, %eax
	je	.LBB14_10
# BB#6:                                 # %if.then.3
	movq	8(%rsp), %rax
	movl	$-20, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB14_32
# BB#7:                                 # %land.lhs.true.11
	cmpw	$0, 8(%rax)
	je	.LBB14_10
# BB#8:                                 # %if.then.16
	movl	$4, (%rbx)
	movl	$1, (%r14)
	movq	8(%r15), %rdi
	movl	$31, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB14_32
# BB#9:                                 # %if.end.23
	movl	$.L.str.51, %esi
	movl	$31, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	56(%r15), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	orl	$128, %eax
	movq	520(%r15), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r15)
	movw	%ax, 16(%rcx)
	movl	$31, 20(%rcx)
	jmp	.LBB14_12
.LBB14_13:                              # %sw.bb.78
	movq	8(%r15), %rdi
	callq	gs_cspace_new_DeviceRGB
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB14_32
# BB#14:                                # %if.end.85
	movq	(%r15), %rdi
	movq	%r12, %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_16
# BB#15:                                # %if.then.90
	movq	(%r15), %rax
	movq	1744(%rax), %rsi
	movq	1752(%rax), %r13
	movq	(%rsi), %rax
	movl	$-1, %edx
	movq	%r13, %rdi
	callq	*104(%rax)
	movl	$0, 8(%r13)
	movl	$0, 12(%r13)
	movl	$0, 16(%r13)
	movq	$0, (%r13)
	movq	(%r15), %rax
	movq	1760(%rax), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB14_16:                              # %if.end.115
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	rc_decrement_only_cs
	movl	$0, (%r14)
	movl	$0, (%rbx)
	jmp	.LBB14_32
.LBB14_22:                              # %sw.bb.142
	movl	$0, (%r14)
	movl	$0, (%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB14_32
.LBB14_10:                              # %if.else
	movl	$2, (%rbx)
	movl	$1, (%r14)
	movq	8(%r15), %rdi
	movl	$46, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB14_32
# BB#11:                                # %if.end.51
	movl	$.L.str.52, %esi
	movl	$46, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	56(%r15), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	orl	$128, %eax
	movq	520(%r15), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r15)
	movw	%ax, 16(%rcx)
	movl	$46, 20(%rcx)
.LBB14_12:                              # %cleanup
	movq	%rbx, 24(%rcx)
	movl	$5, %ebp
.LBB14_32:                              # %cleanup.173
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	setrgbspace, .Lfunc_end14-setrgbspace
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_3
	.quad	.LBB14_13
	.quad	.LBB14_17
	.quad	.LBB14_22
	.quad	.LBB14_23
	.quad	.LBB14_26

	.text
	.align	16, 0x90
	.type	threecomponent,@function
threecomponent:                         # @threecomponent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$3, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	threecomponent, .Lfunc_end15-threecomponent
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	rgbrange,@function
rgbrange:                               # @rgbrange
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI16_0(%rip), %xmm0  # xmm0 = [0.000000e+00,1.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, (%rdx)
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, 16(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	rgbrange, .Lfunc_end16-rgbrange
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	rgbdomain,@function
rgbdomain:                              # @rgbdomain
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [0.000000e+00,1.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, (%rdx)
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, 16(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	rgbdomain, .Lfunc_end17-rgbdomain
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_1:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI18_2:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI18_3:
	.quad	4592590756007337001     # double 0.11
	.text
	.align	16, 0x90
	.type	rgbbasecolor,@function
rgbbasecolor:                           # @rgbbasecolor
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
	subq	$56, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 112
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
	movq	%r9, %r12
	movq	%r8, %r13
	movq	%rcx, %rbp
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	624(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	(%r15), %rdi
	callq	gs_currentcolorspace
	cmpq	$1, 32(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movq	%rbp, %rcx
	movq	%r13, %r8
	movq	%r12, %r9
	callq	graybasecolor
.LBB18_55:                              # %cleanup.416
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_2:                               # %if.end
	movl	(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	movq	%rbp, %rbx
	je	.LBB18_48
# BB#3:                                 # %if.end
	cmpl	$1, %ecx
	movq	%r15, %r8
	jne	.LBB18_4
# BB#36:                                # %sw.bb.217
	movl	$2, (%rbx)
	movl	$1, (%r13)
	movq	536(%r8), %rax
	addq	$-16, %rax
	cmpq	%rax, 520(%r8)
	movq	8(%rsp), %rbx           # 8-byte Reload
	jbe	.LBB18_38
# BB#37:                                # %if.then.228
	leaq	520(%r8), %rdi
	movl	$1, %esi
	movq	%r8, %rbp
	callq	ref_stack_extend
	movq	%rbp, %r8
	testl	%eax, %eax
	js	.LBB18_55
.LBB18_38:                              # %if.end.240
	movq	632(%r8), %rcx
	addq	$64, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB18_55
# BB#39:                                # %if.end.248
	movzbl	-63(%rbx), %ecx
	movl	$-20, %eax
	cmpl	$11, %ecx
	jne	.LBB18_40
# BB#42:                                # %if.else.274
	cvtsi2ssq	-56(%rbx), %xmm0
	movss	%xmm0, 16(%rsp)
	jmp	.LBB18_43
.LBB18_48:                              # %sw.bb.365
	movl	$0, (%rbx)
	movl	$0, (%r13)
	movq	632(%r15), %rcx
	addq	$64, %rcx
	movl	$-17, %eax
	movq	8(%rsp), %r12           # 8-byte Reload
	cmpq	%rcx, %r12
	jb	.LBB18_55
# BB#49:                                # %if.end.373
	movzbl	1(%r12), %ecx
	cmpl	$11, %ecx
	jne	.LBB18_50
# BB#52:                                # %if.else.392
	cvtsi2ssq	8(%r12), %xmm0
	jmp	.LBB18_53
.LBB18_4:                               # %if.end
	testl	%ecx, %ecx
	movq	8(%rsp), %r10           # 8-byte Reload
	jne	.LBB18_55
# BB#5:                                 # %sw.bb
	movl	$0, (%r13)
	movq	632(%r8), %rcx
	addq	$32, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %r10
	jb	.LBB18_55
# BB#6:                                 # %if.end.6
	movzbl	-31(%r10), %ecx
	movl	$-20, %eax
	cmpl	$11, %ecx
	jne	.LBB18_7
# BB#9:                                 # %if.else.21
	cvtsi2ssq	-24(%r10), %xmm0
	leaq	44(%rsp), %rdi
	movss	%xmm0, 44(%rsp)
	movd	%xmm0, %ecx
	movl	%r14d, %ebp
	jmp	.LBB18_10
.LBB18_50:                              # %if.end.373
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB18_55
# BB#51:                                # %if.then.387
	movss	8(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
.LBB18_53:                              # %if.end.396
	movq	624(%r15), %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, 624(%r15)
	xorps	%xmm1, %xmm1
	maxss	%xmm0, %xmm1
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	minss	%xmm1, %xmm0
	movss	%xmm0, -8(%rax)
	movw	$4096, -16(%rax)        # imm = 0x1000
.LBB18_54:                              # %cleanup.416
	xorl	%eax, %eax
	jmp	.LBB18_55
.LBB18_40:                              # %if.end.248
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB18_55
# BB#41:                                # %if.then.267
	movl	-56(%rbx), %ecx
	movl	%ecx, 16(%rsp)
	movd	%ecx, %xmm0
.LBB18_43:                              # %if.end.280
	movzbl	-47(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB18_44
# BB#70:                                # %if.else.274.1
	cvtsi2ssq	-40(%rbx), %xmm1
	movss	%xmm1, 20(%rsp)
	jmp	.LBB18_71
.LBB18_44:                              # %if.end.280
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB18_55
# BB#45:                                # %if.then.267.1
	movl	-40(%rbx), %ecx
	movl	%ecx, 20(%rsp)
	movd	%ecx, %xmm1
.LBB18_71:                              # %if.end.280.1
	movzbl	-31(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB18_72
# BB#74:                                # %if.else.274.2
	cvtsi2ssq	-24(%rbx), %xmm2
	movss	%xmm2, 24(%rsp)
	jmp	.LBB18_75
.LBB18_7:                               # %if.end.6
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	movl	%r14d, %ebp
	jne	.LBB18_55
# BB#8:                                 # %if.then.18
	movl	-24(%r10), %ecx
	leaq	44(%rsp), %rdi
	movl	%ecx, 44(%rsp)
	movd	%ecx, %xmm0
.LBB18_10:                              # %if.end.26
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB18_11
# BB#12:                                # %if.end.26
	ucomiss	.LCPI18_0(%rip), %xmm0
	ja	.LBB18_13
# BB#14:                                # %if.end.36
	movzbl	-15(%r10), %edx
	cmpl	$11, %edx
	jne	.LBB18_15
# BB#56:                                # %if.else.21.1
	xorps	%xmm1, %xmm1
	cvtsi2ssq	-8(%r10), %xmm1
	leaq	48(%rsp), %r14
	movss	%xmm1, 48(%rsp)
	movd	%xmm1, %edx
	jmp	.LBB18_57
.LBB18_72:                              # %if.end.280.1
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB18_55
# BB#73:                                # %if.then.267.2
	movl	-24(%rbx), %ecx
	movl	%ecx, 24(%rsp)
	movd	%ecx, %xmm2
.LBB18_75:                              # %if.end.280.2
	movzbl	-15(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB18_76
# BB#78:                                # %if.else.274.3
	cvtsi2ssq	-8(%rbx), %xmm3
	movss	%xmm3, 28(%rsp)
	jmp	.LBB18_79
.LBB18_76:                              # %if.end.280.2
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB18_55
# BB#77:                                # %if.then.267.3
	movl	-8(%rbx), %ecx
	movl	%ecx, 28(%rsp)
.LBB18_79:                              # %if.end.280.3
	movzbl	1(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB18_80
# BB#46:                                # %if.else.303
	leaq	8(%rbx), %rax
	xorps	%xmm3, %xmm3
	cvtsi2ssq	8(%rbx), %xmm3
	jmp	.LBB18_47
.LBB18_80:                              # %if.end.280.3
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB18_55
# BB#81:                                # %if.then.298
	leaq	8(%rbx), %rax
	movss	8(%rbx), %xmm3          # xmm3 = mem[0],zero,zero,zero
.LBB18_47:                              # %if.end.307
	subss	%xmm3, %xmm0
	xorps	%xmm4, %xmm4
	xorps	%xmm5, %xmm5
	maxss	%xmm0, %xmm5
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm6
	minss	%xmm5, %xmm6
	movss	%xmm6, 16(%rsp)
	subss	%xmm3, %xmm1
	xorps	%xmm5, %xmm5
	maxss	%xmm1, %xmm5
	movaps	%xmm0, %xmm1
	minss	%xmm5, %xmm1
	movss	%xmm1, 20(%rsp)
	subss	%xmm3, %xmm2
	maxss	%xmm2, %xmm4
	minss	%xmm4, %xmm0
	movss	%xmm0, 24(%rsp)
	movss	%xmm6, -56(%rbx)
	movw	$4096, -64(%rbx)        # imm = 0x1000
	movl	20(%rsp), %ecx
	movl	%ecx, -40(%rbx)
	movw	$4096, -48(%rbx)        # imm = 0x1000
	movl	24(%rsp), %ecx
	movl	%ecx, -24(%rbx)
	movw	$4096, -32(%rbx)        # imm = 0x1000
	movl	28(%rsp), %ecx
	movl	%ecx, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	movl	%ecx, (%rax)
	movw	$4096, (%rbx)           # imm = 0x1000
	movq	520(%r8), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r8)
	movq	(%r8), %rcx
	movq	16(%rcx), %rcx
	movups	144(%rcx), %xmm0
.LBB18_35:                              # %cleanup.416
	movups	%xmm0, 16(%rax)
	movl	$5, %eax
	jmp	.LBB18_55
.LBB18_11:
	movl	$-15, %eax
	jmp	.LBB18_55
.LBB18_13:
	movl	$-15, %eax
	jmp	.LBB18_55
.LBB18_15:                              # %if.end.36
	movzbl	%dl, %edx
	cmpl	$16, %edx
	jne	.LBB18_55
# BB#16:                                # %if.then.18.1
	movl	-8(%r10), %edx
	leaq	48(%rsp), %r14
	movl	%edx, 48(%rsp)
	movd	%edx, %xmm1
.LBB18_57:                              # %if.end.26.1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	ja	.LBB18_58
# BB#59:                                # %if.end.26.1
	ucomiss	.LCPI18_0(%rip), %xmm1
	ja	.LBB18_60
# BB#61:                                # %if.end.36.1
	movzbl	1(%r10), %esi
	cmpl	$11, %esi
	jne	.LBB18_62
# BB#64:                                # %if.else.21.2
	xorps	%xmm2, %xmm2
	cvtsi2ssq	8(%r10), %xmm2
	leaq	52(%rsp), %r15
	movss	%xmm2, 52(%rsp)
	movd	%xmm2, %esi
	jmp	.LBB18_65
.LBB18_58:
	movl	$-15, %eax
	jmp	.LBB18_55
.LBB18_60:
	movl	$-15, %eax
	jmp	.LBB18_55
.LBB18_62:                              # %if.end.36.1
	movzbl	%sil, %esi
	cmpl	$16, %esi
	jne	.LBB18_55
# BB#63:                                # %if.then.18.2
	movl	8(%r10), %esi
	leaq	52(%rsp), %r15
	movl	%esi, 52(%rsp)
	movd	%esi, %xmm2
.LBB18_65:                              # %if.end.26.2
	xorps	%xmm3, %xmm3
	ucomiss	%xmm2, %xmm3
	ja	.LBB18_66
# BB#67:                                # %if.end.26.2
	ucomiss	.LCPI18_0(%rip), %xmm2
	movl	$-15, %eax
	ja	.LBB18_55
# BB#68:                                # %if.end.36.2
	movl	$-21, %eax
	movl	%ebp, %r10d
	cmpl	$3, %ebp
	ja	.LBB18_55
# BB#69:                                # %if.end.36.2
	movq	624(%r8), %r12
	jmpq	*.LJTI18_0(,%r10,8)
.LBB18_17:                              # %sw.bb.40
	leaq	-32(%r12), %rax
	movq	%rax, 624(%r8)
	ucomiss	%xmm1, %xmm0
	jne	.LBB18_19
	jp	.LBB18_19
# BB#18:                                # %sw.bb.40
	ucomiss	%xmm2, %xmm1
	jne	.LBB18_19
	jnp	.LBB18_20
.LBB18_19:                              # %if.else.58
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI18_1(%rip), %xmm0
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI18_2(%rip), %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	mulsd	.LCPI18_3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
.LBB18_20:                              # %if.end.69
	movss	%xmm0, -24(%r12)
	movw	$4096, -32(%r12)        # imm = 0x1000
	jmp	.LBB18_54
.LBB18_66:
	movl	$-15, %eax
	jmp	.LBB18_55
.LBB18_21:                              # %sw.bb.74
	callq	rgb2hsb
	movl	44(%rsp), %eax
	movl	%eax, -24(%r12)
	movw	$4096, -32(%r12)        # imm = 0x1000
	movl	(%r14), %eax
	movl	%eax, -8(%r12)
	movw	$4096, -16(%r12)        # imm = 0x1000
	movl	(%r15), %eax
	movl	%eax, 8(%r12)
	movw	$4096, (%r12)           # imm = 0x1000
	jmp	.LBB18_54
.LBB18_22:                              # %sw.bb.95
	movl	%ecx, -24(%r12)
	movw	$4096, -32(%r12)        # imm = 0x1000
	movl	%edx, -8(%r12)
	movw	$4096, -16(%r12)        # imm = 0x1000
	movl	%esi, 8(%r12)
	movw	$4096, (%r12)           # imm = 0x1000
	jmp	.LBB18_54
.LBB18_24:                              # %sw.bb.115
	movl	$1, (%rbx)
	movl	$1, (%r13)
	movss	.LCPI18_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm4
	subss	%xmm0, %xmm4
	movss	%xmm4, 16(%rsp)
	movaps	%xmm3, %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 20(%rsp)
	subss	%xmm2, %xmm3
	movss	%xmm3, 24(%rsp)
	movd	%xmm3, %ebp
	ucomiss	%xmm4, %xmm0
	jbe	.LBB18_27
# BB#25:                                # %if.then.131
	ucomiss	%xmm4, %xmm3
	jbe	.LBB18_29
# BB#26:                                # %if.then.136
	movd	%xmm4, %ebp
	movss	%xmm4, 28(%rsp)
	jmp	.LBB18_30
.LBB18_27:                              # %if.else.143
	ucomiss	%xmm0, %xmm3
	jbe	.LBB18_29
# BB#28:                                # %if.then.148
	movss	%xmm0, 28(%rsp)
	movd	%xmm0, %ebp
	jmp	.LBB18_30
.LBB18_29:                              # %if.else.151
	movss	%xmm3, 28(%rsp)
.LBB18_30:                              # %if.end.155
	movss	%xmm4, 4(%rsp)          # 4-byte Spill
	movss	%xmm3, 8(%rsp)          # 4-byte Spill
	movq	536(%r8), %rax
	addq	$-16, %rax
	cmpq	%rax, 520(%r8)
	jbe	.LBB18_32
# BB#31:                                # %if.then.163
	leaq	520(%r8), %rdi
	movl	$1, %esi
	movq	%r8, %rbx
	callq	ref_stack_extend
	movq	%rbx, %r8
	testl	%eax, %eax
	js	.LBB18_55
.LBB18_32:                              # %do.body
	leaq	32(%r12), %rax
	cmpq	640(%r8), %rax
	jbe	.LBB18_34
# BB#33:                                # %if.then.178
	movl	$2, 688(%r8)
	movl	$-16, %eax
	jmp	.LBB18_55
.LBB18_34:                              # %if.else.181
	movq	%rax, 624(%r8)
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%r12)
	movw	$4096, -32(%r12)        # imm = 0x1000
	movl	20(%rsp), %eax
	movl	%eax, -8(%r12)
	movw	$4096, -16(%r12)        # imm = 0x1000
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%r12)
	movw	$4096, (%r12)           # imm = 0x1000
	movl	%ebp, 24(%r12)
	movw	$4096, 16(%r12)         # imm = 0x1000
	movl	%ebp, 40(%r12)
	movw	$4096, 32(%r12)         # imm = 0x1000
	movq	520(%r8), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r8)
	movq	(%r8), %rcx
	movq	16(%rcx), %rcx
	movups	160(%rcx), %xmm0
	jmp	.LBB18_35
.Lfunc_end18:
	.size	rgbbasecolor, .Lfunc_end18-rgbbasecolor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_17
	.quad	.LBB18_21
	.quad	.LBB18_22
	.quad	.LBB18_24

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	rgbvalidate,@function
rgbvalidate:                            # @rgbvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	cmpl	$3, %ecx
	jl	.LBB19_17
# BB#1:                                 # %if.end
	movq	624(%rdi), %rcx
	movzbl	-31(%rcx), %esi
	movl	$-20, %eax
	cmpl	$16, %esi
	je	.LBB19_3
# BB#2:                                 # %if.end
	movzbl	%sil, %esi
	cmpl	$11, %esi
	jne	.LBB19_17
.LBB19_3:                               # %if.end.11
	movzbl	-15(%rcx), %esi
	cmpl	$11, %esi
	je	.LBB19_5
# BB#4:                                 # %if.end.11
	movzbl	%sil, %esi
	cmpl	$16, %esi
	jne	.LBB19_17
.LBB19_5:                               # %if.end.11.1
	movzbl	1(%rcx), %ecx
	cmpl	$16, %ecx
	je	.LBB19_7
# BB#6:                                 # %if.end.11.1
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB19_17
.LBB19_7:                               # %if.end.11.2
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI19_0(%rip), %xmm0
	jbe	.LBB19_8
# BB#19:                                # %if.end.23.thread
	movl	$1065353216, (%rdx)     # imm = 0x3F800000
	jmp	.LBB19_10
.LBB19_8:                               # %if.end.23
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB19_10
# BB#9:                                 # %if.then.29
	movl	$0, (%rdx)
.LBB19_10:                              # %for.inc.33
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI19_0(%rip), %xmm0
	jbe	.LBB19_11
# BB#13:                                # %if.end.23.thread.1
	movl	$1065353216, 4(%rdx)    # imm = 0x3F800000
	jmp	.LBB19_14
.LBB19_11:                              # %if.end.23.1
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB19_14
# BB#12:                                # %if.then.29.1
	movl	$0, 4(%rdx)
.LBB19_14:                              # %for.inc.33.1
	movss	8(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI19_0(%rip), %xmm0
	jbe	.LBB19_15
# BB#18:                                # %if.end.23.thread.2
	movl	$1065353216, 8(%rdx)    # imm = 0x3F800000
	xorl	%eax, %eax
	retq
.LBB19_15:                              # %if.end.23.2
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB19_17
# BB#16:                                # %if.then.29.2
	movl	$0, 8(%rdx)
.LBB19_17:                              # %cleanup
	retq
.Lfunc_end19:
	.size	rgbvalidate, .Lfunc_end19-rgbvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	rgbinitialproc,@function
rgbinitialproc:                         # @rgbinitialproc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$264, %rsp              # imm = 0x108
.Ltmp65:
	.cfi_def_cfa_offset 272
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 16(%rsp)
	movq	(%rdi), %rdi
	leaq	(%rsp), %rsi
	callq	gs_setcolor
	addq	$264, %rsp              # imm = 0x108
	retq
.Lfunc_end20:
	.size	rgbinitialproc, .Lfunc_end20-rgbinitialproc
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_0:
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	setcmykspace,@function
setcmykspace:                           # @setcmykspace
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
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	624(%r15), %r12
	movl	(%rbx), %eax
	leaq	8(%rsp), %r13
	jmp	.LBB21_1
.LBB21_19:                              # %do.cond.thread92
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, (%rbx)
	movl	$1, %eax
	.align	16, 0x90
.LBB21_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	cmpl	$5, %eax
	ja	.LBB21_31
# BB#2:                                 # %do.body
                                        #   in Loop: Header=BB21_1 Depth=1
	jmpq	*.LJTI21_0(,%rcx,8)
.LBB21_17:                              # %sw.bb.119
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$-20, %ebp
	movzbl	1(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB21_32
# BB#18:                                # %if.end.127
                                        #   in Loop: Header=BB21_1 Depth=1
	movw	8(%r12), %ax
	addq	$-16, 624(%r15)
	cmpw	$0, %ax
	jne	.LBB21_19
# BB#20:                                # %if.end.135
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$3, (%rbx)
	jmp	.LBB21_21
.LBB21_23:                              # %sw.bb.146
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$-20, %ebp
	movzbl	1(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB21_32
# BB#24:                                # %if.end.154
                                        #   in Loop: Header=BB21_1 Depth=1
	addq	$-16, 624(%r15)
	movl	$1, (%rbx)
	movl	$1, (%r14)
	cmpw	$0, 8(%r12)
	je	.LBB21_31
# BB#25:                                # %if.then.162
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$5, (%rbx)
.LBB21_21:                              # %if.end.135
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	%r15, %rdi
	callq	setcolorspace_nosubst
	jmp	.LBB21_30
.LBB21_26:                              # %sw.bb.169
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, (%rbx)
	movl	$1, (%r14)
	movq	624(%r15), %rax
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB21_29
# BB#27:                                # %if.end.i
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	8(%r15), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	movq	%rax, %rsi
	movq	%r13, %rdx
	callq	names_string_ref
	movq	(%r15), %rdi
	movq	16(%rsp), %rsi
	movl	12(%rsp), %edx
	callq	gs_includecolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB21_32
# BB#28:                                # %zincludecolorspace.exit.thread
                                        #   in Loop: Header=BB21_1 Depth=1
	addq	$-16, 624(%r15)
	jmp	.LBB21_31
.LBB21_29:                              # %zincludecolorspace.exit
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	%rax, %rdi
	callq	check_type_failed
.LBB21_30:                              # %zincludecolorspace.exit
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB21_32
	.align	16, 0x90
.LBB21_31:                              # %do.cond
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB21_1
	jmp	.LBB21_32
.LBB21_3:                               # %sw.bb
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	jne	.LBB21_13
# BB#4:                                 # %sw.bb
	movq	(%r15), %rax
	movq	16(%rax), %rax
	movzwl	488(%rax), %eax
	testw	%ax, %ax
	je	.LBB21_13
# BB#5:                                 # %if.then
	leaq	504(%r15), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.46, %esi
	callq	dict_find_string
	testl	%eax, %eax
	je	.LBB21_10
# BB#6:                                 # %if.then.3
	movq	8(%rsp), %rax
	movl	$-20, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB21_32
# BB#7:                                 # %land.lhs.true.11
	cmpw	$0, 8(%rax)
	je	.LBB21_10
# BB#8:                                 # %if.then.16
	movl	$4, (%rbx)
	movl	$1, (%r14)
	movq	8(%r15), %rdi
	movl	$32, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB21_32
# BB#9:                                 # %if.end.23
	movl	$.L.str.53, %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	56(%r15), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	orl	$128, %eax
	movq	520(%r15), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r15)
	movw	%ax, 16(%rcx)
	movl	$32, 20(%rcx)
	jmp	.LBB21_12
.LBB21_13:                              # %sw.bb.78
	movq	8(%r15), %rdi
	callq	gs_cspace_new_DeviceCMYK
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB21_32
# BB#14:                                # %if.end.85
	movq	(%r15), %rdi
	movq	%r12, %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_16
# BB#15:                                # %if.then.90
	movq	(%r15), %rax
	movq	1744(%rax), %rsi
	movq	1752(%rax), %r13
	movq	(%rsi), %rax
	movl	$-1, %edx
	movq	%r13, %rdi
	callq	*104(%rax)
	movaps	.LCPI21_0(%rip), %xmm0  # xmm0 = [0.000000e+00,0.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, 8(%r13)
	movq	$0, (%r13)
	movq	(%r15), %rax
	movq	1760(%rax), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB21_16:                              # %if.end.118
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	rc_decrement_only_cs
	movl	$0, (%r14)
	movl	$0, (%rbx)
	jmp	.LBB21_32
.LBB21_22:                              # %sw.bb.145
	movl	$0, (%r14)
	movl	$0, (%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB21_32
.LBB21_10:                              # %if.else
	movl	$2, (%rbx)
	movl	$1, (%r14)
	movq	8(%r15), %rdi
	movl	$47, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB21_32
# BB#11:                                # %if.end.51
	movl	$.L.str.54, %esi
	movl	$47, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	56(%r15), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	orl	$128, %eax
	movq	520(%r15), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r15)
	movw	%ax, 16(%rcx)
	movl	$47, 20(%rcx)
.LBB21_12:                              # %cleanup
	movq	%rbx, 24(%rcx)
	movl	$5, %ebp
.LBB21_32:                              # %cleanup.176
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	setcmykspace, .Lfunc_end21-setcmykspace
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_3
	.quad	.LBB21_13
	.quad	.LBB21_17
	.quad	.LBB21_22
	.quad	.LBB21_23
	.quad	.LBB21_26

	.text
	.align	16, 0x90
	.type	fourcomponent,@function
fourcomponent:                          # @fourcomponent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end22:
	.size	fourcomponent, .Lfunc_end22-fourcomponent
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI23_0:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	cmykrange,@function
cmykrange:                              # @cmykrange
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI23_0(%rip), %xmm0  # xmm0 = [0.000000e+00,1.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, (%rdx)
	movups	%xmm0, 16(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	cmykrange, .Lfunc_end23-cmykrange
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_0:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	cmykdomain,@function
cmykdomain:                             # @cmykdomain
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI24_0(%rip), %xmm0  # xmm0 = [0.000000e+00,1.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, (%rdx)
	movups	%xmm0, 16(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	cmykdomain, .Lfunc_end24-cmykdomain
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI25_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_1:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI25_2:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI25_3:
	.quad	4592590756007337001     # double 0.11
	.text
	.align	16, 0x90
	.type	cmykbasecolor,@function
cmykbasecolor:                          # @cmykbasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 112
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, %r13
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	624(%r12), %rbp
	movq	(%r12), %rdi
	callq	gs_currentcolorspace
	cmpq	$1, 32(%rax)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movq	%rbx, %rcx
	movq	%r13, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	graybasecolor
	jmp	.LBB25_21
.LBB25_2:                               # %if.end
	movl	$0, (%r13)
	movl	$0, (%rbx)
	movq	632(%r12), %rcx
	addq	$48, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbp
	jb	.LBB25_21
# BB#3:                                 # %if.end.6
	movzbl	-47(%rbp), %ecx
	movl	$-20, %eax
	cmpl	$11, %ecx
	jne	.LBB25_4
# BB#6:                                 # %if.else.21
	cvtsi2ssq	-40(%rbp), %xmm0
	movss	%xmm0, 32(%rsp)
	movd	%xmm0, %ecx
	jmp	.LBB25_7
.LBB25_4:                               # %if.end.6
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB25_21
# BB#5:                                 # %if.then.18
	movl	-40(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movd	%ecx, %xmm0
.LBB25_7:                               # %if.end.26
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB25_8
# BB#9:                                 # %if.end.26
	ucomiss	.LCPI25_0(%rip), %xmm0
	ja	.LBB25_10
# BB#11:                                # %if.end.36
	movzbl	-31(%rbp), %edx
	cmpl	$11, %edx
	jne	.LBB25_12
# BB#22:                                # %if.else.21.1
	xorps	%xmm1, %xmm1
	cvtsi2ssq	-24(%rbp), %xmm1
	leaq	36(%rsp), %rdx
	movss	%xmm1, 36(%rsp)
	jmp	.LBB25_23
.LBB25_8:
	movl	$-15, %eax
	jmp	.LBB25_21
.LBB25_10:
	movl	$-15, %eax
	jmp	.LBB25_21
.LBB25_12:                              # %if.end.36
	movzbl	%dl, %edx
	cmpl	$16, %edx
	jne	.LBB25_21
# BB#13:                                # %if.then.18.1
	movl	-24(%rbp), %esi
	leaq	36(%rsp), %rdx
	movl	%esi, 36(%rsp)
	movd	%esi, %xmm1
.LBB25_23:                              # %if.end.26.1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	ja	.LBB25_24
# BB#25:                                # %if.end.26.1
	ucomiss	.LCPI25_0(%rip), %xmm1
	ja	.LBB25_26
# BB#27:                                # %if.end.36.1
	movzbl	-15(%rbp), %esi
	cmpl	$11, %esi
	jne	.LBB25_28
# BB#30:                                # %if.else.21.2
	xorps	%xmm2, %xmm2
	cvtsi2ssq	-8(%rbp), %xmm2
	leaq	40(%rsp), %rsi
	movss	%xmm2, 40(%rsp)
	jmp	.LBB25_31
.LBB25_24:
	movl	$-15, %eax
	jmp	.LBB25_21
.LBB25_26:
	movl	$-15, %eax
	jmp	.LBB25_21
.LBB25_28:                              # %if.end.36.1
	movzbl	%sil, %esi
	cmpl	$16, %esi
	jne	.LBB25_21
# BB#29:                                # %if.then.18.2
	movl	-8(%rbp), %edi
	leaq	40(%rsp), %rsi
	movl	%edi, 40(%rsp)
	movd	%edi, %xmm2
.LBB25_31:                              # %if.end.26.2
	xorps	%xmm3, %xmm3
	ucomiss	%xmm2, %xmm3
	ja	.LBB25_32
# BB#33:                                # %if.end.26.2
	ucomiss	.LCPI25_0(%rip), %xmm2
	ja	.LBB25_34
# BB#35:                                # %if.end.36.2
	movzbl	1(%rbp), %edi
	cmpl	$11, %edi
	jne	.LBB25_36
# BB#38:                                # %if.else.21.3
	xorps	%xmm3, %xmm3
	cvtsi2ssq	8(%rbp), %xmm3
	leaq	44(%rsp), %rdi
	movss	%xmm3, 44(%rsp)
	jmp	.LBB25_39
.LBB25_32:
	movl	$-15, %eax
	jmp	.LBB25_21
.LBB25_34:
	movl	$-15, %eax
	jmp	.LBB25_21
.LBB25_36:                              # %if.end.36.2
	movzbl	%dil, %edi
	cmpl	$16, %edi
	jne	.LBB25_21
# BB#37:                                # %if.then.18.3
	movl	8(%rbp), %eax
	leaq	44(%rsp), %rdi
	movl	%eax, 44(%rsp)
	movd	%eax, %xmm3
.LBB25_39:                              # %if.end.26.3
	xorps	%xmm4, %xmm4
	ucomiss	%xmm3, %xmm4
	ja	.LBB25_40
# BB#41:                                # %if.end.26.3
	ucomiss	.LCPI25_0(%rip), %xmm3
	movl	$-15, %eax
	ja	.LBB25_21
# BB#42:                                # %if.end.36.3
	leal	-1(%r14), %eax
	cmpl	$2, %eax
	jae	.LBB25_43
# BB#15:                                # %sw.bb.69
	movq	624(%r12), %rbx
	leaq	-16(%rbx), %rax
	movq	%rax, 624(%r12)
	addss	%xmm3, %xmm0
	movss	.LCPI25_0(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm5, %xmm6
	subss	%xmm0, %xmm6
	xorps	%xmm4, %xmm4
	xorps	%xmm0, %xmm0
	maxss	%xmm6, %xmm0
	movss	%xmm0, 20(%rsp)
	addss	%xmm3, %xmm1
	movaps	%xmm5, %xmm6
	subss	%xmm1, %xmm6
	xorps	%xmm1, %xmm1
	maxss	%xmm6, %xmm1
	movss	%xmm1, 24(%rsp)
	addss	%xmm3, %xmm2
	subss	%xmm2, %xmm5
	maxss	%xmm5, %xmm4
	movss	%xmm4, 28(%rsp)
	cmpl	$1, %r14d
	jne	.LBB25_16
# BB#17:                                # %if.then.118
	leaq	20(%rsp), %rdi
	callq	rgb2hsb
	movl	20(%rsp), %edx
	movl	24(%rsp), %ecx
	movl	28(%rsp), %eax
	jmp	.LBB25_18
.LBB25_40:
	movl	$-15, %eax
	jmp	.LBB25_21
.LBB25_43:                              # %if.end.36.3
	testl	%r14d, %r14d
	jne	.LBB25_44
# BB#14:                                # %sw.bb
	movq	624(%r12), %rax
	leaq	-48(%rax), %rcx
	movq	%rcx, 624(%r12)
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI25_1(%rip), %xmm0
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI25_2(%rip), %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	mulsd	.LCPI25_3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	.LCPI25_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	cmpltss	%xmm0, %xmm1
	andnps	%xmm2, %xmm1
	movss	%xmm1, -40(%rax)
	movw	$4096, -48(%rax)        # imm = 0x1000
	jmp	.LBB25_20
.LBB25_16:                              # %sw.bb.69.if.end.120_crit_edge
	movd	%xmm4, %eax
	movd	%xmm1, %ecx
	movd	%xmm0, %edx
.LBB25_18:                              # %if.end.120
	movl	%edx, -40(%rbx)
	movw	$4096, -48(%rbx)        # imm = 0x1000
	movl	%ecx, -24(%rbx)
	movw	$4096, -32(%rbx)        # imm = 0x1000
	movl	%eax, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	jmp	.LBB25_20
.LBB25_44:                              # %if.end.36.3
	movl	$-21, %eax
	cmpl	$3, %r14d
	jne	.LBB25_21
# BB#19:                                # %sw.bb.140
	movq	624(%r12), %rax
	movl	%ecx, -40(%rax)
	movw	$4096, -48(%rax)        # imm = 0x1000
	movl	(%rdx), %ecx
	movl	%ecx, -24(%rax)
	movw	$4096, -32(%rax)        # imm = 0x1000
	movl	(%rsi), %ecx
	movl	%ecx, -8(%rax)
	movw	$4096, -16(%rax)        # imm = 0x1000
	movl	(%rdi), %ecx
	movl	%ecx, 8(%rax)
	movw	$4096, (%rax)           # imm = 0x1000
.LBB25_20:                              # %cleanup
	xorl	%eax, %eax
.LBB25_21:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	cmykbasecolor, .Lfunc_end25-cmykbasecolor
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI26_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	cmykvalidate,@function
cmykvalidate:                           # @cmykvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	cmpl	$4, %ecx
	jl	.LBB26_23
# BB#1:                                 # %if.end
	movq	624(%rdi), %rcx
	movzbl	-47(%rcx), %esi
	movl	$-20, %eax
	cmpl	$16, %esi
	je	.LBB26_3
# BB#2:                                 # %if.end
	movzbl	%sil, %esi
	cmpl	$11, %esi
	jne	.LBB26_23
.LBB26_3:                               # %if.end.11
	movzbl	-31(%rcx), %esi
	cmpl	$11, %esi
	je	.LBB26_5
# BB#4:                                 # %if.end.11
	movzbl	%sil, %esi
	cmpl	$16, %esi
	jne	.LBB26_23
.LBB26_5:                               # %if.end.11.1
	movzbl	-15(%rcx), %esi
	cmpl	$16, %esi
	je	.LBB26_7
# BB#6:                                 # %if.end.11.1
	movzbl	%sil, %esi
	cmpl	$11, %esi
	jne	.LBB26_23
.LBB26_7:                               # %if.end.11.2
	movzbl	1(%rcx), %ecx
	cmpl	$16, %ecx
	je	.LBB26_9
# BB#8:                                 # %if.end.11.2
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB26_23
.LBB26_9:                               # %if.end.11.3
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI26_0(%rip), %xmm0
	jbe	.LBB26_10
# BB#25:                                # %if.end.23.thread
	movl	$1065353216, (%rdx)     # imm = 0x3F800000
	jmp	.LBB26_12
.LBB26_10:                              # %if.end.23
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB26_12
# BB#11:                                # %if.then.29
	movl	$0, (%rdx)
.LBB26_12:                              # %for.inc.33
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI26_0(%rip), %xmm0
	jbe	.LBB26_13
# BB#15:                                # %if.end.23.thread.1
	movl	$1065353216, 4(%rdx)    # imm = 0x3F800000
	jmp	.LBB26_16
.LBB26_13:                              # %if.end.23.1
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB26_16
# BB#14:                                # %if.then.29.1
	movl	$0, 4(%rdx)
.LBB26_16:                              # %for.inc.33.1
	movss	8(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI26_0(%rip), %xmm0
	jbe	.LBB26_17
# BB#19:                                # %if.end.23.thread.2
	movl	$1065353216, 8(%rdx)    # imm = 0x3F800000
	jmp	.LBB26_20
.LBB26_17:                              # %if.end.23.2
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB26_20
# BB#18:                                # %if.then.29.2
	movl	$0, 8(%rdx)
.LBB26_20:                              # %for.inc.33.2
	movss	12(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI26_0(%rip), %xmm0
	jbe	.LBB26_21
# BB#24:                                # %if.end.23.thread.3
	movl	$1065353216, 12(%rdx)   # imm = 0x3F800000
	xorl	%eax, %eax
	retq
.LBB26_21:                              # %if.end.23.3
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB26_23
# BB#22:                                # %if.then.29.3
	movl	$0, 12(%rdx)
.LBB26_23:                              # %cleanup
	retq
.Lfunc_end26:
	.size	cmykvalidate, .Lfunc_end26-cmykvalidate
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI27_0:
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	cmykinitialproc,@function
cmykinitialproc:                        # @cmykinitialproc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$264, %rsp              # imm = 0x108
.Ltmp92:
	.cfi_def_cfa_offset 272
	movq	$0, (%rsp)
	movaps	.LCPI27_0(%rip), %xmm0  # xmm0 = [0.000000e+00,0.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, 8(%rsp)
	movq	(%rdi), %rdi
	leaq	(%rsp), %rsi
	callq	gs_setcolor
	addq	$264, %rsp              # imm = 0x108
	retq
.Lfunc_end27:
	.size	cmykinitialproc, .Lfunc_end27-cmykinitialproc
	.cfi_endproc

	.align	16, 0x90
	.type	setcieaspace,@function
setcieaspace:                           # @setcieaspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 40
	subq	$296, %rsp              # imm = 0x128
.Ltmp97:
	.cfi_def_cfa_offset 336
.Ltmp98:
	.cfi_offset %rbx, -40
.Ltmp99:
	.cfi_offset %r12, -32
.Ltmp100:
	.cfi_offset %r14, -24
.Ltmp101:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$-21, %eax
	cmpl	$2, 80(%rbx)
	jl	.LBB28_9
# BB#1:                                 # %if.end
	leaq	504(%rbx), %rdi
	leaq	272(%rsp), %rdx
	movl	$.L.str.55, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB28_5
# BB#2:                                 # %if.then.2
	movq	272(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$1, %edx
	jne	.LBB28_9
# BB#3:                                 # %if.end.6
	cmpw	$0, 8(%rcx)
	je	.LBB28_5
# BB#4:                                 # %if.then.7
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	setgrayspace
	jmp	.LBB28_9
.LBB28_5:                               # %if.end.10
	movl	$0, (%r15)
	movq	8(%rbx), %rdi
	leaq	280(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB28_9
# BB#6:                                 # %if.end.15
	cmpl	$0, (%r14)
	jle	.LBB28_8
# BB#7:                                 # %if.then.18
	movq	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setcolor
	movl	$0, (%r14)
	jmp	.LBB28_9
.LBB28_8:                               # %if.end.21
	movq	8(%r12), %rax
	movq	8(%rax), %rdx
	leaq	280(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cieaspace
	incl	(%r14)
	movl	$1, (%r15)
.LBB28_9:                               # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end28:
	.size	setcieaspace, .Lfunc_end28-setcieaspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI29_0:
	.long	3323740160              # float -1.0E+4
.LCPI29_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	validatecieaspace,@function
validatecieaspace:                      # @validatecieaspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 112
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB29_1
# BB#2:                                 # %if.end
	cmpl	$2, 4(%rsi)
	jne	.LBB29_3
# BB#4:                                 # %if.end.6
	movq	8(%r14), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#5:                                 # %if.end.10
	movzwl	16(%rsp), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$544, %eax              # imm = 0x220
	jne	.LBB29_6
# BB#8:                                 # %if.end.24
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	checkWhitePoint
	testl	%eax, %eax
	jne	.LBB29_69
# BB#9:                                 # %if.end.29
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.56, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB29_23
# BB#10:                                # %land.lhs.true
	movq	8(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB29_23
# BB#11:                                # %if.then.39
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB29_12
# BB#13:                                # %if.end.47
	cmpl	$2, 4(%r15)
	jne	.LBB29_14
# BB#15:                                # %if.end.53
	movq	8(%r14), %rbp
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#16:                                # %if.end.i
	movzbl	41(%rsp), %ecx
	movl	$-20, %eax
	cmpl	$16, %ecx
	jne	.LBB29_17
# BB#19:                                # %if.then.15.i
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB29_20
.LBB29_1:
	movl	$-20, %eax
	jmp	.LBB29_69
.LBB29_3:
	movl	$-15, %eax
.LBB29_69:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_6:                               # %if.then.17
	movl	$-7, %eax
	movzbl	17(%rsp), %ecx
	cmpl	$2, %ecx
	je	.LBB29_69
# BB#7:                                 # %cond.true
	leaq	16(%rsp), %rdi
	callq	check_type_failed
	jmp	.LBB29_69
.LBB29_12:
	movl	$-20, %eax
	jmp	.LBB29_69
.LBB29_14:
	movl	$-15, %eax
	jmp	.LBB29_69
.LBB29_17:                              # %if.end.i
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB29_69
# BB#18:                                # %if.then.6.i
	cvtsi2ssq	48(%rsp), %xmm0
.LBB29_20:                              # %if.end.21.i
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB29_22
# BB#21:                                # %if.end.21.i
	ucomiss	.LCPI29_1(%rip), %xmm0
	ja	.LBB29_22
# BB#100:                               # %for.cond.i
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	leaq	40(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#101:                               # %if.end.i.1
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB29_102
# BB#104:                               # %if.then.6.i.1
	cvtsi2ssq	48(%rsp), %xmm0
	jmp	.LBB29_105
.LBB29_102:                             # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB29_69
# BB#103:                               # %if.then.15.i.1
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB29_105:                             # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB29_22
# BB#106:                               # %if.end.21.i.1
	ucomiss	.LCPI29_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB29_69
# BB#107:                               # %for.cond.i.1
	movss	4(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB29_23
# BB#108:
	movl	$-15, %eax
	jmp	.LBB29_69
.LBB29_23:                              # %if.end.67
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.57, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB29_27
# BB#24:                                # %land.lhs.true.71
	movq	8(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$14, %eax
	je	.LBB29_27
# BB#25:                                # %do.body
	movzwl	(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB29_26
.LBB29_27:                              # %if.end.88
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.58, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB29_40
# BB#28:                                # %land.lhs.true.92
	movq	8(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB29_40
# BB#29:                                # %if.then.99
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	movl	$-20, %eax
	jne	.LBB29_69
# BB#30:                                # %if.end.107
	cmpl	$3, 4(%r15)
	movl	$-15, %eax
	jne	.LBB29_69
# BB#31:                                # %if.end.113
	movq	8(%r14), %r12
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#32:                                # %if.end.i.41
	movzbl	41(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB29_33
# BB#36:                                # %if.then.15.i.46
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB29_37
.LBB29_26:                              # %if.then.85
	callq	check_proc_failed
	jmp	.LBB29_69
.LBB29_22:
	movl	$-13, %eax
	jmp	.LBB29_69
.LBB29_33:                              # %if.end.i.41
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB29_34
# BB#35:                                # %if.then.6.i.44
	cvtsi2ssq	48(%rsp), %xmm0
.LBB29_37:                              # %if.end.21.i.51
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB29_39
# BB#38:                                # %if.end.21.i.51
	ucomiss	.LCPI29_1(%rip), %xmm0
	ja	.LBB29_39
# BB#85:                                # %for.cond.i.36
	leaq	40(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#86:                                # %if.end.i.41.1
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB29_87
# BB#90:                                # %if.then.6.i.44.1
	cvtsi2ssq	48(%rsp), %xmm0
	jmp	.LBB29_91
.LBB29_34:
	movl	$-20, %eax
	jmp	.LBB29_69
.LBB29_87:                              # %if.end.i.41.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB29_88
# BB#89:                                # %if.then.15.i.46.1
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB29_91:                              # %if.end.21.i.51.1
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB29_39
# BB#92:                                # %if.end.21.i.51.1
	ucomiss	.LCPI29_1(%rip), %xmm0
	ja	.LBB29_39
# BB#93:                                # %for.cond.i.36.1
	leaq	40(%rsp), %rcx
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#94:                                # %if.end.i.41.2
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB29_95
# BB#97:                                # %if.then.6.i.44.2
	cvtsi2ssq	48(%rsp), %xmm0
	jmp	.LBB29_98
.LBB29_88:
	movl	$-20, %eax
	jmp	.LBB29_69
.LBB29_95:                              # %if.end.i.41.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB29_69
# BB#96:                                # %if.then.15.i.46.2
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB29_98:                              # %if.end.21.i.51.2
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB29_39
# BB#99:                                # %if.end.21.i.51.2
	ucomiss	.LCPI29_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB29_69
.LBB29_40:                              # %if.end.122
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	checkRangeLMN
	testl	%eax, %eax
	jne	.LBB29_69
# BB#41:                                # %if.end.127
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	checkDecodeLMN
	testl	%eax, %eax
	jne	.LBB29_69
# BB#42:                                # %if.end.132
	leaq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.62, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB29_55
# BB#43:                                # %land.lhs.true.i
	movq	32(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB29_55
# BB#44:                                # %if.then.i
	movzwl	(%r15), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB29_69
# BB#45:                                # %if.end.i.58
	movl	$-15, %eax
	cmpl	$9, 4(%r15)
	jne	.LBB29_69
# BB#46:                                # %if.end.13.i
	movq	8(%r14), %r12
	xorl	%r13d, %r13d
	leaq	40(%rsp), %rbp
.LBB29_48:                              # %for.body.i.69
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rbp, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#49:                                # %if.end.i.70
                                        #   in Loop: Header=BB29_48 Depth=1
	movzbl	41(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB29_50
# BB#52:                                # %if.then.15.i.75
                                        #   in Loop: Header=BB29_48 Depth=1
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB29_53
.LBB29_50:                              # %if.end.i.70
                                        #   in Loop: Header=BB29_48 Depth=1
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB29_69
# BB#51:                                # %if.then.6.i.73
                                        #   in Loop: Header=BB29_48 Depth=1
	cvtsi2ssq	48(%rsp), %xmm0
.LBB29_53:                              # %if.end.21.i.80
                                        #   in Loop: Header=BB29_48 Depth=1
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-13, %eax
	ja	.LBB29_69
# BB#54:                                # %if.end.21.i.80
                                        #   in Loop: Header=BB29_48 Depth=1
	ucomiss	.LCPI29_1(%rip), %xmm0
	ja	.LBB29_69
# BB#47:                                # %for.cond.i.65
                                        #   in Loop: Header=BB29_48 Depth=1
	incq	%r13
	cmpq	$9, %r13
	jl	.LBB29_48
.LBB29_55:                              # %if.end.137
	leaq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB29_68
# BB#56:                                # %land.lhs.true.i.89
	movq	32(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB29_68
# BB#57:                                # %if.then.i.93
	movzwl	(%r15), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB29_69
# BB#58:                                # %if.end.i.96
	movl	$-15, %eax
	cmpl	$3, 4(%r15)
	jne	.LBB29_69
# BB#59:                                # %if.end.13.i.100
	movq	8(%r14), %r14
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#60:                                # %if.end.i.113
	movzbl	41(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB29_61
# BB#64:                                # %if.then.15.i.118
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB29_65
.LBB29_39:
	movl	$-13, %eax
	jmp	.LBB29_69
.LBB29_61:                              # %if.end.i.113
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB29_62
# BB#63:                                # %if.then.6.i.116
	cvtsi2ssq	48(%rsp), %xmm0
.LBB29_65:                              # %if.end.21.i.123
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB29_67
# BB#66:                                # %if.end.21.i.123
	ucomiss	.LCPI29_1(%rip), %xmm0
	ja	.LBB29_67
# BB#70:                                # %for.cond.i.108
	leaq	40(%rsp), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#71:                                # %if.end.i.113.1
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB29_72
# BB#75:                                # %if.then.6.i.116.1
	cvtsi2ssq	48(%rsp), %xmm0
	jmp	.LBB29_76
.LBB29_62:
	movl	$-20, %eax
	jmp	.LBB29_69
.LBB29_72:                              # %if.end.i.113.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB29_73
# BB#74:                                # %if.then.15.i.118.1
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB29_76:                              # %if.end.21.i.123.1
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB29_67
# BB#77:                                # %if.end.21.i.123.1
	ucomiss	.LCPI29_1(%rip), %xmm0
	ja	.LBB29_67
# BB#78:                                # %for.cond.i.108.1
	leaq	40(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB29_69
# BB#79:                                # %if.end.i.113.2
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB29_80
# BB#82:                                # %if.then.6.i.116.2
	cvtsi2ssq	48(%rsp), %xmm0
	jmp	.LBB29_83
.LBB29_73:
	movl	$-20, %eax
	jmp	.LBB29_69
.LBB29_80:                              # %if.end.i.113.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB29_69
# BB#81:                                # %if.then.15.i.118.2
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB29_83:                              # %if.end.21.i.123.2
	movss	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB29_67
# BB#84:                                # %if.end.21.i.123.2
	ucomiss	.LCPI29_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB29_69
.LBB29_68:                              # %if.end.142
	movq	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB29_69
.LBB29_67:
	movl	$-13, %eax
	jmp	.LBB29_69
.Lfunc_end29:
	.size	validatecieaspace, .Lfunc_end29-validatecieaspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI30_0:
	.long	3323740160              # float -1.0E+4
.LCPI30_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	ciearange,@function
ciearange:                              # @ciearange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp119:
	.cfi_def_cfa_offset 80
.Ltmp120:
	.cfi_offset %rbx, -40
.Ltmp121:
	.cfi_offset %r12, -32
.Ltmp122:
	.cfi_offset %r14, -24
.Ltmp123:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB30_13
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.56, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB30_11
# BB#2:                                 # %land.lhs.true
	movq	(%rsp), %r12
	movzbl	1(%r12), %eax
	cmpl	$14, %eax
	jne	.LBB30_3
.LBB30_11:                              # %if.else
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, (%r14)
.LBB30_12:                              # %cleanup
	xorl	%eax, %eax
.LBB30_13:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB30_3:                               # %if.then.5
	movq	8(%rbx), %r15
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB30_13
# BB#4:                                 # %if.end.i
	movzbl	25(%rsp), %ecx
	movl	$-20, %eax
	cmpl	$16, %ecx
	jne	.LBB30_5
# BB#7:                                 # %if.then.15.i
	movl	32(%rsp), %eax
	movl	%eax, (%r14)
	movd	%eax, %xmm0
	jmp	.LBB30_8
.LBB30_5:                               # %if.end.i
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB30_13
# BB#6:                                 # %if.then.6.i
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, (%r14)
.LBB30_8:                               # %if.end.21.i
	movss	.LCPI30_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB30_10
# BB#9:                                 # %if.end.21.i
	ucomiss	.LCPI30_1(%rip), %xmm0
	ja	.LBB30_10
# BB#14:                                # %for.cond.i
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	array_get
	movss	.LCPI30_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	testl	%eax, %eax
	js	.LBB30_13
# BB#15:                                # %if.end.i.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB30_16
# BB#18:                                # %if.then.6.i.1
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 4(%r14)
	jmp	.LBB30_19
.LBB30_16:                              # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB30_13
# BB#17:                                # %if.then.15.i.1
	movl	32(%rsp), %eax
	movl	%eax, 4(%r14)
	movd	%eax, %xmm0
.LBB30_19:                              # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB30_10
# BB#20:                                # %if.end.21.i.1
	ucomiss	.LCPI30_1(%rip), %xmm0
	movl	$-13, %eax
	jbe	.LBB30_12
	jmp	.LBB30_13
.LBB30_10:
	movl	$-13, %eax
	jmp	.LBB30_13
.Lfunc_end30:
	.size	ciearange, .Lfunc_end30-ciearange
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI31_0:
	.long	3323740160              # float -1.0E+4
.LCPI31_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	cieadomain,@function
cieadomain:                             # @cieadomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 80
.Ltmp129:
	.cfi_offset %rbx, -40
.Ltmp130:
	.cfi_offset %r12, -32
.Ltmp131:
	.cfi_offset %r14, -24
.Ltmp132:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB31_13
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.56, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB31_11
# BB#2:                                 # %land.lhs.true
	movq	(%rsp), %r12
	movzbl	1(%r12), %eax
	cmpl	$14, %eax
	jne	.LBB31_3
.LBB31_11:                              # %if.else
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, (%r14)
.LBB31_12:                              # %cleanup
	xorl	%eax, %eax
.LBB31_13:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB31_3:                               # %if.then.5
	movq	8(%rbx), %r15
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB31_13
# BB#4:                                 # %if.end.i
	movzbl	25(%rsp), %ecx
	movl	$-20, %eax
	cmpl	$16, %ecx
	jne	.LBB31_5
# BB#7:                                 # %if.then.15.i
	movl	32(%rsp), %eax
	movl	%eax, (%r14)
	movd	%eax, %xmm0
	jmp	.LBB31_8
.LBB31_5:                               # %if.end.i
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB31_13
# BB#6:                                 # %if.then.6.i
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, (%r14)
.LBB31_8:                               # %if.end.21.i
	movss	.LCPI31_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB31_10
# BB#9:                                 # %if.end.21.i
	ucomiss	.LCPI31_1(%rip), %xmm0
	ja	.LBB31_10
# BB#14:                                # %for.cond.i
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	array_get
	movss	.LCPI31_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	testl	%eax, %eax
	js	.LBB31_13
# BB#15:                                # %if.end.i.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB31_16
# BB#18:                                # %if.then.6.i.1
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 4(%r14)
	jmp	.LBB31_19
.LBB31_16:                              # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB31_13
# BB#17:                                # %if.then.15.i.1
	movl	32(%rsp), %eax
	movl	%eax, 4(%r14)
	movd	%eax, %xmm0
.LBB31_19:                              # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB31_10
# BB#20:                                # %if.end.21.i.1
	ucomiss	.LCPI31_1(%rip), %xmm0
	movl	$-13, %eax
	jbe	.LBB31_12
	jmp	.LBB31_13
.LBB31_10:
	movl	$-13, %eax
	jmp	.LBB31_13
.Lfunc_end31:
	.size	cieadomain, .Lfunc_end31-cieadomain
	.cfi_endproc

	.align	16, 0x90
	.type	ciebasecolor,@function
ciebasecolor:                           # @ciebasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp136:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp137:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp139:
	.cfi_def_cfa_offset 80
.Ltmp140:
	.cfi_offset %rbx, -56
.Ltmp141:
	.cfi_offset %r12, -48
.Ltmp142:
	.cfi_offset %r13, -40
.Ltmp143:
	.cfi_offset %r14, -32
.Ltmp144:
	.cfi_offset %r15, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movzwl	(%rbp), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movq	8(%rbp), %rbp
.LBB32_2:                               # %if.end
	movl	$-20, %eax
	movzbl	1(%rbp), %ecx
	cmpl	$13, %ecx
	jne	.LBB32_22
# BB#3:                                 # %for.cond.preheader
	movq	8(%r13), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbx
	movl	$.L.str.3, %edi
	callq	strlen
	leaq	8(%rsp), %rcx
	movl	$.L.str.3, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB32_22
# BB#4:                                 # %if.end.19
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	cmpq	16(%rsp), %rcx
	je	.LBB32_7
# BB#5:                                 # %for.inc
	movq	8(%r13), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbx
	movl	$.L.str.4, %edi
	callq	strlen
	leaq	8(%rsp), %rcx
	movl	$.L.str.4, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB32_22
# BB#6:                                 # %if.end.19.1
	movq	8(%rbp), %rcx
	movl	$1, %eax
	cmpq	16(%rsp), %rcx
	je	.LBB32_7
# BB#23:                                # %for.inc.1
	movq	8(%r13), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbx
	movl	$.L.str.5, %edi
	callq	strlen
	leaq	8(%rsp), %rcx
	movl	$.L.str.5, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB32_22
# BB#24:                                # %if.end.19.2
	movq	8(%rbp), %rcx
	movl	$2, %eax
	cmpq	16(%rsp), %rcx
	je	.LBB32_7
# BB#25:                                # %for.inc.2
	movq	8(%r13), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbx
	movl	$.L.str.6, %edi
	callq	strlen
	leaq	8(%rsp), %rcx
	movl	$.L.str.6, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB32_22
# BB#26:                                # %if.end.19.3
	movq	8(%rbp), %rdx
	movl	$1, %ecx
	movl	$3, %eax
	cmpq	16(%rsp), %rdx
	jne	.LBB32_8
.LBB32_7:                               # %switch.lookup
	movl	.Lswitch.table.2(,%rax,4), %ecx
.LBB32_8:                               # %sw.epilog
	movq	624(%r13), %rax
	movl	%ecx, %r11d
	movq	%r11, %rdi
	shlq	$4, %rdi
	movq	%rax, %rsi
	subq	%rdi, %rsi
	movq	%rsi, 624(%r13)
	cmpl	$3, %r12d
	ja	.LBB32_10
# BB#9:                                 # %switch.lookup34
	movslq	%r12d, %rcx
	movl	.Lswitch.table.2(,%rcx,4), %ecx
.LBB32_10:                              # %do.body
	movslq	%ecx, %rdx
	movq	%rdx, %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	cmpq	640(%r13), %rsi
	jbe	.LBB32_12
# BB#11:                                # %if.then.42
	movl	%ecx, 688(%r13)
	movl	$-16, %eax
	jmp	.LBB32_22
.LBB32_12:                              # %if.else.45
	movq	%rsi, 624(%r13)
	testl	%ecx, %ecx
	jle	.LBB32_21
# BB#13:                                # %for.body.56.lr.ph
	leal	-1(%rcx), %r10d
	movslq	%r10d, %r9
	movq	%r9, %rdi
	shlq	$4, %rdi
	subq	%rdi, %rsi
	movl	%r9d, %r8d
	xorl	%ebp, %ebp
	testb	$7, %cl
	je	.LBB32_16
# BB#14:                                # %for.body.56.prol.preheader
	movl	%ecx, %ebx
	andl	$7, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB32_15:                              # %for.body.56.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rsi)
	movw	$4096, (%rsi)           # imm = 0x1000
	addq	$16, %rsi
	incl	%ebp
	cmpl	%ebp, %ebx
	jne	.LBB32_15
.LBB32_16:                              # %for.body.56.lr.ph.split
	cmpl	$7, %r10d
	jb	.LBB32_19
# BB#17:                                # %for.body.56.lr.ph.split.split
	movl	%ecx, %ebx
	subl	%ebp, %ebx
	addq	$120, %rsi
	.align	16, 0x90
.LBB32_18:                              # %for.body.56
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -112(%rsi)
	movw	$4096, -120(%rsi)       # imm = 0x1000
	movl	$0, -96(%rsi)
	movw	$4096, -104(%rsi)       # imm = 0x1000
	movl	$0, -80(%rsi)
	movw	$4096, -88(%rsi)        # imm = 0x1000
	movl	$0, -64(%rsi)
	movw	$4096, -72(%rsi)        # imm = 0x1000
	movl	$0, -48(%rsi)
	movw	$4096, -56(%rsi)        # imm = 0x1000
	movl	$0, -32(%rsi)
	movw	$4096, -40(%rsi)        # imm = 0x1000
	movl	$0, -16(%rsi)
	movw	$4096, -24(%rsi)        # imm = 0x1000
	movl	$0, (%rsi)
	movw	$4096, -8(%rsi)         # imm = 0x1000
	subq	$-128, %rsi
	addl	$-8, %ebx
	jne	.LBB32_18
.LBB32_19:                              # %for.end.62
	cmpl	$4, %ecx
	jne	.LBB32_21
# BB#20:                                # %if.then.65
	leaq	1(%rdx,%r8), %rcx
	subq	%r9, %rcx
	subq	%r11, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	$1065353216, -8(%rax)   # imm = 0x3F800000
	movw	$4096, -16(%rax)        # imm = 0x1000
.LBB32_21:                              # %if.end.71
	movl	$0, (%r15)
	movl	$0, (%r14)
	xorl	%eax, %eax
.LBB32_22:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	ciebasecolor, .Lfunc_end32-ciebasecolor
	.cfi_endproc

	.align	16, 0x90
	.type	cieavalidate,@function
cieavalidate:                           # @cieavalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	testl	%ecx, %ecx
	jle	.LBB33_4
# BB#1:                                 # %if.end
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$16, %ecx
	je	.LBB33_3
# BB#2:                                 # %if.end
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB33_4
.LBB33_3:                               # %if.end.10
	xorl	%eax, %eax
.LBB33_4:                               # %cleanup
	retq
.Lfunc_end33:
	.size	cieavalidate, .Lfunc_end33-cieavalidate
	.cfi_endproc

	.align	16, 0x90
	.type	cieacompareproc,@function
cieacompareproc:                        # @cieacompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp149:
	.cfi_def_cfa_offset 80
.Ltmp150:
	.cfi_offset %rbx, -32
.Ltmp151:
	.cfi_offset %r14, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	xorl	%r14d, %r14d
	testl	%eax, %eax
	js	.LBB34_45
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB34_45
# BB#2:                                 # %if.end.6
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB34_45
# BB#3:                                 # %if.end.i
	testl	%ebp, %ebp
	jle	.LBB34_7
# BB#4:                                 # %if.end.4.i
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB34_45
# BB#5:                                 # %if.end.12.i
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB34_7
# BB#6:                                 # %comparedictkey.exit
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB34_45
.LBB34_7:                               # %if.end.9
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB34_45
# BB#8:                                 # %if.end.i.18
	testl	%ebp, %ebp
	jle	.LBB34_12
# BB#9:                                 # %if.end.4.i.22
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB34_45
# BB#10:                                # %if.end.12.i.24
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB34_12
# BB#11:                                # %comparedictkey.exit28
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB34_45
.LBB34_12:                              # %if.end.13
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.56, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.56, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB34_45
# BB#13:                                # %if.end.i.35
	testl	%ebp, %ebp
	jle	.LBB34_17
# BB#14:                                # %if.end.4.i.39
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB34_45
# BB#15:                                # %if.end.12.i.41
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB34_17
# BB#16:                                # %comparedictkey.exit45
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB34_45
.LBB34_17:                              # %if.end.17
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.57, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.57, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB34_45
# BB#18:                                # %if.end.i.52
	testl	%ebp, %ebp
	jle	.LBB34_22
# BB#19:                                # %if.end.4.i.56
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB34_45
# BB#20:                                # %if.end.12.i.58
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB34_22
# BB#21:                                # %comparedictkey.exit62
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB34_45
.LBB34_22:                              # %if.end.21
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.58, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.58, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB34_45
# BB#23:                                # %if.end.i.69
	testl	%ebp, %ebp
	jle	.LBB34_27
# BB#24:                                # %if.end.4.i.73
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB34_45
# BB#25:                                # %if.end.12.i.75
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB34_27
# BB#26:                                # %comparedictkey.exit79
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB34_45
.LBB34_27:                              # %if.end.25
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB34_45
# BB#28:                                # %if.end.i.86
	testl	%ebp, %ebp
	jle	.LBB34_32
# BB#29:                                # %if.end.4.i.90
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB34_45
# BB#30:                                # %if.end.12.i.92
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB34_32
# BB#31:                                # %comparedictkey.exit96
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB34_45
.LBB34_32:                              # %if.end.29
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.61, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.61, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB34_45
# BB#33:                                # %if.end.i.103
	testl	%ebp, %ebp
	jle	.LBB34_37
# BB#34:                                # %if.end.4.i.107
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB34_45
# BB#35:                                # %if.end.12.i.109
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB34_37
# BB#36:                                # %comparedictkey.exit113
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB34_45
.LBB34_37:                              # %if.end.33
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	dict_find_string
	movb	$1, %cl
	cmpl	%eax, %ebp
	jne	.LBB34_44
# BB#38:                                # %if.end.i.120
	testl	%ebp, %ebp
	jle	.LBB34_39
# BB#40:                                # %if.end.4.i.124
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %edi
	cmpl	%edi, %eax
	jne	.LBB34_44
# BB#41:                                # %if.end.12.i.126
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB34_43
# BB#42:
	xorl	%ecx, %ecx
	jmp	.LBB34_44
.LBB34_39:
	xorl	%ecx, %ecx
	jmp	.LBB34_44
.LBB34_43:                              # %if.end.20.i.128
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	sete	%cl
.LBB34_44:                              # %comparedictkey.exit130
	movzbl	%cl, %r14d
	xorl	$1, %r14d
.LBB34_45:                              # %cleanup
	movl	%r14d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end34:
	.size	cieacompareproc, .Lfunc_end34-cieacompareproc
	.cfi_endproc

	.align	16, 0x90
	.type	setcieabcspace,@function
setcieabcspace:                         # @setcieabcspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 40
	subq	$296, %rsp              # imm = 0x128
.Ltmp157:
	.cfi_def_cfa_offset 336
.Ltmp158:
	.cfi_offset %rbx, -40
.Ltmp159:
	.cfi_offset %r12, -32
.Ltmp160:
	.cfi_offset %r14, -24
.Ltmp161:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$-21, %eax
	cmpl	$2, 80(%rbx)
	jl	.LBB35_9
# BB#1:                                 # %if.end
	leaq	504(%rbx), %rdi
	leaq	272(%rsp), %rdx
	movl	$.L.str.55, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB35_5
# BB#2:                                 # %if.then.2
	movq	272(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$1, %edx
	jne	.LBB35_9
# BB#3:                                 # %if.end.6
	cmpw	$0, 8(%rcx)
	je	.LBB35_5
# BB#4:                                 # %if.then.7
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	setrgbspace
	jmp	.LBB35_9
.LBB35_5:                               # %if.end.10
	movl	$0, (%r15)
	movq	8(%rbx), %rdi
	leaq	280(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB35_9
# BB#6:                                 # %if.end.15
	cmpl	$0, (%r14)
	jle	.LBB35_8
# BB#7:                                 # %if.then.18
	movq	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 24(%rsp)
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setcolor
	movl	$0, (%r14)
	jmp	.LBB35_9
.LBB35_8:                               # %if.end.23
	movq	8(%r12), %rax
	movq	8(%rax), %rdx
	leaq	280(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cieabcspace
	movl	$1, (%r15)
	incl	(%r14)
.LBB35_9:                               # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end35:
	.size	setcieabcspace, .Lfunc_end35-setcieabcspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI36_0:
	.long	3323740160              # float -1.0E+4
.LCPI36_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	validatecieabcspace,@function
validatecieabcspace:                    # @validatecieabcspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp165:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp166:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp168:
	.cfi_def_cfa_offset 144
.Ltmp169:
	.cfi_offset %rbx, -56
.Ltmp170:
	.cfi_offset %r12, -48
.Ltmp171:
	.cfi_offset %r13, -40
.Ltmp172:
	.cfi_offset %r14, -32
.Ltmp173:
	.cfi_offset %r15, -24
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB36_1
# BB#2:                                 # %if.end
	cmpl	$2, 4(%rsi)
	jne	.LBB36_3
# BB#4:                                 # %if.end.6
	movq	8(%r14), %rdi
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#5:                                 # %if.end.10
	movzwl	48(%rsp), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$544, %eax              # imm = 0x220
	jne	.LBB36_6
# BB#8:                                 # %if.end.24
	leaq	48(%rsp), %rsi
	movq	%r14, %rdi
	callq	checkWhitePoint
	testl	%eax, %eax
	jne	.LBB36_75
# BB#9:                                 # %if.end.29
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB36_24
# BB#10:                                # %land.lhs.true
	movq	40(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB36_24
# BB#11:                                # %if.then.39
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB36_12
# BB#13:                                # %if.end.47
	cmpl	$6, 4(%r15)
	jne	.LBB36_14
# BB#15:                                # %if.end.53
	movq	8(%r14), %r12
	leaq	72(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#16:                                # %if.end.i
	movzbl	73(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB36_17
# BB#20:                                # %if.then.15.i
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB36_21
.LBB36_1:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_3:
	movl	$-15, %eax
.LBB36_75:                              # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_6:                               # %if.then.17
	movl	$-7, %eax
	movzbl	49(%rsp), %ecx
	cmpl	$2, %ecx
	je	.LBB36_75
# BB#7:                                 # %cond.true
	leaq	48(%rsp), %rdi
	callq	check_type_failed
	jmp	.LBB36_75
.LBB36_12:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_14:
	movl	$-15, %eax
	jmp	.LBB36_75
.LBB36_17:                              # %if.end.i
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB36_18
# BB#19:                                # %if.then.6.i
	cvtsi2ssq	80(%rsp), %xmm0
.LBB36_21:                              # %if.end.21.i
	movss	.LCPI36_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB36_23
# BB#22:                                # %if.end.21.i
	ucomiss	.LCPI36_1(%rip), %xmm0
	ja	.LBB36_23
# BB#95:                                # %for.cond.i
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	leaq	72(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#96:                                # %if.end.i.1
	movzbl	73(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI36_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jne	.LBB36_97
# BB#100:                               # %if.then.6.i.1
	cvtsi2ssq	80(%rsp), %xmm1
	jmp	.LBB36_101
.LBB36_18:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_97:                              # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB36_98
# BB#99:                                # %if.then.15.i.1
	movss	80(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB36_101:                             # %if.end.21.i.1
	ucomiss	%xmm1, %xmm0
	ja	.LBB36_23
# BB#102:                               # %if.end.21.i.1
	ucomiss	.LCPI36_1(%rip), %xmm1
	movss	%xmm1, 16(%rsp)         # 4-byte Spill
	ja	.LBB36_23
# BB#103:                               # %for.cond.i.1
	leaq	72(%rsp), %rcx
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#104:                               # %if.end.i.2
	movzbl	73(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB36_105
# BB#108:                               # %if.then.6.i.2
	cvtsi2ssq	80(%rsp), %xmm0
	jmp	.LBB36_109
.LBB36_98:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_105:                             # %if.end.i.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB36_106
# BB#107:                               # %if.then.15.i.2
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB36_109:                             # %if.end.21.i.2
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	.LCPI36_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	12(%rsp), %xmm0         # 4-byte Folded Reload
	ja	.LBB36_23
# BB#110:                               # %if.end.21.i.2
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI36_1(%rip), %xmm0
	ja	.LBB36_23
# BB#111:                               # %for.cond.i.2
	leaq	72(%rsp), %rcx
	movl	$3, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#112:                               # %if.end.i.3
	movzbl	73(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB36_113
# BB#116:                               # %if.then.6.i.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	80(%rsp), %xmm0
	jmp	.LBB36_117
.LBB36_106:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_113:                             # %if.end.i.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB36_114
# BB#115:                               # %if.then.15.i.3
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB36_117:                             # %if.end.21.i.3
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movss	.LCPI36_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	8(%rsp), %xmm0          # 4-byte Folded Reload
	ja	.LBB36_23
# BB#118:                               # %if.end.21.i.3
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI36_1(%rip), %xmm0
	ja	.LBB36_23
# BB#119:                               # %for.cond.i.3
	leaq	72(%rsp), %rcx
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#120:                               # %if.end.i.4
	movzbl	73(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB36_121
# BB#124:                               # %if.then.6.i.4
	xorps	%xmm0, %xmm0
	cvtsi2ssq	80(%rsp), %xmm0
	jmp	.LBB36_125
.LBB36_114:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_121:                             # %if.end.i.4
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB36_122
# BB#123:                               # %if.then.15.i.4
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB36_125:                             # %if.end.21.i.4
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movss	.LCPI36_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	4(%rsp), %xmm0          # 4-byte Folded Reload
	ja	.LBB36_23
# BB#126:                               # %if.end.21.i.4
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI36_1(%rip), %xmm0
	ja	.LBB36_23
# BB#127:                               # %for.cond.i.4
	leaq	72(%rsp), %rcx
	movl	$5, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#128:                               # %if.end.i.5
	movzbl	73(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB36_129
# BB#131:                               # %if.then.6.i.5
	xorps	%xmm0, %xmm0
	cvtsi2ssq	80(%rsp), %xmm0
	jmp	.LBB36_132
.LBB36_122:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_129:                             # %if.end.i.5
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB36_75
# BB#130:                               # %if.then.15.i.5
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB36_132:                             # %if.end.21.i.5
	movss	.LCPI36_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB36_23
# BB#133:                               # %if.end.21.i.5
	ucomiss	.LCPI36_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB36_75
# BB#134:                               # %for.cond.i.5
	movss	20(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	16(%rsp), %xmm1         # 4-byte Folded Reload
	ja	.LBB36_135
# BB#136:                               # %for.cond.i.5
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	8(%rsp), %xmm1          # 4-byte Folded Reload
	ja	.LBB36_137
# BB#138:                               # %for.cond.i.5
	movss	4(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB36_139
.LBB36_24:                              # %if.end.76
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.66, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB36_33
# BB#25:                                # %land.lhs.true.80
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	je	.LBB36_33
# BB#26:                                # %if.then.87
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB36_27
# BB#28:                                # %if.end.95
	cmpl	$3, 4(%rsi)
	jne	.LBB36_29
# BB#30:                                # %for.cond.preheader
	movq	8(%r14), %rdi
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#31:                                # %do.body
	movzwl	24(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB36_32
# BB#91:                                # %for.cond
	movq	8(%r14), %rdi
	movq	40(%rsp), %rsi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#92:                                # %do.body.1
	movzwl	24(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB36_32
# BB#93:                                # %for.cond.1
	movq	8(%r14), %rdi
	movq	40(%rsp), %rsi
	leaq	24(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#94:                                # %do.body.2
	movzwl	24(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB36_32
.LBB36_33:                              # %if.end.121
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.67, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB36_46
# BB#34:                                # %land.lhs.true.125
	movq	40(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB36_46
# BB#35:                                # %if.then.132
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	movl	$-20, %eax
	jne	.LBB36_75
# BB#36:                                # %if.end.140
	cmpl	$9, 4(%r15)
	movl	$-15, %eax
	jne	.LBB36_75
# BB#37:                                # %if.end.146
	movq	8(%r14), %r12
	xorl	%r13d, %r13d
	leaq	72(%rsp), %rbp
.LBB36_39:                              # %for.body.i.46
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rbp, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#40:                                # %if.end.i.47
                                        #   in Loop: Header=BB36_39 Depth=1
	movzbl	73(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB36_41
# BB#43:                                # %if.then.15.i.52
                                        #   in Loop: Header=BB36_39 Depth=1
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB36_44
.LBB36_41:                              # %if.end.i.47
                                        #   in Loop: Header=BB36_39 Depth=1
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB36_75
# BB#42:                                # %if.then.6.i.50
                                        #   in Loop: Header=BB36_39 Depth=1
	cvtsi2ssq	80(%rsp), %xmm0
.LBB36_44:                              # %if.end.21.i.57
                                        #   in Loop: Header=BB36_39 Depth=1
	movss	.LCPI36_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-13, %eax
	ja	.LBB36_75
# BB#45:                                # %if.end.21.i.57
                                        #   in Loop: Header=BB36_39 Depth=1
	ucomiss	.LCPI36_1(%rip), %xmm0
	ja	.LBB36_75
# BB#38:                                # %for.cond.i.42
                                        #   in Loop: Header=BB36_39 Depth=1
	incq	%r13
	cmpq	$9, %r13
	jl	.LBB36_39
.LBB36_46:                              # %if.end.155
	leaq	48(%rsp), %rsi
	movq	%r14, %rdi
	callq	checkRangeLMN
	testl	%eax, %eax
	jne	.LBB36_75
# BB#47:                                # %if.end.160
	leaq	48(%rsp), %rsi
	movq	%r14, %rdi
	callq	checkDecodeLMN
	testl	%eax, %eax
	jne	.LBB36_75
# BB#48:                                # %if.end.165
	leaq	48(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.62, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB36_61
# BB#49:                                # %land.lhs.true.i
	movq	64(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB36_61
# BB#50:                                # %if.then.i
	movzwl	(%r15), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB36_75
# BB#51:                                # %if.end.i.64
	movl	$-15, %eax
	cmpl	$9, 4(%r15)
	jne	.LBB36_75
# BB#52:                                # %if.end.13.i
	movq	8(%r14), %r12
	xorl	%r13d, %r13d
	leaq	72(%rsp), %rbp
.LBB36_54:                              # %for.body.i.75
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rbp, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#55:                                # %if.end.i.76
                                        #   in Loop: Header=BB36_54 Depth=1
	movzbl	73(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB36_56
# BB#58:                                # %if.then.15.i.81
                                        #   in Loop: Header=BB36_54 Depth=1
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB36_59
.LBB36_56:                              # %if.end.i.76
                                        #   in Loop: Header=BB36_54 Depth=1
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB36_75
# BB#57:                                # %if.then.6.i.79
                                        #   in Loop: Header=BB36_54 Depth=1
	cvtsi2ssq	80(%rsp), %xmm0
.LBB36_59:                              # %if.end.21.i.86
                                        #   in Loop: Header=BB36_54 Depth=1
	movss	.LCPI36_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-13, %eax
	ja	.LBB36_75
# BB#60:                                # %if.end.21.i.86
                                        #   in Loop: Header=BB36_54 Depth=1
	ucomiss	.LCPI36_1(%rip), %xmm0
	ja	.LBB36_75
# BB#53:                                # %for.cond.i.71
                                        #   in Loop: Header=BB36_54 Depth=1
	incq	%r13
	cmpq	$9, %r13
	jl	.LBB36_54
.LBB36_61:                              # %if.end.170
	leaq	48(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB36_74
# BB#62:                                # %land.lhs.true.i.95
	movq	64(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB36_74
# BB#63:                                # %if.then.i.99
	movzwl	(%r15), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB36_75
# BB#64:                                # %if.end.i.102
	movl	$-15, %eax
	cmpl	$3, 4(%r15)
	jne	.LBB36_75
# BB#65:                                # %if.end.13.i.106
	movq	8(%r14), %r14
	leaq	72(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#66:                                # %if.end.i.119
	movzbl	73(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB36_67
# BB#70:                                # %if.then.15.i.124
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB36_71
.LBB36_27:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_29:
	movl	$-15, %eax
	jmp	.LBB36_75
.LBB36_23:
	movl	$-13, %eax
	jmp	.LBB36_75
.LBB36_32:                              # %if.then.118
	leaq	24(%rsp), %rdi
	callq	check_proc_failed
	jmp	.LBB36_75
.LBB36_67:                              # %if.end.i.119
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB36_68
# BB#69:                                # %if.then.6.i.122
	cvtsi2ssq	80(%rsp), %xmm0
.LBB36_71:                              # %if.end.21.i.129
	movss	.LCPI36_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB36_73
# BB#72:                                # %if.end.21.i.129
	ucomiss	.LCPI36_1(%rip), %xmm0
	ja	.LBB36_73
# BB#76:                                # %for.cond.i.114
	leaq	72(%rsp), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#77:                                # %if.end.i.119.1
	movzbl	73(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB36_78
# BB#81:                                # %if.then.6.i.122.1
	cvtsi2ssq	80(%rsp), %xmm0
	jmp	.LBB36_82
.LBB36_68:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_78:                              # %if.end.i.119.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB36_79
# BB#80:                                # %if.then.15.i.124.1
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB36_82:                              # %if.end.21.i.129.1
	movss	.LCPI36_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB36_73
# BB#83:                                # %if.end.21.i.129.1
	ucomiss	.LCPI36_1(%rip), %xmm0
	ja	.LBB36_73
# BB#84:                                # %for.cond.i.114.1
	leaq	72(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB36_75
# BB#85:                                # %if.end.i.119.2
	movzbl	73(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB36_86
# BB#88:                                # %if.then.6.i.122.2
	cvtsi2ssq	80(%rsp), %xmm0
	jmp	.LBB36_89
.LBB36_79:
	movl	$-20, %eax
	jmp	.LBB36_75
.LBB36_86:                              # %if.end.i.119.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB36_75
# BB#87:                                # %if.then.15.i.124.2
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB36_89:                              # %if.end.21.i.129.2
	movss	.LCPI36_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB36_73
# BB#90:                                # %if.end.21.i.129.2
	ucomiss	.LCPI36_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB36_75
.LBB36_74:                              # %if.end.175
	movq	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB36_75
.LBB36_73:
	movl	$-13, %eax
	jmp	.LBB36_75
.LBB36_139:
	movl	$-15, %eax
	jmp	.LBB36_75
.LBB36_135:
	movl	$-15, %eax
	jmp	.LBB36_75
.LBB36_137:
	movl	$-15, %eax
	jmp	.LBB36_75
.Lfunc_end36:
	.size	validatecieabcspace, .Lfunc_end36-validatecieabcspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI37_0:
	.long	3323740160              # float -1.0E+4
.LCPI37_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	cieabcrange,@function
cieabcrange:                            # @cieabcrange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp177:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp178:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp179:
	.cfi_def_cfa_offset 80
.Ltmp180:
	.cfi_offset %rbx, -40
.Ltmp181:
	.cfi_offset %r12, -32
.Ltmp182:
	.cfi_offset %r14, -24
.Ltmp183:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB37_14
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB37_12
# BB#2:                                 # %land.lhs.true
	movq	(%rsp), %r14
	movzbl	1(%r14), %eax
	cmpl	$14, %eax
	jne	.LBB37_3
.LBB37_12:                              # %if.else
	movl	$default_0_1, %esi
	movl	$24, %edx
	movq	%r12, %rdi
	callq	memcpy
.LBB37_13:                              # %cleanup
	xorl	%eax, %eax
.LBB37_14:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB37_3:                               # %if.then.5
	movq	8(%rbx), %r15
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB37_14
# BB#4:                                 # %if.end.i
	movzbl	25(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB37_5
# BB#8:                                 # %if.then.15.i
	movl	32(%rsp), %eax
	movl	%eax, (%r12)
	movd	%eax, %xmm0
	jmp	.LBB37_9
.LBB37_5:                               # %if.end.i
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB37_6
# BB#7:                                 # %if.then.6.i
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, (%r12)
.LBB37_9:                               # %if.end.21.i
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB37_11
# BB#10:                                # %if.end.21.i
	ucomiss	.LCPI37_1(%rip), %xmm0
	ja	.LBB37_11
# BB#15:                                # %for.cond.i
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB37_14
# BB#16:                                # %if.end.i.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB37_17
# BB#20:                                # %if.then.6.i.1
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 4(%r12)
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB37_21
.LBB37_6:
	movl	$-20, %eax
	jmp	.LBB37_14
.LBB37_17:                              # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB37_18
# BB#19:                                # %if.then.15.i.1
	movl	32(%rsp), %eax
	movl	%eax, 4(%r12)
	movd	%eax, %xmm0
.LBB37_21:                              # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB37_11
# BB#22:                                # %if.end.21.i.1
	ucomiss	.LCPI37_1(%rip), %xmm0
	ja	.LBB37_11
# BB#23:                                # %for.cond.i.1
	leaq	24(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB37_14
# BB#24:                                # %if.end.i.2
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB37_25
# BB#28:                                # %if.then.6.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 8(%r12)
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB37_29
.LBB37_18:
	movl	$-20, %eax
	jmp	.LBB37_14
.LBB37_25:                              # %if.end.i.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB37_26
# BB#27:                                # %if.then.15.i.2
	movl	32(%rsp), %eax
	movl	%eax, 8(%r12)
	movd	%eax, %xmm0
.LBB37_29:                              # %if.end.21.i.2
	ucomiss	%xmm0, %xmm1
	ja	.LBB37_11
# BB#30:                                # %if.end.21.i.2
	ucomiss	.LCPI37_1(%rip), %xmm0
	ja	.LBB37_11
# BB#31:                                # %for.cond.i.2
	leaq	24(%rsp), %rcx
	movl	$3, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB37_14
# BB#32:                                # %if.end.i.3
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB37_33
# BB#36:                                # %if.then.6.i.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 12(%r12)
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB37_37
.LBB37_26:
	movl	$-20, %eax
	jmp	.LBB37_14
.LBB37_33:                              # %if.end.i.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB37_34
# BB#35:                                # %if.then.15.i.3
	movl	32(%rsp), %eax
	movl	%eax, 12(%r12)
	movd	%eax, %xmm0
.LBB37_37:                              # %if.end.21.i.3
	ucomiss	%xmm0, %xmm1
	ja	.LBB37_11
# BB#38:                                # %if.end.21.i.3
	ucomiss	.LCPI37_1(%rip), %xmm0
	ja	.LBB37_11
# BB#39:                                # %for.cond.i.3
	leaq	24(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB37_14
# BB#40:                                # %if.end.i.4
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB37_41
# BB#44:                                # %if.then.6.i.4
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 16(%r12)
	jmp	.LBB37_45
.LBB37_34:
	movl	$-20, %eax
	jmp	.LBB37_14
.LBB37_41:                              # %if.end.i.4
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB37_42
# BB#43:                                # %if.then.15.i.4
	movl	32(%rsp), %eax
	movl	%eax, 16(%r12)
	movd	%eax, %xmm0
.LBB37_45:                              # %if.end.21.i.4
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB37_11
# BB#46:                                # %if.end.21.i.4
	ucomiss	.LCPI37_1(%rip), %xmm0
	ja	.LBB37_11
# BB#47:                                # %for.cond.i.4
	leaq	24(%rsp), %rcx
	movl	$5, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB37_14
# BB#48:                                # %if.end.i.5
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB37_49
# BB#51:                                # %if.then.6.i.5
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 20(%r12)
	jmp	.LBB37_52
.LBB37_42:
	movl	$-20, %eax
	jmp	.LBB37_14
.LBB37_49:                              # %if.end.i.5
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB37_14
# BB#50:                                # %if.then.15.i.5
	movl	32(%rsp), %eax
	movl	%eax, 20(%r12)
	movd	%eax, %xmm0
.LBB37_52:                              # %if.end.21.i.5
	movss	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB37_11
# BB#53:                                # %if.end.21.i.5
	ucomiss	.LCPI37_1(%rip), %xmm0
	movl	$-13, %eax
	jbe	.LBB37_13
	jmp	.LBB37_14
.LBB37_11:
	movl	$-13, %eax
	jmp	.LBB37_14
.Lfunc_end37:
	.size	cieabcrange, .Lfunc_end37-cieabcrange
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI38_0:
	.long	3323740160              # float -1.0E+4
.LCPI38_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	cieabcdomain,@function
cieabcdomain:                           # @cieabcdomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp184:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp185:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp186:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp187:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp188:
	.cfi_def_cfa_offset 80
.Ltmp189:
	.cfi_offset %rbx, -40
.Ltmp190:
	.cfi_offset %r12, -32
.Ltmp191:
	.cfi_offset %r14, -24
.Ltmp192:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB38_14
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB38_12
# BB#2:                                 # %land.lhs.true
	movq	(%rsp), %r14
	movzbl	1(%r14), %eax
	cmpl	$14, %eax
	jne	.LBB38_3
.LBB38_12:                              # %if.else
	movl	$default_0_1, %esi
	movl	$24, %edx
	movq	%r12, %rdi
	callq	memcpy
.LBB38_13:                              # %cleanup
	xorl	%eax, %eax
.LBB38_14:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB38_3:                               # %if.then.5
	movq	8(%rbx), %r15
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB38_14
# BB#4:                                 # %if.end.i
	movzbl	25(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB38_5
# BB#8:                                 # %if.then.15.i
	movl	32(%rsp), %eax
	movl	%eax, (%r12)
	movd	%eax, %xmm0
	jmp	.LBB38_9
.LBB38_5:                               # %if.end.i
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB38_6
# BB#7:                                 # %if.then.6.i
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, (%r12)
.LBB38_9:                               # %if.end.21.i
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB38_11
# BB#10:                                # %if.end.21.i
	ucomiss	.LCPI38_1(%rip), %xmm0
	ja	.LBB38_11
# BB#15:                                # %for.cond.i
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB38_14
# BB#16:                                # %if.end.i.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB38_17
# BB#20:                                # %if.then.6.i.1
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 4(%r12)
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB38_21
.LBB38_6:
	movl	$-20, %eax
	jmp	.LBB38_14
.LBB38_17:                              # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB38_18
# BB#19:                                # %if.then.15.i.1
	movl	32(%rsp), %eax
	movl	%eax, 4(%r12)
	movd	%eax, %xmm0
.LBB38_21:                              # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB38_11
# BB#22:                                # %if.end.21.i.1
	ucomiss	.LCPI38_1(%rip), %xmm0
	ja	.LBB38_11
# BB#23:                                # %for.cond.i.1
	leaq	24(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB38_14
# BB#24:                                # %if.end.i.2
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB38_25
# BB#28:                                # %if.then.6.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 8(%r12)
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB38_29
.LBB38_18:
	movl	$-20, %eax
	jmp	.LBB38_14
.LBB38_25:                              # %if.end.i.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB38_26
# BB#27:                                # %if.then.15.i.2
	movl	32(%rsp), %eax
	movl	%eax, 8(%r12)
	movd	%eax, %xmm0
.LBB38_29:                              # %if.end.21.i.2
	ucomiss	%xmm0, %xmm1
	ja	.LBB38_11
# BB#30:                                # %if.end.21.i.2
	ucomiss	.LCPI38_1(%rip), %xmm0
	ja	.LBB38_11
# BB#31:                                # %for.cond.i.2
	leaq	24(%rsp), %rcx
	movl	$3, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB38_14
# BB#32:                                # %if.end.i.3
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB38_33
# BB#36:                                # %if.then.6.i.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 12(%r12)
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB38_37
.LBB38_26:
	movl	$-20, %eax
	jmp	.LBB38_14
.LBB38_33:                              # %if.end.i.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB38_34
# BB#35:                                # %if.then.15.i.3
	movl	32(%rsp), %eax
	movl	%eax, 12(%r12)
	movd	%eax, %xmm0
.LBB38_37:                              # %if.end.21.i.3
	ucomiss	%xmm0, %xmm1
	ja	.LBB38_11
# BB#38:                                # %if.end.21.i.3
	ucomiss	.LCPI38_1(%rip), %xmm0
	ja	.LBB38_11
# BB#39:                                # %for.cond.i.3
	leaq	24(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB38_14
# BB#40:                                # %if.end.i.4
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB38_41
# BB#44:                                # %if.then.6.i.4
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 16(%r12)
	jmp	.LBB38_45
.LBB38_34:
	movl	$-20, %eax
	jmp	.LBB38_14
.LBB38_41:                              # %if.end.i.4
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB38_42
# BB#43:                                # %if.then.15.i.4
	movl	32(%rsp), %eax
	movl	%eax, 16(%r12)
	movd	%eax, %xmm0
.LBB38_45:                              # %if.end.21.i.4
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB38_11
# BB#46:                                # %if.end.21.i.4
	ucomiss	.LCPI38_1(%rip), %xmm0
	ja	.LBB38_11
# BB#47:                                # %for.cond.i.4
	leaq	24(%rsp), %rcx
	movl	$5, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB38_14
# BB#48:                                # %if.end.i.5
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB38_49
# BB#51:                                # %if.then.6.i.5
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 20(%r12)
	jmp	.LBB38_52
.LBB38_42:
	movl	$-20, %eax
	jmp	.LBB38_14
.LBB38_49:                              # %if.end.i.5
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB38_14
# BB#50:                                # %if.then.15.i.5
	movl	32(%rsp), %eax
	movl	%eax, 20(%r12)
	movd	%eax, %xmm0
.LBB38_52:                              # %if.end.21.i.5
	movss	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB38_11
# BB#53:                                # %if.end.21.i.5
	ucomiss	.LCPI38_1(%rip), %xmm0
	movl	$-13, %eax
	jbe	.LBB38_13
	jmp	.LBB38_14
.LBB38_11:
	movl	$-13, %eax
	jmp	.LBB38_14
.Lfunc_end38:
	.size	cieabcdomain, .Lfunc_end38-cieabcdomain
	.cfi_endproc

	.align	16, 0x90
	.type	cieabcvalidate,@function
cieabcvalidate:                         # @cieabcvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	cmpl	$3, %ecx
	jl	.LBB39_8
# BB#1:                                 # %if.end
	movq	624(%rdi), %rcx
	movzbl	-31(%rcx), %edx
	movl	$-20, %eax
	cmpl	$16, %edx
	je	.LBB39_3
# BB#2:                                 # %if.end
	movzbl	%dl, %edx
	cmpl	$11, %edx
	jne	.LBB39_8
.LBB39_3:                               # %if.end.11
	movzbl	-15(%rcx), %edx
	cmpl	$11, %edx
	je	.LBB39_5
# BB#4:                                 # %if.end.11
	movzbl	%dl, %edx
	cmpl	$16, %edx
	jne	.LBB39_8
.LBB39_5:                               # %if.end.11.1
	movzbl	1(%rcx), %ecx
	cmpl	$16, %ecx
	je	.LBB39_7
# BB#6:                                 # %if.end.11.1
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB39_8
.LBB39_7:                               # %if.end.11.2
	xorl	%eax, %eax
.LBB39_8:                               # %cleanup
	retq
.Lfunc_end39:
	.size	cieabcvalidate, .Lfunc_end39-cieabcvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	cieabccompareproc,@function
cieabccompareproc:                      # @cieabccompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp194:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp195:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp196:
	.cfi_def_cfa_offset 80
.Ltmp197:
	.cfi_offset %rbx, -32
.Ltmp198:
	.cfi_offset %r14, -24
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	xorl	%r14d, %r14d
	testl	%eax, %eax
	js	.LBB40_45
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB40_45
# BB#2:                                 # %if.end.6
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB40_45
# BB#3:                                 # %if.end.i
	testl	%ebp, %ebp
	jle	.LBB40_7
# BB#4:                                 # %if.end.4.i
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB40_45
# BB#5:                                 # %if.end.12.i
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB40_7
# BB#6:                                 # %comparedictkey.exit
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB40_45
.LBB40_7:                               # %if.end.9
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB40_45
# BB#8:                                 # %if.end.i.18
	testl	%ebp, %ebp
	jle	.LBB40_12
# BB#9:                                 # %if.end.4.i.22
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB40_45
# BB#10:                                # %if.end.12.i.24
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB40_12
# BB#11:                                # %comparedictkey.exit28
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB40_45
.LBB40_12:                              # %if.end.13
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB40_45
# BB#13:                                # %if.end.i.35
	testl	%ebp, %ebp
	jle	.LBB40_17
# BB#14:                                # %if.end.4.i.39
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB40_45
# BB#15:                                # %if.end.12.i.41
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB40_17
# BB#16:                                # %comparedictkey.exit45
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB40_45
.LBB40_17:                              # %if.end.17
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.66, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.66, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB40_45
# BB#18:                                # %if.end.i.52
	testl	%ebp, %ebp
	jle	.LBB40_22
# BB#19:                                # %if.end.4.i.56
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB40_45
# BB#20:                                # %if.end.12.i.58
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB40_22
# BB#21:                                # %comparedictkey.exit62
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB40_45
.LBB40_22:                              # %if.end.21
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.67, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.67, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB40_45
# BB#23:                                # %if.end.i.69
	testl	%ebp, %ebp
	jle	.LBB40_27
# BB#24:                                # %if.end.4.i.73
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB40_45
# BB#25:                                # %if.end.12.i.75
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB40_27
# BB#26:                                # %comparedictkey.exit79
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB40_45
.LBB40_27:                              # %if.end.25
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB40_45
# BB#28:                                # %if.end.i.86
	testl	%ebp, %ebp
	jle	.LBB40_32
# BB#29:                                # %if.end.4.i.90
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB40_45
# BB#30:                                # %if.end.12.i.92
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB40_32
# BB#31:                                # %comparedictkey.exit96
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB40_45
.LBB40_32:                              # %if.end.29
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.61, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.61, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB40_45
# BB#33:                                # %if.end.i.103
	testl	%ebp, %ebp
	jle	.LBB40_37
# BB#34:                                # %if.end.4.i.107
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB40_45
# BB#35:                                # %if.end.12.i.109
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB40_37
# BB#36:                                # %comparedictkey.exit113
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB40_45
.LBB40_37:                              # %if.end.33
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	dict_find_string
	movb	$1, %cl
	cmpl	%eax, %ebp
	jne	.LBB40_44
# BB#38:                                # %if.end.i.120
	testl	%ebp, %ebp
	jle	.LBB40_39
# BB#40:                                # %if.end.4.i.124
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %edi
	cmpl	%edi, %eax
	jne	.LBB40_44
# BB#41:                                # %if.end.12.i.126
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB40_43
# BB#42:
	xorl	%ecx, %ecx
	jmp	.LBB40_44
.LBB40_39:
	xorl	%ecx, %ecx
	jmp	.LBB40_44
.LBB40_43:                              # %if.end.20.i.128
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	sete	%cl
.LBB40_44:                              # %comparedictkey.exit130
	movzbl	%cl, %r14d
	xorl	$1, %r14d
.LBB40_45:                              # %cleanup
	movl	%r14d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end40:
	.size	cieabccompareproc, .Lfunc_end40-cieabccompareproc
	.cfi_endproc

	.align	16, 0x90
	.type	setciedefspace,@function
setciedefspace:                         # @setciedefspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp200:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp201:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp202:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp203:
	.cfi_def_cfa_offset 40
	subq	$296, %rsp              # imm = 0x128
.Ltmp204:
	.cfi_def_cfa_offset 336
.Ltmp205:
	.cfi_offset %rbx, -40
.Ltmp206:
	.cfi_offset %r12, -32
.Ltmp207:
	.cfi_offset %r14, -24
.Ltmp208:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$-21, %eax
	cmpl	$3, 80(%rbx)
	jl	.LBB41_9
# BB#1:                                 # %if.end
	leaq	504(%rbx), %rdi
	leaq	272(%rsp), %rdx
	movl	$.L.str.55, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB41_5
# BB#2:                                 # %if.then.2
	movq	272(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$1, %edx
	jne	.LBB41_9
# BB#3:                                 # %if.end.6
	cmpw	$0, 8(%rcx)
	je	.LBB41_5
# BB#4:                                 # %if.then.7
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	setrgbspace
	jmp	.LBB41_9
.LBB41_5:                               # %if.end.10
	movl	$0, (%r15)
	movq	8(%rbx), %rdi
	leaq	280(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB41_9
# BB#6:                                 # %if.end.15
	cmpl	$0, (%r14)
	jle	.LBB41_8
# BB#7:                                 # %if.then.18
	movq	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 24(%rsp)
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setcolor
	movl	$0, (%r14)
	jmp	.LBB41_9
.LBB41_8:                               # %if.end.23
	movq	8(%r12), %rax
	movq	8(%rax), %rdx
	leaq	280(%rsp), %rsi
	movq	%rbx, %rdi
	callq	ciedefspace
	movl	$1, (%r15)
	incl	(%r14)
.LBB41_9:                               # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end41:
	.size	setciedefspace, .Lfunc_end41-setciedefspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI42_0:
	.long	3323740160              # float -1.0E+4
.LCPI42_1:
	.long	1176256512              # float 1.0E+4
.LCPI42_2:
	.long	1065353216              # float 1
.LCPI42_3:
	.long	1077936128              # float 3
	.text
	.align	16, 0x90
	.type	validateciedefspace,@function
validateciedefspace:                    # @validateciedefspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp209:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp210:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp211:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp212:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp213:
	.cfi_def_cfa_offset 48
	subq	$112, %rsp
.Ltmp214:
	.cfi_def_cfa_offset 160
.Ltmp215:
	.cfi_offset %rbx, -48
.Ltmp216:
	.cfi_offset %r12, -40
.Ltmp217:
	.cfi_offset %r13, -32
.Ltmp218:
	.cfi_offset %r14, -24
.Ltmp219:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB42_83
# BB#1:                                 # %if.end
	cmpl	$2, 4(%rsi)
	jne	.LBB42_2
# BB#3:                                 # %if.end.6
	movq	8(%r14), %rdi
	leaq	48(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#4:                                 # %if.end.10
	movzwl	48(%rsp), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$544, %eax              # imm = 0x220
	jne	.LBB42_5
# BB#7:                                 # %if.end.24
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	validatecieabcspace
	testl	%eax, %eax
	jne	.LBB42_83
# BB#8:                                 # %if.end.29
	leaq	24(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.68, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB42_9
# BB#10:                                # %if.then.33
	movq	40(%rsp), %r15
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	movl	$-20, %eax
	jne	.LBB42_83
# BB#11:                                # %if.end.41
	cmpl	$4, 4(%r15)
	jne	.LBB42_12
# BB#13:                                # %if.end.47
	movq	8(%r14), %r12
	leaq	96(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#14:                                # %if.end.i
	movzbl	97(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB42_15
# BB#18:                                # %if.then.15.i
	movl	104(%rsp), %eax
	movl	%eax, 64(%rsp)
	movd	%eax, %xmm0
	jmp	.LBB42_19
.LBB42_2:
	movl	$-15, %eax
.LBB42_83:                              # %cleanup
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB42_5:                               # %if.then.17
	movl	$-7, %eax
	movzbl	49(%rsp), %ecx
	cmpl	$2, %ecx
	je	.LBB42_83
# BB#6:                                 # %cond.true
	leaq	48(%rsp), %rdi
	callq	check_type_failed
	jmp	.LBB42_83
.LBB42_9:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_12:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_15:                              # %if.end.i
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB42_16
# BB#17:                                # %if.then.6.i
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 64(%rsp)
.LBB42_19:                              # %if.end.21.i
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_21
# BB#20:                                # %if.end.21.i
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_21
# BB#170:                               # %for.cond.i
	leaq	96(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#171:                               # %if.end.i.1
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB42_172
# BB#175:                               # %if.then.6.i.1
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 68(%rsp)
	jmp	.LBB42_176
.LBB42_16:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_172:                             # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_173
# BB#174:                               # %if.then.15.i.1
	movl	104(%rsp), %eax
	movl	%eax, 68(%rsp)
	movd	%eax, %xmm0
.LBB42_176:                             # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_21
# BB#177:                               # %if.end.21.i.1
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_21
# BB#178:                               # %for.cond.i.1
	leaq	96(%rsp), %rcx
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#179:                               # %if.end.i.2
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_180
# BB#182:                               # %if.then.6.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 72(%rsp)
	jmp	.LBB42_183
.LBB42_173:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_180:                             # %if.end.i.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB42_83
# BB#181:                               # %if.then.15.i.2
	movl	104(%rsp), %eax
	movl	%eax, 72(%rsp)
	movd	%eax, %xmm0
.LBB42_183:                             # %if.end.21.i.2
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_21
# BB#184:                               # %if.end.21.i.2
	ucomiss	.LCPI42_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB42_83
# BB#185:                               # %for.cond.i.2
	movss	.LCPI42_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	64(%rsp), %xmm1
	jae	.LBB42_186
# BB#22:                                # %lor.lhs.false
	ucomiss	68(%rsp), %xmm1
	jae	.LBB42_23
# BB#24:                                # %lor.lhs.false.61
	ucomiss	%xmm0, %xmm1
	jae	.LBB42_25
# BB#26:                                # %if.end.66
	movq	8(%r14), %rdi
	movq	40(%rsp), %rsi
	leaq	8(%rsp), %rcx
	movl	$3, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#27:                                # %if.end.73
	movq	8(%rsp), %rax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpq	$1024, %rcx             # imm = 0x400
	jne	.LBB42_28
# BB#29:                                # %if.end.81
	shrq	$32, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	64(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 4(%rsp)          # 4-byte Spill
	ucomiss	%xmm1, %xmm0
	movl	$-15, %eax
	jne	.LBB42_83
	jp	.LBB42_83
# BB#30:                                # %for.cond.preheader
	xorps	%xmm0, %xmm0
	movss	4(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB42_37
# BB#31:                                # %for.body.lr.ph
	movss	68(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI42_3(%rip), %xmm0
	mulss	72(%rsp), %xmm0
	movss	%xmm0, (%rsp)           # 4-byte Spill
	xorl	%r12d, %r12d
	leaq	8(%rsp), %r15
	leaq	24(%rsp), %r13
.LBB42_33:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#34:                                # %if.end.101
                                        #   in Loop: Header=BB42_33 Depth=1
	movzbl	25(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB42_35
# BB#36:                                # %if.end.109
                                        #   in Loop: Header=BB42_33 Depth=1
	movl	28(%rsp), %eax
	cvtsi2ssq	%rax, %xmm0
	ucomiss	(%rsp), %xmm0           # 4-byte Folded Reload
	movl	$-15, %eax
	jne	.LBB42_83
	jnp	.LBB42_32
	jmp	.LBB42_83
.LBB42_32:                              # %for.cond
                                        #   in Loop: Header=BB42_33 Depth=1
	leal	1(%r12), %eax
	leaq	1(%r12), %r12
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	4(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_33
.LBB42_37:                              # %if.end.120
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.69, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB42_56
# BB#38:                                # %land.lhs.true
	movzbl	25(%rsp), %eax
	cmpl	$14, %eax
	je	.LBB42_56
# BB#39:                                # %if.then.130
	movq	40(%rsp), %r15
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB42_40
# BB#41:                                # %if.end.138
	cmpl	$6, 4(%r15)
	jne	.LBB42_42
# BB#43:                                # %if.end.144
	movq	8(%r14), %r12
	leaq	96(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#44:                                # %if.end.i.49
	movzbl	97(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB42_45
# BB#48:                                # %if.then.15.i.54
	movl	104(%rsp), %eax
	movl	%eax, 64(%rsp)
	movd	%eax, %xmm0
	jmp	.LBB42_49
.LBB42_21:
	movl	$-13, %eax
	jmp	.LBB42_83
.LBB42_186:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_23:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_25:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_28:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_35:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_40:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_42:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_45:                              # %if.end.i.49
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB42_46
# BB#47:                                # %if.then.6.i.52
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 64(%rsp)
.LBB42_49:                              # %if.end.21.i.59
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_51
# BB#50:                                # %if.end.21.i.59
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_51
# BB#129:                               # %for.cond.i.44
	leaq	96(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#130:                               # %if.end.i.49.1
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_131
# BB#134:                               # %if.then.6.i.52.1
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 68(%rsp)
	jmp	.LBB42_135
.LBB42_46:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_131:                             # %if.end.i.49.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_132
# BB#133:                               # %if.then.15.i.54.1
	movl	104(%rsp), %eax
	movl	%eax, 68(%rsp)
	movd	%eax, %xmm0
.LBB42_135:                             # %if.end.21.i.59.1
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_51
# BB#136:                               # %if.end.21.i.59.1
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_51
# BB#137:                               # %for.cond.i.44.1
	leaq	96(%rsp), %rcx
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#138:                               # %if.end.i.49.2
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_139
# BB#142:                               # %if.then.6.i.52.2
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 72(%rsp)
	jmp	.LBB42_143
.LBB42_132:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_139:                             # %if.end.i.49.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_140
# BB#141:                               # %if.then.15.i.54.2
	movl	104(%rsp), %eax
	movl	%eax, 72(%rsp)
	movd	%eax, %xmm0
.LBB42_143:                             # %if.end.21.i.59.2
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_51
# BB#144:                               # %if.end.21.i.59.2
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_51
# BB#145:                               # %for.cond.i.44.2
	leaq	96(%rsp), %rcx
	movl	$3, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#146:                               # %if.end.i.49.3
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_147
# BB#150:                               # %if.then.6.i.52.3
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 76(%rsp)
	jmp	.LBB42_151
.LBB42_140:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_147:                             # %if.end.i.49.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_148
# BB#149:                               # %if.then.15.i.54.3
	movl	104(%rsp), %eax
	movl	%eax, 76(%rsp)
	movd	%eax, %xmm0
.LBB42_151:                             # %if.end.21.i.59.3
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_51
# BB#152:                               # %if.end.21.i.59.3
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_51
# BB#153:                               # %for.cond.i.44.3
	leaq	96(%rsp), %rcx
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#154:                               # %if.end.i.49.4
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_155
# BB#158:                               # %if.then.6.i.52.4
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	jmp	.LBB42_159
.LBB42_148:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_155:                             # %if.end.i.49.4
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_156
# BB#157:                               # %if.then.15.i.54.4
	movl	104(%rsp), %eax
	movl	%eax, 80(%rsp)
	movd	%eax, %xmm0
.LBB42_159:                             # %if.end.21.i.59.4
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_51
# BB#160:                               # %if.end.21.i.59.4
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_51
# BB#161:                               # %for.cond.i.44.4
	leaq	96(%rsp), %rcx
	movl	$5, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#162:                               # %if.end.i.49.5
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_163
# BB#165:                               # %if.then.6.i.52.5
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 84(%rsp)
	jmp	.LBB42_166
.LBB42_156:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_163:                             # %if.end.i.49.5
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB42_83
# BB#164:                               # %if.then.15.i.54.5
	movl	104(%rsp), %eax
	movl	%eax, 84(%rsp)
	movd	%eax, %xmm0
.LBB42_166:                             # %if.end.21.i.59.5
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_51
# BB#167:                               # %if.end.21.i.59.5
	ucomiss	.LCPI42_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB42_83
# BB#168:                               # %for.cond.i.44.5
	movss	64(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	68(%rsp), %xmm1
	jbe	.LBB42_52
# BB#169:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_51:
	movl	$-13, %eax
	jmp	.LBB42_83
.LBB42_52:                              # %lor.lhs.false.157
	movss	72(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	76(%rsp), %xmm1
	jbe	.LBB42_54
# BB#53:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_54:                              # %lor.lhs.false.162
	movss	80(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB42_56
# BB#55:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_56:                              # %if.end.169
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.70, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB42_65
# BB#57:                                # %land.lhs.true.173
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	je	.LBB42_65
# BB#58:                                # %if.then.180
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB42_59
# BB#60:                                # %if.end.188
	cmpl	$3, 4(%rsi)
	jne	.LBB42_61
# BB#62:                                # %for.cond.195.preheader
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#63:                                # %do.body
	movzwl	8(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB42_64
# BB#125:                               # %for.cond.195
	movq	8(%r14), %rdi
	movq	40(%rsp), %rsi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#126:                               # %do.body.1
	movzwl	8(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB42_64
# BB#127:                               # %for.cond.195.1
	movq	8(%r14), %rdi
	movq	40(%rsp), %rsi
	leaq	8(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#128:                               # %do.body.2
	movzwl	8(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB42_64
.LBB42_65:                              # %if.end.219
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.71, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB42_82
# BB#66:                                # %land.lhs.true.223
	movq	40(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB42_82
# BB#67:                                # %if.then.230
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	movl	$-20, %eax
	jne	.LBB42_83
# BB#68:                                # %if.end.238
	cmpl	$6, 4(%r15)
	jne	.LBB42_69
# BB#70:                                # %if.end.244
	movq	8(%r14), %r14
	leaq	96(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#71:                                # %if.end.i.72
	movzbl	97(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB42_72
# BB#75:                                # %if.then.15.i.77
	movl	104(%rsp), %eax
	movl	%eax, 64(%rsp)
	movd	%eax, %xmm0
	jmp	.LBB42_76
.LBB42_59:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_61:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_69:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_64:                              # %if.then.213
	leaq	8(%rsp), %rdi
	callq	check_proc_failed
	jmp	.LBB42_83
.LBB42_72:                              # %if.end.i.72
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB42_73
# BB#74:                                # %if.then.6.i.75
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 64(%rsp)
.LBB42_76:                              # %if.end.21.i.82
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_78
# BB#77:                                # %if.end.21.i.82
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_78
# BB#84:                                # %for.cond.i.67
	leaq	96(%rsp), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#85:                                # %if.end.i.72.1
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_86
# BB#89:                                # %if.then.6.i.75.1
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 68(%rsp)
	jmp	.LBB42_90
.LBB42_73:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_86:                              # %if.end.i.72.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_87
# BB#88:                                # %if.then.15.i.77.1
	movl	104(%rsp), %eax
	movl	%eax, 68(%rsp)
	movd	%eax, %xmm0
.LBB42_90:                              # %if.end.21.i.82.1
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_78
# BB#91:                                # %if.end.21.i.82.1
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_78
# BB#92:                                # %for.cond.i.67.1
	leaq	96(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#93:                                # %if.end.i.72.2
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_94
# BB#97:                                # %if.then.6.i.75.2
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 72(%rsp)
	jmp	.LBB42_98
.LBB42_87:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_94:                              # %if.end.i.72.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_95
# BB#96:                                # %if.then.15.i.77.2
	movl	104(%rsp), %eax
	movl	%eax, 72(%rsp)
	movd	%eax, %xmm0
.LBB42_98:                              # %if.end.21.i.82.2
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_78
# BB#99:                                # %if.end.21.i.82.2
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_78
# BB#100:                               # %for.cond.i.67.2
	leaq	96(%rsp), %rcx
	movl	$3, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#101:                               # %if.end.i.72.3
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_102
# BB#105:                               # %if.then.6.i.75.3
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 76(%rsp)
	jmp	.LBB42_106
.LBB42_95:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_102:                             # %if.end.i.72.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_103
# BB#104:                               # %if.then.15.i.77.3
	movl	104(%rsp), %eax
	movl	%eax, 76(%rsp)
	movd	%eax, %xmm0
.LBB42_106:                             # %if.end.21.i.82.3
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_78
# BB#107:                               # %if.end.21.i.82.3
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_78
# BB#108:                               # %for.cond.i.67.3
	leaq	96(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#109:                               # %if.end.i.72.4
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_110
# BB#113:                               # %if.then.6.i.75.4
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	jmp	.LBB42_114
.LBB42_103:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_110:                             # %if.end.i.72.4
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB42_111
# BB#112:                               # %if.then.15.i.77.4
	movl	104(%rsp), %eax
	movl	%eax, 80(%rsp)
	movd	%eax, %xmm0
.LBB42_114:                             # %if.end.21.i.82.4
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_78
# BB#115:                               # %if.end.21.i.82.4
	ucomiss	.LCPI42_1(%rip), %xmm0
	ja	.LBB42_78
# BB#116:                               # %for.cond.i.67.4
	leaq	96(%rsp), %rcx
	movl	$5, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB42_83
# BB#117:                               # %if.end.i.72.5
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB42_118
# BB#120:                               # %if.then.6.i.75.5
	cvtsi2ssq	104(%rsp), %xmm0
	movss	%xmm0, 84(%rsp)
	jmp	.LBB42_121
.LBB42_111:
	movl	$-20, %eax
	jmp	.LBB42_83
.LBB42_118:                             # %if.end.i.72.5
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB42_83
# BB#119:                               # %if.then.15.i.77.5
	movl	104(%rsp), %eax
	movl	%eax, 84(%rsp)
	movd	%eax, %xmm0
.LBB42_121:                             # %if.end.21.i.82.5
	movss	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB42_78
# BB#122:                               # %if.end.21.i.82.5
	ucomiss	.LCPI42_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB42_83
# BB#123:                               # %for.cond.i.67.5
	movss	64(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	68(%rsp), %xmm1
	jbe	.LBB42_79
# BB#124:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_78:
	movl	$-13, %eax
	jmp	.LBB42_83
.LBB42_79:                              # %lor.lhs.false.257
	movss	72(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	76(%rsp), %xmm1
	jbe	.LBB42_81
# BB#80:
	movl	$-15, %eax
	jmp	.LBB42_83
.LBB42_81:                              # %lor.lhs.false.262
	movss	80(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-15, %eax
	ja	.LBB42_83
.LBB42_82:                              # %if.end.269
	movq	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB42_83
.Lfunc_end42:
	.size	validateciedefspace, .Lfunc_end42-validateciedefspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI43_0:
	.long	3323740160              # float -1.0E+4
.LCPI43_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	ciedefrange,@function
ciedefrange:                            # @ciedefrange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp220:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp221:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp227:
	.cfi_offset %r14, -24
.Ltmp228:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB43_14
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.69, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB43_12
# BB#2:                                 # %land.lhs.true
	movq	(%rsp), %r14
	movzbl	1(%r14), %eax
	cmpl	$14, %eax
	jne	.LBB43_3
.LBB43_12:                              # %if.else
	movl	$default_0_1, %esi
	movl	$24, %edx
	movq	%r12, %rdi
	callq	memcpy
.LBB43_13:                              # %cleanup
	xorl	%eax, %eax
.LBB43_14:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB43_3:                               # %if.then.5
	movq	8(%rbx), %r15
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB43_14
# BB#4:                                 # %if.end.i
	movzbl	25(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB43_5
# BB#8:                                 # %if.then.15.i
	movl	32(%rsp), %eax
	movl	%eax, (%r12)
	movd	%eax, %xmm0
	jmp	.LBB43_9
.LBB43_5:                               # %if.end.i
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB43_6
# BB#7:                                 # %if.then.6.i
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, (%r12)
.LBB43_9:                               # %if.end.21.i
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB43_11
# BB#10:                                # %if.end.21.i
	ucomiss	.LCPI43_1(%rip), %xmm0
	ja	.LBB43_11
# BB#15:                                # %for.cond.i
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB43_14
# BB#16:                                # %if.end.i.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB43_17
# BB#20:                                # %if.then.6.i.1
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 4(%r12)
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB43_21
.LBB43_6:
	movl	$-20, %eax
	jmp	.LBB43_14
.LBB43_17:                              # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB43_18
# BB#19:                                # %if.then.15.i.1
	movl	32(%rsp), %eax
	movl	%eax, 4(%r12)
	movd	%eax, %xmm0
.LBB43_21:                              # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB43_11
# BB#22:                                # %if.end.21.i.1
	ucomiss	.LCPI43_1(%rip), %xmm0
	ja	.LBB43_11
# BB#23:                                # %for.cond.i.1
	leaq	24(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB43_14
# BB#24:                                # %if.end.i.2
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB43_25
# BB#28:                                # %if.then.6.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 8(%r12)
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB43_29
.LBB43_18:
	movl	$-20, %eax
	jmp	.LBB43_14
.LBB43_25:                              # %if.end.i.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB43_26
# BB#27:                                # %if.then.15.i.2
	movl	32(%rsp), %eax
	movl	%eax, 8(%r12)
	movd	%eax, %xmm0
.LBB43_29:                              # %if.end.21.i.2
	ucomiss	%xmm0, %xmm1
	ja	.LBB43_11
# BB#30:                                # %if.end.21.i.2
	ucomiss	.LCPI43_1(%rip), %xmm0
	ja	.LBB43_11
# BB#31:                                # %for.cond.i.2
	leaq	24(%rsp), %rcx
	movl	$3, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB43_14
# BB#32:                                # %if.end.i.3
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB43_33
# BB#36:                                # %if.then.6.i.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 12(%r12)
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB43_37
.LBB43_26:
	movl	$-20, %eax
	jmp	.LBB43_14
.LBB43_33:                              # %if.end.i.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB43_34
# BB#35:                                # %if.then.15.i.3
	movl	32(%rsp), %eax
	movl	%eax, 12(%r12)
	movd	%eax, %xmm0
.LBB43_37:                              # %if.end.21.i.3
	ucomiss	%xmm0, %xmm1
	ja	.LBB43_11
# BB#38:                                # %if.end.21.i.3
	ucomiss	.LCPI43_1(%rip), %xmm0
	ja	.LBB43_11
# BB#39:                                # %for.cond.i.3
	leaq	24(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB43_14
# BB#40:                                # %if.end.i.4
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB43_41
# BB#44:                                # %if.then.6.i.4
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 16(%r12)
	jmp	.LBB43_45
.LBB43_34:
	movl	$-20, %eax
	jmp	.LBB43_14
.LBB43_41:                              # %if.end.i.4
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB43_42
# BB#43:                                # %if.then.15.i.4
	movl	32(%rsp), %eax
	movl	%eax, 16(%r12)
	movd	%eax, %xmm0
.LBB43_45:                              # %if.end.21.i.4
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB43_11
# BB#46:                                # %if.end.21.i.4
	ucomiss	.LCPI43_1(%rip), %xmm0
	ja	.LBB43_11
# BB#47:                                # %for.cond.i.4
	leaq	24(%rsp), %rcx
	movl	$5, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB43_14
# BB#48:                                # %if.end.i.5
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB43_49
# BB#51:                                # %if.then.6.i.5
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 20(%r12)
	jmp	.LBB43_52
.LBB43_42:
	movl	$-20, %eax
	jmp	.LBB43_14
.LBB43_49:                              # %if.end.i.5
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB43_14
# BB#50:                                # %if.then.15.i.5
	movl	32(%rsp), %eax
	movl	%eax, 20(%r12)
	movd	%eax, %xmm0
.LBB43_52:                              # %if.end.21.i.5
	movss	.LCPI43_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB43_11
# BB#53:                                # %if.end.21.i.5
	ucomiss	.LCPI43_1(%rip), %xmm0
	movl	$-13, %eax
	jbe	.LBB43_13
	jmp	.LBB43_14
.LBB43_11:
	movl	$-13, %eax
	jmp	.LBB43_14
.Lfunc_end43:
	.size	ciedefrange, .Lfunc_end43-ciedefrange
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI44_0:
	.long	3323740160              # float -1.0E+4
.LCPI44_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	ciedefdomain,@function
ciedefdomain:                           # @ciedefdomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp229:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp230:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp231:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp232:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp233:
	.cfi_def_cfa_offset 80
.Ltmp234:
	.cfi_offset %rbx, -40
.Ltmp235:
	.cfi_offset %r12, -32
.Ltmp236:
	.cfi_offset %r14, -24
.Ltmp237:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB44_14
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.69, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB44_12
# BB#2:                                 # %land.lhs.true
	movq	(%rsp), %r14
	movzbl	1(%r14), %eax
	cmpl	$14, %eax
	jne	.LBB44_3
.LBB44_12:                              # %if.else
	movl	$default_0_1, %esi
	movl	$24, %edx
	movq	%r12, %rdi
	callq	memcpy
.LBB44_13:                              # %cleanup
	xorl	%eax, %eax
.LBB44_14:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB44_3:                               # %if.then.5
	movq	8(%rbx), %r15
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB44_14
# BB#4:                                 # %if.end.i
	movzbl	25(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB44_5
# BB#8:                                 # %if.then.15.i
	movl	32(%rsp), %eax
	movl	%eax, (%r12)
	movd	%eax, %xmm0
	jmp	.LBB44_9
.LBB44_5:                               # %if.end.i
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB44_6
# BB#7:                                 # %if.then.6.i
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, (%r12)
.LBB44_9:                               # %if.end.21.i
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB44_11
# BB#10:                                # %if.end.21.i
	ucomiss	.LCPI44_1(%rip), %xmm0
	ja	.LBB44_11
# BB#15:                                # %for.cond.i
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB44_14
# BB#16:                                # %if.end.i.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB44_17
# BB#20:                                # %if.then.6.i.1
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 4(%r12)
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB44_21
.LBB44_6:
	movl	$-20, %eax
	jmp	.LBB44_14
.LBB44_17:                              # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB44_18
# BB#19:                                # %if.then.15.i.1
	movl	32(%rsp), %eax
	movl	%eax, 4(%r12)
	movd	%eax, %xmm0
.LBB44_21:                              # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB44_11
# BB#22:                                # %if.end.21.i.1
	ucomiss	.LCPI44_1(%rip), %xmm0
	ja	.LBB44_11
# BB#23:                                # %for.cond.i.1
	leaq	24(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB44_14
# BB#24:                                # %if.end.i.2
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB44_25
# BB#28:                                # %if.then.6.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 8(%r12)
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB44_29
.LBB44_18:
	movl	$-20, %eax
	jmp	.LBB44_14
.LBB44_25:                              # %if.end.i.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB44_26
# BB#27:                                # %if.then.15.i.2
	movl	32(%rsp), %eax
	movl	%eax, 8(%r12)
	movd	%eax, %xmm0
.LBB44_29:                              # %if.end.21.i.2
	ucomiss	%xmm0, %xmm1
	ja	.LBB44_11
# BB#30:                                # %if.end.21.i.2
	ucomiss	.LCPI44_1(%rip), %xmm0
	ja	.LBB44_11
# BB#31:                                # %for.cond.i.2
	leaq	24(%rsp), %rcx
	movl	$3, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB44_14
# BB#32:                                # %if.end.i.3
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB44_33
# BB#36:                                # %if.then.6.i.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 12(%r12)
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB44_37
.LBB44_26:
	movl	$-20, %eax
	jmp	.LBB44_14
.LBB44_33:                              # %if.end.i.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jne	.LBB44_34
# BB#35:                                # %if.then.15.i.3
	movl	32(%rsp), %eax
	movl	%eax, 12(%r12)
	movd	%eax, %xmm0
.LBB44_37:                              # %if.end.21.i.3
	ucomiss	%xmm0, %xmm1
	ja	.LBB44_11
# BB#38:                                # %if.end.21.i.3
	ucomiss	.LCPI44_1(%rip), %xmm0
	ja	.LBB44_11
# BB#39:                                # %for.cond.i.3
	leaq	24(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB44_14
# BB#40:                                # %if.end.i.4
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB44_41
# BB#44:                                # %if.then.6.i.4
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 16(%r12)
	jmp	.LBB44_45
.LBB44_34:
	movl	$-20, %eax
	jmp	.LBB44_14
.LBB44_41:                              # %if.end.i.4
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB44_42
# BB#43:                                # %if.then.15.i.4
	movl	32(%rsp), %eax
	movl	%eax, 16(%r12)
	movd	%eax, %xmm0
.LBB44_45:                              # %if.end.21.i.4
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB44_11
# BB#46:                                # %if.end.21.i.4
	ucomiss	.LCPI44_1(%rip), %xmm0
	ja	.LBB44_11
# BB#47:                                # %for.cond.i.4
	leaq	24(%rsp), %rcx
	movl	$5, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB44_14
# BB#48:                                # %if.end.i.5
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB44_49
# BB#51:                                # %if.then.6.i.5
	cvtsi2ssq	32(%rsp), %xmm0
	movss	%xmm0, 20(%r12)
	jmp	.LBB44_52
.LBB44_42:
	movl	$-20, %eax
	jmp	.LBB44_14
.LBB44_49:                              # %if.end.i.5
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB44_14
# BB#50:                                # %if.then.15.i.5
	movl	32(%rsp), %eax
	movl	%eax, 20(%r12)
	movd	%eax, %xmm0
.LBB44_52:                              # %if.end.21.i.5
	movss	.LCPI44_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB44_11
# BB#53:                                # %if.end.21.i.5
	ucomiss	.LCPI44_1(%rip), %xmm0
	movl	$-13, %eax
	jbe	.LBB44_13
	jmp	.LBB44_14
.LBB44_11:
	movl	$-13, %eax
	jmp	.LBB44_14
.Lfunc_end44:
	.size	ciedefdomain, .Lfunc_end44-ciedefdomain
	.cfi_endproc

	.align	16, 0x90
	.type	ciedefvalidate,@function
ciedefvalidate:                         # @ciedefvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	cmpl	$3, %ecx
	jl	.LBB45_8
# BB#1:                                 # %if.end
	movq	624(%rdi), %rcx
	movzbl	-31(%rcx), %edx
	movl	$-20, %eax
	cmpl	$16, %edx
	je	.LBB45_3
# BB#2:                                 # %if.end
	movzbl	%dl, %edx
	cmpl	$11, %edx
	jne	.LBB45_8
.LBB45_3:                               # %if.end.11
	movzbl	-15(%rcx), %edx
	cmpl	$11, %edx
	je	.LBB45_5
# BB#4:                                 # %if.end.11
	movzbl	%dl, %edx
	cmpl	$16, %edx
	jne	.LBB45_8
.LBB45_5:                               # %if.end.11.1
	movzbl	1(%rcx), %ecx
	cmpl	$16, %ecx
	je	.LBB45_7
# BB#6:                                 # %if.end.11.1
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB45_8
.LBB45_7:                               # %if.end.11.2
	xorl	%eax, %eax
.LBB45_8:                               # %cleanup
	retq
.Lfunc_end45:
	.size	ciedefvalidate, .Lfunc_end45-ciedefvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	ciedefcompareproc,@function
ciedefcompareproc:                      # @ciedefcompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp239:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp240:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp241:
	.cfi_def_cfa_offset 80
.Ltmp242:
	.cfi_offset %rbx, -32
.Ltmp243:
	.cfi_offset %r14, -24
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	xorl	%r14d, %r14d
	testl	%eax, %eax
	js	.LBB46_65
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB46_65
# BB#2:                                 # %if.end.6
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#3:                                 # %if.end.i
	testl	%ebp, %ebp
	jle	.LBB46_7
# BB#4:                                 # %if.end.4.i
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#5:                                 # %if.end.12.i
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_7
# BB#6:                                 # %comparedictkey.exit
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_7:                               # %if.end.9
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#8:                                 # %if.end.i.22
	testl	%ebp, %ebp
	jle	.LBB46_12
# BB#9:                                 # %if.end.4.i.26
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#10:                                # %if.end.12.i.28
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_12
# BB#11:                                # %comparedictkey.exit32
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_12:                              # %if.end.13
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#13:                                # %if.end.i.39
	testl	%ebp, %ebp
	jle	.LBB46_17
# BB#14:                                # %if.end.4.i.43
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#15:                                # %if.end.12.i.45
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_17
# BB#16:                                # %comparedictkey.exit49
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_17:                              # %if.end.17
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.66, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.66, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#18:                                # %if.end.i.56
	testl	%ebp, %ebp
	jle	.LBB46_22
# BB#19:                                # %if.end.4.i.60
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#20:                                # %if.end.12.i.62
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_22
# BB#21:                                # %comparedictkey.exit66
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_22:                              # %if.end.21
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.67, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.67, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#23:                                # %if.end.i.73
	testl	%ebp, %ebp
	jle	.LBB46_27
# BB#24:                                # %if.end.4.i.77
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#25:                                # %if.end.12.i.79
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_27
# BB#26:                                # %comparedictkey.exit83
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_27:                              # %if.end.25
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#28:                                # %if.end.i.90
	testl	%ebp, %ebp
	jle	.LBB46_32
# BB#29:                                # %if.end.4.i.94
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#30:                                # %if.end.12.i.96
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_32
# BB#31:                                # %comparedictkey.exit100
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_32:                              # %if.end.29
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.61, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.61, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#33:                                # %if.end.i.107
	testl	%ebp, %ebp
	jle	.LBB46_37
# BB#34:                                # %if.end.4.i.111
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#35:                                # %if.end.12.i.113
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_37
# BB#36:                                # %comparedictkey.exit117
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_37:                              # %if.end.33
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#38:                                # %if.end.i.124
	testl	%ebp, %ebp
	jle	.LBB46_42
# BB#39:                                # %if.end.4.i.128
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#40:                                # %if.end.12.i.130
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_42
# BB#41:                                # %comparedictkey.exit134
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_42:                              # %if.end.37
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.69, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.69, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#43:                                # %if.end.i.141
	testl	%ebp, %ebp
	jle	.LBB46_47
# BB#44:                                # %if.end.4.i.145
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#45:                                # %if.end.12.i.147
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_47
# BB#46:                                # %comparedictkey.exit151
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_47:                              # %if.end.41
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.70, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.70, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#48:                                # %if.end.i.158
	testl	%ebp, %ebp
	jle	.LBB46_52
# BB#49:                                # %if.end.4.i.162
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#50:                                # %if.end.12.i.164
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_52
# BB#51:                                # %comparedictkey.exit168
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_52:                              # %if.end.45
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.71, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.71, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB46_65
# BB#53:                                # %if.end.i.175
	testl	%ebp, %ebp
	jle	.LBB46_57
# BB#54:                                # %if.end.4.i.179
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_65
# BB#55:                                # %if.end.12.i.181
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB46_57
# BB#56:                                # %comparedictkey.exit185
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB46_65
.LBB46_57:                              # %if.end.49
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.68, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.68, %esi
	callq	dict_find_string
	movb	$1, %cl
	cmpl	%eax, %ebp
	jne	.LBB46_64
# BB#58:                                # %if.end.i.192
	testl	%ebp, %ebp
	jle	.LBB46_59
# BB#60:                                # %if.end.4.i.196
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %edi
	cmpl	%edi, %eax
	jne	.LBB46_64
# BB#61:                                # %if.end.12.i.198
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB46_63
# BB#62:
	xorl	%ecx, %ecx
	jmp	.LBB46_64
.LBB46_59:
	xorl	%ecx, %ecx
	jmp	.LBB46_64
.LBB46_63:                              # %if.end.20.i.200
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	sete	%cl
.LBB46_64:                              # %comparedictkey.exit202
	movzbl	%cl, %r14d
	xorl	$1, %r14d
.LBB46_65:                              # %cleanup
	movl	%r14d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end46:
	.size	ciedefcompareproc, .Lfunc_end46-ciedefcompareproc
	.cfi_endproc

	.align	16, 0x90
	.type	setciedefgspace,@function
setciedefgspace:                        # @setciedefgspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp245:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp246:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp247:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp248:
	.cfi_def_cfa_offset 40
	subq	$296, %rsp              # imm = 0x128
.Ltmp249:
	.cfi_def_cfa_offset 336
.Ltmp250:
	.cfi_offset %rbx, -40
.Ltmp251:
	.cfi_offset %r12, -32
.Ltmp252:
	.cfi_offset %r14, -24
.Ltmp253:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$-21, %eax
	cmpl	$3, 80(%rbx)
	jl	.LBB47_9
# BB#1:                                 # %if.end
	leaq	504(%rbx), %rdi
	leaq	272(%rsp), %rdx
	movl	$.L.str.55, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB47_5
# BB#2:                                 # %if.then.2
	movq	272(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$1, %edx
	jne	.LBB47_9
# BB#3:                                 # %if.end.6
	cmpw	$0, 8(%rcx)
	je	.LBB47_5
# BB#4:                                 # %if.then.7
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	setcmykspace
	jmp	.LBB47_9
.LBB47_5:                               # %if.end.10
	movl	$0, (%r15)
	movq	8(%rbx), %rdi
	leaq	280(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB47_9
# BB#6:                                 # %if.end.15
	cmpl	$0, (%r14)
	jle	.LBB47_8
# BB#7:                                 # %if.then.18
	movq	$0, 8(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setcolor
	movl	$0, (%r14)
	jmp	.LBB47_9
.LBB47_8:                               # %if.end.23
	movq	8(%r12), %rax
	movq	8(%rax), %rdx
	leaq	280(%rsp), %rsi
	movq	%rbx, %rdi
	callq	ciedefgspace
	movl	$1, (%r15)
	incl	(%r14)
.LBB47_9:                               # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end47:
	.size	setciedefgspace, .Lfunc_end47-setciedefgspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI48_0:
	.long	1065353216              # float 1
.LCPI48_1:
	.long	1077936128              # float 3
.LCPI48_2:
	.long	3323740160              # float -1.0E+4
.LCPI48_3:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	validateciedefgspace,@function
validateciedefgspace:                   # @validateciedefgspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp255:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp256:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp257:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp258:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp259:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp260:
	.cfi_def_cfa_offset 208
.Ltmp261:
	.cfi_offset %rbx, -56
.Ltmp262:
	.cfi_offset %r12, -48
.Ltmp263:
	.cfi_offset %r13, -40
.Ltmp264:
	.cfi_offset %r14, -32
.Ltmp265:
	.cfi_offset %r15, -24
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	leaq	64(%rsp), %rax
	movq	%rax, 24(%rsp)
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB48_1
# BB#2:                                 # %if.end
	cmpl	$2, 4(%rsi)
	jne	.LBB48_3
# BB#4:                                 # %if.end.6
	movq	8(%r14), %rdi
	leaq	80(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#5:                                 # %if.end.10
	movzwl	80(%rsp), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$544, %eax              # imm = 0x220
	jne	.LBB48_6
# BB#8:                                 # %if.end.24
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	validatecieabcspace
	testl	%eax, %eax
	jne	.LBB48_86
# BB#9:                                 # %if.end.29
	leaq	80(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.68, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB48_10
# BB#11:                                # %if.then.33
	movq	24(%rsp), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB48_12
# BB#13:                                # %if.end.41
	cmpl	$5, 4(%rsi)
	jne	.LBB48_14
# BB#15:                                # %for.cond.preheader
	movq	8(%r14), %rdi
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#16:                                # %if.end.57
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB48_17
# BB#93:                                # %if.then.64
	movq	40(%rsp), %rbp
	cvtsi2ssq	%rbp, %xmm0
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movss	%xmm0, 96(%rsp)
	movq	8(%r14), %rdi
	movq	24(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#94:                                # %if.end.57.1
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB48_95
# BB#96:                                # %if.then.64.1
	movq	40(%rsp), %r12
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%r12, %xmm0
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	%xmm0, 100(%rsp)
	movq	8(%r14), %rdi
	movq	24(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#97:                                # %if.end.57.2
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB48_98
# BB#99:                                # %if.then.64.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	40(%rsp), %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	%xmm0, 104(%rsp)
	movq	8(%r14), %rdi
	movq	24(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$3, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#100:                               # %if.end.57.3
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB48_101
# BB#102:                               # %if.then.64.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	40(%rsp), %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movss	%xmm0, 108(%rsp)
	movss	.LCPI48_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	20(%rsp), %xmm0         # 4-byte Folded Reload
	jae	.LBB48_103
# BB#104:                               # %if.then.64.3
	ucomiss	16(%rsp), %xmm0         # 4-byte Folded Reload
	jae	.LBB48_105
# BB#106:                               # %if.then.64.3
	ucomiss	12(%rsp), %xmm0         # 4-byte Folded Reload
	jae	.LBB48_107
# BB#108:                               # %if.then.64.3
	ucomiss	8(%rsp), %xmm0          # 4-byte Folded Reload
	jae	.LBB48_109
# BB#18:                                # %if.end.84
	movq	8(%r14), %rdi
	movq	24(%rsp), %rsi
	leaq	48(%rsp), %rcx
	movl	$4, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#19:                                # %if.end.91
	movq	48(%rsp), %rax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpq	$1024, %rcx             # imm = 0x400
	jne	.LBB48_20
# BB#21:                                # %if.end.99
	shrq	$32, %rax
	cvtsi2ssq	%rax, %xmm0
	ucomiss	20(%rsp), %xmm0         # 4-byte Folded Reload
	movl	$-15, %eax
	jne	.LBB48_86
	jp	.LBB48_86
# BB#22:                                # %for.cond.108.preheader
	testq	%rbp, %rbp
	jle	.LBB48_27
# BB#23:                                # %for.body.113.lr.ph
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI48_1(%rip), %xmm0
	mulss	8(%rsp), %xmm0          # 4-byte Folded Reload
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	leaq	64(%rsp), %r13
.LBB48_24:                              # %for.body.113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_32 Depth 2
	movq	8(%r14), %rdi
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#25:                                # %for.cond.122.preheader
                                        #   in Loop: Header=BB48_24 Depth=1
	movl	$1, %ebp
	testq	%r12, %r12
	jle	.LBB48_26
.LBB48_32:                              # %for.body.127
                                        #   Parent Loop BB48_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	leaq	32(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#33:                                # %if.end.135
                                        #   in Loop: Header=BB48_32 Depth=2
	movzbl	33(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB48_34
# BB#35:                                # %if.end.143
                                        #   in Loop: Header=BB48_32 Depth=2
	movl	36(%rsp), %eax
	cvtsi2ssq	%rax, %xmm0
	ucomiss	12(%rsp), %xmm0         # 4-byte Folded Reload
	movl	$-15, %eax
	jne	.LBB48_86
	jnp	.LBB48_31
	jmp	.LBB48_86
.LBB48_31:                              # %for.cond.122
                                        #   in Loop: Header=BB48_32 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	incl	%ebp
	movss	16(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB48_32
.LBB48_26:                              # %for.inc.157
                                        #   in Loop: Header=BB48_24 Depth=1
	incq	%r15
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	20(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB48_24
.LBB48_27:                              # %if.end.161
	leaq	80(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.72, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB48_55
# BB#28:                                # %land.lhs.true
	movq	24(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB48_55
# BB#29:                                # %if.then.171
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB48_30
# BB#36:                                # %if.end.179
	cmpl	$8, 4(%r15)
	jne	.LBB48_37
# BB#38:                                # %if.end.185
	movq	8(%r14), %r12
	xorl	%ebp, %ebp
	leaq	136(%rsp), %r13
.LBB48_40:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#41:                                # %if.end.i
                                        #   in Loop: Header=BB48_40 Depth=1
	movzbl	137(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB48_42
# BB#44:                                # %if.then.15.i
                                        #   in Loop: Header=BB48_40 Depth=1
	movl	144(%rsp), %eax
	movl	%eax, 96(%rsp,%rbp,4)
	movd	%eax, %xmm0
	jmp	.LBB48_45
.LBB48_42:                              # %if.end.i
                                        #   in Loop: Header=BB48_40 Depth=1
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB48_86
# BB#43:                                # %if.then.6.i
                                        #   in Loop: Header=BB48_40 Depth=1
	cvtsi2ssq	144(%rsp), %xmm0
	movss	%xmm0, 96(%rsp,%rbp,4)
.LBB48_45:                              # %if.end.21.i
                                        #   in Loop: Header=BB48_40 Depth=1
	movss	.LCPI48_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-13, %eax
	ja	.LBB48_86
# BB#46:                                # %if.end.21.i
                                        #   in Loop: Header=BB48_40 Depth=1
	ucomiss	.LCPI48_3(%rip), %xmm0
	ja	.LBB48_86
# BB#39:                                # %for.cond.i
                                        #   in Loop: Header=BB48_40 Depth=1
	incq	%rbp
	cmpq	$7, %rbp
	jle	.LBB48_40
# BB#47:                                # %if.end.192
	movss	96(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	100(%rsp), %xmm0
	jbe	.LBB48_49
# BB#48:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_1:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_3:
	movl	$-15, %eax
.LBB48_86:                              # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB48_6:                               # %if.then.17
	movl	$-7, %eax
	movzbl	81(%rsp), %ecx
	cmpl	$2, %ecx
	je	.LBB48_86
# BB#7:                                 # %cond.true
	leaq	80(%rsp), %rdi
	callq	check_type_failed
	jmp	.LBB48_86
.LBB48_10:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_12:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_14:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_17:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_95:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_98:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_101:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_109:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_20:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_107:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_103:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_105:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_34:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_30:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_37:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_49:                              # %lor.lhs.false.197
	movss	104(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	108(%rsp), %xmm0
	jbe	.LBB48_51
# BB#50:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_51:                              # %lor.lhs.false.202
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	116(%rsp), %xmm0
	jbe	.LBB48_53
# BB#52:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_53:                              # %lor.lhs.false.207
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	124(%rsp), %xmm0
	jbe	.LBB48_55
# BB#54:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_55:                              # %if.end.214
	leaq	80(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.73, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB48_64
# BB#56:                                # %land.lhs.true.218
	movq	24(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	je	.LBB48_64
# BB#57:                                # %if.then.225
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB48_58
# BB#59:                                # %if.end.233
	cmpl	$4, 4(%rsi)
	jne	.LBB48_60
# BB#61:                                # %for.cond.240.preheader
	movq	8(%r14), %rdi
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#62:                                # %do.body
	movzwl	32(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB48_63
# BB#87:                                # %for.cond.240
	movq	8(%r14), %rdi
	movq	24(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#88:                                # %do.body.1
	movzwl	32(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB48_63
# BB#89:                                # %for.cond.240.1
	movq	8(%r14), %rdi
	movq	24(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#90:                                # %do.body.2
	movzwl	32(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB48_63
# BB#91:                                # %for.cond.240.2
	movq	8(%r14), %rdi
	movq	24(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$3, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#92:                                # %do.body.3
	movzwl	32(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB48_63
.LBB48_64:                              # %if.end.264
	leaq	80(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.74, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB48_85
# BB#65:                                # %land.lhs.true.268
	movq	24(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB48_85
# BB#66:                                # %if.then.275
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	movl	$-20, %eax
	jne	.LBB48_86
# BB#67:                                # %if.end.283
	cmpl	$8, 4(%r15)
	jne	.LBB48_68
# BB#69:                                # %if.end.289
	movq	8(%r14), %r14
	xorl	%ebp, %ebp
	leaq	136(%rsp), %r12
.LBB48_71:                              # %for.body.i.58
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB48_86
# BB#72:                                # %if.end.i.59
                                        #   in Loop: Header=BB48_71 Depth=1
	movzbl	137(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB48_73
# BB#75:                                # %if.then.15.i.64
                                        #   in Loop: Header=BB48_71 Depth=1
	movl	144(%rsp), %eax
	movl	%eax, 96(%rsp,%rbp,4)
	movd	%eax, %xmm0
	jmp	.LBB48_76
.LBB48_73:                              # %if.end.i.59
                                        #   in Loop: Header=BB48_71 Depth=1
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB48_86
# BB#74:                                # %if.then.6.i.62
                                        #   in Loop: Header=BB48_71 Depth=1
	cvtsi2ssq	144(%rsp), %xmm0
	movss	%xmm0, 96(%rsp,%rbp,4)
.LBB48_76:                              # %if.end.21.i.69
                                        #   in Loop: Header=BB48_71 Depth=1
	movss	.LCPI48_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-13, %eax
	ja	.LBB48_86
# BB#77:                                # %if.end.21.i.69
                                        #   in Loop: Header=BB48_71 Depth=1
	ucomiss	.LCPI48_3(%rip), %xmm0
	ja	.LBB48_86
# BB#70:                                # %for.cond.i.54
                                        #   in Loop: Header=BB48_71 Depth=1
	incq	%rbp
	cmpq	$7, %rbp
	jle	.LBB48_71
# BB#78:                                # %if.end.297
	movss	96(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	100(%rsp), %xmm0
	jbe	.LBB48_80
# BB#79:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_58:
	movl	$-20, %eax
	jmp	.LBB48_86
.LBB48_60:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_68:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_63:                              # %if.then.258
	leaq	32(%rsp), %rdi
	callq	check_proc_failed
	jmp	.LBB48_86
.LBB48_80:                              # %lor.lhs.false.302
	movss	104(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	108(%rsp), %xmm0
	jbe	.LBB48_82
# BB#81:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_82:                              # %lor.lhs.false.307
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	116(%rsp), %xmm0
	jbe	.LBB48_84
# BB#83:
	movl	$-15, %eax
	jmp	.LBB48_86
.LBB48_84:                              # %lor.lhs.false.312
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	124(%rsp), %xmm0
	movl	$-15, %eax
	ja	.LBB48_86
.LBB48_85:                              # %if.end.319
	movq	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB48_86
.Lfunc_end48:
	.size	validateciedefgspace, .Lfunc_end48-validateciedefgspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI49_0:
	.long	3323740160              # float -1.0E+4
.LCPI49_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	ciedefgrange,@function
ciedefgrange:                           # @ciedefgrange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp267:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp268:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp269:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp270:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp271:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp272:
	.cfi_def_cfa_offset 96
.Ltmp273:
	.cfi_offset %rbx, -48
.Ltmp274:
	.cfi_offset %r12, -40
.Ltmp275:
	.cfi_offset %r13, -32
.Ltmp276:
	.cfi_offset %r14, -24
.Ltmp277:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB49_14
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.72, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB49_12
# BB#2:                                 # %land.lhs.true
	movq	8(%rsp), %r12
	movzbl	1(%r12), %eax
	cmpl	$14, %eax
	jne	.LBB49_3
.LBB49_12:                              # %if.else
	movl	$default_0_1, %esi
	movl	$32, %edx
	movq	%r14, %rdi
	callq	memcpy
.LBB49_13:                              # %cleanup
	xorl	%eax, %eax
.LBB49_14:                              # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB49_3:                               # %if.then.5
	movq	8(%rbx), %r15
	xorl	%ebx, %ebx
	leaq	32(%rsp), %r13
	.align	16, 0x90
.LBB49_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB49_14
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movzbl	33(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB49_7
# BB#9:                                 # %if.then.15.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movl	40(%rsp), %eax
	movl	%eax, (%r14,%rbx,4)
	movd	%eax, %xmm0
	jmp	.LBB49_10
	.align	16, 0x90
.LBB49_7:                               # %if.end.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB49_14
# BB#8:                                 # %if.then.6.i
                                        #   in Loop: Header=BB49_5 Depth=1
	cvtsi2ssq	40(%rsp), %xmm0
	movss	%xmm0, (%r14,%rbx,4)
.LBB49_10:                              # %if.end.21.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movss	.LCPI49_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-13, %eax
	ja	.LBB49_14
# BB#11:                                # %if.end.21.i
                                        #   in Loop: Header=BB49_5 Depth=1
	ucomiss	.LCPI49_1(%rip), %xmm0
	ja	.LBB49_14
# BB#4:                                 # %for.cond.i
                                        #   in Loop: Header=BB49_5 Depth=1
	incq	%rbx
	cmpq	$8, %rbx
	jge	.LBB49_13
	jmp	.LBB49_5
.Lfunc_end49:
	.size	ciedefgrange, .Lfunc_end49-ciedefgrange
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI50_0:
	.long	3323740160              # float -1.0E+4
.LCPI50_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	ciedefgdomain,@function
ciedefgdomain:                          # @ciedefgdomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp278:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp279:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp280:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp281:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp282:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp283:
	.cfi_def_cfa_offset 96
.Ltmp284:
	.cfi_offset %rbx, -48
.Ltmp285:
	.cfi_offset %r12, -40
.Ltmp286:
	.cfi_offset %r13, -32
.Ltmp287:
	.cfi_offset %r14, -24
.Ltmp288:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB50_14
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.72, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB50_12
# BB#2:                                 # %land.lhs.true
	movq	8(%rsp), %r12
	movzbl	1(%r12), %eax
	cmpl	$14, %eax
	jne	.LBB50_3
.LBB50_12:                              # %if.else
	movl	$default_0_1, %esi
	movl	$32, %edx
	movq	%r14, %rdi
	callq	memcpy
.LBB50_13:                              # %cleanup
	xorl	%eax, %eax
.LBB50_14:                              # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB50_3:                               # %if.then.5
	movq	8(%rbx), %r15
	xorl	%ebx, %ebx
	leaq	32(%rsp), %r13
	.align	16, 0x90
.LBB50_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB50_14
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB50_5 Depth=1
	movzbl	33(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB50_7
# BB#9:                                 # %if.then.15.i
                                        #   in Loop: Header=BB50_5 Depth=1
	movl	40(%rsp), %eax
	movl	%eax, (%r14,%rbx,4)
	movd	%eax, %xmm0
	jmp	.LBB50_10
	.align	16, 0x90
.LBB50_7:                               # %if.end.i
                                        #   in Loop: Header=BB50_5 Depth=1
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB50_14
# BB#8:                                 # %if.then.6.i
                                        #   in Loop: Header=BB50_5 Depth=1
	cvtsi2ssq	40(%rsp), %xmm0
	movss	%xmm0, (%r14,%rbx,4)
.LBB50_10:                              # %if.end.21.i
                                        #   in Loop: Header=BB50_5 Depth=1
	movss	.LCPI50_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-13, %eax
	ja	.LBB50_14
# BB#11:                                # %if.end.21.i
                                        #   in Loop: Header=BB50_5 Depth=1
	ucomiss	.LCPI50_1(%rip), %xmm0
	ja	.LBB50_14
# BB#4:                                 # %for.cond.i
                                        #   in Loop: Header=BB50_5 Depth=1
	incq	%rbx
	cmpq	$8, %rbx
	jge	.LBB50_13
	jmp	.LBB50_5
.Lfunc_end50:
	.size	ciedefgdomain, .Lfunc_end50-ciedefgdomain
	.cfi_endproc

	.align	16, 0x90
	.type	ciedefgvalidate,@function
ciedefgvalidate:                        # @ciedefgvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	cmpl	$4, %ecx
	jl	.LBB51_10
# BB#1:                                 # %if.end
	movq	624(%rdi), %rcx
	movzbl	-47(%rcx), %edx
	movl	$-20, %eax
	cmpl	$16, %edx
	je	.LBB51_3
# BB#2:                                 # %if.end
	movzbl	%dl, %edx
	cmpl	$11, %edx
	jne	.LBB51_10
.LBB51_3:                               # %if.end.11
	movzbl	-31(%rcx), %edx
	cmpl	$11, %edx
	je	.LBB51_5
# BB#4:                                 # %if.end.11
	movzbl	%dl, %edx
	cmpl	$16, %edx
	jne	.LBB51_10
.LBB51_5:                               # %if.end.11.1
	movzbl	-15(%rcx), %edx
	cmpl	$16, %edx
	je	.LBB51_7
# BB#6:                                 # %if.end.11.1
	movzbl	%dl, %edx
	cmpl	$11, %edx
	jne	.LBB51_10
.LBB51_7:                               # %if.end.11.2
	movzbl	1(%rcx), %ecx
	cmpl	$16, %ecx
	je	.LBB51_9
# BB#8:                                 # %if.end.11.2
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB51_10
.LBB51_9:                               # %if.end.11.3
	xorl	%eax, %eax
.LBB51_10:                              # %cleanup
	retq
.Lfunc_end51:
	.size	ciedefgvalidate, .Lfunc_end51-ciedefgvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	ciedefgcompareproc,@function
ciedefgcompareproc:                     # @ciedefgcompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp290:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp291:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp292:
	.cfi_def_cfa_offset 80
.Ltmp293:
	.cfi_offset %rbx, -32
.Ltmp294:
	.cfi_offset %r14, -24
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	xorl	%r14d, %r14d
	testl	%eax, %eax
	js	.LBB52_65
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB52_65
# BB#2:                                 # %if.end.6
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#3:                                 # %if.end.i
	testl	%ebp, %ebp
	jle	.LBB52_7
# BB#4:                                 # %if.end.4.i
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#5:                                 # %if.end.12.i
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_7
# BB#6:                                 # %comparedictkey.exit
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_7:                               # %if.end.9
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#8:                                 # %if.end.i.22
	testl	%ebp, %ebp
	jle	.LBB52_12
# BB#9:                                 # %if.end.4.i.26
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#10:                                # %if.end.12.i.28
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_12
# BB#11:                                # %comparedictkey.exit32
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_12:                              # %if.end.13
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.65, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#13:                                # %if.end.i.39
	testl	%ebp, %ebp
	jle	.LBB52_17
# BB#14:                                # %if.end.4.i.43
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#15:                                # %if.end.12.i.45
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_17
# BB#16:                                # %comparedictkey.exit49
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_17:                              # %if.end.17
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.66, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.66, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#18:                                # %if.end.i.56
	testl	%ebp, %ebp
	jle	.LBB52_22
# BB#19:                                # %if.end.4.i.60
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#20:                                # %if.end.12.i.62
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_22
# BB#21:                                # %comparedictkey.exit66
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_22:                              # %if.end.21
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.67, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.67, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#23:                                # %if.end.i.73
	testl	%ebp, %ebp
	jle	.LBB52_27
# BB#24:                                # %if.end.4.i.77
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#25:                                # %if.end.12.i.79
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_27
# BB#26:                                # %comparedictkey.exit83
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_27:                              # %if.end.25
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#28:                                # %if.end.i.90
	testl	%ebp, %ebp
	jle	.LBB52_32
# BB#29:                                # %if.end.4.i.94
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#30:                                # %if.end.12.i.96
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_32
# BB#31:                                # %comparedictkey.exit100
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_32:                              # %if.end.29
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.61, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.61, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#33:                                # %if.end.i.107
	testl	%ebp, %ebp
	jle	.LBB52_37
# BB#34:                                # %if.end.4.i.111
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#35:                                # %if.end.12.i.113
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_37
# BB#36:                                # %comparedictkey.exit117
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_37:                              # %if.end.33
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#38:                                # %if.end.i.124
	testl	%ebp, %ebp
	jle	.LBB52_42
# BB#39:                                # %if.end.4.i.128
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#40:                                # %if.end.12.i.130
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_42
# BB#41:                                # %comparedictkey.exit134
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_42:                              # %if.end.37
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.72, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.72, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#43:                                # %if.end.i.141
	testl	%ebp, %ebp
	jle	.LBB52_47
# BB#44:                                # %if.end.4.i.145
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#45:                                # %if.end.12.i.147
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_47
# BB#46:                                # %comparedictkey.exit151
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_47:                              # %if.end.41
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.73, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.73, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#48:                                # %if.end.i.158
	testl	%ebp, %ebp
	jle	.LBB52_52
# BB#49:                                # %if.end.4.i.162
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#50:                                # %if.end.12.i.164
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_52
# BB#51:                                # %comparedictkey.exit168
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_52:                              # %if.end.45
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.74, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.74, %esi
	callq	dict_find_string
	cmpl	%eax, %ebp
	jne	.LBB52_65
# BB#53:                                # %if.end.i.175
	testl	%ebp, %ebp
	jle	.LBB52_57
# BB#54:                                # %if.end.4.i.179
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB52_65
# BB#55:                                # %if.end.12.i.181
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB52_57
# BB#56:                                # %comparedictkey.exit185
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB52_65
.LBB52_57:                              # %if.end.49
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.68, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.68, %esi
	callq	dict_find_string
	movb	$1, %cl
	cmpl	%eax, %ebp
	jne	.LBB52_64
# BB#58:                                # %if.end.i.192
	testl	%ebp, %ebp
	jle	.LBB52_59
# BB#60:                                # %if.end.4.i.196
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	32(%rsp), %rdx
	movzbl	1(%rdx), %edi
	cmpl	%edi, %eax
	jne	.LBB52_64
# BB#61:                                # %if.end.12.i.198
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB52_63
# BB#62:
	xorl	%ecx, %ecx
	jmp	.LBB52_64
.LBB52_59:
	xorl	%ecx, %ecx
	jmp	.LBB52_64
.LBB52_63:                              # %if.end.20.i.200
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	sete	%cl
.LBB52_64:                              # %comparedictkey.exit202
	movzbl	%cl, %r14d
	xorl	$1, %r14d
.LBB52_65:                              # %cleanup
	movl	%r14d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end52:
	.size	ciedefgcompareproc, .Lfunc_end52-ciedefgcompareproc
	.cfi_endproc

	.align	16, 0x90
	.type	setseparationspace,@function
setseparationspace:                     # @setseparationspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp296:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp297:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp298:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp299:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp300:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp301:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp302:
	.cfi_def_cfa_offset 512
.Ltmp303:
	.cfi_offset %rbx, -56
.Ltmp304:
	.cfi_offset %r12, -48
.Ltmp305:
	.cfi_offset %r13, -40
.Ltmp306:
	.cfi_offset %r14, -32
.Ltmp307:
	.cfi_offset %r15, -24
.Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$-21, %ebp
	cmpl	$2, 80(%r12)
	jl	.LBB53_29
# BB#1:                                 # %if.end
	movl	$0, (%rbx)
	cmpl	$0, (%r13)
	je	.LBB53_2
# BB#12:                                # %if.else
	movq	624(%r12), %rdi
	callq	ref_function
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addq	$-16, 624(%r12)
	leaq	8(%r12), %r15
	jmp	.LBB53_13
.LBB53_2:                               # %if.then.2
	movq	8(%r12), %rdi
	leaq	424(%rsp), %rcx
	movl	$3, %edx
	movq	%r14, %rsi
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
# BB#3:                                 # %if.end.5
	leaq	8(%r12), %r15
	leaq	424(%rsp), %rdi
	callq	ref_function
	testq	%rax, %rax
	je	.LBB53_5
# BB#4:
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB53_13:                              # %if.end.32
	movl	$0, (%r13)
	movq	(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	392(%rsp), %rcx
	movl	$.L.str.75, %esi
	movl	$3, %edx
	xorl	%r8d, %r8d
	callq	names_ref
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
# BB#14:                                # %if.end.38
	movq	(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	408(%rsp), %rcx
	movl	$.L.str.76, %esi
	movl	$4, %edx
	xorl	%r8d, %r8d
	callq	names_ref
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
# BB#15:                                # %if.end.46
	movq	(%r15), %rdi
	leaq	440(%rsp), %rcx
	movl	$1, %edx
	movq	%r14, %rsi
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
# BB#16:                                # %if.end.52
	movzbl	441(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB53_18
# BB#17:                                # %if.then.55
	movq	(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	440(%rsp), %rsi
	movq	%rsi, %rdx
	callq	names_from_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
.LBB53_18:                              # %if.end.65
	movq	448(%rsp), %rax
	movl	$1, %ebx
	cmpq	400(%rsp), %rax
	je	.LBB53_21
# BB#19:                                # %cond.false
	xorl	%ebx, %ebx
	cmpq	416(%rsp), %rax
	je	.LBB53_21
# BB#20:                                # %select.mid
	movl	$2, %ebx
.LBB53_21:                              # %cond.end
	movq	(%r12), %rdi
	callq	gs_currentcolorspace
	movq	(%r12), %rcx
	movq	16(%rcx), %rcx
	movups	256(%rcx), %xmm0
	movaps	%xmm0, 368(%rsp)
	movups	240(%rcx), %xmm0
	movaps	%xmm0, 352(%rsp)
	movups	176(%rcx), %xmm0
	movups	192(%rcx), %xmm1
	movups	208(%rcx), %xmm2
	movups	224(%rcx), %xmm3
	movaps	%xmm3, 336(%rsp)
	movaps	%xmm2, 320(%rsp)
	movaps	%xmm1, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	movq	8(%r12), %rdx
	leaq	280(%rsp), %rdi
	movq	%rax, %rsi
	callq	gs_cspace_new_Separation
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
# BB#22:                                # %if.end.86
	movq	280(%rsp), %rax
	movl	%ebx, 88(%rax)
	movq	(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	440(%rsp), %rsi
	callq	names_index
	movl	%eax, %eax
	movq	280(%rsp), %rcx
	movq	%rax, 72(%rcx)
	movq	$gs_get_colorname_string, 96(%rcx)
	movq	(%r15), %rdi
	leaq	424(%rsp), %rcx
	movl	$1, %edx
	movq	%r14, %rsi
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
# BB#23:                                # %if.end.104
	movq	(%r12), %rax
	movq	16(%rax), %rax
	movups	424(%rsp), %xmm0
	movups	%xmm0, 240(%rax)
	movq	8(%r12), %rdi
	leaq	424(%rsp), %rcx
	movl	$3, %edx
	movq	%r14, %rsi
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
# BB#24:                                # %if.end.128
	movq	(%r12), %rax
	movq	16(%rax), %rax
	movups	424(%rsp), %xmm0
	movups	%xmm0, 256(%rax)
	movq	280(%rsp), %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	gs_cspace_set_sepr_function
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_25
# BB#26:                                # %if.end.134
	movq	(%r12), %rdi
	movq	280(%rsp), %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	movq	280(%rsp), %rdi
	movl	$.L.str.77, %esi
	callq	rc_decrement_only_cs
	testl	%ebp, %ebp
	js	.LBB53_27
# BB#28:                                # %if.end.142
	movq	$0, 16(%rsp)
	movl	$1065353216, 24(%rsp)   # imm = 0x3F800000
	movq	(%r12), %rdi
	leaq	16(%rsp), %rsi
	callq	gs_setcolor
	movl	%eax, %ebp
	jmp	.LBB53_29
.LBB53_5:                               # %if.then.8
	movq	624(%r12), %rax
	addq	$16, %rax
	cmpq	640(%r12), %rax
	jbe	.LBB53_7
# BB#6:                                 # %convert_transform.exit.thread
	movl	$1, 688(%r12)
	movl	$-16, %ebp
	jmp	.LBB53_29
.LBB53_7:                               # %if.else.i
	movq	%rax, 624(%r12)
	leaq	424(%rsp), %rdx
	movl	$4, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	buildfunction
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB53_9
# BB#8:                                 # %convert_transform.exit
	leaq	424(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	buildfunction
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB53_29
.LBB53_9:                               # %if.end.12
	testl	%ebp, %ebp
	jle	.LBB53_11
# BB#10:                                # %if.then.14
	movl	$1, (%rbx)
	incl	(%r13)
	jmp	.LBB53_29
.LBB53_25:                              # %if.end.134.thread
	movq	280(%rsp), %rdi
	movl	$.L.str.77, %esi
	callq	rc_decrement_only_cs
.LBB53_27:                              # %if.then.137
	movq	(%r12), %rax
	movq	16(%rax), %rax
	movaps	368(%rsp), %xmm0
	movups	%xmm0, 256(%rax)
	movaps	352(%rsp), %xmm0
	movups	%xmm0, 240(%rax)
	movaps	288(%rsp), %xmm0
	movaps	304(%rsp), %xmm1
	movaps	320(%rsp), %xmm2
	movaps	336(%rsp), %xmm3
	movups	%xmm3, 224(%rax)
	movups	%xmm2, 208(%rax)
	movups	%xmm1, 192(%rax)
	movups	%xmm0, 176(%rax)
.LBB53_29:                              # %cleanup
	movl	%ebp, %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB53_11:                              # %if.end.15
	movq	624(%r12), %rdi
	callq	ref_function
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addq	$-16, 624(%r12)
	jmp	.LBB53_13
.Lfunc_end53:
	.size	setseparationspace, .Lfunc_end53-setseparationspace
	.cfi_endproc

	.align	16, 0x90
	.type	validateseparationspace,@function
validateseparationspace:                # @validateseparationspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp309:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp310:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp311:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp312:
	.cfi_def_cfa_offset 112
.Ltmp313:
	.cfi_offset %rbx, -32
.Ltmp314:
	.cfi_offset %r14, -24
.Ltmp315:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB54_1
# BB#2:                                 # %if.end
	movl	$-15, %eax
	cmpl	$4, 4(%rbx)
	jne	.LBB54_75
# BB#3:                                 # %if.end.6
	movq	8(%r15), %rdi
	leaq	32(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB54_75
# BB#4:                                 # %if.end.10
	movzbl	33(%rsp), %eax
	cmpl	$13, %eax
	je	.LBB54_8
# BB#5:                                 # %if.end.10
	movzbl	%al, %eax
	cmpl	$18, %eax
	jne	.LBB54_6
# BB#7:                                 # %if.else
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	32(%rsp), %rsi
	movq	%rsi, %rdx
	callq	names_from_string
	testl	%eax, %eax
	js	.LBB54_75
.LBB54_8:                               # %if.end.32
	movq	8(%r15), %rdi
	leaq	(%rsp), %rcx
	movl	$3, %edx
	movq	%rbx, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB54_75
# BB#9:                                 # %do.body
	movzwl	(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB54_10
# BB#11:                                # %do.end
	movq	8(%r15), %rdi
	leaq	16(%rsp), %rcx
	movl	$2, %edx
	movq	%rbx, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB54_75
# BB#12:                                # %if.end.55
	movzbl	17(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB54_14
# BB#13:                                # %if.then.62
	movups	16(%rsp), %xmm0
.LBB54_20:                              # %if.end.87
	movaps	%xmm0, 64(%rsp)
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	64(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	names_string_ref
	movl	52(%rsp), %eax
	cmpl	$7, %eax
	jne	.LBB54_61
# BB#21:                                # %if.then.96
	movl	$.L.str.9, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB54_31
# BB#22:                                # %land.lhs.true
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB54_30
# BB#23:                                # %cond.true.103
	movzbl	(%rdi), %eax
	addl	$-73, %eax
	testq	%rcx, %rcx
	je	.LBB54_32
# BB#24:                                # %cond.true.103
	testl	%eax, %eax
	jne	.LBB54_32
# BB#25:                                # %if.then.114
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB54_32
# BB#26:                                # %if.then.114
	testl	%eax, %eax
	jne	.LBB54_32
# BB#27:                                # %if.then.124
	movzbl	2(%rdi), %eax
	addl	$-100, %eax
	cmpq	$3, %rcx
	jb	.LBB54_32
# BB#28:                                # %if.then.124
	testl	%eax, %eax
	jne	.LBB54_32
# BB#29:                                # %if.then.134
	movzbl	3(%rdi), %eax
	addl	$-101, %eax
	jmp	.LBB54_32
.LBB54_1:
	movl	$-20, %eax
.LBB54_75:                              # %cleanup
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB54_6:
	movl	$-20, %eax
	jmp	.LBB54_75
.LBB54_10:                              # %if.then.46
	leaq	(%rsp), %rdi
	callq	check_proc_failed
	jmp	.LBB54_75
.LBB54_14:                              # %if.else.63
	movzwl	16(%rsp), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB54_15
# BB#16:                                # %if.end.71
	movq	8(%r15), %rdi
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB54_75
# BB#17:                                # %if.end.78
	movzbl	1(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB54_18
# BB#19:                                # %if.end.86
	movups	(%rsp), %xmm0
	jmp	.LBB54_20
.LBB54_15:
	movl	$-20, %eax
	jmp	.LBB54_75
.LBB54_31:                              # %cond.false.146
	movq	56(%rsp), %rdi
	movl	$.L.str.9, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB54_32
.LBB54_18:
	movl	$-20, %eax
	jmp	.LBB54_75
.LBB54_30:                              # %cond.false
	movl	$.L.str.9, %esi
	callq	strcmp
.LBB54_32:                              # %cond.end.150
	testl	%eax, %eax
	je	.LBB54_33
# BB#34:                                # %if.end.155
	movl	$.L.str.10, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB54_44
# BB#35:                                # %land.lhs.true.165
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB54_43
# BB#36:                                # %cond.true.169
	movzbl	(%rdi), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB54_45
# BB#37:                                # %cond.true.169
	testl	%eax, %eax
	jne	.LBB54_45
# BB#38:                                # %if.then.185
	movzbl	1(%rdi), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB54_45
# BB#39:                                # %if.then.185
	testl	%eax, %eax
	jne	.LBB54_45
# BB#40:                                # %if.then.195
	movzbl	2(%rdi), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB54_45
# BB#41:                                # %if.then.195
	testl	%eax, %eax
	jne	.LBB54_45
# BB#42:                                # %if.then.205
	movzbl	3(%rdi), %eax
	addl	$-116, %eax
	jmp	.LBB54_45
.LBB54_33:
	movl	$-20, %eax
	jmp	.LBB54_75
.LBB54_44:                              # %cond.false.220
	movq	56(%rsp), %rdi
	movl	$.L.str.10, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB54_45
.LBB54_43:                              # %cond.false.214
	movl	$.L.str.10, %esi
	callq	strcmp
.LBB54_45:                              # %cond.end.224
	testl	%eax, %eax
	je	.LBB54_46
# BB#47:                                # %if.end.229
	movl	$.L.str.8, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB54_57
# BB#48:                                # %land.lhs.true.239
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB54_56
# BB#49:                                # %cond.true.243
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB54_58
# BB#50:                                # %cond.true.243
	testl	%eax, %eax
	jne	.LBB54_58
# BB#51:                                # %if.then.259
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB54_58
# BB#52:                                # %if.then.259
	testl	%eax, %eax
	jne	.LBB54_58
# BB#53:                                # %if.then.269
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB54_58
# BB#54:                                # %if.then.269
	testl	%eax, %eax
	jne	.LBB54_58
# BB#55:                                # %if.then.279
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB54_58
.LBB54_46:
	movl	$-20, %eax
	jmp	.LBB54_75
.LBB54_57:                              # %cond.false.294
	movq	56(%rsp), %rdi
	movl	$.L.str.8, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB54_58
.LBB54_56:                              # %cond.false.288
	movl	$.L.str.8, %esi
	callq	strcmp
.LBB54_58:                              # %cond.end.298
	testl	%eax, %eax
	je	.LBB54_59
# BB#60:                                # %if.end.304thread-pre-split
	movl	52(%rsp), %eax
.LBB54_61:                              # %if.end.304
	cmpl	$9, %eax
	jne	.LBB54_74
# BB#62:                                # %land.lhs.true.309
	movl	$.L.str.7, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB54_72
# BB#63:                                # %land.lhs.true.319
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB54_71
# BB#64:                                # %cond.true.323
	movzbl	(%rdi), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB54_73
# BB#65:                                # %cond.true.323
	testl	%eax, %eax
	jne	.LBB54_73
# BB#66:                                # %if.then.339
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB54_73
# BB#67:                                # %if.then.339
	testl	%eax, %eax
	jne	.LBB54_73
# BB#68:                                # %if.then.349
	movzbl	2(%rdi), %eax
	addl	$-112, %eax
	cmpq	$3, %rcx
	jb	.LBB54_73
# BB#69:                                # %if.then.349
	testl	%eax, %eax
	jne	.LBB54_73
# BB#70:                                # %if.then.359
	movzbl	3(%rdi), %eax
	addl	$-97, %eax
	jmp	.LBB54_73
.LBB54_72:                              # %cond.false.374
	movq	56(%rsp), %rdi
	movl	$.L.str.7, %esi
	movl	$9, %edx
	callq	strncmp
	jmp	.LBB54_73
.LBB54_71:                              # %cond.false.368
	movl	$.L.str.7, %esi
	callq	strcmp
.LBB54_73:                              # %cond.end.378
	testl	%eax, %eax
	movl	$-20, %eax
	je	.LBB54_75
.LBB54_74:                              # %if.end.383
	movq	(%r14), %rax
	movups	16(%rsp), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	jmp	.LBB54_75
.LBB54_59:
	movl	$-20, %eax
	jmp	.LBB54_75
.Lfunc_end54:
	.size	validateseparationspace, .Lfunc_end54-validateseparationspace
	.cfi_endproc

	.align	16, 0x90
	.type	separationalternatespace,@function
separationalternatespace:               # @separationalternatespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp316:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp317:
	.cfi_def_cfa_offset 32
.Ltmp318:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB55_2
# BB#1:                                 # %if.end
	movq	(%rbx), %rax
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
.LBB55_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end55:
	.size	separationalternatespace, .Lfunc_end55-separationalternatespace
	.cfi_endproc

	.align	16, 0x90
	.type	seprange,@function
seprange:                               # @seprange
	.cfi_startproc
# BB#0:                                 # %entry
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end56:
	.size	seprange, .Lfunc_end56-seprange
	.cfi_endproc

	.align	16, 0x90
	.type	sepdomain,@function
sepdomain:                              # @sepdomain
	.cfi_startproc
# BB#0:                                 # %entry
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end57:
	.size	sepdomain, .Lfunc_end57-sepdomain
	.cfi_endproc

	.align	16, 0x90
	.type	sepbasecolor,@function
sepbasecolor:                           # @sepbasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp319:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp320:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp321:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp322:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp323:
	.cfi_def_cfa_offset 48
.Ltmp324:
	.cfi_offset %rbx, -40
.Ltmp325:
	.cfi_offset %r12, -32
.Ltmp326:
	.cfi_offset %r14, -24
.Ltmp327:
	.cfi_offset %r15, -16
	movq	%r8, %r15
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rdi, %r12
	leaq	4(%rsp), %rdx
	movq	%r9, %r8
	callq	septransform
	testl	%eax, %eax
	jne	.LBB58_15
# BB#1:                                 # %if.end
	cmpl	$0, 4(%rsp)
	movl	$0, (%rbx)
	je	.LBB58_2
# BB#14:                                # %if.else.92
	movl	$1, (%r15)
	xorl	%eax, %eax
.LBB58_15:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB58_2:                               # %if.then.1
	movl	$0, (%r15)
	movq	624(%r12), %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, 624(%r12)
	xorl	%eax, %eax
	leal	-1(%r14), %edx
	cmpl	$2, %edx
	jae	.LBB58_3
# BB#8:                                 # %do.body.20
	leaq	32(%rcx), %rdx
	cmpq	640(%r12), %rdx
	jbe	.LBB58_10
# BB#9:                                 # %if.then.26
	movl	$3, 688(%r12)
	movl	$-16, %eax
	jmp	.LBB58_15
.LBB58_3:                               # %if.then.1
	cmpl	$3, %r14d
	jne	.LBB58_4
# BB#11:                                # %do.body.53
	leaq	48(%rcx), %rdx
	cmpq	640(%r12), %rdx
	jbe	.LBB58_13
# BB#12:                                # %if.then.59
	movl	$4, 688(%r12)
	movl	$-16, %eax
	jmp	.LBB58_15
.LBB58_10:                              # %if.else.30
	movq	%rdx, 624(%r12)
	movl	$0, 8(%rcx)
	movw	$4096, (%rcx)           # imm = 0x1000
	movl	$0, 24(%rcx)
	movw	$4096, 16(%rcx)         # imm = 0x1000
	movl	$0, 40(%rcx)
	movw	$4096, 32(%rcx)         # imm = 0x1000
	jmp	.LBB58_15
.LBB58_4:                               # %if.then.1
	testl	%r14d, %r14d
	jne	.LBB58_15
# BB#5:                                 # %do.body
	cmpq	640(%r12), %rcx
	jbe	.LBB58_7
# BB#6:                                 # %if.then.12
	movl	$1, 688(%r12)
	movl	$-16, %eax
	jmp	.LBB58_15
.LBB58_13:                              # %if.else.63
	movq	%rdx, 624(%r12)
	movl	$0, 8(%rcx)
	movw	$4096, (%rcx)           # imm = 0x1000
	movl	$0, 24(%rcx)
	movw	$4096, 16(%rcx)         # imm = 0x1000
	movl	$0, 40(%rcx)
	movw	$4096, 32(%rcx)         # imm = 0x1000
	movl	$0, 56(%rcx)
	movw	$4096, 48(%rcx)         # imm = 0x1000
	jmp	.LBB58_15
.LBB58_7:                               # %if.else
	movq	%rcx, 624(%r12)
	movl	$0, 8(%rcx)
	movw	$4096, (%rcx)           # imm = 0x1000
	jmp	.LBB58_15
.Lfunc_end58:
	.size	sepbasecolor, .Lfunc_end58-sepbasecolor
	.cfi_endproc

	.align	16, 0x90
	.type	septransform,@function
septransform:                           # @septransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp328:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp329:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp330:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp331:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp332:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp333:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp334:
	.cfi_def_cfa_offset 96
.Ltmp335:
	.cfi_offset %rbx, -56
.Ltmp336:
	.cfi_offset %r12, -48
.Ltmp337:
	.cfi_offset %r13, -40
.Ltmp338:
	.cfi_offset %r14, -32
.Ltmp339:
	.cfi_offset %r15, -24
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	1872(%rax), %r13
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB59_15
# BB#1:                                 # %if.end
	movq	%rbp, (%rsp)            # 8-byte Spill
	movzbl	25(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB59_3
# BB#2:                                 # %if.then.3
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	24(%rsp), %rsi
	movq	%rsi, %rdx
	callq	names_string_ref
.LBB59_3:                               # %if.end.6
	movl	28(%rsp), %ebp
	cmpl	$4, %ebp
	jne	.LBB59_4
# BB#7:                                 # %land.lhs.true.22
	movq	32(%rsp), %r15
	movl	$.L.str.76, %edi
	movl	$4, %edx
	movq	%r15, %rsi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB59_9
	jmp	.LBB59_6
.LBB59_4:                               # %if.end.6
	cmpl	$3, %ebp
	jne	.LBB59_8
# BB#5:                                 # %land.lhs.true
	movq	32(%rsp), %rsi
	movl	$.L.str.75, %edi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB59_6
.LBB59_8:                               # %if.end.17.if.end.32_crit_edge
	movq	32(%rsp), %r15
.LBB59_9:                               # %if.end.32
	movl	$1, %ecx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	*1544(%r13)
	movl	%eax, %ecx
	shrl	$31, %ecx
	testl	%eax, %eax
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%ecx, (%rax)
	jns	.LBB59_13
# BB#10:                                # %land.lhs.true.42
	cmpl	$0, (%r12)
	je	.LBB59_11
.LBB59_13:                              # %if.end.56
	movl	$0, (%r12)
	jmp	.LBB59_14
.LBB59_6:                               # %if.then.16
	movq	(%rsp), %rax            # 8-byte Reload
	movl	$0, (%rax)
.LBB59_14:                              # %cleanup
	xorl	%eax, %eax
.LBB59_15:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB59_11:                              # %if.then.45
	movl	$1, (%r12)
	addq	$16, 520(%rbx)
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$3, %edx
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB59_15
# BB#12:                                # %if.end.52
	movq	520(%rbx), %rax
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$5, %eax
	jmp	.LBB59_15
.Lfunc_end59:
	.size	septransform, .Lfunc_end59-septransform
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI60_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	sepvalidate,@function
sepvalidate:                            # @sepvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	testl	%ecx, %ecx
	jle	.LBB60_7
# BB#1:                                 # %if.end
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$16, %ecx
	je	.LBB60_3
# BB#2:                                 # %if.end
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB60_7
.LBB60_3:                               # %if.end.10
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI60_0(%rip), %xmm0
	jbe	.LBB60_5
# BB#4:                                 # %if.end.15.thread
	movl	$1065353216, (%rdx)     # imm = 0x3F800000
	xorl	%eax, %eax
	retq
.LBB60_5:                               # %if.end.15
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB60_7
# BB#6:                                 # %if.then.19
	movl	$0, (%rdx)
.LBB60_7:                               # %cleanup
	retq
.Lfunc_end60:
	.size	sepvalidate, .Lfunc_end60-sepvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	sepcompareproc,@function
sepcompareproc:                         # @sepcompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp341:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp342:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp343:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp344:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp345:
	.cfi_def_cfa_offset 80
.Ltmp346:
	.cfi_offset %rbx, -40
.Ltmp347:
	.cfi_offset %r14, -32
.Ltmp348:
	.cfi_offset %r15, -24
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	xorl	%r14d, %r14d
	testl	%eax, %eax
	js	.LBB61_18
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB61_18
# BB#2:                                 # %if.end.6
	movzbl	25(%rsp), %eax
	movzbl	9(%rsp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB61_18
# BB#3:                                 # %if.end.14
	cmpl	$18, %eax
	jne	.LBB61_4
# BB#6:                                 # %sw.bb.25
	movl	28(%rsp), %edx
	cmpl	12(%rsp), %edx
	jne	.LBB61_18
# BB#7:                                 # %if.end.32
	movq	32(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB61_18
	jmp	.LBB61_8
.LBB61_4:                               # %if.end.14
	cmpl	$13, %eax
	jne	.LBB61_18
# BB#5:                                 # %sw.bb
	movq	32(%rsp), %rax
	cmpq	16(%rsp), %rax
	jne	.LBB61_18
.LBB61_8:                               # %sw.epilog
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB61_18
# BB#9:                                 # %if.end.50
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB61_18
# BB#10:                                # %if.end.57
	movzbl	25(%rsp), %eax
	movzbl	9(%rsp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB61_18
# BB#11:                                # %if.end.69
	movzwl	24(%rsp), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB61_13
# BB#12:                                # %if.then.75
	leaq	24(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	jne	.LBB61_15
	jmp	.LBB61_18
.LBB61_13:                              # %if.else
	movzbl	%al, %eax
	cmpl	$13, %eax
	jne	.LBB61_18
# BB#14:                                # %if.end.86
	movq	32(%rsp), %rax
	cmpq	16(%rsp), %rax
	jne	.LBB61_18
.LBB61_15:                              # %if.end.95
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$3, %edx
	movq	%rbp, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB61_18
# BB#16:                                # %if.end.102
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$3, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB61_18
# BB#17:                                # %if.end.109
	leaq	24(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	comparearrays
	movl	%eax, %r14d
.LBB61_18:                              # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	sepcompareproc, .Lfunc_end61-sepcompareproc
	.cfi_endproc

	.align	16, 0x90
	.type	sepinitialproc,@function
sepinitialproc:                         # @sepinitialproc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$264, %rsp              # imm = 0x108
.Ltmp350:
	.cfi_def_cfa_offset 272
	movq	$0, (%rsp)
	movl	$1065353216, 8(%rsp)    # imm = 0x3F800000
	movq	(%rdi), %rdi
	leaq	(%rsp), %rsi
	callq	gs_setcolor
	addq	$264, %rsp              # imm = 0x108
	retq
.Lfunc_end62:
	.size	sepinitialproc, .Lfunc_end62-sepinitialproc
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI63_0:
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	setdevicenspace,@function
setdevicenspace:                        # @setdevicenspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp352:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp353:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp354:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp355:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp356:
	.cfi_def_cfa_offset 56
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp357:
	.cfi_def_cfa_offset 560
.Ltmp358:
	.cfi_offset %rbx, -56
.Ltmp359:
	.cfi_offset %r12, -48
.Ltmp360:
	.cfi_offset %r13, -40
.Ltmp361:
	.cfi_offset %r14, -32
.Ltmp362:
	.cfi_offset %r15, -24
.Ltmp363:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	$-21, %ebp
	cmpl	$3, 80(%r13)
	jl	.LBB63_74
# BB#1:                                 # %if.end
	movl	$0, (%r15)
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.LBB63_14
# BB#2:                                 # %if.end
	cmpl	$3, %eax
	je	.LBB63_7
# BB#3:                                 # %if.end
	cmpl	$2, %eax
	jne	.LBB63_24
# BB#4:                                 # %if.then.2
	cmpl	$5, 4(%r12)
	jne	.LBB63_7
# BB#5:                                 # %if.then.4
	movq	8(%r13), %rdi
	leaq	416(%rsp), %rcx
	movl	$4, %edx
	movq	%r12, %rsi
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#6:                                 # %if.end.7
	movzbl	417(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB63_7
# BB#8:                                 # %if.end.12
	leaq	416(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.78, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB63_7
# BB#9:                                 # %if.end.17
	movq	32(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB63_7
# BB#10:                                # %if.end.25
	movl	$3, (%rbx)
	movl	$1, (%r15)
	leaq	520(%r13), %rbx
	movq	520(%r13), %rax
	movq	536(%r13), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB63_13
# BB#11:                                # %if.then.32
	movl	$5, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#12:                                # %if.then.32.if.end.40_crit_edge
	movq	(%rbx), %rax
.LBB63_13:                              # %if.end.40
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$0, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movq	$0, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	leaq	48(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	32(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, 48(%rax)
	movq	(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$devicencolorants_cont, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %ebp
	jmp	.LBB63_74
.LBB63_7:                               # %if.then.11
	movl	$0, (%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB63_74
.LBB63_14:                              # %if.then.118
	movq	8(%r13), %rdi
	leaq	472(%rsp), %rcx
	movl	$3, %edx
	movq	%r12, %rsi
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#15:                                # %if.end.125
	leaq	8(%r13), %r14
	leaq	472(%rsp), %rdi
	callq	ref_function
	testq	%rax, %rax
	je	.LBB63_17
# BB#16:
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB63_25
.LBB63_24:                              # %if.else.148
	movq	624(%r13), %rdi
	callq	ref_function
	movq	%rax, 16(%rsp)          # 8-byte Spill
	addq	$-16, 624(%r13)
	leaq	8(%r13), %r14
.LBB63_25:                              # %if.end.157
	movl	$2, (%rbx)
	movq	(%r14), %rdi
	leaq	488(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rsi
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#26:                                # %if.end.164
	movl	492(%rsp), %ebp
	movq	(%r13), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rbx
	cmpq	$1, %rbp
	jne	.LBB63_48
# BB#27:                                # %if.then.170
	movq	(%r14), %rdi
	leaq	488(%rsp), %rsi
	leaq	456(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movzbl	457(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB63_28
# BB#30:                                # %sw.bb.178
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	456(%rsp), %rsi
	leaq	432(%rsp), %rdx
	callq	names_string_ref
	jmp	.LBB63_31
.LBB63_17:                              # %if.then.129
	movq	624(%r13), %rax
	addq	$16, %rax
	cmpq	640(%r13), %rax
	jbe	.LBB63_19
# BB#18:                                # %convert_transform.exit.thread
	movl	$1, 688(%r13)
	movl	$-16, %ebp
	jmp	.LBB63_74
.LBB63_28:                              # %if.then.170
	movq	%rbp, %rcx
	movl	$-20, %ebp
	cmpl	$18, %eax
	jne	.LBB63_74
# BB#29:                                # %sw.bb
	movups	456(%rsp), %xmm0
	movaps	%xmm0, 432(%rsp)
	movq	%rcx, %rbp
.LBB63_31:                              # %sw.epilog
	movl	$.L.str.75, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	440(%rsp), %rdi
	cmpq	$2, %rcx
	ja	.LBB63_37
# BB#32:                                # %cond.true.187
	movzbl	(%rdi), %eax
	addl	$-65, %eax
	testq	%rcx, %rcx
	je	.LBB63_38
# BB#33:                                # %cond.true.187
	testl	%eax, %eax
	jne	.LBB63_38
# BB#34:                                # %if.then.199
	movzbl	1(%rdi), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB63_38
# BB#35:                                # %if.then.199
	testl	%eax, %eax
	jne	.LBB63_38
# BB#36:                                # %if.then.209
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	jmp	.LBB63_38
.LBB63_19:                              # %if.else.i
	movq	%rax, 624(%r13)
	leaq	472(%rsp), %rdx
	movl	$4, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	buildfunction
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB63_21
# BB#20:                                # %convert_transform.exit
	leaq	472(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	buildfunction
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
.LBB63_21:                              # %if.end.134
	testl	%ebp, %ebp
	jle	.LBB63_23
# BB#22:                                # %if.then.137
	movl	$1, (%r15)
	movl	$1, (%rbx)
	jmp	.LBB63_74
.LBB63_37:                              # %cond.false.231
	movl	$.L.str.75, %esi
	movl	$3, %edx
	callq	strncmp
.LBB63_38:                              # %cond.end.235
	testl	%eax, %eax
	jne	.LBB63_48
# BB#39:                                # %land.lhs.true.239
	cmpl	$3, 436(%rsp)
	jne	.LBB63_48
# BB#40:                                # %if.then.244
	movq	(%r13), %rdi
	callq	gs_currentcolorspace
	movq	(%r13), %rcx
	movq	16(%rcx), %rcx
	movups	256(%rcx), %xmm0
	movaps	%xmm0, 400(%rsp)
	movups	240(%rcx), %xmm0
	movaps	%xmm0, 384(%rsp)
	movups	176(%rcx), %xmm0
	movups	192(%rcx), %xmm1
	movups	208(%rcx), %xmm2
	movups	224(%rcx), %xmm3
	movaps	%xmm3, 368(%rsp)
	movaps	%xmm2, 352(%rsp)
	movaps	%xmm1, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movq	8(%r13), %rdx
	leaq	312(%rsp), %rdi
	movq	%rax, %rsi
	callq	gs_cspace_new_Separation
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#41:                                # %if.end.256
	movq	312(%rsp), %rax
	movl	$1, 88(%rax)
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	456(%rsp), %rbx
	movq	%rbx, %rsi
	callq	names_index
	movl	%eax, %eax
	movq	312(%rsp), %rcx
	movq	%rax, 72(%rcx)
	movq	$gs_get_colorname_string, 96(%rcx)
	movq	(%r14), %rdi
	leaq	488(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#42:                                # %if.end.274
	movq	(%r13), %rax
	movq	16(%rax), %rax
	movups	456(%rsp), %xmm0
	movups	%xmm0, 240(%rax)
	movq	8(%r13), %rdi
	leaq	472(%rsp), %rcx
	movl	$3, %edx
	movq	%r12, %rsi
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#43:                                # %if.end.298
	movq	(%r13), %rax
	movq	16(%rax), %rax
	movups	472(%rsp), %xmm0
	movups	%xmm0, 256(%rax)
	movq	312(%rsp), %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	gs_cspace_set_sepr_function
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_44
# BB#45:                                # %if.end.304
	movq	(%r13), %rdi
	movq	312(%rsp), %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	movq	312(%rsp), %rdi
	movl	$.L.str.77, %esi
	callq	rc_decrement_only_cs
	testl	%ebp, %ebp
	js	.LBB63_46
# BB#47:                                # %if.end.312
	movq	$0, 48(%rsp)
	movl	$1065353216, 56(%rsp)   # imm = 0x3F800000
	movq	(%r13), %rdi
	leaq	48(%rsp), %rsi
	callq	gs_setcolor
	movl	%eax, %ebp
	jmp	.LBB63_74
.LBB63_48:                              # %if.end.318
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	(%r14), %rcx
	leaq	312(%rsp), %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	gs_cspace_new_DeviceN
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#49:                                # %if.end.325
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	312(%rsp), %rax
	movq	72(%rax), %r15
	movq	$gs_get_colorname_string, 112(%rax)
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB63_57
# BB#50:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB63_51:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	leaq	488(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	array_get
	movzbl	33(%rsp), %eax
	cmpl	$13, %eax
	je	.LBB63_56
# BB#52:                                # %for.body
                                        #   in Loop: Header=BB63_51 Depth=1
	cmpl	$18, %eax
	jne	.LBB63_55
# BB#53:                                # %sw.bb.345
                                        #   in Loop: Header=BB63_51 Depth=1
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	callq	names_from_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_54
.LBB63_56:                              # %sw.bb.355
                                        #   in Loop: Header=BB63_51 Depth=1
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r12, %rsi
	callq	names_index
	movl	%eax, %eax
	movq	%rax, (%r15,%rbx,8)
	incq	%rbx
	cmpq	24(%rsp), %rbx          # 8-byte Folded Reload
	jb	.LBB63_51
.LBB63_57:                              # %cleanup.cont.368
	movq	(%r13), %rax
	movq	16(%rax), %rax
	movups	256(%rax), %xmm0
	movaps	%xmm0, 400(%rsp)
	movups	240(%rax), %xmm0
	movaps	%xmm0, 384(%rsp)
	movups	176(%rax), %xmm0
	movups	192(%rax), %xmm1
	movups	208(%rax), %xmm2
	movups	224(%rax), %xmm3
	movaps	%xmm3, 368(%rsp)
	movaps	%xmm2, 352(%rsp)
	movaps	%xmm1, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movups	488(%rsp), %xmm0
	movups	%xmm0, 240(%rax)
	movq	8(%r13), %rdi
	leaq	472(%rsp), %rcx
	movl	$3, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	8(%rsp), %r14           # 8-byte Reload
	js	.LBB63_74
# BB#58:                                # %if.end.386
	movq	(%r13), %rax
	movq	16(%rax), %rax
	movups	472(%rsp), %xmm0
	movups	%xmm0, 256(%rax)
	movq	312(%rsp), %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	gs_cspace_set_devn_function
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB63_74
# BB#59:                                # %if.end.399
	movq	(%r13), %rdi
	movq	312(%rsp), %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	movq	312(%rsp), %rdi
	movl	$.L.str.79, %esi
	callq	rc_decrement_only_cs
	testl	%ebp, %ebp
	js	.LBB63_46
# BB#60:                                # %if.end.409
	movq	$0, 48(%rsp)
	movq	24(%rsp), %rbp          # 8-byte Reload
	testl	%ebp, %ebp
	jle	.LBB63_73
# BB#61:                                # %for.body.414.preheader
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	leal	-1(%rbp), %eax
	incq	%rax
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%r8, %rcx
	je	.LBB63_70
# BB#62:                                # %vector.body.preheader
	leal	-1(%rbp), %ebx
	movq	%rbp, %rdx
	incq	%rbx
	andq	%r8, %rbx
	addq	$-8, %rbx
	movl	%ebx, %esi
	shrl	$3, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB63_65
# BB#63:                                # %vector.body.prol.preheader
	movl	%edx, %ebp
	andl	$24, %ebp
	addl	$-8, %ebp
	shrl	$3, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%edi, %edi
	movaps	.LCPI63_0(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
.LBB63_64:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 56(%rsp,%rdi,4)
	movups	%xmm0, 72(%rsp,%rdi,4)
	addq	$8, %rdi
	incq	%rbp
	jne	.LBB63_64
.LBB63_65:                              # %vector.body.preheader.split
	cmpq	$24, %rbx
	jae	.LBB63_67
# BB#66:
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	jmp	.LBB63_70
.LBB63_55:                              # %sw.default.363
	movq	312(%rsp), %rdi
	movl	$.L.str.79, %esi
	callq	rc_decrement_cs
	movl	$-20, %ebp
	jmp	.LBB63_74
.LBB63_23:                              # %if.end.138
	movq	624(%r13), %rdi
	callq	ref_function
	movq	%rax, 16(%rsp)          # 8-byte Spill
	addq	$-16, 624(%r13)
	jmp	.LBB63_25
.LBB63_54:                              # %if.then.353
	movq	312(%rsp), %rdi
	movl	$.L.str.79, %esi
	callq	rc_decrement_cs
	jmp	.LBB63_74
.LBB63_67:                              # %vector.body.preheader.split.split
	movq	%rdx, %rbp
	leal	-1(%rbp), %esi
	incq	%rsi
	andq	%r8, %rsi
	subq	%rdi, %rsi
	leaq	168(%rsp,%rdi,4), %rdx
	movaps	.LCPI63_0(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
.LBB63_68:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rdx)
	movups	%xmm0, -96(%rdx)
	movups	%xmm0, -80(%rdx)
	movups	%xmm0, -64(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
	subq	$-128, %rdx
	addq	$-32, %rsi
	jne	.LBB63_68
# BB#69:
	movq	%rcx, %rsi
.LBB63_70:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB63_73
# BB#71:                                # %for.body.414.preheader160
	leaq	56(%rsp,%rsi,4), %rax
	subl	%esi, %ebp
.LBB63_72:                              # %for.body.414
                                        # =>This Inner Loop Header: Depth=1
	movl	$1065353216, (%rax)     # imm = 0x3F800000
	addq	$4, %rax
	decl	%ebp
	jne	.LBB63_72
.LBB63_73:                              # %for.end.421
	movq	(%r13), %rdi
	leaq	48(%rsp), %rsi
	callq	gs_setcolor
	movl	%eax, %ebp
	movl	$1, (%r14)
	jmp	.LBB63_74
.LBB63_44:                              # %if.end.304.thread
	movq	312(%rsp), %rdi
	movl	$.L.str.77, %esi
	callq	rc_decrement_only_cs
.LBB63_46:                              # %if.then.307
	movq	(%r13), %rax
	movq	16(%rax), %rax
	movaps	400(%rsp), %xmm0
	movups	%xmm0, 256(%rax)
	movaps	384(%rsp), %xmm0
	movups	%xmm0, 240(%rax)
	movaps	320(%rsp), %xmm0
	movaps	336(%rsp), %xmm1
	movaps	352(%rsp), %xmm2
	movaps	368(%rsp), %xmm3
	movups	%xmm3, 224(%rax)
	movups	%xmm2, 208(%rax)
	movups	%xmm1, 192(%rax)
	movups	%xmm0, 176(%rax)
.LBB63_74:                              # %cleanup.424
	movl	%ebp, %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	setdevicenspace, .Lfunc_end63-setdevicenspace
	.cfi_endproc

	.align	16, 0x90
	.type	validatedevicenspace,@function
validatedevicenspace:                   # @validatedevicenspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp364:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp365:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp366:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp367:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp368:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp369:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp370:
	.cfi_def_cfa_offset 160
.Ltmp371:
	.cfi_offset %rbx, -56
.Ltmp372:
	.cfi_offset %r12, -48
.Ltmp373:
	.cfi_offset %r13, -40
.Ltmp374:
	.cfi_offset %r14, -32
.Ltmp375:
	.cfi_offset %r15, -24
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %r12
	movl	$-15, %eax
	cmpl	$4, 4(%r12)
	jb	.LBB64_78
# BB#1:                                 # %if.end
	movq	8(%r15), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB64_78
# BB#2:                                 # %if.end.3
	movq	16(%rsp), %rcx
	movl	%ecx, %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpq	$1024, %rax             # imm = 0x400
	jne	.LBB64_3
# BB#4:                                 # %if.end.8
	shrq	$32, %rcx
	testl	%ecx, %ecx
	je	.LBB64_5
# BB#6:                                 # %if.end.14
	movl	$-13, %eax
	cmpl	$64, %ecx
	ja	.LBB64_78
# BB#7:                                 # %if.end.20
	movq	8(%r15), %rdi
	leaq	88(%rsp), %rcx
	movl	$3, %edx
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB64_78
# BB#8:                                 # %do.body
	movzwl	88(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB64_79
# BB#9:                                 # %for.cond.preheader
	cmpl	$0, 20(%rsp)
	movq	8(%r15), %rdi
	je	.LBB64_15
# BB#10:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	16(%rsp), %r13
	leaq	(%rsp), %rbp
.LBB64_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	array_get
	movzbl	1(%rsp), %eax
	cmpl	$18, %eax
	je	.LBB64_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB64_11 Depth=1
	cmpl	$13, %eax
	jne	.LBB64_13
.LBB64_14:                              # %for.inc
                                        #   in Loop: Header=BB64_11 Depth=1
	incq	%rbx
	movq	8(%r15), %rdi
	cmpl	20(%rsp), %ebx
	jb	.LBB64_11
.LBB64_15:                              # %for.end
	leaq	32(%rsp), %rcx
	movl	$2, %edx
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB64_78
# BB#16:                                # %if.end.54
	movzbl	33(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB64_28
# BB#17:                                # %if.then.61
	movups	32(%rsp), %xmm0
	movaps	%xmm0, 64(%rsp)
.LBB64_18:                              # %if.end.85
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	64(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	names_string_ref
	movl	52(%rsp), %eax
	cmpl	$7, %eax
	jne	.LBB64_64
# BB#19:                                # %if.then.92
	movl	$.L.str.9, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB64_34
# BB#20:                                # %land.lhs.true
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB64_33
# BB#21:                                # %cond.true.99
	movzbl	(%rdi), %eax
	addl	$-73, %eax
	testq	%rcx, %rcx
	je	.LBB64_35
# BB#22:                                # %cond.true.99
	testl	%eax, %eax
	jne	.LBB64_35
# BB#23:                                # %if.then.110
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB64_35
# BB#24:                                # %if.then.110
	testl	%eax, %eax
	jne	.LBB64_35
# BB#25:                                # %if.then.120
	movzbl	2(%rdi), %eax
	addl	$-100, %eax
	cmpq	$3, %rcx
	jb	.LBB64_35
# BB#26:                                # %if.then.120
	testl	%eax, %eax
	jne	.LBB64_35
# BB#27:                                # %if.then.130
	movzbl	3(%rdi), %eax
	addl	$-101, %eax
	jmp	.LBB64_35
.LBB64_3:
	movl	$-20, %eax
	jmp	.LBB64_78
.LBB64_5:
	movl	$-20, %eax
	jmp	.LBB64_78
.LBB64_79:                              # %if.then.34
	leaq	88(%rsp), %rdi
	callq	check_proc_failed
	jmp	.LBB64_78
.LBB64_13:
	movl	$-20, %eax
	jmp	.LBB64_78
.LBB64_28:                              # %if.else
	movzwl	32(%rsp), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB64_29
# BB#30:                                # %if.end.69
	movq	8(%r15), %rdi
	leaq	32(%rsp), %rsi
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB64_78
# BB#31:                                # %if.end.76
	movzbl	65(%rsp), %eax
	cmpl	$13, %eax
	je	.LBB64_18
# BB#32:
	movl	$-20, %eax
	jmp	.LBB64_78
.LBB64_29:
	movl	$-20, %eax
	jmp	.LBB64_78
.LBB64_34:                              # %cond.false.142
	movq	56(%rsp), %rdi
	movl	$.L.str.9, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB64_35
.LBB64_33:                              # %cond.false
	movl	$.L.str.9, %esi
	callq	strcmp
.LBB64_35:                              # %cond.end.146
	testl	%eax, %eax
	je	.LBB64_36
# BB#37:                                # %if.end.151
	movl	$.L.str.10, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB64_47
# BB#38:                                # %land.lhs.true.161
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB64_46
# BB#39:                                # %cond.true.165
	movzbl	(%rdi), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB64_48
# BB#40:                                # %cond.true.165
	testl	%eax, %eax
	jne	.LBB64_48
# BB#41:                                # %if.then.181
	movzbl	1(%rdi), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB64_48
# BB#42:                                # %if.then.181
	testl	%eax, %eax
	jne	.LBB64_48
# BB#43:                                # %if.then.191
	movzbl	2(%rdi), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB64_48
# BB#44:                                # %if.then.191
	testl	%eax, %eax
	jne	.LBB64_48
# BB#45:                                # %if.then.201
	movzbl	3(%rdi), %eax
	addl	$-116, %eax
	jmp	.LBB64_48
.LBB64_36:
	movl	$-20, %eax
	jmp	.LBB64_78
.LBB64_47:                              # %cond.false.216
	movq	56(%rsp), %rdi
	movl	$.L.str.10, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB64_48
.LBB64_46:                              # %cond.false.210
	movl	$.L.str.10, %esi
	callq	strcmp
.LBB64_48:                              # %cond.end.220
	testl	%eax, %eax
	je	.LBB64_49
# BB#50:                                # %if.end.225
	movl	$.L.str.8, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB64_60
# BB#51:                                # %land.lhs.true.235
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB64_59
# BB#52:                                # %cond.true.239
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB64_61
# BB#53:                                # %cond.true.239
	testl	%eax, %eax
	jne	.LBB64_61
# BB#54:                                # %if.then.255
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB64_61
# BB#55:                                # %if.then.255
	testl	%eax, %eax
	jne	.LBB64_61
# BB#56:                                # %if.then.265
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB64_61
# BB#57:                                # %if.then.265
	testl	%eax, %eax
	jne	.LBB64_61
# BB#58:                                # %if.then.275
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB64_61
.LBB64_49:
	movl	$-20, %eax
	jmp	.LBB64_78
.LBB64_60:                              # %cond.false.290
	movq	56(%rsp), %rdi
	movl	$.L.str.8, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB64_61
.LBB64_59:                              # %cond.false.284
	movl	$.L.str.8, %esi
	callq	strcmp
.LBB64_61:                              # %cond.end.294
	testl	%eax, %eax
	je	.LBB64_62
# BB#63:                                # %if.end.300thread-pre-split
	movl	52(%rsp), %eax
.LBB64_64:                              # %if.end.300
	cmpl	$9, %eax
	jne	.LBB64_77
# BB#65:                                # %land.lhs.true.305
	movl	$.L.str.7, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$8, %rcx
	ja	.LBB64_75
# BB#66:                                # %land.lhs.true.315
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB64_74
# BB#67:                                # %cond.true.319
	movzbl	(%rdi), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB64_76
# BB#68:                                # %cond.true.319
	testl	%eax, %eax
	jne	.LBB64_76
# BB#69:                                # %if.then.335
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB64_76
# BB#70:                                # %if.then.335
	testl	%eax, %eax
	jne	.LBB64_76
# BB#71:                                # %if.then.345
	movzbl	2(%rdi), %eax
	addl	$-112, %eax
	cmpq	$3, %rcx
	jb	.LBB64_76
# BB#72:                                # %if.then.345
	testl	%eax, %eax
	jne	.LBB64_76
# BB#73:                                # %if.then.355
	movzbl	3(%rdi), %eax
	addl	$-97, %eax
	jmp	.LBB64_76
.LBB64_75:                              # %cond.false.370
	movq	56(%rsp), %rdi
	movl	$.L.str.7, %esi
	movl	$9, %edx
	callq	strncmp
	jmp	.LBB64_76
.LBB64_74:                              # %cond.false.364
	movl	$.L.str.7, %esi
	callq	strcmp
.LBB64_76:                              # %cond.end.374
	testl	%eax, %eax
	movl	$-20, %eax
	je	.LBB64_78
.LBB64_77:                              # %if.end.379
	movq	(%r14), %rax
	movups	32(%rsp), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
.LBB64_78:                              # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB64_62:
	movl	$-20, %eax
	jmp	.LBB64_78
.Lfunc_end64:
	.size	validatedevicenspace, .Lfunc_end64-validatedevicenspace
	.cfi_endproc

	.align	16, 0x90
	.type	devicenalternatespace,@function
devicenalternatespace:                  # @devicenalternatespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp377:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp378:
	.cfi_def_cfa_offset 32
.Ltmp379:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB65_2
# BB#1:                                 # %if.end
	movq	(%rbx), %rax
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
.LBB65_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end65:
	.size	devicenalternatespace, .Lfunc_end65-devicenalternatespace
	.cfi_endproc

	.align	16, 0x90
	.type	devicencomponents,@function
devicencomponents:                      # @devicencomponents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp380:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp381:
	.cfi_def_cfa_offset 32
.Ltmp382:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB66_2
# BB#1:                                 # %if.end
	movl	4(%rsp), %eax
	movl	%eax, (%rbx)
	xorl	%eax, %eax
.LBB66_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end66:
	.size	devicencomponents, .Lfunc_end66-devicencomponents
	.cfi_endproc

	.align	16, 0x90
	.type	devicenrange,@function
devicenrange:                           # @devicenrange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp383:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp384:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp385:
	.cfi_def_cfa_offset 64
.Ltmp386:
	.cfi_offset %rbx, -24
.Ltmp387:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB67_9
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	%r14, %rdi
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB67_9
# BB#2:                                 # %if.end.4
	movq	24(%rsp), %rax
	leaq	8(%rsp), %rsi
	leaq	36(%rsp), %rdx
	movq	%r14, %rdi
	callq	*32(%rax)
	testl	%eax, %eax
	js	.LBB67_9
# BB#3:                                 # %for.cond.preheader
	movslq	36(%rsp), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	jle	.LBB67_9
# BB#4:                                 # %for.body.lr.ph
	leaq	(%rdi,%rdi), %rcx
	movslq	%ecx, %rax
	cmpq	$1, %rax
	movl	$2, %r8d
	cmovgq	%rax, %r8
	decq	%r8
	movl	%r8d, %edx
	shrl	%edx
	incl	%edx
	xorl	%eax, %eax
	testb	$3, %dl
	movl	$0, %esi
	je	.LBB67_7
# BB#5:                                 # %for.body.prol.preheader
	addl	%edi, %edi
	movslq	%edi, %rdi
	cmpq	$2, %rdi
	movl	$2, %edx
	cmovlel	%edx, %edi
	decl	%edi
	shrl	%edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%esi, %esi
	movabsq	$4575657221408423936, %rdx # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB67_6:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%rbx,%rsi,4)
	addq	$2, %rsi
	incq	%rdi
	jne	.LBB67_6
.LBB67_7:                               # %for.body.lr.ph.split
	cmpq	$6, %r8
	jb	.LBB67_9
	.align	16, 0x90
.LBB67_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rbx,%rsi,4)
	movq	%rsi, %rdx
	orq	$1, %rdx
	movl	$1065353216, (%rbx,%rdx,4) # imm = 0x3F800000
	leaq	2(%rsi), %rdx
	movl	$0, 8(%rbx,%rsi,4)
	orq	$1, %rdx
	movl	$1065353216, (%rbx,%rdx,4) # imm = 0x3F800000
	movl	$0, 16(%rbx,%rsi,4)
	leaq	4(%rsi), %rdx
	orq	$1, %rdx
	movl	$1065353216, (%rbx,%rdx,4) # imm = 0x3F800000
	movl	$0, 24(%rbx,%rsi,4)
	leaq	6(%rsi), %rdx
	orq	$1, %rdx
	movl	$1065353216, (%rbx,%rdx,4) # imm = 0x3F800000
	addq	$8, %rsi
	cmpq	%rcx, %rsi
	jl	.LBB67_8
.LBB67_9:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end67:
	.size	devicenrange, .Lfunc_end67-devicenrange
	.cfi_endproc

	.align	16, 0x90
	.type	devicendomain,@function
devicendomain:                          # @devicendomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp388:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp389:
	.cfi_def_cfa_offset 32
.Ltmp390:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB68_7
# BB#1:                                 # %if.end
	movl	4(%rsp), %edi
	leal	(%rdi,%rdi), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB68_7
# BB#2:                                 # %for.body.lr.ph
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %r8
	movl	%r8d, %edx
	shrl	%edx
	incl	%edx
	xorl	%eax, %eax
	testb	$3, %dl
	movl	$0, %edx
	je	.LBB68_5
# BB#3:                                 # %for.body.prol.preheader
	leal	-1(%rdi,%rdi), %edi
	shrl	%edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%edx, %edx
	movabsq	$4575657221408423936, %rsi # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB68_4:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, (%rbx,%rdx,4)
	addq	$2, %rdx
	incq	%rdi
	jne	.LBB68_4
.LBB68_5:                               # %for.body.lr.ph.split
	cmpq	$6, %r8
	jb	.LBB68_7
	.align	16, 0x90
.LBB68_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rbx,%rdx,4)
	movq	%rdx, %rsi
	orq	$1, %rsi
	movl	$1065353216, (%rbx,%rsi,4) # imm = 0x3F800000
	leaq	2(%rdx), %rsi
	movl	$0, 8(%rbx,%rdx,4)
	orq	$1, %rsi
	movl	$1065353216, (%rbx,%rsi,4) # imm = 0x3F800000
	movl	$0, 16(%rbx,%rdx,4)
	leaq	4(%rdx), %rsi
	orq	$1, %rsi
	movl	$1065353216, (%rbx,%rsi,4) # imm = 0x3F800000
	movl	$0, 24(%rbx,%rdx,4)
	leaq	6(%rdx), %rsi
	orq	$1, %rsi
	movl	$1065353216, (%rbx,%rsi,4) # imm = 0x3F800000
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB68_6
.LBB68_7:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end68:
	.size	devicendomain, .Lfunc_end68-devicendomain
	.cfi_endproc

	.align	16, 0x90
	.type	devicenbasecolor,@function
devicenbasecolor:                       # @devicenbasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp391:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp392:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp393:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp394:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp395:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp396:
	.cfi_def_cfa_offset 80
.Ltmp397:
	.cfi_offset %rbx, -48
.Ltmp398:
	.cfi_offset %r12, -40
.Ltmp399:
	.cfi_offset %r13, -32
.Ltmp400:
	.cfi_offset %r14, -24
.Ltmp401:
	.cfi_offset %r15, -16
	movq	%r8, %r12
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %r15
	leaq	28(%rsp), %rdx
	movq	%r9, %r8
	callq	devicentransform
	testl	%eax, %eax
	jne	.LBB69_18
# BB#1:                                 # %if.end
	cmpl	$0, 28(%rsp)
	movl	$0, (%rbx)
	je	.LBB69_2
# BB#17:                                # %if.else.97
	movl	$1, (%r12)
	xorl	%eax, %eax
	jmp	.LBB69_18
.LBB69_2:                               # %if.then.1
	movl	$0, (%r12)
	movq	8(%r15), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	movq	%r13, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB69_18
# BB#3:                                 # %if.end.5
	movq	624(%r15), %rcx
	movslq	12(%rsp), %rax
	shlq	$4, %rax
	subq	%rax, %rcx
	movq	%rcx, 624(%r15)
	xorl	%eax, %eax
	leal	-1(%r14), %edx
	cmpl	$2, %edx
	jae	.LBB69_4
# BB#10:                                # %do.body.25
	addq	$48, %rcx
	cmpq	640(%r15), %rcx
	jbe	.LBB69_12
# BB#11:                                # %if.then.31
	movl	$3, 688(%r15)
	movl	$-16, %eax
	jmp	.LBB69_18
.LBB69_4:                               # %if.end.5
	cmpl	$3, %r14d
	jne	.LBB69_5
# BB#14:                                # %do.body.58
	addq	$64, %rcx
	cmpq	640(%r15), %rcx
	jbe	.LBB69_16
# BB#15:                                # %if.then.64
	movl	$4, 688(%r15)
	movl	$-16, %eax
	jmp	.LBB69_18
.LBB69_12:                              # %if.else.35
	movq	%rcx, 624(%r15)
	jmp	.LBB69_13
.LBB69_5:                               # %if.end.5
	testl	%r14d, %r14d
	jne	.LBB69_18
# BB#6:                                 # %do.body
	addq	$16, %rcx
	cmpq	640(%r15), %rcx
	jbe	.LBB69_8
# BB#7:                                 # %if.then.16
	movl	$1, 688(%r15)
	movl	$-16, %eax
	jmp	.LBB69_18
.LBB69_16:                              # %if.else.68
	movq	%rcx, 624(%r15)
	movl	$0, -40(%rcx)
	movw	$4096, -48(%rcx)        # imm = 0x1000
.LBB69_13:                              # %cleanup
	movl	$0, -24(%rcx)
	movw	$4096, -32(%rcx)        # imm = 0x1000
	movl	$0, -8(%rcx)
	movw	$4096, -16(%rcx)        # imm = 0x1000
.LBB69_9:                               # %cleanup
	movl	$0, 8(%rcx)
	movw	$4096, (%rcx)           # imm = 0x1000
.LBB69_18:                              # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB69_8:                               # %if.else
	movq	%rcx, 624(%r15)
	jmp	.LBB69_9
.Lfunc_end69:
	.size	devicenbasecolor, .Lfunc_end69-devicenbasecolor
	.cfi_endproc

	.align	16, 0x90
	.type	devicentransform,@function
devicentransform:                       # @devicentransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp403:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp404:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp405:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp406:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp407:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp408:
	.cfi_def_cfa_offset 144
.Ltmp409:
	.cfi_offset %rbx, -56
.Ltmp410:
	.cfi_offset %r12, -48
.Ltmp411:
	.cfi_offset %r13, -40
.Ltmp412:
	.cfi_offset %r14, -32
.Ltmp413:
	.cfi_offset %r15, -24
.Ltmp414:
	.cfi_offset %rbp, -16
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	1872(%rax), %rbp
	movl	$0, (%rdx)
	movq	8(%rbx), %rdi
	leaq	72(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB70_22
# BB#1:                                 # %if.end
	movq	72(%rsp), %rcx
	movl	%ecx, %edx
	andl	$15360, %edx            # imm = 0x3C00
	movl	$-20, %eax
	cmpq	$1024, %rdx             # imm = 0x400
	jne	.LBB70_22
# BB#2:                                 # %for.cond.preheader
	shrq	$32, %rcx
	je	.LBB70_15
# BB#3:                                 # %for.body.lr.ph
	xorl	%r15d, %r15d
	leaq	56(%rsp), %r14
	.align	16, 0x90
.LBB70_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	leaq	72(%rsp), %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB70_22
# BB#5:                                 # %if.end.15
                                        #   in Loop: Header=BB70_4 Depth=1
	movzbl	57(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB70_7
# BB#6:                                 # %if.then.21
                                        #   in Loop: Header=BB70_4 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	names_string_ref
.LBB70_7:                               # %if.end.24
                                        #   in Loop: Header=BB70_4 Depth=1
	movl	60(%rsp), %r12d
	cmpl	$4, %r12d
	jne	.LBB70_8
# BB#11:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB70_4 Depth=1
	movq	64(%rsp), %r13
	movl	$.L.str.76, %edi
	movl	$4, %edx
	movq	%r13, %rsi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB70_12
	jmp	.LBB70_14
	.align	16, 0x90
.LBB70_8:                               # %if.end.24
                                        #   in Loop: Header=BB70_4 Depth=1
	cmpl	$3, %r12d
	jne	.LBB70_10
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB70_4 Depth=1
	movq	64(%rsp), %rsi
	movl	$.L.str.75, %edi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB70_14
.LBB70_10:                              # %if.end.36.if.end.51_crit_edge
                                        #   in Loop: Header=BB70_4 Depth=1
	movq	64(%rsp), %r13
.LBB70_12:                              # %if.end.51
                                        #   in Loop: Header=BB70_4 Depth=1
	movl	$1, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	callq	*1544(%rbp)
	testl	%eax, %eax
	js	.LBB70_13
.LBB70_14:                              # %for.inc
                                        #   in Loop: Header=BB70_4 Depth=1
	incq	%r15
	cmpl	76(%rsp), %r15d
	jb	.LBB70_4
.LBB70_15:                              # %for.end
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB70_16
# BB#19:                                # %if.end.76thread-pre-split
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	(%rdx), %ecx
	jmp	.LBB70_20
.LBB70_13:                              # %for.end.thread
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$1, (%rax)
.LBB70_16:                              # %land.lhs.true.61
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	je	.LBB70_17
.LBB70_20:                              # %if.end.76
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB70_22
# BB#21:                                # %if.then.79
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	$0, (%rcx)
	movl	$0, (%rdx)
	jmp	.LBB70_22
.LBB70_17:                              # %if.then.64
	movl	$1, (%rdx)
	addq	$16, 520(%rbx)
	movq	8(%rbx), %rdi
	leaq	40(%rsp), %rcx
	movl	$3, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	array_get
	testl	%eax, %eax
	js	.LBB70_22
# BB#18:                                # %if.end.72
	movq	520(%rbx), %rax
	movups	40(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$5, %eax
.LBB70_22:                              # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end70:
	.size	devicentransform, .Lfunc_end70-devicentransform
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI71_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	devicenvalidate,@function
devicenvalidate:                        # @devicenvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp415:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp416:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp417:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp418:
	.cfi_def_cfa_offset 48
.Ltmp419:
	.cfi_offset %rbx, -32
.Ltmp420:
	.cfi_offset %r14, -24
.Ltmp421:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	624(%rdi), %rbp
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB71_14
# BB#1:                                 # %if.end
	movq	(%rsp), %rcx
	movl	%ecx, %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpq	$1024, %rax             # imm = 0x400
	jne	.LBB71_2
# BB#3:                                 # %if.end.4
	shrq	$32, %rcx
	movl	$-17, %eax
	cmpl	%r14d, %ecx
	ja	.LBB71_14
# BB#4:                                 # %if.end.9
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB71_14
# BB#5:                                 # %for.body.lr.ph
	movl	%ecx, %eax
	decl	%eax
	shlq	$4, %rax
	subq	%rax, %rbp
	incq	%rbp
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB71_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %eax
	cmpl	$16, %eax
	je	.LBB71_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB71_6 Depth=1
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB71_8
.LBB71_9:                               # %if.end.28
                                        #   in Loop: Header=BB71_6 Depth=1
	movss	(%rbx,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI71_0(%rip), %xmm1
	jbe	.LBB71_11
# BB#10:                                # %if.end.36.thread
                                        #   in Loop: Header=BB71_6 Depth=1
	movl	$1065353216, (%rbx,%rdx,4) # imm = 0x3F800000
	jmp	.LBB71_13
	.align	16, 0x90
.LBB71_11:                              # %if.end.36
                                        #   in Loop: Header=BB71_6 Depth=1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB71_13
# BB#12:                                # %if.then.42
                                        #   in Loop: Header=BB71_6 Depth=1
	movl	$0, (%rbx,%rdx,4)
.LBB71_13:                              # %if.end.45
                                        #   in Loop: Header=BB71_6 Depth=1
	incq	%rdx
	addq	$16, %rbp
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	jb	.LBB71_6
	jmp	.LBB71_14
.LBB71_2:
	movl	$-20, %eax
.LBB71_14:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB71_8:
	movl	$-20, %eax
	jmp	.LBB71_14
.Lfunc_end71:
	.size	devicenvalidate, .Lfunc_end71-devicenvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	devicencompareproc,@function
devicencompareproc:                     # @devicencompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp422:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp423:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp424:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp425:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp426:
	.cfi_def_cfa_offset 80
.Ltmp427:
	.cfi_offset %rbx, -40
.Ltmp428:
	.cfi_offset %r14, -32
.Ltmp429:
	.cfi_offset %r15, -24
.Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	xorl	%r14d, %r14d
	testl	%eax, %eax
	js	.LBB72_15
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB72_15
# BB#2:                                 # %if.end.6
	movzwl	24(%rsp), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB72_15
# BB#3:                                 # %if.end.10
	movzwl	8(%rsp), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB72_15
# BB#4:                                 # %if.end.18
	leaq	24(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB72_15
# BB#5:                                 # %if.end.21
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB72_15
# BB#6:                                 # %if.end.28
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB72_15
# BB#7:                                 # %if.end.35
	movzbl	25(%rsp), %eax
	movzbl	9(%rsp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB72_15
# BB#8:                                 # %if.end.46
	movzwl	24(%rsp), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB72_10
# BB#9:                                 # %if.then.53
	leaq	24(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	comparearrays
	testl	%eax, %eax
	jne	.LBB72_12
	jmp	.LBB72_15
.LBB72_10:                              # %if.else
	movzbl	%al, %eax
	cmpl	$13, %eax
	jne	.LBB72_15
# BB#11:                                # %if.end.65
	movq	32(%rsp), %rax
	cmpq	16(%rsp), %rax
	jne	.LBB72_15
.LBB72_12:                              # %if.end.72
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$3, %edx
	movq	%rbp, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB72_15
# BB#13:                                # %if.end.79
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$3, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB72_15
# BB#14:                                # %if.end.86
	leaq	24(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	comparearrays
	movl	%eax, %r14d
.LBB72_15:                              # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	devicencompareproc, .Lfunc_end72-devicencompareproc
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI73_0:
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	deviceninitialproc,@function
deviceninitialproc:                     # @deviceninitialproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp431:
	.cfi_def_cfa_offset 16
	subq	$288, %rsp              # imm = 0x120
.Ltmp432:
	.cfi_def_cfa_offset 304
.Ltmp433:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB73_14
# BB#1:                                 # %if.end
	movl	12(%rsp), %esi
	movq	$0, 24(%rsp)
	testl	%esi, %esi
	jle	.LBB73_13
# BB#2:                                 # %for.body.preheader
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	leal	-1(%rsi), %edx
	leaq	1(%rdx), %r9
	xorl	%eax, %eax
	movq	%r9, %r10
	andq	%r8, %r10
	je	.LBB73_10
# BB#3:                                 # %vector.body.preheader
	leaq	1(%rdx), %rdi
	andq	%r8, %rdi
	addq	$-8, %rdi
	movl	%edi, %eax
	shrl	$3, %eax
	incl	%eax
	xorl	%ecx, %ecx
	testb	$3, %al
	je	.LBB73_6
# BB#4:                                 # %vector.body.prol.preheader
	movl	%esi, %eax
	andl	$24, %eax
	addl	$-8, %eax
	shrl	$3, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%ecx, %ecx
	movaps	.LCPI73_0(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	.align	16, 0x90
.LBB73_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 32(%rsp,%rcx,4)
	movups	%xmm0, 48(%rsp,%rcx,4)
	addq	$8, %rcx
	incq	%rax
	jne	.LBB73_5
.LBB73_6:                               # %vector.body.preheader.split
	cmpq	$24, %rdi
	jb	.LBB73_9
# BB#7:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%rcx, %rdx
	leaq	144(%rsp,%rcx,4), %rax
	movaps	.LCPI73_0(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	.align	16, 0x90
.LBB73_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-32, %rdx
	jne	.LBB73_8
.LBB73_9:
	movq	%r10, %rax
.LBB73_10:                              # %middle.block
	cmpq	%rax, %r9
	je	.LBB73_13
# BB#11:                                # %for.body.preheader13
	leaq	32(%rsp,%rax,4), %rcx
	subl	%eax, %esi
	.align	16, 0x90
.LBB73_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1065353216, (%rcx)     # imm = 0x3F800000
	addq	$4, %rcx
	decl	%esi
	jne	.LBB73_12
.LBB73_13:                              # %for.end
	movq	(%rbx), %rdi
	leaq	24(%rsp), %rsi
	callq	gs_setcolor
.LBB73_14:                              # %cleanup
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	retq
.Lfunc_end73:
	.size	deviceninitialproc, .Lfunc_end73-deviceninitialproc
	.cfi_endproc

	.align	16, 0x90
	.type	setindexedspace,@function
setindexedspace:                        # @setindexedspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp434:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp435:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp436:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp437:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp438:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp439:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp440:
	.cfi_def_cfa_offset 240
.Ltmp441:
	.cfi_offset %rbx, -56
.Ltmp442:
	.cfi_offset %r12, -48
.Ltmp443:
	.cfi_offset %r13, -40
.Ltmp444:
	.cfi_offset %r14, -32
.Ltmp445:
	.cfi_offset %r15, -24
.Ltmp446:
	.cfi_offset %rbp, -16
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	(%rbp), %rax
	movl	$240, %r15d
	addq	16(%rax), %r15
	leaq	520(%rbp), %rbx
	movq	%rbx, %rdi
	callq	ref_stack_count
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	$-21, %r13d
	cmpl	$2, 80(%rbp)
	jl	.LBB74_19
# BB#1:                                 # %if.end
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	cmpl	$1, (%r12)
	jne	.LBB74_3
# BB#2:                                 # %if.then.2
	movl	$0, (%r12)
	xorl	%r13d, %r13d
	jmp	.LBB74_19
.LBB74_3:                               # %if.end.3
	movq	(%rbp), %rdi
	movq	16(%rdi), %rax
	movups	256(%rax), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	240(%rax), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	176(%rax), %xmm0
	movups	192(%rax), %xmm1
	movups	208(%rax), %xmm2
	movups	224(%rax), %xmm3
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	callq	gs_currentcolorspace
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	8(%rbp), %rdi
	leaq	48(%rsp), %rcx
	movl	$3, %edx
	movq	%r14, %rsi
	callq	array_get
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB74_19
# BB#4:                                 # %if.end.13
	movq	8(%rbp), %rdi
	leaq	64(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rsi
	callq	array_get
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB74_19
# BB#5:                                 # %if.end.19
	movzbl	49(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB74_12
# BB#6:                                 # %if.then.23
	movl	72(%rsp), %r14d
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	callq	*24(%rax)
	movq	48(%rsp), %rcx
	movl	$-7, %r13d
	testb	$32, %cl
	je	.LBB74_19
# BB#7:                                 # %do.end
	incl	%r14d
	imull	%r14d, %eax
	shrq	$32, %rcx
	movl	$-15, %r13d
	cmpl	%eax, %ecx
	jb	.LBB74_19
# BB#8:                                 # %if.end.36
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movq	8(%rbp), %rdi
	movl	$gs_color_space_type_Indexed, %esi
	callq	gs_cspace_alloc
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB74_19
# BB#9:                                 # %if.end.42
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r14, 40(%rax)
	movq	%r14, %rdi
	callq	rc_increment_cs
	movq	8(%rbp), %rdi
	movl	52(%rsp), %esi
	movl	$.L.str.80, %edx
	callq	*136(%rdi)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rax, 80(%rcx)
	testq	%rax, %rax
	je	.LBB74_10
# BB#14:                                # %cleanup
	movq	56(%rsp), %rsi
	movl	52(%rsp), %edx
	movq	%rax, %rdi
	callq	memcpy
	movq	8(%rsp), %r13           # 8-byte Reload
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 88(%r13)
	movl	$0, 96(%r13)
	movw	$3584, (%r15)           # imm = 0xE00
	jmp	.LBB74_15
.LBB74_12:                              # %if.else.99
	movl	72(%rsp), %ecx
	incl	%ecx
	leaq	40(%rsp), %rsi
	leaq	48(%rsp), %rdx
	movl	$indexed_cont, %r9d
	movq	%rbp, %rdi
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	%r14, %r8
	callq	zcs_begin_map
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB74_19
# BB#13:                                # %cleanup.120.thread
	movq	8(%rbp), %rdi
	movl	$gs_color_space_type_Indexed, %esi
	callq	gs_cspace_alloc
	movq	%rax, %r13
	movq	%r14, 40(%r13)
	movq	%r14, %rdi
	callq	rc_increment_cs
	movl	$1, 96(%r13)
	movups	48(%rsp), %xmm0
	movups	%xmm0, (%r15)
	movq	40(%rsp), %rax
	movq	$lookup_indexed_map, 24(%rax)
	movq	40(%rsp), %rax
	movq	%rax, 80(%r13)
.LBB74_15:                              # %if.end.123
	movl	72(%rsp), %eax
	movl	%eax, 72(%r13)
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*24(%rax)
	movl	%eax, 76(%r13)
	movq	(%rbp), %rdi
	movq	%r13, %rsi
	callq	gs_setcolorspace
	movq	%r13, %rdi
	movl	%eax, %r13d
	movl	$.L.str.80, %esi
	callq	rc_decrement_only_cs
	testl	%r13d, %r13d
	js	.LBB74_16
# BB#17:                                # %if.end.149
	movl	$0, (%r12)
	movq	%rbx, %rdi
	callq	ref_stack_count
	xorl	%r13d, %r13d
	cmpl	28(%rsp), %eax          # 4-byte Folded Reload
	je	.LBB74_19
# BB#18:                                # %if.else.156
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$1, (%rax)
	movl	$1, (%r12)
	movl	$5, %r13d
	jmp	.LBB74_19
.LBB74_16:                              # %if.then.139
	movq	(%rbp), %rax
	movq	16(%rax), %rax
	movaps	160(%rsp), %xmm0
	movups	%xmm0, 256(%rax)
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 240(%rax)
	movaps	80(%rsp), %xmm0
	movaps	96(%rsp), %xmm1
	movaps	112(%rsp), %xmm2
	movaps	128(%rsp), %xmm3
	movups	%xmm3, 224(%rax)
	movups	%xmm2, 208(%rax)
	movups	%xmm1, 192(%rax)
	movups	%xmm0, 176(%rax)
	movq	%rbx, %rdi
	callq	ref_stack_count
	subl	28(%rsp), %eax          # 4-byte Folded Reload
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
.LBB74_19:                              # %cleanup.157
	movl	%r13d, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB74_10:                              # %do.end.60
	movq	8(%rsp), %rax           # 8-byte Reload
	decq	8(%rax)
	jne	.LBB74_19
# BB#11:                                # %do.end.71
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	16(%rsi), %rdi
	movl	$.L.str.80, %edx
	callq	*24(%rsi)
	jmp	.LBB74_19
.Lfunc_end74:
	.size	setindexedspace, .Lfunc_end74-setindexedspace
	.cfi_endproc

	.align	16, 0x90
	.type	validateindexedspace,@function
validateindexedspace:                   # @validateindexedspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp447:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp448:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp449:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp450:
	.cfi_def_cfa_offset 112
.Ltmp451:
	.cfi_offset %rbx, -32
.Ltmp452:
	.cfi_offset %r14, -24
.Ltmp453:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB75_1
# BB#2:                                 # %if.end
	movl	$-15, %eax
	cmpl	$4, 4(%rbx)
	jne	.LBB75_44
# BB#3:                                 # %if.end.6
	movq	8(%r15), %rdi
	leaq	32(%rsp), %rcx
	movl	$2, %edx
	movq	%rbx, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB75_44
# BB#4:                                 # %if.end.10
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB75_5
# BB#6:                                 # %if.end.17
	cmpq	$4096, 40(%rsp)         # imm = 0x1000
	movl	$-15, %eax
	ja	.LBB75_44
# BB#7:                                 # %if.end.25
	movq	8(%r15), %rdi
	leaq	16(%rsp), %rcx
	movl	$3, %edx
	movq	%rbx, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB75_44
# BB#8:                                 # %if.end.32
	movzbl	17(%rsp), %eax
	cmpl	$18, %eax
	je	.LBB75_11
# BB#9:                                 # %do.body
	movzwl	16(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB75_10
.LBB75_11:                              # %if.end.49
	movq	8(%r15), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB75_44
# BB#12:                                # %if.end.56
	movzbl	1(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB75_14
# BB#13:                                # %if.then.63
	movups	(%rsp), %xmm0
	movaps	%xmm0, 64(%rsp)
	jmp	.LBB75_17
.LBB75_1:
	movl	$-20, %eax
.LBB75_44:                              # %cleanup
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB75_5:
	movl	$-20, %eax
	jmp	.LBB75_44
.LBB75_10:                              # %if.then.46
	leaq	16(%rsp), %rdi
	callq	check_proc_failed
	jmp	.LBB75_44
.LBB75_14:                              # %if.else
	movzwl	(%rsp), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB75_15
# BB#16:                                # %if.end.71
	movq	8(%r15), %rdi
	leaq	(%rsp), %rsi
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB75_44
.LBB75_17:                              # %if.end.79
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	64(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	names_string_ref
	cmpl	$7, 52(%rsp)
	jne	.LBB75_43
# BB#18:                                # %if.then.86
	movl	$.L.str.9, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB75_28
# BB#19:                                # %land.lhs.true
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB75_27
# BB#20:                                # %cond.true.93
	movzbl	(%rdi), %eax
	addl	$-73, %eax
	testq	%rcx, %rcx
	je	.LBB75_29
# BB#21:                                # %cond.true.93
	testl	%eax, %eax
	jne	.LBB75_29
# BB#22:                                # %if.then.105
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB75_29
# BB#23:                                # %if.then.105
	testl	%eax, %eax
	jne	.LBB75_29
# BB#24:                                # %if.then.115
	movzbl	2(%rdi), %eax
	addl	$-100, %eax
	cmpq	$3, %rcx
	jb	.LBB75_29
# BB#25:                                # %if.then.115
	testl	%eax, %eax
	jne	.LBB75_29
# BB#26:                                # %if.then.125
	movzbl	3(%rdi), %eax
	addl	$-101, %eax
	jmp	.LBB75_29
.LBB75_15:
	movl	$-20, %eax
	jmp	.LBB75_44
.LBB75_28:                              # %cond.false.137
	movq	56(%rsp), %rdi
	movl	$.L.str.9, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB75_29
.LBB75_27:                              # %cond.false
	movl	$.L.str.9, %esi
	callq	strcmp
.LBB75_29:                              # %cond.end.141
	testl	%eax, %eax
	je	.LBB75_30
# BB#31:                                # %if.end.146
	movl	$.L.str.10, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB75_41
# BB#32:                                # %land.lhs.true.156
	movq	56(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB75_40
# BB#33:                                # %cond.true.160
	movzbl	(%rdi), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB75_42
# BB#34:                                # %cond.true.160
	testl	%eax, %eax
	jne	.LBB75_42
# BB#35:                                # %if.then.176
	movzbl	1(%rdi), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB75_42
# BB#36:                                # %if.then.176
	testl	%eax, %eax
	jne	.LBB75_42
# BB#37:                                # %if.then.186
	movzbl	2(%rdi), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB75_42
# BB#38:                                # %if.then.186
	testl	%eax, %eax
	jne	.LBB75_42
# BB#39:                                # %if.then.196
	movzbl	3(%rdi), %eax
	addl	$-116, %eax
	jmp	.LBB75_42
.LBB75_30:
	movl	$-20, %eax
	jmp	.LBB75_44
.LBB75_41:                              # %cond.false.211
	movq	56(%rsp), %rdi
	movl	$.L.str.10, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB75_42
.LBB75_40:                              # %cond.false.205
	movl	$.L.str.10, %esi
	callq	strcmp
.LBB75_42:                              # %cond.end.215
	testl	%eax, %eax
	movl	$-20, %eax
	je	.LBB75_44
.LBB75_43:                              # %if.end.221
	movq	(%r14), %rax
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	jmp	.LBB75_44
.Lfunc_end75:
	.size	validateindexedspace, .Lfunc_end75-validateindexedspace
	.cfi_endproc

	.align	16, 0x90
	.type	indexedalternatespace,@function
indexedalternatespace:                  # @indexedalternatespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp454:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp455:
	.cfi_def_cfa_offset 32
.Ltmp456:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	movq	(%rbx), %rsi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB76_2
# BB#1:                                 # %if.end
	movq	(%rbx), %rax
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
.LBB76_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end76:
	.size	indexedalternatespace, .Lfunc_end76-indexedalternatespace
	.cfi_endproc

	.align	16, 0x90
	.type	indexedrange,@function
indexedrange:                           # @indexedrange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp457:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp458:
	.cfi_def_cfa_offset 32
.Ltmp459:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB77_2
# BB#1:                                 # %if.end
	movl	$0, (%rbx)
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 4(%rbx)
	xorl	%eax, %eax
.LBB77_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end77:
	.size	indexedrange, .Lfunc_end77-indexedrange
	.cfi_endproc

	.align	16, 0x90
	.type	indexeddomain,@function
indexeddomain:                          # @indexeddomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp460:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp461:
	.cfi_def_cfa_offset 32
.Ltmp462:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB78_2
# BB#1:                                 # %if.end
	movl	$0, (%rbx)
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 4(%rbx)
	xorl	%eax, %eax
.LBB78_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end78:
	.size	indexeddomain, .Lfunc_end78-indexeddomain
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI79_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	indexedbasecolor,@function
indexedbasecolor:                       # @indexedbasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp463:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp464:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp465:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp466:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp467:
	.cfi_def_cfa_offset 64
.Ltmp468:
	.cfi_offset %rbx, -40
.Ltmp469:
	.cfi_offset %r12, -32
.Ltmp470:
	.cfi_offset %r14, -24
.Ltmp471:
	.cfi_offset %r15, -16
	movq	%r8, %r12
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	$0, (%rbx)
	je	.LBB79_1
# BB#16:                                # %if.else.84
	movl	$0, (%rbx)
	movl	$1, (%r12)
	xorl	%eax, %eax
.LBB79_17:                              # %cleanup.85
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB79_1:                               # %if.then
	movq	(%r15), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rcx
	movl	$1, (%rbx)
	movl	$1, (%r12)
	cmpl	$0, 96(%rcx)
	je	.LBB79_6
# BB#2:                                 # %if.then.1
	movq	520(%r15), %rbx
	addq	$16, %rbx
	movq	%rbx, 520(%r15)
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rbx
	jbe	.LBB79_4
# BB#3:                                 # %if.then.8
	leaq	520(%r15), %rdi
	movl	$1, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB79_17
.LBB79_4:                               # %if.end.14
	movq	8(%r15), %rdi
	leaq	8(%rsp), %rcx
	movl	$3, %edx
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB79_17
# BB#5:                                 # %if.end.18
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	movl	$5, %eax
	jmp	.LBB79_17
.LBB79_6:                               # %if.else
	movq	624(%r15), %rsi
	movq	80(%rcx), %rdx
	movl	$0, (%rbx)
	movl	$-20, %eax
	movzbl	1(%rsi), %edi
	cmpl	$11, %edi
	jne	.LBB79_17
# BB#7:                                 # %if.end.28
	movq	8(%rsi), %rbx
	leaq	-16(%rsi), %rax
	movq	%rax, 624(%r15)
	movl	76(%rcx), %ecx
	movslq	%ecx, %rdi
	movq	%rdi, %rax
	shlq	$4, %rax
	leaq	-16(%rsi,%rax), %rsi
	cmpq	640(%r15), %rsi
	jbe	.LBB79_9
# BB#8:                                 # %if.then.45
	movl	%ecx, 688(%r15)
	movl	$-16, %eax
	jmp	.LBB79_17
.LBB79_9:                               # %if.else.51
	movq	%rsi, 624(%r15)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB79_17
# BB#10:                                # %for.body.lr.ph
	imull	%ecx, %ebx
	movslq	%ebx, %rax
	addq	%rax, %rdx
	decq	%rdi
	movq	%rdi, %rax
	shlq	$4, %rax
	subq	%rax, %rsi
	xorl	%eax, %eax
	testb	$1, %cl
	jne	.LBB79_12
# BB#11:
	xorl	%ebx, %ebx
	jmp	.LBB79_13
.LBB79_12:                              # %for.body.prol
	movzbl	(%rdx), %ebx
	incq	%rdx
	cvtsi2sdl	%ebx, %xmm0
	divsd	.LCPI79_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsi)
	movw	$4096, (%rsi)           # imm = 0x1000
	addq	$16, %rsi
	movl	$1, %ebx
.LBB79_13:                              # %for.body.lr.ph.split
	testl	%edi, %edi
	je	.LBB79_17
# BB#14:                                # %for.body.lr.ph.split.split
	addq	$24, %rsi
	movsd	.LCPI79_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB79_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %edi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -16(%rsi)
	movw	$4096, -24(%rsi)        # imm = 0x1000
	movzbl	1(%rdx), %edi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rsi)
	movw	$4096, -8(%rsi)         # imm = 0x1000
	addl	$2, %ebx
	addq	$32, %rsi
	addq	$2, %rdx
	cmpl	%ecx, %ebx
	jl	.LBB79_15
	jmp	.LBB79_17
.Lfunc_end79:
	.size	indexedbasecolor, .Lfunc_end79-indexedbasecolor
	.cfi_endproc

	.align	16, 0x90
	.type	indexedvalidate,@function
indexedvalidate:                        # @indexedvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp472:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp473:
	.cfi_def_cfa_offset 32
.Ltmp474:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movl	$-17, %eax
	testl	%ecx, %ecx
	jle	.LBB80_9
# BB#1:                                 # %if.end
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$16, %ecx
	je	.LBB80_3
# BB#2:                                 # %if.end
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB80_9
.LBB80_3:                               # %if.end.10
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB80_9
# BB#4:                                 # %if.end.14
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssq	8(%rsp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB80_6
# BB#5:                                 # %if.then.18
	movss	%xmm1, (%rbx)
	movaps	%xmm1, %xmm0
.LBB80_6:                               # %if.end.22
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB80_8
# BB#7:                                 # %if.then.25
	movl	$0, (%rbx)
	xorps	%xmm0, %xmm0
.LBB80_8:                               # %if.end.26
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	xorl	%eax, %eax
.LBB80_9:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end80:
	.size	indexedvalidate, .Lfunc_end80-indexedvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	falsecompareproc,@function
falsecompareproc:                       # @falsecompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end81:
	.size	falsecompareproc, .Lfunc_end81-falsecompareproc
	.cfi_endproc

	.align	16, 0x90
	.type	setpatternspace,@function
setpatternspace:                        # @setpatternspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp475:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp476:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp477:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp478:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp479:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp480:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp481:
	.cfi_def_cfa_offset 64
.Ltmp482:
	.cfi_offset %rbx, -56
.Ltmp483:
	.cfi_offset %r12, -48
.Ltmp484:
	.cfi_offset %r13, -40
.Ltmp485:
	.cfi_offset %r14, -32
.Ltmp486:
	.cfi_offset %r15, -24
.Ltmp487:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	520(%r15), %r12
	movq	%r12, %rdi
	callq	ref_stack_count
	movl	$-21, %ebx
	cmpl	$2, 80(%r15)
	jl	.LBB82_9
# BB#1:                                 # %if.end
	movl	$0, (%rbp)
	movzwl	(%r14), %edx
	movl	%edx, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	xorl	%r13d, %r13d
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB82_6
# BB#2:                                 # %do.body
	movl	$-7, %ebx
	testb	$32, %dl
	je	.LBB82_9
# BB#3:                                 # %do.end
	movl	4(%r14), %ecx
	xorl	%r13d, %r13d
	cmpl	$1, %ecx
	je	.LBB82_6
# BB#4:                                 # %do.end
	movl	%eax, %ebp
	movl	$-15, %ebx
	cmpl	$2, %ecx
	jne	.LBB82_9
# BB#5:                                 # %sw.bb.11
	movq	(%r15), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %r13
	movq	(%r13), %rax
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	movl	%ebp, %eax
	js	.LBB82_9
.LBB82_6:                               # %if.end.18
	movl	%eax, %r14d
	movq	8(%r15), %rdi
	movl	$gs_color_space_type_Pattern, %esi
	callq	gs_cspace_alloc
	movq	%rax, %rbp
	movq	%r13, 40(%rbp)
	testq	%r13, %r13
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 72(%rbp)
	movq	%r13, %rdi
	callq	rc_increment_cs
	movq	(%r15), %rdi
	movq	%rbp, %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebx
	movl	$.L.str.81, %esi
	movq	%rbp, %rdi
	callq	rc_decrement_only_cs
	testl	%ebx, %ebx
	js	.LBB82_7
# BB#8:                                 # %if.end.32
	movq	(%r15), %rax
	movq	16(%rax), %rax
	movw	$3584, 368(%rax)        # imm = 0xE00
	movq	(%rsp), %rax            # 8-byte Reload
	movl	$0, (%rax)
	movq	%r12, %rdi
	callq	ref_stack_count
	cmpl	%r14d, %eax
	setne	%al
	movzbl	%al, %eax
	leal	(%rax,%rax,4), %ebx
	jmp	.LBB82_9
.LBB82_7:                               # %if.then.26
	movq	%r12, %rdi
	callq	ref_stack_count
	subl	%r14d, %eax
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
.LBB82_9:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end82:
	.size	setpatternspace, .Lfunc_end82-setpatternspace
	.cfi_endproc

	.align	16, 0x90
	.type	validatepatternspace,@function
validatepatternspace:                   # @validatepatternspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp488:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp489:
	.cfi_def_cfa_offset 32
.Ltmp490:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rbx), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$13, %eax
	je	.LBB83_5
# BB#1:                                 # %if.then
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB83_7
# BB#2:                                 # %if.then.7
	cmpl	$2, 4(%rsi)
	jb	.LBB83_5
# BB#3:                                 # %if.then.11
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB83_7
# BB#4:                                 # %if.end
	movq	(%rbx), %rax
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB83_6
.LBB83_5:                               # %if.else.18
	movq	$0, (%rbx)
.LBB83_6:                               # %cleanup
	xorl	%eax, %eax
.LBB83_7:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end83:
	.size	validatepatternspace, .Lfunc_end83-validatepatternspace
	.cfi_endproc

	.align	16, 0x90
	.type	patternalternatespace,@function
patternalternatespace:                  # @patternalternatespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp491:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp492:
	.cfi_def_cfa_offset 32
.Ltmp493:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	(%rbx), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$13, %eax
	je	.LBB84_5
# BB#1:                                 # %if.then
	movzwl	(%rcx), %edx
	andl	$15360, %edx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB84_7
# BB#2:                                 # %if.then.7
	cmpl	$2, 4(%rcx)
	jb	.LBB84_5
# BB#3:                                 # %if.then.11
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB84_7
# BB#4:                                 # %if.end
	movq	(%rbx), %rax
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB84_6
.LBB84_5:                               # %if.else.18
	movq	$0, (%rbx)
.LBB84_6:                               # %cleanup
	xorl	%eax, %eax
.LBB84_7:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end84:
	.size	patternalternatespace, .Lfunc_end84-patternalternatespace
	.cfi_endproc

	.align	16, 0x90
	.type	patterncomponent,@function
patterncomponent:                       # @patterncomponent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp494:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp495:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp496:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp497:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp498:
	.cfi_def_cfa_offset 64
.Ltmp499:
	.cfi_offset %rbx, -40
.Ltmp500:
	.cfi_offset %r14, -32
.Ltmp501:
	.cfi_offset %r15, -24
.Ltmp502:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	624(%rbx), %rbp
	movq	(%rbx), %rdi
	callq	gs_currentcolorspace
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*24(%rcx)
	movl	%eax, %r15d
	movl	$-20, %eax
	testl	%r15d, %r15d
	jns	.LBB85_8
# BB#1:                                 # %if.then
	movzbl	1(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB85_6
# BB#2:                                 # %if.then.4
	leaq	16(%rsp), %rdx
	movl	$.L.str.82, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB85_6
# BB#3:                                 # %if.then.8
	movq	8(%rbx), %rdi
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB85_8
# BB#4:                                 # %if.end
	movq	8(%rsp), %rdi
	movq	24(%rdi), %rax
	movq	8(%rax), %rbx
	callq	*24(%rax)
	movq	%rax, %rdi
	callq	*%rbx
	testl	%eax, %eax
	je	.LBB85_6
# BB#5:                                 # %if.then.15
	negl	%r15d
	movl	%r15d, (%r14)
	jmp	.LBB85_7
.LBB85_6:                               # %if.else.20
	movl	$1, (%r14)
.LBB85_7:                               # %cleanup.24
	xorl	%eax, %eax
.LBB85_8:                               # %cleanup.24
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end85:
	.size	patterncomponent, .Lfunc_end85-patterncomponent
	.cfi_endproc

	.align	16, 0x90
	.type	dummyrange,@function
dummyrange:                             # @dummyrange
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end86:
	.size	dummyrange, .Lfunc_end86-dummyrange
	.cfi_endproc

	.align	16, 0x90
	.type	dummydomain,@function
dummydomain:                            # @dummydomain
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end87:
	.size	dummydomain, .Lfunc_end87-dummydomain
	.cfi_endproc

	.align	16, 0x90
	.type	patternbasecolor,@function
patternbasecolor:                       # @patternbasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp503:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp504:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp505:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp506:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp507:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp508:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp509:
	.cfi_def_cfa_offset 64
.Ltmp510:
	.cfi_offset %rbx, -56
.Ltmp511:
	.cfi_offset %r12, -48
.Ltmp512:
	.cfi_offset %r13, -40
.Ltmp513:
	.cfi_offset %r14, -32
.Ltmp514:
	.cfi_offset %r15, -24
.Ltmp515:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edx, %r13d
	movq	%rdi, %rbx
	cmpl	$2, 4(%rsi)
	jb	.LBB88_6
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rbp
	movq	(%rbx), %rdi
	callq	gs_currentcolor
	movq	%r15, %r12
	movq	%r14, %r15
	movq	%rax, %r14
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	movq	(%r14), %rdi
	movq	%r15, %r14
	movq	%r12, %r15
	testq	%rdi, %rdi
	je	.LBB88_6
# BB#2:                                 # %land.lhs.true
	movl	%eax, %r12d
	movq	24(%rdi), %rax
	movq	8(%rax), %rbp
	callq	*24(%rax)
	movq	%rax, %rdi
	callq	*%rbp
	testl	%eax, %eax
	je	.LBB88_6
# BB#3:                                 # %if.then.8
	testl	%r12d, %r12d
	jns	.LBB88_5
# BB#4:                                 # %if.then.10
	addq	$-16, 624(%rbx)
.LBB88_5:                               # %if.end
	movl	$0, (%r15)
	movl	$1, (%r14)
	jmp	.LBB88_20
.LBB88_6:                               # %if.end.16
	movq	624(%rbx), %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, 624(%rbx)
	xorl	%esi, %esi
	cmpl	$3, %r13d
	ja	.LBB88_8
# BB#7:                                 # %switch.lookup
	movslq	%r13d, %rdx
	movl	.Lswitch.table.2(,%rdx,4), %esi
.LBB88_8:                               # %do.body
	movl	%esi, %edx
	movq	%rdx, %rdi
	shlq	$4, %rdi
	addq	%rdi, %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB88_10
# BB#9:                                 # %if.then.31
	movl	%esi, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB88_21
.LBB88_10:                              # %if.else
	movq	%rcx, 624(%rbx)
	testl	%esi, %esi
	jle	.LBB88_19
# BB#11:                                # %for.body.lr.ph
	leal	-1(%rsi), %ebx
	movslq	%ebx, %r9
	movq	%r9, %rdi
	shlq	$4, %rdi
	subq	%rdi, %rcx
	movl	%r9d, %r8d
	xorl	%ebp, %ebp
	testb	$7, %sil
	je	.LBB88_14
# BB#12:                                # %for.body.prol.preheader
	movl	%esi, %edi
	andl	$7, %edi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB88_13:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rcx)
	movw	$4096, (%rcx)           # imm = 0x1000
	addq	$16, %rcx
	incl	%ebp
	cmpl	%ebp, %edi
	jne	.LBB88_13
.LBB88_14:                              # %for.body.lr.ph.split
	cmpl	$7, %ebx
	jb	.LBB88_17
# BB#15:                                # %for.body.lr.ph.split.split
	addq	$120, %rcx
	movl	%esi, %ebx
	subl	%ebp, %ebx
	.align	16, 0x90
.LBB88_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -112(%rcx)
	movw	$4096, -120(%rcx)       # imm = 0x1000
	movl	$0, -96(%rcx)
	movw	$4096, -104(%rcx)       # imm = 0x1000
	movl	$0, -80(%rcx)
	movw	$4096, -88(%rcx)        # imm = 0x1000
	movl	$0, -64(%rcx)
	movw	$4096, -72(%rcx)        # imm = 0x1000
	movl	$0, -48(%rcx)
	movw	$4096, -56(%rcx)        # imm = 0x1000
	movl	$0, -32(%rcx)
	movw	$4096, -40(%rcx)        # imm = 0x1000
	movl	$0, -16(%rcx)
	movw	$4096, -24(%rcx)        # imm = 0x1000
	movl	$0, (%rcx)
	movw	$4096, -8(%rcx)         # imm = 0x1000
	subq	$-128, %rcx
	addl	$-8, %ebx
	jne	.LBB88_16
.LBB88_17:                              # %for.end
	cmpl	$4, %esi
	jne	.LBB88_19
# BB#18:                                # %if.then.45
	addq	%r8, %rdx
	subq	%r9, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	$1065353216, -8(%rax)   # imm = 0x3F800000
	movw	$4096, -16(%rax)        # imm = 0x1000
.LBB88_19:                              # %if.end.51
	movl	$0, (%r15)
	movl	$0, (%r14)
.LBB88_20:                              # %cleanup.52
	xorl	%eax, %eax
.LBB88_21:                              # %cleanup.52
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end88:
	.size	patternbasecolor, .Lfunc_end88-patternbasecolor
	.cfi_endproc

	.align	16, 0x90
	.type	patternvalidate,@function
patternvalidate:                        # @patternvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movl	$-17, %eax
	cmpq	632(%rdi), %rcx
	jb	.LBB89_4
# BB#1:                                 # %if.end
	movzbl	1(%rcx), %ecx
	cmpl	$14, %ecx
	je	.LBB89_3
# BB#2:                                 # %if.end
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$2, %ecx
	jne	.LBB89_4
.LBB89_3:                               # %if.end.12
	xorl	%eax, %eax
.LBB89_4:                               # %cleanup
	retq
.Lfunc_end89:
	.size	patternvalidate, .Lfunc_end89-patternvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	setdevicepspace,@function
setdevicepspace:                        # @setdevicepspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp516:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp517:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp518:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp519:
	.cfi_def_cfa_offset 64
.Ltmp520:
	.cfi_offset %rbx, -32
.Ltmp521:
	.cfi_offset %r14, -24
.Ltmp522:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$-21, %ebp
	cmpl	$2, 80(%rbx)
	jl	.LBB90_5
# BB#1:                                 # %if.end
	movl	$0, (%rcx)
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB90_5
# BB#2:                                 # %if.end.3
	movl	$-20, %ebp
	movzbl	9(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB90_5
# BB#3:                                 # %if.end.7
	movq	8(%rbx), %rdi
	movl	16(%rsp), %edx
	leaq	24(%rsp), %rsi
	callq	gs_cspace_new_DevicePixel
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB90_5
# BB#4:                                 # %if.end.15
	movq	(%rbx), %rdi
	movq	24(%rsp), %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	movl	$0, (%r14)
	movq	24(%rsp), %rdi
	movl	$.L.str.77, %esi
	callq	rc_decrement_only_cs
.LBB90_5:                               # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end90:
	.size	setdevicepspace, .Lfunc_end90-setdevicepspace
	.cfi_endproc

	.align	16, 0x90
	.type	validatedevicepspace,@function
validatedevicepspace:                   # @validatedevicepspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp523:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp524:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp525:
	.cfi_def_cfa_offset 48
.Ltmp526:
	.cfi_offset %rbx, -24
.Ltmp527:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	(%r14), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	movl	$-20, %ebx
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB91_8
# BB#1:                                 # %if.end
	cmpl	$2, 4(%rsi)
	jne	.LBB91_2
# BB#3:                                 # %if.end.6
	movq	8(%rdi), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB91_7
# BB#4:                                 # %if.end.10
	movzbl	9(%rsp), %ecx
	cmpl	$11, %ecx
	jne	.LBB91_8
# BB#5:                                 # %if.end.17
	cmpq	$31, 16(%rsp)
	movl	$-15, %ebx
	ja	.LBB91_8
# BB#6:                                 # %if.end.25
	movq	$0, (%r14)
.LBB91_7:                               # %cleanup
	movl	%eax, %ebx
	jmp	.LBB91_8
.LBB91_2:
	movl	$-15, %ebx
.LBB91_8:                               # %cleanup
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end91:
	.size	validatedevicepspace, .Lfunc_end91-validatedevicepspace
	.cfi_endproc

	.align	16, 0x90
	.type	deviceprange,@function
deviceprange:                           # @deviceprange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp528:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp529:
	.cfi_def_cfa_offset 32
.Ltmp530:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB92_2
# BB#1:                                 # %if.end
	movl	$0, (%rbx)
	movb	8(%rsp), %cl
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 4(%rbx)
	xorl	%eax, %eax
.LBB92_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end92:
	.size	deviceprange, .Lfunc_end92-deviceprange
	.cfi_endproc

	.align	16, 0x90
	.type	devicepdomain,@function
devicepdomain:                          # @devicepdomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp531:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp532:
	.cfi_def_cfa_offset 32
.Ltmp533:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB93_2
# BB#1:                                 # %if.end
	movl	$0, (%rbx)
	movb	8(%rsp), %cl
	movl	$1, %eax
	shll	%cl, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 4(%rbx)
	xorl	%eax, %eax
.LBB93_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end93:
	.size	devicepdomain, .Lfunc_end93-devicepdomain
	.cfi_endproc

	.align	16, 0x90
	.type	devicepbasecolor,@function
devicepbasecolor:                       # @devicepbasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movl	$0, (%rcx)
	movl	$0, (%r8)
	movq	$0, 8(%rax)
	movw	$2816, (%rax)           # imm = 0xB00
	xorl	%eax, %eax
	retq
.Lfunc_end94:
	.size	devicepbasecolor, .Lfunc_end94-devicepbasecolor
	.cfi_endproc

	.align	16, 0x90
	.type	devicepvalidate,@function
devicepvalidate:                        # @devicepvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end95:
	.size	devicepvalidate, .Lfunc_end95-devicepvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	seticcspace,@function
seticcspace:                            # @seticcspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp534:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp535:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp536:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp537:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp538:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp539:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp540:
	.cfi_def_cfa_offset 192
.Ltmp541:
	.cfi_offset %rbx, -56
.Ltmp542:
	.cfi_offset %r12, -48
.Ltmp543:
	.cfi_offset %r13, -40
.Ltmp544:
	.cfi_offset %r14, -32
.Ltmp545:
	.cfi_offset %r15, -24
.Ltmp546:
	.cfi_offset %rbp, -16
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	%rcx, %rbp
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	$0, 96(%rsp)
	movq	$0, 88(%rsp)
	leaq	504(%rbx), %rdi
	leaq	88(%rsp), %rdx
	movl	$.L.str.55, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB96_2
# BB#1:                                 # %if.then
	movq	88(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %ecx
	cmpl	$1, %ecx
	jne	.LBB96_51
.LBB96_2:                               # %if.end.4
	movl	$0, (%rbp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	leaq	112(%rsp), %r13
.LBB96_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jne	.LBB96_4
# BB#5:                                 # %sw.bb
                                        #   in Loop: Header=BB96_3 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$1, (%rax)
	movq	8(%rbx), %rdi
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB96_51
# BB#6:                                 # %if.end.9
                                        #   in Loop: Header=BB96_3 Depth=1
	movl	$.L.str.83, %esi
	movq	%r13, %rdi
	leaq	104(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB96_51
# BB#7:                                 # %if.end.14
                                        #   in Loop: Header=BB96_3 Depth=1
	movl	$-21, %eax
	je	.LBB96_51
# BB#8:                                 # %if.end.18
                                        #   in Loop: Header=BB96_3 Depth=1
	movq	104(%rsp), %rax
	movl	8(%rax), %ebp
	cmpl	$4, %ebp
	jg	.LBB96_9
# BB#10:                                # %if.end.23
                                        #   in Loop: Header=BB96_3 Depth=1
	movq	88(%rsp), %rax
	testq	%rax, %rax
	je	.LBB96_27
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB96_3 Depth=1
	cmpw	$0, 8(%rax)
	jne	.LBB96_12
.LBB96_27:                              # %if.else.62
                                        #   in Loop: Header=BB96_3 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	leaq	48(%rsp), %rdx
	callq	iccrange
	testl	%eax, %eax
	js	.LBB96_51
# BB#28:                                # %if.end.67
                                        #   in Loop: Header=BB96_3 Depth=1
	movl	$.L.str.85, %esi
	movq	%r13, %rdi
	leaq	104(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	movl	$-21, %eax
	je	.LBB96_51
# BB#29:                                # %if.end.72
                                        #   in Loop: Header=BB96_3 Depth=1
	movq	104(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB96_32
# BB#30:                                # %if.then.79
                                        #   in Loop: Header=BB96_3 Depth=1
	movl	4(%rax), %ecx
	movq	8(%rax), %rdx
	movzwl	(%rax), %r8d
	andl	$12, %r8d
	movq	%rcx, (%rsp)
	movl	$0, 8(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	leaq	32(%rsp), %rsi
	callq	make_rss
	testl	%eax, %eax
	js	.LBB96_51
# BB#31:                                # %cleanup.thread
                                        #   in Loop: Header=BB96_3 Depth=1
	movq	104(%rsp), %rax
	movups	32(%rsp), %xmm0
	movups	%xmm0, (%rax)
.LBB96_32:                              # %do.body.93
                                        #   in Loop: Header=BB96_3 Depth=1
	leaq	16(%r14), %r15
	cmpq	640(%rbx), %r15
	ja	.LBB96_16
# BB#33:                                # %if.else.104
                                        #   in Loop: Header=BB96_3 Depth=1
	movq	%r15, 624(%rbx)
	movups	112(%rsp), %xmm0
	movups	%xmm0, 16(%r14)
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	leaq	48(%rsp), %rcx
	callq	seticc
	testl	%eax, %eax
	js	.LBB96_34
# BB#49:                                # %if.end.145
                                        #   in Loop: Header=BB96_3 Depth=1
	jne	.LBB96_51
# BB#50:                                # %do.cond.152
                                        #   in Loop: Header=BB96_3 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movq	%r15, %r14
	jne	.LBB96_3
	jmp	.LBB96_51
.LBB96_9:
	movl	$-15, %eax
	jmp	.LBB96_51
.LBB96_34:                              # %if.then.114
	leaq	112(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movl	$.L.str.84, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB96_40
# BB#35:                                # %if.then.114
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.LBB96_40
# BB#36:                                # %land.lhs.true.121
	movzbl	1(%rax), %ecx
	cmpl	$14, %ecx
	jne	.LBB96_37
.LBB96_40:                              # %if.else.134
	movl	$1, 32(%rsp)
	movl	$0, 132(%rsp)
	cmpl	$1, %ebp
	je	.LBB96_44
# BB#41:                                # %if.else.134
	cmpl	$3, %ebp
	jne	.LBB96_42
# BB#45:                                # %sw.bb.1.i.63
	leaq	32(%rsp), %rdx
	leaq	132(%rsp), %rcx
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	setrgbspace
	jmp	.LBB96_47
.LBB96_12:                              # %if.then.27
	leaq	112(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movl	$.L.str.84, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB96_18
# BB#13:                                # %if.then.27
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.LBB96_18
# BB#14:                                # %land.lhs.true.34
	movzbl	1(%rax), %ecx
	cmpl	$14, %ecx
	jne	.LBB96_15
.LBB96_18:                              # %if.else.55
	movl	$1, 32(%rsp)
	movl	$0, 132(%rsp)
	cmpl	$1, %ebp
	je	.LBB96_22
# BB#19:                                # %if.else.55
	cmpl	$3, %ebp
	jne	.LBB96_20
# BB#23:                                # %sw.bb.1.i
	leaq	32(%rsp), %rdx
	leaq	132(%rsp), %rcx
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	setrgbspace
	jmp	.LBB96_25
.LBB96_4:                               # %do.body
	cmpl	$1, %ecx
	movl	$-15, %eax
	je	.LBB96_26
	jmp	.LBB96_51
.LBB96_37:                              # %if.then.128
	movups	(%rax), %xmm0
	movups	%xmm0, (%r15)
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	jne	.LBB96_38
# BB#39:                                # %if.else.132
	movq	%rbx, %rdi
	callq	zsetcolorspace
	jmp	.LBB96_51
.LBB96_44:                              # %sw.bb.i.61
	leaq	32(%rsp), %rdx
	leaq	132(%rsp), %rcx
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	setgrayspace
	jmp	.LBB96_47
.LBB96_42:                              # %if.else.134
	cmpl	$4, %ebp
	jne	.LBB96_43
# BB#46:                                # %sw.bb.3.i.65
	leaq	32(%rsp), %rdx
	leaq	132(%rsp), %rcx
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	setcmykspace
.LBB96_47:                              # %set_dev_space.exit67
	testl	%eax, %eax
	jne	.LBB96_51
# BB#48:                                # %do.cond.152.thread
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	jmp	.LBB96_51
.LBB96_22:                              # %sw.bb.i
	leaq	32(%rsp), %rdx
	leaq	132(%rsp), %rcx
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	setgrayspace
	jmp	.LBB96_25
.LBB96_20:                              # %if.else.55
	cmpl	$4, %ebp
	jne	.LBB96_21
# BB#24:                                # %sw.bb.3.i
	leaq	32(%rsp), %rdx
	leaq	132(%rsp), %rcx
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	setcmykspace
.LBB96_25:                              # %set_dev_space.exit
	testl	%eax, %eax
	jne	.LBB96_51
.LBB96_26:                              # %if.end.60
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	xorl	%eax, %eax
	jmp	.LBB96_51
.LBB96_15:                              # %do.body.42
	addq	$16, %r14
	cmpq	640(%rbx), %r14
	jbe	.LBB96_17
.LBB96_16:                              # %if.then.47
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB96_51
.LBB96_43:                              # %set_dev_space.exit67.thread
	movl	$-15, %eax
	jmp	.LBB96_51
.LBB96_21:                              # %set_dev_space.exit.thread
	movl	$-15, %eax
	jmp	.LBB96_51
.LBB96_17:                              # %if.else
	movq	%r14, 624(%rbx)
	movups	(%rax), %xmm0
	movups	%xmm0, (%r14)
.LBB96_38:                              # %if.then.130
	movq	%rbx, %rdi
	callq	setcolorspace_nosubst
.LBB96_51:                              # %cleanup.155
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end96:
	.size	seticcspace, .Lfunc_end96-seticcspace
	.cfi_endproc

	.align	16, 0x90
	.type	validateiccspace,@function
validateiccspace:                       # @validateiccspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp547:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp548:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp549:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp550:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp551:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp552:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp553:
	.cfi_def_cfa_offset 128
.Ltmp554:
	.cfi_offset %rbx, -56
.Ltmp555:
	.cfi_offset %r12, -48
.Ltmp556:
	.cfi_offset %r13, -40
.Ltmp557:
	.cfi_offset %r14, -32
.Ltmp558:
	.cfi_offset %r15, -24
.Ltmp559:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB97_1
# BB#2:                                 # %if.end
	movl	$-15, %eax
	cmpl	$2, 4(%rsi)
	jne	.LBB97_63
# BB#3:                                 # %if.end.6
	movq	8(%r14), %rdi
	leaq	32(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB97_63
# BB#4:                                 # %if.end.10
	movzbl	33(%rsp), %eax
	leaq	32(%rsp), %rdi
	cmpl	$2, %eax
	jne	.LBB97_5
# BB#6:                                 # %if.end.18
	leaq	64(%rsp), %rdx
	movl	$.L.str.83, %esi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB97_63
# BB#7:                                 # %if.end.23
	movl	$-21, %eax
	je	.LBB97_63
# BB#8:                                 # %if.end.27
	movq	64(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB97_9
# BB#10:                                # %if.end.42
	movl	8(%rax), %r12d
	leaq	32(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.85, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB97_11
# BB#12:                                # %if.end.49
	movq	64(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$18, %eax
	je	.LBB97_15
# BB#13:                                # %if.end.49
	movzbl	%al, %eax
	cmpl	$3, %eax
	jne	.LBB97_14
.LBB97_15:                              # %if.end.72
	leaq	32(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.86, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB97_28
# BB#16:                                # %land.lhs.true.76
	movq	64(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	je	.LBB97_28
# BB#17:                                # %if.then.83
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB97_18
# BB#19:                                # %if.end.91
	leal	(%r12,%r12), %r15d
	cmpl	%r15d, 4(%rsi)
	movl	$-15, %eax
	jb	.LBB97_63
# BB#20:                                # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB97_28
# BB#21:                                # %for.body.lr.ph
	movq	8(%r14), %rdi
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movl	$1, %ebp
	testl	%eax, %eax
	js	.LBB97_63
# BB#22:
	movslq	%r15d, %r13
	leaq	48(%rsp), %r15
.LBB97_23:                              # %if.end.108
                                        # =>This Inner Loop Header: Depth=1
	movzbl	49(%rsp), %eax
	cmpl	$16, %eax
	je	.LBB97_26
# BB#24:                                # %if.end.108
                                        #   in Loop: Header=BB97_23 Depth=1
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB97_25
.LBB97_26:                              # %for.inc
                                        #   in Loop: Header=BB97_23 Depth=1
	cmpq	%r13, %rbp
	jge	.LBB97_28
# BB#27:                                # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB97_23 Depth=1
	movq	64(%rsp), %rsi
	movq	8(%r14), %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	array_get
	incq	%rbp
	testl	%eax, %eax
	jns	.LBB97_23
	jmp	.LBB97_63
.LBB97_1:
	movl	$-20, %eax
.LBB97_63:                              # %cleanup.363
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB97_5:                               # %if.then.16
	callq	check_type_failed
	jmp	.LBB97_63
.LBB97_9:
	movl	$-20, %eax
	jmp	.LBB97_63
.LBB97_11:
	movl	$-20, %eax
	jmp	.LBB97_63
.LBB97_28:                              # %if.end.124
	leaq	32(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.84, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jle	.LBB97_55
# BB#29:                                # %land.lhs.true.128
	movq	64(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	jne	.LBB97_30
.LBB97_55:                              # %if.else.337
	cmpl	$4, %r12d
	je	.LBB97_60
# BB#56:                                # %if.else.337
	cmpl	$3, %r12d
	jne	.LBB97_57
# BB#59:                                # %sw.bb.344
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.1, %esi
	jmp	.LBB97_61
.LBB97_14:
	movl	$-20, %eax
	jmp	.LBB97_63
.LBB97_30:                              # %if.then.135
	movq	(%rbx), %rax
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rax)
	movzbl	1(%rsi), %eax
	cmpl	$13, %eax
	jne	.LBB97_46
# BB#31:                                # %if.then.142
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
.LBB97_32:                              # %if.then.142
	leaq	16(%rsp), %rdx
	callq	names_string_ref
	movq	24(%rsp), %rbx
.LBB97_33:                              # %if.then.142
	testq	%rbx, %rbx
	je	.LBB97_45
# BB#34:                                # %land.lhs.true.146
	movl	$.L.str.10, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB97_43
# BB#35:                                # %land.lhs.true.150
	cmpq	$3, %rcx
	ja	.LBB97_54
# BB#36:                                # %cond.true.154
	movzbl	(%rbx), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB97_44
# BB#37:                                # %cond.true.154
	testl	%eax, %eax
	jne	.LBB97_44
# BB#38:                                # %if.then.167
	movzbl	1(%rbx), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB97_44
# BB#39:                                # %if.then.167
	testl	%eax, %eax
	jne	.LBB97_44
# BB#40:                                # %if.then.177
	movzbl	2(%rbx), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB97_44
# BB#41:                                # %if.then.177
	testl	%eax, %eax
	jne	.LBB97_44
# BB#42:                                # %if.then.187
	movzbl	3(%rbx), %eax
	addl	$-116, %eax
	jmp	.LBB97_44
.LBB97_60:                              # %sw.bb.350
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.2, %esi
	jmp	.LBB97_61
.LBB97_57:                              # %if.else.337
	movl	$-15, %eax
	cmpl	$1, %r12d
	jne	.LBB97_63
# BB#58:                                # %sw.bb
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str, %esi
.LBB97_61:                              # %sw.epilog
	callq	names_enter_string
	leaq	368(%r14), %rcx
	leaq	32(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.84, %esi
	callq	dict_put_string
	testl	%eax, %eax
	js	.LBB97_63
# BB#62:                                # %if.end.360
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	validateiccspace
	jmp	.LBB97_63
.LBB97_18:
	movl	$-20, %eax
	jmp	.LBB97_63
.LBB97_46:                              # %if.else.209
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB97_47
# BB#48:                                # %if.then.216
	movq	8(%r14), %rdi
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB97_45
# BB#49:                                # %if.end.223
	movzbl	49(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB97_50
# BB#53:                                # %if.else.250
	movq	56(%rsp), %rbx
	movq	%rbx, 24(%rsp)
	jmp	.LBB97_33
.LBB97_47:
	movl	$-20, %eax
	jmp	.LBB97_63
.LBB97_43:                              # %cond.false.199
	movl	$.L.str.10, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncmp
	jmp	.LBB97_44
.LBB97_54:                              # %cond.false
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB97_44:                              # %cond.end.203
	testl	%eax, %eax
	movl	$-20, %eax
	je	.LBB97_63
.LBB97_45:                              # %if.end.362
	movl	%ebp, %eax
	jmp	.LBB97_63
.LBB97_50:                              # %if.end.223
	movzbl	%al, %eax
	cmpl	$13, %eax
	jne	.LBB97_51
# BB#52:                                # %if.then.245
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	48(%rsp), %rsi
	jmp	.LBB97_32
.LBB97_25:
	movl	$-20, %eax
	jmp	.LBB97_63
.LBB97_51:
	movl	$-20, %eax
	jmp	.LBB97_63
.Lfunc_end97:
	.size	validateiccspace, .Lfunc_end97-validateiccspace
	.cfi_endproc

	.align	16, 0x90
	.type	iccalternatespace,@function
iccalternatespace:                      # @iccalternatespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp560:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp561:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp562:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp563:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp564:
	.cfi_def_cfa_offset 64
.Ltmp565:
	.cfi_offset %rbx, -40
.Ltmp566:
	.cfi_offset %r14, -32
.Ltmp567:
	.cfi_offset %r15, -24
.Ltmp568:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB98_16
# BB#1:                                 # %if.end
	movl	$-15, %eax
	cmpl	$2, 4(%rsi)
	jne	.LBB98_16
# BB#2:                                 # %if.end.6
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB98_16
# BB#3:                                 # %if.end.10
	leaq	(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.83, %esi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB98_16
# BB#4:                                 # %if.end.15
	movl	$-21, %eax
	je	.LBB98_16
# BB#5:                                 # %if.end.19
	movq	16(%rsp), %rax
	movl	8(%rax), %ebp
	leaq	(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.84, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB98_8
# BB#6:                                 # %land.lhs.true
	movq	16(%rsp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$14, %edx
	jne	.LBB98_7
.LBB98_8:                               # %if.else
	cmpl	$4, %ebp
	je	.LBB98_13
# BB#9:                                 # %if.else
	cmpl	$3, %ebp
	jne	.LBB98_10
# BB#12:                                # %sw.bb.33
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	(%r15), %rdx
	movl	$.L.str.1, %esi
	jmp	.LBB98_14
.LBB98_7:                               # %if.then.29
	movq	%rcx, (%r15)
	jmp	.LBB98_15
.LBB98_13:                              # %sw.bb.39
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	(%r15), %rdx
	movl	$.L.str.2, %esi
	jmp	.LBB98_14
.LBB98_10:                              # %if.else
	cmpl	$1, %ebp
	movl	$-15, %eax
	jne	.LBB98_16
# BB#11:                                # %sw.bb
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	(%r15), %rdx
	movl	$.L.str, %esi
.LBB98_14:                              # %if.end.45
	callq	names_enter_string
.LBB98_15:                              # %if.end.45
	movl	$1, (%r14)
.LBB98_16:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end98:
	.size	iccalternatespace, .Lfunc_end98-iccalternatespace
	.cfi_endproc

	.align	16, 0x90
	.type	icccomponents,@function
icccomponents:                          # @icccomponents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp569:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp570:
	.cfi_def_cfa_offset 48
.Ltmp571:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	8(%rdi), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB99_4
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.83, %esi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB99_4
# BB#2:                                 # %if.end.4
	movl	$-21, %eax
	je	.LBB99_4
# BB#3:                                 # %if.end.7
	movq	24(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rbx)
	xorl	%eax, %eax
.LBB99_4:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end99:
	.size	icccomponents, .Lfunc_end99-icccomponents
	.cfi_endproc

	.align	16, 0x90
	.type	iccrange,@function
iccrange:                               # @iccrange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp572:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp573:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp574:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp575:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp576:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp577:
	.cfi_def_cfa_offset 96
.Ltmp578:
	.cfi_offset %rbx, -48
.Ltmp579:
	.cfi_offset %r12, -40
.Ltmp580:
	.cfi_offset %r13, -32
.Ltmp581:
	.cfi_offset %r14, -24
.Ltmp582:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB100_19
# BB#1:                                 # %if.end
	leaq	24(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.83, %esi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB100_19
# BB#2:                                 # %if.end.4
	movl	$-21, %eax
	je	.LBB100_19
# BB#3:                                 # %if.end.7
	movq	40(%rsp), %rax
	movq	8(%rax), %rbx
	leaq	24(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.86, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB100_4
# BB#10:                                # %land.lhs.true
	movq	40(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	jne	.LBB100_11
.LBB100_4:                              # %for.cond.41.preheader
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB100_19
# BB#5:                                 # %for.body.44.preheader
	xorl	%eax, %eax
	testb	$1, %bl
	movl	$0, %edx
	je	.LBB100_7
# BB#6:                                 # %for.body.44.prol
	movabsq	$4575657221408423936, %rcx # imm = 0x3F80000000000000
	movq	%rcx, (%r15)
	movl	$1, %edx
.LBB100_7:                              # %for.body.44.preheader.split
	cmpl	$1, %ebx
	je	.LBB100_19
# BB#8:                                 # %for.body.44.preheader.split.split
	subl	%edx, %ebx
	leal	1(%rdx,%rdx), %ecx
	leal	3(%rdx,%rdx), %edx
	.align	16, 0x90
.LBB100_9:                              # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rcx), %esi
	movslq	%esi, %rsi
	movl	$0, (%r15,%rsi,4)
	movslq	%ecx, %rcx
	movl	$1065353216, (%r15,%rcx,4) # imm = 0x3F800000
	leal	-1(%rdx), %esi
	movslq	%esi, %rsi
	movl	$0, (%r15,%rsi,4)
	movslq	%edx, %rdx
	movl	$1065353216, (%r15,%rdx,4) # imm = 0x3F800000
	addl	$4, %ecx
	addl	$4, %edx
	addl	$-2, %ebx
	jne	.LBB100_9
	jmp	.LBB100_19
.LBB100_11:                             # %for.cond.preheader
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB100_19
# BB#12:                                # %for.body.lr.ph
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movl	$1, %r13d
	testl	%eax, %eax
	js	.LBB100_19
# BB#13:
	leal	(%rbx,%rbx), %eax
	movslq	%eax, %rbx
	leaq	8(%rsp), %r12
	.align	16, 0x90
.LBB100_14:                             # %if.end.24
                                        # =>This Inner Loop Header: Depth=1
	movzbl	9(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB100_16
# BB#15:                                # %if.then.31
                                        #   in Loop: Header=BB100_14 Depth=1
	cvtsi2ssq	16(%rsp), %xmm0
	movss	%xmm0, -4(%r15,%r13,4)
	jmp	.LBB100_17
	.align	16, 0x90
.LBB100_16:                             # %if.else
                                        #   in Loop: Header=BB100_14 Depth=1
	movl	16(%rsp), %eax
	movl	%eax, -4(%r15,%r13,4)
.LBB100_17:                             # %for.inc
                                        #   in Loop: Header=BB100_14 Depth=1
	xorl	%eax, %eax
	cmpq	%rbx, %r13
	jge	.LBB100_19
# BB#18:                                # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB100_14 Depth=1
	movq	40(%rsp), %rsi
	movq	8(%r14), %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	callq	array_get
	incq	%r13
	testl	%eax, %eax
	jns	.LBB100_14
.LBB100_19:                             # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end100:
	.size	iccrange, .Lfunc_end100-iccrange
	.cfi_endproc

	.align	16, 0x90
	.type	iccdomain,@function
iccdomain:                              # @iccdomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp583:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp584:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp585:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp586:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp587:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp588:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp589:
	.cfi_def_cfa_offset 96
.Ltmp590:
	.cfi_offset %rbx, -56
.Ltmp591:
	.cfi_offset %r12, -48
.Ltmp592:
	.cfi_offset %r13, -40
.Ltmp593:
	.cfi_offset %r14, -32
.Ltmp594:
	.cfi_offset %r15, -24
.Ltmp595:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB101_19
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.83, %esi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB101_19
# BB#2:                                 # %if.end.4
	movl	$-21, %eax
	je	.LBB101_19
# BB#3:                                 # %if.end.7
	movq	32(%rsp), %rax
	movq	8(%rax), %rbx
	leaq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.86, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB101_4
# BB#10:                                # %land.lhs.true
	movq	32(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	jne	.LBB101_11
.LBB101_4:                              # %for.cond.43.preheader
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB101_19
# BB#5:                                 # %for.body.46.preheader
	xorl	%eax, %eax
	testb	$1, %bl
	movl	$0, %edx
	je	.LBB101_7
# BB#6:                                 # %for.body.46.prol
	movabsq	$4575657221408423936, %rcx # imm = 0x3F80000000000000
	movq	%rcx, (%r15)
	movl	$1, %edx
.LBB101_7:                              # %for.body.46.preheader.split
	cmpl	$1, %ebx
	je	.LBB101_19
# BB#8:                                 # %for.body.46.preheader.split.split
	subl	%edx, %ebx
	leal	1(%rdx,%rdx), %ecx
	leal	3(%rdx,%rdx), %edx
	.align	16, 0x90
.LBB101_9:                              # %for.body.46
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rcx), %esi
	movslq	%esi, %rsi
	movl	$0, (%r15,%rsi,4)
	movslq	%ecx, %rcx
	movl	$1065353216, (%r15,%rcx,4) # imm = 0x3F800000
	leal	-1(%rdx), %esi
	movslq	%esi, %rsi
	movl	$0, (%r15,%rsi,4)
	movslq	%edx, %rdx
	movl	$1065353216, (%r15,%rdx,4) # imm = 0x3F800000
	addl	$4, %ecx
	addl	$4, %edx
	addl	$-2, %ebx
	jne	.LBB101_9
	jmp	.LBB101_19
.LBB101_11:                             # %for.cond.preheader
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB101_19
# BB#12:                                # %for.body.lr.ph
	movq	8(%r14), %rdi
	xorl	%ebp, %ebp
	leaq	(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movl	$1, %r13d
	testl	%eax, %eax
	js	.LBB101_19
# BB#13:
	leal	(%rbx,%rbx), %eax
	movslq	%eax, %rbx
	leaq	(%rsp), %r12
	.align	16, 0x90
.LBB101_14:                             # %if.end.24
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB101_16
# BB#15:                                # %if.then.31
                                        #   in Loop: Header=BB101_14 Depth=1
	cvtsi2ssq	8(%rsp), %xmm0
	movslq	%ebp, %rax
	movss	%xmm0, (%r15,%rax,4)
	jmp	.LBB101_17
	.align	16, 0x90
.LBB101_16:                             # %if.else
                                        #   in Loop: Header=BB101_14 Depth=1
	movl	8(%rsp), %eax
	movslq	%ebp, %rcx
	movl	%eax, (%r15,%rcx,4)
.LBB101_17:                             # %for.inc
                                        #   in Loop: Header=BB101_14 Depth=1
	xorl	%eax, %eax
	cmpq	%rbx, %r13
	jge	.LBB101_19
# BB#18:                                # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB101_14 Depth=1
	movq	32(%rsp), %rsi
	movq	8(%r14), %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	callq	array_get
	incq	%r13
	addl	$2, %ebp
	testl	%eax, %eax
	jns	.LBB101_14
.LBB101_19:                             # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end101:
	.size	iccdomain, .Lfunc_end101-iccdomain
	.cfi_endproc

	.align	16, 0x90
	.type	iccbasecolor,@function
iccbasecolor:                           # @iccbasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, (%rcx)
	movl	$1, (%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end102:
	.size	iccbasecolor, .Lfunc_end102-iccbasecolor
	.cfi_endproc

	.align	16, 0x90
	.type	iccvalidate,@function
iccvalidate:                            # @iccvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end103:
	.size	iccvalidate, .Lfunc_end103-iccvalidate
	.cfi_endproc

	.align	16, 0x90
	.type	iccompareproc,@function
iccompareproc:                          # @iccompareproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp596:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp597:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp598:
	.cfi_def_cfa_offset 96
.Ltmp599:
	.cfi_offset %rbx, -24
.Ltmp600:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	leaq	40(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB104_1
# BB#2:                                 # %if.end
	movq	8(%r14), %rdi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB104_3
# BB#4:                                 # %if.end.6
	movq	48(%rsp), %rcx
	movl	$1, %eax
	cmpq	32(%rsp), %rcx
	je	.LBB104_21
# BB#5:                                 # %if.end.11
	leaq	40(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.83, %esi
	callq	dict_find_string
	movl	%eax, %ebx
	leaq	24(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.83, %esi
	callq	dict_find_string
	cmpl	%eax, %ebx
	jne	.LBB104_6
# BB#7:                                 # %if.end.16
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB104_8
# BB#9:                                 # %if.end.22
	leaq	40(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.86, %esi
	callq	dict_find_string
	movl	%eax, %ebx
	leaq	24(%rsp), %rdi
	leaq	56(%rsp), %rdx
	movl	$.L.str.86, %esi
	callq	dict_find_string
	cmpl	%eax, %ebx
	jne	.LBB104_22
# BB#10:                                # %if.end.i
	testl	%ebx, %ebx
	jle	.LBB104_15
# BB#11:                                # %if.end.4.i
	movq	64(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movq	56(%rsp), %rdx
	movzbl	1(%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB104_22
# BB#12:                                # %if.end.12.i
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.LBB104_15
# BB#13:                                # %comparedictkey.exit
	movq	%r14, %rdi
	callq	comparearrays
	testl	%eax, %eax
	je	.LBB104_14
.LBB104_15:                             # %if.end.25
	leaq	40(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.85, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB104_16
# BB#17:                                # %if.end.29
	leaq	24(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.85, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB104_18
# BB#19:                                # %if.end.33
	movq	16(%rsp), %rcx
	movslq	4(%rcx), %rdx
	movq	8(%rsp), %rsi
	cmpl	4(%rsi), %edx
	movl	$0, %eax
	jne	.LBB104_21
# BB#20:                                # %if.end.38
	movq	8(%rcx), %rdi
	movq	8(%rsi), %rsi
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB104_21
.LBB104_1:
	xorl	%eax, %eax
	jmp	.LBB104_21
.LBB104_3:
	xorl	%eax, %eax
	jmp	.LBB104_21
.LBB104_6:
	xorl	%eax, %eax
	jmp	.LBB104_21
.LBB104_8:
	xorl	%eax, %eax
	jmp	.LBB104_21
.LBB104_22:                             # %comparedictkey.exit.thread
	xorl	%eax, %eax
.LBB104_21:                             # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB104_16:
	xorl	%eax, %eax
	jmp	.LBB104_21
.LBB104_18:
	xorl	%eax, %eax
	jmp	.LBB104_21
.LBB104_14:
	xorl	%eax, %eax
	jmp	.LBB104_21
.Lfunc_end104:
	.size	iccompareproc, .Lfunc_end104-iccompareproc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI105_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	setlabspace,@function
setlabspace:                            # @setlabspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp601:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp602:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp603:
	.cfi_def_cfa_offset 32
	subq	$320, %rsp              # imm = 0x140
.Ltmp604:
	.cfi_def_cfa_offset 352
.Ltmp605:
	.cfi_offset %rbx, -32
.Ltmp606:
	.cfi_offset %r14, -24
.Ltmp607:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$0, (%rcx)
	movq	8(%rbx), %rdi
	leaq	304(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB105_10
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	304(%rsp), %rsi
	leaq	288(%rsp), %r8
	movl	$.L.str.86, %edx
	movl	$4, %ecx
	movl	$setlabspace.dflt_range, %r9d
	callq	dict_floats_param
	movss	292(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$-15, %ebp
	ucomiss	288(%rsp), %xmm0
	jb	.LBB105_10
# BB#2:                                 # %for.inc
	movss	300(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	296(%rsp), %xmm0
	jb	.LBB105_10
# BB#3:                                 # %if.end.11
	movq	8(%rbx), %rdi
	leaq	304(%rsp), %r14
	leaq	264(%rsp), %r8
	movl	$.L.str.63, %edx
	movl	$3, %ecx
	movl	$setlabspace.dflt_black, %r9d
	movq	%r14, %rsi
	callq	dict_floats_param
	movq	8(%rbx), %rdi
	leaq	276(%rsp), %r8
	movl	$.L.str.59, %edx
	movl	$3, %ecx
	movl	$setlabspace.dflt_white, %r9d
	movq	%r14, %rsi
	callq	dict_floats_param
	xorps	%xmm0, %xmm0
	ucomiss	276(%rsp), %xmm0
	jae	.LBB105_10
# BB#4:                                 # %lor.lhs.false
	movss	280(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI105_0(%rip), %xmm0
	jne	.LBB105_10
	jp	.LBB105_10
# BB#5:                                 # %lor.lhs.false.25
	xorps	%xmm0, %xmm0
	ucomiss	284(%rsp), %xmm0
	jae	.LBB105_10
# BB#6:                                 # %if.end.30
	leaq	276(%rsp), %rsi
	leaq	264(%rsp), %rdx
	leaq	288(%rsp), %rcx
	movq	%rbx, %rdi
	callq	seticc_lab
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB105_7
# BB#8:                                 # %if.end.39
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 16(%rsp)
	movq	(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_setcolor
	jmp	.LBB105_9
.LBB105_7:                              # %if.then.37
	movl	$.L__func__.setlabspace, %edi
	movl	$.L.str.87, %esi
	movl	$4905, %edx             # imm = 0x1329
	movl	$1, %ecx
	movl	$.L.str.88, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB105_9:                              # %cleanup
	movl	%eax, %ebp
.LBB105_10:                             # %cleanup
	movl	%ebp, %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end105:
	.size	setlabspace, .Lfunc_end105-setlabspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI106_0:
	.long	3323740160              # float -1.0E+4
.LCPI106_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	validatelabspace,@function
validatelabspace:                       # @validatelabspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp608:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp609:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp610:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp611:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp612:
	.cfi_def_cfa_offset 96
.Ltmp613:
	.cfi_offset %rbx, -40
.Ltmp614:
	.cfi_offset %r12, -32
.Ltmp615:
	.cfi_offset %r14, -24
.Ltmp616:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB106_52
# BB#1:                                 # %if.end
	movl	$-15, %eax
	cmpl	$2, 4(%rsi)
	jb	.LBB106_52
# BB#2:                                 # %if.end.6
	movq	8(%r14), %rdi
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB106_52
# BB#3:                                 # %if.end.10
	movzbl	17(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB106_4
# BB#5:                                 # %if.end.18
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	checkWhitePoint
	testl	%eax, %eax
	jne	.LBB106_52
# BB#6:                                 # %if.end.23
	leaq	16(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB106_19
# BB#7:                                 # %land.lhs.true.i
	movq	48(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB106_19
# BB#8:                                 # %if.then.i
	movzwl	(%r15), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB106_52
# BB#9:                                 # %if.end.i
	movl	$-15, %eax
	cmpl	$3, 4(%r15)
	jne	.LBB106_52
# BB#10:                                # %if.end.13.i
	movq	8(%r14), %r12
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB106_52
# BB#11:                                # %if.end.i.20
	movzbl	33(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB106_12
# BB#15:                                # %if.then.15.i
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB106_16
.LBB106_4:                              # %if.then.16
	leaq	16(%rsp), %rdi
	callq	check_type_failed
.LBB106_52:                             # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB106_12:                             # %if.end.i.20
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB106_13
# BB#14:                                # %if.then.6.i
	cvtsi2ssq	40(%rsp), %xmm0
.LBB106_16:                             # %if.end.21.i
	movss	.LCPI106_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB106_18
# BB#17:                                # %if.end.21.i
	ucomiss	.LCPI106_1(%rip), %xmm0
	ja	.LBB106_18
# BB#53:                                # %for.cond.i
	leaq	32(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB106_52
# BB#54:                                # %if.end.i.20.1
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI106_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	jne	.LBB106_55
# BB#58:                                # %if.then.6.i.1
	cvtsi2ssq	40(%rsp), %xmm0
	jmp	.LBB106_59
.LBB106_13:
	movl	$-20, %eax
	jmp	.LBB106_52
.LBB106_55:                             # %if.end.i.20.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB106_56
# BB#57:                                # %if.then.15.i.1
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB106_59:                             # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB106_18
# BB#60:                                # %if.end.21.i.1
	ucomiss	.LCPI106_1(%rip), %xmm0
	ja	.LBB106_18
# BB#61:                                # %for.cond.i.1
	leaq	32(%rsp), %rcx
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB106_52
# BB#62:                                # %if.end.i.20.2
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB106_63
# BB#65:                                # %if.then.6.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	40(%rsp), %xmm0
	jmp	.LBB106_66
.LBB106_56:
	movl	$-20, %eax
	jmp	.LBB106_52
.LBB106_63:                             # %if.end.i.20.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB106_52
# BB#64:                                # %if.then.15.i.2
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB106_66:                             # %if.end.21.i.2
	movss	.LCPI106_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB106_18
# BB#67:                                # %if.end.21.i.2
	ucomiss	.LCPI106_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB106_52
.LBB106_19:                             # %if.end.28
	leaq	16(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.86, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB106_51
# BB#20:                                # %land.lhs.true.i.28
	movq	48(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	je	.LBB106_51
# BB#21:                                # %if.then.i.32
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB106_22
# BB#23:                                # %if.end.i.35
	cmpl	$4, 4(%rsi)
	jne	.LBB106_24
# BB#25:                                # %for.cond.preheader.i
	movq	8(%r14), %rdi
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB106_52
# BB#26:                                # %if.end.21.i.38
	movzbl	33(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB106_27
# BB#30:                                # %if.then.38.i
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB106_31
.LBB106_22:
	movl	$-20, %eax
	jmp	.LBB106_52
.LBB106_24:
	movl	$-15, %eax
	jmp	.LBB106_52
.LBB106_18:
	movl	$-13, %eax
	jmp	.LBB106_52
.LBB106_27:                             # %if.end.21.i.38
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB106_28
# BB#29:                                # %if.then.28.i
	cvtsi2ssq	40(%rsp), %xmm0
.LBB106_31:                             # %for.inc.i
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movq	8(%r14), %rdi
	movq	48(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB106_52
# BB#32:                                # %if.end.21.1.i
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB106_33
# BB#36:                                # %if.then.28.1.i
	xorps	%xmm0, %xmm0
	cvtsi2ssq	40(%rsp), %xmm0
	jmp	.LBB106_37
.LBB106_28:
	movl	$-20, %eax
	jmp	.LBB106_52
.LBB106_33:                             # %if.end.21.1.i
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB106_34
# BB#35:                                # %if.then.38.1.i
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB106_37:                             # %for.inc.1.i
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movq	8(%r14), %rdi
	movq	48(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB106_52
# BB#38:                                # %if.end.21.2.i
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB106_39
# BB#42:                                # %if.then.28.2.i
	xorps	%xmm0, %xmm0
	cvtsi2ssq	40(%rsp), %xmm0
	jmp	.LBB106_43
.LBB106_34:
	movl	$-20, %eax
	jmp	.LBB106_52
.LBB106_39:                             # %if.end.21.2.i
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB106_40
# BB#41:                                # %if.then.38.2.i
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB106_43:                             # %for.inc.2.i
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movq	8(%r14), %rdi
	movq	48(%rsp), %rsi
	leaq	32(%rsp), %rcx
	movl	$3, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB106_52
# BB#44:                                # %if.end.21.3.i
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB106_45
# BB#47:                                # %if.then.28.3.i
	xorps	%xmm0, %xmm0
	cvtsi2ssq	40(%rsp), %xmm0
	jmp	.LBB106_48
.LBB106_40:
	movl	$-20, %eax
	jmp	.LBB106_52
.LBB106_45:                             # %if.end.21.3.i
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB106_52
# BB#46:                                # %if.then.38.3.i
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB106_48:                             # %for.inc.3.i
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	8(%rsp), %xmm1          # 4-byte Folded Reload
	ja	.LBB106_49
# BB#50:                                # %for.inc.3.i
	movss	4(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-15, %eax
	ja	.LBB106_52
.LBB106_51:                             # %if.end.33
	movq	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB106_52
.LBB106_49:
	movl	$-15, %eax
	jmp	.LBB106_52
.Lfunc_end106:
	.size	validatelabspace, .Lfunc_end106-validatelabspace
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI107_0:
	.long	3267887104              # float -1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	3267887104              # float -1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.text
	.align	16, 0x90
	.type	labrange,@function
labrange:                               # @labrange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp617:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp618:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp619:
	.cfi_def_cfa_offset 64
.Ltmp620:
	.cfi_offset %rbx, -24
.Ltmp621:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB107_28
# BB#1:                                 # %if.end
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.86, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB107_2
# BB#3:                                 # %land.lhs.true
	movq	16(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	jne	.LBB107_4
.LBB107_2:                              # %for.cond.39.preheader
	movaps	.LCPI107_0(%rip), %xmm0 # xmm0 = [-1.000000e+02,1.000000e+02,-1.000000e+02,1.000000e+02]
	movups	%xmm0, (%r14)
.LBB107_27:                             # %cleanup
	xorl	%eax, %eax
.LBB107_28:                             # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB107_4:                              # %for.cond.preheader
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB107_28
# BB#5:                                 # %if.end.15
	movzbl	1(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB107_6
# BB#9:                                 # %if.then.31
	movl	8(%rsp), %eax
	movl	%eax, (%r14)
	jmp	.LBB107_10
.LBB107_6:                              # %if.end.15
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB107_7
# BB#8:                                 # %if.then.22
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, (%r14)
.LBB107_10:                             # %for.inc
	movq	8(%rbx), %rdi
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB107_28
# BB#11:                                # %if.end.15.1
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB107_12
# BB#15:                                # %if.then.22.1
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 4(%r14)
	jmp	.LBB107_16
.LBB107_7:
	movl	$-20, %eax
	jmp	.LBB107_28
.LBB107_12:                             # %if.end.15.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB107_13
# BB#14:                                # %if.then.31.1
	movl	8(%rsp), %eax
	movl	%eax, 4(%r14)
.LBB107_16:                             # %for.inc.1
	movq	8(%rbx), %rdi
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB107_28
# BB#17:                                # %if.end.15.2
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB107_18
# BB#21:                                # %if.then.22.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 8(%r14)
	jmp	.LBB107_22
.LBB107_13:
	movl	$-20, %eax
	jmp	.LBB107_28
.LBB107_18:                             # %if.end.15.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB107_19
# BB#20:                                # %if.then.31.2
	movl	8(%rsp), %eax
	movl	%eax, 8(%r14)
.LBB107_22:                             # %for.inc.2
	movq	8(%rbx), %rdi
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rcx
	movl	$3, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB107_28
# BB#23:                                # %if.end.15.3
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB107_24
# BB#26:                                # %if.then.22.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 12(%r14)
	jmp	.LBB107_27
.LBB107_19:
	movl	$-20, %eax
	jmp	.LBB107_28
.LBB107_24:                             # %if.end.15.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB107_28
# BB#25:                                # %if.then.31.3
	movl	8(%rsp), %eax
	movl	%eax, 12(%r14)
	jmp	.LBB107_27
.Lfunc_end107:
	.size	labrange, .Lfunc_end107-labrange
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI108_0:
	.long	3267887104              # float -1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	3267887104              # float -1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.text
	.align	16, 0x90
	.type	labdomain,@function
labdomain:                              # @labdomain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp622:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp623:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp624:
	.cfi_def_cfa_offset 64
.Ltmp625:
	.cfi_offset %rbx, -24
.Ltmp626:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB108_28
# BB#1:                                 # %if.end
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.86, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB108_2
# BB#3:                                 # %land.lhs.true
	movq	16(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	jne	.LBB108_4
.LBB108_2:                              # %for.cond.39.preheader
	movaps	.LCPI108_0(%rip), %xmm0 # xmm0 = [-1.000000e+02,1.000000e+02,-1.000000e+02,1.000000e+02]
	movups	%xmm0, (%r14)
.LBB108_27:                             # %cleanup
	xorl	%eax, %eax
.LBB108_28:                             # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB108_4:                              # %for.cond.preheader
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB108_28
# BB#5:                                 # %if.end.15
	movzbl	1(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB108_6
# BB#9:                                 # %if.then.31
	movl	8(%rsp), %eax
	movl	%eax, (%r14)
	jmp	.LBB108_10
.LBB108_6:                              # %if.end.15
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB108_7
# BB#8:                                 # %if.then.22
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, (%r14)
.LBB108_10:                             # %for.inc
	movq	8(%rbx), %rdi
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB108_28
# BB#11:                                # %if.end.15.1
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB108_12
# BB#15:                                # %if.then.22.1
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 4(%r14)
	jmp	.LBB108_16
.LBB108_7:
	movl	$-20, %eax
	jmp	.LBB108_28
.LBB108_12:                             # %if.end.15.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB108_13
# BB#14:                                # %if.then.31.1
	movl	8(%rsp), %eax
	movl	%eax, 4(%r14)
.LBB108_16:                             # %for.inc.1
	movq	8(%rbx), %rdi
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB108_28
# BB#17:                                # %if.end.15.2
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB108_18
# BB#21:                                # %if.then.22.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 8(%r14)
	jmp	.LBB108_22
.LBB108_13:
	movl	$-20, %eax
	jmp	.LBB108_28
.LBB108_18:                             # %if.end.15.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB108_19
# BB#20:                                # %if.then.31.2
	movl	8(%rsp), %eax
	movl	%eax, 8(%r14)
.LBB108_22:                             # %for.inc.2
	movq	8(%rbx), %rdi
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rcx
	movl	$3, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB108_28
# BB#23:                                # %if.end.15.3
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB108_24
# BB#26:                                # %if.then.22.3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 12(%r14)
	jmp	.LBB108_27
.LBB108_19:
	movl	$-20, %eax
	jmp	.LBB108_28
.LBB108_24:                             # %if.end.15.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB108_28
# BB#25:                                # %if.then.31.3
	movl	8(%rsp), %eax
	movl	%eax, 12(%r14)
	jmp	.LBB108_27
.Lfunc_end108:
	.size	labdomain, .Lfunc_end108-labdomain
	.cfi_endproc

	.align	16, 0x90
	.type	labbasecolor,@function
labbasecolor:                           # @labbasecolor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	leaq	-48(%rax), %rdx
	movq	%rdx, 624(%rdi)
	cmpq	640(%rdi), %rax
	jbe	.LBB109_2
# BB#1:                                 # %if.then
	movl	$3, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB109_2:                              # %if.else
	movq	%rax, 624(%rdi)
	movl	$0, -24(%rax)
	movw	$4096, -32(%rax)        # imm = 0x1000
	movl	$0, -8(%rax)
	movw	$4096, -16(%rax)        # imm = 0x1000
	movl	$0, 8(%rax)
	movw	$4096, (%rax)           # imm = 0x1000
	movl	$0, (%rcx)
	movl	$0, (%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end109:
	.size	labbasecolor, .Lfunc_end109-labbasecolor
	.cfi_endproc

	.align	16, 0x90
	.type	labvalidate,@function
labvalidate:                            # @labvalidate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-17, %eax
	cmpl	$3, %ecx
	jl	.LBB110_8
# BB#1:                                 # %if.end
	movq	624(%rdi), %rcx
	movzbl	-31(%rcx), %edx
	movl	$-20, %eax
	cmpl	$16, %edx
	je	.LBB110_3
# BB#2:                                 # %if.end
	movzbl	%dl, %edx
	cmpl	$11, %edx
	jne	.LBB110_8
.LBB110_3:                              # %if.end.11
	movzbl	-15(%rcx), %edx
	cmpl	$11, %edx
	je	.LBB110_5
# BB#4:                                 # %if.end.11
	movzbl	%dl, %edx
	cmpl	$16, %edx
	jne	.LBB110_8
.LBB110_5:                              # %if.end.11.1
	movzbl	1(%rcx), %ecx
	cmpl	$16, %ecx
	je	.LBB110_7
# BB#6:                                 # %if.end.11.1
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB110_8
.LBB110_7:                              # %if.end.11.2
	xorl	%eax, %eax
.LBB110_8:                              # %cleanup
	retq
.Lfunc_end110:
	.size	labvalidate, .Lfunc_end110-labvalidate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI111_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI111_1:
	.long	1065353216              # float 1
.LCPI111_2:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	setcalgrayspace,@function
setcalgrayspace:                        # @setcalgrayspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp627:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp628:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp629:
	.cfi_def_cfa_offset 32
	subq	$320, %rsp              # imm = 0x140
.Ltmp630:
	.cfi_def_cfa_offset 352
.Ltmp631:
	.cfi_offset %rbx, -32
.Ltmp632:
	.cfi_offset %r14, -24
.Ltmp633:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$0, (%rcx)
	movq	8(%rbx), %rdi
	leaq	304(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB111_9
# BB#1:                                 # %if.end
	leaq	304(%rsp), %rdi
	movsd	.LCPI111_0(%rip), %xmm0 # xmm0 = mem[0],zero
	leaq	300(%rsp), %rdx
	movl	$.L.str.89, %esi
	callq	dict_float_param
	movl	$-15, %ebp
	xorpd	%xmm0, %xmm0
	ucomiss	300(%rsp), %xmm0
	jae	.LBB111_9
# BB#2:                                 # %if.end.4
	movq	8(%rbx), %rdi
	leaq	304(%rsp), %r14
	leaq	276(%rsp), %r8
	movl	$.L.str.63, %edx
	movl	$3, %ecx
	movl	$setcalgrayspace.dflt_black, %r9d
	movq	%r14, %rsi
	callq	dict_floats_param
	movq	8(%rbx), %rdi
	leaq	288(%rsp), %r8
	movl	$.L.str.59, %edx
	movl	$3, %ecx
	movl	$setcalgrayspace.dflt_white, %r9d
	movq	%r14, %rsi
	callq	dict_floats_param
	xorpd	%xmm0, %xmm0
	ucomiss	288(%rsp), %xmm0
	jae	.LBB111_9
# BB#3:                                 # %lor.lhs.false
	movss	292(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI111_1(%rip), %xmm0
	jne	.LBB111_9
	jp	.LBB111_9
# BB#4:                                 # %lor.lhs.false.16
	xorps	%xmm0, %xmm0
	ucomiss	296(%rsp), %xmm0
	jae	.LBB111_9
# BB#5:                                 # %if.end.21
	movq	312(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	288(%rsp), %rsi
	leaq	276(%rsp), %rdx
	leaq	300(%rsp), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rbx, %rdi
	callq	seticc_cal
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB111_6
# BB#7:                                 # %if.end.29
	movq	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setcolor
	jmp	.LBB111_8
.LBB111_6:                              # %if.then.27
	movl	$.L__func__.setcalgrayspace, %edi
	movl	$.L.str.87, %esi
	movl	$5142, %edx             # imm = 0x1416
	movl	$1, %ecx
	movl	$.L.str.90, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB111_8:                              # %cleanup
	movl	%eax, %ebp
.LBB111_9:                              # %cleanup
	movl	%ebp, %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end111:
	.size	setcalgrayspace, .Lfunc_end111-setcalgrayspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI112_0:
	.long	3323740160              # float -1.0E+4
.LCPI112_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	validatecalgrayspace,@function
validatecalgrayspace:                   # @validatecalgrayspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp634:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp635:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp636:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp637:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp638:
	.cfi_def_cfa_offset 80
.Ltmp639:
	.cfi_offset %rbx, -40
.Ltmp640:
	.cfi_offset %r12, -32
.Ltmp641:
	.cfi_offset %r14, -24
.Ltmp642:
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	(%r12), %rsi
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB112_27
# BB#1:                                 # %if.end
	movl	$-15, %eax
	cmpl	$2, 4(%rsi)
	jb	.LBB112_27
# BB#2:                                 # %if.end.6
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB112_27
# BB#3:                                 # %if.end.10
	movzbl	1(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB112_4
# BB#5:                                 # %if.end.18
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	checkWhitePoint
	testl	%eax, %eax
	jne	.LBB112_27
# BB#6:                                 # %if.end.23
	leaq	(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB112_19
# BB#7:                                 # %land.lhs.true.i
	movq	16(%rsp), %r14
	movzbl	1(%r14), %eax
	cmpl	$14, %eax
	je	.LBB112_19
# BB#8:                                 # %if.then.i
	movzwl	(%r14), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB112_27
# BB#9:                                 # %if.end.i
	movl	$-15, %eax
	cmpl	$3, 4(%r14)
	jne	.LBB112_27
# BB#10:                                # %if.end.13.i
	movq	8(%rbx), %r15
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB112_27
# BB#11:                                # %if.end.i.20
	movzbl	25(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB112_12
# BB#15:                                # %if.then.15.i
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB112_16
.LBB112_4:                              # %if.then.16
	leaq	(%rsp), %rdi
	callq	check_type_failed
.LBB112_27:                             # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB112_12:                             # %if.end.i.20
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB112_13
# BB#14:                                # %if.then.6.i
	cvtsi2ssq	32(%rsp), %xmm0
.LBB112_16:                             # %if.end.21.i
	movss	.LCPI112_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB112_18
# BB#17:                                # %if.end.21.i
	ucomiss	.LCPI112_1(%rip), %xmm0
	ja	.LBB112_18
# BB#28:                                # %for.cond.i
	leaq	24(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB112_27
# BB#29:                                # %if.end.i.20.1
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI112_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	jne	.LBB112_30
# BB#33:                                # %if.then.6.i.1
	cvtsi2ssq	32(%rsp), %xmm0
	jmp	.LBB112_34
.LBB112_13:
	movl	$-20, %eax
	jmp	.LBB112_27
.LBB112_30:                             # %if.end.i.20.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB112_31
# BB#32:                                # %if.then.15.i.1
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB112_34:                             # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB112_18
# BB#35:                                # %if.end.21.i.1
	ucomiss	.LCPI112_1(%rip), %xmm0
	ja	.LBB112_18
# BB#36:                                # %for.cond.i.1
	leaq	24(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB112_27
# BB#37:                                # %if.end.i.20.2
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB112_38
# BB#40:                                # %if.then.6.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	jmp	.LBB112_41
.LBB112_31:
	movl	$-20, %eax
	jmp	.LBB112_27
.LBB112_38:                             # %if.end.i.20.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB112_27
# BB#39:                                # %if.then.15.i.2
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB112_41:                             # %if.end.21.i.2
	movss	.LCPI112_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB112_18
# BB#42:                                # %if.end.21.i.2
	ucomiss	.LCPI112_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB112_27
.LBB112_19:                             # %if.end.28
	leaq	(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.89, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB112_26
# BB#20:                                # %land.lhs.true.i.29
	movq	24(%rsp), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	je	.LBB112_24
# BB#21:                                # %land.lhs.true.i.29
	movzbl	%al, %edx
	cmpl	$14, %edx
	je	.LBB112_26
# BB#22:                                # %land.lhs.true.i.29
	movl	$-20, %eax
	cmpl	$16, %edx
	jne	.LBB112_27
# BB#23:                                # %if.then.61.i
	movss	8(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB112_25
.LBB112_24:                             # %if.then.72.i
	cvtsi2ssq	8(%rcx), %xmm0
.LBB112_25:                             # %if.end.79.i
	movl	$-15, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB112_27
.LBB112_26:                             # %if.end.33
	movq	$0, (%r12)
	xorl	%eax, %eax
	jmp	.LBB112_27
.LBB112_18:
	movl	$-13, %eax
	jmp	.LBB112_27
.Lfunc_end112:
	.size	validatecalgrayspace, .Lfunc_end112-validatecalgrayspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI113_0:
	.long	1065353216              # float 1
.LCPI113_1:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	setcalrgbspace,@function
setcalrgbspace:                         # @setcalrgbspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp643:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp644:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp645:
	.cfi_def_cfa_offset 32
	subq	$368, %rsp              # imm = 0x170
.Ltmp646:
	.cfi_def_cfa_offset 400
.Ltmp647:
	.cfi_offset %rbx, -32
.Ltmp648:
	.cfi_offset %r14, -24
.Ltmp649:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$0, (%rcx)
	movq	8(%rbx), %rdi
	leaq	352(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB113_11
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	leaq	352(%rsp), %rsi
	leaq	340(%rsp), %r8
	movl	$.L.str.89, %edx
	movl	$3, %ecx
	movl	$setcalrgbspace.dflt_gamma, %r9d
	callq	dict_floats_param
	movl	$-15, %ebp
	xorps	%xmm0, %xmm0
	ucomiss	340(%rsp), %xmm0
	jae	.LBB113_11
# BB#2:                                 # %lor.lhs.false
	ucomiss	344(%rsp), %xmm0
	jae	.LBB113_11
# BB#3:                                 # %lor.lhs.false.7
	xorps	%xmm0, %xmm0
	ucomiss	348(%rsp), %xmm0
	jae	.LBB113_11
# BB#4:                                 # %if.end.11
	movq	8(%rbx), %rdi
	leaq	352(%rsp), %r14
	leaq	316(%rsp), %r8
	movl	$.L.str.63, %edx
	movl	$3, %ecx
	movl	$setcalrgbspace.dflt_black, %r9d
	movq	%r14, %rsi
	callq	dict_floats_param
	movq	8(%rbx), %rdi
	leaq	328(%rsp), %r8
	movl	$.L.str.59, %edx
	movl	$3, %ecx
	movl	$setcalrgbspace.dflt_white, %r9d
	movq	%r14, %rsi
	callq	dict_floats_param
	xorps	%xmm0, %xmm0
	ucomiss	328(%rsp), %xmm0
	jae	.LBB113_11
# BB#5:                                 # %lor.lhs.false.22
	movss	332(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI113_0(%rip), %xmm0
	jne	.LBB113_11
	jp	.LBB113_11
# BB#6:                                 # %lor.lhs.false.26
	xorps	%xmm0, %xmm0
	ucomiss	336(%rsp), %xmm0
	jae	.LBB113_11
# BB#7:                                 # %if.end.31
	movq	8(%rbx), %rdi
	leaq	352(%rsp), %rsi
	leaq	272(%rsp), %rbp
	movl	$.L.str.91, %edx
	movl	$9, %ecx
	movl	$setcalrgbspace.dflt_matrix, %r9d
	movq	%rbp, %r8
	callq	dict_floats_param
	movq	360(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	328(%rsp), %rsi
	leaq	316(%rsp), %rdx
	leaq	340(%rsp), %rcx
	movl	$3, %r9d
	movq	%rbx, %rdi
	movq	%rbp, %r8
	callq	seticc_cal
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB113_8
# BB#9:                                 # %if.end.45
	movq	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 24(%rsp)
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setcolor
	jmp	.LBB113_10
.LBB113_8:                              # %if.then.43
	movl	$.L__func__.setcalrgbspace, %edi
	movl	$.L.str.87, %esi
	movl	$5229, %edx             # imm = 0x146D
	movl	$1, %ecx
	movl	$.L.str.92, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB113_10:                             # %cleanup
	movl	%eax, %ebp
.LBB113_11:                             # %cleanup
	movl	%ebp, %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end113:
	.size	setcalrgbspace, .Lfunc_end113-setcalrgbspace
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI114_0:
	.long	3323740160              # float -1.0E+4
.LCPI114_1:
	.long	1176256512              # float 1.0E+4
.LCPI114_2:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	validatecalrgbspace,@function
validatecalrgbspace:                    # @validatecalrgbspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp650:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp651:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp652:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp653:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp654:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp655:
	.cfi_def_cfa_offset 96
.Ltmp656:
	.cfi_offset %rbx, -48
.Ltmp657:
	.cfi_offset %r12, -40
.Ltmp658:
	.cfi_offset %r13, -32
.Ltmp659:
	.cfi_offset %r14, -24
.Ltmp660:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB114_48
# BB#1:                                 # %if.end
	movl	$-15, %eax
	cmpl	$2, 4(%rsi)
	jb	.LBB114_48
# BB#2:                                 # %if.end.6
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB114_48
# BB#3:                                 # %if.end.10
	movzbl	9(%rsp), %eax
	cmpl	$2, %eax
	movl	$-20, %eax
	jne	.LBB114_48
# BB#4:                                 # %if.end.17
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	checkWhitePoint
	testl	%eax, %eax
	jne	.LBB114_48
# BB#5:                                 # %if.end.22
	leaq	8(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB114_18
# BB#6:                                 # %land.lhs.true.i
	movq	24(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB114_18
# BB#7:                                 # %if.then.i
	movzwl	(%r15), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB114_48
# BB#8:                                 # %if.end.i
	movl	$-15, %eax
	cmpl	$3, 4(%r15)
	jne	.LBB114_48
# BB#9:                                 # %if.end.13.i
	movq	8(%r14), %r12
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB114_48
# BB#10:                                # %if.end.i.23
	movzbl	33(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB114_11
# BB#14:                                # %if.then.15.i
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB114_15
.LBB114_11:                             # %if.end.i.23
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB114_12
# BB#13:                                # %if.then.6.i
	cvtsi2ssq	40(%rsp), %xmm0
.LBB114_15:                             # %if.end.21.i
	movss	.LCPI114_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB114_17
# BB#16:                                # %if.end.21.i
	ucomiss	.LCPI114_1(%rip), %xmm0
	ja	.LBB114_17
# BB#49:                                # %for.cond.i
	leaq	32(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB114_48
# BB#50:                                # %if.end.i.23.1
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI114_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	jne	.LBB114_51
# BB#54:                                # %if.then.6.i.1
	cvtsi2ssq	40(%rsp), %xmm0
	jmp	.LBB114_55
.LBB114_12:
	movl	$-20, %eax
	jmp	.LBB114_48
.LBB114_51:                             # %if.end.i.23.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB114_52
# BB#53:                                # %if.then.15.i.1
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB114_55:                             # %if.end.21.i.1
	ucomiss	%xmm0, %xmm1
	ja	.LBB114_17
# BB#56:                                # %if.end.21.i.1
	ucomiss	.LCPI114_1(%rip), %xmm0
	ja	.LBB114_17
# BB#57:                                # %for.cond.i.1
	leaq	32(%rsp), %rcx
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB114_48
# BB#58:                                # %if.end.i.23.2
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB114_59
# BB#61:                                # %if.then.6.i.2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	40(%rsp), %xmm0
	jmp	.LBB114_62
.LBB114_52:
	movl	$-20, %eax
	jmp	.LBB114_48
.LBB114_59:                             # %if.end.i.23.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB114_48
# BB#60:                                # %if.then.15.i.2
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB114_62:                             # %if.end.21.i.2
	movss	.LCPI114_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB114_17
# BB#63:                                # %if.end.21.i.2
	ucomiss	.LCPI114_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB114_48
.LBB114_18:                             # %if.end.27
	leaq	8(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.89, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB114_34
# BB#19:                                # %land.lhs.true.i.32
	movq	24(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	je	.LBB114_34
# BB#20:                                # %if.then.i.33
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB114_21
# BB#22:                                # %if.end.i.36
	cmpl	$3, 4(%rsi)
	jne	.LBB114_33
# BB#23:                                # %for.body.lr.ph.i
	movq	8(%r14), %rdi
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movl	$1, %r15d
	testl	%eax, %eax
	js	.LBB114_48
# BB#24:
	leaq	32(%rsp), %r12
.LBB114_27:                             # %if.end.24.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	33(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB114_28
# BB#31:                                # %if.then.41.i
                                        #   in Loop: Header=BB114_27 Depth=1
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB114_32
.LBB114_28:                             # %if.end.24.i
                                        #   in Loop: Header=BB114_27 Depth=1
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB114_29
# BB#30:                                # %if.then.31.i
                                        #   in Loop: Header=BB114_27 Depth=1
	cvtsi2ssq	40(%rsp), %xmm0
.LBB114_32:                             # %if.end.47.i
                                        #   in Loop: Header=BB114_27 Depth=1
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB114_33
# BB#25:                                # %for.cond.i.39
                                        #   in Loop: Header=BB114_27 Depth=1
	cmpq	$2, %r15
	jg	.LBB114_34
# BB#26:                                # %for.cond.for.body_crit_edge.i
                                        #   in Loop: Header=BB114_27 Depth=1
	movq	24(%rsp), %rsi
	movq	8(%r14), %rdi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	array_get
	incq	%r15
	testl	%eax, %eax
	jns	.LBB114_27
	jmp	.LBB114_48
.LBB114_34:                             # %if.end.32
	leaq	8(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.91, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB114_47
# BB#35:                                # %land.lhs.true.i.49
	movq	24(%rsp), %r15
	movzbl	1(%r15), %eax
	cmpl	$14, %eax
	je	.LBB114_47
# BB#36:                                # %if.then.i.53
	movzwl	(%r15), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB114_48
# BB#37:                                # %if.end.i.56
	movl	$-15, %eax
	cmpl	$9, 4(%r15)
	jne	.LBB114_48
# BB#38:                                # %if.end.13.i.58
	movq	8(%r14), %r14
	xorl	%r12d, %r12d
	leaq	32(%rsp), %r13
.LBB114_40:                             # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB114_48
# BB#41:                                # %if.end.i.i
                                        #   in Loop: Header=BB114_40 Depth=1
	movzbl	33(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB114_42
# BB#44:                                # %if.then.15.i.i
                                        #   in Loop: Header=BB114_40 Depth=1
	movss	40(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB114_45
.LBB114_42:                             # %if.end.i.i
                                        #   in Loop: Header=BB114_40 Depth=1
	movl	$-20, %eax
	movzbl	%cl, %ecx
	cmpl	$11, %ecx
	jne	.LBB114_48
# BB#43:                                # %if.then.6.i.i
                                        #   in Loop: Header=BB114_40 Depth=1
	cvtsi2ssq	40(%rsp), %xmm0
.LBB114_45:                             # %if.end.21.i.i
                                        #   in Loop: Header=BB114_40 Depth=1
	movss	.LCPI114_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-13, %eax
	ja	.LBB114_48
# BB#46:                                # %if.end.21.i.i
                                        #   in Loop: Header=BB114_40 Depth=1
	ucomiss	.LCPI114_1(%rip), %xmm0
	ja	.LBB114_48
# BB#39:                                # %for.cond.i.i
                                        #   in Loop: Header=BB114_40 Depth=1
	incq	%r12
	cmpq	$9, %r12
	jl	.LBB114_40
.LBB114_47:                             # %if.end.37
	movq	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB114_48
.LBB114_21:
	movl	$-20, %eax
	jmp	.LBB114_48
.LBB114_33:
	movl	$-15, %eax
	jmp	.LBB114_48
.LBB114_17:
	movl	$-13, %eax
	jmp	.LBB114_48
.LBB114_29:
	movl	$-20, %eax
.LBB114_48:                             # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end114:
	.size	validatecalrgbspace, .Lfunc_end114-validatecalrgbspace
	.cfi_endproc

	.globl	get_space_object
	.align	16, 0x90
	.type	get_space_object,@function
get_space_object:                       # @get_space_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp661:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp662:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp663:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp664:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp665:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp666:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp667:
	.cfi_def_cfa_offset 112
.Ltmp668:
	.cfi_offset %rbx, -56
.Ltmp669:
	.cfi_offset %r12, -48
.Ltmp670:
	.cfi_offset %r13, -40
.Ltmp671:
	.cfi_offset %r14, -32
.Ltmp672:
	.cfi_offset %r15, -24
.Ltmp673:
	.cfi_offset %rbp, -16
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB115_2
# BB#1:                                 # %if.then
	movq	8(%r12), %rdi
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	jmp	.LBB115_3
.LBB115_2:                              # %if.else
	movups	(%rsi), %xmm0
	movaps	%xmm0, 32(%rsp)
.LBB115_3:                              # %if.end
	movl	$-20, %eax
	movzbl	33(%rsp), %ecx
	cmpl	$13, %ecx
	jne	.LBB115_9
# BB#4:                                 # %for.cond.preheader
	movl	$colorProcs, %ebp
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r15
	.align	16, 0x90
.LBB115_6:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r13
	movq	(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB115_9
# BB#7:                                 # %if.end.23
                                        #   in Loop: Header=BB115_6 Depth=1
	movq	40(%rsp), %rax
	cmpq	24(%rsp), %rax
	je	.LBB115_8
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB115_6 Depth=1
	incq	%r14
	addq	$96, %rbp
	movl	$-21, %eax
	cmpq	$15, %r14
	jle	.LBB115_6
	jmp	.LBB115_9
.LBB115_8:                              # %if.then.28
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbp, (%rax)
	xorl	%eax, %eax
.LBB115_9:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end115:
	.size	get_space_object, .Lfunc_end115-get_space_object
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentcolor,@function
zcurrentcolor:                          # @zcurrentcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp674:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp675:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp676:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp677:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp678:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp679:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp680:
	.cfi_def_cfa_offset 64
.Ltmp681:
	.cfi_offset %rbx, -56
.Ltmp682:
	.cfi_offset %r12, -48
.Ltmp683:
	.cfi_offset %r13, -40
.Ltmp684:
	.cfi_offset %r14, -32
.Ltmp685:
	.cfi_offset %r15, -24
.Ltmp686:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %r12
	movq	(%r15), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rbp
	movq	(%r15), %rdi
	callq	gs_currentcolor
	movq	%rax, %rbx
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB116_3
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.LBB116_3
# BB#2:                                 # %lor.lhs.false
	movq	24(%rdi), %rax
	movq	8(%rax), %r13
	callq	*24(%rax)
	movq	%rax, %rdi
	callq	*%r13
	movl	%r14d, %ecx
	negl	%ecx
	testl	%eax, %eax
	movl	$1, %eax
	cmovnel	%ecx, %eax
.LBB116_3:                              # %do.body
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%r12), %rcx
	cmpq	640(%r15), %rcx
	jbe	.LBB116_5
# BB#4:                                 # %if.then.14
	movl	%eax, 688(%r15)
	movl	$-16, %eax
	jmp	.LBB116_16
.LBB116_5:                              # %if.else.17
	leal	-1(%rax), %esi
	movslq	%esi, %rsi
	testl	%r14d, %r14d
	movq	%rcx, 624(%r15)
	cmovsl	%esi, %eax
	testl	%eax, %eax
	jle	.LBB116_6
# BB#7:                                 # %for.body.lr.ph
	leal	-1(%rax), %ecx
	leaq	1(%rdx,%rcx), %rcx
	subq	%rsi, %rcx
	addq	$8, %rbx
	subq	%rsi, %rdx
	shlq	$4, %rdx
	leaq	8(%r12,%rdx), %rdx
	.align	16, 0x90
.LBB116_8:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB116_11
	jp	.LBB116_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB116_8 Depth=1
	movq	(%rbp), %rdi
	cmpl	$10, (%rdi)
	jne	.LBB116_11
# BB#10:                                # %if.then.37
                                        #   in Loop: Header=BB116_8 Depth=1
	movslq	%esi, %rsi
	movq	%rsi, (%rdx)
	movw	$2816, -8(%rdx)         # imm = 0xB00
	jmp	.LBB116_12
	.align	16, 0x90
.LBB116_11:                             # %if.else.39
                                        #   in Loop: Header=BB116_8 Depth=1
	movss	%xmm0, (%rdx)
	movw	$4096, -8(%rdx)         # imm = 0x1000
.LBB116_12:                             # %if.end.43
                                        #   in Loop: Header=BB116_8 Depth=1
	addq	$4, %rbx
	addq	$16, %rdx
	decl	%eax
	jne	.LBB116_8
# BB#13:                                # %for.cond.for.end_crit_edge
	shlq	$4, %rcx
	addq	%rcx, %r12
	movq	%r12, %rcx
	jmp	.LBB116_14
.LBB116_6:
	shlq	$4, %rsi
	subq	%rsi, %rcx
.LBB116_14:                             # %for.end
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jns	.LBB116_16
# BB#15:                                # %if.then.45
	movq	(%r15), %rdx
	movq	16(%rdx), %rdx
	movups	368(%rdx), %xmm0
	movups	%xmm0, (%rcx)
.LBB116_16:                             # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end116:
	.size	zcurrentcolor, .Lfunc_end116-zcurrentcolor
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentcolorspace,@function
zcurrentcolorspace:                     # @zcurrentcolorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp687:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp688:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp689:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp690:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp691:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp692:
	.cfi_def_cfa_offset 64
.Ltmp693:
	.cfi_offset %rbx, -48
.Ltmp694:
	.cfi_offset %r12, -40
.Ltmp695:
	.cfi_offset %r14, -32
.Ltmp696:
	.cfi_offset %r15, -24
.Ltmp697:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r12
	movq	(%rbx), %rax
	movq	16(%rax), %rsi
	movzbl	177(%rsi), %eax
	addq	$176, %rsi
	cmpl	$13, %eax
	jne	.LBB117_20
# BB#1:                                 # %if.then
	leaq	8(%rbx), %r14
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rdx
	callq	names_string_ref
	movl	4(%rsp), %eax
	cmpl	$9, %eax
	jne	.LBB117_2
# BB#8:                                 # %land.lhs.true.33
	movq	8(%rsp), %rdi
	movl	$.L.str.1, %esi
	movl	$9, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB117_14
# BB#9:                                 # %if.then.38
	movq	(%r14), %rdi
	movl	$31, %ebp
	movl	$31, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB117_23
# BB#10:                                # %if.end.49
	movl	$.L.str.94, %esi
	movl	$31, %edx
	jmp	.LBB117_7
.LBB117_20:                             # %do.body.160
	addq	$16, %r12
	cmpq	640(%rbx), %r12
	ja	.LBB117_15
# BB#21:                                # %if.else.171
	movq	%r12, 624(%rbx)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%r12)
	jmp	.LBB117_22
.LBB117_2:                              # %if.then
	cmpl	$10, %eax
	jne	.LBB117_14
# BB#3:                                 # %land.lhs.true
	movq	8(%rsp), %rdi
	movl	$.L.str, %esi
	movl	$10, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB117_4
# BB#11:                                # %land.lhs.true.67
	movq	8(%rsp), %rdi
	movl	$.L.str.2, %esi
	movl	$10, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB117_12
.LBB117_14:                             # %do.body
	leaq	16(%r12), %r15
	cmpq	640(%rbx), %r15
	jbe	.LBB117_16
.LBB117_15:                             # %if.then.101
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB117_23
.LBB117_16:                             # %if.else.104
	movq	%r15, 624(%rbx)
	movq	8(%rbx), %rdi
	movl	$112, %edx
	movl	$1, %ecx
	movl	$.L.str.96, %r8d
	movq	%r15, %rsi
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB117_23
# BB#17:                                # %if.end.115
	movq	24(%r12), %rdi
	movl	76(%rbx), %edx
	movl	$1, %esi
	callq	refset_null_new
	movq	24(%r12), %rdx
	movzwl	(%rdx), %eax
	testl	72(%rbx), %eax
	jne	.LBB117_19
# BB#18:                                # %cond.true
	movl	$.L.str.96, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	alloc_save_change
	movq	24(%r12), %rdx
.LBB117_19:                             # %cond.end
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movups	176(%rax), %xmm0
	movups	%xmm0, (%rdx)
	movq	24(%r12), %rax
	movzwl	(%rax), %ecx
	orl	76(%rbx), %ecx
	movw	%cx, (%rax)
.LBB117_22:                             # %cleanup
	xorl	%eax, %eax
	jmp	.LBB117_23
.LBB117_4:                              # %if.then.11
	movq	(%r14), %rdi
	movl	$32, %ebp
	movl	$32, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB117_23
# BB#5:                                 # %if.end
	movl	$.L.str.93, %esi
	jmp	.LBB117_6
.LBB117_12:                             # %if.then.72
	movq	(%r14), %rdi
	movl	$32, %ebp
	movl	$32, %esi
	movl	$.L.str.47, %edx
	callq	*136(%rdi)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB117_23
# BB#13:                                # %if.end.83
	movl	$.L.str.95, %esi
.LBB117_6:                              # %if.end.148
	movl	$32, %edx
.LBB117_7:                              # %if.end.148
	movq	%r14, %rdi
	callq	memcpy
	movl	56(%rbx), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	orl	$128, %eax
	movq	520(%rbx), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%rbx)
	movw	%ax, 16(%rcx)
	movl	%ebp, 20(%rcx)
	movq	%r14, 24(%rcx)
	movl	$5, %eax
.LBB117_23:                             # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end117:
	.size	zcurrentcolorspace, .Lfunc_end117-zcurrentcolorspace
	.cfi_endproc

	.align	16, 0x90
	.type	zgetuseciecolor,@function
zgetuseciecolor:                        # @zgetuseciecolor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB118_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB118_2:                              # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rcx
	movq	16(%rcx), %rcx
	movups	480(%rcx), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end118:
	.size	zgetuseciecolor, .Lfunc_end118-zgetuseciecolor
	.cfi_endproc

	.align	16, 0x90
	.type	zsetcolor,@function
zsetcolor:                              # @zsetcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp698:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp699:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp700:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp701:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp702:
	.cfi_def_cfa_offset 48
	subq	$304, %rsp              # imm = 0x130
.Ltmp703:
	.cfi_def_cfa_offset 352
.Ltmp704:
	.cfi_offset %rbx, -48
.Ltmp705:
	.cfi_offset %r12, -40
.Ltmp706:
	.cfi_offset %r14, -32
.Ltmp707:
	.cfi_offset %r15, -24
.Ltmp708:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_currentcolorspace
	movq	$0, 8(%rsp)
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*24(%rcx)
	movl	%eax, %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	movl	%ebp, %r12d
	movl	%ebp, %r15d
	jns	.LBB119_7
# BB#1:                                 # %if.then
	movl	%ebp, %r12d
	negl	%r12d
	movl	$1, %eax
	movzbl	1(%r14), %ecx
	cmpl	$2, %ecx
	jne	.LBB119_2
# BB#3:                                 # %if.then.6
	leaq	280(%rsp), %rdx
	movl	$.L.str.82, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB119_6
# BB#4:                                 # %if.then.10
	movq	8(%rbx), %rdi
	movq	280(%rsp), %rsi
	leaq	288(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB119_24
# BB#5:                                 # %if.end
	movq	296(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	movq	24(%rdi), %rax
	movq	8(%rax), %r15
	callq	*24(%rax)
	movq	%rax, %rdi
	callq	*%r15
	testl	%eax, %eax
	notl	%ebp
	cmovel	%eax, %ebp
	movl	%ebp, %r15d
.LBB119_6:                              # %cleanup.thread
	movl	$1, %eax
	jmp	.LBB119_7
.LBB119_2:
	xorl	%r15d, %r15d
.LBB119_7:                              # %if.end.24
	shlq	$4, %rax
	movq	%r14, %rdi
	subq	%rax, %rdi
	leaq	16(%rsp), %rbp
	movl	%r15d, %esi
	movq	%rbp, %rdx
	callq	float_params
	testl	%eax, %eax
	js	.LBB119_24
# BB#8:                                 # %if.end.29
	movslq	%r15d, %rax
	leaq	16(%rsp,%rax,4), %rdi
	shlq	$2, %rax
	movl	$256, %edx              # imm = 0x100
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	(%rbx), %rax
	movl	$176, %esi
	addq	16(%rax), %rsi
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB119_24
# BB#9:                                 # %if.end.44
	movq	(%rsp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.LBB119_11
# BB#10:                                # %if.then.46
	movq	(%rbx), %rcx
	movl	$176, %esi
	addq	16(%rcx), %rsi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	callq	*%rax
	testl	%eax, %eax
	js	.LBB119_24
.LBB119_11:                             # %if.end.61
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setcolor
	cmpl	%r15d, %r12d
	jle	.LBB119_14
# BB#12:                                # %if.end.61
	testl	%eax, %eax
	js	.LBB119_14
# BB#13:                                # %if.then.69
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movups	(%r14), %xmm0
	movups	%xmm0, 368(%rax)
.LBB119_14:                             # %if.end.75
	leaq	520(%rbx), %r14
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	leaq	288(%rsp), %rsi
	movq	%rsi, 280(%rsp)
	movups	176(%rax), %xmm0
	movaps	%xmm0, 288(%rsp)
	leaq	272(%rsp), %rbp
	leaq	280(%rsp), %r15
	.align	16, 0x90
.LBB119_15:                             # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB119_19
# BB#16:                                # %if.end.i
                                        #   in Loop: Header=BB119_15 Depth=1
	movq	272(%rsp), %rax
	movq	16(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB119_19
# BB#17:                                # %if.end.2.i
                                        #   in Loop: Header=BB119_15 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB119_19
# BB#18:                                # %do.cond.i
                                        #   in Loop: Header=BB119_15 Depth=1
	movq	280(%rsp), %rsi
	testq	%rsi, %rsi
	movl	$0, %eax
	jne	.LBB119_15
.LBB119_19:                             # %validate_spaces.exit
	testl	%eax, %eax
	js	.LBB119_24
# BB#20:                                # %if.end.85
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB119_23
# BB#21:                                # %if.then.94
	movl	$5, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB119_24
# BB#22:                                # %if.then.94.if.end.105_crit_edge
	movq	(%r14), %rax
.LBB119_23:                             # %if.end.105
	movq	$0, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movq	$0, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	$0, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	leaq	64(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	(%rbx), %rcx
	movq	16(%rcx), %rcx
	movups	176(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$setcolor_cont, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB119_24:                             # %cleanup.154
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end119:
	.size	zsetcolor, .Lfunc_end119-zsetcolor
	.cfi_endproc

	.align	16, 0x90
	.type	zsetcolorspace,@function
zsetcolorspace:                         # @zsetcolorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp709:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp710:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp711:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp712:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp713:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp714:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp715:
	.cfi_def_cfa_offset 176
.Ltmp716:
	.cfi_offset %rbx, -56
.Ltmp717:
	.cfi_offset %r12, -48
.Ltmp718:
	.cfi_offset %r13, -40
.Ltmp719:
	.cfi_offset %r14, -32
.Ltmp720:
	.cfi_offset %r15, -24
.Ltmp721:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	624(%r12), %rcx
	movl	$-17, %ebp
	cmpq	632(%r12), %rcx
	jb	.LBB120_62
# BB#1:                                 # %if.end
	movzbl	1(%rcx), %eax
	cmpl	$13, %eax
	je	.LBB120_3
# BB#2:                                 # %if.then.7
	movzwl	(%rcx), %eax
	andl	$15360, %eax            # imm = 0x3C00
	movl	$-20, %ebp
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB120_62
.LBB120_3:                              # %if.end.15
	leaq	520(%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	80(%rsp), %rsi
	movq	%rsi, 48(%rsp)
	movups	(%rcx), %xmm0
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movaps	%xmm0, 80(%rsp)
	xorl	%r14d, %r14d
	movl	$1, %ebx
	leaq	112(%rsp), %r13
	leaq	48(%rsp), %r15
	.align	16, 0x90
.LBB120_4:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	get_space_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB120_9
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB120_4 Depth=1
	incl	%r14d
	movq	112(%rsp), %rax
	movq	16(%rax), %rcx
	xorl	%ebp, %ebp
	testq	%rcx, %rcx
	je	.LBB120_9
# BB#6:                                 # %if.end.2.i
                                        #   in Loop: Header=BB120_4 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB120_7
# BB#8:                                 # %do.cond.i
                                        #   in Loop: Header=BB120_4 Depth=1
	movq	48(%rsp), %rsi
	incl	%ebx
	testq	%rsi, %rsi
	jne	.LBB120_4
	jmp	.LBB120_9
.LBB120_7:
	movl	%ebx, %r14d
	movl	%eax, %ebp
.LBB120_9:                              # %validate_spaces.exit
	testl	%ebp, %ebp
	movq	24(%rsp), %rcx          # 8-byte Reload
	js	.LBB120_62
# BB#10:                                # %if.end.19
	movq	(%r12), %rax
	movq	16(%rax), %rax
	movw	488(%rax), %dx
	movw	%dx, 14(%rsp)           # 2-byte Spill
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	leaq	80(%rsp), %rsi
	movq	%rsi, 72(%rsp)
	movq	%r15, 40(%rsp)
	movups	(%rcx), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	176(%rax), %xmm0
	movaps	%xmm0, 80(%rsp)
	movzbl	49(%rsp), %eax
	movzbl	81(%rsp), %ecx
	cmpl	%eax, %ecx
	jne	.LBB120_53
# BB#11:
	leaq	36(%rsp), %rbx
.LBB120_12:                             # %if.end.i.45
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	leaq	112(%rsp), %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB120_53
# BB#13:                                # %if.end.13.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	40(%rsp), %rsi
	movq	%r12, %rdi
	leaq	104(%rsp), %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB120_53
# BB#14:                                # %if.end.18.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	112(%rsp), %rbp
	movq	(%rbp), %rdi
	movq	104(%rsp), %r15
	movq	(%r15), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB120_53
# BB#15:                                # %if.end.24.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	72(%rsp), %rsi
	movq	40(%rsp), %rdx
	movq	%r12, %rdi
	callq	*80(%rbp)
	testl	%eax, %eax
	je	.LBB120_53
# BB#16:                                # %if.end.27.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	(%r15), %r13
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB120_24
# BB#17:                                # %cond.true.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	(%r13), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB120_25
# BB#18:                                # %cond.true.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_25
# BB#19:                                # %if.then.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	1(%r13), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB120_25
# BB#20:                                # %if.then.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_25
# BB#21:                                # %if.then.18.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	2(%r13), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB120_25
# BB#22:                                # %if.then.18.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_25
# BB#23:                                # %if.then.28.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	3(%r13), %eax
	addl	$-105, %eax
	jmp	.LBB120_25
	.align	16, 0x90
.LBB120_24:                             # %cond.false.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB120_25:                             # %cond.end.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	je	.LBB120_46
# BB#26:                                # %land.lhs.true.44.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB120_34
# BB#27:                                # %cond.true.48.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	(%r13), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB120_35
# BB#28:                                # %cond.true.48.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_35
# BB#29:                                # %if.then.62.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	1(%r13), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB120_35
# BB#30:                                # %if.then.62.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_35
# BB#31:                                # %if.then.72.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	2(%r13), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB120_35
# BB#32:                                # %if.then.72.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_35
# BB#33:                                # %if.then.82.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	3(%r13), %eax
	addl	$-105, %eax
	jmp	.LBB120_35
.LBB120_34:                             # %cond.false.91.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB120_35:                             # %cond.end.93.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	je	.LBB120_46
# BB#36:                                # %land.lhs.true.102.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB120_44
# BB#37:                                # %cond.true.106.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	(%r13), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB120_45
# BB#38:                                # %cond.true.106.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_45
# BB#39:                                # %if.then.120.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	1(%r13), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB120_45
# BB#40:                                # %if.then.120.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_45
# BB#41:                                # %if.then.130.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	2(%r13), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB120_45
# BB#42:                                # %if.then.130.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_45
# BB#43:                                # %if.then.140.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movzbl	3(%r13), %eax
	addl	$-105, %eax
	jmp	.LBB120_45
.LBB120_44:                             # %cond.false.149.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB120_45:                             # %cond.end.151.i.i
                                        #   in Loop: Header=BB120_12 Depth=1
	testl	%eax, %eax
	jne	.LBB120_49
	.align	16, 0x90
.LBB120_46:                             # %if.then.31.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	(%r12), %rax
	movq	1744(%rax), %rdi
	callq	gs_color_space_is_CIE
	testl	%eax, %eax
	je	.LBB120_48
# BB#47:                                # %if.then.35.i
                                        #   in Loop: Header=BB120_12 Depth=1
	cmpw	$0, 14(%rsp)            # 2-byte Folded Reload
	jne	.LBB120_49
	jmp	.LBB120_53
.LBB120_48:                             # %if.else.i
                                        #   in Loop: Header=BB120_12 Depth=1
	cmpw	$0, 14(%rsp)            # 2-byte Folded Reload
	jne	.LBB120_53
.LBB120_49:                             # %if.end.43.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	24(%rbp), %rax
	testq	%rax, %rax
	je	.LBB120_57
# BB#50:                                # %if.end.46.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	72(%rsp), %rsi
	movq	%r12, %rdi
	leaq	72(%rsp), %rdx
	movq	%rbx, %rcx
	callq	*%rax
	testl	%eax, %eax
	js	.LBB120_53
# BB#51:                                # %if.end.52.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	40(%rsp), %rsi
	movq	%r12, %rdi
	leaq	40(%rsp), %rdx
	movq	%rbx, %rcx
	callq	*24(%r15)
	testl	%eax, %eax
	js	.LBB120_53
# BB#52:                                # %if.end.52.do.body_crit_edge.i
                                        #   in Loop: Header=BB120_12 Depth=1
	movq	72(%rsp), %rsi
	movq	40(%rsp), %rax
	movzbl	1(%rax), %eax
	movzbl	1(%rsi), %ecx
	cmpl	%eax, %ecx
	je	.LBB120_12
.LBB120_53:                             # %if.end.50
	movq	520(%r12), %rax
	movq	536(%r12), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB120_56
# BB#54:                                # %if.then.59
	movl	$5, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB120_62
# BB#55:                                # %if.then.59.if.end.68_crit_edge
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
.LBB120_56:                             # %if.end.68
	movq	$0, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movslq	%r14d, %rcx
	movq	%rcx, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	$0, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	leaq	64(%rax), %rcx
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movups	(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movq	(%rdx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	$setcolorspace_cont, 24(%rax)
	movq	(%rdx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %ebp
.LBB120_62:                             # %cleanup.113
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB120_57:                             # %is_same_colorspace.exit
	movq	(%r12), %rax
	movl	$176, %esi
	addq	16(%rax), %rsi
	leaq	80(%rsp), %rdx
	movq	%r12, %rdi
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB120_61
# BB#58:                                # %if.end.35
	movq	80(%rsp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.LBB120_60
# BB#59:                                # %if.then.37
	movq	(%r12), %rcx
	movl	$176, %esi
	addq	16(%rcx), %rsi
	movq	%r12, %rdi
	callq	*%rax
.LBB120_60:                             # %if.end.45
	addq	$-16, 624(%r12)
.LBB120_61:                             # %cleanup
	xorl	%ebp, %ebp
	jmp	.LBB120_62
.Lfunc_end120:
	.size	zsetcolorspace, .Lfunc_end120-zsetcolorspace
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrenttransfer,@function
zcurrenttransfer:                       # @zcurrenttransfer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB121_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB121_2:                              # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rcx
	movq	16(%rcx), %rcx
	movups	128(%rcx), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end121:
	.size	zcurrenttransfer, .Lfunc_end121-zcurrenttransfer
	.cfi_endproc

	.align	16, 0x90
	.type	zprocesscolors,@function
zprocesscolors:                         # @zprocesscolors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp722:
	.cfi_def_cfa_offset 16
.Ltmp723:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB122_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB122_2:                              # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentdevice
	movslq	100(%rax), %rax
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end122:
	.size	zprocesscolors, .Lfunc_end122-zprocesscolors
	.cfi_endproc

	.align	16, 0x90
	.type	zsettransfer,@function
zsettransfer:                           # @zsettransfer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp724:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp725:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp726:
	.cfi_def_cfa_offset 32
.Ltmp727:
	.cfi_offset %rbx, -24
.Ltmp728:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB123_11
# BB#1:                                 # %do.end
	movq	640(%r14), %rax
	subq	%rbx, %rax
	cmpq	$47, %rax
	jg	.LBB123_3
# BB#2:                                 # %if.then.9
	movl	$3, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB123_10
.LBB123_11:                             # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_proc_failed       # TAILCALL
.LBB123_3:                              # %if.end.12
	movq	536(%r14), %rax
	addq	$-64, %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB123_5
# BB#4:                                 # %if.then.20
	leaq	520(%r14), %rdi
	movl	$4, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB123_10
.LBB123_5:                              # %if.end.28
	movq	(%r14), %rax
	movq	16(%rax), %rax
	movups	(%rbx), %xmm0
	movups	%xmm0, 128(%rax)
	movups	%xmm0, 112(%rax)
	movups	%xmm0, 96(%rax)
	movups	%xmm0, 80(%rax)
	movq	(%r14), %rdi
	movl	$gs_mapped_transfer, %esi
	xorl	%edx, %edx
	callq	gs_settransfer_remap
	testl	%eax, %eax
	js	.LBB123_10
# BB#6:                                 # %if.end.43
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$zcolor_reset_transfer, 24(%rax)
	movq	520(%r14), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	624(%r14), %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, 624(%r14)
	movq	(%r14), %rax
	movq	16(%rax), %rdx
	movq	488(%rax), %rdi
	cmpl	$0, 132(%rdx)
	je	.LBB123_7
# BB#8:                                 # %if.end.i
	leaq	48(%rcx), %rsi
	movq	%rsi, 624(%r14)
	movl	$0, 8(%rcx)
	movw	$4096, (%rcx)           # imm = 0x1000
	movq	$255, 24(%rcx)
	movw	$2816, 16(%rcx)         # imm = 0xB00
	movl	$1065353216, 40(%rcx)   # imm = 0x3F800000
	movw	$4096, 32(%rcx)         # imm = 0x1000
	movups	128(%rdx), %xmm0
	movups	%xmm0, 48(%rcx)
	movq	520(%r14), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r14)
	movq	%rdi, 24(%rcx)
	movq	8(%rax), %rdi
	callq	imemory_space
	addl	$2048, %eax             # imm = 0x800
	movq	520(%r14), %rcx
	movw	%ax, (%rcx)
	leaq	16(%rcx), %rax
	movq	%rax, 520(%r14)
	movq	$zcolor_remap_one_finish, 24(%rcx)
	movq	520(%r14), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$zfor_samples, 24(%rax)
	movq	520(%r14), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	jmp	.LBB123_9
.LBB123_7:                              # %if.then.i
	callq	gx_set_identity_transfer
.LBB123_9:                              # %cleanup.71
	movl	$5, %eax
.LBB123_10:                             # %cleanup.71
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end123:
	.size	zsettransfer, .Lfunc_end123-zsettransfer
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI124_0:
	.long	1199570688              # float 65535
	.text
	.align	16, 0x90
	.type	zcolor_test,@function
zcolor_test:                            # @zcolor_test
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp729:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp730:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp731:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp732:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp733:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp734:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp735:
	.cfi_def_cfa_offset 192
.Ltmp736:
	.cfi_offset %rbx, -56
.Ltmp737:
	.cfi_offset %r12, -48
.Ltmp738:
	.cfi_offset %r13, -40
.Ltmp739:
	.cfi_offset %r14, -32
.Ltmp740:
	.cfi_offset %r15, -24
.Ltmp741:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_currentdevice
	movq	%rax, %r14
	movslq	100(%r14), %r12
	movq	624(%rbx), %r15
	addq	$624, %rbx              # imm = 0x270
	movl	$1, %r13d
	movq	%rbx, %rdi
	callq	ref_stack_count
	movl	%eax, %ecx
	movl	$-17, %eax
	cmpl	%r12d, %ecx
	jb	.LBB124_15
# BB#1:                                 # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB124_14
# BB#2:                                 # %for.body.lr.ph
	movq	%r12, %rax
	shlq	$4, %rax
	subq	%r12, %r13
	addq	$-16, %rax
	movq	%r15, %rbp
	subq	%rax, %rbp
	leal	-1(%r12), %eax
	cltq
	shlq	$4, %rax
	movq	%r15, %rcx
	subq	%rax, %rcx
	addq	$8, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB124_3:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rcx), %esi
	cmpl	$11, %esi
	jne	.LBB124_4
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB124_3 Depth=1
	imull	$65535, (%rcx), %eax    # imm = 0xFFFF
	jmp	.LBB124_7
	.align	16, 0x90
.LBB124_4:                              # %for.body
                                        #   in Loop: Header=BB124_3 Depth=1
	movl	$-20, %eax
	movzbl	%sil, %esi
	cmpl	$16, %esi
	jne	.LBB124_15
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB124_3 Depth=1
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI124_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
.LBB124_7:                              # %for.inc
                                        #   in Loop: Header=BB124_3 Depth=1
	movw	%ax, (%rsp,%rdx,2)
	incq	%rdx
	addq	$16, %rcx
	cmpq	%r12, %rdx
	jl	.LBB124_3
# BB#8:                                 # %for.end
	leaq	(%rsp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*1552(%r14)
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	*1560(%r14)
	movss	.LCPI124_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB124_15
# BB#9:                                 # %for.body.40.preheader
	xorl	%eax, %eax
	testb	$1, %r12b
	movl	$0, %edx
	je	.LBB124_11
# BB#10:                                # %for.body.40.prol
	movzwl	(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm0
	divss	.LCPI124_0(%rip), %xmm0
	shlq	$4, %r13
	movss	%xmm0, 8(%r15,%r13)
	movw	$4096, (%rbp)           # imm = 0x1000
	movl	$1, %edx
.LBB124_11:                             # %for.body.40.preheader.split
	cmpl	$1, %r12d
	je	.LBB124_15
# BB#12:                                # %for.body.40.preheader.split.split
	movl	%r12d, %ecx
	subl	%edx, %ecx
	leaq	2(%rdx,%rdx), %rsi
	orq	%rsi, %rbx
	decl	%r12d
	movslq	%r12d, %rsi
	negq	%rsi
	leaq	1(%rdx,%rsi), %rdx
	shlq	$4, %rdx
	leaq	8(%r15,%rdx), %rdx
	.align	16, 0x90
.LBB124_13:                             # %for.body.40
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rbx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -16(%rdx)
	movw	$4096, -24(%rdx)        # imm = 0x1000
	movzwl	(%rbx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rdx)
	movw	$4096, -8(%rdx)         # imm = 0x1000
	addq	$4, %rbx
	addq	$32, %rdx
	addl	$-2, %ecx
	jne	.LBB124_13
	jmp	.LBB124_15
.LBB124_14:                             # %cleanup.critedge
	leaq	(%rsp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*1552(%r14)
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	*1560(%r14)
	xorl	%eax, %eax
.LBB124_15:                             # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end124:
	.size	zcolor_test, .Lfunc_end124-zcolor_test
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI125_0:
	.long	1199570688              # float 65535
	.text
	.align	16, 0x90
	.type	zcolor_test_all,@function
zcolor_test_all:                        # @zcolor_test_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp742:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp743:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp744:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp745:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp746:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp747:
	.cfi_def_cfa_offset 56
	subq	$824, %rsp              # imm = 0x338
.Ltmp748:
	.cfi_def_cfa_offset 880
.Ltmp749:
	.cfi_offset %rbx, -56
.Ltmp750:
	.cfi_offset %r12, -48
.Ltmp751:
	.cfi_offset %r13, -40
.Ltmp752:
	.cfi_offset %r14, -32
.Ltmp753:
	.cfi_offset %r15, -24
.Ltmp754:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	leaq	624(%r15), %r12
	movq	624(%r15), %rbp
	movq	(%r15), %rdi
	callq	gs_currentdevice
	movq	%rax, %r14
	movl	100(%r14), %ebx
	movl	136(%r14), %ecx
	movl	%ecx, 140(%rsp)         # 4-byte Spill
	leaq	112(%r14), %rdx
	leaq	116(%r14), %rcx
	cmpq	$1, %rbx
	cmoveq	%rdx, %rcx
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	(%rcx)
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	ref_stack_count
	movl	%eax, %ecx
	movl	$-17, %eax
	testl	%ecx, %ecx
	je	.LBB125_89
# BB#1:                                 # %if.end.14
	movq	(%r12), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$11, %edx
	jne	.LBB125_89
# BB#2:                                 # %if.end.23
	movl	8(%rcx), %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	jle	.LBB125_14
# BB#3:                                 # %for.body.preheader
	leal	-1(%rbx), %edx
	leaq	1(%rdx), %rax
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	leaq	8(%rcx), %rdi
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%rdi, %rcx
	je	.LBB125_11
# BB#4:                                 # %vector.body.preheader
	movq	%rbp, %r8
	leaq	1(%rdx), %rsi
	andq	%rdi, %rsi
	addq	$-8, %rsi
	movq	%rsi, %rbp
	shrq	$3, %rbp
	xorl	%edi, %edi
	btq	$3, %rsi
	jb	.LBB125_6
# BB#5:                                 # %vector.body.prol
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 176(%rsp)
	movdqa	%xmm0, 192(%rsp)
	movq	%xmm0, 432(%rsp)
	movq	%xmm0, 440(%rsp)
	movl	$8, %edi
.LBB125_6:                              # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB125_7
# BB#8:                                 # %vector.body.preheader.split.split
	incq	%rdx
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	andq	%rdx, %rsi
	subq	%rdi, %rsi
	leaq	224(%rsp,%rdi,4), %rdx
	leaq	456(%rsp,%rdi,2), %rdi
	pxor	%xmm0, %xmm0
	movq	%r8, %rbp
	.align	16, 0x90
.LBB125_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -48(%rdx)
	movdqa	%xmm0, -32(%rdx)
	movq	%xmm0, -24(%rdi)
	movq	%xmm0, -16(%rdi)
	movdqa	%xmm0, -16(%rdx)
	movdqa	%xmm0, (%rdx)
	movq	%xmm0, -8(%rdi)
	movq	%xmm0, (%rdi)
	addq	$64, %rdx
	addq	$32, %rdi
	addq	$-16, %rsi
	jne	.LBB125_9
# BB#10:
	movq	%rcx, %rsi
	jmp	.LBB125_11
.LBB125_7:
	movq	%rcx, %rsi
	movq	%r8, %rbp
.LBB125_11:                             # %middle.block
	cmpq	%rsi, %rax
	je	.LBB125_14
# BB#12:                                # %for.body.preheader326
	leaq	176(%rsp,%rsi,4), %rax
	leaq	432(%rsp,%rsi,2), %rcx
	movl	%ebx, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB125_13:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	movw	$0, (%rcx)
	addq	$4, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB125_13
.LBB125_14:                             # %for.end
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	24(%r14), %rdi
	movl	$.L.str.97, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
	movq	24(%r14), %rdi
	movzwl	108(%r14), %edx
	movl	$.L.str.98, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r14), %rdi
	movl	112(%r14), %edx
	movl	120(%r14), %ecx
	movl	$.L.str.99, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r14), %rdi
	movl	116(%r14), %edx
	movl	124(%r14), %ecx
	movl	$.L.str.100, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r14), %rdi
	movl	104(%r14), %eax
	testl	%eax, %eax
	movl	$.L.str.103, %ecx
	movl	$.L.str.104, %esi
	cmoveq	%rcx, %rsi
	cmpl	$1, %eax
	movl	$.L.str.102, %edx
	cmovneq	%rsi, %rdx
	movl	$.L.str.101, %esi
	xorl	%eax, %eax
	callq	errprintf
	testl	%ebx, %ebx
	jle	.LBB125_26
# BB#15:                                # %for.body.62.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	movabsq	$8589934576, %rdi       # imm = 0x1FFFFFFF0
	andq	%rdi, %rdx
	je	.LBB125_23
# BB#16:                                # %vector.body241.preheader
	movq	%rbx, %r8
	leaq	1(%rcx), %rbx
	movabsq	$8589934576, %rsi       # imm = 0x1FFFFFFF0
	andq	%rsi, %rbx
	addq	$-16, %rbx
	movl	%ebx, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB125_19
# BB#17:                                # %vector.body241.prol.preheader
	movl	%r8d, %ebp
	andl	$48, %ebp
	addl	$-16, %ebp
	shrl	$4, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%edi, %edi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB125_18:                             # %vector.body241.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, 688(%rsp,%rdi,2)
	movdqa	%xmm0, 704(%rsp,%rdi,2)
	addq	$16, %rdi
	incq	%rbp
	jne	.LBB125_18
.LBB125_19:                             # %vector.body241.preheader.split
	cmpq	$48, %rbx
	jb	.LBB125_22
# BB#20:                                # %vector.body241.preheader.split.split
	incq	%rcx
	movabsq	$8589934576, %rsi       # imm = 0x1FFFFFFF0
	andq	%rsi, %rcx
	subq	%rdi, %rcx
	leaq	800(%rsp,%rdi,2), %rsi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB125_21:                             # %vector.body241
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -112(%rsi)
	movdqa	%xmm0, -96(%rsi)
	movdqa	%xmm0, -80(%rsi)
	movdqa	%xmm0, -64(%rsi)
	movdqa	%xmm0, -48(%rsi)
	movdqa	%xmm0, -32(%rsi)
	movdqa	%xmm0, -16(%rsi)
	movdqa	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB125_21
.LBB125_22:
	movq	%rdx, %rsi
	movq	%r8, %rbx
.LBB125_23:                             # %middle.block242
	cmpq	%rsi, %rax
	je	.LBB125_26
# BB#24:                                # %for.body.62.preheader325
	leaq	688(%rsp,%rsi,2), %rax
	movl	%ebx, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB125_25:                             # %for.body.62
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB125_25
.LBB125_26:                             # %for.end.67
	leaq	688(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1552(%r14)
	movq	%rax, %rcx
	movq	24(%r14), %rdi
	movl	$.L.str.105, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	errprintf
	cmpl	$1, 140(%rsp)           # 4-byte Folded Reload
	movq	24(%r14), %rdi
	movl	$.L.str.108, %eax
	movl	$.L.str.107, %edx
	cmoveq	%rax, %rdx
	movl	$.L.str.106, %esi
	xorl	%eax, %eax
	callq	errprintf
	movzbl	110(%r14), %edx
	cmpl	$254, %edx
	movq	24(%r14), %rdi
	jne	.LBB125_28
# BB#27:                                # %if.then.86
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.109, %esi
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB125_29
.LBB125_28:                             # %if.else.89
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.110, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB125_29:                             # %if.end.95
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	%r15, 8(%rsp)           # 8-byte Spill
	cmpl	$1, 140(%rsp)           # 4-byte Folded Reload
	movq	%rbx, %r12
	jne	.LBB125_30
# BB#60:                                # %if.then.96
	movq	24(%r14), %rdi
	movl	$.L.str.111, %esi
	xorl	%eax, %eax
	callq	errprintf
	testl	%r12d, %r12d
	jle	.LBB125_30
# BB#61:                                # %for.body.102.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB125_62:                             # %for.body.102
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdi
	movzbl	140(%r14,%rbx), %edx
	movl	272(%r14,%rbx,8), %ecx
	movzbl	204(%r14,%rbx), %r8d
	movl	$.L.str.112, %esi
	xorl	%eax, %eax
	callq	errprintf
	incq	%rbx
	cmpl	%ebx, %r12d
	jne	.LBB125_62
.LBB125_30:                             # %while.cond.preheader
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	-1(%r12), %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	1(%rcx), %rsi
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	leaq	-16(%rdx), %rdx
	shrq	$4, %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movl	%r12d, %edi
	andl	$1, %edi
	movl	%edi, 80(%rsp)          # 4-byte Spill
	andl	$1, %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	addq	$8, %rax
	andq	%rsi, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rsi, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	124(%rsp), %ebp         # 4-byte Reload
	leaq	688(%rsp), %rsi
	jmp	.LBB125_31
	.align	16, 0x90
.LBB125_73:                             #   in Loop: Header=BB125_31 Depth=1
	movq	%r13, %rcx
.LBB125_31:                             # %for.cond.122.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB125_32 Depth 2
                                        #       Child Loop BB125_37 Depth 3
                                        #       Child Loop BB125_42 Depth 3
                                        #       Child Loop BB125_45 Depth 3
                                        #         Child Loop BB125_51 Depth 4
                                        #         Child Loop BB125_55 Depth 4
                                        #       Child Loop BB125_65 Depth 3
                                        #       Child Loop BB125_69 Depth 3
                                        #     Child Loop BB125_72 Depth 2
	testl	%ebp, %ebp
	movl	$0, %eax
	movq	%rcx, %r13
	js	.LBB125_71
	.align	16, 0x90
.LBB125_32:                             # %for.cond.126.preheader
                                        #   Parent Loop BB125_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB125_37 Depth 3
                                        #       Child Loop BB125_42 Depth 3
                                        #       Child Loop BB125_45 Depth 3
                                        #         Child Loop BB125_51 Depth 4
                                        #         Child Loop BB125_55 Depth 4
                                        #       Child Loop BB125_65 Depth 3
                                        #       Child Loop BB125_69 Depth 3
	movq	%rax, 128(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB125_38
# BB#33:                                # %for.body.129.preheader
                                        #   in Loop: Header=BB125_32 Depth=2
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	je	.LBB125_35
# BB#34:                                # %for.body.129.prol
                                        #   in Loop: Header=BB125_32 Depth=2
	imull	$65535, 176(%rsp), %eax # imm = 0xFFFF
	cltd
	idivl	%ebp
	movw	%ax, 688(%rsp)
	movl	$1, %eax
.LBB125_35:                             # %for.body.129.preheader.split
                                        #   in Loop: Header=BB125_32 Depth=2
	testl	%r13d, %r13d
	je	.LBB125_38
# BB#36:                                # %for.body.129.preheader.split.split
                                        #   in Loop: Header=BB125_32 Depth=2
	movl	%r12d, %ecx
	subl	%eax, %ecx
	leaq	180(%rsp), %rdx
	leaq	(%rdx,%rax,4), %rbx
	leaq	690(%rsp), %rdx
	leaq	(%rdx,%rax,2), %rdi
	.align	16, 0x90
.LBB125_37:                             # %for.body.129
                                        #   Parent Loop BB125_31 Depth=1
                                        #     Parent Loop BB125_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	imull	$65535, -4(%rbx), %eax  # imm = 0xFFFF
	cltd
	idivl	%ebp
	movw	%ax, -2(%rdi)
	imull	$65535, (%rbx), %eax    # imm = 0xFFFF
	cltd
	idivl	%ebp
	movw	%ax, (%rdi)
	addq	$8, %rbx
	addq	$4, %rdi
	addl	$-2, %ecx
	jne	.LBB125_37
.LBB125_38:                             # %for.end.138
                                        #   in Loop: Header=BB125_32 Depth=2
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rsi, %rbx
	callq	*1552(%rbp)
	movq	%rax, 152(%rsp)         # 8-byte Spill
	cmpl	$1, 140(%rsp)           # 4-byte Folded Reload
	jne	.LBB125_44
# BB#39:                                # %if.then.144
                                        #   in Loop: Header=BB125_32 Depth=2
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gx_default_encode_color
	cmpl	$4, 84(%rsp)            # 4-byte Folded Reload
	jg	.LBB125_44
# BB#40:                                # %if.then.144
                                        #   in Loop: Header=BB125_32 Depth=2
	cmpq	%rax, 152(%rsp)         # 8-byte Folded Reload
	je	.LBB125_44
# BB#41:                                # %if.then.151
                                        #   in Loop: Header=BB125_32 Depth=2
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rbp, %r13
	movq	24(%r13), %rdi
	movl	$.L.str.113, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r13), %rdi
	testl	%r12d, %r12d
	movl	%r12d, %ebp
	leaq	688(%rsp), %rbx
	jle	.LBB125_43
	.align	16, 0x90
.LBB125_42:                             # %for.body.158
                                        #   Parent Loop BB125_31 Depth=1
                                        #     Parent Loop BB125_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rbx), %edx
	movl	$.L.str.114, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r13), %rdi
	addq	$2, %rbx
	decl	%ebp
	jne	.LBB125_42
.LBB125_43:                             # %for.end.166
                                        #   in Loop: Header=BB125_32 Depth=2
	incl	84(%rsp)                # 4-byte Folded Spill
	movl	$.L.str.115, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%r13), %rdi
	movq	%r13, %rbp
	movl	$.L.str.116, %esi
	xorl	%eax, %eax
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	errprintf
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	40(%rsp), %r13          # 8-byte Reload
.LBB125_44:                             # %if.end.174
                                        #   in Loop: Header=BB125_32 Depth=2
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	leaq	560(%rsp), %rdx
	callq	*1560(%rdi)
	testl	%r12d, %r12d
	movl	$0, %eax
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	movq	96(%rsp), %r10          # 8-byte Reload
	leaq	736(%rsp), %r11
	jle	.LBB125_58
	.align	16, 0x90
.LBB125_45:                             # %for.body.181
                                        #   Parent Loop BB125_31 Depth=1
                                        #     Parent Loop BB125_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB125_51 Depth 4
                                        #         Child Loop BB125_55 Depth 4
	movzwl	560(%rsp,%rax,2), %edx
	movzwl	688(%rsp,%rax,2), %ecx
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	%r15d, %ecx
	jle	.LBB125_57
# BB#46:                                # %overflow.checked303
                                        #   in Loop: Header=BB125_45 Depth=3
	testq	%rbx, %rbx
	movl	$0, %ebp
	je	.LBB125_53
# BB#47:                                # %vector.body299.preheader
                                        #   in Loop: Header=BB125_45 Depth=3
	testq	%r10, %r10
	movl	$0, %edi
	jne	.LBB125_49
# BB#48:                                # %vector.body299.prol
                                        #   in Loop: Header=BB125_45 Depth=3
	movdqa	688(%rsp), %xmm0
	movdqa	704(%rsp), %xmm1
	movdqa	%xmm0, 432(%rsp)
	movdqa	%xmm1, 448(%rsp)
	movl	$16, %edi
.LBB125_49:                             # %vector.body299.preheader.split
                                        #   in Loop: Header=BB125_45 Depth=3
	testq	%r9, %r9
	movq	%rbx, %rbp
	je	.LBB125_53
# BB#50:                                # %vector.body299.preheader.split.split
                                        #   in Loop: Header=BB125_45 Depth=3
	movq	%rbx, %rdx
	subq	%rdi, %rdx
	leaq	(%r11,%rdi,2), %rsi
	leaq	480(%rsp), %rbp
	leaq	(%rbp,%rdi,2), %rdi
	.align	16, 0x90
.LBB125_51:                             # %vector.body299
                                        #   Parent Loop BB125_31 Depth=1
                                        #     Parent Loop BB125_32 Depth=2
                                        #       Parent Loop BB125_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movaps	-48(%rsi), %xmm0
	movaps	-32(%rsi), %xmm1
	movaps	%xmm0, -48(%rdi)
	movaps	%xmm1, -32(%rdi)
	movdqa	-16(%rsi), %xmm0
	movdqa	(%rsi), %xmm1
	movdqa	%xmm0, -16(%rdi)
	movdqa	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rdx
	jne	.LBB125_51
# BB#52:                                #   in Loop: Header=BB125_45 Depth=3
	movq	%rbx, %rbp
.LBB125_53:                             # %middle.block300
                                        #   in Loop: Header=BB125_45 Depth=3
	cmpq	%rbp, %r8
	je	.LBB125_56
# BB#54:                                # %for.body.199.preheader
                                        #   in Loop: Header=BB125_45 Depth=3
	leaq	688(%rsp,%rbp,2), %rdx
	leaq	432(%rsp,%rbp,2), %rsi
	movl	%r12d, %edi
	subl	%ebp, %edi
	.align	16, 0x90
.LBB125_55:                             # %for.body.199
                                        #   Parent Loop BB125_31 Depth=1
                                        #     Parent Loop BB125_32 Depth=2
                                        #       Parent Loop BB125_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movw	(%rdx), %bp
	movw	%bp, (%rsi)
	addq	$2, %rdx
	addq	$2, %rsi
	decl	%edi
	jne	.LBB125_55
.LBB125_56:                             #   in Loop: Header=BB125_45 Depth=3
	movl	%ecx, %r15d
.LBB125_57:                             # %for.inc.208
                                        #   in Loop: Header=BB125_45 Depth=3
	incq	%rax
	cmpl	%r12d, %eax
	jne	.LBB125_45
.LBB125_58:                             # %for.end.210
                                        #   in Loop: Header=BB125_32 Depth=2
	cmpl	$1, 140(%rsp)           # 4-byte Folded Reload
	jne	.LBB125_59
# BB#63:                                # %if.then.212
                                        #   in Loop: Header=BB125_32 Depth=2
	movq	%r8, %rbx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	leaq	560(%rsp), %rdx
	callq	gx_default_decode_color
	testl	%r12d, %r12d
	jle	.LBB125_59
# BB#64:                                # %overflow.checked269
                                        #   in Loop: Header=BB125_32 Depth=2
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	696(%rsp), %rcx
	leaq	568(%rsp), %rdx
	movdqa	%xmm0, %xmm1
	movl	$0, %edi
	pxor	%xmm6, %xmm6
	je	.LBB125_67
	.align	16, 0x90
.LBB125_65:                             # %vector.body265
                                        #   Parent Loop BB125_31 Depth=1
                                        #     Parent Loop BB125_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rdx), %xmm3         # xmm3 = mem[0],zero
	movq	(%rdx), %xmm2           # xmm2 = mem[0],zero
	punpcklwd	%xmm6, %xmm3    # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3]
	punpcklwd	%xmm6, %xmm2    # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	movq	-8(%rcx), %xmm4         # xmm4 = mem[0],zero
	movq	(%rcx), %xmm5           # xmm5 = mem[0],zero
	punpcklwd	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	punpcklwd	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	psubd	%xmm4, %xmm3
	psubd	%xmm5, %xmm2
	movdqa	%xmm3, %xmm4
	psrad	$31, %xmm4
	paddd	%xmm4, %xmm3
	pxor	%xmm4, %xmm3
	movdqa	%xmm2, %xmm4
	psrad	$31, %xmm4
	paddd	%xmm4, %xmm2
	pxor	%xmm4, %xmm2
	movdqa	%xmm3, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	%xmm2, %xmm5
	pcmpgtd	%xmm1, %xmm5
	pand	%xmm4, %xmm3
	pandn	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	por	%xmm3, %xmm0
	pand	%xmm5, %xmm2
	pandn	%xmm1, %xmm5
	movdqa	%xmm5, %xmm1
	por	%xmm2, %xmm1
	addq	$16, %rdx
	addq	$16, %rcx
	addq	$-8, %rax
	jne	.LBB125_65
# BB#66:                                #   in Loop: Header=BB125_32 Depth=2
	movq	72(%rsp), %rdi          # 8-byte Reload
.LBB125_67:                             # %middle.block266
                                        #   in Loop: Header=BB125_32 Depth=2
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm1, %eax
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm1, 160(%rsp)
	movd	%xmm0, %r14d
	testb	$1, 160(%rsp)
	cmovnel	%eax, %r14d
	cmpq	%rdi, %rbx
	movl	124(%rsp), %ebp         # 4-byte Reload
	leaq	688(%rsp), %rsi
	movq	128(%rsp), %r8          # 8-byte Reload
	je	.LBB125_70
# BB#68:                                # %for.body.218.preheader
                                        #   in Loop: Header=BB125_32 Depth=2
	leaq	560(%rsp,%rdi,2), %rax
	leaq	688(%rsp,%rdi,2), %rcx
	movl	%r12d, %edx
	subl	%edi, %edx
	.align	16, 0x90
.LBB125_69:                             # %for.body.218
                                        #   Parent Loop BB125_31 Depth=1
                                        #     Parent Loop BB125_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rax), %ebx
	movzwl	(%rcx), %edi
	subl	%edi, %ebx
	movl	%ebx, %edi
	negl	%edi
	cmovll	%ebx, %edi
	cmpl	%r14d, %edi
	cmovgel	%edi, %r14d
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB125_69
	jmp	.LBB125_70
	.align	16, 0x90
.LBB125_59:                             #   in Loop: Header=BB125_32 Depth=2
	movl	124(%rsp), %ebp         # 4-byte Reload
	leaq	688(%rsp), %rsi
	movq	128(%rsp), %r8          # 8-byte Reload
.LBB125_70:                             # %if.end.238
                                        #   in Loop: Header=BB125_32 Depth=2
	incl	176(%rsp)
	cmpl	%ebp, %r8d
	leal	1(%r8), %eax
	jne	.LBB125_32
.LBB125_71:                             # %for.end.243
                                        #   in Loop: Header=BB125_31 Depth=1
	movl	$0, 176(%rsp)
	cmpl	$2, %r12d
	movl	$1, %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	jl	.LBB125_75
	.align	16, 0x90
.LBB125_72:                             # %while.body.248
                                        #   Parent Loop BB125_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	176(%rsp,%rax,4), %ecx
	leal	1(%rcx), %edx
	movl	%edx, 176(%rsp,%rax,4)
	cmpl	%ebp, %ecx
	jl	.LBB125_73
# BB#74:                                # %if.then.256
                                        #   in Loop: Header=BB125_72 Depth=2
	movl	$0, 176(%rsp,%rax,4)
	incq	%rax
	cmpq	%rdi, %rax
	jl	.LBB125_72
.LBB125_75:                             # %while.end.266
	movl	140(%rsp), %ebp         # 4-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	24(%r13), %rdi
	cvtsi2ssl	%r15d, %xmm0
	divss	.LCPI125_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.118, %edx
	cmpl	%ebx, %r15d
	jle	.LBB125_77
# BB#76:                                # %cond.false.274
	leal	(%rbx,%rbx,2), %eax
	shrl	%eax
	cmpl	%eax, %r15d
	movl	$.L.str.119, %eax
	movl	$.L.str.120, %edx
	cmovleq	%rax, %rdx
.LBB125_77:                             # %cond.end.280
	movq	%rbx, %r15
	movl	$.L.str.117, %esi
	movb	$1, %al
	callq	errprintf
	cmpl	$1, %ebp
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	(%rsp), %rax            # 8-byte Reload
	jne	.LBB125_81
# BB#78:                                # %if.then.284
	movq	%rax, %rbp
	movq	24(%r13), %rdi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	divss	.LCPI125_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.118, %edx
	cmpl	%r15d, %r14d
	jle	.LBB125_80
# BB#79:                                # %cond.false.292
	leal	(%r15,%r15,2), %eax
	shrl	%eax
	cmpl	%eax, %r14d
	movl	$.L.str.119, %eax
	movl	$.L.str.120, %edx
	cmovleq	%rax, %rdx
.LBB125_80:                             # %cond.end.298
	movl	$.L.str.121, %esi
	movb	$1, %al
	callq	errprintf
	movq	%rbp, %rax
.LBB125_81:                             # %do.body
	movq	24(%rsp), %rbp          # 8-byte Reload
	decq	%rbp
	movq	%rbp, %rdx
	shlq	$4, %rdx
	movq	16(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rdx), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB125_83
# BB#82:                                # %if.then.307
	movl	%ebp, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB125_89
.LBB125_83:                             # %if.else.311
	movq	%rcx, (%rax)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB125_89
# BB#84:                                # %for.body.322.preheader
	xorl	%eax, %eax
	testb	$1, %r12b
	movl	$0, %esi
	je	.LBB125_86
# BB#85:                                # %for.body.322.prol
	subq	%rdx, %rcx
	movzwl	432(%rsp), %edx
	cvtsi2ssl	%edx, %xmm0
	divss	.LCPI125_0(%rip), %xmm0
	movss	%xmm0, 8(%rcx)
	movw	$4096, (%rcx)           # imm = 0x1000
	movl	$1, %esi
.LBB125_86:                             # %for.body.322.preheader.split
	cmpl	$1, %r12d
	je	.LBB125_89
# BB#87:                                # %for.body.322.preheader.split.split
	subl	%esi, %r12d
	leaq	2(%rsi,%rsi), %rdx
	leaq	1(%rsi), %rsi
	leaq	432(%rsp), %rcx
	orq	%rdx, %rcx
	shlq	$4, %rsi
	leaq	8(%rdi,%rsi), %rdx
	movss	.LCPI125_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB125_88:                             # %for.body.322
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -16(%rdx)
	movw	$4096, -24(%rdx)        # imm = 0x1000
	movzwl	(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	movw	$4096, -8(%rdx)         # imm = 0x1000
	addq	$4, %rcx
	addq	$32, %rdx
	addl	$-2, %r12d
	jne	.LBB125_88
.LBB125_89:                             # %cleanup
	addq	$824, %rsp              # imm = 0x338
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end125:
	.size	zcolor_test_all, .Lfunc_end125-zcolor_test_all
	.cfi_endproc

	.align	16, 0x90
	.type	zincludecolorspace,@function
zincludecolorspace:                     # @zincludecolorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp755:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp756:
	.cfi_def_cfa_offset 32
.Ltmp757:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB126_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	leaq	(%rsp), %rdx
	movq	%rax, %rsi
	callq	names_string_ref
	movq	(%rbx), %rdi
	movq	8(%rsp), %rsi
	movl	4(%rsp), %edx
	callq	gs_includecolorspace
	testl	%eax, %eax
	jne	.LBB126_4
# BB#3:                                 # %if.then.4
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	jmp	.LBB126_4
.LBB126_1:                              # %if.then
	movq	%rax, %rdi
	callq	check_type_failed
.LBB126_4:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end126:
	.size	zincludecolorspace, .Lfunc_end126-zincludecolorspace
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentgray,@function
zcurrentgray:                           # @zcurrentgray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp758:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp759:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp760:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp761:
	.cfi_def_cfa_offset 64
.Ltmp762:
	.cfi_offset %rbx, -32
.Ltmp763:
	.cfi_offset %r14, -24
.Ltmp764:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	leaq	16(%rsp), %rsi
	movq	%rsi, 8(%rsp)
	movups	176(%rax), %xmm0
	movaps	%xmm0, 16(%rsp)
	leaq	(%rsp), %r14
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB127_1:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB127_5
# BB#2:                                 # %if.end.i
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	(%rsp), %rax
	movq	16(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB127_5
# BB#3:                                 # %if.end.2.i
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB127_5
# BB#4:                                 # %do.cond.i
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	movl	$0, %eax
	jne	.LBB127_1
.LBB127_5:                              # %validate_spaces.exit
	testl	%eax, %eax
	js	.LBB127_11
# BB#6:                                 # %if.end
	movq	%rbx, %rdi
	callq	zcurrentcolor
	testl	%eax, %eax
	js	.LBB127_11
# BB#7:                                 # %if.end.4
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-112, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB127_10
# BB#8:                                 # %if.then.8
	leaq	520(%rbx), %r14
	movl	$7, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB127_11
# BB#9:                                 # %if.then.8.if.end.15_crit_edge
	movq	(%r14), %rax
.LBB127_10:                             # %if.end.15
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$0, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$0, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	$1, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	movq	$0, 72(%rax)
	movw	$2816, 64(%rax)         # imm = 0xB00
	movq	(%rbx), %rcx
	movq	16(%rcx), %rcx
	movups	176(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movq	520(%rbx), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$currentbasecolor_cont, 72(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB127_11:                             # %cleanup.116
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end127:
	.size	zcurrentgray, .Lfunc_end127-zcurrentgray
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI128_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	zsetgray,@function
zsetgray:                               # @zsetgray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp765:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp766:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp767:
	.cfi_def_cfa_offset 32
.Ltmp768:
	.cfi_offset %rbx, -24
.Ltmp769:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	4(%rsp), %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	float_params
	testl	%eax, %eax
	js	.LBB128_10
# BB#1:                                 # %if.end
	movss	4(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB128_3
# BB#2:                                 # %if.then.2
	movl	$0, 4(%rsp)
	jmp	.LBB128_5
.LBB128_3:                              # %if.else
	ucomiss	.LCPI128_0(%rip), %xmm0
	jbe	.LBB128_5
# BB#4:                                 # %if.then.4
	movl	$1065353216, 4(%rsp)    # imm = 0x3F800000
.LBB128_5:                              # %if.end.6
	leaq	4(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	make_floats
	testl	%eax, %eax
	js	.LBB128_10
# BB#6:                                 # %if.end.10
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	leaq	520(%r14), %rbx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB128_9
# BB#7:                                 # %if.then.16
	movl	$5, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB128_10
# BB#8:                                 # %if.then.16.if.end.23_crit_edge
	movq	(%rbx), %rax
.LBB128_9:                              # %if.end.23
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$0, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movq	$0, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	leaq	48(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$setdevicecolor_cont, 56(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB128_10:                             # %cleanup.84
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end128:
	.size	zsetgray, .Lfunc_end128-zsetgray
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrenthsbcolor,@function
zcurrenthsbcolor:                       # @zcurrenthsbcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp770:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp771:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp772:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp773:
	.cfi_def_cfa_offset 64
.Ltmp774:
	.cfi_offset %rbx, -32
.Ltmp775:
	.cfi_offset %r14, -24
.Ltmp776:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	leaq	16(%rsp), %rsi
	movq	%rsi, 8(%rsp)
	movups	176(%rax), %xmm0
	movaps	%xmm0, 16(%rsp)
	leaq	(%rsp), %r14
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB129_1:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB129_5
# BB#2:                                 # %if.end.i
                                        #   in Loop: Header=BB129_1 Depth=1
	movq	(%rsp), %rax
	movq	16(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB129_5
# BB#3:                                 # %if.end.2.i
                                        #   in Loop: Header=BB129_1 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB129_5
# BB#4:                                 # %do.cond.i
                                        #   in Loop: Header=BB129_1 Depth=1
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	movl	$0, %eax
	jne	.LBB129_1
.LBB129_5:                              # %validate_spaces.exit
	testl	%eax, %eax
	js	.LBB129_11
# BB#6:                                 # %if.end
	movq	%rbx, %rdi
	callq	zcurrentcolor
	testl	%eax, %eax
	js	.LBB129_11
# BB#7:                                 # %if.end.4
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-112, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB129_10
# BB#8:                                 # %if.then.8
	leaq	520(%rbx), %r14
	movl	$7, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB129_11
# BB#9:                                 # %if.then.8.if.end.15_crit_edge
	movq	(%r14), %rax
.LBB129_10:                             # %if.end.15
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$0, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$1, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	$1, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	movq	$0, 72(%rax)
	movw	$2816, 64(%rax)         # imm = 0xB00
	movq	(%rbx), %rcx
	movq	16(%rcx), %rcx
	movups	176(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movq	520(%rbx), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$currentbasecolor_cont, 72(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB129_11:                             # %cleanup.116
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end129:
	.size	zcurrenthsbcolor, .Lfunc_end129-zcurrenthsbcolor
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI130_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI130_1:
	.quad	4607182418800017408     # double 1
.LCPI130_2:
	.quad	4618441417868443648     # double 6
.LCPI130_3:
	.quad	-4619192017806338731    # double -0.66666666666666663
.LCPI130_4:
	.quad	4604180019048437077     # double 0.66666666666666663
.LCPI130_5:
	.quad	-4623695617433709227    # double -0.33333333333333331
.LCPI130_6:
	.quad	4599676419421066581     # double 0.33333333333333331
	.text
	.align	16, 0x90
	.type	zsethsbcolor,@function
zsethsbcolor:                           # @zsethsbcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp777:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp778:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp779:
	.cfi_def_cfa_offset 64
.Ltmp780:
	.cfi_offset %rbx, -24
.Ltmp781:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	28(%rsp), %rdx
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	float_params
	testl	%eax, %eax
	js	.LBB130_30
# BB#1:                                 # %for.cond.preheader
	movss	28(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm3, %xmm0
	jbe	.LBB130_3
# BB#2:                                 # %if.then.3
	movl	$0, 28(%rsp)
	xorps	%xmm3, %xmm3
	jmp	.LBB130_5
.LBB130_3:                              # %if.else
	ucomiss	.LCPI130_0(%rip), %xmm3
	jbe	.LBB130_5
# BB#4:                                 # %if.then.9
	movl	$1065353216, 28(%rsp)   # imm = 0x3F800000
	movss	.LCPI130_0(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
.LBB130_5:                              # %for.inc
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB130_6
# BB#31:                                # %if.then.3.1
	movl	$0, 32(%rsp)
	xorps	%xmm0, %xmm0
	jmp	.LBB130_32
.LBB130_6:                              # %if.else.1
	ucomiss	.LCPI130_0(%rip), %xmm0
	jbe	.LBB130_32
# BB#7:                                 # %if.then.9.1
	movl	$1065353216, 32(%rsp)   # imm = 0x3F800000
	movss	.LCPI130_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
.LBB130_32:                             # %for.inc.1
	movss	36(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm2, %xmm1
	jbe	.LBB130_33
# BB#35:                                # %if.then.3.2
	movl	$0, 36(%rsp)
	xorps	%xmm2, %xmm2
	jmp	.LBB130_36
.LBB130_33:                             # %if.else.2
	ucomiss	.LCPI130_0(%rip), %xmm2
	jbe	.LBB130_36
# BB#34:                                # %if.then.9.2
	movl	$1065353216, 36(%rsp)   # imm = 0x3F800000
	movss	.LCPI130_0(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
.LBB130_36:                             # %for.inc.2
	movss	%xmm2, 24(%rsp)         # 4-byte Spill
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI130_1(%rip), %xmm0 # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movsd	.LCPI130_2(%rip), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 16(%rsp)         # 4-byte Spill
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	mulsd	%xmm1, %xmm0
	movss	%xmm3, 12(%rsp)         # 4-byte Spill
	callq	floor
	movss	16(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	24(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	cvttsd2si	%xmm0, %ecx
	movss	20(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movd	%xmm3, %eax
	decl	%ecx
	cmpl	$5, %ecx
	ja	.LBB130_9
# BB#37:                                # %for.inc.2
	movsd	.LCPI130_1(%rip), %xmm1 # xmm1 = mem[0],zero
	movsd	(%rsp), %xmm6           # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm5
	jmpq	*.LJTI130_0(,%rcx,8)
.LBB130_10:                             # %sw.bb.23.i
	movaps	%xmm0, %xmm4
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm5, %xmm1
	movsd	.LCPI130_6(%rip), %xmm2 # xmm2 = mem[0],zero
	subsd	%xmm6, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm3, %xmm5
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movl	%eax, %edx
	movd	%xmm1, %eax
	movd	%xmm4, %ecx
	movaps	%xmm4, %xmm0
	movapd	%xmm1, %xmm3
	jmp	.LBB130_16
.LBB130_11:                             # %sw.bb.36.i
	movaps	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	addsd	.LCPI130_5(%rip), %xmm6
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm5, %xmm1
	mulsd	%xmm6, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movl	%eax, %edx
	movd	%xmm2, %eax
	movd	%xmm0, %ecx
	movaps	%xmm3, %xmm5
	movaps	%xmm2, %xmm3
	jmp	.LBB130_16
.LBB130_12:                             # %sw.bb.49.i
	movaps	%xmm0, %xmm4
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	movsd	.LCPI130_4(%rip), %xmm1 # xmm1 = mem[0],zero
	subsd	%xmm6, %xmm1
	cvtss2sd	%xmm5, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm2, %xmm5
	movl	%eax, %ecx
	movd	%xmm4, %eax
	movd	%xmm5, %edx
	movaps	%xmm3, %xmm0
	movaps	%xmm4, %xmm3
	jmp	.LBB130_16
.LBB130_13:                             # %sw.bb.62.i
	movaps	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	addsd	.LCPI130_3(%rip), %xmm6
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm5, %xmm1
	mulsd	%xmm6, %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movl	%eax, %ecx
	movd	%xmm1, %eax
	movd	%xmm2, %edx
	movaps	%xmm2, %xmm5
	movapd	%xmm1, %xmm3
	jmp	.LBB130_16
.LBB130_14:                             # %sw.bb.75.i
	movaps	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movapd	%xmm1, %xmm4
	subsd	%xmm6, %xmm4
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm5, %xmm1
	mulsd	%xmm4, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	jmp	.LBB130_15
.LBB130_8:                              # %sw.bb.i
	movl	$0, 28(%rsp)
	xorpd	%xmm1, %xmm1
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	movaps	%xmm5, %xmm2
.LBB130_9:                              # %sw.bb.16.i
	mulss	12(%rsp), %xmm2         # 4-byte Folded Reload
	addss	%xmm0, %xmm2
.LBB130_15:                             # %for.cond.preheader.i
	movd	%xmm2, %edx
	movd	%xmm0, %ecx
	movaps	%xmm2, %xmm5
.LBB130_16:                             # %for.cond.preheader.i
	xorl	%esi, %esi
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm3, %xmm1
	movl	$0, %edi
	ja	.LBB130_19
# BB#17:                                # %if.end.i
	ucomiss	.LCPI130_0(%rip), %xmm3
	movl	%eax, %edi
	jbe	.LBB130_19
# BB#18:                                # %if.then.98.i
	movl	$1065353216, %edi       # imm = 0x3F800000
.LBB130_19:                             # %if.end.101.i
	movl	%edi, 28(%rsp)
	ucomiss	%xmm5, %xmm1
	ja	.LBB130_22
# BB#20:                                # %if.end.1.i
	ucomiss	.LCPI130_0(%rip), %xmm5
	movl	%edx, %esi
	jbe	.LBB130_22
# BB#21:                                # %if.then.98.1.i
	movl	$1065353216, %esi       # imm = 0x3F800000
.LBB130_22:                             # %if.end.101.1.i
	movl	%esi, 32(%rsp)
	xorl	%eax, %eax
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB130_25
# BB#23:                                # %if.end.2.i
	ucomiss	.LCPI130_0(%rip), %xmm0
	movl	%ecx, %eax
	jbe	.LBB130_25
# BB#24:                                # %if.then.98.2.i
	movl	$1065353216, %eax       # imm = 0x3F800000
.LBB130_25:                             # %hsb2rgb.exit
	movl	%eax, 36(%rsp)
	addq	$-32, %rbx
	leaq	28(%rsp), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	make_floats
	testl	%eax, %eax
	js	.LBB130_30
# BB#26:                                # %if.end.19
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	leaq	520(%r14), %rbx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB130_29
# BB#27:                                # %if.then.25
	movl	$5, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB130_30
# BB#28:                                # %if.then.25.if.end.32_crit_edge
	movq	(%rbx), %rax
.LBB130_29:                             # %if.end.32
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$1, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movq	$0, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	leaq	48(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$setdevicecolor_cont, 56(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB130_30:                             # %cleanup.92
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end130:
	.size	zsethsbcolor, .Lfunc_end130-zsethsbcolor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI130_0:
	.quad	.LBB130_10
	.quad	.LBB130_11
	.quad	.LBB130_12
	.quad	.LBB130_13
	.quad	.LBB130_14
	.quad	.LBB130_8

	.text
	.align	16, 0x90
	.type	zcurrentrgbcolor,@function
zcurrentrgbcolor:                       # @zcurrentrgbcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp782:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp783:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp784:
	.cfi_def_cfa_offset 32
.Ltmp785:
	.cfi_offset %rbx, -24
.Ltmp786:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	callq	zcurrentcolor
	testl	%eax, %eax
	js	.LBB131_5
# BB#1:                                 # %if.end
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-112, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB131_4
# BB#2:                                 # %if.then.4
	leaq	520(%rbx), %r14
	movl	$7, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB131_5
# BB#3:                                 # %if.then.4.if.end.11_crit_edge
	movq	(%r14), %rax
.LBB131_4:                              # %if.end.11
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$0, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$2, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	$1, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	movq	$0, 72(%rax)
	movw	$2816, 64(%rax)         # imm = 0xB00
	movq	(%rbx), %rcx
	movq	16(%rcx), %rcx
	movups	176(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movq	520(%rbx), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$currentbasecolor_cont, 72(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB131_5:                              # %cleanup.107
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end131:
	.size	zcurrentrgbcolor, .Lfunc_end131-zcurrentrgbcolor
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI132_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	zsetrgbcolor,@function
zsetrgbcolor:                           # @zsetrgbcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp787:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp788:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp789:
	.cfi_def_cfa_offset 48
.Ltmp790:
	.cfi_offset %rbx, -24
.Ltmp791:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	12(%rsp), %rdx
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	float_params
	testl	%eax, %eax
	js	.LBB132_12
# BB#1:                                 # %for.cond.preheader
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB132_3
# BB#2:                                 # %if.then.3
	movl	$0, 12(%rsp)
	jmp	.LBB132_5
.LBB132_3:                              # %if.else
	ucomiss	.LCPI132_0(%rip), %xmm0
	jbe	.LBB132_5
# BB#4:                                 # %if.then.9
	movl	$1065353216, 12(%rsp)   # imm = 0x3F800000
.LBB132_5:                              # %for.inc
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB132_6
# BB#13:                                # %if.then.3.1
	movl	$0, 16(%rsp)
	jmp	.LBB132_14
.LBB132_6:                              # %if.else.1
	ucomiss	.LCPI132_0(%rip), %xmm0
	jbe	.LBB132_14
# BB#7:                                 # %if.then.9.1
	movl	$1065353216, 16(%rsp)   # imm = 0x3F800000
.LBB132_14:                             # %for.inc.1
	movss	20(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB132_15
# BB#17:                                # %if.then.3.2
	movl	$0, 20(%rsp)
	jmp	.LBB132_18
.LBB132_15:                             # %if.else.2
	ucomiss	.LCPI132_0(%rip), %xmm0
	jbe	.LBB132_18
# BB#16:                                # %if.then.9.2
	movl	$1065353216, 20(%rsp)   # imm = 0x3F800000
.LBB132_18:                             # %for.inc.2
	addq	$-32, %rbx
	leaq	12(%rsp), %rsi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	make_floats
	testl	%eax, %eax
	js	.LBB132_12
# BB#8:                                 # %if.end.18
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	leaq	520(%r14), %rbx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB132_11
# BB#9:                                 # %if.then.24
	movl	$5, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB132_12
# BB#10:                                # %if.then.24.if.end.31_crit_edge
	movq	(%rbx), %rax
.LBB132_11:                             # %if.end.31
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$1, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movq	$0, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	leaq	48(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$setdevicecolor_cont, 56(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB132_12:                             # %cleanup.91
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end132:
	.size	zsetrgbcolor, .Lfunc_end132-zsetrgbcolor
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentcmykcolor,@function
zcurrentcmykcolor:                      # @zcurrentcmykcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp792:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp793:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp794:
	.cfi_def_cfa_offset 32
.Ltmp795:
	.cfi_offset %rbx, -24
.Ltmp796:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	callq	zcurrentcolor
	testl	%eax, %eax
	js	.LBB133_5
# BB#1:                                 # %if.end
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-112, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB133_4
# BB#2:                                 # %if.then.4
	leaq	520(%rbx), %r14
	movl	$7, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB133_5
# BB#3:                                 # %if.then.4.if.end.11_crit_edge
	movq	(%r14), %rax
.LBB133_4:                              # %if.end.11
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$0, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$3, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	$1, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	movq	$0, 72(%rax)
	movw	$2816, 64(%rax)         # imm = 0xB00
	movq	(%rbx), %rcx
	movq	16(%rcx), %rcx
	movups	176(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movq	520(%rbx), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$currentbasecolor_cont, 72(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB133_5:                              # %cleanup.107
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end133:
	.size	zcurrentcmykcolor, .Lfunc_end133-zcurrentcmykcolor
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI134_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	zsetcmykcolor,@function
zsetcmykcolor:                          # @zsetcmykcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp797:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp798:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp799:
	.cfi_def_cfa_offset 48
.Ltmp800:
	.cfi_offset %rbx, -24
.Ltmp801:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	(%rsp), %rdx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	float_params
	testl	%eax, %eax
	js	.LBB134_12
# BB#1:                                 # %for.cond.preheader
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB134_3
# BB#2:                                 # %if.then.3
	movl	$0, (%rsp)
	jmp	.LBB134_5
.LBB134_3:                              # %if.else
	ucomiss	.LCPI134_0(%rip), %xmm0
	jbe	.LBB134_5
# BB#4:                                 # %if.then.9
	movl	$1065353216, (%rsp)     # imm = 0x3F800000
.LBB134_5:                              # %for.inc
	movss	4(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB134_6
# BB#13:                                # %if.then.3.1
	movl	$0, 4(%rsp)
	jmp	.LBB134_14
.LBB134_6:                              # %if.else.1
	ucomiss	.LCPI134_0(%rip), %xmm0
	jbe	.LBB134_14
# BB#7:                                 # %if.then.9.1
	movl	$1065353216, 4(%rsp)    # imm = 0x3F800000
.LBB134_14:                             # %for.inc.1
	movss	8(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB134_15
# BB#17:                                # %if.then.3.2
	movl	$0, 8(%rsp)
	jmp	.LBB134_18
.LBB134_15:                             # %if.else.2
	ucomiss	.LCPI134_0(%rip), %xmm0
	jbe	.LBB134_18
# BB#16:                                # %if.then.9.2
	movl	$1065353216, 8(%rsp)    # imm = 0x3F800000
.LBB134_18:                             # %for.inc.2
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB134_19
# BB#21:                                # %if.then.3.3
	movl	$0, 12(%rsp)
	jmp	.LBB134_22
.LBB134_19:                             # %if.else.3
	ucomiss	.LCPI134_0(%rip), %xmm0
	jbe	.LBB134_22
# BB#20:                                # %if.then.9.3
	movl	$1065353216, 12(%rsp)   # imm = 0x3F800000
.LBB134_22:                             # %for.inc.3
	addq	$-48, %rbx
	leaq	(%rsp), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	make_floats
	testl	%eax, %eax
	js	.LBB134_12
# BB#8:                                 # %if.end.18
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	leaq	520(%r14), %rbx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB134_11
# BB#9:                                 # %if.then.24
	movl	$5, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB134_12
# BB#10:                                # %if.then.24.if.end.31_crit_edge
	movq	(%rbx), %rax
.LBB134_11:                             # %if.end.31
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$colour_cleanup, 24(%rax)
	movq	(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$0, 4(%rax)
	movq	$2, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movq	$0, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	leaq	48(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$setdevicecolor_cont, 56(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB134_12:                             # %cleanup.91
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end134:
	.size	zsetcmykcolor, .Lfunc_end134-zsetcmykcolor
	.cfi_endproc

	.align	16, 0x90
	.type	zswapcolors,@function
zswapcolors:                            # @zswapcolors
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$120, %rsp
.Ltmp802:
	.cfi_def_cfa_offset 128
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	movups	256(%rax), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	240(%rax), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	176(%rax), %xmm0
	movups	192(%rax), %xmm1
	movups	208(%rax), %xmm2
	movups	224(%rax), %xmm3
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movups	352(%rax), %xmm0
	movups	%xmm0, 256(%rax)
	movups	336(%rax), %xmm0
	movups	%xmm0, 240(%rax)
	movups	272(%rax), %xmm0
	movups	288(%rax), %xmm1
	movups	304(%rax), %xmm2
	movups	320(%rax), %xmm3
	movups	%xmm3, 224(%rax)
	movups	%xmm2, 208(%rax)
	movups	%xmm1, 192(%rax)
	movups	%xmm0, 176(%rax)
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	movaps	96(%rsp), %xmm0
	movups	%xmm0, 352(%rax)
	movaps	80(%rsp), %xmm0
	movups	%xmm0, 336(%rax)
	movaps	16(%rsp), %xmm0
	movaps	32(%rsp), %xmm1
	movaps	48(%rsp), %xmm2
	movaps	64(%rsp), %xmm3
	movups	%xmm3, 320(%rax)
	movups	%xmm2, 304(%rax)
	movups	%xmm1, 288(%rax)
	movups	%xmm0, 272(%rax)
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	movups	368(%rax), %xmm0
	movaps	%xmm0, (%rsp)
	movups	384(%rax), %xmm0
	movups	%xmm0, 368(%rax)
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	movaps	(%rsp), %xmm0
	movups	%xmm0, 384(%rax)
	movq	(%rdi), %rdi
	callq	gs_swapcolors
	addq	$120, %rsp
	retq
.Lfunc_end135:
	.size	zswapcolors, .Lfunc_end135-zswapcolors
	.cfi_endproc

	.align	16, 0x90
	.type	setcolorspace_cont,@function
setcolorspace_cont:                     # @setcolorspace_cont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp803:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp804:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp805:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp806:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp807:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp808:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp809:
	.cfi_def_cfa_offset 112
.Ltmp810:
	.cfi_offset %rbx, -56
.Ltmp811:
	.cfi_offset %r12, -48
.Ltmp812:
	.cfi_offset %r13, -40
.Ltmp813:
	.cfi_offset %r14, -32
.Ltmp814:
	.cfi_offset %r15, -24
.Ltmp815:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	520(%r14), %rbp
	movq	520(%r14), %r13
	movl	-40(%r13), %eax
	movl	%eax, 12(%rsp)
	movq	-24(%r13), %rbx
	movl	-8(%r13), %eax
	movl	%eax, 20(%rsp)
	movq	536(%r14), %rax
	addq	$-16, %rax
	cmpq	%rax, %r13
	movq	%r13, %rax
	jbe	.LBB136_3
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB136_17
# BB#2:                                 # %if.then.if.end.22_crit_edge
	movq	(%rbp), %rax
.LBB136_3:                              # %if.end.22
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbp)
	movq	$setcolorspace_cont, 24(%rax)
	movq	(%rbp), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movslq	%ebx, %rbp
                                        # implicit-def: RBX
	jmp	.LBB136_4
.LBB136_15:                             # %if.then.70
                                        #   in Loop: Header=BB136_4 Depth=1
	movslq	%r15d, %rax
	movq	%rax, -24(%r13)
	movw	$2816, -32(%r13)        # imm = 0xB00
	leaq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	%r15, %rbp
	.align	16, 0x90
.LBB136_4:                              # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB136_5 Depth 2
                                        #       Child Loop BB136_7 Depth 3
	leaq	-1(%rbp), %r15
.LBB136_5:                              # %while.cond
                                        #   Parent Loop BB136_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB136_7 Depth 3
	testl	%ebp, %ebp
	je	.LBB136_16
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB136_5 Depth=2
	movups	(%r13), %xmm0
	movaps	%xmm0, 32(%rsp)
	testq	%rbp, %rbp
	movl	$0, %r12d
	jle	.LBB136_13
	.align	16, 0x90
.LBB136_7:                              # %for.body
                                        #   Parent Loop BB136_4 Depth=1
                                        #     Parent Loop BB136_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	24(%rsp), %rsi
	movq	%r14, %rdi
	leaq	(%rsp), %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB136_17
# BB#8:                                 # %if.end.45
                                        #   in Loop: Header=BB136_7 Depth=3
	cmpl	%r15d, %r12d
	jge	.LBB136_11
# BB#9:                                 # %if.then.48
                                        #   in Loop: Header=BB136_7 Depth=3
	movq	(%rsp), %rax
	movq	24(%rax), %rbx
	movl	$-20, %eax
	testq	%rbx, %rbx
	je	.LBB136_17
# BB#10:                                # %if.end.51
                                        #   in Loop: Header=BB136_7 Depth=3
	movq	24(%rsp), %rsi
	movq	%r14, %rdi
	leaq	24(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	*%rbx
	testl	%eax, %eax
	js	.LBB136_17
.LBB136_11:                             # %for.inc
                                        #   in Loop: Header=BB136_7 Depth=3
	incq	%r12
	cmpq	%rbp, %r12
	jl	.LBB136_7
# BB#12:                                # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB136_5 Depth=2
	movq	(%rsp), %rbx
.LBB136_13:                             # %for.end
                                        #   in Loop: Header=BB136_5 Depth=2
	movq	24(%rsp), %rsi
	movl	12(%rsp), %r8d
	movq	%r14, %rdi
	leaq	20(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	*8(%rbx)
	movslq	20(%rsp), %rcx
	movq	%rcx, -8(%r13)
	movw	$2816, -16(%r13)        # imm = 0xB00
	testl	%eax, %eax
	jne	.LBB136_17
# BB#14:                                # %if.end.68
                                        #   in Loop: Header=BB136_5 Depth=2
	cmpl	$0, 16(%rsp)
	jne	.LBB136_5
	jmp	.LBB136_15
.LBB136_16:                             # %if.then.79
	addq	$-80, 520(%r14)
	movq	624(%r14), %rax
	movq	(%r14), %rcx
	movq	16(%rcx), %rcx
	movups	(%rax), %xmm0
	movups	%xmm0, 176(%rcx)
	addq	$-16, 624(%r14)
	movl	$14, %eax
.LBB136_17:                             # %cleanup.93
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end136:
	.size	setcolorspace_cont, .Lfunc_end136-setcolorspace_cont
	.cfi_endproc

	.align	16, 0x90
	.type	setcolor_cont,@function
setcolor_cont:                          # @setcolor_cont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp816:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp817:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp818:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp819:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp820:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp821:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp822:
	.cfi_def_cfa_offset 128
.Ltmp823:
	.cfi_offset %rbx, -56
.Ltmp824:
	.cfi_offset %r12, -48
.Ltmp825:
	.cfi_offset %r13, -40
.Ltmp826:
	.cfi_offset %r14, -32
.Ltmp827:
	.cfi_offset %r15, -24
.Ltmp828:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	520(%rbx), %r15
	movl	$0, 36(%rsp)
	movl	$0, 20(%rsp)
	movl	-40(%r15), %eax
	movl	%eax, 24(%rsp)
	movq	-24(%r15), %r14
	movl	-8(%r15), %eax
	movl	%eax, 28(%rsp)
	movq	536(%rbx), %rax
	addq	$-16, %rax
	cmpq	%rax, %r15
	movq	%r15, %rax
	jbe	.LBB137_3
# BB#1:                                 # %if.then
	leaq	520(%rbx), %rbp
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB137_16
# BB#2:                                 # %if.then.if.end.20_crit_edge
	movq	(%rbp), %rax
.LBB137_3:                              # %if.end.20
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$setcolor_cont, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movslq	%r14d, %r12
	leaq	8(%rsp), %r13
	leaq	20(%rsp), %r14
                                        # implicit-def: RBP
.LBB137_4:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB137_5 Depth 2
	movups	(%r15), %xmm0
	movaps	%xmm0, 48(%rsp)
	movl	$0, 36(%rsp)
	testq	%r12, %r12
	js	.LBB137_12
	.align	16, 0x90
.LBB137_5:                              # %for.body
                                        #   Parent Loop BB137_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB137_16
# BB#6:                                 # %if.end.43
                                        #   in Loop: Header=BB137_5 Depth=2
	movslq	36(%rsp), %rax
	cmpq	%r12, %rax
	jge	.LBB137_10
# BB#7:                                 # %if.then.46
                                        #   in Loop: Header=BB137_5 Depth=2
	movq	8(%rsp), %rax
	movq	24(%rax), %rbp
	movl	$-20, %eax
	testq	%rbp, %rbp
	je	.LBB137_16
# BB#8:                                 # %if.end.48
                                        #   in Loop: Header=BB137_5 Depth=2
	movq	40(%rsp), %rsi
	movq	%rbx, %rdi
	leaq	40(%rsp), %rdx
	movq	%r14, %rcx
	callq	*%rbp
	testl	%eax, %eax
	js	.LBB137_16
# BB#9:                                 # %if.end.48.for.inc_crit_edge
                                        #   in Loop: Header=BB137_5 Depth=2
	movl	36(%rsp), %eax
.LBB137_10:                             # %for.inc
                                        #   in Loop: Header=BB137_5 Depth=2
	leal	1(%rax), %ecx
	movl	%ecx, 36(%rsp)
	cltq
	cmpq	%r12, %rax
	jl	.LBB137_5
# BB#11:                                # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB137_4 Depth=1
	movq	8(%rsp), %rbp
.LBB137_12:                             # %for.end
                                        #   in Loop: Header=BB137_4 Depth=1
	movq	64(%rbp), %rax
	testq	%rax, %rax
	je	.LBB137_15
# BB#13:                                # %if.then.57
                                        #   in Loop: Header=BB137_4 Depth=1
	movq	(%rbx), %rcx
	movq	16(%rcx), %rsi
	movl	$176, %ecx
	addq	%rcx, %rsi
	movq	%rbx, %rdi
	leaq	32(%rsp), %rdx
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %r8
	callq	*%rax
	movslq	24(%rsp), %rcx
	movq	%rcx, -40(%r15)
	movw	$2816, -48(%r15)        # imm = 0xB00
	movslq	28(%rsp), %rcx
	movq	%rcx, -8(%r15)
	movw	$2816, -16(%r15)        # imm = 0xB00
	testl	%eax, %eax
	jne	.LBB137_16
# BB#14:                                # %if.end.78
                                        #   in Loop: Header=BB137_4 Depth=1
	incq	%r12
	movslq	%r12d, %rax
	movq	%rax, -24(%r15)
	movw	$2816, -32(%r15)        # imm = 0xB00
	cmpl	$0, 32(%rsp)
	jne	.LBB137_4
.LBB137_15:                             # %while.end
	movq	40(%rsp), %rsi
	leaq	36(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*32(%rbp)
	movslq	36(%rsp), %rax
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	addq	$-80, 520(%rbx)
	movl	$14, %eax
.LBB137_16:                             # %cleanup.99
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end137:
	.size	setcolor_cont, .Lfunc_end137-setcolor_cont
	.cfi_endproc

	.align	16, 0x90
	.type	devicencolorants_cont,@function
devicencolorants_cont:                  # @devicencolorants_cont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp829:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp830:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp831:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp832:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp833:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp834:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp835:
	.cfi_def_cfa_offset 192
.Ltmp836:
	.cfi_offset %rbx, -56
.Ltmp837:
	.cfi_offset %r12, -48
.Ltmp838:
	.cfi_offset %r13, -40
.Ltmp839:
	.cfi_offset %r14, -32
.Ltmp840:
	.cfi_offset %r15, -24
.Ltmp841:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	520(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	520(%rbx), %r14
	movq	624(%rbx), %r15
	movl	-24(%r14), %r12d
	movl	-8(%r14), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movups	(%r14), %xmm0
	movaps	%xmm0, 80(%rsp)
	leaq	96(%rsp), %r13
	leaq	104(%rsp), %rbp
                                        # implicit-def: RAX
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB138_1:                              # %do.body.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB138_2 Depth 2
                                        #       Child Loop BB138_9 Depth 3
	movslq	%r12d, %r12
	.align	16, 0x90
.LBB138_2:                              # %do.body
                                        #   Parent Loop BB138_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB138_9 Depth 3
	leaq	80(%rsp), %rdi
	callq	dict_length
	cmpl	%eax, %r12d
	jae	.LBB138_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB138_2 Depth=2
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	jne	.LBB138_20
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB138_2 Depth=2
	movq	(%rbx), %rdi
	callq	gs_gsave
	testl	%eax, %eax
	js	.LBB138_30
# BB#6:                                 # %if.end.18
                                        #   in Loop: Header=BB138_2 Depth=2
	leaq	80(%rsp), %rdi
	movl	%r12d, %esi
	leaq	48(%rsp), %rdx
	callq	dict_index_entry
	testl	%eax, %eax
	js	.LBB138_7
# BB#8:                                 # %if.end.32
                                        #   in Loop: Header=BB138_2 Depth=2
	leaq	112(%rsp), %rax
	movq	%rax, %rcx
	movq	%rcx, 104(%rsp)
	leaq	64(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	%rcx, %rsi
	.align	16, 0x90
.LBB138_9:                              # %do.body.i
                                        #   Parent Loop BB138_1 Depth=1
                                        #     Parent Loop BB138_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB138_13
# BB#10:                                # %if.end.i
                                        #   in Loop: Header=BB138_9 Depth=3
	movq	96(%rsp), %rax
	movq	16(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB138_13
# BB#11:                                # %if.end.2.i
                                        #   in Loop: Header=BB138_9 Depth=3
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB138_13
# BB#12:                                # %do.cond.i
                                        #   in Loop: Header=BB138_9 Depth=3
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	movl	$0, %eax
	jne	.LBB138_9
.LBB138_13:                             # %validate_spaces.exit
                                        #   in Loop: Header=BB138_2 Depth=2
	testl	%eax, %eax
	js	.LBB138_14
# BB#15:                                # %if.end.50
                                        #   in Loop: Header=BB138_2 Depth=2
	movq	536(%rbx), %rax
	addq	$-16, %rax
	cmpq	%rax, 520(%rbx)
	jbe	.LBB138_17
# BB#16:                                # %if.then.59
                                        #   in Loop: Header=BB138_2 Depth=2
	movl	$1, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB138_30
.LBB138_17:                             # %do.body.68
                                        #   in Loop: Header=BB138_2 Depth=2
	addq	$16, %r15
	cmpq	640(%rbx), %r15
	ja	.LBB138_18
# BB#19:                                # %if.else
                                        #   in Loop: Header=BB138_2 Depth=2
	movq	%r15, 624(%rbx)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$devicencolorants_cont, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	$1, -8(%r14)
	movw	$2816, -16(%r14)        # imm = 0xB00
	leaq	64(%rsp), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%r15)
	movq	%rbx, %rdi
	callq	zsetcolorspace
	testl	%eax, %eax
	je	.LBB138_2
	jmp	.LBB138_30
.LBB138_7:                              # %if.then.22
                                        #   in Loop: Header=BB138_2 Depth=2
	incq	%r12
	movslq	%r12d, %rax
	movq	%rax, -24(%r14)
	movw	$2816, -32(%r14)        # imm = 0xB00
	movq	(%rbx), %rdi
	callq	gs_grestore
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	testl	%eax, %eax
	jns	.LBB138_2
	jmp	.LBB138_30
.LBB138_20:                             # %if.else.108
                                        #   in Loop: Header=BB138_1 Depth=1
	leaq	80(%rsp), %rdi
	movl	%r12d, %esi
	leaq	48(%rsp), %rdx
	callq	dict_index_entry
	testl	%eax, %eax
	jne	.LBB138_27
# BB#21:                                # %if.then.112
                                        #   in Loop: Header=BB138_1 Depth=1
	movzbl	49(%rsp), %ecx
	cmpl	$13, %ecx
	jne	.LBB138_22
# BB#25:                                # %sw.bb.130
                                        #   in Loop: Header=BB138_1 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	48(%rsp), %rsi
	jmp	.LBB138_26
.LBB138_22:                             # %if.then.112
                                        #   in Loop: Header=BB138_1 Depth=1
	movl	$-20, %eax
	cmpl	$18, %ecx
	jne	.LBB138_27
# BB#23:                                # %sw.bb
                                        #   in Loop: Header=BB138_1 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	48(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	names_from_string
	testl	%eax, %eax
	jne	.LBB138_27
# BB#24:                                # %if.then.122
                                        #   in Loop: Header=BB138_1 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	32(%rsp), %rsi
.LBB138_26:                             # %if.end.138
                                        #   in Loop: Header=BB138_1 Depth=1
	callq	names_index
	movl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
.LBB138_27:                             # %if.end.138
                                        #   in Loop: Header=BB138_1 Depth=1
	leal	1(%r12), %r12d
	movslq	%r12d, %rcx
	movq	%rcx, -24(%r14)
	movw	$2816, -32(%r14)        # imm = 0xB00
	movq	$0, -8(%r14)
	movw	$2816, -16(%r14)        # imm = 0xB00
	testl	%eax, %eax
	jne	.LBB138_29
# BB#28:                                # %if.then.152
                                        #   in Loop: Header=BB138_1 Depth=1
	movq	(%rbx), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	gs_attachattributecolorspace
.LBB138_29:                             # %if.end.155
                                        #   in Loop: Header=BB138_1 Depth=1
	movq	(%rbx), %rdi
	callq	gs_grestore
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	testl	%eax, %eax
	jns	.LBB138_1
	jmp	.LBB138_30
.LBB138_3:                              # %if.then
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	$-64, (%rax)
	movl	$14, %eax
	jmp	.LBB138_30
.LBB138_14:                             # %if.then.37
	shlq	$32, %r12
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%r12, %rax
	sarq	$32, %rax
	movq	%rax, -24(%r14)
	movw	$2816, -32(%r14)        # imm = 0xB00
	movq	(%rbx), %rdi
	callq	gs_grestore
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$5, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB138_30
.LBB138_18:                             # %if.then.75
	movl	$1, 688(%rbx)
	movl	$-16, %eax
.LBB138_30:                             # %cleanup.165
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end138:
	.size	devicencolorants_cont, .Lfunc_end138-devicencolorants_cont
	.cfi_endproc

	.align	16, 0x90
	.type	indexed_cont,@function
indexed_cont:                           # @indexed_cont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp842:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp843:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp844:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp845:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp846:
	.cfi_def_cfa_offset 48
.Ltmp847:
	.cfi_offset %rbx, -48
.Ltmp848:
	.cfi_offset %r12, -40
.Ltmp849:
	.cfi_offset %r13, -32
.Ltmp850:
	.cfi_offset %r14, -24
.Ltmp851:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	520(%r15), %r12
	movq	624(%r15), %r14
	movq	8(%r12), %r13
	testl	%r13d, %r13d
	js	.LBB139_4
# BB#1:                                 # %if.then
	movq	-56(%r12), %rbx
	movq	-40(%r12), %rax
	movl	%r13d, %edx
	imull	%ebx, %edx
	shlq	$32, %rdx
	sarq	$30, %rdx
	addq	48(%rax), %rdx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	float_params
	testl	%eax, %eax
	js	.LBB139_7
# BB#2:                                 # %if.end
	shlq	$32, %rbx
	sarq	$28, %rbx
	subq	%rbx, 624(%r15)
	cmpl	-8(%r12), %r13d
	jne	.LBB139_3
# BB#8:                                 # %if.then.26
	addq	$-80, 520(%r15)
	movl	$14, %eax
	jmp	.LBB139_7
.LBB139_3:
	subq	%rbx, %r14
.LBB139_4:                              # %do.body
	leaq	16(%r14), %rax
	cmpq	640(%r15), %rax
	jbe	.LBB139_6
# BB#5:                                 # %if.then.39
	movl	$1, 688(%r15)
	movl	$-16, %eax
	jmp	.LBB139_7
.LBB139_6:                              # %if.else
	movq	%rax, 624(%r15)
	shlq	$32, %r13
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%r13, %rax
	sarq	$32, %rax
	movq	%rax, 8(%r12)
	movq	%rax, 24(%r14)
	movw	$2816, 16(%r14)         # imm = 0xB00
	movq	$indexed_cont, 24(%r12)
	movw	$3968, 16(%r12)         # imm = 0xF80
	movl	$0, 20(%r12)
	movups	-32(%r12), %xmm0
	movups	%xmm0, 32(%r12)
	leaq	32(%r12), %rax
	movq	%rax, 520(%r15)
	movl	$5, %eax
.LBB139_7:                              # %cleanup.66
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end139:
	.size	indexed_cont, .Lfunc_end139-indexed_cont
	.cfi_endproc

	.align	16, 0x90
	.type	setdevicecolor_cont,@function
setdevicecolor_cont:                    # @setdevicecolor_cont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp852:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp853:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp854:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp855:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp856:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp857:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp858:
	.cfi_def_cfa_offset 64
.Ltmp859:
	.cfi_offset %rbx, -56
.Ltmp860:
	.cfi_offset %r12, -48
.Ltmp861:
	.cfi_offset %r13, -40
.Ltmp862:
	.cfi_offset %r14, -32
.Ltmp863:
	.cfi_offset %r15, -24
.Ltmp864:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	leaq	520(%rbx), %r14
	movq	520(%rbx), %r12
	movq	536(%rbx), %rax
	movl	-8(%r12), %r13d
	movl	8(%r12), %ebp
	addq	$-16, %rax
	cmpq	%rax, %r12
	jbe	.LBB140_1
# BB#2:                                 # %if.then
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB140_22
# BB#3:                                 # %if.then.if.end.17_crit_edge
	movq	624(%rbx), %rax
	jmp	.LBB140_4
.LBB140_1:                              # %entry.if.end.17_crit_edge
	movq	%r15, %rax
.LBB140_4:                              # %if.end.17
	movq	640(%rbx), %rcx
	subq	%rax, %rcx
	cmpq	$15, %rcx
	jle	.LBB140_5
# BB#6:                                 # %if.end.29
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$setdevicecolor_cont, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	jmp	.LBB140_7
	.align	16, 0x90
.LBB140_8:                              # %do.body
                                        #   in Loop: Header=BB140_7 Depth=1
	cmpl	$1, %ebp
	jne	.LBB140_9
# BB#20:                                # %sw.bb.87
                                        #   in Loop: Header=BB140_7 Depth=1
	movq	$2, 8(%r12)
	movw	$2816, (%r12)           # imm = 0xB00
	movq	%rbx, %rdi
	callq	zsetcolor
	movl	$2, %ebp
.LBB140_19:                             # %if.end.81
                                        #   in Loop: Header=BB140_7 Depth=1
	testl	%eax, %eax
	je	.LBB140_7
	jmp	.LBB140_22
	.align	16, 0x90
.LBB140_9:                              # %do.body
                                        #   in Loop: Header=BB140_7 Depth=1
	testl	%ebp, %ebp
	jne	.LBB140_7
# BB#10:                                # %sw.bb
                                        #   in Loop: Header=BB140_7 Depth=1
	movq	$1, 8(%r12)
	movw	$2816, (%r12)           # imm = 0xB00
	addq	$16, %r15
	cmpq	640(%rbx), %r15
	ja	.LBB140_5
# BB#11:                                # %if.else
                                        #   in Loop: Header=BB140_7 Depth=1
	movq	%r15, 624(%rbx)
	cmpl	$2, %r13d
	je	.LBB140_16
# BB#12:                                # %if.else
                                        #   in Loop: Header=BB140_7 Depth=1
	cmpl	$1, %r13d
	jne	.LBB140_13
# BB#15:                                # %sw.bb.66
                                        #   in Loop: Header=BB140_7 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.1, %esi
	jmp	.LBB140_17
.LBB140_16:                             # %sw.bb.72
                                        #   in Loop: Header=BB140_7 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.2, %esi
	jmp	.LBB140_17
.LBB140_13:                             # %if.else
                                        #   in Loop: Header=BB140_7 Depth=1
	testl	%r13d, %r13d
	jne	.LBB140_18
# BB#14:                                # %sw.bb.64
                                        #   in Loop: Header=BB140_7 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str, %esi
.LBB140_17:                             # %sw.epilog
                                        #   in Loop: Header=BB140_7 Depth=1
	movq	%r15, %rdx
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB140_22
.LBB140_18:                             # %if.end.81
                                        #   in Loop: Header=BB140_7 Depth=1
	movq	%rbx, %rdi
	callq	zsetcolorspace
	movl	$1, %ebp
	jmp	.LBB140_19
	.align	16, 0x90
.LBB140_7:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, %ebp
	jne	.LBB140_8
# BB#21:                                # %sw.bb.99
	addq	$-48, (%r14)
	movl	$14, %eax
	jmp	.LBB140_22
.LBB140_5:                              # %if.then.26
	movl	$1, 688(%rbx)
	movl	$-16, %eax
.LBB140_22:                             # %cleanup.107
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end140:
	.size	setdevicecolor_cont, .Lfunc_end140-setdevicecolor_cont
	.cfi_endproc

	.align	16, 0x90
	.type	currentbasecolor_cont,@function
currentbasecolor_cont:                  # @currentbasecolor_cont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp865:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp866:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp867:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp868:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp869:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp870:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp871:
	.cfi_def_cfa_offset 128
.Ltmp872:
	.cfi_offset %rbx, -56
.Ltmp873:
	.cfi_offset %r12, -48
.Ltmp874:
	.cfi_offset %r13, -40
.Ltmp875:
	.cfi_offset %r14, -32
.Ltmp876:
	.cfi_offset %r15, -24
.Ltmp877:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	48(%rsp), %rbp
	movq	%rbp, 40(%rsp)
	leaq	520(%rbx), %rdx
	movq	520(%rbx), %r15
	movl	$1, 32(%rsp)
	movl	$0, 24(%rsp)
	movl	-56(%r15), %eax
	movl	%eax, 28(%rsp)
	movl	-40(%r15), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	-24(%r15), %r14
	movl	-8(%r15), %eax
	movl	%eax, 36(%rsp)
	movq	536(%rbx), %rax
	addq	$-16, %rax
	cmpq	%rax, %r15
	movq	%r15, %rax
	jbe	.LBB141_3
# BB#1:                                 # %if.then
	movq	%rbp, %r12
	movl	$1, %esi
	movq	%rdx, %rdi
	movq	%rdi, %rbp
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB141_18
# BB#2:                                 # %if.then.if.end.24_crit_edge
	movq	%rbp, %rdx
	movq	(%rdx), %rax
	movq	%r12, %rbp
.LBB141_3:                              # %if.end.24
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	$currentbasecolor_cont, 24(%rax)
	movq	(%rdx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	cmpl	$0, 32(%rsp)
	je	.LBB141_17
# BB#4:                                 # %while.body.lr.ph
	movq	%rdx, (%rsp)            # 8-byte Spill
	movslq	%r14d, %r13
                                        # implicit-def: R14
.LBB141_5:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB141_8 Depth 2
	movups	(%r15), %xmm0
	movaps	%xmm0, 48(%rsp)
	movq	%rbp, 40(%rsp)
	testq	%r13, %r13
	movq	%rbp, %rsi
	jle	.LBB141_14
# BB#6:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB141_5 Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	leaq	16(%rsp), %rdx
	callq	get_space_object
	testl	%eax, %eax
	js	.LBB141_18
# BB#7:                                 #   in Loop: Header=BB141_5 Depth=1
	leaq	-1(%r13), %r12
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB141_8:                              # %if.end.47
                                        #   Parent Loop BB141_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r12, %r14
	jge	.LBB141_11
# BB#9:                                 # %if.then.50
                                        #   in Loop: Header=BB141_8 Depth=2
	movq	16(%rsp), %rax
	movq	24(%rax), %rbp
	movl	$-20, %eax
	testq	%rbp, %rbp
	je	.LBB141_18
# BB#10:                                # %if.end.53
                                        #   in Loop: Header=BB141_8 Depth=2
	movq	40(%rsp), %rsi
	movq	%rbx, %rdi
	leaq	40(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	*%rbp
	testl	%eax, %eax
	js	.LBB141_18
.LBB141_11:                             # %for.inc
                                        #   in Loop: Header=BB141_8 Depth=2
	incq	%r14
	cmpq	%r13, %r14
	jge	.LBB141_13
# BB#12:                                # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB141_8 Depth=2
	movq	40(%rsp), %rsi
	movq	%rbx, %rdi
	leaq	16(%rsp), %rdx
	callq	get_space_object
	testl	%eax, %eax
	jns	.LBB141_8
	jmp	.LBB141_18
	.align	16, 0x90
.LBB141_13:                             # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB141_5 Depth=1
	movq	16(%rsp), %r14
	movq	40(%rsp), %rsi
	leaq	48(%rsp), %rbp
.LBB141_14:                             # %for.end
                                        #   in Loop: Header=BB141_5 Depth=1
	movq	%rbx, %rdi
	movl	12(%rsp), %edx          # 4-byte Reload
	leaq	36(%rsp), %rcx
	leaq	32(%rsp), %r8
	leaq	28(%rsp), %r9
	callq	*56(%r14)
	movslq	28(%rsp), %rcx
	movq	%rcx, -56(%r15)
	movw	$2816, -64(%r15)        # imm = 0xB00
	movslq	36(%rsp), %rcx
	movq	%rcx, -8(%r15)
	movw	$2816, -16(%r15)        # imm = 0xB00
	testl	%eax, %eax
	jne	.LBB141_18
# BB#15:                                # %if.end.79
                                        #   in Loop: Header=BB141_5 Depth=1
	incq	%r13
	movslq	%r13d, %rax
	movq	%rax, -24(%r15)
	movw	$2816, -32(%r15)        # imm = 0xB00
	cmpl	$0, 32(%rsp)
	jne	.LBB141_5
# BB#16:                                # %while.cond.if.then.90_crit_edge
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	(%rdx), %rax
.LBB141_17:                             # %if.then.90
	addq	$-112, %rax
	movq	%rax, (%rdx)
	movl	$14, %eax
.LBB141_18:                             # %cleanup.96
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end141:
	.size	currentbasecolor_cont, .Lfunc_end141-currentbasecolor_cont
	.cfi_endproc

	.align	16, 0x90
	.type	setcolorspace_nosubst,@function
setcolorspace_nosubst:                  # @setcolorspace_nosubst
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp878:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp879:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp880:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp881:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp882:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp883:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp884:
	.cfi_def_cfa_offset 112
.Ltmp885:
	.cfi_offset %rbx, -56
.Ltmp886:
	.cfi_offset %r12, -48
.Ltmp887:
	.cfi_offset %r13, -40
.Ltmp888:
	.cfi_offset %r14, -32
.Ltmp889:
	.cfi_offset %r15, -24
.Ltmp890:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rcx
	movl	$-17, %ebp
	cmpq	632(%rbx), %rcx
	jb	.LBB142_14
# BB#1:                                 # %if.end
	movzbl	1(%rcx), %eax
	cmpl	$13, %eax
	je	.LBB142_3
# BB#2:                                 # %if.then.7
	movzwl	(%rcx), %eax
	andl	$15360, %eax            # imm = 0x3C00
	movl	$-20, %ebp
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB142_14
.LBB142_3:                              # %if.end.15
	leaq	520(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	32(%rsp), %rsi
	movq	%rsi, 24(%rsp)
	movups	(%rcx), %xmm0
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movaps	%xmm0, 32(%rsp)
	xorl	%r13d, %r13d
	movl	$1, %r14d
	leaq	16(%rsp), %r15
	leaq	24(%rsp), %r12
	.align	16, 0x90
.LBB142_4:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	get_space_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB142_9
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB142_4 Depth=1
	incl	%r13d
	movq	16(%rsp), %rax
	movq	16(%rax), %rcx
	xorl	%ebp, %ebp
	testq	%rcx, %rcx
	je	.LBB142_9
# BB#6:                                 # %if.end.2.i
                                        #   in Loop: Header=BB142_4 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB142_7
# BB#8:                                 # %do.cond.i
                                        #   in Loop: Header=BB142_4 Depth=1
	movq	24(%rsp), %rsi
	incl	%r14d
	testq	%rsi, %rsi
	jne	.LBB142_4
	jmp	.LBB142_9
.LBB142_7:
	movl	%r14d, %r13d
	movl	%eax, %ebp
.LBB142_9:                              # %validate_spaces.exit
	testl	%ebp, %ebp
	movq	8(%rsp), %r14           # 8-byte Reload
	js	.LBB142_14
# BB#10:                                # %if.end.19
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB142_13
# BB#11:                                # %if.then.28
	movl	$5, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB142_14
# BB#12:                                # %if.then.28.if.end.36_crit_edge
	movq	(%rsp), %rax            # 8-byte Reload
	movq	(%rax), %rax
.LBB142_13:                             # %if.end.36
	movq	$1, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movslq	%r13d, %rcx
	movq	%rcx, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	$0, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	leaq	64(%rax), %rcx
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%rcx, (%rdx)
	movups	(%r14), %xmm0
	movups	%xmm0, 64(%rax)
	movq	(%rdx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	$setcolorspace_cont, 24(%rax)
	movq	(%rdx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %ebp
.LBB142_14:                             # %cleanup.80
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end142:
	.size	setcolorspace_nosubst, .Lfunc_end142-setcolorspace_nosubst
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI143_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI143_1:
	.quad	4618441417868443648     # double 6
.LCPI143_2:
	.quad	4604180019048437077     # double 0.66666666666666663
.LCPI143_3:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI143_4:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	rgb2hsb,@function
rgb2hsb:                                # @rgb2hsb
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%r8d, %r8d
	xorps	%xmm9, %xmm9
	ucomiss	%xmm9, %xmm2
	movd	%xmm2, %ecx
	cmovbel	%r8d, %ecx
	movaps	%xmm2, %xmm4
	maxss	%xmm9, %xmm4
	ucomiss	%xmm4, %xmm0
	movd	%xmm0, %edx
	cmovbel	%ecx, %edx
	movaps	%xmm0, %xmm7
	maxss	%xmm4, %xmm7
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm7, %xmm3
	movd	%xmm3, %ecx
	cmovbel	%edx, %ecx
	movaps	%xmm3, %xmm6
	maxss	%xmm7, %xmm6
	ucomiss	%xmm9, %xmm6
	xorps	%xmm5, %xmm5
	movl	$0, %edx
	movl	$0, %esi
	jne	.LBB143_1
	jnp	.LBB143_18
.LBB143_1:                              # %if.then.23
	movaps	%xmm2, %xmm5
	minss	.LCPI143_0(%rip), %xmm5
	movaps	%xmm0, %xmm1
	minss	%xmm5, %xmm1
	ucomiss	%xmm4, %xmm0
	seta	%dl
	ucomiss	%xmm7, %xmm3
	movzbl	%dl, %edx
	movl	$2, %esi
	cmovbel	%edx, %esi
	movaps	%xmm3, %xmm5
	minss	%xmm1, %xmm5
	movaps	%xmm6, %xmm4
	subss	%xmm5, %xmm4
	movaps	%xmm4, %xmm5
	divss	%xmm6, %xmm5
	movd	%xmm5, %edx
	cmpl	$2, %esi
	je	.LBB143_14
# BB#2:                                 # %if.then.23
	cmpl	$1, %esi
	jne	.LBB143_3
# BB#13:                                # %sw.bb.52
	movaps	%xmm3, %xmm1
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm7
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	mulsd	.LCPI143_1(%rip), %xmm1
	divsd	%xmm1, %xmm7
	addsd	.LCPI143_3(%rip), %xmm7
	jmp	.LBB143_15
.LBB143_14:                             # %sw.bb.63
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm7
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	mulsd	.LCPI143_1(%rip), %xmm1
	divsd	%xmm1, %xmm7
	addsd	.LCPI143_2(%rip), %xmm7
.LBB143_15:                             # %for.cond.75.preheader
	xorps	%xmm4, %xmm4
	cvtsd2ss	%xmm7, %xmm4
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm4, %xmm1
	ja	.LBB143_17
# BB#16:
	movd	%xmm4, %esi
	jmp	.LBB143_18
.LBB143_3:                              # %if.then.23
	testl	%esi, %esi
	jne	.LBB143_17
# BB#4:                                 # %sw.bb
	movaps	%xmm0, %xmm1
	subss	%xmm3, %xmm1
	cvtss2sd	%xmm1, %xmm8
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm4
	jne	.LBB143_5
	jnp	.LBB143_9
.LBB143_5:                              # %if.then.27
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	mulsd	.LCPI143_1(%rip), %xmm1
	divsd	%xmm1, %xmm8
	ucomiss	%xmm0, %xmm3
	ja	.LBB143_6
# BB#7:                                 # %if.then.27
	xorps	%xmm7, %xmm7
	addsd	%xmm8, %xmm7
	jmp	.LBB143_15
.LBB143_17:                             # %if.then.83
	xorl	%esi, %esi
.LBB143_18:                             # %if.end.86
	movss	.LCPI143_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	movl	$1065353216, %eax       # imm = 0x3F800000
	cmoval	%eax, %esi
	movl	%esi, (%rdi)
	ucomiss	%xmm5, %xmm9
	cmoval	%r8d, %edx
	ucomiss	%xmm1, %xmm0
	cmoval	%eax, %edx
	movl	%edx, 4(%rdi)
	ucomiss	%xmm6, %xmm9
	cmoval	%r8d, %ecx
	ucomiss	%xmm1, %xmm3
	cmoval	%eax, %ecx
	movl	%ecx, 8(%rdi)
	retq
.LBB143_9:                              # %if.else
	ucomiss	%xmm0, %xmm3
	ja	.LBB143_10
# BB#11:                                # %if.else
	xorps	%xmm4, %xmm4
	jmp	.LBB143_12
.LBB143_6:
	movsd	.LCPI143_4(%rip), %xmm7 # xmm7 = mem[0],zero
	addsd	%xmm8, %xmm7
	jmp	.LBB143_15
.LBB143_10:
	movsd	.LCPI143_4(%rip), %xmm4 # xmm4 = mem[0],zero
.LBB143_12:                             # %if.else
	addsd	%xmm4, %xmm8
	movapd	%xmm8, %xmm7
	jmp	.LBB143_15
.Lfunc_end143:
	.size	rgb2hsb, .Lfunc_end143-rgb2hsb
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI144_0:
	.long	3323740160              # float -1.0E+4
.LCPI144_1:
	.long	1176256512              # float 1.0E+4
.LCPI144_2:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	checkWhitePoint,@function
checkWhitePoint:                        # @checkWhitePoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp891:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp892:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp893:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp894:
	.cfi_def_cfa_offset 64
.Ltmp895:
	.cfi_offset %rbx, -32
.Ltmp896:
	.cfi_offset %r14, -24
.Ltmp897:
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdx
	movl	$.L.str.59, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB144_14
# BB#1:                                 # %if.end
	movl	$-21, %eax
	je	.LBB144_14
# BB#2:                                 # %lor.lhs.false
	movq	8(%rsp), %r15
	movzbl	1(%r15), %ecx
	cmpl	$14, %ecx
	je	.LBB144_14
# BB#3:                                 # %if.end.5
	movzwl	(%r15), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB144_14
# BB#4:                                 # %if.end.12
	movl	$-15, %eax
	cmpl	$3, 4(%r15)
	jne	.LBB144_14
# BB#5:                                 # %if.end.17
	movq	8(%rbx), %r14
	leaq	16(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB144_14
# BB#6:                                 # %if.end.i
	movzbl	17(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB144_7
# BB#10:                                # %if.then.15.i
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB144_11
.LBB144_7:                              # %if.end.i
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB144_8
# BB#9:                                 # %if.then.6.i
	cvtsi2ssq	24(%rsp), %xmm0
.LBB144_11:                             # %if.end.21.i
	movss	.LCPI144_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB144_13
# BB#12:                                # %if.end.21.i
	ucomiss	.LCPI144_1(%rip), %xmm0
	ja	.LBB144_13
# BB#15:                                # %for.cond.i
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	leaq	16(%rsp), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB144_14
# BB#16:                                # %if.end.i.1
	movzbl	17(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB144_17
# BB#20:                                # %if.then.6.i.1
	cvtsi2ssq	24(%rsp), %xmm1
	movss	.LCPI144_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB144_21
.LBB144_8:
	movl	$-20, %eax
	jmp	.LBB144_14
.LBB144_17:                             # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	movss	.LCPI144_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jne	.LBB144_18
# BB#19:                                # %if.then.15.i.1
	movss	24(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB144_21:                             # %if.end.21.i.1
	ucomiss	%xmm1, %xmm0
	ja	.LBB144_13
# BB#22:                                # %if.end.21.i.1
	ucomiss	.LCPI144_1(%rip), %xmm1
	ja	.LBB144_13
# BB#23:                                # %for.cond.i.1
	movss	%xmm1, (%rsp)           # 4-byte Spill
	leaq	16(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB144_14
# BB#24:                                # %if.end.i.2
	movzbl	17(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB144_25
# BB#27:                                # %if.then.6.i.2
	cvtsi2ssq	24(%rsp), %xmm0
	jmp	.LBB144_28
.LBB144_18:
	movl	$-20, %eax
	jmp	.LBB144_14
.LBB144_25:                             # %if.end.i.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB144_14
# BB#26:                                # %if.then.15.i.2
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB144_28:                             # %if.end.21.i.2
	movss	.LCPI144_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB144_13
# BB#29:                                # %if.end.21.i.2
	ucomiss	.LCPI144_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB144_14
# BB#30:                                # %for.cond.i.2
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	$-15, %ecx
	cmoval	%ecx, %eax
	movss	(%rsp), %xmm0           # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI144_2(%rip), %xmm0
	cmovnel	%ecx, %eax
	cmovpl	%ecx, %eax
	ucomiss	4(%rsp), %xmm1          # 4-byte Folded Reload
	cmoval	%ecx, %eax
	jmp	.LBB144_14
.LBB144_13:
	movl	$-13, %eax
.LBB144_14:                             # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end144:
	.size	checkWhitePoint, .Lfunc_end144-checkWhitePoint
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI145_0:
	.long	3323740160              # float -1.0E+4
.LCPI145_1:
	.long	1176256512              # float 1.0E+4
	.text
	.align	16, 0x90
	.type	checkRangeLMN,@function
checkRangeLMN:                          # @checkRangeLMN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp898:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp899:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp900:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp901:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp902:
	.cfi_def_cfa_offset 96
.Ltmp903:
	.cfi_offset %rbx, -40
.Ltmp904:
	.cfi_offset %r14, -32
.Ltmp905:
	.cfi_offset %r15, -24
.Ltmp906:
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	leaq	32(%rsp), %rdx
	movl	$.L.str.60, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB145_14
# BB#1:                                 # %land.lhs.true
	movq	32(%rsp), %r14
	movzbl	1(%r14), %eax
	cmpl	$14, %eax
	je	.LBB145_14
# BB#2:                                 # %if.then
	movzwl	(%r14), %eax
	andl	$15360, %eax            # imm = 0x3C00
	movl	$-20, %ebp
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB145_15
# BB#3:                                 # %if.end
	movl	$-15, %ebp
	cmpl	$6, 4(%r14)
	jne	.LBB145_15
# BB#4:                                 # %if.end.13
	movq	8(%rbx), %r15
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB145_13
# BB#5:                                 # %if.end.i
	movzbl	41(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB145_6
# BB#9:                                 # %if.then.15.i
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB145_10
.LBB145_6:                              # %if.end.i
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB145_7
# BB#8:                                 # %if.then.6.i
	cvtsi2ssq	48(%rsp), %xmm0
.LBB145_10:                             # %if.end.21.i
	movss	.LCPI145_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB145_12
# BB#11:                                # %if.end.21.i
	ucomiss	.LCPI145_1(%rip), %xmm0
	ja	.LBB145_12
# BB#16:                                # %for.cond.i
	movss	%xmm0, 28(%rsp)         # 4-byte Spill
	leaq	40(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB145_13
# BB#17:                                # %if.end.i.1
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI145_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jne	.LBB145_18
# BB#21:                                # %if.then.6.i.1
	cvtsi2ssq	48(%rsp), %xmm1
	jmp	.LBB145_22
.LBB145_7:
	movl	$-20, %eax
	movl	%eax, %ebp
	jmp	.LBB145_15
.LBB145_18:                             # %if.end.i.1
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB145_19
# BB#20:                                # %if.then.15.i.1
	movss	48(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB145_22:                             # %if.end.21.i.1
	ucomiss	%xmm1, %xmm0
	ja	.LBB145_12
# BB#23:                                # %if.end.21.i.1
	ucomiss	.LCPI145_1(%rip), %xmm1
	ja	.LBB145_12
# BB#24:                                # %for.cond.i.1
	movss	%xmm1, 24(%rsp)         # 4-byte Spill
	leaq	40(%rsp), %rcx
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB145_13
# BB#25:                                # %if.end.i.2
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI145_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jne	.LBB145_26
# BB#29:                                # %if.then.6.i.2
	cvtsi2ssq	48(%rsp), %xmm1
	jmp	.LBB145_30
.LBB145_19:
	movl	$-20, %eax
	movl	%eax, %ebp
	jmp	.LBB145_15
.LBB145_26:                             # %if.end.i.2
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB145_27
# BB#28:                                # %if.then.15.i.2
	movss	48(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB145_30:                             # %if.end.21.i.2
	ucomiss	%xmm1, %xmm0
	ja	.LBB145_12
# BB#31:                                # %if.end.21.i.2
	ucomiss	.LCPI145_1(%rip), %xmm1
	ja	.LBB145_12
# BB#32:                                # %for.cond.i.2
	movss	%xmm1, 20(%rsp)         # 4-byte Spill
	leaq	40(%rsp), %rcx
	movl	$3, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB145_13
# BB#33:                                # %if.end.i.3
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	movss	.LCPI145_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jne	.LBB145_34
# BB#37:                                # %if.then.6.i.3
	cvtsi2ssq	48(%rsp), %xmm1
	jmp	.LBB145_38
.LBB145_27:
	movl	$-20, %eax
	movl	%eax, %ebp
	jmp	.LBB145_15
.LBB145_34:                             # %if.end.i.3
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB145_35
# BB#36:                                # %if.then.15.i.3
	movss	48(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB145_38:                             # %if.end.21.i.3
	ucomiss	%xmm1, %xmm0
	ja	.LBB145_12
# BB#39:                                # %if.end.21.i.3
	ucomiss	.LCPI145_1(%rip), %xmm1
	movss	%xmm1, 16(%rsp)         # 4-byte Spill
	ja	.LBB145_12
# BB#40:                                # %for.cond.i.3
	leaq	40(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB145_13
# BB#41:                                # %if.end.i.4
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB145_42
# BB#45:                                # %if.then.6.i.4
	cvtsi2ssq	48(%rsp), %xmm1
	jmp	.LBB145_46
.LBB145_35:
	movl	$-20, %eax
	movl	%eax, %ebp
	jmp	.LBB145_15
.LBB145_42:                             # %if.end.i.4
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB145_43
# BB#44:                                # %if.then.15.i.4
	movss	48(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
.LBB145_46:                             # %if.end.21.i.4
	movss	.LCPI145_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB145_12
# BB#47:                                # %if.end.21.i.4
	ucomiss	.LCPI145_1(%rip), %xmm1
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	ja	.LBB145_12
# BB#48:                                # %for.cond.i.4
	leaq	40(%rsp), %rcx
	movl	$5, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB145_13
# BB#49:                                # %if.end.i.5
	movzbl	41(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB145_50
# BB#52:                                # %if.then.6.i.5
	cvtsi2ssq	48(%rsp), %xmm0
	jmp	.LBB145_53
.LBB145_43:
	movl	$-20, %eax
	movl	%eax, %ebp
	jmp	.LBB145_15
.LBB145_50:                             # %if.end.i.5
	movzbl	%al, %eax
	cmpl	$16, %eax
	movl	$-20, %eax
	jne	.LBB145_13
# BB#51:                                # %if.then.15.i.5
	movss	48(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
.LBB145_53:                             # %if.end.21.i.5
	movss	.LCPI145_0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB145_12
# BB#54:                                # %if.end.21.i.5
	ucomiss	.LCPI145_1(%rip), %xmm0
	movl	$-13, %eax
	ja	.LBB145_13
# BB#55:                                # %for.cond.i.5
	movss	28(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	24(%rsp), %xmm1         # 4-byte Folded Reload
	ja	.LBB145_15
# BB#56:                                # %for.cond.i.5
	movss	20(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	16(%rsp), %xmm1         # 4-byte Folded Reload
	ja	.LBB145_15
# BB#57:                                # %for.cond.i.5
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB145_15
.LBB145_14:                             # %if.end.34
	xorl	%ebp, %ebp
.LBB145_15:                             # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB145_12:
	movl	$-13, %eax
.LBB145_13:                             # %get_cie_param_array.exit.thread
	movl	%eax, %ebp
	jmp	.LBB145_15
.Lfunc_end145:
	.size	checkRangeLMN, .Lfunc_end145-checkRangeLMN
	.cfi_endproc

	.align	16, 0x90
	.type	checkDecodeLMN,@function
checkDecodeLMN:                         # @checkDecodeLMN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp907:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp908:
	.cfi_def_cfa_offset 48
.Ltmp909:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	leaq	24(%rsp), %rdx
	movl	$.L.str.61, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB146_7
# BB#1:                                 # %land.lhs.true
	movq	24(%rsp), %rsi
	movzbl	1(%rsi), %ecx
	cmpl	$14, %ecx
	je	.LBB146_7
# BB#2:                                 # %if.then
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB146_7
# BB#3:                                 # %if.end
	movl	$-15, %eax
	cmpl	$3, 4(%rsi)
	jne	.LBB146_7
# BB#4:                                 # %for.cond.preheader
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB146_7
# BB#5:                                 # %do.body
	movzwl	8(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB146_6
# BB#8:                                 # %for.cond
	movq	8(%rbx), %rdi
	movq	24(%rsp), %rsi
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB146_7
# BB#9:                                 # %do.body.1
	movzwl	8(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB146_6
# BB#10:                                # %for.cond.1
	movq	8(%rbx), %rdi
	movq	24(%rsp), %rsi
	leaq	8(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB146_7
# BB#11:                                # %do.body.2
	movzwl	8(%rsp), %ecx
	andl	$15552, %ecx            # imm = 0x3CC0
	xorl	%eax, %eax
	cmpl	$1216, %ecx             # imm = 0x4C0
	je	.LBB146_7
.LBB146_6:                              # %if.then.28
	leaq	8(%rsp), %rdi
	callq	check_proc_failed
.LBB146_7:                              # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end146:
	.size	checkDecodeLMN, .Lfunc_end146-checkDecodeLMN
	.cfi_endproc

	.align	16, 0x90
	.type	comparearrays,@function
comparearrays:                          # @comparearrays
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp910:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp911:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp912:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp913:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp914:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp915:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp916:
	.cfi_def_cfa_offset 96
.Ltmp917:
	.cfi_offset %rbx, -56
.Ltmp918:
	.cfi_offset %r12, -48
.Ltmp919:
	.cfi_offset %r13, -40
.Ltmp920:
	.cfi_offset %r14, -32
.Ltmp921:
	.cfi_offset %r15, -24
.Ltmp922:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	4(%rbx), %eax
	xorl	%r14d, %r14d
	cmpl	4(%r15), %eax
	jne	.LBB147_16
# BB#1:                                 # %for.cond.preheader
	testl	%eax, %eax
	je	.LBB147_15
# BB#2:                                 # %for.body.lr.ph
	xorl	%r14d, %r14d
	leaq	24(%rsp), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB147_3:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB147_16
# BB#4:                                 # %if.end.9
                                        #   in Loop: Header=BB147_3 Depth=1
	movq	8(%r12), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	leaq	8(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB147_16
# BB#5:                                 # %if.end.17
                                        #   in Loop: Header=BB147_3 Depth=1
	movzbl	25(%rsp), %eax
	movzbl	9(%rsp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB147_16
# BB#6:                                 # %if.end.27
                                        #   in Loop: Header=BB147_3 Depth=1
	cmpl	$19, %eax
	ja	.LBB147_14
# BB#7:                                 # %if.end.27
                                        #   in Loop: Header=BB147_3 Depth=1
	jmpq	*.LJTI147_0(,%rax,8)
.LBB147_12:                             # %sw.bb.88
                                        #   in Loop: Header=BB147_3 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	8(%rsp), %rdx
	callq	comparearrays
	testl	%eax, %eax
	jne	.LBB147_14
	jmp	.LBB147_16
.LBB147_13:                             # %sw.bb.92
                                        #   in Loop: Header=BB147_3 Depth=1
	movq	32(%rsp), %rax
	cmpq	16(%rsp), %rax
	je	.LBB147_14
	jmp	.LBB147_16
.LBB147_8:                              # %sw.bb
                                        #   in Loop: Header=BB147_3 Depth=1
	movzwl	16(%rsp), %eax
	movzwl	32(%rsp), %ecx
	cmpl	%eax, %ecx
	je	.LBB147_14
	jmp	.LBB147_16
.LBB147_9:                              # %sw.bb.52
                                        #   in Loop: Header=BB147_3 Depth=1
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	16(%rsp), %xmm0
	jne	.LBB147_16
	jnp	.LBB147_14
	jmp	.LBB147_16
.LBB147_10:                             # %sw.bb.68
                                        #   in Loop: Header=BB147_3 Depth=1
	movl	28(%rsp), %edx
	cmpl	12(%rsp), %edx
	jne	.LBB147_16
# BB#11:                                # %if.end.76
                                        #   in Loop: Header=BB147_3 Depth=1
	movq	32(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB147_16
	.align	16, 0x90
.LBB147_14:                             # %for.inc
                                        #   in Loop: Header=BB147_3 Depth=1
	incq	%rbp
	cmpl	4(%rbx), %ebp
	jb	.LBB147_3
.LBB147_15:
	movl	$1, %r14d
.LBB147_16:                             # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end147:
	.size	comparearrays, .Lfunc_end147-comparearrays
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI147_0:
	.quad	.LBB147_16
	.quad	.LBB147_8
	.quad	.LBB147_16
	.quad	.LBB147_16
	.quad	.LBB147_12
	.quad	.LBB147_12
	.quad	.LBB147_12
	.quad	.LBB147_16
	.quad	.LBB147_16
	.quad	.LBB147_16
	.quad	.LBB147_16
	.quad	.LBB147_13
	.quad	.LBB147_16
	.quad	.LBB147_13
	.quad	.LBB147_14
	.quad	.LBB147_13
	.quad	.LBB147_9
	.quad	.LBB147_16
	.quad	.LBB147_10
	.quad	.LBB147_16

	.text
	.align	16, 0x90
	.type	colour_cleanup,@function
colour_cleanup:                         # @colour_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end148:
	.size	colour_cleanup, .Lfunc_end148-colour_cleanup
	.cfi_endproc

	.type	zcolor_remap_one_ostack,@object # @zcolor_remap_one_ostack
	.section	.rodata,"a",@progbits
	.globl	zcolor_remap_one_ostack
	.align	4
zcolor_remap_one_ostack:
	.long	4                       # 0x4
	.size	zcolor_remap_one_ostack, 4

	.type	zcolor_remap_one_estack,@object # @zcolor_remap_one_estack
	.globl	zcolor_remap_one_estack
	.align	4
zcolor_remap_one_estack:
	.long	3                       # 0x3
	.size	zcolor_remap_one_estack, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DeviceGray"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceCMYK"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"CIEBasedA"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"CIEBasedABC"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"CIEBasedDEF"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"CIEBasedDEFG"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Separation"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DeviceN"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Indexed"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Pattern"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"DevicePixel"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ICCBased"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Lab"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"CalGray"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"CalRGB"
	.size	.L.str.15, 7

	.type	colorProcs,@object      # @colorProcs
	.data
	.globl	colorProcs
	.align	16
colorProcs:
	.quad	.L.str
	.quad	setgrayspace
	.quad	0
	.quad	0
	.quad	onecomponent
	.quad	grayrange
	.quad	graydomain
	.quad	graybasecolor
	.quad	0
	.quad	grayvalidate
	.quad	truecompareproc
	.quad	grayinitialproc
	.quad	.L.str.1
	.quad	setrgbspace
	.quad	0
	.quad	0
	.quad	threecomponent
	.quad	rgbrange
	.quad	rgbdomain
	.quad	rgbbasecolor
	.quad	0
	.quad	rgbvalidate
	.quad	truecompareproc
	.quad	rgbinitialproc
	.quad	.L.str.2
	.quad	setcmykspace
	.quad	0
	.quad	0
	.quad	fourcomponent
	.quad	cmykrange
	.quad	cmykdomain
	.quad	cmykbasecolor
	.quad	0
	.quad	cmykvalidate
	.quad	truecompareproc
	.quad	cmykinitialproc
	.quad	.L.str.3
	.quad	setcieaspace
	.quad	validatecieaspace
	.quad	0
	.quad	onecomponent
	.quad	ciearange
	.quad	cieadomain
	.quad	ciebasecolor
	.quad	0
	.quad	cieavalidate
	.quad	cieacompareproc
	.quad	0
	.quad	.L.str.4
	.quad	setcieabcspace
	.quad	validatecieabcspace
	.quad	0
	.quad	threecomponent
	.quad	cieabcrange
	.quad	cieabcdomain
	.quad	ciebasecolor
	.quad	0
	.quad	cieabcvalidate
	.quad	cieabccompareproc
	.quad	0
	.quad	.L.str.5
	.quad	setciedefspace
	.quad	validateciedefspace
	.quad	0
	.quad	threecomponent
	.quad	ciedefrange
	.quad	ciedefdomain
	.quad	ciebasecolor
	.quad	0
	.quad	ciedefvalidate
	.quad	ciedefcompareproc
	.quad	0
	.quad	.L.str.6
	.quad	setciedefgspace
	.quad	validateciedefgspace
	.quad	0
	.quad	fourcomponent
	.quad	ciedefgrange
	.quad	ciedefgdomain
	.quad	ciebasecolor
	.quad	0
	.quad	ciedefgvalidate
	.quad	ciedefgcompareproc
	.quad	0
	.quad	.L.str.7
	.quad	setseparationspace
	.quad	validateseparationspace
	.quad	separationalternatespace
	.quad	onecomponent
	.quad	seprange
	.quad	sepdomain
	.quad	sepbasecolor
	.quad	septransform
	.quad	sepvalidate
	.quad	sepcompareproc
	.quad	sepinitialproc
	.quad	.L.str.8
	.quad	setdevicenspace
	.quad	validatedevicenspace
	.quad	devicenalternatespace
	.quad	devicencomponents
	.quad	devicenrange
	.quad	devicendomain
	.quad	devicenbasecolor
	.quad	devicentransform
	.quad	devicenvalidate
	.quad	devicencompareproc
	.quad	deviceninitialproc
	.quad	.L.str.9
	.quad	setindexedspace
	.quad	validateindexedspace
	.quad	indexedalternatespace
	.quad	onecomponent
	.quad	indexedrange
	.quad	indexeddomain
	.quad	indexedbasecolor
	.quad	0
	.quad	indexedvalidate
	.quad	falsecompareproc
	.quad	0
	.quad	.L.str.10
	.quad	setpatternspace
	.quad	validatepatternspace
	.quad	patternalternatespace
	.quad	patterncomponent
	.quad	dummyrange
	.quad	dummydomain
	.quad	patternbasecolor
	.quad	0
	.quad	patternvalidate
	.quad	falsecompareproc
	.quad	0
	.quad	.L.str.11
	.quad	setdevicepspace
	.quad	validatedevicepspace
	.quad	0
	.quad	onecomponent
	.quad	deviceprange
	.quad	devicepdomain
	.quad	devicepbasecolor
	.quad	0
	.quad	devicepvalidate
	.quad	falsecompareproc
	.quad	0
	.quad	.L.str.12
	.quad	seticcspace
	.quad	validateiccspace
	.quad	iccalternatespace
	.quad	icccomponents
	.quad	iccrange
	.quad	iccdomain
	.quad	iccbasecolor
	.quad	0
	.quad	iccvalidate
	.quad	iccompareproc
	.quad	0
	.quad	.L.str.13
	.quad	setlabspace
	.quad	validatelabspace
	.quad	0
	.quad	threecomponent
	.quad	labrange
	.quad	labdomain
	.quad	labbasecolor
	.quad	0
	.quad	labvalidate
	.quad	truecompareproc
	.quad	0
	.quad	.L.str.14
	.quad	setcalgrayspace
	.quad	validatecalgrayspace
	.quad	0
	.quad	onecomponent
	.quad	grayrange
	.quad	graydomain
	.quad	graybasecolor
	.quad	0
	.quad	grayvalidate
	.quad	truecompareproc
	.quad	grayinitialproc
	.quad	.L.str.15
	.quad	setcalrgbspace
	.quad	validatecalrgbspace
	.quad	0
	.quad	threecomponent
	.quad	rgbrange
	.quad	rgbdomain
	.quad	rgbbasecolor
	.quad	0
	.quad	rgbvalidate
	.quad	truecompareproc
	.quad	rgbinitialproc
	.size	colorProcs, 1536

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"0currentcolor"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0currentcolorspace"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"0.getuseciecolor"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1setcolor"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"1setcolorspace"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"0currenttransfer"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"0processcolors"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"1settransfer"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"1%zcolor_remap_one_finish"
	.size	.L.str.24, 26

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"1%zcolor_remap_one_signed_finish"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"0%zcolor_reset_transfer"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"0%zcolor_remap_color"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"0.color_test"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"1.color_test_all"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"0.includecolorspace"
	.size	.L.str.30, 20

	.type	zcolor_op_defs,@object  # @zcolor_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcolor_op_defs
	.align	16
zcolor_op_defs:
	.quad	.L.str.16
	.quad	zcurrentcolor
	.quad	.L.str.17
	.quad	zcurrentcolorspace
	.quad	.L.str.18
	.quad	zgetuseciecolor
	.quad	.L.str.19
	.quad	zsetcolor
	.quad	.L.str.20
	.quad	zsetcolorspace
	.quad	.L.str.21
	.quad	zcurrenttransfer
	.quad	.L.str.22
	.quad	zprocesscolors
	.quad	.L.str.23
	.quad	zsettransfer
	.quad	.L.str.24
	.quad	zcolor_remap_one_finish
	.quad	.L.str.25
	.quad	zcolor_remap_one_signed_finish
	.quad	.L.str.26
	.quad	zcolor_reset_transfer
	.quad	.L.str.27
	.quad	zcolor_remap_color
	.quad	.L.str.28
	.quad	zcolor_test
	.quad	.L.str.29
	.quad	zcolor_test_all
	.quad	.L.str.30
	.quad	zincludecolorspace
	.zero	16
	.size	zcolor_op_defs, 256

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"0currentgray"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"1setgray"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"0currenthsbcolor"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"3sethsbcolor"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"0currentrgbcolor"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"3setrgbcolor"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"0currentcmykcolor"
	.size	.L.str.37, 18

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"4setcmykcolor"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"1.swapcolors"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"0%setcolorspace_cont"
	.size	.L.str.40, 21

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"0%setcolor_cont"
	.size	.L.str.41, 16

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"0%devicencolorants_cont"
	.size	.L.str.42, 24

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"0%indexed_cont"
	.size	.L.str.43, 15

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"0%setdevicecolor_cont"
	.size	.L.str.44, 22

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"0%currentbasecolor_cont"
	.size	.L.str.45, 24

	.type	zcolor_ext_op_defs,@object # @zcolor_ext_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcolor_ext_op_defs
	.align	16
zcolor_ext_op_defs:
	.quad	.L.str.31
	.quad	zcurrentgray
	.quad	.L.str.32
	.quad	zsetgray
	.quad	.L.str.33
	.quad	zcurrenthsbcolor
	.quad	.L.str.34
	.quad	zsethsbcolor
	.quad	.L.str.35
	.quad	zcurrentrgbcolor
	.quad	.L.str.36
	.quad	zsetrgbcolor
	.quad	.L.str.37
	.quad	zcurrentcmykcolor
	.quad	.L.str.38
	.quad	zsetcmykcolor
	.quad	.L.str.39
	.quad	zswapcolors
	.quad	.L.str.40
	.quad	setcolorspace_cont
	.quad	.L.str.41
	.quad	setcolor_cont
	.quad	.L.str.42
	.quad	devicencolorants_cont
	.quad	.L.str.43
	.quad	indexed_cont
	.quad	.L.str.44
	.quad	setdevicecolor_cont
	.quad	.L.str.45
	.quad	currentbasecolor_cont
	.zero	16
	.size	zcolor_ext_op_defs, 256

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"NOSUBSTDEVICECOLORS"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"string"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/DefaultGray ..nosubstdevicetest"
	.size	.L.str.48, 33

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"{/DefaultGray /ColorSpace findresource} stopped"
	.size	.L.str.49, 48

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"zsetdevcspace"
	.size	.L.str.50, 14

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/DefaultRGB ..nosubstdevicetest"
	.size	.L.str.51, 32

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"{/DefaultRGB /ColorSpace findresource} stopped"
	.size	.L.str.52, 47

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"/DefaultCMYK ..nosubstdevicetest"
	.size	.L.str.53, 33

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"{/DefaultCMYK /ColorSpace findresource} stopped"
	.size	.L.str.54, 48

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"NOCIE"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"RangeA"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"DecodeA"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"MatrixA"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"WhitePoint"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"RangeLMN"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"DecodeLMN"
	.size	.L.str.61, 10

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"MatrixLMN"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"BlackPoint"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"MatrixMN"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"RangeABC"
	.size	.L.str.65, 9

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"DecodeABC"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"MatrixABC"
	.size	.L.str.67, 10

	.type	default_0_1,@object     # @default_0_1
	.section	.rodata,"a",@progbits
	.align	16
default_0_1:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	default_0_1, 32

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"Table"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"RangeDEF"
	.size	.L.str.69, 9

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"DecodeDEF"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"RangeHIJ"
	.size	.L.str.71, 9

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"RangeDEFG"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"DecodeDEFG"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"RangeHIJK"
	.size	.L.str.74, 10

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"All"
	.size	.L.str.75, 4

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"None"
	.size	.L.str.76, 5

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"setseparationspace"
	.size	.L.str.77, 19

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Colorants"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"setdevicenspace"
	.size	.L.str.79, 16

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"setindexedspace"
	.size	.L.str.80, 16

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"zsetpatternspace"
	.size	.L.str.81, 17

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Implementation"
	.size	.L.str.82, 15

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"N"
	.size	.L.str.83, 2

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Alternate"
	.size	.L.str.84, 10

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"DataSource"
	.size	.L.str.85, 11

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Range"
	.size	.L.str.86, 6

	.type	setlabspace.dflt_range,@object # @setlabspace.dflt_range
	.section	.rodata,"a",@progbits
	.align	16
setlabspace.dflt_range:
	.long	3267887104              # float -1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	3267887104              # float -1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.size	setlabspace.dflt_range, 16

	.type	setlabspace.dflt_black,@object # @setlabspace.dflt_black
	.align	4
setlabspace.dflt_black:
	.zero	12
	.size	setlabspace.dflt_black, 12

	.type	setlabspace.dflt_white,@object # @setlabspace.dflt_white
	.align	4
setlabspace.dflt_white:
	.zero	12
	.size	setlabspace.dflt_white, 12

	.type	.L__func__.setlabspace,@object # @__func__.setlabspace
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.setlabspace:
	.asciz	"setlabspace"
	.size	.L__func__.setlabspace, 12

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"./psi/zcolor.c"
	.size	.L.str.87, 15

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"setting PDF lab color space"
	.size	.L.str.88, 28

	.type	setcalgrayspace.dflt_black,@object # @setcalgrayspace.dflt_black
	.section	.rodata,"a",@progbits
	.align	4
setcalgrayspace.dflt_black:
	.zero	12
	.size	setcalgrayspace.dflt_black, 12

	.type	setcalgrayspace.dflt_white,@object # @setcalgrayspace.dflt_white
	.align	4
setcalgrayspace.dflt_white:
	.zero	12
	.size	setcalgrayspace.dflt_white, 12

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"Gamma"
	.size	.L.str.89, 6

	.type	.L__func__.setcalgrayspace,@object # @__func__.setcalgrayspace
.L__func__.setcalgrayspace:
	.asciz	"setcalgrayspace"
	.size	.L__func__.setcalgrayspace, 16

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"setting CalGray  color space"
	.size	.L.str.90, 29

	.type	setcalrgbspace.dflt_gamma,@object # @setcalrgbspace.dflt_gamma
	.section	.rodata,"a",@progbits
	.align	4
setcalrgbspace.dflt_gamma:
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	setcalrgbspace.dflt_gamma, 12

	.type	setcalrgbspace.dflt_black,@object # @setcalrgbspace.dflt_black
	.align	4
setcalrgbspace.dflt_black:
	.zero	12
	.size	setcalrgbspace.dflt_black, 12

	.type	setcalrgbspace.dflt_white,@object # @setcalrgbspace.dflt_white
	.align	4
setcalrgbspace.dflt_white:
	.zero	12
	.size	setcalrgbspace.dflt_white, 12

	.type	setcalrgbspace.dflt_matrix,@object # @setcalrgbspace.dflt_matrix
	.align	16
setcalrgbspace.dflt_matrix:
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	setcalrgbspace.dflt_matrix, 36

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"Matrix"
	.size	.L.str.91, 7

	.type	.L__func__.setcalrgbspace,@object # @__func__.setcalrgbspace
.L__func__.setcalrgbspace:
	.asciz	"setcalrgbspace"
	.size	.L__func__.setcalrgbspace, 15

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"setting CalRGB  color space"
	.size	.L.str.92, 28

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"systemdict /DeviceGray_array get"
	.size	.L.str.93, 33

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"systemdict /DeviceRGB_array get"
	.size	.L.str.94, 32

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"systemdict /DeviceCMYK_array get"
	.size	.L.str.95, 33

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"currentcolorspace"
	.size	.L.str.96, 18

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Number of components = %d\n"
	.size	.L.str.97, 27

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Depth = %d\n"
	.size	.L.str.98, 12

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"max_gray = %d   dither_grays = %d\n"
	.size	.L.str.99, 35

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"max_color = %d   dither_colors = %d\n"
	.size	.L.str.100, 37

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"polarity = %s\n"
	.size	.L.str.101, 15

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Additive"
	.size	.L.str.102, 9

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Subtractive"
	.size	.L.str.103, 12

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Unknown"
	.size	.L.str.104, 8

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Zero color index:  %8lx\n"
	.size	.L.str.105, 25

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"separable_and_linear = %s\n"
	.size	.L.str.106, 27

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"No"
	.size	.L.str.107, 3

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Yes"
	.size	.L.str.108, 4

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gray_index is unknown\n"
	.size	.L.str.109, 23

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gray_index = %d\n"
	.size	.L.str.110, 17

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	" Shift     Mask  Bits\n"
	.size	.L.str.111, 23

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	" %5d %8x  %4d\n"
	.size	.L.str.112, 15

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Failed separable_and_linear for"
	.size	.L.str.113, 32

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	" %d"
	.size	.L.str.114, 4

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"\n"
	.size	.L.str.115, 2

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"encode_color=%x  gx_default_encode_color=%x\n"
	.size	.L.str.116, 45

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Maximum error %g %s\n"
	.size	.L.str.117, 21

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"is Ok"
	.size	.L.str.118, 6

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"is POOR"
	.size	.L.str.119, 8

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"FAILED"
	.size	.L.str.120, 7

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Maximum linear_and_separable error %g %s\n"
	.size	.L.str.121, 42

	.type	.Lswitch.table.2,@object # @switch.table.2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.Lswitch.table.2:
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
	.size	.Lswitch.table.2, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
