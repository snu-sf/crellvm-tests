	.text
	.file	"gximage.bc"
	.globl	gs_image_common_t_init
	.align	16, 0x90
	.type	gs_image_common_t_init,@function
gs_image_common_t_init:                 # @gs_image_common_t_init
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$8, %rdi
	jmp	gs_make_identity        # TAILCALL
.Lfunc_end0:
	.size	gs_image_common_t_init, .Lfunc_end0-gs_image_common_t_init
	.cfi_endproc

	.globl	gs_data_image_t_init
	.align	16, 0x90
	.type	gs_data_image_t_init,@function
gs_data_image_t_init:                   # @gs_data_image_t_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	leaq	8(%rbx), %rdi
	callq	gs_make_identity
	movq	$0, 32(%rbx)
	movl	$1, 40(%rbx)
	testl	%ebp, %ebp
	js	.LBB1_1
# BB#6:                                 # %for.cond.preheader
	jle	.LBB1_12
# BB#7:                                 # %for.body.lr.ph
	addl	%ebp, %ebp
	movslq	%ebp, %rax
	cmpq	$1, %rax
	movl	$2, %ecx
	cmovgq	%rax, %rcx
	decq	%rcx
	movl	%ecx, %esi
	shrl	%esi
	incl	%esi
	xorl	%edx, %edx
	testb	$3, %sil
	je	.LBB1_10
# BB#8:                                 # %for.body.prol.preheader
	cmpq	$2, %rax
	movl	$2, %edx
	movl	%eax, %esi
	cmovlel	%edx, %esi
	decl	%esi
	shrl	%esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%edx, %edx
	movabsq	$4575657221408423936, %rdi # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB1_9:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, 44(%rbx,%rdx,4)
	addq	$2, %rdx
	incq	%rsi
	jne	.LBB1_9
.LBB1_10:                               # %for.body.lr.ph.split
	cmpq	$6, %rcx
	jb	.LBB1_12
	.align	16, 0x90
.LBB1_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 44(%rbx,%rdx,4)
	movq	%rdx, %rcx
	orq	$1, %rcx
	movl	$1065353216, 44(%rbx,%rcx,4) # imm = 0x3F800000
	leaq	2(%rdx), %rcx
	movl	$0, 52(%rbx,%rdx,4)
	orq	$1, %rcx
	movl	$1065353216, 44(%rbx,%rcx,4) # imm = 0x3F800000
	movl	$0, 60(%rbx,%rdx,4)
	leaq	4(%rdx), %rcx
	orq	$1, %rcx
	movl	$1065353216, 44(%rbx,%rcx,4) # imm = 0x3F800000
	movl	$0, 68(%rbx,%rdx,4)
	leaq	6(%rdx), %rcx
	orq	$1, %rcx
	movl	$1065353216, 44(%rbx,%rcx,4) # imm = 0x3F800000
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jl	.LBB1_11
	jmp	.LBB1_12
.LBB1_1:                                # %for.body.9.lr.ph
	addl	%ebp, %ebp
	negl	%ebp
	movslq	%ebp, %rax
	cmpq	$1, %rax
	movl	$2, %ecx
	cmovgq	%rax, %rcx
	decq	%rcx
	movl	%ecx, %esi
	shrl	%esi
	incl	%esi
	xorl	%edx, %edx
	testb	$3, %sil
	je	.LBB1_4
# BB#2:                                 # %for.body.9.prol.preheader
	cmpq	$2, %rax
	movl	$2, %edx
	movl	%eax, %esi
	cmovlel	%edx, %esi
	decl	%esi
	shrl	%esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_3:                                # %for.body.9.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	$1065353216, 44(%rbx,%rdx,4) # imm = 0x3F800000
	addq	$2, %rdx
	incq	%rsi
	jne	.LBB1_3
.LBB1_4:                                # %for.body.9.lr.ph.split
	cmpq	$6, %rcx
	jb	.LBB1_12
	.align	16, 0x90
.LBB1_5:                                # %for.body.9
                                        # =>This Inner Loop Header: Depth=1
	movl	$1065353216, 44(%rbx,%rdx,4) # imm = 0x3F800000
	movq	%rdx, %rcx
	orq	$1, %rcx
	movl	$0, 44(%rbx,%rcx,4)
	leaq	2(%rdx), %rcx
	movl	$1065353216, 52(%rbx,%rdx,4) # imm = 0x3F800000
	orq	$1, %rcx
	movl	$0, 44(%rbx,%rcx,4)
	movl	$1065353216, 60(%rbx,%rdx,4) # imm = 0x3F800000
	leaq	4(%rdx), %rcx
	orq	$1, %rcx
	movl	$0, 44(%rbx,%rcx,4)
	movl	$1065353216, 68(%rbx,%rdx,4) # imm = 0x3F800000
	leaq	6(%rdx), %rcx
	orq	$1, %rcx
	movl	$0, 44(%rbx,%rcx,4)
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jl	.LBB1_5
.LBB1_12:                               # %if.end
	movl	$0, 564(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_data_image_t_init, .Lfunc_end1-gs_data_image_t_init
	.cfi_endproc

	.globl	gs_pixel_image_t_init
	.align	16, 0x90
	.type	gs_pixel_image_t_init,@function
gs_pixel_image_t_init:                  # @gs_pixel_image_t_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%r14, %r14
	je	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movq	%r14, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_3
.LBB2_2:                                # %if.then
	xorl	%ebp, %ebp
.LBB2_3:                                # %if.end
	leaq	8(%rbx), %rdi
	callq	gs_make_identity
	movq	$0, 32(%rbx)
	movl	$1, 40(%rbx)
	testl	%ebp, %ebp
	js	.LBB2_4
# BB#9:                                 # %for.cond.preheader.i
	jle	.LBB2_15
# BB#10:                                # %for.body.lr.ph.i
	addl	%ebp, %ebp
	movslq	%ebp, %rax
	cmpq	$1, %rax
	movl	$2, %ecx
	cmovgq	%rax, %rcx
	decq	%rcx
	movl	%ecx, %esi
	shrl	%esi
	incl	%esi
	xorl	%edx, %edx
	testb	$3, %sil
	je	.LBB2_13
# BB#11:                                # %for.body.i.prol.preheader
	cmpq	$2, %rax
	movl	$2, %edx
	movl	%eax, %esi
	cmovlel	%edx, %esi
	decl	%esi
	shrl	%esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%edx, %edx
	movabsq	$4575657221408423936, %rdi # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB2_12:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, 44(%rbx,%rdx,4)
	addq	$2, %rdx
	incq	%rsi
	jne	.LBB2_12
.LBB2_13:                               # %for.body.lr.ph.i.split
	cmpq	$6, %rcx
	jb	.LBB2_15
	.align	16, 0x90
.LBB2_14:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 44(%rbx,%rdx,4)
	movq	%rdx, %rcx
	orq	$1, %rcx
	movl	$1065353216, 44(%rbx,%rcx,4) # imm = 0x3F800000
	leaq	2(%rdx), %rcx
	movl	$0, 52(%rbx,%rdx,4)
	orq	$1, %rcx
	movl	$1065353216, 44(%rbx,%rcx,4) # imm = 0x3F800000
	movl	$0, 60(%rbx,%rdx,4)
	leaq	4(%rdx), %rcx
	orq	$1, %rcx
	movl	$1065353216, 44(%rbx,%rcx,4) # imm = 0x3F800000
	movl	$0, 68(%rbx,%rdx,4)
	leaq	6(%rdx), %rcx
	orq	$1, %rcx
	movl	$1065353216, 44(%rbx,%rcx,4) # imm = 0x3F800000
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jl	.LBB2_14
	jmp	.LBB2_15
.LBB2_4:                                # %for.body.9.lr.ph.i
	addl	%ebp, %ebp
	negl	%ebp
	movslq	%ebp, %rax
	cmpq	$1, %rax
	movl	$2, %ecx
	cmovgq	%rax, %rcx
	decq	%rcx
	movl	%ecx, %esi
	shrl	%esi
	incl	%esi
	xorl	%edx, %edx
	testb	$3, %sil
	je	.LBB2_7
# BB#5:                                 # %for.body.9.i.prol.preheader
	cmpq	$2, %rax
	movl	$2, %edx
	movl	%eax, %esi
	cmovlel	%edx, %esi
	decl	%esi
	shrl	%esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_6:                                # %for.body.9.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	$1065353216, 44(%rbx,%rdx,4) # imm = 0x3F800000
	addq	$2, %rdx
	incq	%rsi
	jne	.LBB2_6
.LBB2_7:                                # %for.body.9.lr.ph.i.split
	cmpq	$6, %rcx
	jb	.LBB2_15
	.align	16, 0x90
.LBB2_8:                                # %for.body.9.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1065353216, 44(%rbx,%rdx,4) # imm = 0x3F800000
	movq	%rdx, %rcx
	orq	$1, %rcx
	movl	$0, 44(%rbx,%rcx,4)
	leaq	2(%rdx), %rcx
	movl	$1065353216, 52(%rbx,%rdx,4) # imm = 0x3F800000
	orq	$1, %rcx
	movl	$0, 44(%rbx,%rcx,4)
	movl	$1065353216, 60(%rbx,%rdx,4) # imm = 0x3F800000
	leaq	4(%rdx), %rcx
	orq	$1, %rcx
	movl	$0, 44(%rbx,%rcx,4)
	movl	$1065353216, 68(%rbx,%rdx,4) # imm = 0x3F800000
	leaq	6(%rdx), %rcx
	orq	$1, %rcx
	movl	$0, 44(%rbx,%rcx,4)
	addq	$8, %rdx
	cmpq	%rax, %rdx
	jl	.LBB2_8
.LBB2_15:                               # %gs_data_image_t_init.exit
	movl	$0, 564(%rbx)
	movl	$0, 568(%rbx)
	movq	%r14, 576(%rbx)
	movl	$0, 572(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_pixel_image_t_init, .Lfunc_end2-gs_pixel_image_t_init
	.cfi_endproc

	.globl	gx_image_enum_common_init
	.align	16, 0x90
	.type	gx_image_enum_common_init,@function
gx_image_enum_common_init:              # @gx_image_enum_common_init
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
.Ltmp16:
	.cfi_offset %rbx, -48
.Ltmp17:
	.cfi_offset %r12, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movl	%r8d, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	40(%r14), %r12d
	movq	(%r14), %rax
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	%rcx, 16(%rbx)
	movq	24(%rcx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 32(%rbx)
	movl	$0, 40(%rbx)
	cmpl	$2, %ebp
	je	.LBB3_21
# BB#1:                                 # %entry
	cmpl	$1, %ebp
	jne	.LBB3_2
# BB#9:                                 # %sw.bb.2
	movl	%r15d, 44(%rbx)
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB3_8
# BB#10:                                # %for.body.preheader
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB3_18
# BB#11:                                # %vector.ph
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	1(%rcx), %rdi
	andq	%r8, %rdi
	addq	$-8, %rdi
	movl	%edi, %esi
	shrl	$3, %esi
	incl	%esi
	xorl	%ebp, %ebp
	testb	$3, %sil
	je	.LBB3_14
# BB#12:                                # %vector.body.prol.preheader
	movl	%r15d, %esi
	andl	$24, %esi
	addl	$-8, %esi
	shrl	$3, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_13:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, 48(%rbx,%rbp,4)
	movdqu	%xmm0, 64(%rbx,%rbp,4)
	addq	$8, %rbp
	incq	%rsi
	jne	.LBB3_13
.LBB3_14:                               # %vector.ph.split
	cmpq	$24, %rdi
	jb	.LBB3_17
# BB#15:                                # %vector.ph.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rbp, %rcx
	leaq	160(%rbx,%rbp,4), %rsi
	.align	16, 0x90
.LBB3_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-32, %rcx
	jne	.LBB3_16
.LBB3_17:
	movq	%rdx, %rsi
.LBB3_18:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB3_4
# BB#19:                                # %for.body.preheader53
	leaq	48(%rbx,%rsi,4), %rax
	subl	%esi, %r15d
	.align	16, 0x90
.LBB3_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, (%rax)
	addq	$4, %rax
	decl	%r15d
	jne	.LBB3_20
.LBB3_4:                                # %for.cond.for.cond.19.preheader.loopexit_crit_edge
	movl	44(%rbx), %ecx
	jmp	.LBB3_5
.LBB3_21:                               # %sw.bb.6
	imull	%r15d, %r12d
	movl	%r12d, 44(%rbx)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB3_8
# BB#22:                                # %for.body.12.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_23:                               # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, 48(%rbx,%rax,4)
	incq	%rax
	movslq	44(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB3_23
.LBB3_5:                                # %for.cond.19.preheader
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jg	.LBB3_6
	jmp	.LBB3_8
.LBB3_2:                                # %entry
	movl	$-15, %eax
	testl	%ebp, %ebp
	jne	.LBB3_8
# BB#3:                                 # %for.cond.19.preheader.thread45
	movl	$1, 44(%rbx)
	imull	%r15d, %r12d
	movl	%r12d, 48(%rbx)
.LBB3_6:                                # %for.body.22.lr.ph
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_7:                                # %for.body.22
                                        # =>This Inner Loop Header: Depth=1
	movl	32(%r14), %edx
	movl	%edx, 308(%rbx,%rcx,4)
	incq	%rcx
	movslq	44(%rbx), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB3_7
.LBB3_8:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gx_image_enum_common_init, .Lfunc_end3-gx_image_enum_common_init
	.cfi_endproc

	.globl	gx_data_image_source_size
	.align	16, 0x90
	.type	gx_data_image_source_size,@function
gx_data_image_source_size:              # @gx_data_image_source_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	32(%rsi), %eax
	movl	%eax, (%rdx)
	movl	36(%rsi), %eax
	movl	%eax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gx_data_image_source_size, .Lfunc_end4-gx_data_image_source_size
	.cfi_endproc

	.globl	gx_no_plane_data
	.align	16, 0x90
	.type	gx_no_plane_data,@function
gx_no_plane_data:                       # @gx_no_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-100, %eax
	retq
.Lfunc_end5:
	.size	gx_no_plane_data, .Lfunc_end5-gx_no_plane_data
	.cfi_endproc

	.globl	gx_ignore_end_image
	.align	16, 0x90
	.type	gx_ignore_end_image,@function
gx_ignore_end_image:                    # @gx_ignore_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	gx_ignore_end_image, .Lfunc_end6-gx_ignore_end_image
	.cfi_endproc

	.globl	gx_image_data
	.align	16, 0x90
	.type	gx_image_data,@function
gx_image_data:                          # @gx_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$1048, %rsp             # imm = 0x418
.Ltmp21:
	.cfi_def_cfa_offset 1056
	movl	44(%rdi), %r9d
	testl	%r9d, %r9d
	jle	.LBB7_6
# BB#1:                                 # %for.body.preheader
	xorl	%eax, %eax
	testb	$1, %r9b
	je	.LBB7_3
# BB#2:                                 # %for.body.prol
	movq	(%rsi), %rax
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movl	%ecx, 12(%rsp)
	movl	$1, %eax
.LBB7_3:                                # %for.body.preheader.split
	cmpl	$1, %r9d
	je	.LBB7_6
# BB#4:                                 # %for.body.preheader.split.split
	subl	%eax, %r9d
	leaq	8(%rsi,%rax,8), %r10
	incq	%rax
	shlq	$4, %rax
	leaq	12(%rsp,%rax), %rax
	.align	16, 0x90
.LBB7_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r10), %rsi
	movq	%rsi, -28(%rax)
	movl	%edx, -20(%rax)
	movl	%ecx, -16(%rax)
	movq	(%r10), %rsi
	movq	%rsi, -12(%rax)
	movl	%edx, -4(%rax)
	movl	%ecx, (%rax)
	addq	$16, %r10
	addq	$32, %rax
	addl	$-2, %r9d
	jne	.LBB7_5
.LBB7_6:                                # %for.end
	movq	8(%rdi), %rax
	leaq	(%rsp), %rsi
	leaq	1044(%rsp), %rcx
	movl	%r8d, %edx
	callq	*(%rax)
	addq	$1048, %rsp             # imm = 0x418
	retq
.Lfunc_end7:
	.size	gx_image_data, .Lfunc_end7-gx_image_data
	.cfi_endproc

	.globl	gx_image_plane_data
	.align	16, 0x90
	.type	gx_image_plane_data,@function
gx_image_plane_data:                    # @gx_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rax
	leaq	4(%rsp), %rcx
	callq	*(%rax)
	popq	%rdx
	retq
.Lfunc_end8:
	.size	gx_image_plane_data, .Lfunc_end8-gx_image_plane_data
	.cfi_endproc

	.globl	gx_image_plane_data_rows
	.align	16, 0x90
	.type	gx_image_plane_data_rows,@function
gx_image_plane_data_rows:               # @gx_image_plane_data_rows
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end9:
	.size	gx_image_plane_data_rows, .Lfunc_end9-gx_image_plane_data_rows
	.cfi_endproc

	.globl	gx_image_flush
	.align	16, 0x90
	.type	gx_image_flush,@function
gx_image_flush:                         # @gx_image_flush
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_1
# BB#2:                                 # %cond.true
	jmpq	*%rax                   # TAILCALL
.LBB10_1:                               # %cond.end
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	gx_image_flush, .Lfunc_end10-gx_image_flush
	.cfi_endproc

	.globl	gx_image_planes_wanted
	.align	16, 0x90
	.type	gx_image_planes_wanted,@function
gx_image_planes_wanted:                 # @gx_image_planes_wanted
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	movq	8(%rdi), %rcx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_1
# BB#2:                                 # %if.then
	movq	%rax, %rsi
	popq	%rax
	jmpq	*%rcx                   # TAILCALL
.LBB11_1:                               # %cleanup
	movslq	44(%rdi), %rdx
	movl	$255, %esi
	movq	%rax, %rdi
	callq	memset
	movl	$1, %eax
	popq	%rdx
	retq
.Lfunc_end11:
	.size	gx_image_planes_wanted, .Lfunc_end11-gx_image_planes_wanted
	.cfi_endproc

	.globl	gx_image_end
	.align	16, 0x90
	.type	gx_image_end,@function
gx_image_end:                           # @gx_image_end
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end12:
	.size	gx_image_end, .Lfunc_end12-gx_image_end
	.cfi_endproc

	.globl	gx_image_no_sput
	.align	16, 0x90
	.type	gx_image_no_sput,@function
gx_image_no_sput:                       # @gx_image_no_sput
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	retq
.Lfunc_end13:
	.size	gx_image_no_sput, .Lfunc_end13-gx_image_no_sput
	.cfi_endproc

	.globl	gx_image_no_sget
	.align	16, 0x90
	.type	gx_image_no_sget,@function
gx_image_no_sget:                       # @gx_image_no_sget
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	retq
.Lfunc_end14:
	.size	gx_image_no_sget, .Lfunc_end14-gx_image_no_sget
	.cfi_endproc

	.globl	gx_image_default_release
	.align	16, 0x90
	.type	gx_image_default_release,@function
gx_image_default_release:               # @gx_image_default_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	24(%rsi), %rcx
	movl	$.L.str.2, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end15:
	.size	gx_image_default_release, .Lfunc_end15-gx_image_default_release
	.cfi_endproc

	.globl	gx_image_matrix_is_default
	.align	16, 0x90
	.type	gx_image_matrix_is_default,@function
gx_image_matrix_is_default:             # @gx_image_matrix_is_default
	.cfi_startproc
# BB#0:                                 # %entry
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_6
	jp	.LBB16_6
# BB#1:                                 # %land.lhs.true
	movss	16(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_6
	jp	.LBB16_6
# BB#2:                                 # %land.lhs.true.6
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	32(%rdi), %xmm1
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	jne	.LBB16_6
	jp	.LBB16_6
# BB#3:                                 # %land.lhs.true.11
	movss	20(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	36(%rdi), %ecx
	movl	%ecx, %eax
	negl	%eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	jne	.LBB16_6
	jp	.LBB16_6
# BB#4:                                 # %land.lhs.true.16
	movss	24(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB16_6
	jp	.LBB16_6
# BB#5:                                 # %land.rhs
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	cmpeqss	28(%rdi), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB16_6:                               # %land.end
	movzbl	%al, %eax
	retq
.Lfunc_end16:
	.size	gx_image_matrix_is_default, .Lfunc_end16-gx_image_matrix_is_default
	.cfi_endproc

	.globl	sput_variable_uint
	.align	16, 0x90
	.type	sput_variable_uint,@function
sput_variable_uint:                     # @sput_variable_uint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	setae	%cl
	cmpl	$128, %ebp
	jb	.LBB17_1
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	je	.LBB17_3
# BB#4:                                 # %cond.false
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	%ebp, %eax
	orl	$128, %eax
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB17_5
	.align	16, 0x90
.LBB17_3:                               # %cond.true
                                        #   in Loop: Header=BB17_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movl	%ebp, %ecx
	orl	$128, %ecx
	movb	%cl, 1(%rax)
.LBB17_5:                               # %for.inc
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	%ebp, %edx
	shrl	$7, %edx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	setae	%cl
	cmpl	$16383, %ebp            # imm = 0x3FFF
	movl	%edx, %ebp
	ja	.LBB17_2
	jmp	.LBB17_6
.LBB17_1:
	movl	%ebp, %edx
.LBB17_6:                               # %for.end
	testb	%cl, %cl
	je	.LBB17_7
# BB#8:                                 # %cond.false.30
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	spputc                  # TAILCALL
.LBB17_7:                               # %cond.end.33
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	sput_variable_uint, .Lfunc_end17-sput_variable_uint
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_pixel_image_sput
	.align	16, 0x90
	.type	gx_pixel_image_sput,@function
gx_pixel_image_sput:                    # @gx_pixel_image_sput
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 144
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	576(%r12), %r13
	movl	40(%r12), %ebp
	movq	%r13, %rdi
	callq	gs_color_space_num_components
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movss	12(%r12), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB18_6
	jp	.LBB18_6
# BB#1:                                 # %land.lhs.true.i
	movss	16(%r12), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	ucomiss	%xmm0, %xmm1
	jne	.LBB18_6
	jp	.LBB18_6
# BB#2:                                 # %land.lhs.true.6.i
	movss	8(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	32(%r12), %xmm1
	xorl	%ecx, %ecx
	ucomiss	%xmm1, %xmm0
	jne	.LBB18_6
	jp	.LBB18_6
# BB#3:                                 # %land.lhs.true.11.i
	movss	20(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	36(%r12), %eax
	movl	%eax, %ecx
	negl	%ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	xorl	%ecx, %ecx
	ucomiss	%xmm1, %xmm0
	jne	.LBB18_6
	jp	.LBB18_6
# BB#4:                                 # %land.lhs.true.16.i
	movss	24(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB18_6
	jp	.LBB18_6
# BB#5:                                 # %land.rhs.i
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	cmpeqss	28(%r12), %xmm0
	movd	%xmm0, %ecx
	andl	$1, %ecx
.LBB18_6:                               # %gx_image_matrix_is_default.exit
	movl	568(%r12), %edx
	cmpl	$2, %edx
	jae	.LBB18_7
# BB#9:                                 # %sw.bb
	movl	$-15, %eax
	cmpl	$16, %ebp
	ja	.LBB18_80
# BB#10:                                # %sw.bb
	movl	$69910, %esi            # imm = 0x11116
	btl	%ebp, %esi
	jb	.LBB18_11
	jmp	.LBB18_80
.LBB18_7:                               # %gx_image_matrix_is_default.exit
	jne	.LBB18_11
# BB#8:                                 # %sw.bb.3
	leal	-1(%rbp), %esi
	movl	$-15, %eax
	cmpl	$7, %esi
	ja	.LBB18_80
.LBB18_11:                              # %sw.epilog.7
	movq	%r15, 16(%rsp)          # 8-byte Spill
	shll	$10, %r14d
	movzbl	%cl, %eax
	leal	-2(%rbp,%rbp), %r15d
	shll	$5, %edx
	orl	%r14d, %r15d
	orl	%eax, %r15d
	orl	%edx, %r15d
	movq	%r13, %r14
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB18_12
# BB#13:                                # %if.then.15
	cvtsi2ssl	72(%r14), %xmm0
	jmp	.LBB18_14
.LBB18_12:
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB18_14:                              # %if.end.16
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	xorl	$1, %r15d
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %r13d
	testl	%eax, %eax
	jle	.LBB18_21
# BB#15:                                # %for.body.lr.ph
	movslq	%r13d, %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB18_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	44(%r12,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cmpl	$1, %ecx
	movss	44(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	je	.LBB18_19
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB18_17 Depth=1
	movl	%ecx, %edx
	andl	$1, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
.LBB18_19:                              # %for.body
                                        #   in Loop: Header=BB18_17 Depth=1
	ucomiss	%xmm1, %xmm0
	jne	.LBB18_20
	jnp	.LBB18_16
.LBB18_20:                              # %if.then.24
	orl	$128, %r15d
	jmp	.LBB18_21
	.align	16, 0x90
.LBB18_16:                              # %for.cond
                                        #   in Loop: Header=BB18_17 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB18_17
.LBB18_21:                              # %for.end
	cmpl	$0, 564(%r12)
	je	.LBB18_23
# BB#22:                                # %select.mid
	orl	$256, %r15d             # imm = 0x100
.LBB18_23:                              # %select.end
	cmpl	$0, 572(%r12)
	je	.LBB18_25
# BB#24:                                # %select.mid252
	orl	$512, %r15d             # imm = 0x200
.LBB18_25:                              # %select.end251
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	setae	%cl
	cmpl	$128, %r15d
	jb	.LBB18_26
# BB#27:
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB18_28:                              # %for.body.i.90
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	je	.LBB18_29
# BB#30:                                # %cond.false.i.98
                                        #   in Loop: Header=BB18_28 Depth=1
	movl	%ebp, %eax
	orl	$128, %eax
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB18_31
	.align	16, 0x90
.LBB18_29:                              # %cond.true.i.94
                                        #   in Loop: Header=BB18_28 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movl	%ebp, %ecx
	orl	$128, %ecx
	movb	%cl, 1(%rax)
.LBB18_31:                              # %for.inc.i.102
                                        #   in Loop: Header=BB18_28 Depth=1
	movl	%ebp, %edx
	shrl	$7, %edx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	setae	%cl
	cmpl	$16383, %ebp            # imm = 0x3FFF
	movl	%edx, %ebp
	ja	.LBB18_28
	jmp	.LBB18_32
.LBB18_26:
	movl	%r15d, %edx
.LBB18_32:                              # %for.end.i.106
	testb	%cl, %cl
	je	.LBB18_33
# BB#34:                                # %cond.false.30.i.112
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB18_35
.LBB18_33:                              # %cond.true.21.i.109
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
.LBB18_35:                              # %sput_variable_uint.exit113
	movl	32(%r12), %ebp
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	setae	%cl
	cmpl	$128, %ebp
	jb	.LBB18_36
	.align	16, 0x90
.LBB18_37:                              # %for.body.i.118
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	je	.LBB18_38
# BB#39:                                # %cond.false.i.126
                                        #   in Loop: Header=BB18_37 Depth=1
	movl	%ebp, %eax
	orl	$128, %eax
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB18_40
	.align	16, 0x90
.LBB18_38:                              # %cond.true.i.122
                                        #   in Loop: Header=BB18_37 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movl	%ebp, %ecx
	orl	$128, %ecx
	movb	%cl, 1(%rax)
.LBB18_40:                              # %for.inc.i.130
                                        #   in Loop: Header=BB18_37 Depth=1
	movl	%ebp, %edx
	shrl	$7, %edx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	setae	%cl
	cmpl	$16383, %ebp            # imm = 0x3FFF
	movl	%edx, %ebp
	ja	.LBB18_37
	jmp	.LBB18_41
.LBB18_36:
	movl	%ebp, %edx
.LBB18_41:                              # %for.end.i.134
	testb	%cl, %cl
	je	.LBB18_42
# BB#43:                                # %cond.false.30.i.140
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB18_44
.LBB18_42:                              # %cond.true.21.i.137
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
.LBB18_44:                              # %sput_variable_uint.exit141
	movl	36(%r12), %ebp
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	setae	%cl
	cmpl	$128, %ebp
	jb	.LBB18_45
	.align	16, 0x90
.LBB18_46:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	je	.LBB18_47
# BB#48:                                # %cond.false.i
                                        #   in Loop: Header=BB18_46 Depth=1
	movl	%ebp, %eax
	orl	$128, %eax
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB18_49
	.align	16, 0x90
.LBB18_47:                              # %cond.true.i
                                        #   in Loop: Header=BB18_46 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movl	%ebp, %ecx
	orl	$128, %ecx
	movb	%cl, 1(%rax)
.LBB18_49:                              # %for.inc.i
                                        #   in Loop: Header=BB18_46 Depth=1
	movl	%ebp, %edx
	shrl	$7, %edx
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	setae	%cl
	cmpl	$16383, %ebp            # imm = 0x3FFF
	movl	%edx, %ebp
	ja	.LBB18_46
	jmp	.LBB18_50
.LBB18_45:
	movl	%ebp, %edx
.LBB18_50:                              # %for.end.i
	testb	%cl, %cl
	je	.LBB18_51
# BB#52:                                # %cond.false.30.i
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB18_53
.LBB18_51:                              # %cond.true.21.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	%dl, 1(%rax)
.LBB18_53:                              # %sput_variable_uint.exit
	testb	$1, %r15b
	je	.LBB18_55
# BB#54:                                # %do.end.40
	leaq	8(%r12), %rsi
	movq	%rbx, %rdi
	callq	sput_matrix
.LBB18_55:                              # %if.end.42
	testb	$-128, %r15b
	je	.LBB18_79
# BB#56:                                # %if.then.45
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB18_57
# BB#58:                                # %for.body.53.lr.ph
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movslq	%r13d, %r15
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movl	$1, %eax
	xorl	%r13d, %r13d
	leaq	84(%rsp), %r14
	xorps	%xmm1, %xmm1
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB18_59:                              # %for.body.53
                                        # =>This Inner Loop Header: Depth=1
	movss	44(%r12,%r13,4), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movss	48(%r12,%r13,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	testl	%r13d, %r13d
	movss	44(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB18_61
# BB#60:                                # %for.body.53
                                        #   in Loop: Header=BB18_59 Depth=1
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB18_61:                              # %for.body.53
                                        #   in Loop: Header=BB18_59 Depth=1
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB18_66
# BB#62:                                # %if.then.72
                                        #   in Loop: Header=BB18_59 Depth=1
	movq	120(%rbx), %rcx
	cmpq	128(%rbx), %rcx
	jae	.LBB18_64
# BB#63:                                # %cond.true.77
                                        #   in Loop: Header=BB18_59 Depth=1
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	movss	%xmm3, 28(%rsp)         # 4-byte Spill
	movss	%xmm2, 32(%rsp)         # 4-byte Spill
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rbx)
	movb	%al, 1(%rcx)
	jmp	.LBB18_65
	.align	16, 0x90
.LBB18_64:                              # %cond.false.86
                                        #   in Loop: Header=BB18_59 Depth=1
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	movss	%xmm3, 28(%rsp)         # 4-byte Spill
	movss	%xmm2, 32(%rsp)         # 4-byte Spill
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB18_65:                              # %cond.end.90
                                        #   in Loop: Header=BB18_59 Depth=1
	shll	$2, %ebp
	movq	%rbx, %rdi
	leaq	48(%rsp), %rsi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	sputs
	xorl	%ebp, %ebp
	movl	$1, %eax
	xorps	%xmm1, %xmm1
	movss	32(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	28(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movss	24(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB18_66:                              # %if.end.96
                                        #   in Loop: Header=BB18_59 Depth=1
	shll	$2, %eax
	ucomiss	%xmm1, %xmm3
	jne	.LBB18_68
	jp	.LBB18_68
# BB#67:                                # %if.end.96
                                        #   in Loop: Header=BB18_59 Depth=1
	ucomiss	%xmm0, %xmm2
	jne	.LBB18_68
	jnp	.LBB18_74
.LBB18_68:                              # %if.else
                                        #   in Loop: Header=BB18_59 Depth=1
	ucomiss	%xmm0, %xmm3
	jne	.LBB18_71
	jp	.LBB18_71
# BB#69:                                # %if.else
                                        #   in Loop: Header=BB18_59 Depth=1
	ucomiss	%xmm1, %xmm2
	jne	.LBB18_71
	jp	.LBB18_71
# BB#70:                                # %if.then.111
                                        #   in Loop: Header=BB18_59 Depth=1
	orl	$1, %eax
	jmp	.LBB18_74
	.align	16, 0x90
.LBB18_71:                              # %if.else.113
                                        #   in Loop: Header=BB18_59 Depth=1
	ucomiss	%xmm1, %xmm3
	jne	.LBB18_72
	jnp	.LBB18_73
.LBB18_72:                              # %if.then.116
                                        #   in Loop: Header=BB18_59 Depth=1
	orl	$1, %eax
	movslq	%ebp, %rcx
	incl	%ebp
	movss	%xmm3, 48(%rsp,%rcx,4)
.LBB18_73:                              # %if.end.121
                                        #   in Loop: Header=BB18_59 Depth=1
	addl	$2, %eax
	movslq	%ebp, %rcx
	incl	%ebp
	movss	%xmm2, 48(%rsp,%rcx,4)
.LBB18_74:                              # %if.end.127
                                        #   in Loop: Header=BB18_59 Depth=1
	addq	$2, %r13
	cmpq	%r15, %r13
	jl	.LBB18_59
	jmp	.LBB18_75
.LBB18_57:
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	$1, %eax
	xorl	%ebp, %ebp
.LBB18_75:                              # %for.end.130
	movq	120(%rbx), %rdx
	cmpq	128(%rbx), %rdx
	movq	8(%rsp), %r14           # 8-byte Reload
	jae	.LBB18_77
# BB#76:                                # %cond.true.139
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rbx)
	movl	$8, %ecx
	subl	4(%rsp), %ecx           # 4-byte Folded Reload
	shll	%cl, %eax
	movb	%al, 1(%rdx)
	jmp	.LBB18_78
.LBB18_77:                              # %cond.false.151
	movl	$8, %ecx
	subl	4(%rsp), %ecx           # 4-byte Folded Reload
	shll	%cl, %eax
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB18_78:                              # %cond.end.157
	shll	$2, %ebp
	leaq	48(%rsp), %rsi
	leaq	84(%rsp), %rcx
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	sputs
.LBB18_79:                              # %if.end.164
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r14, (%rax)
	xorl	%eax, %eax
.LBB18_80:                              # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gx_pixel_image_sput, .Lfunc_end18-gx_pixel_image_sput
	.cfi_endproc

	.globl	gx_image_matrix_set_default
	.align	16, 0x90
	.type	gx_image_matrix_set_default,@function
gx_image_matrix_set_default:            # @gx_image_matrix_set_default
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsi2ssl	32(%rdi), %xmm0
	movss	%xmm0, 8(%rdi)
	movl	$0, 12(%rdi)
	movl	$0, 16(%rdi)
	movl	36(%rdi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	negl	%eax
	cvtsi2ssl	%eax, %xmm1
	movss	%xmm1, 20(%rdi)
	movl	$0, 24(%rdi)
	movss	%xmm0, 28(%rdi)
	retq
.Lfunc_end19:
	.size	gx_image_matrix_set_default, .Lfunc_end19-gx_image_matrix_set_default
	.cfi_endproc

	.globl	sget_variable_uint
	.align	16, 0x90
	.type	sget_variable_uint,@function
sget_variable_uint:                     # @sget_variable_uint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 48
.Ltmp47:
	.cfi_offset %rbx, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	jmp	.LBB20_1
	.align	16, 0x90
.LBB20_5:                               # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	andl	$127, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	addl	%eax, %r15d
	addl	$7, %ebp
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	112(%rbx), %rax
	movq	120(%rbx), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB20_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%rbx)
	movzbl	1(%rax), %eax
	jmp	.LBB20_4
	.align	16, 0x90
.LBB20_3:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	spgetcc
.LBB20_4:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$128, %eax
	jge	.LBB20_5
# BB#6:                                 # %for.end
	movl	$-12, %ecx
	testl	%eax, %eax
	js	.LBB20_8
# BB#7:                                 # %if.end
	movb	%bpl, %cl
	shll	%cl, %eax
	addl	%r15d, %eax
	movl	%eax, (%r14)
	xorl	%ecx, %ecx
.LBB20_8:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	sget_variable_uint, .Lfunc_end20-sget_variable_uint
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI21_0:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_1:
	.long	0                       # float 0
	.zero	4
	.long	0                       # float 0
	.long	1065353216              # float 1
.LCPI21_2:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI21_3:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	gx_pixel_image_sget
	.align	16, 0x90
	.type	gx_pixel_image_sget,@function
gx_pixel_image_sget:                    # @gx_pixel_image_sget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 96
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB21_1
	.align	16, 0x90
.LBB21_5:                               # %for.body.i
                                        #   in Loop: Header=BB21_1 Depth=1
	andl	$127, %r12d
	movb	%bpl, %cl
	shll	%cl, %r12d
	addl	%r12d, %ebx
	addl	$7, %ebp
.LBB21_1:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	112(%r14), %rax
	movq	120(%r14), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB21_3
# BB#2:                                 # %cond.true.i
                                        #   in Loop: Header=BB21_1 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%r14)
	movzbl	1(%rax), %r12d
	jmp	.LBB21_4
	.align	16, 0x90
.LBB21_3:                               # %cond.false.i
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	spgetcc
	movl	%eax, %r12d
.LBB21_4:                               # %cond.end.i
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$128, %r12d
	jge	.LBB21_5
# BB#6:                                 # %for.end.i
	testl	%r12d, %r12d
	js	.LBB21_59
# BB#7:                                 # %lor.lhs.false
	movb	%bpl, %cl
	shll	%cl, %r12d
	addl	%ebx, %r12d
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB21_8
	.align	16, 0x90
.LBB21_12:                              # %for.body.i.78
                                        #   in Loop: Header=BB21_8 Depth=1
	andl	$127, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	addl	%eax, %ebx
	addl	$7, %ebp
.LBB21_8:                               # %for.cond.i.65
                                        # =>This Inner Loop Header: Depth=1
	movq	112(%r14), %rax
	movq	120(%r14), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB21_10
# BB#9:                                 # %cond.true.i.68
                                        #   in Loop: Header=BB21_8 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%r14)
	movzbl	1(%rax), %eax
	jmp	.LBB21_11
	.align	16, 0x90
.LBB21_10:                              # %cond.false.i.70
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	spgetcc
.LBB21_11:                              # %cond.end.i.73
                                        #   in Loop: Header=BB21_8 Depth=1
	cmpl	$128, %eax
	jge	.LBB21_12
# BB#13:                                # %for.end.i.80
	testl	%eax, %eax
	js	.LBB21_59
# BB#14:                                # %lor.lhs.false.3
	movb	%bpl, %cl
	shll	%cl, %eax
	addl	%ebx, %eax
	movl	%eax, 32(%r13)
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB21_15
	.align	16, 0x90
.LBB21_19:                              # %for.body.i.106
                                        #   in Loop: Header=BB21_15 Depth=1
	andl	$127, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	addl	%eax, %ebx
	addl	$7, %ebp
.LBB21_15:                              # %for.cond.i.93
                                        # =>This Inner Loop Header: Depth=1
	movq	112(%r14), %rax
	movq	120(%r14), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB21_17
# BB#16:                                # %cond.true.i.96
                                        #   in Loop: Header=BB21_15 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%r14)
	movzbl	1(%rax), %eax
	jmp	.LBB21_18
	.align	16, 0x90
.LBB21_17:                              # %cond.false.i.98
                                        #   in Loop: Header=BB21_15 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	spgetcc
.LBB21_18:                              # %cond.end.i.101
                                        #   in Loop: Header=BB21_15 Depth=1
	cmpl	$128, %eax
	jge	.LBB21_19
# BB#20:                                # %for.end.i.108
	testl	%eax, %eax
	js	.LBB21_59
# BB#21:                                # %do.end
	movb	%bpl, %cl
	shll	%cl, %eax
	addl	%ebx, %eax
	movq	%r13, %rbx
	movl	%eax, 36(%rbx)
	testb	$1, %r12b
	jne	.LBB21_22
# BB#24:                                # %if.else
	cvtsi2ssl	32(%rbx), %xmm0
	movss	%xmm0, 8(%rbx)
	movl	$0, 12(%rbx)
	movl	$0, 16(%rbx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	negl	%eax
	cvtsi2ssl	%eax, %xmm1
	movss	%xmm1, 20(%rbx)
	movl	$0, 24(%rbx)
	movss	%xmm0, 28(%rbx)
	jmp	.LBB21_25
.LBB21_22:                              # %if.then.6
	leaq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	sget_matrix
	testl	%eax, %eax
	js	.LBB21_23
.LBB21_25:                              # %if.end.14
	movl	%r12d, %eax
	shrl	%eax
	andl	$15, %eax
	incl	%eax
	movl	%eax, 40(%rbx)
	movl	%r12d, %eax
	shrl	$5, %eax
	andl	$3, %eax
	movl	%eax, 568(%rbx)
	movq	%r15, 576(%rbx)
	movq	%r15, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %ebp
	movq	%r15, %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB21_26
# BB#27:                                # %if.then.21
	cvtsi2ssl	72(%r15), %xmm0
	jmp	.LBB21_28
.LBB21_26:
	movss	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB21_28:                              # %if.end.22
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	leal	(%rbp,%rbp), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testb	$-128, %r12b
	jne	.LBB21_42
# BB#29:                                # %for.cond.94.preheader
	testl	%ebp, %ebp
	jle	.LBB21_64
# BB#30:                                # %for.body.97.lr.ph
	movslq	12(%rsp), %rax          # 4-byte Folded Reload
	testq	%rax, %rax
	movl	$1, %ecx
	cmovgq	%rax, %rcx
	xorl	%esi, %esi
	testq	%rcx, %rcx
	je	.LBB21_39
# BB#31:                                # %overflow.checked
	xorl	%esi, %esi
	movq	%rcx, %rdx
	andq	$-4, %rdx
	je	.LBB21_38
# BB#32:                                # %vector.ph
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	testq	%rax, %rax
	movl	$1, %edi
	cmovgq	%rax, %rdi
	addq	$-4, %rdi
	movq	%rdi, %rbp
	shrq	$2, %rbp
	xorl	%esi, %esi
	btq	$2, %rdi
	jb	.LBB21_34
# BB#33:                                # %vector.body.prol
	movaps	.LCPI21_1(%rip), %xmm1  # xmm1 = <0,u,0,1>
	movaps	%xmm0, %xmm2
	shufps	$1, %xmm1, %xmm2        # xmm2 = xmm2[1,0],xmm1[0,0]
	shufps	$226, %xmm1, %xmm2      # xmm2 = xmm2[2,0],xmm1[2,3]
	movups	%xmm2, 44(%rbx)
	movl	$4, %esi
.LBB21_34:                              # %vector.ph.split
	testq	%rbp, %rbp
	je	.LBB21_37
# BB#35:                                # %vector.ph.split.split
	movdqa	.LCPI21_2(%rip), %xmm1  # xmm1 = [0,1,2,3]
	movdqa	.LCPI21_3(%rip), %xmm2  # xmm2 = [1,1,1,1]
	.align	16, 0x90
.LBB21_36:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%esi, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqd	%xmm2, %xmm4
	pand	%xmm2, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movaps	%xmm0, %xmm5
	andps	%xmm4, %xmm5
	andnps	%xmm3, %xmm4
	orps	%xmm5, %xmm4
	movups	%xmm4, 44(%rbx,%rsi,4)
	leal	4(%rsi), %edi
	movd	%edi, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqd	%xmm2, %xmm4
	pand	%xmm2, %xmm3
	cvtdq2ps	%xmm3, %xmm3
	movaps	%xmm0, %xmm5
	andps	%xmm4, %xmm5
	andnps	%xmm3, %xmm4
	orps	%xmm5, %xmm4
	movups	%xmm4, 60(%rbx,%rsi,4)
	addq	$8, %rsi
	cmpq	%rdx, %rsi
	jne	.LBB21_36
.LBB21_37:
	movq	%rdx, %rsi
.LBB21_38:                              # %middle.block
	cmpq	%rsi, %rcx
	je	.LBB21_64
	.align	16, 0x90
.LBB21_39:                              # %for.body.97
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %esi
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	je	.LBB21_41
# BB#40:                                # %for.body.97
                                        #   in Loop: Header=BB21_39 Depth=1
	movl	%esi, %ecx
	andl	$1, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
.LBB21_41:                              # %for.body.97
                                        #   in Loop: Header=BB21_39 Depth=1
	movss	%xmm0, 44(%rbx,%rsi,4)
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB21_39
	jmp	.LBB21_64
.LBB21_42:                              # %if.then.25
	testl	%ebp, %ebp
	jle	.LBB21_64
# BB#43:                                # %for.body.lr.ph
	leaq	48(%rbx), %r15
	xorl	%ebp, %ebp
	movl	$65536, %r13d           # imm = 0x10000
	.align	16, 0x90
.LBB21_44:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$65536, %r13d           # imm = 0x10000
	jb	.LBB21_49
# BB#45:                                # %if.then.30
                                        #   in Loop: Header=BB21_44 Depth=1
	movq	112(%r14), %rax
	movq	120(%r14), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB21_47
# BB#46:                                # %cond.end.thread
                                        #   in Loop: Header=BB21_44 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%r14)
	movzbl	1(%rax), %r13d
	orl	$256, %r13d             # imm = 0x100
	jmp	.LBB21_49
	.align	16, 0x90
.LBB21_47:                              # %cond.end
                                        #   in Loop: Header=BB21_44 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	spgetcc
	movl	%eax, %r13d
	cmpl	$-257, %r13d            # imm = 0xFFFFFFFFFFFFFEFF
	ja	.LBB21_59
# BB#48:                                #   in Loop: Header=BB21_44 Depth=1
	addl	$256, %r13d             # imm = 0x100
.LBB21_49:                              # %if.end.48
                                        #   in Loop: Header=BB21_44 Depth=1
	movl	%r13d, %eax
	andl	$192, %eax
	cmpl	$127, %eax
	jg	.LBB21_55
# BB#50:                                # %if.end.48
                                        #   in Loop: Header=BB21_44 Depth=1
	testl	%eax, %eax
	jne	.LBB21_51
# BB#60:                                # %sw.bb
                                        #   in Loop: Header=BB21_44 Depth=1
	movl	$0, -4(%r15)
	testl	%ebp, %ebp
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	je	.LBB21_62
# BB#61:                                # %sw.bb
                                        #   in Loop: Header=BB21_44 Depth=1
	movss	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB21_62:                              # %sw.bb
                                        #   in Loop: Header=BB21_44 Depth=1
	movss	%xmm0, (%r15)
	jmp	.LBB21_63
	.align	16, 0x90
.LBB21_55:                              # %if.end.48
                                        #   in Loop: Header=BB21_44 Depth=1
	cmpl	$128, %eax
	jne	.LBB21_56
# BB#65:                                # %sw.bb.74
                                        #   in Loop: Header=BB21_44 Depth=1
	movl	$0, -4(%r15)
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB21_58
	.align	16, 0x90
.LBB21_51:                              # %if.end.48
                                        #   in Loop: Header=BB21_44 Depth=1
	cmpl	$64, %eax
	jne	.LBB21_63
# BB#52:                                # %sw.bb.61
                                        #   in Loop: Header=BB21_44 Depth=1
	testl	%ebp, %ebp
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	je	.LBB21_54
# BB#53:                                # %sw.bb.61
                                        #   in Loop: Header=BB21_44 Depth=1
	movss	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB21_54:                              # %sw.bb.61
                                        #   in Loop: Header=BB21_44 Depth=1
	movss	%xmm0, -4(%r15)
	movl	$0, (%r15)
	jmp	.LBB21_63
	.align	16, 0x90
.LBB21_56:                              # %if.end.48
                                        #   in Loop: Header=BB21_44 Depth=1
	cmpl	$192, %eax
	jne	.LBB21_63
# BB#57:                                # %sw.bb.81
                                        #   in Loop: Header=BB21_44 Depth=1
	leaq	-4(%r15), %rsi
	movl	$8, %edx
	movq	%r14, %rdi
.LBB21_58:                              # %sw.bb.81
                                        #   in Loop: Header=BB21_44 Depth=1
	leaq	36(%rsp), %rcx
	callq	sgets
	testl	%eax, %eax
	js	.LBB21_59
.LBB21_63:                              # %for.inc
                                        #   in Loop: Header=BB21_44 Depth=1
	addl	$2, %ebp
	shll	$2, %r13d
	addq	$8, %r15
	cmpl	12(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB21_44
.LBB21_64:                              # %if.end.110
	movl	%r12d, %eax
	shrl	$8, %eax
	andl	$1, %eax
	movl	%eax, 564(%rbx)
	movl	%r12d, %eax
	shrl	$9, %eax
	andl	$1, %eax
	movl	%eax, 572(%rbx)
	shrl	$10, %r12d
	movl	%r12d, %eax
	jmp	.LBB21_23
.LBB21_59:
	movl	$-12, %eax
.LBB21_23:                              # %cleanup.118
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gx_pixel_image_sget, .Lfunc_end21-gx_pixel_image_sget
	.cfi_endproc

	.globl	gx_pixel_image_release
	.align	16, 0x90
	.type	gx_pixel_image_release,@function
gx_pixel_image_release:                 # @gx_pixel_image_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	24(%rsi), %rcx
	movl	$.L.str.2, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end22:
	.size	gx_pixel_image_release, .Lfunc_end22-gx_pixel_image_release
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_image_common_t"
	.size	.L.str, 18

	.type	st_gs_image_common,@object # @st_gs_image_common
	.section	.rodata,"a",@progbits
	.globl	st_gs_image_common
	.align	8
st_gs_image_common:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_image_common, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_data_image_t"
	.size	.L.str.1, 16

	.type	st_gs_data_image,@object # @st_gs_data_image
	.section	.rodata,"a",@progbits
	.globl	st_gs_data_image
	.align	8
st_gs_data_image:
	.long	568                     # 0x238
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_data_image, 64

	.type	pixel_image_reloc_ptrs,@object # @pixel_image_reloc_ptrs
	.align	8
pixel_image_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pixel_image_enum_ptrs
	.size	pixel_image_reloc_ptrs, 24

	.type	st_gs_pixel_image,@object # @st_gs_pixel_image
	.globl	st_gs_pixel_image
	.align	8
st_gs_pixel_image:
	.long	584                     # 0x248
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pixel_image_reloc_ptrs
	.size	st_gs_pixel_image, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gx_image_default_release"
	.size	.L.str.2, 25

	.type	pixel_image_enum_ptrs,@object # @pixel_image_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
pixel_image_enum_ptrs:
	.short	0                       # 0x0
	.short	576                     # 0x240
	.size	pixel_image_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
